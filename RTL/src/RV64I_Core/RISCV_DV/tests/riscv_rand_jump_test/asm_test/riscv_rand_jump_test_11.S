.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
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
                  li x0, 0x0
                  li x1, 0x492dfc79
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x8
                  li x5, 0x80000000
                  li x6, 0xfb90eb52
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x4
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0xf6db755f
                  li x15, 0xf2e2c636
                  li x16, 0x9
                  li x18, 0x80000000
                  li x19, 0xff195810
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0xa
                  li x23, 0xf0b81fb9
                  li x24, 0x0
                  li x25, 0xa
                  li x26, 0xb
                  li x27, 0x6
                  li x28, 0x0
                  li x29, 0x3
                  li x30, 0x0
                  li x31, 0x4d5116bb
                  la x14, user_stack_end
main:             la           sp, region_1+281 #start riscv_load_store_rand_instr_stream_19
                  sb           s0, -24(sp)
                  sltu         zero, a4, s4
                  lb           s2, 4(sp)
                  srai         ra, s10, 13
                  lh           a2, 25(sp)
                  lb           t1, -16(sp)
                  xor          ra, zero, t2
                  sb           a3, -40(sp)
                  sltu         a5, t0, s2
                  slt          t6, t6, t1
                  xor          a1, s2, a4
                  lbu          a1, 34(sp)
                  sh           s8, 49(sp)
                  addi         s10, ra, 1745
                  lhu          gp, -19(sp)
                  andi         t1, a4, 1590
                  slti         s0, t3, 964
                  and          a1, s5, s7
                  sb           a5, -24(sp)
                  sltiu        s10, t0, 398
                  lbu          s10, -15(sp)
                  lb           t1, -64(sp)
                  lb           s7, -23(sp)
                  lh           t1, 17(sp)
                  sb           s11, 26(sp)
                  sltu         s0, s2, s7
                  lbu          ra, -38(sp)
                  lb           s6, 30(sp)
                  srli         tp, s2, 1
                  sb           s10, -52(sp)
                  addi         tp, t6, 75
                  sw           s11, 15(sp)
                  ori          s1, a5, 583
                  nop
                  lb           s4, 58(sp)
                  slti         a2, t6, -294
                  lui          s5, 871709
                  auipc        t6, 450907
                  lw           t6, 3(sp) #end riscv_load_store_rand_instr_stream_19
                  la           sp, region_1+259 #start riscv_load_store_rand_instr_stream_13
                  lb           gp, 11(sp)
                  srai         s0, s10, 2
                  lhu          a3, 3(sp)
                  sll          a5, s6, a6
                  slt          s1, s10, a1
                  xor          a1, s3, s9
                  sltu         a5, s9, t1
                  sltu         t4, s9, gp
                  lb           a1, 58(sp)
                  lbu          a5, -7(sp)
                  lbu          s9, -1(sp)
                  lui          t0, 200998
                  sb           gp, -18(sp)
                  addi         t6, s0, 1143
                  add          s4, gp, s5
                  ori          t4, s0, -1280
                  addi         s7, a6, -1487
                  ori          t3, s2, -1575
                  lh           a2, -5(sp)
                  sb           t4, -12(sp)
                  nop
                  lbu          s8, 33(sp)
                  lbu          s3, -6(sp)
                  nop
                  slti         s6, s11, -840
                  andi         a6, a4, -1720
                  sltu         s11, t1, t2
                  sltu         s9, s1, s1
                  sb           a6, 23(sp)
                  lb           t2, -40(sp)
                  sltu         t3, t4, t4
                  ori          a0, a0, -1996
                  srai         s1, a1, 9
                  sw           t0, 41(sp) #end riscv_load_store_rand_instr_stream_13
                  la           t1, region_1+1050 #start riscv_load_store_rand_instr_stream_5
                  lbu          tp, 938(t1)
                  lh           gp, 618(t1)
                  sll          s8, a6, ra
                  or           t6, s3, s6
                  sb           ra, -198(t1)
                  sb           t0, -27(t1)
                  or           a6, t3, ra
                  sltu         s1, a6, tp
                  slti         s8, a2, -1678
                  or           s1, t1, s4
                  sb           s6, 371(t1)
                  lh           s7, -698(t1)
                  lbu          s11, 369(t1)
                  ori          a2, s4, -1031
                  lb           t2, 599(t1)
                  sltiu        a6, t1, 1564
                  lui          s3, 72385
                  xori         t3, s5, 990
                  xori         tp, a5, 1517
                  lhu          s3, 808(t1)
                  lui          a6, 561240
                  and          s1, a0, sp
                  lb           t4, -549(t1)
                  lb           s6, 125(t1)
                  nop
                  lbu          s7, -1039(t1)
                  addi         s6, t1, 1580
                  andi         t3, t1, 854
                  lui          s1, 731303
                  lb           a6, -885(t1)
                  auipc        zero, 595856
                  slti         gp, s4, 1229
                  lui          a0, 326604
                  lbu          gp, 555(t1)
                  lb           a2, -446(t1)
                  sra          gp, t6, s8
                  lh           t0, -586(t1)
                  lb           a6, -129(t1)
                  nop
                  sb           a6, -338(t1)
                  sub          s0, s6, s5
                  sll          tp, s4, s1
                  addi         s10, s10, 1909
                  sb           s0, -39(t1)
                  lb           s5, -636(t1)
                  lbu          s8, -780(t1)
                  or           s9, t0, s4
                  lbu          t2, -1035(t1)
                  or           tp, s3, s3
                  sb           s4, 164(t1)
                  lbu          t0, -49(t1)
                  sb           t1, -980(t1)
                  lbu          a0, 896(t1)
                  lbu          s6, 621(t1)
                  srli         a3, s0, 23
                  lb           ra, -584(t1)
                  sltu         s0, sp, t1
                  sb           t2, 394(t1)
                  slt          zero, ra, s1
                  lb           s8, -232(t1) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+450 #start riscv_load_store_rand_instr_stream_1
                  sh           tp, 6(sp)
                  lb           t1, -8(sp)
                  sll          t6, a3, s4
                  or           a1, s11, s7
                  lbu          s4, -10(sp)
                  sb           s6, -9(sp)
                  sw           zero, -6(sp)
                  lb           t3, 1(sp)
                  sb           t6, 11(sp)
                  sb           ra, -4(sp)
                  sh           a7, -12(sp)
                  srli         s8, a3, 4
                  lbu          tp, -3(sp)
                  and          s8, s10, t5
                  sb           t2, -15(sp)
                  srai         zero, a6, 4
                  lui          a2, 929610
                  lb           s6, -9(sp)
                  lbu          s4, -4(sp)
                  sh           s3, 4(sp)
                  andi         ra, sp, -133
                  sb           a3, 3(sp)
                  xor          t2, a7, s6
                  lb           s9, 0(sp)
                  sub          s6, t6, tp
                  lb           gp, 5(sp)
                  slt          tp, zero, tp
                  lbu          s10, 9(sp)
                  lb           s7, 11(sp)
                  lbu          a2, 5(sp)
                  lb           s5, -6(sp)
                  or           t2, a2, s1
                  or           ra, s3, s2
                  slli         tp, s2, 7
                  lui          s6, 683860
                  lbu          s9, 11(sp)
                  xori         zero, t6, 390
                  sltu         s4, a7, a7
                  lhu          s8, 8(sp)
                  auipc        s1, 828522
                  lhu          a6, 8(sp)
                  slti         s5, sp, -917
                  auipc        t4, 486723
                  lbu          a6, -9(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+681 #start riscv_load_store_rand_instr_stream_16
                  sh           s9, 147(sp)
                  lui          s3, 95669
                  add          s1, s2, s2
                  nop
                  lbu          zero, -222(sp)
                  lbu          zero, -227(sp)
                  lw           gp, 211(sp)
                  and          s1, a2, s8
                  lbu          s11, 89(sp)
                  sb           a3, -220(sp)
                  sll          s0, s3, t4
                  sh           t4, 29(sp)
                  srl          ra, zero, s6
                  sra          s6, s11, s6
                  lbu          tp, 193(sp)
                  sb           s11, 204(sp)
                  slt          s0, t5, s4
                  lb           gp, 30(sp)
                  slli         t3, a7, 25
                  lbu          s1, 128(sp)
                  lbu          s0, 130(sp)
                  sb           s4, 12(sp)
                  lb           a6, 164(sp)
                  lb           ra, -195(sp)
                  ori          a5, t2, -79
                  lbu          s5, -194(sp)
                  sh           s11, 145(sp)
                  lh           a0, -15(sp)
                  lb           tp, -2(sp)
                  sb           s1, -116(sp)
                  srli         gp, s9, 21
                  slli         zero, tp, 12
                  lbu          s4, -179(sp)
                  sb           s7, -130(sp)
                  lbu          s10, 198(sp)
                  sb           s3, 100(sp)
                  srli         a5, t5, 16
                  slt          s1, s0, t5
                  sb           t5, 94(sp)
                  and          s4, s3, a5
                  sra          zero, s10, s8
                  addi         s2, gp, 479
                  lh           s7, 113(sp) #end riscv_load_store_rand_instr_stream_16
                  la           a0, region_1+285 #start riscv_load_store_rand_instr_stream_20
                  srai         s4, s4, 10
                  sb           s1, 12(a0)
                  sb           s4, 0(a0)
                  auipc        s5, 680328
                  lbu          ra, 10(a0)
                  addi         a5, a5, 1771
                  lbu          s1, 13(a0)
                  sra          s11, t6, s6
                  sll          t6, s10, a7
                  ori          s3, zero, -310
                  lb           s0, 16(a0)
                  sb           s7, -2(a0)
                  lb           t4, -8(a0)
                  and          ra, gp, s0
                  lb           a5, -10(a0)
                  sb           sp, -7(a0)
                  sh           t4, -3(a0)
                  lh           s0, -3(a0)
                  sub          gp, a0, a5
                  auipc        s6, 183443
                  lbu          a5, 13(a0)
                  lb           t2, 14(a0)
                  lbu          s3, 0(a0)
                  lb           s6, -2(a0)
                  xor          s6, s3, s5
                  sb           a2, -3(a0)
                  lhu          s1, 7(a0)
                  sb           s5, 10(a0)
                  lbu          sp, 2(a0)
                  sb           t6, -16(a0)
                  sb           a3, -12(a0)
                  lb           t4, -10(a0)
                  auipc        t3, 804055
                  sb           s1, 13(a0)
                  xori         a1, a3, -1066
                  sb           s1, -16(a0)
                  sb           t4, 9(a0)
                  sb           t4, 4(a0)
                  addi         tp, s11, -588
                  sb           s0, 2(a0)
                  auipc        s4, 932436
                  lui          t2, 614155
                  lb           s1, -12(a0)
                  slli         s8, s2, 23
                  lbu          s4, 2(a0)
                  lw           s4, -1(a0) #end riscv_load_store_rand_instr_stream_20
                  la           s3, region_0+423 #start riscv_load_store_rand_instr_stream_15
                  lhu          a6, 615(s3)
                  xori         s2, a2, 1137
                  add          a1, a1, t5
                  sb           s0, -326(s3)
                  lb           sp, 1451(s3)
                  lb           a5, 1415(s3)
                  lbu          sp, 290(s3)
                  lhu          t6, 197(s3)
                  andi         t4, a7, -750
                  sub          s0, s2, t2
                  slt          gp, s7, s8
                  sra          s6, tp, t4
                  andi         zero, a5, 598
                  sll          s2, t1, t1
                  lb           s0, 1063(s3)
                  slli         s9, a1, 30
                  sb           s1, 218(s3)
                  sb           s9, 790(s3)
                  add          t0, s8, tp
                  ori          a3, s6, 471
                  addi         s4, s1, 816
                  xor          s11, zero, s10
                  sb           a7, 1336(s3)
                  ori          t1, s2, -1392
                  lb           s2, -274(s3)
                  lb           t4, 876(s3)
                  lhu          gp, 1057(s3)
                  ori          a1, zero, -1518
                  auipc        gp, 503218
                  lb           s11, 238(s3)
                  lbu          s5, 239(s3)
                  lui          a6, 283753
                  sb           s9, 1128(s3)
                  lh           a3, -369(s3)
                  sub          s2, gp, s10
                  slli         a2, t0, 9
                  andi         s9, sp, 1614
                  lh           t1, 1307(s3)
                  lb           s11, 607(s3)
                  add          s8, s3, s8
                  lui          s7, 607209
                  ori          t0, a1, 98
                  or           s2, a0, sp
                  xori         t6, sp, -1419
                  lbu          s4, 1230(s3)
                  sltu         s10, tp, tp
                  lh           t3, -287(s3) #end riscv_load_store_rand_instr_stream_15
                  la           t0, region_0+1976 #start riscv_load_store_rand_instr_stream_6
                  sb           t1, -33(t0)
                  sb           t5, -95(t0)
                  addi         s6, s8, 1308
                  lbu          s0, -169(t0)
                  lhu          t1, -134(t0)
                  or           s1, s10, s11
                  andi         a3, s4, 1571
                  xor          sp, s2, s10
                  sub          a6, s2, s8
                  sltu         tp, s4, t1
                  lh           t3, -222(t0)
                  slt          t2, gp, t3
                  lb           a2, -149(t0)
                  nop
                  lb           s0, -61(t0)
                  srli         a2, gp, 9
                  or           t1, tp, t5
                  lb           t4, -24(t0)
                  slt          s11, s6, t6
                  xor          t2, a4, t5
                  xori         t3, t2, -398
                  slli         sp, ra, 21
                  nop
                  sll          a2, a4, sp
                  xor          s5, s9, s2
                  lbu          s8, -88(t0)
                  lb           a5, -50(t0)
                  lui          t3, 106935
                  addi         s0, a4, 1222
                  or           s0, t0, t5
                  lui          s4, 815795
                  andi         a3, s11, 2000
                  nop
                  sb           a5, -201(t0)
                  lb           ra, -149(t0)
                  lb           s3, -143(t0) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1467 #start riscv_load_store_rand_instr_stream_12
                  lbu          s7, 340(sp)
                  lb           s0, -1405(sp)
                  srai         s4, a2, 7
                  slti         s2, a4, 2028
                  lui          ra, 698278
                  sub          t6, s3, a6
                  lhu          s3, -1233(sp)
                  sb           a0, 84(sp)
                  lb           s2, -397(sp)
                  lbu          gp, -910(sp)
                  srl          a0, a7, s2
                  or           s7, zero, s7
                  sh           s8, -401(sp)
                  lbu          t3, -523(sp)
                  lb           a2, 501(sp)
                  lbu          zero, 365(sp)
                  slli         t0, tp, 6
                  lb           s2, 444(sp)
                  lb           s0, 23(sp)
                  sll          s11, t3, a0
                  sb           a4, -1287(sp)
                  sb           a4, -770(sp)
                  lbu          s4, -372(sp)
                  lb           s7, -560(sp)
                  auipc        gp, 411245
                  slt          tp, s7, t0
                  srai         a1, t5, 19
                  lbu          s10, -792(sp) #end riscv_load_store_rand_instr_stream_12
                  la           ra, region_0+1776 #start riscv_load_store_rand_instr_stream_0
                  add          s9, a6, a1
                  sh           s1, -90(ra)
                  lb           s0, -380(ra)
                  sub          tp, s5, zero
                  lbu          a0, 32(ra)
                  srli         s11, a1, 17
                  sb           ra, -310(ra)
                  lbu          a3, -302(ra)
                  lbu          t3, -1576(ra)
                  lb           gp, -563(ra)
                  sb           t6, -74(ra)
                  lbu          t6, -340(ra)
                  lb           s10, -949(ra)
                  sltiu        t1, t6, 70
                  sub          s1, s10, s11
                  lui          s0, 385168
                  sb           tp, -1567(ra)
                  srai         zero, s8, 3
                  lbu          tp, -124(ra)
                  lh           t0, -1742(ra)
                  lbu          a3, -87(ra)
                  sltiu        a2, a7, 247
                  sb           s5, -546(ra)
                  lh           tp, -408(ra)
                  sb           s1, -360(ra)
                  xor          zero, a4, t6
                  xori         s1, gp, -1855
                  lb           a0, -1111(ra)
                  andi         a6, s10, -1413
                  lh           t4, -1402(ra)
                  sb           t3, 160(ra) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1058 #start riscv_load_store_rand_instr_stream_11
                  lbu          t2, -9(sp)
                  lb           s1, 5(sp)
                  xori         s5, t2, 252
                  sltu         t4, ra, a5
                  sh           s10, 12(sp)
                  sb           s1, -14(sp)
                  lh           s9, 8(sp)
                  sub          t1, s9, ra
                  lb           s5, -1(sp)
                  lhu          zero, 14(sp)
                  sb           s9, -15(sp)
                  lb           zero, 4(sp)
                  lbu          a5, 15(sp)
                  lbu          tp, -1(sp)
                  sltu         a5, a5, t2
                  lbu          a5, -15(sp)
                  sw           s9, -2(sp)
                  lbu          t4, 6(sp)
                  lbu          t0, -5(sp)
                  lb           s8, -14(sp)
                  lhu          t3, -14(sp)
                  sb           s5, -11(sp)
                  lb           s9, -15(sp)
                  lbu          s10, 1(sp)
                  andi         t1, t1, 666
                  sw           a1, -6(sp)
                  ori          a6, s2, 1958
                  lb           t6, -6(sp)
                  srli         tp, s5, 4
                  addi         a5, s10, -1854
                  sra          t0, zero, s2
                  srl          s4, t2, s6
                  sub          zero, s6, s7
                  sll          t4, a7, t5
                  sra          s10, s0, t4
                  addi         a3, gp, -1674
                  lui          t6, 1019830
                  xori         ra, s10, -1812
                  lh           t2, -16(sp)
                  lb           s10, 8(sp)
                  lbu          zero, 11(sp) #end riscv_load_store_rand_instr_stream_11
                  la           s7, region_0+1154 #start riscv_load_store_rand_instr_stream_2
                  lb           s11, 5(s7)
                  sb           tp, 7(s7)
                  srl          t0, a3, s0
                  srl          a5, s1, s10
                  lb           tp, 11(s7)
                  lbu          s2, 1(s7)
                  lbu          s8, 5(s7)
                  srl          s0, zero, s6
                  sb           s7, -10(s7)
                  slt          s1, tp, zero
                  sltu         tp, a3, s5
                  sh           s4, 12(s7)
                  sub          a6, a6, a5
                  xor          sp, a5, a0
                  lh           a1, -4(s7)
                  lb           a1, 0(s7)
                  ori          t0, t1, 1967
                  sltiu        s1, s3, -918
                  auipc        a3, 631511
                  sltu         a2, s6, tp
                  or           t6, sp, a6
                  andi         s8, s5, -589
                  sb           sp, 0(s7) #end riscv_load_store_rand_instr_stream_2
                  la           t0, region_0+669 #start riscv_load_store_rand_instr_stream_4
                  sltu         gp, gp, s7
                  lbu          s2, 74(t0)
                  sb           a7, 124(t0)
                  add          s5, s2, s0
                  slti         s8, t3, 1200
                  add          s3, t4, a6
                  lbu          a0, 126(t0)
                  lb           zero, 16(t0)
                  and          t6, sp, s1
                  andi         a2, t0, 544
                  sub          s11, t0, s3
                  lbu          zero, -116(t0)
                  lbu          ra, 86(t0)
                  lbu          a0, 217(t0)
                  lbu          s6, 49(t0)
                  lb           s7, -65(t0)
                  sltiu        s2, t4, -1880
                  lui          t6, 626870
                  lb           s2, -36(t0)
                  lb           s10, 204(t0)
                  lw           s11, 171(t0)
                  sb           t4, 147(t0)
                  sb           s6, -43(t0)
                  sb           s1, -98(t0)
                  nop
                  slti         s1, s10, -507
                  lui          s7, 450894
                  lbu          ra, 64(t0)
                  slti         s5, t5, -94
                  lb           s6, 104(t0)
                  lb           a2, -58(t0)
                  xori         s4, t1, -1481
                  lui          s11, 71008
                  lbu          t2, -134(t0)
                  lb           s5, -181(t0)
                  sll          s0, a3, t3
                  sw           t4, -73(t0)
                  srli         t1, a5, 21
                  lb           ra, 156(t0)
                  lb           s9, 146(t0)
                  lh           sp, -35(t0)
                  sb           a0, -158(t0)
                  lbu          s6, 232(t0)
                  sb           a7, 183(t0)
                  lb           a2, -167(t0) #end riscv_load_store_rand_instr_stream_4
                  bge          s3, gp, 13f
                  bltu         t1, a1, 8f
                  auipc        s10, 202291
                  blt          s1, a0, 18f
                  beq          sp, t2, 5f
5:                bge          a4, gp, 13f
                  sll          a2, s1, a1
                  sra          t1, s4, s11
8:                beq          s11, t3, 24f
                  la           sp, region_1+319 #start riscv_load_store_rand_instr_stream_10
                  sltu         s9, s8, a2
                  slli         t2, tp, 2
                  lh           ra, 1397(sp)
                  auipc        s1, 1019620
                  andi         t2, tp, -2017
                  xor          tp, t4, a0
                  lbu          t2, 389(sp)
                  srli         a5, a5, 8
                  srli         s8, s10, 2
                  lb           gp, -242(sp)
                  auipc        s1, 559187
                  sh           zero, 605(sp)
                  sll          s4, tp, a4
                  sltiu        s5, s9, -2005
                  lbu          a3, 440(sp)
                  sb           s10, 1229(sp)
                  sb           t0, 968(sp)
                  lb           t1, 530(sp)
                  lhu          s7, 367(sp)
                  lbu          t6, -228(sp)
                  nop
                  slt          t4, a1, t2
                  sra          a2, a3, t4
                  lb           ra, 778(sp)
                  add          t4, t1, s2
                  lw           s0, 565(sp)
                  sll          t1, s11, s7
                  srli         a0, zero, 1
                  lb           a6, 374(sp)
                  lbu          ra, -89(sp)
                  lh           s5, 745(sp) #end riscv_load_store_rand_instr_stream_10
                  addi         s6, s3, -1127
                  srli         t1, a0, 19
                  srai         ra, a6, 0
                  andi         s9, s6, -1252
13:               sll          s10, s9, t1
                  sub          t6, s8, a6
                  sltu         s2, zero, zero
                  and          t3, t1, t1
                  or           a6, a2, s1
18:               sra          t2, a2, gp
                  beq          s0, s3, 35f
                  beq          s10, s4, 21f
21:               srli         s0, s10, 17
                  nop
                  bgeu         a3, t0, 27f
24:               xori         a1, s0, 900
                  slti         a2, s4, 60
                  addi         gp, t2, -560
27:               auipc        a3, 489767
                  add          s8, tp, a1
                  andi         s3, a7, 222
                  and          a6, t4, t0
                  lui          a0, 311208
                  sltu         sp, t6, s6
                  xor          t0, t3, a1
                  bgeu         s4, a1, 35f
35:               bne          ra, t2, 42f
                  bge          s3, zero, 52f
                  bgeu         s0, a6, 47f
                  sub          t6, t2, a5
                  sub          a6, t1, a3
                  blt          t6, a4, 54f
                  xor          sp, s3, a1
42:               nop
                  bne          a6, a0, 44f
44:               xori         s3, sp, 559
                  lui          s5, 914083
                  bge          s7, s0, 57f
47:               slli         s11, s3, 12
                  bgeu         t1, a3, 54f
                  xori         s0, a1, -753
                  slt          ra, t3, s2
                  beq          s5, a5, 67f
52:               xor          s8, a2, s7
                  bne          s6, t2, 55f
54:               xor          t2, s0, t2
55:               ori          t3, gp, -1455
                  slli         s7, zero, 3
57:               slti         s5, s11, 1808
                  srai         ra, ra, 22
                  srli         ra, s1, 17
                  slti         t3, s3, -381
                  slli         t4, s0, 9
                  auipc        s7, 959422
                  sra          s7, t4, t5
                  sltiu        sp, ra, 102
                  auipc        s8, 1041314
                  srli         s4, s7, 2
67:               xor          a5, t1, t2
                  srai         a3, s8, 15
                  bltu         a7, a0, 79f
                  slt          t4, a3, a3
                  beq          s0, sp, 87f
                  slt          s7, a0, s9
                  beq          a0, t3, 79f
                  nop
                  sltiu        s6, gp, 188
                  xor          t0, s9, a6
                  sll          s1, s8, a4
                  add          t4, s11, t5
79:               srl          t1, t6, gp
                  and          t4, a6, zero
                  sub          s10, s4, s0
                  sll          gp, a2, t1
                  ori          s6, a7, -2025
                  sub          a0, t4, tp
                  xori         s3, s11, -1723
                  xori         a6, t0, 1670
87:               blt          a2, s5, 100f
                  xori         t6, s9, 238
                  bltu         t2, t4, 100f
                  srai         a1, ra, 29
                  slli         a3, a2, 31
                  lui          tp, 79683
                  xor          ra, tp, gp
                  sra          t0, s1, s7
                  bne          t2, t1, 114f
                  andi         a2, a3, 1416
                  slli         a1, t3, 23
                  andi         t2, s4, 659
                  sub          t1, a4, s11
100:              ori          s6, t3, 707
                  sra          s8, a6, t3
                  addi         s2, a5, -1913
                  beq          ra, s4, 119f
                  slli         a2, t2, 25
                  srli         a1, t0, 3
                  bgeu         t1, a6, 117f
                  bltu         s9, s1, 126f
                  bge          a0, zero, 118f
                  andi         s9, a4, -1357
                  xori         s2, s6, 498
                  sltiu        s2, s8, -608
                  nop
                  ori          sp, t0, 1567
114:              lui          s10, 791281
                  blt          tp, t4, 118f
                  bne          a3, s6, 117f
117:              and          gp, s2, a5
118:              srl          a1, a2, t1
119:              sll          a0, a6, a3
                  xor          t4, zero, s11
                  bltu         s5, a0, 131f
                  beq          a0, s8, 129f
                  sltu         s9, t4, tp
                  andi         tp, s1, -1708
                  bne          a2, t1, 129f
126:              ori          s7, zero, -503
                  sltu         s1, a6, ra
                  auipc        a1, 223604
129:              slli         t2, a2, 31
                  srai         s11, tp, 24
131:              nop
                  addi         a1, s3, -252
                  beq          s3, s1, 146f
                  srli         a1, t0, 31
                  slli         t2, t1, 29
                  sll          t3, s5, t5
                  bgeu         s6, t1, 156f
                  andi         s8, a7, -326
                  slti         s1, s1, -1107
                  lui          tp, 419024
                  xor          ra, sp, s5
                  add          a1, a0, tp
                  auipc        zero, 1026988
                  ori          sp, a0, -1148
                  bne          s1, sp, 161f
146:              xori         s5, zero, -455
                  srai         s0, a1, 25
                  slt          a6, a7, s0
                  bltu         a0, s0, 160f
                  sll          t2, t0, t1
                  ori          t0, t3, -1459
                  bltu         gp, s8, 171f
                  addi         tp, a6, 443
                  beq          s11, s4, 170f
                  sltu         s11, s11, s1
156:              and          s2, t0, a2
                  and          a5, tp, s0
                  nop
                  and          s9, a5, s10
160:              lui          s4, 40091
161:              srli         a2, a0, 22
                  srai         a1, s4, 4
                  or           s2, tp, a4
                  andi         ra, a3, -882
                  ori          ra, t6, 761
                  lui          s10, 2240
                  blt          a1, s11, 173f
                  srai         s4, s7, 17
                  andi         t1, t4, 1045
170:              sltiu        t0, s7, -425
171:              or           s8, ra, s1
                  addi         t6, a5, -1077
173:              ori          a0, t2, 2036
                  auipc        tp, 732584
                  sub          s11, s8, s7
                  addi         tp, t2, -7
                  slti         ra, t2, -1933
                  bltu         sp, ra, 193f
                  srl          s8, s11, s9
                  andi         s3, a1, -608
                  sll          s4, s10, tp
                  slti         s11, sp, 813
                  sub          s10, t6, a1
                  srl          a0, sp, a4
                  srl          s8, s4, s2
                  or           s10, s0, t0
                  bge          a7, tp, 200f
                  ori          gp, a0, 547
                  and          s9, s9, zero
                  or           s11, s5, ra
                  nop
                  addi         t3, a5, -2031
193:              bge          a2, t3, 200f
                  bne          t2, t5, 210f
                  lui          s6, 354756
                  xori         s3, t0, -1478
                  sra          t1, t6, s1
                  bgeu         zero, s2, 214f
                  xor          a5, s2, gp
200:              beq          t0, t0, 216f
                  slli         s7, s11, 15
                  bne          t0, s7, 205f
                  auipc        s6, 40603
                  bltu         s5, t5, 218f
205:              addi         t6, s0, 2009
                  srai         s10, t4, 6
                  sll          s9, s4, zero
                  sub          s6, t1, s10
                  sra          t6, s0, t1
210:              srli         t3, t4, 6
                  xor          s5, ra, s8
                  nop
                  ori          s11, a0, 654
214:              andi         s11, tp, 1268
                  bltu         t5, t2, 221f
216:              bltu         sp, s11, 218f
                  xori         zero, a4, 957
218:              bltu         a3, t6, 219f
219:              slti         s0, s3, 323
                  addi         a5, t1, 1669
221:              nop
                  sra          s9, s5, a6
                  blt          t3, t1, 231f
                  ori          s5, t1, 1208
                  bltu         t3, gp, 235f
                  srai         t1, s0, 17
                  sltiu        a6, t4, 3
                  blt          s6, sp, 238f
                  blt          s9, t0, 240f
                  sltiu        t2, t0, -634
231:              bgeu         a4, a6, 242f
                  and          t2, a3, a0
                  srli         sp, a4, 14
                  andi         t2, t0, -246
235:              and          zero, a5, s11
                  sra          s10, t5, ra
                  or           t6, s11, s6
238:              add          gp, s5, a5
                  bne          t1, a0, 240f
240:              bltu         ra, s3, 241f
241:              bge          tp, t2, 257f
242:              srl          gp, s1, a0
                  andi         s6, gp, -863
                  srli         gp, zero, 27
                  sll          a1, s8, t1
                  blt          gp, tp, 247f
247:              srli         t4, s9, 4
                  blt          s8, s0, 250f
                  slt          a2, s0, sp
250:              sub          s7, s10, s5
                  sra          sp, a1, a4
                  and          a1, a1, s7
                  auipc        a6, 690453
                  addi         s9, s1, -386
                  auipc        a5, 619716
                  srai         gp, t2, 17
257:              nop
                  blt          t1, t5, 274f
                  srl          gp, a4, s4
                  andi         sp, t6, -1407
                  bne          gp, t6, 277f
                  bltu         s6, a4, 278f
                  srai         a6, s5, 4
                  ori          s6, a1, -1287
                  addi         ra, a6, -125
                  nop
                  sltu         zero, a6, s10
                  andi         s7, a4, 1197
                  or           ra, gp, a3
                  xor          t2, s6, t2
                  beq          t2, s9, 274f
                  slti         s5, zero, -1834
                  sltiu        a3, s5, 1434
274:              slli         s7, s5, 20
                  blt          s9, s2, 282f
                  sltiu        t0, s7, -304
277:              and          sp, t2, t1
278:              auipc        a5, 745508
                  and          s8, a7, s3
                  bge          a6, a6, 293f
                  blt          t2, s7, 282f
282:              sltu         t2, t1, s2
                  auipc        s2, 140623
                  sll          s3, t1, s8
                  ori          s4, a5, 1767
                  nop
                  srli         s4, a1, 14
                  sll          zero, t0, a2
                  slli         s9, s11, 2
                  lui          t1, 237465
                  add          t1, s3, a5
                  addi         t3, a0, -1279
293:              sra          s5, s0, sp
                  auipc        gp, 306753
                  srl          tp, sp, t2
                  slt          sp, s7, s0
                  beq          ra, a5, 307f
                  bgeu         s9, zero, 302f
                  la           s6, region_1+437 #start riscv_load_store_rand_instr_stream_3
                  sltu         a6, s9, t6
                  lbu          gp, -5(s6)
                  auipc        a6, 353218
                  sra          tp, a2, tp
                  sh           a1, 1(s6)
                  sb           a5, 2(s6)
                  lbu          t1, -7(s6)
                  srai         ra, a0, 10
                  lh           s3, 5(s6)
                  lbu          s4, -2(s6)
                  sll          s0, s4, a7
                  lb           t6, -5(s6)
                  sh           a4, -13(s6)
                  lb           sp, 8(s6)
                  sub          gp, a1, s3
                  lh           s5, -7(s6)
                  sll          s11, a5, tp
                  srli         sp, s9, 17
                  auipc        s5, 415559
                  and          s1, tp, t0
                  xor          a2, s2, s8
                  lh           a1, 13(s6)
                  lb           t6, 8(s6)
                  lhu          a2, 3(s6)
                  auipc        a3, 323726
                  sub          s10, a2, s2
                  lbu          s1, -3(s6)
                  nop
                  lw           a5, -1(s6)
                  sub          a6, a5, s7
                  sb           sp, 0(s6)
                  srl          s5, t4, t3
                  srai         a1, a0, 1
                  lhu          s10, 11(s6)
                  lbu          t1, 1(s6)
                  lb           s11, 15(s6)
                  lbu          s2, 0(s6)
                  lbu          t6, -3(s6) #end riscv_load_store_rand_instr_stream_3
                  sltiu        a3, a7, -827
                  nop
                  srl          s5, s10, s0
302:              slt          s3, a3, s1
                  sll          sp, t5, a0
                  or           sp, a6, t5
                  lui          s8, 909271
                  lui          a3, 882344
307:              bltu         s10, a1, 313f
                  slti         t4, s7, -732
                  bltu         s9, s9, 328f
                  beq          a0, a3, 321f
                  and          s0, s6, a0
                  ori          s10, a5, -714
313:              addi         a6, t4, 1005
                  srl          s5, t2, t0
                  lui          tp, 284005
                  slti         s7, a3, 115
                  sra          t0, s2, a1
                  slli         t6, t0, 4
                  lui          a2, 690394
                  slt          s0, s3, s6
321:              add          zero, tp, a1
                  slt          t0, a7, s1
                  or           s0, a3, s4
                  ori          t3, s1, -554
                  slt          a6, t0, s1
                  slli         s3, s5, 12
                  slt          tp, s8, t2
328:              beq          s1, s10, 336f
                  nop
                  beq          t5, s11, 346f
                  andi         t2, s7, -2025
                  auipc        a6, 36720
                  addi         s4, a3, -1552
                  or           gp, s2, s9
                  add          s6, s0, a6
336:              add          s2, t6, tp
                  bge          s0, ra, 356f
                  sra          s1, gp, t0
                  nop
                  bgeu         s4, zero, 351f
                  add          s3, sp, s5
                  auipc        s7, 560355
                  sltiu        a2, s7, 1466
                  sub          ra, s7, t1
                  srl          s1, t2, t6
346:              bne          s3, gp, 357f
                  xor          sp, a5, s7
                  ori          t1, s1, 1595
                  sll          a5, s11, t6
                  bne          s3, ra, 356f
351:              xor          t1, ra, s3
                  xor          t0, s11, t3
                  or           s1, t1, t0
                  srai         tp, a1, 3
                  sltu         a2, a0, t2
356:              addi         t1, a4, -1117
357:              or           ra, s5, a7
                  xor          a5, a2, s5
                  bne          sp, a7, 374f
                  add          a2, a1, s6
                  sltiu        s9, s3, -303
                  beq          s8, t1, 378f
                  auipc        a5, 470136
                  slti         gp, tp, 2017
                  la           a2, region_0+1417 #start riscv_load_store_rand_instr_stream_9
                  addi         t1, tp, -1876
                  and          t0, s10, s3
                  lb           s11, -54(a2)
                  slli         a3, s7, 24
                  sra          t4, tp, s11
                  lui          t6, 455379
                  lhu          t1, -41(a2)
                  xori         s8, gp, 1570
                  sra          s11, a5, s1
                  lbu          t6, -8(a2)
                  sh           s4, -47(a2)
                  srl          s7, a1, s5
                  lb           s5, 49(a2)
                  xor          a1, a3, s8
                  nop
                  lb           a6, -3(a2)
                  nop
                  andi         t2, s6, 1778
                  sb           a6, 0(a2)
                  xor          s8, t1, s7
                  lbu          s1, 27(a2)
                  slt          s0, s1, t0
                  lbu          t0, 48(a2)
                  xori         s6, a3, -54
                  lbu          s7, 8(a2)
                  xori         s11, s10, -881
                  lbu          t3, -38(a2)
                  srli         s4, s10, 17
                  add          s9, a4, ra
                  sltiu        s2, t4, -1958
                  lb           gp, 52(a2)
                  sb           t0, 14(a2)
                  ori          s1, s0, 1457
                  addi         s11, gp, 261
                  lb           s7, 16(a2)
                  lui          t4, 1018921
                  lh           a5, 35(a2)
                  sra          s8, s5, a5
                  srli         s8, s11, 7
                  xori         t1, s4, 1382
                  lbu          ra, 16(a2)
                  nop
                  srl          s11, s3, t1
                  lb           sp, -24(a2)
                  xori         s1, gp, 1954
                  sb           gp, 18(a2)
                  sb           a1, -64(a2) #end riscv_load_store_rand_instr_stream_9
                  bne          s6, s3, 366f
366:              sra          s3, ra, a3
                  sltiu        s0, s5, 658
                  sll          s5, t5, s7
                  xori         s10, s10, 498
                  addi         t6, a0, 735
                  bltu         s9, zero, 385f
                  srl          a0, a2, a4
                  sll          a5, a3, s5
374:              addi         a3, s7, 80
                  ori          t6, a1, -2028
                  ori          ra, s3, 1338
                  and          s7, s10, s3
378:              slli         s5, s8, 4
                  srli         s10, zero, 0
                  bgeu         s3, s3, 381f
381:              sltu         s0, s6, s0
                  or           s8, a0, sp
                  bgeu         a6, s1, 399f
                  bgeu         s4, s8, 397f
385:              slti         s11, zero, -1039
                  blt          s10, t3, 393f
                  sra          s4, t0, a0
                  xori         s2, tp, -1501
                  nop
                  srli         s1, a7, 25
                  slt          s5, a3, a5
                  addi         s4, a0, -1780
393:              sll          a5, a4, a7
                  slt          s4, s7, t0
                  andi         s3, s10, -1180
                  add          tp, tp, a3
397:              sltu         ra, t5, sp
                  nop
399:              sltu         t0, s1, s9
                  bge          s0, t0, 410f
                  slti         s8, t2, 31
                  bgeu         t3, gp, 412f
                  bltu         a2, t2, 416f
                  xor          a3, t6, s1
                  sra          a6, zero, s6
                  bge          sp, a4, 425f
                  slt          s3, gp, s3
                  slti         s1, a4, 686
                  bge          sp, ra, 425f
410:              xori         a3, t4, 20
                  add          s2, s6, t6
412:              xor          s6, s4, a0
                  bgeu         s0, a0, 424f
                  bge          t2, sp, 421f
                  bne          gp, gp, 421f
416:              sra          t1, s11, a2
                  srai         sp, s11, 22
                  sltiu        s5, s9, 762
                  la           s1, region_0+737 #start riscv_load_store_rand_instr_stream_17
                  add          t6, a3, t3
                  lhu          a2, -51(s1)
                  andi         a2, a2, 1936
                  lw           s11, -45(s1)
                  lbu          s7, -54(s1)
                  sb           t0, -4(s1)
                  sh           s8, 49(s1)
                  nop
                  lbu          s6, 8(s1)
                  lui          t3, 64090
                  lb           s4, -40(s1)
                  sb           ra, -16(s1)
                  lui          s11, 242570
                  sh           t3, 63(s1)
                  or           sp, t5, a0
                  sltu         s6, s11, gp
                  addi         gp, s6, -1730
                  or           a0, s7, t3
                  sb           s0, -34(s1)
                  sb           a7, 14(s1)
                  xor          t1, t3, a7
                  and          s6, s2, a0
                  lb           t1, 32(s1) #end riscv_load_store_rand_instr_stream_17
                  xori         s10, gp, 994
                  addi         s0, t6, -1558
421:              auipc        tp, 775437
                  blt          t6, a1, 429f
                  beq          a1, s7, 439f
424:              lui          s9, 958749
425:              bgeu         s0, s1, 436f
                  sltu         s0, t3, t0
                  sltu         s11, a2, a6
                  andi         t6, tp, 100
429:              xor          a2, s10, a1
                  blt          s10, s7, 438f
                  beq          t4, s8, 447f
                  ori          s2, a1, -2031
                  xori         s11, sp, -853
                  xor          s10, s8, s3
                  auipc        t4, 778267
436:              srli         sp, a3, 13
                  auipc        a3, 886832
438:              sll          s3, t1, a2
439:              andi         zero, s1, -552
                  ori          tp, s8, 167
                  ori          a1, a0, 84
                  or           s4, a3, s8
                  slti         a5, a7, 883
                  lui          a2, 503865
                  sltiu        s0, s1, -1194
                  srai         a1, t0, 0
447:              bne          s0, t4, 450f
                  sub          a0, t5, s7
                  srai         s2, t2, 7
450:              auipc        s2, 655015
                  slti         gp, s7, 1590
                  or           t3, s9, t0
                  sltu         sp, sp, s3
                  blt          t0, a3, 470f
                  srli         zero, t6, 20
                  blt          s5, zero, 470f
                  lui          s5, 622787
                  sltu         s0, t3, t3
                  addi         s11, a5, 196
                  slt          s4, sp, s9
                  slli         s5, t5, 15
                  and          a2, s4, zero
                  nop
                  slli         s4, t1, 21
                  bltu         a0, t6, 481f
                  lui          t2, 743362
                  add          t3, s8, a4
                  lui          s8, 249443
                  and          t3, t3, a5
470:              bge          t1, a0, 486f
                  add          s9, a1, ra
                  andi         tp, s11, -1949
                  slt          a0, s1, tp
                  slli         s2, sp, 1
                  srai         a3, a3, 0
                  auipc        s1, 649015
                  beq          ra, t3, 488f
                  sll          t6, s1, s6
                  ori          t2, s1, 1916
                  bge          t4, s7, 481f
481:              lui          s8, 911120
                  bge          s2, t3, 495f
                  slt          s7, t6, t3
                  sub          s0, a1, tp
                  srl          s6, s8, a1
486:              and          a2, s4, t0
                  sltu         s10, s7, s10
488:              bne          s11, a2, 507f
                  bge          s8, ra, 495f
                  nop
                  auipc        t1, 94810
                  auipc        gp, 941883
                  bne          sp, t0, 503f
                  beq          s1, a1, 496f
495:              xor          t1, a4, sp
496:              bltu         s6, s9, 506f
                  sltu         s6, s10, a1
                  xori         a0, a7, -355
                  srl          a0, a4, s10
                  bgeu         a0, a5, 501f
501:              srli         s11, t5, 20
                  lui          s3, 842878
503:              srli         t4, a4, 11
                  addi         tp, sp, -717
                  or           zero, s10, s0
506:              add          a6, s10, t5
507:              beq          s0, a5, 511f
                  andi         s11, a6, 1389
                  sll          t4, a6, s10
                  sra          s4, t3, s11
511:              srl          s7, s4, s7
                  slt          zero, s6, a0
                  auipc        s6, 60908
                  auipc        ra, 784123
                  blt          t4, s4, 530f
                  xor          t2, a0, t2
                  sltu         ra, s6, a0
                  bgeu         a7, t4, 519f
519:              add          s6, a7, a4
                  sltu         zero, gp, t6
                  blt          a5, s11, 531f
                  slti         s5, a4, -1737
                  sra          s11, gp, s4
                  bne          s4, a5, 525f
525:              xor          s0, a1, t2
                  sra          a6, a4, gp
                  bgeu         a4, s2, 537f
                  or           s9, a6, gp
                  bltu         a6, gp, 543f
530:              slti         t4, t4, 770
531:              slti         sp, zero, -1818
                  beq          sp, a3, 551f
                  slli         sp, a4, 10
                  bltu         s11, a5, 536f
                  lui          s3, 36222
536:              sra          gp, t0, t5
537:              and          sp, s1, s3
                  slli         zero, t2, 22
                  sub          sp, a4, s8
                  blt          s9, s5, 543f
                  slt          a2, a6, s1
                  xori         t4, a4, 323
543:              nop
                  xor          s9, s4, a7
                  sltu         a2, a7, s3
                  sltiu        s6, gp, -663
                  auipc        a6, 775502
                  beq          s4, t0, 567f
                  nop
                  la           s1, region_1+1757 #start riscv_load_store_rand_instr_stream_14
                  sll          tp, s3, s2
                  sb           a7, -58(s1)
                  sw           s0, -9(s1)
                  slt          s3, t1, s7
                  addi         s9, tp, -173
                  sw           s11, -29(s1)
                  slli         s2, s11, 5
                  sb           t3, -19(s1)
                  sb           s6, -44(s1)
                  sb           s10, -12(s1)
                  or           zero, a3, t2
                  sll          s7, t0, sp
                  xori         s9, t5, -374
                  sb           s2, 64(s1)
                  lb           t1, 0(s1)
                  srai         s10, gp, 9
                  addi         a6, sp, 428
                  xori         s8, s10, -360
                  ori          t3, s2, 1095
                  sra          a0, s2, s6
                  lb           a6, -47(s1)
                  sh           sp, 43(s1)
                  slti         s2, tp, -439
                  lb           s8, -58(s1)
                  andi         zero, t2, -282
                  slt          s5, tp, s10
                  sb           tp, 52(s1)
                  auipc        s6, 842940
                  lb           s11, 32(s1)
                  slti         t0, s1, -1935
                  lb           a0, 64(s1)
                  lbu          a3, -23(s1)
                  lb           a6, -64(s1)
                  srai         s0, t0, 17
                  and          t4, sp, t2
                  ori          s9, s7, -604
                  ori          a5, ra, -1952
                  slli         tp, s10, 9
                  srai         s2, s1, 6
                  sb           a5, 18(s1)
                  lb           zero, 60(s1)
                  andi         tp, t3, 1607
                  sltiu        s8, zero, -460
                  lh           s6, -13(s1)
                  lhu          s5, 11(s1)
                  lb           tp, 30(s1)
                  srli         s5, a5, 29
                  lw           t1, -49(s1)
                  sb           s10, -28(s1) #end riscv_load_store_rand_instr_stream_14
                  bgeu         a7, s5, 566f
551:              srli         s6, a3, 10
                  srli         t6, a2, 21
                  bgeu         t1, t5, 559f
                  srai         t0, t2, 29
                  lui          a2, 955034
                  slt          a1, t0, t5
                  bne          s1, s2, 568f
                  or           s5, s0, s10
559:              beq          t1, s5, 560f
560:              sltiu        s11, s11, -1813
                  slti         s9, zero, -1962
                  addi         a1, s7, 1888
                  srli         t6, a4, 27
                  srai         s6, ra, 22
                  bgeu         t2, t6, 573f
566:              beq          a4, s9, 577f
567:              bge          s10, a1, 583f
568:              bgeu         t4, ra, 581f
                  addi         s8, a5, -1104
                  slt          a3, s1, s7
                  xor          s2, s7, tp
                  beq          s3, ra, 579f
573:              addi         t4, a4, -901
                  bne          t0, t1, 584f
                  beq          a0, s9, 582f
                  slti         s2, s6, 1773
577:              sltiu        gp, a1, -712
                  xor          s4, t6, a1
579:              slli         s9, t2, 15
                  xori         t3, sp, -1771
581:              or           s9, a4, a3
582:              bne          t6, s5, 583f
583:              bge          t5, a6, 599f
584:              slli         a0, s7, 12
                  bne          s9, a3, 595f
                  srli         a1, s11, 25
                  slli         s9, t5, 30
                  xor          a2, t1, s6
                  srl          a5, s8, t6
                  beq          a1, a7, 591f
591:              slti         s8, t5, 1559
                  bne          a6, s2, 608f
                  sltu         sp, gp, a0
                  auipc        t6, 129670
595:              sra          s2, gp, ra
                  srl          gp, a3, t4
                  xori         s4, s11, -1350
                  bltu         s7, sp, 614f
599:              srli         s7, s6, 1
                  sub          s8, sp, s8
                  srai         s2, a1, 6
                  add          a5, a3, t2
                  sll          s4, s3, s4
                  bltu         a2, s11, 605f
605:              slti         ra, t6, -31
                  sub          ra, t0, a7
                  xori         s0, a7, -278
608:              srai         s4, t0, 12
                  sra          s4, a0, s3
                  srli         tp, t2, 24
                  add          s5, t0, s10
                  sltu         s10, sp, t0
                  and          s7, s5, a0
614:              add          gp, s8, a2
                  xori         s7, a5, -34
                  slli         zero, s6, 9
                  slt          a2, s11, a7
                  andi         a6, s3, 1754
                  beq          t1, t0, 630f
                  xor          ra, a0, t0
                  slli         gp, a1, 13
                  bge          s0, t4, 638f
                  nop
                  slli         s8, s3, 28
                  blt          tp, s2, 631f
                  bltu         t4, a1, 630f
                  bge          t4, ra, 640f
                  sltiu        s9, a5, 1378
                  and          t6, s8, s5
630:              slli         t1, t4, 23
631:              and          s7, tp, s11
                  andi         sp, tp, 1752
                  xori         s3, t1, -887
                  slli         s5, t1, 6
                  addi         sp, s3, 883
                  beq          t5, s11, 651f
                  xori         t2, a2, -1720
638:              sll          a6, sp, s8
                  blt          t2, s11, 647f
640:              ori          zero, a2, 1028
                  sltiu        t3, s6, -307
                  sll          s10, t3, s3
                  beq          s10, gp, 656f
                  add          a6, zero, s9
                  bne          s5, t5, 652f
                  sra          ra, a5, a7
647:              auipc        a1, 657866
                  bge          t2, a4, 654f
                  srai         s1, ra, 31
                  sub          s1, a7, a4
651:              bltu         s4, t4, 667f
652:              beq          t6, gp, 663f
                  or           a1, t3, s11
654:              auipc        s11, 257060
                  bltu         a7, s6, 656f
656:              beq          a6, s9, 672f
                  addi         a3, s5, -365
                  srl          t1, sp, t3
                  and          a3, a2, ra
                  slt          s7, s2, t5
                  bne          a1, t6, 680f
                  addi         a1, t4, 1859
663:              srl          s4, zero, ra
                  andi         a2, tp, -312
                  addi         t0, t3, -167
                  sll          s11, a7, a3
667:              sltiu        ra, s2, 1483
                  beq          a2, t3, 674f
                  bgeu         zero, s8, 672f
                  slt          s10, t4, a1
                  slti         t4, s5, -133
672:              andi         a1, tp, -186
                  sub          a1, gp, s9
674:              or           t1, s8, t6
                  or           a2, s5, t2
                  andi         s0, s6, 552
                  sll          t3, t2, a5
                  or           t6, s7, s9
                  sll          s3, ra, a1
680:              bne          s7, t5, 691f
                  xor          s0, t3, s7
                  beq          a1, a0, 698f
                  srli         t6, t3, 31
                  srli         a1, a3, 28
                  xor          a1, t5, tp
                  slti         s3, a0, -647
                  bgeu         s6, a5, 688f
688:              blt          a1, s0, 690f
                  auipc        tp, 262660
690:              sub          ra, s2, s2
691:              bgeu         s3, ra, 698f
                  xori         t0, a1, 741
                  bgeu         a6, a4, 709f
                  slt          t2, s2, gp
                  lui          s8, 897619
                  nop
                  beq          t5, a5, 713f
698:              srl          s2, s6, a0
                  slti         t6, gp, -358
                  slli         s3, s0, 4
                  or           gp, s3, t5
                  bltu         gp, a0, 703f
703:              or           sp, ra, t3
                  bge          t5, s1, 717f
                  bge          zero, a2, 709f
                  bge          s5, s5, 707f
707:              sra          s10, t0, s0
                  sltiu        s8, sp, 1630
709:              sltiu        s5, a6, -1929
                  andi         t1, t3, -575
                  auipc        s4, 953278
                  nop
713:              auipc        tp, 404191
                  auipc        s9, 723881
                  bltu         a5, a5, 726f
                  srli         s2, s11, 29
717:              sltu         s8, sp, a0
                  srli         a2, a0, 6
                  and          s1, ra, sp
                  bne          s6, s8, 730f
                  auipc        a5, 493478
                  bgeu         t2, s3, 736f
                  xori         t1, t3, 885
                  srai         s2, s0, 19
                  addi         s0, s6, -87
726:              ori          s11, sp, 1026
                  sll          t0, t1, t1
                  blt          a3, s10, 744f
                  ori          a5, t2, -436
730:              sltiu        t6, a4, 1131
                  slt          t0, s0, a2
                  blt          a2, s10, 742f
                  sub          gp, s4, t5
                  add          a5, t3, a5
                  srli         s2, gp, 8
736:              srai         a0, s9, 15
                  slt          zero, s4, s0
                  andi         t6, gp, -1218
                  or           t4, s8, gp
                  xori         a6, s1, -387
                  blt          s4, s9, 760f
742:              and          a2, s9, a1
                  sub          ra, tp, a5
744:              nop
                  or           t3, s11, s2
                  slli         s9, a1, 26
                  and          a2, s8, t4
                  slt          a6, a3, tp
                  slti         s6, a1, 760
                  slt          t2, zero, tp
                  nop
                  nop
                  sltu         gp, a2, zero
                  sltu         a0, s9, a7
                  bne          s4, s3, 770f
                  bgeu         s11, a3, 766f
                  xor          ra, zero, s8
                  xori         s6, t0, 1902
                  bge          s9, zero, 778f
760:              srl          sp, ra, t3
                  sra          s4, t0, a4
                  lui          tp, 91848
                  sltiu        t3, t5, 1849
                  sub          t6, zero, a7
                  ori          a1, s4, -1281
766:              xor          t2, a3, s0
                  nop
                  xori         a5, s5, 1064
                  auipc        sp, 720389
770:              sra          s8, a2, s6
                  bltu         a4, t6, 779f
                  xor          t6, s5, a3
                  xori         sp, zero, -1341
                  slt          s8, a2, a0
                  bge          s0, s2, 788f
                  sub          gp, tp, t0
                  or           a1, s3, a2
778:              lui          t4, 810564
779:              slli         sp, s8, 19
                  lui          zero, 713806
                  xor          gp, a7, s10
                  slti         t1, s6, 1110
                  slli         t2, a2, 31
                  xori         ra, a4, 76
                  sltiu        s6, s5, 1801
                  nop
                  and          t0, t6, tp
788:              sub          s9, tp, a7
                  addi         tp, gp, 1490
                  bgeu         zero, a4, 809f
                  sll          s5, t2, t1
                  beq          s8, a3, 795f
                  srli         a5, s11, 5
                  sll          sp, t2, s4
795:              add          a2, t0, a3
                  sll          s3, s2, a5
                  la           sp, region_1+1360 #start riscv_load_store_rand_instr_stream_18
                  slt          s1, a4, a0
                  addi         a1, a6, -707
                  sub          gp, s3, t1
                  srai         s0, s11, 23
                  sltiu        t6, t2, -1436
                  sb           s3, 18(sp)
                  slti         s4, s2, 1279
                  lbu          a6, 11(sp)
                  sll          gp, s11, t0
                  lh           s6, -50(sp)
                  sll          t3, t5, s5
                  lh           t1, 56(sp)
                  sra          s5, s8, s4
                  lb           t1, -27(sp)
                  slt          a1, gp, s7
                  sb           a1, 63(sp)
                  sb           t1, -40(sp)
                  sb           s8, -30(sp)
                  addi         s4, t5, -1348
                  or           ra, t1, t2
                  and          t2, s6, ra
                  sb           s5, -38(sp)
                  lh           s9, 58(sp)
                  srl          t6, t2, s4
                  lb           t2, -39(sp)
                  sb           s7, -25(sp)
                  lbu          a3, -17(sp)
                  lhu          s1, -54(sp)
                  sltu         a3, t4, zero
                  lb           tp, 46(sp)
                  sub          tp, s4, s7
                  sltu         t6, s8, t0
                  ori          t1, s1, 1184
                  lb           s0, -42(sp)
                  lhu          s4, 0(sp)
                  lb           tp, -21(sp)
                  lh           a5, -50(sp)
                  lui          s4, 38364
                  slt          s7, s7, s0
                  slti         t6, t0, 29
                  sra          gp, s4, tp
                  sh           t6, 8(sp)
                  lbu          s0, -20(sp)
                  sb           t2, -43(sp)
                  lbu          s5, 11(sp)
                  srai         a5, s6, 8
                  add          t2, s10, s8
                  sb           sp, 2(sp)
                  lbu          ra, -64(sp) #end riscv_load_store_rand_instr_stream_18
                  srai         t6, tp, 1
                  bltu         s4, sp, 804f
                  nop
                  srai         s7, s10, 22
                  bgeu         s6, s2, 816f
                  xori         t3, t4, 787
                  bltu         s7, t4, 814f
804:              srai         s2, tp, 1
                  bne          a5, s1, 821f
                  auipc        s6, 349347
                  bne          a4, s11, 814f
                  bltu         t0, t1, 812f
809:              slt          t1, a5, gp
                  auipc        a6, 616701
                  ori          s6, s4, -1967
812:              bge          a5, s4, 813f
813:              xor          s2, t2, s4
814:              srai         s1, s6, 31
                  blt          s1, s11, 825f
816:              ori          t4, a6, 1605
                  or           t4, a1, t3
                  xori         ra, s2, 349
                  andi         gp, t6, 1722
                  xor          a1, s2, s0
821:              srl          t2, s9, t6
                  lui          a6, 344835
                  sltiu        zero, s9, 320
                  xor          s3, a2, a7
825:              auipc        tp, 306955
                  bltu         zero, ra, 836f
                  bgeu         s7, a5, 828f
828:              sltu         s2, s0, t4
                  sra          s10, tp, s6
                  sll          s11, t5, gp
                  bge          t4, s6, 844f
                  and          s9, a0, sp
                  srli         a6, a7, 6
                  slti         s3, a7, 103
                  slli         s9, s5, 16
836:              sub          s10, a5, a7
                  or           zero, a1, s10
                  srai         s8, tp, 9
                  bne          s9, s6, 855f
                  nop
                  srli         t4, a6, 8
                  sltiu        s9, s7, 1135
                  beq          zero, a5, 844f
844:              sltu         s1, t0, s1
                  add          t3, gp, a2
                  xor          s3, s10, s0
                  addi         t6, gp, 616
                  and          s7, sp, s8
                  bgeu         s4, t1, 851f
                  srai         a5, s4, 7
851:              blt          t2, tp, 858f
                  bge          s6, s9, 868f
                  slli         s6, sp, 11
                  lui          s1, 778919
855:              sll          a2, s0, s5
                  sub          ra, a5, s3
                  sll          t6, s3, s5
858:              blt          a2, gp, 874f
                  bltu         s3, gp, 870f
                  or           t1, a4, s1
                  sub          sp, s0, ra
                  bge          gp, t2, 863f
863:              sltu         s11, t0, a5
                  sra          s1, s0, s3
                  srai         t4, a3, 2
                  sltu         s5, a5, t2
                  beq          t2, t4, 873f
868:              bltu         s5, zero, 884f
                  addi         s6, a2, -1742
870:              add          s0, s11, t2
                  add          a0, t4, s7
                  lui          s9, 272454
873:              bne          s7, sp, 887f
874:              ori          s11, s4, -911
                  nop
                  sll          t2, a3, t1
                  beq          a4, gp, 893f
                  srl          zero, a3, s2
                  add          s11, s11, s7
                  bltu         s2, sp, 891f
                  slti         ra, s1, 1338
                  andi         t1, a6, -1664
                  blt          s1, sp, 893f
884:              slli         s6, s9, 25
                  or           t2, gp, ra
                  slli         zero, t5, 7
887:              bgeu         t6, t1, 898f
                  slt          s5, t3, s8
                  bne          t6, s9, 899f
                  add          t2, t4, s2
891:              sra          s0, s1, gp
                  lui          t4, 226972
893:              auipc        a0, 606660
                  srli         sp, s6, 13
                  bltu         a7, t0, 901f
                  xor          tp, s7, s5
                  lui          s8, 340833
898:              bne          s2, s5, 906f
899:              sra          t0, s0, t1
                  xor          s8, a5, s10
901:              srl          s9, s5, t3
                  lui          a1, 177808
                  bge          ra, a5, 916f
                  bgeu         t0, a1, 919f
                  addi         a3, a0, -285
906:              bgeu         ra, s1, 917f
                  sll          s4, a5, s4
                  slli         a5, t5, 17
                  bne          t0, t5, 919f
                  sltu         s1, a5, a2
                  blt          s7, s1, 918f
                  slli         s8, t0, 0
                  beq          a7, s2, 914f
914:              xori         a6, s9, 1119
                  beq          s9, s5, 934f
916:              and          tp, ra, sp
917:              sltiu        s11, t3, -1909
918:              nop
919:              srl          ra, s4, t3
                  beq          s5, ra, 924f
                  bne          t5, t4, 937f
                  blt          t2, t3, 938f
                  sltiu        t4, s4, 460
924:              sub          s10, ra, t0
                  srai         s1, t2, 25
                  auipc        a0, 509893
                  sra          t2, tp, zero
                  srli         s10, s0, 9
                  bge          t2, zero, 945f
                  xor          s1, a7, t3
                  auipc        s2, 582860
                  bgeu         t5, sp, 946f
                  auipc        s3, 614133
934:              slt          s1, a3, s6
                  srli         a0, a5, 21
                  bltu         t3, a4, 942f
937:              ori          s9, a0, -320
938:              addi         t1, a6, 1343
                  srli         t6, tp, 28
                  bne          t4, t1, 951f
                  blt          a5, zero, 957f
942:              bltu         s11, t5, 943f
943:              bgeu         s3, a1, 945f
                  andi         s10, s3, 267
945:              blt          gp, a2, 955f
946:              srl          sp, tp, a1
                  bge          t2, a5, 954f
                  sltiu        t1, s1, 402
                  add          t4, t0, ra
                  slli         s7, s10, 26
951:              and          a6, s5, s11
                  srl          a0, a2, s11
                  sltiu        sp, s11, 1899
954:              bge          a4, a3, 973f
955:              blt          a5, s2, 968f
                  srli         s7, t2, 29
957:              bgeu         a7, a1, 958f
958:              ori          zero, s0, -338
                  srli         t2, a0, 9
                  blt          a1, t6, 976f
                  bge          a5, sp, 977f
                  slli         t0, a5, 18
                  and          a5, s6, zero
                  or           t3, a0, a0
                  add          zero, s4, gp
                  blt          s7, a5, 969f
                  bge          a2, a5, 968f
968:              sub          zero, zero, a0
969:              lui          s8, 724491
                  addi         s8, ra, -1228
                  sll          s7, t0, t0
                  beq          t3, t4, 985f
973:              and          a6, t2, a2
                  srl          s1, gp, gp
                  slli         t1, s0, 27
976:              bltu         s5, zero, 984f
977:              add          s2, a5, t1
                  sltiu        s1, s5, 1586
                  ori          s11, s3, 1023
                  slt          sp, a7, s11
                  and          t4, s7, a1
                  bgeu         s0, s10, 993f
                  beq          a4, a6, 1002f
984:              blt          s11, s4, 994f
985:              bgeu         a7, s1, 1001f
                  lui          s4, 55931
                  and          gp, t6, s8
                  sltu         s0, gp, s6
                  srai         s11, s0, 2
                  bge          s0, s10, 1006f
                  slt          a5, s2, t1
                  slti         t6, a6, -1469
993:              lui          zero, 82939
994:              ori          a6, s4, 314
                  sll          s10, s0, s1
                  andi         s8, s1, -805
                  nop
                  sra          s0, gp, a0
                  slli         a3, s2, 1
                  andi         t0, s7, -1939
1001:             srai         tp, a5, 22
1002:             xori         s9, a6, 869
                  bgeu         s4, t6, 1014f
                  sltu         s3, s1, a3
                  andi         a6, ra, 637
1006:             sub          s4, zero, s1
                  slti         s1, a4, 1565
                  sltu         s6, s1, ra
                  xor          s11, sp, t3
                  srl          s0, s11, s7
                  bge          a2, t4, 1021f
                  add          s8, s8, a7
                  andi         a1, s2, 1630
1014:             sub          s11, a0, sp
                  xor          tp, t5, t6
                  ori          t2, t6, -1604
                  sltu         sp, ra, t4
                  slli         ra, a5, 7
                  bltu         a3, t4, 1020f
1020:             slti         s1, s0, 1634
1021:             addi         t0, t2, -1314
                  xor          a1, s2, s8
                  xor          tp, s6, s10
                  xori         t0, a1, 313
                  sltu         zero, s9, a4
                  lui          s5, 732021
                  sra          sp, s3, a6
                  srli         a1, a6, 29
                  xor          s5, a5, s10
                  beq          ra, sp, 1037f
                  add          t0, t1, s7
                  bne          s3, s3, 1048f
                  addi         a3, s10, -1135
                  add          t6, a2, gp
                  bltu         s10, sp, 1046f
                  blt          ra, tp, 1039f
1037:             nop
                  beq          t4, s6, 1042f
1039:             blt          t5, zero, 1045f
                  sub          t1, a4, s6
                  sll          gp, s4, ra
1042:             or           s5, s1, t5
                  and          s10, a7, t2
                  bge          zero, a4, 1045f
1045:             srli         t0, a6, 24
1046:             bgeu         s10, a3, 1056f
                  bltu         s2, t3, 1048f
1048:             and          s9, t4, s1
                  sltiu        t0, t5, 314
                  ori          a5, s9, 504
                  beq          s0, t6, 1070f
                  srli         gp, s4, 18
                  add          t3, a1, s0
                  or           ra, s2, t5
                  andi         s2, s6, -1782
1056:             add          a3, s7, a5
                  add          ra, t0, t0
                  ori          a1, s2, -417
                  lui          sp, 737415
                  bge          gp, s5, 1061f
1061:             beq          a7, s9, 1077f
                  add          s1, ra, zero
                  srai         s8, ra, 20
                  sltiu        a5, a5, 825
                  xori         s0, s10, 1651
                  or           s6, t3, a2
                  andi         t3, a7, -458
                  sll          s3, s0, t2
                  slti         a6, a1, -1334
1070:             auipc        s4, 487329
                  srai         s3, s11, 14
                  slli         s1, zero, 12
                  xori         s1, t5, -805
                  slli         a0, zero, 4
                  andi         s0, s1, 1173
                  or           s8, s5, t2
1077:             bge          a2, a0, 1093f
                  srl          t3, t1, t1
                  add          s11, s8, sp
                  bgeu         gp, a1, 1096f
                  nop
                  andi         s6, zero, 897
                  slli         t0, a3, 4
                  or           s4, s1, tp
                  bgeu         s8, s7, 1098f
                  sll          a6, t2, s6
                  slli         s8, t2, 4
                  bne          t1, a6, 1095f
                  slli         tp, s7, 30
                  auipc        s6, 1041788
                  or           s8, s4, a1
                  add          a6, ra, t4
1093:             sltu         a1, s3, t0
                  lui          t4, 1017842
1095:             srai         tp, t0, 14
1096:             xor          zero, tp, a0
                  slli         gp, a1, 27
1098:             slli         s4, t0, 7
                  bltu         ra, ra, 1101f
                  nop
1101:             slt          s3, a0, s7
                  slli         t4, s1, 14
                  and          sp, s7, tp
                  sltu         s0, s0, t1
                  slt          t1, sp, s10
                  blt          s7, a3, 1121f
                  sll          t1, tp, zero
                  andi         t0, s2, 233
                  ori          a2, t1, 29
                  andi         t1, t1, 841
                  slt          t0, s5, sp
                  xor          s2, s6, t5
                  xor          sp, zero, a7
                  addi         ra, a3, 229
                  lui          a2, 997648
                  sra          a0, t1, t3
                  sltu         a3, t6, zero
                  and          a6, s0, gp
                  sub          a1, t3, a4
                  nop
1121:             xor          a2, a5, s0
                  nop
                  blt          t2, a7, 1137f
                  or           s0, s5, a0
                  bne          a4, s11, 1131f
                  sll          s8, tp, a4
                  xori         gp, s4, -998
                  srli         t1, s10, 14
                  blt          s5, s4, 1139f
                  nop
1131:             bgeu         s11, a3, 1150f
                  srl          s2, s11, t6
                  srai         sp, s3, 8
                  addi         s2, zero, -883
                  andi         t1, s7, -1136
                  blt          zero, s1, 1138f
1137:             bltu         a3, t6, 1153f
1138:             slt          zero, s10, s11
1139:             sll          s10, a0, s3
                  sltiu        t0, t3, -672
                  and          t0, a3, a3
                  and          s6, a4, t6
                  andi         gp, a3, 16
                  xor          s1, t1, s0
                  sub          s9, a7, s8
                  srli         t2, a2, 9
                  slt          s4, sp, s6
                  or           s10, a3, t6
                  bne          s1, a1, 1159f
1150:             nop
                  slt          s10, t2, a0
                  xori         s10, a2, -354
1153:             sra          sp, s3, t5
                  sra          a1, zero, zero
                  slli         a2, s10, 28
                  xori         s7, a4, 1609
                  and          a6, s4, s0
                  bne          s1, s4, 1169f
1159:             blt          s9, s4, 1175f
                  nop
                  sra          s1, sp, tp
                  bge          t4, s1, 1178f
                  bge          t4, t4, 1174f
                  srai         t4, s3, 5
                  slt          a6, a4, s10
                  srai         t3, a5, 26
                  sltiu        a1, s2, 1495
                  bne          s11, a0, 1175f
1169:             or           s1, a3, s6
                  lui          s3, 769699
                  xor          a0, ra, s0
                  bgeu         s11, ra, 1186f
                  ori          s9, a3, -954
1174:             blt          s1, t2, 1177f
1175:             or           s2, s5, t1
                  andi         s9, gp, -995
1177:             lui          t6, 437267
1178:             or           a1, s2, t6
                  srai         s6, s6, 7
                  sra          s11, s11, ra
                  xori         t3, s1, -1482
                  or           a2, t4, a1
                  auipc        s0, 238757
                  sltu         sp, a4, s11
                  sra          a1, a3, s9
1186:             bgeu         t5, t0, 1190f
                  lui          zero, 621483
                  sub          s2, a1, zero
                  bgeu         s10, s6, 1205f
1190:             addi         s7, a0, -809
                  sra          sp, t2, sp
                  bgeu         t0, s7, 1200f
                  sub          t3, t3, a7
                  sra          a6, gp, s11
                  slt          t6, zero, tp
                  srli         a6, a3, 14
                  nop
                  auipc        s0, 473953
                  bgeu         gp, t1, 1210f
1200:             sub          t0, zero, t0
                  xor          zero, t1, t6
                  or           s5, s3, t0
                  srli         t1, t5, 8
                  sll          a1, a7, s2
1205:             nop
                  sltu         s6, t2, a1
                  sra          a3, s4, t6
                  bne          t1, ra, 1223f
                  sltu         t4, s8, a4
1210:             add          tp, t2, t4
                  lui          zero, 1027597
                  slti         a2, t4, -1881
                  sub          tp, s2, s2
                  blt          s8, s9, 1224f
                  slli         a6, s4, 9
                  slli         s10, s6, 7
                  bgeu         s4, t0, 1236f
                  sll          t1, t2, t2
                  xori         t1, tp, 749
                  bltu         a7, s3, 1221f
1221:             blt          ra, a7, 1228f
                  sltu         t6, gp, tp
1223:             xor          a5, t2, a1
1224:             nop
                  add          a1, s10, tp
                  bge          s4, t4, 1242f
                  nop
1228:             sub          gp, s1, gp
                  slti         a5, a2, 85
                  bltu         t3, s2, 1231f
1231:             bne          a4, a5, 1237f
                  sub          a6, s8, s0
                  add          gp, s4, t0
                  srli         t1, t6, 0
                  bge          s7, s11, 1248f
1236:             nop
1237:             beq          s11, a7, 1238f
1238:             bltu         a7, s0, 1239f
1239:             bne          s8, tp, 1255f
                  blt          s7, a2, 1253f
                  andi         tp, a5, 577
1242:             ori          t2, s7, 1788
                  slt          gp, a6, s9
                  sub          s9, a7, ra
                  slt          tp, s4, tp
                  sub          t6, a4, a5
                  add          s3, s4, s9
1248:             addi         s0, s3, -611
                  add          s6, a7, t1
                  sra          t2, a7, s4
                  bltu         a4, t0, 1257f
                  slli         a3, s7, 10
1253:             bgeu         t5, t3, 1260f
                  bgeu         tp, a3, 1270f
1255:             ori          s6, s6, 1120
                  lui          gp, 1021308
1257:             nop
                  srai         t0, tp, 5
                  beq          t5, tp, 1265f
1260:             sra          gp, t5, s6
                  srl          t6, t0, a0
                  beq          s9, t4, 1273f
                  srl          s3, a3, s6
                  bltu         ra, s0, 1265f
1265:             sltiu        t2, t1, 316
                  bge          t0, a6, 1285f
                  add          t6, s2, t4
                  or           t3, a7, tp
                  xor          tp, s6, a4
1270:             sra          ra, a7, t4
                  beq          s11, a3, 1282f
                  nop
1273:             sltiu        s1, s1, -421
                  add          s11, a1, s3
                  bge          a7, t2, 1278f
                  slt          s8, tp, s5
                  add          ra, s7, t5
1278:             sltu         s10, s4, s9
                  lui          s8, 884889
                  sltu         s8, sp, s9
                  srai         a6, a0, 25
1282:             andi         a1, s0, -1100
                  slt          s5, s8, gp
                  nop
1285:             srli         sp, a7, 4
                  srli         s8, sp, 6
                  xori         s4, t0, -171
                  slli         a3, a5, 28
                  and          s11, s6, s10
                  bgeu         s7, ra, 1291f
1291:             beq          s4, sp, 1292f
1292:             sll          t3, a6, a5
                  addi         a6, s5, 373
                  nop
                  xor          t4, t3, s11
                  srl          s3, a6, a1
                  auipc        a0, 76014
                  sll          zero, zero, a5
                  slt          t3, s3, s10
                  add          gp, a3, s1
                  bge          s4, s0, 1305f
                  slli         s7, t5, 24
                  or           s2, s6, a5
                  xori         t0, tp, 410
1305:             srl          a5, t3, t4
                  srli         s4, tp, 27
                  xor          t4, a5, t4
                  lui          t3, 146777
                  and          s6, t5, a6
                  auipc        t0, 819405
                  bgeu         tp, a0, 1327f
                  ori          s3, a0, -102
                  beq          sp, tp, 1329f
                  xori         a3, s0, 1806
                  bne          a1, a3, 1317f
                  xori         t1, s8, 154
1317:             xori         s9, a2, -1311
                  sltiu        a0, a2, 919
                  bne          a6, s10, 1325f
                  sub          t6, s0, a1
                  xori         t6, s4, -793
                  auipc        a1, 188003
                  slti         t1, a5, 1360
                  sra          s5, s9, a7
1325:             auipc        t3, 820475
                  bge          s6, ra, 1339f
1327:             slti         a1, zero, -582
                  ori          a0, s7, 1849
1329:             xor          s6, a1, a6
                  add          s7, t4, s2
                  slti         gp, a2, 1956
                  nop
                  srai         a2, a6, 29
                  sub          sp, a3, gp
                  bne          a7, s2, 1354f
                  srl          s6, s3, a5
                  and          a6, s1, s10
                  nop
1339:             auipc        sp, 732146
                  srl          s5, s4, zero
                  beq          tp, t1, 1348f
                  lui          a6, 486734
                  bge          s5, a1, 1344f
1344:             sll          t4, t5, ra
                  bne          s3, s11, 1361f
                  xor          s11, s0, t3
                  ori          zero, s0, -1472
1348:             bltu         a6, a6, 1356f
                  sltu         s1, t1, t6
                  bgeu         sp, s0, 1360f
                  bgeu         t5, s11, 1365f
                  slli         s3, s9, 30
                  auipc        s7, 1039228
1354:             bge          a3, t5, 1370f
                  sra          a3, a1, zero
1356:             nop
                  sra          a5, t2, s2
                  beq          s9, ra, 1374f
                  lui          ra, 802275
1360:             nop
1361:             bge          a7, a4, 1376f
                  andi         s3, sp, 368
                  sll          t0, s7, t1
                  srl          s8, t0, s8
1365:             bge          tp, s10, 1375f
                  ori          t3, s6, -1736
                  sltiu        s4, s1, -929
                  andi         s9, t6, 541
                  add          a3, s10, t0
1370:             lui          sp, 1011424
                  andi         s7, t1, 506
                  slt          t4, a0, s5
                  beq          a1, a5, 1383f
1374:             andi         s7, sp, 1617
1375:             andi         t2, s9, -328
1376:             sll          gp, a6, t0
                  srli         sp, s0, 13
                  slli         tp, s7, 12
                  sltiu        t4, s3, -1064
                  sltiu        s8, t0, 1084
                  slti         s9, a6, -623
                  sll          t6, s1, s4
1383:             and          a6, s6, s0
                  srli         s8, s7, 0
                  sltiu        s6, a7, 110
                  xor          ra, s8, s8
                  sltu         t6, a6, t4
                  bge          s11, s5, 1401f
                  sll          ra, t5, t0
                  sra          t3, a0, t2
                  lui          s7, 562505
                  slli         s9, t2, 28
                  sltiu        zero, t3, -125
                  xori         s5, a4, -1805
                  add          s0, a2, a5
                  srli         ra, s10, 7
                  bgeu         sp, a3, 1408f
                  sltiu        a5, ra, 751
                  srli         t0, s6, 18
                  bgeu         t5, a7, 1401f
1401:             srl          t3, sp, a5
                  bltu         a5, t5, 1413f
                  slli         a3, s7, 22
                  srli         s4, s7, 0
                  lui          zero, 975162
                  srli         a2, s4, 23
                  blt          t2, s5, 1408f
1408:             beq          a0, s3, 1424f
                  bltu         s2, a2, 1428f
                  addi         s10, a6, 546
                  auipc        a1, 48572
                  slli         tp, gp, 13
1413:             or           a2, t6, t2
                  sltu         t1, t1, a4
                  sll          ra, s8, s5
                  bltu         s2, t1, 1422f
                  slt          s7, a6, ra
                  ori          s11, a6, 1433
                  slti         a2, a3, 1774
                  sra          tp, t4, s2
                  bltu         s9, tp, 1422f
1422:             srl          t0, s6, s10
                  bgeu         s6, s1, 1430f
1424:             sltu         zero, s1, ra
                  lui          a6, 481043
                  xori         t6, a4, 50
                  bltu         a3, sp, 1442f
1428:             sltu         s9, s2, a2
                  auipc        t1, 968864
1430:             xori         t2, s8, -154
                  sltiu        s0, t1, -1237
                  sub          s10, a1, s11
                  ori          a5, s8, 1356
                  beq          t5, s3, 1448f
                  beq          a1, t0, 1442f
                  slt          s2, s6, s10
                  sltu         s7, s1, s0
                  sub          t0, a5, t1
                  sub          ra, s3, s11
                  blt          s10, zero, 1450f
                  srli         zero, s1, 28
1442:             or           zero, sp, a7
                  srai         zero, s2, 8
                  sll          tp, sp, a7
                  slt          s10, ra, t2
                  sltu         s6, gp, a4
                  bge          s6, a2, 1448f
1448:             slt          a0, ra, s7
                  nop
1450:             srai         s6, s10, 20
                  srl          a3, a7, a2
                  srl          s9, s11, t2
                  bgeu         a3, a3, 1469f
                  srl          a1, t1, sp
                  add          s1, s4, a1
                  sltu         s6, a5, zero
                  auipc        s0, 819021
                  or           s9, zero, s3
                  addi         a3, s2, -1880
                  srai         s2, sp, 14
                  xor          a2, t4, s11
                  srli         ra, t0, 7
                  srl          s5, t2, s2
                  sub          s3, s5, t4
                  srli         tp, t4, 17
                  or           a5, s4, t1
                  add          ra, a2, ra
                  add          s0, s0, a3
1469:             sub          s2, s5, s11
                  nop
                  slli         a2, s6, 11
                  lui          s0, 641155
                  bgeu         a0, t6, 1489f
                  sll          a1, gp, s6
                  xor          s8, t4, t3
                  bgeu         s5, s9, 1489f
                  sltiu        t2, s4, 1639
                  lui          ra, 367373
                  bge          sp, a6, 1490f
                  sltu         s4, s6, t5
                  blt          t0, tp, 1494f
                  bltu         s9, a7, 1492f
                  add          a6, t3, s5
                  andi         t1, zero, -1101
                  and          a5, s0, a3
                  nop
                  bgeu         zero, t6, 1490f
                  xori         s9, t3, -636
1489:             xori         s11, s10, -1316
1490:             add          t2, t2, s9
                  and          s1, s6, s11
1492:             or           s3, ra, a6
                  sra          s11, gp, s8
1494:             slti         s1, zero, -1317
                  sltu         a6, a7, tp
                  srai         s8, s0, 16
                  xori         gp, a0, 306
                  bge          s7, s5, 1506f
                  srli         s10, t6, 10
                  bltu         a7, a2, 1516f
                  sub          s7, a3, t1
                  add          s1, s2, t5
                  srai         s4, sp, 5
                  sltiu        s6, t2, 948
                  srli         gp, s10, 30
1506:             sltu         tp, a3, t1
                  blt          t0, t4, 1518f
                  add          zero, ra, s7
                  slt          tp, s8, a6
                  bge          t2, t0, 1512f
                  and          t6, s3, sp
1512:             andi         tp, a0, 1512
                  and          t2, a4, s1
                  slt          s11, s7, sp
                  nop
1516:             sll          s0, s10, a0
                  slti         s5, s7, -177
1518:             xori         a6, t3, -944
                  srai         s1, t5, 0
                  bne          s10, zero, 1526f
                  slli         s10, zero, 2
                  addi         a5, a7, 1133
                  sltu         a0, t0, s2
                  bgeu         sp, s0, 1540f
                  sltiu        s3, t0, 418
1526:             sltiu        sp, tp, -708
                  or           tp, a5, a4
                  sub          t2, a0, sp
                  slli         a5, a0, 5
                  slti         a1, t2, 43
                  add          s8, tp, a0
                  auipc        sp, 354817
                  xor          s0, gp, s0
                  bne          t1, a4, 1544f
                  sll          sp, t4, a0
                  and          gp, t5, t6
                  bne          s3, t3, 1556f
                  lui          a2, 410422
                  sltu         t3, tp, s7
1540:             sltiu        t1, t4, -1439
                  bltu         a1, ra, 1545f
                  nop
                  srli         s5, a4, 21
1544:             nop
1545:             or           sp, ra, a3
                  xori         s9, t0, 1613
                  sub          t4, ra, a7
                  addi         t0, t0, 1033
                  slti         s3, s11, -103
                  and          zero, t2, s11
                  sub          t1, a6, a0
                  sltu         t4, tp, s10
                  ori          s5, ra, -1932
                  auipc        a2, 541926
                  nop
1556:             addi         a2, a5, 1316
                  nop
                  and          t1, t3, s11
                  add          t2, zero, a4
                  xor          t4, s1, t3
                  slt          a6, t4, a4
                  sll          a6, t1, sp
                  srai         a0, s2, 9
                  sra          a0, s11, a0
                  bgeu         s9, s4, 1581f
                  auipc        a3, 558925
                  xor          s6, a1, s6
                  nop
                  nop
                  xori         ra, s5, -1233
                  beq          a6, t0, 1578f
                  srli         s10, a0, 24
                  bne          s3, tp, 1589f
                  sltiu        s5, a6, -802
                  and          s0, a1, zero
                  add          t2, sp, t1
                  srl          s10, a2, s1
1578:             slt          s2, s1, t3
                  srai         t0, s7, 13
                  addi         s1, t6, 1570
1581:             and          s11, a6, s3
                  sub          s3, sp, a2
                  sll          a5, s11, s10
                  sub          sp, t2, s9
                  sra          s6, zero, t4
                  ori          ra, s6, -734
                  lui          s5, 264017
                  lui          s3, 503042
1589:             sltiu        ra, a1, -187
                  xor          s10, s9, t5
                  auipc        s4, 770362
                  bltu         t6, s7, 1599f
                  slti         zero, s8, 1415
                  srl          s6, s9, t2
                  nop
                  or           s4, a6, tp
                  sra          s6, a3, t6
                  bgeu         s7, a1, 1614f
1599:             auipc        s5, 191825
                  bltu         t5, s9, 1610f
                  beq          t2, s11, 1615f
                  ori          s11, s11, -665
                  sub          t1, s1, s5
                  beq          zero, a6, 1615f
                  bge          s9, s9, 1621f
                  sub          sp, s6, s1
                  sub          tp, gp, a2
                  bne          t3, t3, 1618f
                  andi         t4, s11, 487
1610:             slli         s9, s9, 23
                  srli         s0, a4, 15
                  srai         s3, s11, 12
                  nop
1614:             xor          t4, t0, s4
1615:             slti         zero, a1, -1307
                  sltiu        s9, t0, -1264
                  sll          t2, tp, gp
1618:             slt          s9, sp, s8
                  slti         s11, a7, -1900
                  or           t2, t1, t1
1621:             sltiu        s3, a0, 246
                  sub          t2, s4, gp
                  andi         t0, a1, -252
                  or           a0, t6, a3
                  andi         a6, s4, 135
                  bgeu         s10, s10, 1627f
1627:             slli         sp, s5, 6
                  xori         a0, s7, -631
                  and          s3, s3, t2
                  andi         t6, a7, 121
                  andi         s1, s7, -1258
                  slli         t3, t1, 13
                  andi         s2, t5, 1157
                  xori         tp, zero, -1733
                  sltu         s2, gp, t6
                  srai         a3, s7, 8
                  and          s0, t5, a4
                  add          zero, a7, s8
                  or           s3, s0, a0
                  auipc        s8, 295867
                  xor          a2, a7, s6
                  srl          s1, t3, ra
                  sra          a6, s7, a7
                  slti         a1, s11, 1521
                  beq          t1, s8, 1653f
                  bltu         s6, t1, 1662f
                  sltiu        s4, zero, -1902
                  sra          t0, a2, s2
                  ori          t0, gp, 2004
                  srli         t2, s7, 12
                  xor          sp, t5, s2
                  sub          zero, a7, a2
1653:             slli         a1, s3, 21
                  auipc        s3, 271622
                  sub          t4, s10, s7
                  bge          a2, s3, 1675f
                  nop
                  srli         ra, ra, 15
                  addi         s8, a0, -1215
                  bgeu         s0, a7, 1662f
                  and          s2, s7, ra
1662:             xor          s1, ra, t1
                  xori         a0, a5, 596
                  blt          s7, t6, 1665f
1665:             sltiu        s10, ra, 490
                  addi         s6, t0, -112
                  bgeu         s11, s4, 1678f
                  or           zero, tp, a6
                  sra          s6, t6, s5
                  auipc        s7, 760345
                  xori         s10, a5, -1501
                  and          s1, zero, t6
                  srai         s0, s11, 3
                  sll          s9, sp, t5
1675:             sltiu        a0, s0, -1418
                  srli         s8, s2, 28
                  xori         tp, ra, 1044
1678:             srli         gp, s4, 25
                  srai         a5, a6, 1
                  bge          s4, s8, 1684f
                  nop
                  srli         t4, a4, 8
                  and          s1, t4, t6
1684:             auipc        a1, 352961
                  bgeu         s2, zero, 1691f
                  blt          s6, zero, 1692f
                  sltiu        s7, a0, -1686
                  blt          s2, s0, 1691f
                  bge          a6, s7, 1690f
1690:             lui          tp, 898771
1691:             srai         t0, s5, 8
1692:             slti         a0, a5, -1956
                  srai         a1, tp, 3
                  xori         tp, s7, 175
                  sub          s10, a7, s7
                  srai         tp, ra, 17
                  bltu         t5, ra, 1713f
                  slt          t1, s0, s7
                  sll          s8, s4, s0
                  andi         s10, tp, -24
                  beq          t5, t2, 1712f
                  xori         a5, a2, 1480
                  lui          t3, 122213
                  andi         s8, gp, -1512
                  or           t6, s2, a4
                  bgeu         ra, t4, 1721f
                  slti         s8, s11, 643
                  nop
                  srai         t4, zero, 2
                  blt          t4, a4, 1729f
                  or           s8, s0, a4
1712:             sub          zero, ra, s5
1713:             srl          sp, a7, s1
                  bgeu         a4, ra, 1724f
                  blt          t4, s11, 1716f
1716:             beq          s9, a0, 1729f
                  sub          s6, a6, gp
                  srai         tp, ra, 22
                  xori         s4, t5, -1739
                  sll          t3, s9, t6
1721:             bne          s4, s3, 1734f
                  srai         t4, a5, 18
                  bge          s5, a5, 1739f
1724:             bne          s5, s6, 1740f
                  bge          s4, s7, 1740f
                  sra          s2, s2, s5
                  bgeu         t4, s6, 1730f
                  xori         tp, t2, 217
1729:             add          t0, a1, zero
1730:             srai         t6, t6, 17
                  sltu         s8, s11, s8
                  bge          t0, ra, 1738f
                  sll          t3, sp, zero
1734:             or           s10, a2, a6
                  ori          s6, s5, 1130
                  bne          s5, s5, 1752f
                  nop
1738:             ori          a2, t3, 1630
1739:             sll          t3, t0, t4
1740:             and          t4, a0, a4
                  addi         s0, a1, -1342
                  lui          a2, 204911
                  or           a5, t5, a1
                  and          a5, s4, tp
                  xori         s3, zero, -1695
                  or           a2, t0, a2
                  blt          a2, a5, 1754f
                  auipc        s8, 229885
                  andi         a3, t3, 35
                  nop
                  slti         s11, t4, -65
1752:             bge          t1, t4, 1762f
                  andi         a3, t6, 170
1754:             sra          sp, s6, s5
                  srl          s0, s7, t3
                  xori         a1, t3, -1006
                  srli         s2, sp, 30
                  or           a2, s7, a2
                  ori          s11, a3, -1260
                  blt          s4, s9, 1779f
                  srl          a6, s3, t6
1762:             or           t1, s4, a7
                  srli         s7, s0, 9
                  bltu         t5, t5, 1780f
                  bltu         a1, s3, 1766f
1766:             slt          zero, s3, a1
                  slti         a3, a1, -820
                  bgeu         s7, a1, 1769f
1769:             xor          s7, a3, zero
                  bne          s11, s5, 1774f
                  and          a1, a2, s1
                  xor          a2, t6, a2
                  lui          s0, 741234
1774:             bne          t5, s10, 1780f
                  sll          sp, zero, a2
                  nop
                  xor          t1, t3, s11
                  beq          s4, s3, 1779f
1779:             slli         t3, zero, 9
1780:             beq          s5, a5, 1782f
                  auipc        a3, 753263
1782:             add          gp, s1, a4
                  srl          t1, t0, s1
                  sra          t3, s7, t5
                  sub          a5, a2, tp
                  auipc        t2, 924464
                  ori          t1, s9, -1300
                  ori          ra, t5, 98
                  bne          s10, s8, 1805f
                  slti         s4, a2, -1787
                  and          sp, s3, t5
                  srli         a6, t6, 21
                  blt          a0, a5, 1809f
                  bltu         a2, a2, 1804f
                  or           s9, s4, t3
                  srl          s10, tp, s5
                  addi         s11, s8, -36
                  auipc        t4, 724273
                  srl          s1, s5, a6
                  or           s4, s5, a6
                  bge          s6, a0, 1808f
                  beq          a5, s10, 1810f
                  srai         ra, t6, 17
1804:             lui          a2, 1011713
1805:             slt          sp, tp, gp
                  addi         ra, s5, 593
                  bgeu         zero, a2, 1818f
1808:             blt          sp, s0, 1821f
1809:             srl          s9, s7, s6
1810:             srai         t1, s6, 29
                  sltu         t2, s9, s8
                  slli         a1, s4, 16
                  or           t3, s7, s1
                  bltu         s8, s3, 1827f
                  add          s3, s8, a6
                  lui          s10, 636517
                  xori         s3, s5, -572
1818:             beq          s0, s1, 1837f
                  slli         s6, s9, 17
                  sub          s4, tp, t0
1821:             srai         s10, t2, 30
                  bltu         s9, s3, 1838f
                  srl          s0, a4, s4
                  slli         s11, s2, 0
                  sll          s9, t2, ra
                  srli         s9, s0, 23
1827:             blt          s4, s11, 1841f
                  slti         t3, a0, -95
                  or           a0, s3, s1
                  nop
                  and          a0, a0, s0
                  xor          s10, s10, t2
                  bge          a0, zero, 1843f
                  xor          s7, tp, s2
                  andi         s4, s10, 1282
                  nop
1837:             bge          zero, s5, 1848f
1838:             add          s7, a1, s7
                  xori         s6, t1, -1769
                  ori          s1, a5, 1897
1841:             sub          s1, sp, ra
                  bltu         s9, s6, 1843f
1843:             auipc        sp, 159015
                  bgeu         s8, s2, 1855f
                  or           s11, s10, tp
                  ori          tp, s10, -403
                  slli         t1, t1, 2
1848:             lui          a0, 267458
                  slti         s4, s2, -45
                  bge          zero, s1, 1866f
                  slti         tp, ra, 533
                  ori          a3, sp, -1549
                  srai         a3, a5, 10
                  auipc        s0, 586061
1855:             sltiu        t1, t0, -845
                  bne          zero, s11, 1866f
                  bne          zero, a1, 1868f
                  sub          s3, a6, s2
                  andi         s5, t3, 813
                  and          t2, s8, s11
                  slt          s9, s5, s9
                  srl          s10, s0, t4
                  andi         s7, t4, 698
                  srli         t2, a1, 17
                  ori          a0, s9, -1723
1866:             sltiu        a6, a4, -206
                  nop
1868:             lui          zero, 767152
                  addi         s11, t4, -433
                  sltu         a1, gp, t3
                  ori          a3, t6, -1888
                  and          tp, s10, a5
                  blt          a0, s8, 1889f
                  sltiu        s11, ra, 1048
                  addi         s6, s11, 17
                  sub          s4, t5, s0
                  or           tp, s6, s6
                  sltu         s1, a2, a7
                  ori          s3, s2, 1334
                  xori         ra, a4, -421
                  auipc        a0, 996352
                  sll          s2, s3, s4
                  bge          a5, s7, 1896f
                  sub          t4, a5, a3
                  lui          a5, 585816
                  beq          s8, s1, 1890f
                  sub          t4, a0, s7
                  slti         s6, s8, -69
1889:             bge          a4, a1, 1890f
1890:             slli         s11, a3, 16
                  bge          s7, s5, 1907f
                  slt          zero, s4, a6
                  xor          s1, s10, s3
                  slli         s9, s5, 27
                  xor          s11, ra, t2
1896:             and          s7, a6, a7
                  add          s10, a3, s0
                  bltu         a2, s5, 1900f
                  xor          t6, s6, tp
1900:             bltu         t3, tp, 1919f
                  sltu         s0, a4, s6
                  sltiu        s8, a5, 1512
                  slli         s7, a1, 15
                  beq          s0, sp, 1912f
                  nop
                  xori         zero, t5, 868
1907:             addi         s5, a3, -1236
                  addi         t3, s1, -1935
                  or           a3, s11, t1
                  and          s1, s8, s10
                  bltu         s6, a6, 1912f
1912:             sub          a3, t6, t6
                  sltiu        t2, s11, 1654
                  beq          s4, a6, 1915f
1915:             bgeu         s8, a3, 1925f
                  lui          a1, 790564
                  addi         t0, s2, -377
                  or           s0, a0, a6
1919:             addi         a6, s8, -1636
                  bne          s11, s2, 1927f
                  sub          s0, tp, zero
                  andi         t6, a0, 1271
                  nop
                  sub          s5, a7, t1
1925:             bge          s7, t5, 1935f
                  sltu         a6, ra, a0
1927:             slli         s3, t2, 2
                  sra          s1, t6, t3
                  bge          a1, a3, 1945f
                  andi         s0, a5, -1353
                  xori         a0, a0, 243
                  slt          t0, t1, s9
                  sltiu        ra, a0, -1781
                  sra          t2, t2, a4
1935:             slt          s8, t5, a3
                  xori         s8, s0, 1851
                  nop
                  xor          a0, s3, t3
                  slti         a2, t2, 1668
                  xor          t6, a7, a4
                  srl          s4, a6, t1
                  sub          a3, tp, t2
                  auipc        s8, 225758
                  slti         s6, t3, 1083
1945:             slti         ra, ra, -2029
                  addi         a5, t1, 263
                  auipc        s6, 473210
                  sub          s10, a3, s9
                  sub          s4, t2, s5
                  bne          a0, s4, 1956f
                  add          a2, t6, s9
                  sra          s11, a3, s7
                  slt          s1, a1, s8
                  bgeu         a1, t0, 1960f
                  srli         a5, s9, 30
1956:             blt          a2, s8, 1957f
1957:             bge          a1, a2, 1972f
                  sltiu        tp, s5, -52
                  andi         s6, t0, 434
1960:             bgeu         a4, t2, 1971f
                  bge          t3, t0, 1974f
                  bgeu         t5, s8, 1973f
                  sll          s0, t3, t2
                  bge          a6, s11, 1967f
                  xori         s5, t1, -876
                  bltu         ra, t5, 1980f
1967:             srl          s7, s9, t5
                  sll          a2, t1, a3
                  xor          a2, sp, t2
                  sltiu        s8, s3, 222
1971:             bge          s1, t5, 1990f
1972:             ori          s0, s3, 1117
1973:             bgeu         a3, a4, 1989f
1974:             or           t0, sp, t0
                  lui          s7, 840486
                  blt          a5, s1, 1983f
                  and          a1, s4, a2
                  slti         t2, t3, -1174
                  xori         s6, s7, 1390
1980:             srli         a0, s11, 30
                  slti         t6, tp, -1742
                  slli         sp, a4, 18
1983:             andi         tp, a4, -509
                  auipc        a0, 57474
                  bge          t1, a0, 2001f
                  beq          a4, sp, 1994f
                  sltiu        s6, t1, 982
                  ori          s4, a7, -1299
1989:             sltu         a3, s0, sp
1990:             sra          s4, a0, s3
                  blt          a2, s4, 1998f
                  bne          s8, s5, 2008f
                  srai         s1, a1, 4
1994:             srai         s5, a6, 27
                  slli         s9, s7, 8
                  nop
                  bne          ra, s6, 2010f
1998:             or           s5, ra, s2
                  bne          a7, s1, 2010f
                  srl          s0, a5, sp
2001:             andi         s1, s11, -1530
                  slti         t2, s6, -71
                  beq          a2, s0, 2017f
                  slt          s3, s0, a6
                  slti         a1, zero, -1024
                  add          ra, t0, s8
                  xori         t4, s8, -1866
2008:             slt          s10, ra, sp
                  slt          s1, a1, s6
2010:             bgeu         a0, a5, 2017f
                  sltu         zero, s9, a3
                  sll          s0, s11, a1
                  slli         s5, a1, 23
                  beq          s9, a0, 2017f
                  nop
                  sll          s8, s3, s3
2017:             bltu         s3, t1, 2036f
                  slt          s2, a7, a4
                  lui          t1, 688408
                  slti         s2, s0, 1515
                  nop
                  auipc        ra, 757468
                  xor          a3, a0, s2
                  xori         a0, s9, 1208
                  sltiu        t4, s0, -1796
                  lui          t1, 285984
                  sra          a1, s1, a7
                  bge          a4, a5, 2038f
                  andi         s4, s1, -399
                  add          s1, t3, s0
                  xori         s9, a1, -334
                  slli         s7, s3, 29
                  slli         s3, a1, 27
                  andi         ra, s0, 940
                  sltu         a0, a2, s4
2036:             sll          a3, sp, t3
                  beq          t3, a2, 2053f
2038:             sub          t3, s0, s6
                  beq          t5, zero, 2041f
                  sll          zero, s3, s3
2041:             sltu         t1, a3, a3
                  beq          s0, s9, 2043f
2043:             lui          gp, 281290
                  auipc        ra, 957529
                  srli         a3, s11, 19
                  andi         s2, t2, 1559
                  slli         t1, a0, 23
                  srli         a3, a3, 11
                  addi         t6, s4, -440
                  and          s1, sp, s8
                  slti         a2, t0, 1898
                  add          zero, s5, t5
2053:             xor          s9, s11, s10
                  sltiu        t1, gp, -1771
                  srli         t6, a3, 28
                  xor          a3, s0, t0
                  bge          a5, s9, 2067f
                  and          zero, t1, t6
                  sll          s0, s0, s2
                  auipc        s8, 445569
                  ori          a2, s4, 849
                  auipc        t6, 806081
                  srai         s10, t1, 17
                  xori         a0, a1, -508
                  bltu         a6, tp, 2075f
                  srai         s3, a6, 27
2067:             srli         t0, s8, 29
                  xori         s10, s8, 488
                  srli         s2, gp, 18
                  bne          s2, a2, 2086f
                  srai         t4, s4, 27
                  sra          s3, s1, zero
                  bgeu         s11, a1, 2088f
                  slt          s5, a2, t5
2075:             bge          a7, s5, 2076f
2076:             bge          s2, sp, 2092f
                  nop
                  or           ra, zero, t0
                  srl          s3, sp, t5
                  srai         s7, s4, 13
                  srai         s8, s3, 1
                  blt          s2, s4, 2098f
                  bne          s10, a2, 2084f
2084:             sll          zero, ra, s0
                  sra          a2, s5, s9
2086:             nop
                  and          s6, t2, t5
2088:             sub          s3, gp, s9
                  sltu         s4, t5, s9
                  slli         a3, t2, 4
                  slli         s9, s10, 1
2092:             ori          ra, a3, 781
                  and          s7, a4, s1
                  beq          s2, s1, 2105f
                  srai         a0, s9, 24
                  sub          sp, s4, a4
                  bge          tp, t3, 2103f
2098:             srai         zero, s6, 18
                  blt          s0, tp, 2103f
                  slti         s10, a3, -1735
                  ori          a3, a4, -820
                  bltu         a0, t3, 2103f
2103:             add          s8, s10, zero
                  xori         zero, s1, -1507
2105:             sltu         s3, a3, a2
                  slti         s2, s9, -799
                  sll          s7, a7, t4
                  ori          s2, a1, 840
                  sra          gp, t3, a4
                  lui          s4, 860949
                  srl          s0, s8, ra
                  andi         s2, zero, 1201
                  nop
                  srl          a0, a5, s0
                  srl          s6, zero, a0
                  sltiu        s9, s9, 464
                  sra          a2, a6, a6
                  beq          gp, s8, 2134f
                  blt          s3, sp, 2138f
                  sub          s1, t5, s4
                  add          a1, s1, s10
                  xori         t6, a2, -764
                  slli         a0, t3, 2
                  blt          t3, s3, 2137f
                  nop
                  ori          sp, s4, -1146
                  sltiu        s3, s0, 1290
                  srai         t2, s3, 8
                  sltu         a3, ra, s6
                  or           s5, a2, sp
                  nop
                  slli         t6, tp, 26
                  slti         s3, a1, -85
2134:             sltu         s7, s4, s1
                  or           t1, s1, a3
                  srai         s7, a7, 27
2137:             sltiu        zero, s6, 14
2138:             addi         s0, t0, -952
                  ori          s9, a5, -967
                  sltiu        a5, sp, 1975
                  srli         s1, sp, 2
                  slti         s10, t0, -499
                  or           s6, t5, s1
                  or           tp, a7, ra
                  bge          s3, s0, 2151f
                  sra          t4, s9, t2
                  bltu         zero, a3, 2158f
                  ori          ra, s8, -140
                  lui          a2, 663756
                  xor          zero, ra, sp
2151:             xori         a5, sp, 1583
                  sltiu        tp, s7, 1279
                  addi         t3, s9, 401
                  sra          t2, t5, s9
                  sltu         gp, a0, s7
                  addi         s11, t4, -1044
                  bgeu         s10, s11, 2172f
2158:             auipc        sp, 780313
                  addi         t2, s10, -883
                  add          s2, s3, s3
                  add          tp, s7, s7
                  blt          tp, a3, 2173f
                  lui          s1, 365412
                  andi         a2, ra, 296
                  addi         s7, t1, 2024
                  slti         a6, ra, 897
                  nop
                  srli         s4, a2, 25
                  sub          s10, t5, gp
                  sltu         s5, s2, s4
                  nop
2172:             or           s8, a5, ra
2173:             and          s1, s5, s7
                  sub          zero, s11, t1
                  or           s1, t5, t2
                  sltu         t6, ra, a7
                  sll          a6, sp, a4
                  sltiu        sp, a4, -2015
                  sll          s0, t5, t6
                  xor          tp, tp, s7
                  ori          gp, t2, 50
                  srl          tp, t6, sp
                  sltu         gp, s9, s2
                  slti         s1, a4, -1021
                  addi         s4, t6, 1210
                  blt          t6, s9, 2196f
                  or           a1, s5, s11
                  sltiu        sp, a7, 225
                  bne          ra, t3, 2196f
                  bge          a1, s5, 2197f
                  srli         s3, s3, 2
                  sltiu        a5, a7, -1443
                  sra          t0, a6, s4
                  ori          s9, a2, 1724
                  bgeu         a0, s10, 2201f
2196:             slti         s11, s6, 891
2197:             sltu         a1, sp, a0
                  auipc        s2, 206405
                  addi         s5, t5, 208
                  bge          a0, ra, 2219f
2201:             blt          t2, zero, 2215f
                  xor          a5, ra, sp
                  xori         a0, a4, 642
                  auipc        t1, 267508
                  xori         tp, t5, -566
                  sltiu        s6, a7, -497
                  beq          t5, a2, 2223f
                  slti         zero, ra, 1363
                  slli         t0, a7, 0
                  xori         t6, t1, 159
                  sltiu        zero, a0, 665
                  bgeu         t0, a4, 2214f
                  xor          s6, t0, s0
2214:             nop
2215:             ori          t0, s5, -1609
                  xor          a3, a5, t6
                  nop
                  xori         s6, a0, -763
2219:             and          s8, s11, t4
                  ori          s8, s10, 700
                  andi         s7, s7, -1462
                  bltu         s1, s2, 2230f
2223:             sll          s6, s4, a6
                  slt          a3, gp, s6
                  srl          s3, s4, t5
                  or           a6, s3, s2
                  and          tp, s7, zero
                  bltu         s10, s7, 2244f
                  sltu         sp, t4, s8
2230:             srli         s11, a7, 28
                  beq          t1, a2, 2242f
                  nop
                  bge          a5, sp, 2249f
                  blt          t2, s7, 2247f
                  sltiu        t0, t1, 386
                  bltu         a3, s1, 2246f
                  lui          t0, 427795
                  sra          s7, s1, t2
                  add          a3, s1, a5
                  sub          s8, s6, t4
                  auipc        s8, 39801
2242:             or           s3, a2, s1
                  xori         t2, t3, -713
2244:             slli         t6, t5, 1
                  bltu         s2, a5, 2251f
2246:             blt          s1, s10, 2262f
2247:             srli         a0, t3, 19
                  bge          s3, s5, 2264f
2249:             slti         a6, s4, -190
                  sltu         gp, s0, s8
2251:             sltiu        s10, a5, -1055
                  and          t4, a0, a3
                  slli         s2, a1, 5
                  srl          a2, t5, a4
                  sll          s0, t2, gp
                  sltiu        s11, s11, 693
                  slt          s3, t4, t6
                  sltiu        s0, s1, 889
                  sll          s3, t6, s2
                  sub          a6, s9, s3
                  andi         zero, a6, 1536
2262:             lui          s5, 574552
                  nop
2264:             sll          a2, a5, s3
                  slti         a5, ra, -711
                  sltiu        a3, s9, 441
                  and          s7, gp, s5
                  bge          s8, a1, 2284f
                  auipc        s11, 891951
                  or           a0, sp, a0
                  sub          a6, s3, s6
                  srai         t2, a4, 11
                  bne          a6, s4, 2277f
                  and          s7, a2, s10
                  srai         s4, s3, 25
                  add          sp, t5, a5
2277:             bltu         tp, a6, 2290f
                  add          t2, a5, a1
                  bge          a3, a0, 2298f
                  ori          sp, a2, -114
                  or           s3, s0, a4
                  and          t1, t6, s8
                  sra          a1, t0, a6
2284:             srai         a3, a7, 1
                  sltiu        zero, ra, 1955
                  srl          a3, t5, s7
                  slt          t4, t6, s9
                  la           a6, sub_1
                  auipc        s8, 309638
                  or           sp, s9, t4
                  addi         a6, a6, 199
                  sltu         ra, t2, s2
                  slt          a1, s2, t1
main_j1:          jalr         s10, a6, -198 #jump main -> sub_1
                  sltiu        a6, sp, 1633
                  ori          ra, tp, -1117
                  slti         s2, a1, 375
                  srai         a5, s5, 13
2290:             sll          s0, s0, s0
                  sub          t2, a2, t6
                  sll          a3, zero, a2
                  bltu         s5, a1, 2294f
2294:             srli         zero, a0, 10
                  lui          t6, 591340
                  srli         s1, t6, 21
                  slti         gp, a7, 1316
2298:             slt          s5, s4, s2
                  addi         t3, a5, -1772
                  slti         t1, s11, -725
                  bgeu         s7, a2, 2302f
2302:             bge          s0, a0, 2303f
2303:             bgeu         a6, s6, 2314f
                  add          t3, t0, t3
                  bltu         a4, t6, 2306f
2306:             xor          s5, gp, a7
                  srli         s8, a7, 5
                  add          s0, s6, t5
                  and          s11, s9, s3
                  sub          s5, s3, ra
                  slti         gp, t6, 328
                  bltu         s10, a3, 2322f
                  beq          a1, s10, 2316f
2314:             bgeu         t6, s0, 2324f
                  xor          s0, s8, t1
2316:             bne          a3, s2, 2323f
                  ori          a0, tp, -1746
                  add          s11, s5, s2
                  sra          a6, a4, t4
                  auipc        s3, 674395
                  slt          s5, t3, s6
2322:             srli         sp, tp, 5
2323:             nop
2324:             bgeu         s1, a3, 2337f
                  addi         s2, a3, 269
                  blt          a3, s3, 2333f
                  sll          a0, tp, t1
                  xor          s5, t2, s4
                  xori         t6, s4, -1345
                  bge          s9, t3, 2343f
                  bge          gp, a6, 2347f
                  lui          zero, 684789
2333:             srai         s1, zero, 17
                  sltiu        a6, a0, 725
                  and          s10, s7, s7
                  addi         t4, s5, 604
2337:             slti         a2, a5, -1918
                  bgeu         s4, s2, 2349f
                  sll          s10, s3, a0
                  beq          s6, s3, 2356f
                  beq          a5, t5, 2355f
                  sll          s4, sp, sp
2343:             srl          zero, s8, s9
                  slli         s3, s4, 18
                  ori          s9, t0, 1971
                  slli         t0, t3, 30
2347:             and          a6, s6, s0
                  xor          s7, s11, s5
2349:             bne          s10, s1, 2355f
                  lui          gp, 60338
                  lui          a3, 440335
                  bge          t2, s10, 2368f
                  nop
                  ori          s8, a4, 415
2355:             bltu         a1, s9, 2358f
2356:             addi         s10, s8, 623
                  bge          s2, t4, 2373f
2358:             addi         s8, gp, -282
                  slti         s7, t1, 1344
                  srl          a0, gp, a5
                  srli         s5, tp, 8
                  andi         a3, sp, -201
                  or           s6, t1, sp
                  srl          sp, a1, s1
                  blt          a4, s7, 2376f
                  auipc        s6, 614181
                  nop
2368:             andi         t3, t6, -1090
                  bgeu         sp, t3, 2379f
                  beq          a0, t4, 2389f
                  lui          t1, 747522
                  add          s11, s4, s6
2373:             bne          s10, a1, 2383f
                  sll          s11, t3, s10
                  bgeu         tp, a0, 2383f
2376:             sub          a3, s2, a0
                  bne          ra, gp, 2378f
2378:             slt          a3, t3, a3
2379:             xori         t6, s6, -415
                  ori          a3, t5, 485
                  slti         t3, a2, -1801
                  srl          s9, zero, s5
2383:             sltu         s9, s9, t5
                  sltu         s6, s1, a0
                  sltiu        s11, s9, 780
                  xor          tp, s11, s4
                  slli         a6, a5, 26
                  xor          s10, a2, a5
2389:             srl          a0, a5, s1
                  or           t1, ra, t5
                  srl          tp, s5, s2
                  srai         t3, a2, 14
                  or           t0, s0, s10
                  srai         t2, s11, 7
                  slli         s11, t5, 27
                  and          zero, tp, s0
                  bge          s2, tp, 2398f
2398:             srli         s5, s9, 13
                  nop
                  and          t2, a4, a4
                  slt          s9, ra, t4
                  bltu         a2, t1, 2413f
                  bgeu         zero, sp, 2404f
2404:             srl          s4, t4, a0
                  or           a3, a6, t5
                  sll          s7, s5, s6
                  addi         s1, s7, 1995
                  ori          sp, s4, 1647
                  sltiu        a6, s2, -1861
                  bgeu         a4, s0, 2426f
                  bgeu         s2, s6, 2426f
                  bne          sp, s7, 2413f
2413:             ori          a5, t3, -519
                  slt          s9, a7, s9
                  sltiu        zero, zero, 1454
                  sll          zero, s10, s11
                  xor          s11, a4, a5
                  and          s11, s2, s2
                  xori         a2, t1, -1150
                  srl          s11, s10, a3
                  addi         a3, s0, 714
                  bge          tp, ra, 2441f
                  sra          ra, tp, s9
                  xor          zero, s5, s10
                  bgeu         a1, ra, 2427f
2426:             beq          s2, s0, 2442f
2427:             and          s4, s4, a5
                  auipc        s8, 506701
                  lui          t1, 1021042
                  srai         s5, s8, 4
                  nop
                  slt          s6, s9, s7
                  slli         s3, t4, 0
                  bltu         s11, a5, 2438f
                  bltu         t2, ra, 2441f
                  srai         s4, a2, 1
                  blt          s3, sp, 2448f
2438:             sll          s5, a0, t0
                  srai         s5, sp, 19
                  srli         s2, s10, 6
2441:             or           t1, a6, a3
2442:             add          a0, t5, t0
                  add          s6, t5, a2
                  sltiu        a0, s5, -1218
                  sltiu        a1, s1, 1831
                  bne          s2, t0, 2457f
                  sra          t0, t1, zero
2448:             bgeu         s5, a0, 2449f
2449:             beq          gp, s5, 2452f
                  sltiu        s9, s11, -241
                  auipc        a3, 5303
2452:             nop
                  andi         ra, ra, 409
                  addi         gp, a1, -1931
                  nop
                  beq          ra, t0, 2463f
2457:             add          s8, s5, gp
                  auipc        ra, 254257
                  auipc        s10, 454737
                  bltu         a3, ra, 2473f
                  andi         ra, t1, 1251
                  bgeu         t6, s10, 2468f
2463:             xor          s10, s7, a1
                  sltiu        zero, a1, 1927
                  and          zero, a2, s8
                  ori          a5, a0, 1585
                  sltiu        t2, a2, -1379
2468:             bge          s6, a5, 2484f
                  add          s3, ra, t1
                  sltu         t6, s0, a0
                  ori          t2, s2, 1843
                  bgeu         t6, t0, 2473f
2473:             lui          a0, 561824
                  srl          zero, t5, s8
                  bge          a2, t1, 2491f
                  bltu         t1, a6, 2477f
2477:             bne          a5, t5, 2493f
                  sltiu        s2, s3, 679
                  add          s7, t3, a1
                  sub          s3, s11, tp
                  xori         t3, s7, -670
                  addi         s8, s10, 993
                  addi         t3, s3, 1998
                  la           s8, region_1+1289 #start riscv_load_store_rand_instr_stream_8
                  or           s1, s8, t0
                  slti         t0, a5, 1210
                  srli         s2, s0, 7
                  andi         a1, s0, 431
                  lw           a2, -217(s8)
                  sub          a3, t3, ra
                  addi         gp, s3, -1432
                  lb           tp, 1(s8)
                  sll          gp, s2, t1
                  sb           t0, -117(s8)
                  sltiu        t4, gp, -366
                  sb           t4, 95(s8)
                  sra          s4, t5, s7
                  addi         zero, a6, -1434
                  sb           ra, 253(s8)
                  lbu          t3, 230(s8)
                  nop
                  srli         s6, a5, 6
                  lb           sp, -125(s8)
                  slti         ra, a3, 263
                  lbu          s3, 32(s8)
                  sh           a6, -121(s8)
                  sltu         a2, sp, t3
                  srai         t3, t5, 25
                  srl          a0, s1, a4
                  srl          s7, s11, a3
                  srli         s5, s6, 30
                  sb           t6, 247(s8)
                  nop
                  lbu          a6, 224(s8) #end riscv_load_store_rand_instr_stream_8
2484:             beq          s8, s10, 2497f
                  bgeu         a2, a0, 2501f
                  slti         ra, s8, -1736
                  sltu         ra, gp, s1
                  slt          a0, s1, sp
                  nop
                  sltu         s8, a5, zero
2491:             blt          s5, a6, 2492f
2492:             bgeu         s8, t1, 2500f
2493:             bltu         t4, t0, 2503f
                  beq          s11, s2, 2508f
                  xor          s2, a6, t4
                  slli         t0, a1, 2
2497:             bne          a0, s3, 2516f
                  andi         sp, gp, -165
                  add          a6, a2, s6
2500:             slti         t6, a3, -1682
2501:             xori         s1, t6, -1425
                  sltu         s2, a3, gp
2503:             andi         ra, tp, -24
                  bltu         a4, a7, 2523f
                  xor          t6, a6, a3
                  bgeu         s1, a0, 2516f
                  andi         ra, t6, 242
2508:             lui          s7, 894786
                  srai         s10, s11, 21
                  andi         s0, ra, 1782
                  beq          s8, s8, 2522f
                  bltu         s8, a3, 2516f
                  slt          s8, s11, sp
                  nop
                  and          s8, zero, t1
2516:             bne          ra, s1, 2532f
                  bge          t5, s5, 2519f
                  ori          t1, s5, -387
2519:             srli         s4, s3, 17
                  andi         s3, a1, 1294
                  ori          s2, s9, 1064
2522:             nop
2523:             xor          sp, tp, a2
                  xor          a0, t5, a0
                  sll          s7, s2, s10
                  xori         s1, a2, -697
                  auipc        t4, 933907
                  sltiu        s7, t1, -123
                  ori          t4, t4, -1403
                  andi         s6, s11, -988
                  slt          a6, a1, t5
2532:             sll          s7, s0, s6
                  slt          a6, s0, sp
                  or           t2, s5, a7
                  bgeu         t6, s6, 2550f
                  nop
                  ori          s11, tp, 1675
                  srl          s8, t6, a7
                  sll          t1, s9, a6
                  or           a5, tp, s10
                  bltu         s6, ra, 2557f
                  andi         s6, zero, -1903
                  xor          s1, zero, t2
                  srai         sp, s7, 14
                  srli         a5, t5, 18
                  srai         s1, s9, 19
                  srai         t2, t3, 6
                  sltiu        s11, sp, -474
                  srl          zero, s6, a0
2550:             ori          a1, s8, -1620
                  or           s2, s0, s6
                  sltu         sp, s7, s10
                  bge          a3, t0, 2559f
                  slt          zero, a6, sp
                  xori         t2, s5, -574
                  la           a2, region_1+1605 #start riscv_load_store_rand_instr_stream_7
                  ori          s3, gp, -1429
                  sh           sp, -55(a2)
                  lbu          s0, 13(a2)
                  lbu          a3, -2(a2)
                  lb           s0, -36(a2)
                  srai         a6, a5, 6
                  addi         t3, s10, -575
                  nop
                  sb           s4, 25(a2)
                  slti         s5, s8, -335
                  andi         s10, s2, -1206
                  and          t4, a0, s8
                  sb           tp, 28(a2)
                  sltiu        s7, s10, -928
                  lh           s6, 15(a2)
                  sra          s3, s8, s11
                  sltu         t6, a0, t4
                  sltu         s9, a3, s7
                  add          sp, sp, s3
                  sb           s3, -2(a2)
                  nop
                  srl          t0, s4, a7
                  sltiu        s2, gp, 1679
                  lui          ra, 90679
                  sll          tp, t1, s8
                  and          s10, s5, s9
                  lw           s9, -33(a2)
                  lb           a0, 52(a2)
                  slti         a0, t6, -1247
                  lb           gp, -12(a2)
                  sltiu        zero, a4, 1521
                  lhu          s3, -3(a2)
                  xor          t3, t5, s8
                  slli         s5, t1, 26
                  slli         s0, t4, 22
                  slli         t0, a1, 11
                  sltu         a0, a1, s2
                  lbu          t4, -2(a2)
                  nop
                  sll          a5, t2, s2
                  slti         s11, t1, 344
                  lb           s6, -54(a2)
                  lw           zero, -61(a2) #end riscv_load_store_rand_instr_stream_7
                  bgeu         s11, s9, 2566f
2557:             beq          s7, t4, 2564f
                  blt          a0, s8, 2572f
2559:             lui          s7, 251664
                  ori          s3, s2, -1608
                  blt          t1, t0, 2564f
                  bgeu         s3, s2, 2572f
                  nop
2564:             and          s3, t1, a6
                  bne          s7, s0, 2580f
2566:             sra          t2, zero, a5
                  sub          t3, s7, s2
                  xori         s1, t0, -90
                  sra          a0, tp, a5
                  andi         a5, t5, -1114
                  slli         t0, a4, 25
2572:             bge          t4, tp, 2585f
                  srl          a5, ra, s9
                  and          t4, t1, s10
                  auipc        gp, 73046
                  xori         s10, s5, 1513
                  bne          a5, s8, 2593f
                  bne          a4, a7, 2594f
                  or           a5, gp, t0
2580:             sltu         sp, a0, s5
                  ori          s3, t5, -1249
                  slt          s9, tp, s8
                  and          s11, t0, a4
                  srai         tp, sp, 8
2585:             bgeu         t6, a4, 2596f
                  and          t3, s3, t0
                  slti         a0, a3, 1633
                  srli         s6, t4, 16
                  andi         s2, a0, 324
                  srai         s1, s9, 7
                  blt          s1, tp, 2604f
                  auipc        t3, 862945
2593:             srli         t1, s4, 23
2594:             srl          t3, a6, gp
                  xori         t0, s4, -1200
2596:             sub          ra, a5, s7
                  or           gp, s3, s4
                  blt          a0, t0, 2617f
                  slti         s4, s9, 1147
                  sltu         s11, t6, sp
                  slli         t4, sp, 7
                  or           sp, a2, tp
                  srli         s10, a4, 15
2604:             srai         s9, t4, 0
                  sub          s1, t6, tp
                  beq          s6, a5, 2614f
                  and          s11, a2, s10
                  xor          s0, t6, t5
                  addi         s5, a6, -1386
                  srai         s0, t1, 9
                  sltiu        s9, t6, 1983
                  bltu         a5, a2, 2616f
                  slli         t0, t3, 13
2614:             auipc        s9, 436941
                  add          s9, t0, s7
2616:             xor          a3, s4, s9
2617:             bne          t3, t4, 2619f
                  xori         s7, a6, -553
2619:             sltu         s4, s7, s11
                  sra          gp, a4, ra
                  srai         s11, s8, 12
                  nop
                  bge          a7, tp, 2629f
                  xor          sp, s2, s3
                  bgeu         s4, gp, 2626f
2626:             xori         ra, s4, 966
                  sltu         a3, t0, a3
                  bge          s0, a1, 2639f
2629:             addi         s0, t4, 569
                  sra          sp, t3, zero
                  and          t6, tp, s11
                  bne          t6, zero, 2643f
                  or           zero, a6, a0
                  srl          s3, sp, s1
                  slt          s11, s6, t3
                  beq          s7, a4, 2646f
                  xori         s10, zero, 249
                  lui          s5, 1046701
2639:             sub          s4, t6, t6
                  auipc        t4, 875044
                  sra          s5, sp, a5
                  srli         gp, t4, 27
2643:             add          t0, s2, s8
                  slli         t6, ra, 2
                  add          s1, s8, sp
2646:             andi         a3, sp, 1697
                  srai         a5, a3, 3
                  add          a5, a4, a4
                  andi         ra, s10, -1629
                  andi         t3, a2, -1133
                  xori         zero, s1, 1746
                  sltu         t3, s11, t4
                  slli         t2, zero, 12
                  sra          s10, t2, a3
                  auipc        s2, 871422
                  add          s8, s1, s6
                  srai         s9, a5, 11
                  srai         a0, s1, 26
                  lui          t0, 902513
                  add          a0, t3, a3
                  slt          s9, a1, t4
                  sltiu        s9, s8, 888
                  blt          s6, t6, 2679f
                  or           t4, s7, s0
                  lui          s4, 824339
                  add          s3, t5, zero
                  xor          a5, t4, tp
                  bge          s9, s2, 2687f
                  sra          sp, s10, a7
                  blt          a5, a2, 2671f
2671:             xori         a5, tp, -1232
                  sltu         sp, a2, a2
                  or           gp, s7, a2
                  nop
                  sub          s2, a6, a5
                  or           a3, a3, t0
                  or           a3, gp, gp
                  nop
2679:             slt          s0, s5, a0
                  srli         t4, t0, 27
                  auipc        a0, 525131
                  sub          s6, t0, t5
                  srl          t6, s4, ra
                  srl          s9, s9, s0
                  lui          t3, 475798
                  srli         t6, s4, 29
2687:             or           s10, sp, s2
                  bne          s9, s0, 2695f
                  or           s4, a1, s8
                  xor          s6, ra, a3
                  srli         t0, zero, 20
                  sltiu        sp, t1, -1970
                  auipc        s11, 842386
                  xor          s9, tp, t3
2695:             slli         a1, a1, 19
                  xori         t0, s7, -1189
                  addi         s7, s0, -1123
                  and          a1, a3, s3
                  slti         t1, t3, -1178
                  lui          a2, 889030
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           blt          a2, s6, sub_10_stack_p
                  slti         t6, t6, -110
                  sll          t0, a7, s11
sub_10_stack_p:   addi         a4, a4, -8
                  sw           s10, 4(a4)
                  xori         s4, s0, 180
                  addi         t2, s10, -392
                  la           sp, region_0+617 #start riscv_load_store_rand_instr_stream_0
                  lb           t6, 102(sp)
                  sb           a6, 1363(sp)
                  lw           s6, -217(sp)
                  sw           s5, 1159(sp)
                  xori         s0, s4, -1024
                  nop
                  sb           t4, 1078(sp)
                  ori          tp, s5, 1087
                  lb           s11, 1148(sp)
                  nop
                  lb           a5, -253(sp)
                  sra          t4, a2, t0
                  xor          t4, s3, t3
                  sb           a4, -612(sp)
                  lb           t2, -532(sp)
                  sw           s7, 127(sp)
                  lb           s10, 546(sp)
                  lui          t0, 753866
                  lhu          a1, 1133(sp)
                  lbu          s3, -72(sp)
                  sh           a2, -51(sp)
                  lhu          gp, -407(sp)
                  sb           tp, -406(sp)
                  srl          s3, s1, s7
                  lbu          a0, 284(sp)
                  lbu          s5, 242(sp)
                  sb           a2, 111(sp)
                  sb           t4, 1312(sp)
                  slli         s2, t5, 19
                  lui          s7, 336165
                  lb           gp, 1232(sp)
                  sub          s0, a3, ra
                  lb           s7, 574(sp)
                  lui          zero, 961500
                  sb           s3, 156(sp)
                  lh           gp, 905(sp)
                  sll          s9, t5, sp
                  srl          t2, t5, t6
                  add          s7, s6, a6
                  add          s0, tp, sp
                  lbu          s6, -440(sp)
                  sb           ra, 1148(sp)
                  ori          s4, t0, -2042
                  sltu         gp, tp, s2
                  sltu         s3, s3, gp
                  sb           s11, -98(sp)
                  lb           s10, 361(sp)
                  sra          a3, s10, t2
                  lbu          a2, 516(sp)
                  lbu          a5, 1060(sp) #end riscv_load_store_rand_instr_stream_0
                  sra          s4, t0, t5
                  sll          s0, a5, s9
                  bltu         gp, t5, 20f
                  sll          s2, s5, a2
                  bne          a6, t3, 17f
                  slti         s2, tp, -1872
                  slt          s0, t0, t1
                  sll          a6, a5, t0
                  sltu         s3, a5, gp
                  srli         s1, s3, 26
                  beq          sp, t3, 13f
                  andi         sp, zero, 752
                  and          a6, s2, s5
13:               nop
                  srli         a2, t0, 1
                  sll          zero, t1, a4
                  xori         a5, s10, 1422
17:               slli         sp, t1, 28
                  lui          zero, 107204
                  ori          s2, a4, -2027
20:               beq          t4, a4, 26f
                  sltiu        t3, gp, -621
                  srai         s10, s4, 0
                  slti         ra, tp, -1951
                  ori          ra, a0, 746
                  addi         t3, s10, 1478
26:               sltu         t6, a5, ra
                  xori         t4, s9, -1998
                  bgeu         tp, t1, 38f
                  ori          t6, s4, -992
                  sltu         ra, a4, t6
                  slli         a5, t5, 5
                  or           s0, s0, t1
                  bge          a2, s6, 45f
                  slli         t1, zero, 6
                  bge          a4, ra, 46f
                  add          a3, s5, a3
                  addi         a0, s5, 443
38:               andi         s7, t3, 1905
                  and          tp, a5, t4
                  bge          s4, s2, 48f
                  bge          gp, s4, 60f
                  ori          t1, s4, 1033
                  srli         s2, s1, 16
                  xori         a2, a5, 922
45:               slli         s7, s7, 0
46:               slt          t0, a4, t5
                  or           t2, a5, t4
48:               blt          s3, t4, 54f
                  nop
                  addi         ra, sp, 790
                  srl          s1, s1, ra
                  blt          s9, a1, 69f
                  srl          t0, a3, s9
54:               srl          t4, a1, a7
                  sll          t6, s9, s3
                  andi         t0, s6, 1345
                  sll          s10, s8, a7
                  srl          s5, sp, a2
                  andi         s0, s11, -59
60:               slli         t1, a2, 11
                  bge          s3, s8, 63f
                  and          s3, t2, t0
63:               bgeu         t1, a4, 76f
                  nop
                  auipc        a2, 725154
                  sub          a2, a1, s8
                  or           t3, t2, s9
                  sltu         s9, ra, s4
69:               sltiu        zero, t4, -1353
                  slli         s9, zero, 1
                  sltu         t3, t5, a5
                  sll          a2, s10, zero
                  ori          tp, t5, 740
                  sll          a5, s4, a2
                  sub          s0, s1, a6
76:               slt          t0, s0, s9
                  nop
                  and          s0, s7, t0
                  andi         sp, t3, -942
                  sub          a0, sp, ra
                  or           s3, a7, s11
                  sltu         tp, gp, zero
                  srl          a3, s0, s6
                  sll          sp, s7, ra
                  srai         a5, s9, 2
                  slti         s7, gp, -235
                  bne          s4, a1, 94f
                  add          a1, a2, a2
                  addi         gp, s6, -1041
                  sltiu        tp, s10, 677
                  or           s10, sp, tp
                  bgeu         a3, s9, 112f
                  srli         tp, a4, 16
94:               sll          ra, s11, zero
                  xor          s9, s10, s0
                  beq          s2, s11, 114f
                  slli         s8, s10, 21
                  beq          zero, t0, 111f
                  nop
                  ori          s6, s10, -771
                  srl          t2, s2, s2
                  blt          s8, s11, 122f
                  lui          t3, 897798
                  xor          s8, a0, s1
                  bgeu         t0, a2, 117f
                  or           t0, a6, ra
                  xori         zero, t1, 1845
                  beq          s10, s5, 117f
                  and          ra, s8, s5
                  slti         s8, zero, -1901
111:              bge          t4, s9, 115f
112:              xori         tp, s1, -1424
                  or           a6, a1, a6
114:              slli         tp, a2, 27
115:              sub          a2, s0, t4
                  sltiu        a5, t1, -1229
117:              beq          s8, a2, 133f
                  bltu         s8, t5, 138f
                  bge          s11, t4, 122f
                  slt          t0, s7, gp
                  ori          s6, s9, -103
122:              lui          s11, 338877
                  sra          zero, a0, a5
                  auipc        s3, 596826
                  bne          s6, t5, 126f
126:              sub          a1, t1, t0
                  bgeu         t5, tp, 138f
                  blt          s0, a6, 133f
                  bge          ra, a4, 148f
                  xori         s2, t6, -699
                  andi         s1, t0, -381
                  sltiu        a5, ra, 1324
133:              srli         s2, zero, 27
                  and          t3, s4, ra
                  lui          s5, 1005660
                  sub          t1, t4, s6
                  slli         s0, s7, 20
138:              blt          a1, t5, 158f
                  srl          a5, s10, t0
                  bgeu         t5, s2, 149f
                  srl          t0, s0, a1
                  sra          s5, ra, s11
                  and          s9, s5, a7
                  bgeu         s1, sp, 162f
                  bltu         a2, t5, 152f
                  srai         t0, s0, 8
                  slli         s11, a1, 12
148:              bltu         t3, t6, 158f
149:              xor          t6, t2, a5
                  add          s5, a5, t3
                  xor          a3, t2, a3
152:              andi         a0, s0, -1478
                  blt          s0, a4, 162f
                  addi         a1, s0, -27
                  xor          s6, a2, t1
                  add          t0, a0, s7
                  addi         s8, tp, -1359
158:              blt          s3, sp, 177f
                  auipc        a1, 321027
                  ori          s9, t5, -158
                  andi         s1, a4, -1366
162:              xor          s9, sp, s1
                  slti         sp, a0, -550
                  slt          s6, s7, tp
                  sltu         t6, s3, ra
                  srl          gp, s10, s5
                  or           a5, a3, s5
                  sub          a6, t1, sp
                  sll          s9, a1, a6
                  sub          ra, s3, s7
                  add          t4, a5, a3
                  or           t1, s11, gp
                  sll          s2, a5, a7
                  xori         a0, t3, -810
                  sll          sp, t1, t1
                  ori          s5, s10, 519
177:              srai         ra, s1, 11
                  blt          s11, ra, 180f
                  nop
180:              sll          s0, a6, zero
                  slt          s7, s10, t3
                  xor          ra, t6, t3
                  bltu         ra, s4, 187f
                  sltiu        s1, t5, -777
                  blt          t3, a4, 187f
                  addi         s8, a2, -1276
187:              sll          s8, s8, t4
                  lui          t2, 157818
                  srai         a6, t3, 25
                  srai         gp, s4, 31
                  srai         t0, t5, 22
                  lw           s10, 4(a4)
                  nop
                  sra          s4, ra, a7
                  addi         a4, a4, 8
                  and          zero, a2, t5
                  and          s7, a3, a3
                  xori         s7, s6, -28
                  slli         t0, s3, 15
258:              addi x13, x26, 0
258:              jalr x13, x13, 0
sub_4:            lui          sp, 247226
                  addi         a4, a4, -16
                  sw           s10, 4(a4)
                  srl          s6, s0, s6
                  add          a6, s6, gp
                  andi         s2, a0, 1051
                  and          s6, t0, a6
                  sub          a6, a0, s8
                  or           sp, sp, s5
                  sltiu        t3, s5, 129
                  slli         t2, t6, 15
                  srl          s6, a3, s7
                  or           tp, t2, a7
                  bgeu         a6, t2, 10f
                  xori         s8, a3, 1269
                  or           a6, a4, t5
10:               sub          s5, s10, s0
                  srli         t1, sp, 19
                  ori          sp, a1, -1463
                  sra          ra, s7, sp
                  lw           s10, 4(a4)
                  addi         a4, a4, 16
                  sll          s7, s10, s0
23:               addi x26, x26, 1
23:               jalr x26, x26, 0
sub_8:            addi         a4, a4, -60
                  slt          ra, t4, t1
                  lui          s9, 839044
                  nop
                  sw           s10, 4(a4)
                  addi         s11, t0, 1268
                  srli         s9, tp, 18
                  la           s0, sub_9
                  sra          t3, t6, s2
                  sub          s3, s8, gp
                  srai         s6, s1, 3
                  addi         s0, s0, -838
                  and          tp, t2, a5
                  slli         t2, t0, 6
                  or           s6, a4, a0
                  slti         a5, s1, -314
sub_8_j13:        jalr         s10, s0, 839 #jump sub_8 -> sub_9
                  nop
                  sltu         gp, s9, a5
                  beq          sp, a4, 19f
                  sltu         ra, s3, tp
                  slli         s6, s3, 12
                  bgeu         s2, a5, 14f
                  blt          a3, a0, 21f
                  sll          ra, a1, s10
                  srai         s9, t4, 21
                  bltu         t5, s10, 19f
                  sltu         a2, s0, s7
                  xori         t0, s2, -238
                  or           s3, gp, t4
                  nop
14:               bltu         t0, ra, 17f
                  addi         zero, a0, -77
                  slti         s6, sp, 799
17:               blt          t4, a0, 26f
                  ori          s5, s4, -1650
19:               slt          s6, a4, a5
                  blt          gp, a0, 34f
21:               sltiu        t0, t2, 289
                  srli         t4, s4, 12
                  sltu         t0, t5, s0
                  nop
                  sub          a0, zero, a0
26:               ori          s7, s7, -597
                  add          a1, t1, t1
                  sub          sp, sp, a1
                  xor          a0, t6, ra
                  sub          zero, a6, s5
                  srai         s3, gp, 6
                  srai         t2, t4, 25
                  xor          s6, a0, s4
34:               addi         s6, t5, -535
                  sub          a6, s5, s3
                  add          t6, s3, zero
                  xor          s6, a5, t3
                  lui          a0, 689289
                  nop
                  bltu         s0, s1, 48f
                  slli         zero, zero, 8
                  auipc        a1, 419344
                  sltu         t3, t2, s8
                  bge          t3, s4, 48f
                  slt          a1, s2, t2
                  auipc        a0, 220258
                  srai         t0, a4, 20
48:               add          a1, t4, a1
                  lw           s10, 4(a4)
                  or           t6, a2, s7
                  addi         a4, a4, 60
                  xor          tp, s6, t0
                  sltiu        gp, s9, 1036
71:               addi x10, x26, 0
71:               jalr x10, x10, 0
sub_5:            sra          t1, a3, s10
                  and          s0, a0, ra
                  xori         t2, a4, 647
                  addi         a4, a4, -36
                  sltu         s2, s3, sp
                  and          s1, s3, a2
                  sw           s10, 4(a4)
                  auipc        s6, 100468
                  la           s3, region_0+1743 #start riscv_load_store_rand_instr_stream_4
                  lb           s11, 184(s3)
                  sltiu        s1, t6, 763
                  sltiu        t0, s2, 1830
                  sh           s4, 197(s3)
                  lbu          s5, -243(s3)
                  lhu          t6, 147(s3)
                  lbu          s2, -107(s3)
                  sh           s11, -105(s3)
                  auipc        a5, 817288
                  lbu          s1, 236(s3)
                  lbu          s0, 47(s3)
                  lbu          t6, -228(s3)
                  lbu          a5, -66(s3)
                  nop
                  lb           s7, 78(s3)
                  lb           t1, 238(s3)
                  lbu          s6, 218(s3)
                  lb           a1, -146(s3)
                  sb           sp, -65(s3)
                  sh           a2, -123(s3)
                  lui          s8, 1018902
                  and          a2, s1, s1
                  lbu          s6, -212(s3)
                  sw           tp, 185(s3)
                  sra          s7, a6, gp
                  sltu         sp, a0, s1
                  addi         s8, t1, -1298
                  srl          t2, s8, t5
                  lw           t4, -91(s3)
                  ori          s0, t5, 124
                  sb           s11, 26(s3)
                  lh           s10, 201(s3)
                  sb           s9, -248(s3)
                  lb           sp, 88(s3)
                  lw           s5, 161(s3)
                  lb           t0, -2(s3)
                  lb           sp, -164(s3)
                  sb           s2, 140(s3)
                  sb           s8, 176(s3)
                  or           t0, t1, s0
                  lb           t4, -180(s3)
                  lbu          s4, -154(s3) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_1+189 #start riscv_load_store_rand_instr_stream_3
                  or           tp, s5, s5
                  lb           s0, -66(a6)
                  lbu          s10, 227(a6)
                  sh           a0, -81(a6)
                  lb           s1, 144(a6)
                  sra          a1, a6, t5
                  sb           gp, -88(a6)
                  sltu         t2, t4, t6
                  sw           tp, 143(a6)
                  sh           s9, 213(a6)
                  slti         t0, tp, -365
                  srli         s11, sp, 27
                  lbu          a5, -93(a6)
                  sb           sp, -28(a6)
                  sltiu        t1, t0, -777
                  or           s9, a7, ra
                  or           t1, s7, a4
                  slt          a3, s5, a2
                  sb           a5, 92(a6)
                  lhu          a5, 69(a6)
                  sltu         t3, zero, s9
                  auipc        s2, 104295
                  lbu          s1, 213(a6)
                  xori         t0, a1, 655
                  sb           a7, -11(a6)
                  lb           zero, 227(a6)
                  sh           a0, 113(a6)
                  sb           t4, 128(a6)
                  lbu          sp, 56(a6)
                  sb           s7, 168(a6)
                  sb           a7, -73(a6)
                  lbu          a1, 162(a6)
                  lb           tp, -172(a6)
                  lbu          tp, 139(a6)
                  sb           t4, -80(a6)
                  sb           sp, 95(a6)
                  sb           s10, 94(a6)
                  lhu          t0, 13(a6)
                  nop
                  sb           a4, 158(a6)
                  sb           s9, 240(a6)
                  lbu          t1, 198(a6) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1697 #start riscv_load_store_rand_instr_stream_0
                  sltiu        t0, s3, 950
                  lb           ra, -28(sp)
                  lh           t0, 35(sp)
                  slti         t1, s4, -997
                  slti         s5, t0, -930
                  lbu          s8, 56(sp)
                  sb           t4, 21(sp)
                  nop
                  sub          a1, zero, s3
                  andi         a6, s8, -873
                  lb           a1, 36(sp)
                  srli         s5, s7, 13
                  andi         a3, s3, 105
                  xor          s10, s10, t1
                  add          s4, zero, a4
                  sb           t5, 58(sp)
                  srai         a0, a5, 24
                  sll          a6, a5, sp
                  slt          s8, s3, a2
                  lbu          s3, -28(sp)
                  srli         t2, s10, 24
                  xori         a0, a7, -1792
                  lb           s3, 0(sp)
                  slt          s0, s9, t3
                  sub          s0, a3, t4
                  lbu          zero, 4(sp)
                  xori         s7, a4, -1780
                  sub          t0, zero, s7
                  lb           s11, 2(sp)
                  sb           ra, 44(sp)
                  lb           a3, 18(sp)
                  ori          gp, ra, 237
                  lb           s6, -14(sp)
                  sh           s10, -5(sp)
                  sltu         s11, a0, a0
                  and          s0, s11, sp
                  lb           gp, -34(sp)
                  nop
                  sltu         a6, a1, a4
                  slti         s5, t3, 141
                  auipc        a0, 951433
                  sh           a1, 17(sp)
                  sra          s9, s3, a2
                  lbu          a0, -25(sp) #end riscv_load_store_rand_instr_stream_0
                  srl          s5, t1, a0
                  nop
                  sll          a6, s11, tp
                  sltiu        s11, a1, -665
                  slli         a6, ra, 21
                  blt          t2, s8, 22f
                  and          tp, s5, t0
                  sub          s10, s11, t6
                  sltu         s6, s5, t4
                  sll          s1, s4, s9
                  beq          a2, s1, 22f
                  slt          s11, t2, sp
                  srai         s4, a3, 18
                  srl          sp, t3, t4
                  blt          tp, a2, 22f
                  xori         gp, tp, 186
                  srai         ra, a7, 11
                  srli         sp, t0, 5
                  srai         s1, zero, 7
                  xori         s10, t3, -1593
                  andi         t2, a1, -858
                  xori         s4, s2, -1933
22:               sltu         zero, s4, sp
                  slt          t3, a1, a7
                  nop
                  sltiu        zero, s8, -853
                  ori          a1, tp, 506
                  addi         a6, t3, -707
                  xori         s11, s0, 337
                  slt          s5, sp, a4
                  sltu         t3, s6, s9
                  and          s3, s3, s2
                  ori          s6, a2, 551
                  nop
                  blt          t6, s4, 51f
                  lui          s2, 92027
                  beq          s8, s6, 41f
                  bne          t1, s10, 57f
                  blt          s4, zero, 57f
                  srli         s6, a3, 10
                  slt          ra, s5, a7
41:               and          tp, t3, t4
                  lui          s6, 312434
                  ori          s4, a2, 1221
                  addi         t1, a7, 1017
                  srai         t4, s4, 30
                  slli         t1, s2, 6
                  blt          a3, s6, 57f
                  nop
                  sltu         a1, t1, t2
                  nop
51:               bne          a3, t5, 65f
                  sub          s1, a7, t0
                  sll          zero, s4, s0
                  bltu         t5, a7, 63f
                  bltu         a4, s7, 64f
                  bge          s10, s6, 69f
57:               slli         t6, ra, 12
                  auipc        sp, 190156
                  andi         s5, s7, -566
                  bltu         zero, s4, 69f
                  sub          a1, a5, ra
                  sltu         s6, t6, s4
63:               nop
64:               sub          sp, a5, t1
65:               bge          s5, t3, 76f
                  sll          tp, s3, t1
                  nop
                  sltu         t1, s4, s8
69:               or           t0, t3, t1
                  sra          t2, s1, s11
                  sltu         s2, zero, sp
                  xori         t0, s8, -1890
                  bltu         a2, zero, 76f
                  addi         tp, a4, 1814
                  srai         gp, t5, 24
76:               sll          a2, a2, sp
                  ori          a2, a5, -160
                  addi         t0, t4, -1259
                  add          t6, t5, a3
                  srli         a3, s11, 2
                  beq          t5, a1, 87f
                  nop
                  srai         a5, a7, 28
                  ori          t6, s5, 1468
                  sll          s10, s1, s11
                  bltu         gp, t6, 101f
87:               slti         t3, t2, 922
                  bgeu         gp, tp, 99f
                  add          s9, t3, t4
                  andi         a5, a0, 1266
                  beq          sp, ra, 107f
                  slli         a0, t0, 1
                  andi         a3, s1, -1554
                  add          t0, a1, sp
                  blt          s9, a3, 106f
                  or           zero, t6, s5
                  sltu         s1, s0, s2
                  sll          t4, s7, t4
99:               nop
                  and          sp, s7, tp
101:              sll          s3, s6, t2
                  sll          s6, a3, ra
                  nop
                  slli         t1, t5, 7
                  bne          s6, a2, 124f
106:              sra          t1, t4, s11
107:              lui          s0, 526847
                  bgeu         s0, t5, 116f
                  bne          a3, zero, 118f
                  slt          a1, a3, s10
                  xori         s0, t3, -416
                  sltu         t3, sp, s8
                  nop
                  or           s7, t2, a6
                  slti         tp, s11, 203
116:              lui          t0, 228196
                  bge          a2, s7, 125f
118:              srl          a1, s5, s4
                  srli         ra, a7, 28
                  slti         a2, a1, 1163
                  sub          t6, t1, s0
                  slt          tp, t4, s0
                  slti         t0, t2, 1773
124:              srai         s4, s4, 13
125:              or           a3, a2, s0
                  auipc        t4, 276863
                  or           t4, s7, sp
                  addi         sp, s7, 854
                  srli         a5, sp, 31
                  srai         s2, gp, 12
                  srai         t2, t1, 29
                  beq          sp, a0, 142f
                  bgeu         s0, s4, 152f
                  auipc        sp, 269897
                  slli         s8, t0, 4
                  slt          s2, t3, s0
                  or           ra, a5, tp
                  xor          s9, a3, a3
                  blt          t5, zero, 150f
                  sra          s0, a7, t0
                  blt          a0, t2, 156f
142:              lui          s2, 291289
                  addi         t3, ra, 614
                  andi         t1, a7, 1025
                  srai         gp, a0, 7
                  and          s2, s7, gp
                  addi         s9, s11, 1666
                  sltiu        t2, s3, -195
                  xor          t3, s3, a5
150:              xori         s9, s10, 1198
                  bne          a1, gp, 154f
152:              sltu         s1, t2, a2
                  slti         s9, a4, 1269
154:              bne          a6, s5, 167f
                  add          s1, tp, a3
156:              add          t0, ra, gp
                  addi         s1, zero, 1223
                  xori         t0, a5, -352
                  sll          a1, a4, t2
                  auipc        s7, 568934
                  nop
                  and          sp, t2, s6
                  beq          t4, a1, 176f
                  slti         a3, t3, -1679
                  blt          a4, t1, 178f
                  bge          t0, a4, 185f
167:              sra          t4, s10, t0
                  nop
                  lui          gp, 898043
                  addi         a5, s6, 1256
                  srl          sp, t0, s1
                  blt          s11, gp, 192f
                  sltiu        a3, ra, 608
                  slt          a3, s11, s9
                  andi         t1, t5, -1731
176:              and          a2, s2, s1
                  beq          a4, t2, 186f
178:              slti         zero, tp, -760
                  nop
                  nop
                  srl          a0, s11, s7
                  sll          a5, s1, s8
                  auipc        t4, 719256
                  srli         t4, s5, 29
185:              srl          s2, a5, s9
186:              bne          a6, s7, 202f
                  auipc        t6, 256470
                  beq          s8, s2, 203f
                  ori          s0, zero, -77
                  lui          zero, 345630
                  la           s8, region_1+1180 #start riscv_load_store_rand_instr_stream_2
                  lh           s4, 246(s8)
                  nop
                  sb           tp, -231(s8)
                  sra          s6, t4, s0
                  lh           s1, -202(s8)
                  sra          a1, s7, a3
                  slti         a1, t0, -746
                  lbu          t4, -241(s8)
                  add          s11, t4, a4
                  andi         s10, a0, -1540
                  lui          sp, 560373
                  lbu          gp, -154(s8)
                  lhu          tp, -196(s8)
                  nop
                  sltu         t6, a5, t5
                  lhu          t0, 174(s8)
                  add          t4, ra, zero
                  lbu          a5, 147(s8)
                  lb           a2, -171(s8)
                  or           sp, s11, t6
                  andi         t6, a3, 909
                  sh           s9, 230(s8)
                  lbu          ra, 17(s8)
                  xor          t1, t0, a1
                  lhu          t1, 6(s8)
                  or           s10, t6, s2
                  sb           s8, -151(s8)
                  sltu         s2, a0, zero
                  lb           a1, 193(s8)
                  or           s3, s10, gp
                  lb           t6, 2(s8) #end riscv_load_store_rand_instr_stream_2
                  or           s2, t5, a3
192:              xor          gp, ra, a5
                  blt          s4, a7, 208f
                  srai         s1, ra, 27
                  srai         a0, s1, 1
                  ori          s6, s4, 1325
                  srai         s10, a3, 28
                  add          t4, t2, s5
                  nop
                  sltiu        zero, gp, 1674
                  blt          a0, s8, 212f
202:              add          s6, a4, s10
203:              beq          s3, s5, 214f
                  sltiu        a3, s0, 1853
                  or           s1, a6, s10
                  add          t3, t1, s3
                  slti         t0, s4, -1825
208:              auipc        s8, 839195
                  sltu         a5, s5, s7
                  bltu         zero, s11, 220f
                  slli         s1, s8, 14
212:              bge          s3, sp, 220f
                  addi         a2, s11, 2009
214:              sra          s1, s5, zero
                  xor          s4, s7, ra
                  andi         a2, t6, 22
                  bgeu         a3, s4, 228f
                  bltu         sp, zero, 223f
                  slli         t2, a5, 4
220:              xori         a2, ra, -864
                  slti         s3, s11, 826
                  or           s7, s10, t2
223:              add          s0, a7, s5
                  sll          t3, t0, s2
                  slt          sp, s3, a6
                  srai         s6, s8, 15
                  srli         zero, s11, 23
228:              bgeu         zero, a5, 247f
                  lui          tp, 21498
                  andi         ra, s7, -1577
                  sll          a6, t0, s8
                  srli         s9, a4, 11
                  beq          s10, s6, 242f
                  srli         s2, zero, 13
                  sra          s0, t1, zero
                  beq          s3, s9, 250f
                  slti         ra, t0, 622
                  add          s6, a4, t4
                  sltiu        s4, s2, 1351
                  srai         s3, tp, 23
                  srai         s5, t6, 3
242:              xor          a6, s8, gp
                  or           t3, t4, s9
                  sub          s10, s8, sp
                  bge          s9, s6, 262f
                  auipc        a6, 637637
247:              slti         s3, a3, 204
                  and          s8, s11, s7
                  lui          t4, 175132
250:              bgeu         t3, a4, 253f
                  lui          t6, 495096
                  addi         t0, s8, 640
253:              sltiu        a6, t2, 1844
                  sltiu        sp, a7, -857
                  lui          t4, 782866
                  sll          sp, a0, s10
                  and          s5, s2, s4
                  sltu         s11, s9, t1
                  beq          a4, ra, 262f
                  sltiu        t6, s3, 1942
                  bltu         a6, a4, 273f
262:              or           s0, s5, a1
                  srai         s0, s4, 23
                  auipc        s6, 929822
                  bgeu         tp, t3, 273f
                  bne          a6, s0, 275f
                  xor          s7, a0, s7
                  auipc        s3, 757922
                  xori         t4, s7, -1281
                  xor          s1, a1, s10
                  lui          s11, 781857
                  sub          t6, s2, s7
273:              or           s3, ra, t5
                  or           s3, a6, s9
275:              addi         sp, ra, 781
                  xor          gp, t4, tp
                  add          s7, t5, sp
                  bgeu         s8, gp, 289f
                  sltiu        ra, sp, 1783
                  nop
                  beq          a2, s10, 291f
                  blt          a4, t4, 290f
                  slti         a1, s5, 412
                  slli         s9, a5, 25
                  bge          a5, s11, 294f
                  beq          s10, s7, 303f
                  bltu         t5, s3, 306f
                  ori          t6, s10, 479
289:              xor          a1, s0, t6
290:              xori         s9, a4, -1254
291:              sub          s1, s6, s2
                  bgeu         ra, a7, 298f
                  bge          a4, s6, 302f
294:              bne          s5, s11, 314f
                  bne          a5, s0, 303f
                  auipc        ra, 196114
                  blt          zero, a1, 316f
298:              and          t1, a3, sp
                  nop
                  bge          ra, t3, 308f
                  srai         s5, t3, 22
302:              slt          a3, s3, a0
303:              xor          t1, s1, s2
                  beq          s6, s8, 314f
                  sltiu        s9, s2, -1150
306:              slti         a3, t0, -155
                  slli         sp, t3, 6
308:              slli         s5, t4, 3
                  srai         a5, ra, 2
                  and          t2, t1, s7
                  slt          s4, t1, s11
                  addi         s10, s9, -1789
                  xori         s10, gp, -938
314:              sltiu        s10, a5, -1045
                  bne          t6, a0, 334f
316:              xor          t4, a3, zero
                  sltiu        t0, tp, -913
                  auipc        s8, 200895
                  sltiu        t1, gp, 1568
                  srai         s5, zero, 22
                  addi         sp, s5, 1894
                  slli         s4, s5, 4
                  andi         t4, a3, 558
                  lui          s10, 189336
                  slti         a3, a2, 505
                  auipc        tp, 440728
                  blt          s6, a7, 342f
                  auipc        t2, 504740
                  add          s4, a3, t2
                  srai         s7, a5, 9
                  slli         a2, a0, 25
                  bgeu         t2, s7, 344f
                  xor          t0, a2, s3
334:              blt          t6, t5, 343f
                  beq          t6, s2, 352f
                  lui          s1, 104487
                  xori         t2, s8, 391
                  bltu         a2, s0, 355f
                  xori         s7, sp, -347
                  bge          s1, tp, 353f
                  xori         s0, sp, -861
342:              beq          s3, s10, 357f
343:              or           a1, gp, t0
344:              sltiu        s2, a0, 765
                  bgeu         t0, zero, 353f
                  slti         a0, t2, 745
                  sltiu        a3, sp, 1500
                  slli         a1, t3, 15
                  sub          a6, t1, s2
                  blt          s10, s10, 369f
                  sll          tp, s10, a0
352:              addi         s3, s0, -28
353:              nop
                  sltu         a1, t0, t4
355:              xori         s9, a0, 44
                  blt          t4, a6, 362f
357:              bgeu         a5, t3, 368f
                  add          t3, t3, a3
                  add          t3, t1, s1
                  blt          t0, s11, 363f
                  and          s9, a7, s7
362:              slti         t4, a3, -275
363:              bgeu         a7, s3, 372f
                  or           s11, a6, a1
                  slt          zero, s2, s5
                  bgeu         s2, s4, 375f
                  srli         a0, s9, 9
368:              sra          s9, s9, s6
369:              addi         s7, s5, -877
                  srli         t1, ra, 9
                  sra          s6, t3, t6
372:              bgeu         a7, a5, 377f
                  or           zero, a3, s8
                  bne          t6, s11, 377f
375:              nop
                  xori         t3, t3, -541
377:              slli         s10, gp, 22
                  or           gp, s8, s8
                  sltiu        gp, t2, 1023
                  lui          s2, 886036
                  or           ra, s1, s1
                  sltu         a6, t3, s10
                  auipc        zero, 265854
                  and          t0, a5, t2
                  sll          t2, t3, s6
                  sra          zero, s5, t2
                  lui          t2, 845926
                  lui          t2, 508629
                  sub          s0, s11, t3
                  bgeu         s2, s3, 404f
                  or           s10, zero, a7
                  bge          s11, s9, 403f
                  sra          zero, s9, s10
                  sub          s6, sp, s3
                  auipc        tp, 272180
                  sll          t3, s0, a6
                  sub          zero, a2, s9
                  bltu         s4, a0, 409f
                  srli         s0, t1, 13
                  auipc        s10, 16044
                  slli         a6, t4, 9
                  add          s8, ra, t3
403:              addi         s9, s8, 1359
404:              auipc        s6, 150417
                  auipc        s11, 52180
                  addi         t1, a2, 408
                  addi         s4, s1, 985
                  sub          t1, tp, s9
409:              add          s7, t5, a5
                  sra          t2, s3, s6
                  bne          s7, a4, 424f
                  auipc        s1, 286657
                  and          s5, t1, t0
                  bltu         s5, a7, 430f
                  srli         ra, s1, 29
                  blt          s2, zero, sub_5_j10 #branch to jump instr
                  srai         t2, s2, 26
                  sltiu        s1, s3, -1933
                  auipc        t3, 291370
                  nop
                  xor          ra, s0, s2
sub_5_j10:        jal          s10, sub_8 #jump sub_5 -> sub_8
                  lui          s8, 267075
                  srai         s3, a1, 31
                  add          t4, s7, s3
                  bne          s10, sp, 428f
                  beq          a4, a2, 430f
                  add          a0, a7, s2
                  lui          s6, 850072
                  sll          s7, t0, s6
                  sub          zero, a2, a2
424:              bne          a6, t4, 433f
                  srli         a3, tp, 3
                  bge          a3, a4, 435f
                  and          s4, a7, s9
428:              bltu         s7, gp, 441f
                  add          s5, s6, sp
430:              or           s2, t4, s0
                  slt          s5, a4, a5
                  andi         tp, s6, -1757
433:              slt          s7, tp, s2
                  srli         zero, t2, 13
435:              bne          t4, t2, 443f
                  sltiu        t4, a3, 558
                  slt          s2, s3, a7
                  andi         t6, s8, 1732
                  slli         t3, a7, 16
                  slti         s4, s9, 1549
441:              srl          s6, s6, s5
                  or           s9, a3, a1
443:              slt          t1, s9, zero
                  srai         t2, sp, 28
                  srl          s4, t3, t6
                  or           a2, s5, t6
                  bne          a5, a2, 458f
                  bgeu         t3, t6, 463f
                  bltu         t0, t1, 466f
                  nop
                  sub          zero, gp, t6
                  addi         t0, s2, 1322
                  bgeu         zero, zero, 464f
                  and          t0, s6, s3
                  slti         tp, a0, -669
                  add          t3, ra, a2
                  sub          a5, s7, zero
458:              xori         ra, tp, -269
                  bgeu         a0, t5, 465f
                  bge          a2, tp, 479f
                  sra          tp, gp, s1
                  add          a3, s10, a4
463:              xor          t0, a0, a7
464:              bgeu         s0, s8, 477f
465:              sltu         tp, t4, s10
466:              srl          s7, tp, a5
                  auipc        s3, 941942
                  xor          s2, a2, s2
                  ori          s8, a1, 1007
                  slti         a2, t1, -955
                  slt          s0, s6, a2
                  sra          s4, t3, ra
                  srl          sp, s11, s3
                  sltu         s11, t4, t5
                  srai         s0, s3, 18
                  sltiu        a3, s2, -642
477:              bltu         s10, t5, 485f
                  sltu         s3, a2, s1
479:              or           s9, a3, t6
                  bgeu         a7, a0, 494f
                  add          s8, s4, gp
                  sltu         gp, gp, s8
                  ori          t1, ra, -1712
                  srl          t4, s2, a2
485:              beq          a2, s8, 493f
                  sltu         s10, a6, s2
                  slli         zero, s10, 22
                  beq          a6, s11, 508f
                  sll          a3, t3, s11
                  slli         s7, t4, 21
                  and          gp, t4, t1
                  sll          s6, s4, s5
493:              lui          t0, 521806
494:              sltu         s4, a1, a2
                  and          tp, sp, a7
                  bgeu         s1, zero, 505f
                  beq          gp, t5, 500f
                  beq          zero, s8, 509f
                  lui          s0, 277636
500:              bgeu         t5, a2, 503f
                  srl          a3, t4, gp
                  sltiu        a5, s5, -1922
503:              slt          s6, a5, sp
                  slti         t2, t4, 1674
505:              slt          s8, s7, t1
                  srai         t3, a5, 22
                  srai         zero, t1, 3
                  la           a0, region_0+1178 #start riscv_load_store_rand_instr_stream_1
                  lb           a1, -8(a0)
                  ori          s0, a4, 1755
                  lbu          s6, 6(a0)
                  sltu         a1, s5, t1
                  xori         s1, s10, -2040
                  lhu          t6, 2(a0)
                  lui          ra, 590315
                  sb           t1, -11(a0)
                  and          s10, t4, s5
                  sub          t0, a5, ra
                  sltu         s3, s0, t0
                  lhu          sp, -8(a0)
                  xor          s0, t4, a5
                  lb           s6, 13(a0)
                  or           t2, t4, s9
                  lbu          a2, -6(a0)
                  nop
                  sll          s9, gp, a4
                  lb           s1, -13(a0)
                  sra          a6, s1, a4
                  lui          t4, 833168
                  add          s0, s0, s8
                  lbu          gp, 7(a0)
                  lh           a6, 14(a0)
                  srai         t1, a4, 7
                  lhu          a3, -8(a0)
                  sltu         a2, a3, ra
                  auipc        s8, 133422
                  sb           sp, -9(a0)
                  nop
                  sb           s10, -4(a0)
                  srli         a1, s6, 30
                  auipc        s5, 711337
                  sra          a1, a1, t2
                  ori          s0, s6, -761
                  sb           t0, -13(a0)
                  lbu          s0, -10(a0)
                  add          a2, s4, a6
                  slti         a2, s9, -1699
                  srli         a2, s0, 19
                  sh           t4, 16(a0)
                  srl          a1, sp, t0
                  lbu          t4, -13(a0)
                  srl          s7, s3, s8
                  lbu          a2, 10(a0)
                  srl          t3, s6, s2
                  add          s6, t1, a5
                  lbu          s2, 12(a0) #end riscv_load_store_rand_instr_stream_1
508:              add          zero, a0, zero
509:              andi         s2, s11, -1208
                  xor          a5, s10, t3
                  srli         s0, s5, 24
                  sra          s0, s0, s8
                  sub          a2, s7, t2
                  slt          s1, s0, sp
                  slt          s1, s8, s2
                  or           s10, t2, a0
                  srai         a5, t3, 20
                  sra          a1, a5, a7
                  slli         s10, s4, 2
                  ori          a6, gp, 289
                  andi         a3, s10, 1707
                  sltiu        s4, t4, -1978
                  sub          a5, s3, a6
                  bltu         s6, t2, 543f
                  xor          t3, t3, s10
                  srai         s9, s8, 5
                  sltiu        a3, s2, -742
                  srai         s8, a1, 25
                  bgeu         a5, t2, 541f
                  addi         s9, s2, 1017
                  beq          a4, ra, 542f
                  srli         s6, s4, 31
                  srai         s8, s4, 4
                  slt          a6, s4, t0
                  slli         s6, a3, 8
                  slti         t2, sp, 1849
                  and          s6, a7, s4
                  srl          s0, s3, a2
                  slti         a2, zero, 1055
                  beq          sp, s0, 545f
541:              srli         s9, s7, 0
542:              or           a5, s7, s2
543:              sra          gp, s0, s7
                  xor          a2, s5, s3
545:              xor          s5, sp, tp
                  sll          a5, a5, t1
                  nop
                  blt          s2, sp, 558f
                  or           s11, s0, tp
                  auipc        s7, 504587
                  nop
                  andi         a3, a3, -1395
                  lui          t2, 904209
                  srai         t4, s11, 23
                  bge          a2, t6, 574f
                  sltiu        a1, a1, -1346
                  andi         t0, s1, -1405
558:              bge          ra, s0, 573f
                  sra          t6, s1, a5
                  or           s10, t5, a0
                  srl          s9, a0, t0
                  xor          t2, a1, a3
                  sll          t4, s11, t1
                  sltiu        t3, a0, 1811
                  sltiu        gp, t3, 1289
                  beq          s10, t5, 576f
                  add          t1, a3, s2
                  bne          a4, gp, 577f
                  lui          sp, 328943
                  sra          s8, s3, t4
                  slli         sp, s8, 29
                  sltiu        t6, t1, 72
573:              auipc        t0, 650934
574:              addi         a1, t4, 1992
                  xor          a2, s8, s0
576:              sll          s9, a4, s8
577:              slti         a6, s3, -1955
                  addi         gp, a7, -1465
                  ori          s3, s9, -1116
                  nop
                  sra          s5, t0, s7
                  xori         tp, a3, 1156
                  andi         sp, s6, 68
                  slt          gp, s5, s4
                  and          t3, s1, s0
                  nop
                  bltu         s8, a1, 603f
                  bltu         t2, s11, 605f
                  sra          a0, s4, s3
                  nop
                  ori          zero, t3, -551
                  blt          t0, s7, 600f
                  srli         t2, gp, 3
                  sltu         s0, tp, s4
                  bgeu         s6, tp, 604f
                  srli         t3, a1, 25
                  sra          t6, ra, s8
                  srl          s1, s2, s8
                  beq          s8, a1, 602f
600:              srl          s2, s11, s9
                  and          s9, t6, sp
602:              xori         a3, a1, 503
603:              sll          a0, s5, a7
604:              bge          gp, s6, 621f
605:              xori         a3, s0, 614
                  slti         s8, a1, -632
                  nop
                  sltiu        s10, s3, -1066
                  or           s0, s5, t2
                  blt          s1, a1, 626f
                  bge          t3, a7, 614f
                  bltu         tp, a6, 626f
                  sltiu        s2, ra, -1796
614:              slt          s4, t6, s7
                  nop
                  xor          a5, tp, t1
                  auipc        a6, 814699
                  slti         sp, a5, -1487
                  sltu         s7, t2, s9
                  bltu         s1, s6, 635f
621:              srai         t1, a2, 16
                  sltu         zero, s1, s5
                  bltu         s4, s2, 634f
                  or           s11, tp, s3
                  bltu         zero, t2, 636f
626:              auipc        t6, 31008
                  bgeu         s3, t5, 633f
                  sll          s0, a4, s7
                  srl          a5, s7, a0
                  srl          s2, t2, a5
                  auipc        a2, 932353
                  andi         a3, tp, 1366
633:              sll          t6, s0, t3
634:              sra          gp, a2, a3
635:              beq          t1, s7, 640f
636:              sll          t4, s7, t2
                  nop
                  ori          s4, s11, 781
                  srli         t4, t1, 9
640:              slti         t4, s4, -787
                  auipc        gp, 418159
                  auipc        s6, 387717
                  slli         t2, t4, 11
                  srai         s3, a5, 24
                  bltu         a5, s7, 665f
                  beq          zero, t6, 654f
                  xori         ra, s3, 65
                  add          t1, s6, t6
                  auipc        s2, 886017
                  srai         tp, t2, 5
                  sltu         s9, t1, a4
                  srl          t3, a5, s4
                  blt          tp, a6, 671f
654:              ori          t3, s6, -1478
                  bne          sp, a2, 665f
                  sll          s4, s10, t0
                  xor          s1, s11, s4
                  ori          t6, s3, 282
                  slt          a3, s6, t4
                  sltiu        t3, a6, -832
                  bge          s11, t0, 671f
                  sll          s9, gp, s11
                  or           ra, sp, s9
                  sra          s1, s7, s4
665:              bge          s10, a3, 671f
                  srl          s9, t1, t3
                  ori          s7, s4, 1716
                  xori         t4, s3, -1943
                  slt          t3, t0, sp
                  auipc        s3, 799107
671:              andi         t0, s5, 456
                  lw           s10, 4(a4)
                  andi         sp, t6, -1842
                  auipc        s11, 142404
                  slti         s8, a7, 243
                  nop
                  sltu         t2, s8, a7
                  or           s1, gp, s6
                  addi         a4, a4, 36
                  sltu         t4, zero, t6
                  sll          gp, s9, s2
                  auipc        zero, 831400
911:              addi x12, x26, 1
911:              jalr x12, x12, 0
sub_7:            auipc        t6, 1874
                  or           s4, t4, s7
                  lui          sp, 387720
                  sll          a1, a1, a6
                  sltu         a0, t6, a0
                  addi         a4, a4, -20
                  sltu         s4, t5, t1
                  sw           s10, 4(a4)
                  add          s8, a5, a2
                  slti         s8, a7, -970
                  slli         t0, s2, 8
                  sll          s0, t1, s5
                  lui          a0, 673972
                  srl          s3, t4, s0
                  sltu         t6, s7, s6
                  add          a0, a6, t3
                  sltiu        a1, s9, 922
                  sub          s6, a6, t4
                  addi         s11, ra, -1937
sub_7_j12:        jal          s10, sub_9 #jump sub_7 -> sub_9
                  blt          a1, tp, 11f
                  slti         tp, s10, 471
                  slli         t2, t4, 31
                  sltu         a6, s5, s8
                  andi         a3, t2, 1742
                  sll          t3, a3, gp
                  auipc        a2, 482657
                  sra          s8, a5, gp
                  srai         t4, a2, 19
                  add          s7, a4, a3
                  ori          s3, s9, 1867
11:               andi         sp, t4, -1164
                  lw           s10, 4(a4)
                  and          s7, s6, a0
                  addi         a4, a4, 20
                  xori         a2, s9, 1454
                  sltiu        t1, tp, 931
37:               addi x15, x26, 0
37:               jalr x15, x15, 0
sub_2:            addi         a4, a4, -44
                  sub          s9, s2, sp
                  or           a3, a5, s4
                  and          s0, s7, zero
                  srai         s2, s3, 22
                  slt          s6, s5, s4
                  andi         s6, t4, -1392
                  sra          s0, t1, zero
                  sw           s10, 4(a4)
                  ori          s5, s8, -1578
                  lui          s4, 28823
                  bne          a6, s3, sub_2_j5 #branch to jump instr
                  xor          t1, a5, a6
                  xori         a5, a5, -1162
                  sltiu        a5, ra, -1656
                  sub          sp, s0, zero
                  andi         t1, a7, 1914
                  srai         t6, t2, 15
                  xori         sp, a1, -906
                  sll          a0, sp, a3
                  sub          s8, t5, s8
sub_2_j5:         jal          s10, sub_4 #jump sub_2 -> sub_4
                  la           a2, sub_4
                  slli         t6, s0, 21
                  slli         t3, a2, 1
                  addi         a2, a2, 77
                  bge          t3, t5, sub_2_j6 #branch to jump instr
                  addi         s6, t2, -1995
                  xori         a1, tp, -1514
                  sltiu        ra, zero, 1063
                  slli         t4, tp, 22
                  xori         t3, sp, 1555
sub_2_j6:         jalr         s10, a2, -76 #jump sub_2 -> sub_4
                  la           sp, region_0+1336 #start riscv_load_store_rand_instr_stream_0
                  lh           s10, 332(sp)
                  sh           a3, -980(sp)
                  lbu          s6, 451(sp)
                  lh           s8, -276(sp)
                  xori         t0, a3, -1972
                  lui          tp, 347222
                  auipc        t0, 64971
                  srl          s2, t4, a4
                  lb           ra, 57(sp)
                  add          s2, tp, s8
                  srl          t3, a7, s1
                  sb           zero, -345(sp)
                  sra          s6, t0, zero
                  lbu          a2, -1200(sp)
                  lbu          s4, 537(sp)
                  andi         s7, t6, -475
                  sb           s6, -511(sp)
                  lh           gp, 186(sp)
                  and          s3, s8, a6
                  sltu         a1, s4, t6
                  lui          s1, 211306
                  nop
                  sb           gp, 500(sp)
                  sb           s6, 101(sp)
                  addi         s7, a2, 1363
                  srai         zero, s3, 25
                  add          s1, a5, gp
                  srai         s9, a3, 9
                  lbu          t4, -340(sp)
                  lb           s3, 310(sp)
                  sb           t3, -991(sp)
                  lh           s9, -168(sp)
                  lh           a2, -226(sp)
                  sltu         s9, a0, t0
                  sb           t4, 45(sp)
                  lb           a3, 23(sp)
                  lbu          s9, -1089(sp)
                  xori         s8, s1, 1169
                  sltu         s0, s3, s7
                  sltiu        a5, t4, -1200
                  sh           zero, -262(sp)
                  lui          s2, 878587
                  and          t2, gp, s1
                  sh           s2, -1060(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+0 #start riscv_load_store_rand_instr_stream_1
                  lbu          tp, 609(s8)
                  nop
                  ori          t1, t6, 735
                  lw           gp, 124(s8)
                  lbu          a5, 1858(s8)
                  lui          t6, 384997
                  sltu         s7, s4, t4
                  andi         a6, a6, -872
                  sb           s10, 1303(s8)
                  lb           t3, 998(s8)
                  srli         s10, s0, 16
                  sub          a1, sp, t0
                  lb           s9, 1182(s8)
                  srli         s1, sp, 7
                  xori         a0, s0, 1331
                  and          t4, a2, t3
                  nop
                  lbu          a0, 1566(s8)
                  lbu          t1, 1037(s8)
                  xori         s7, s5, -63
                  lbu          t2, 35(s8)
                  sh           ra, 1646(s8) #end riscv_load_store_rand_instr_stream_1
                  sll          t3, a2, t3
                  sll          s7, a3, s9
                  addi         s6, s2, 1620
                  sltiu        a6, s0, -1093
                  xor          tp, s0, s7
                  bltu         zero, a3, 11f
                  bltu         sp, a6, 15f
                  andi         s0, a5, -998
                  nop
                  nop
                  auipc        s10, 291225
11:               lui          t1, 444207
                  sltu         t3, ra, a4
                  add          zero, gp, a1
                  nop
15:               bgeu         s5, ra, 16f
16:               or           s10, t0, tp
                  blt          sp, a3, 22f
                  auipc        s0, 1018290
                  blt          a1, a1, 27f
                  sll          sp, a5, a6
                  xor          a3, tp, t3
22:               sub          t4, s8, t2
                  addi         sp, s11, 634
                  sll          t2, a3, a4
                  slti         t0, t3, -981
                  srli         s2, s2, 19
27:               and          a5, t1, t4
                  bge          s1, s11, 46f
                  ori          s4, s4, 1504
                  sub          t3, a0, gp
                  ori          s10, s7, 1611
                  slti         t3, a2, -1418
                  xori         s6, ra, -1848
                  add          t3, t2, t2
                  srl          t4, a0, s11
                  bltu         sp, t6, sub_2_j4 #branch to jump instr
                  srli         gp, a0, 13
sub_2_j4:         jal          s10, sub_3 #jump sub_2 -> sub_3
                  nop
                  xori         s2, tp, -838
                  or           tp, s0, a2
                  sub          sp, a7, t0
                  bne          a2, t6, 46f
                  beq          a7, s11, 41f
                  bgeu         s3, t5, 38f
                  slli         s3, t4, 1
                  bltu         gp, s1, 53f
38:               or           ra, ra, s9
                  bge          t6, a6, 50f
                  srl          a5, s11, t0
41:               addi         a0, s1, 823
                  addi         t0, a0, -1278
                  sub          zero, s8, s9
                  lui          s6, 201726
                  bge          s4, s8, 64f
46:               sltu         zero, s3, a5
                  slti         s8, s7, -1799
                  xor          t0, a1, t6
                  xor          s11, zero, gp
50:               ori          a0, ra, -1813
                  or           a0, s3, t6
                  bge          sp, a4, 71f
53:               andi         ra, t4, 113
                  srl          s0, s4, t4
                  bge          t6, s4, 61f
                  srai         a3, s5, 11
                  sltu         s0, a3, t5
                  addi         s2, t4, -93
                  and          s5, a4, a4
                  sltiu        a6, a5, -1096
61:               auipc        s9, 235290
                  srl          s5, a6, s11
                  bgeu         s6, ra, 79f
64:               bgeu         tp, t6, 66f
                  and          ra, t6, t0
66:               sub          a3, s6, s4
                  bltu         a0, a3, 75f
                  slt          a1, s10, s2
                  xori         tp, a5, -1817
                  srli         s9, s5, 19
71:               nop
                  srai         s1, s11, 15
                  or           s7, t3, zero
                  add          s5, s5, s10
75:               sltiu        s11, t5, -63
                  bgeu         s10, a4, 78f
                  sra          t3, tp, a2
78:               bltu         t3, t2, 95f
79:               slli         t1, a3, 26
                  nop
                  or           zero, s0, a2
                  sub          t6, a2, a2
                  nop
                  xor          a0, sp, t1
                  sub          s5, a5, a3
                  or           t6, a2, s2
                  andi         t4, s6, -887
                  bltu         a5, s9, 108f
                  slli         a2, sp, 15
                  sltiu        s11, a6, 1701
                  sll          t6, s8, t5
                  blt          a2, gp, 108f
                  blt          s6, zero, 100f
                  bltu         zero, tp, 113f
95:               auipc        s10, 829062
                  lui          s2, 50300
                  srai         s1, s7, 28
                  srai         t1, s11, 27
                  lui          s7, 277423
100:              addi         s7, s7, -1267
                  sll          s0, t3, s4
                  and          t6, zero, tp
                  or           t2, a1, t5
                  slli         s2, a5, 0
                  xori         t2, t0, -160
                  srl          s8, a5, a1
                  srli         s10, gp, 24
108:              bge          t2, a7, 115f
                  addi         s8, tp, -1491
                  or           s9, t3, ra
                  srai         s6, a2, 30
                  srai         a0, s9, 7
113:              bne          a5, t0, 119f
                  slti         s11, tp, -625
115:              sra          t0, s11, tp
                  nop
                  slli         t3, a5, 4
                  beq          t3, s11, 136f
119:              srai         s2, a3, 9
                  auipc        t2, 988432
                  beq          t6, ra, 122f
122:              and          a1, a6, s1
                  blt          t5, t2, 129f
                  slt          s6, sp, a5
                  blt          a5, gp, 142f
                  lui          a5, 482117
                  and          s5, t0, a5
                  ori          s0, a6, -146
129:              sra          sp, s10, t2
                  srl          s8, s2, s11
                  xor          a5, t2, s3
                  and          s6, s0, a4
                  bgeu         s6, zero, 140f
                  beq          a4, ra, 136f
                  sub          a1, gp, t0
136:              slt          s9, t5, ra
                  add          t1, a6, t5
                  auipc        sp, 683402
                  nop
140:              sltu         a3, a3, s0
                  beq          a0, s8, 148f
142:              bltu         s8, zero, 161f
                  bltu         s10, s3, 149f
                  sra          s1, t0, s4
                  nop
                  ori          s7, s0, 1996
                  and          t3, zero, zero
148:              and          s9, t0, t4
149:              sll          s2, ra, t2
                  slli         zero, t1, 14
                  blt          a4, sp, 157f
                  srli         ra, s7, 10
                  and          t6, zero, s10
                  bltu         t0, t6, 155f
155:              ori          s3, t1, -1296
                  andi         tp, a6, -1902
157:              slli         gp, zero, 19
                  srli         t2, a5, 7
                  add          s3, a4, s9
                  sltiu        t0, s7, 876
161:              addi         t1, s6, 1161
                  lui          s10, 900088
                  sltiu        a1, a4, 739
                  bne          t0, s5, 180f
                  xori         t6, t6, -355
                  or           a3, zero, s2
                  and          t0, tp, t1
                  ori          a6, tp, -1499
                  sub          t6, s1, t5
                  auipc        s11, 249048
                  addi         s10, a3, -968
                  bne          t3, t4, 178f
                  sll          s0, s5, s9
                  sra          s6, t3, s11
                  ori          a5, a0, -941
                  srai         a6, s10, 1
                  srai         s7, a4, 1
178:              bltu         s5, t3, 186f
                  sll          t2, t3, zero
180:              xori         s3, t0, -438
                  lui          s3, 717496
                  and          t0, t4, t6
                  blt          tp, gp, 185f
                  andi         s3, a6, -1975
185:              slti         sp, a5, 1318
186:              sub          t0, s3, zero
                  slti         a1, tp, 1897
                  blt          s2, a5, 204f
                  sll          s10, s0, ra
                  addi         s10, zero, -1952
                  slti         s7, s9, -2001
                  blt          t4, t5, 208f
                  nop
                  andi         a3, s11, -1087
                  bgeu         tp, s2, 198f
                  xor          s2, s1, a5
                  addi         s2, a6, -1132
198:              bgeu         a3, t0, 204f
                  lui          s0, 170097
                  bge          s0, t2, 201f
201:              slt          t2, gp, a3
                  srli         t0, a2, 9
                  sra          s3, s8, a4
204:              sra          a6, a2, t0
                  bge          s7, tp, 212f
                  nop
                  sll          t3, s5, a6
208:              bne          tp, zero, 219f
                  addi         s4, t2, 1294
                  bne          a1, t6, 223f
                  bge          a0, a7, 218f
212:              andi         s4, s11, 1377
                  sub          t0, tp, a2
                  bgeu         t3, t2, 219f
                  ori          t2, s4, -291
                  add          sp, t4, ra
                  slli         s5, tp, 9
218:              slti         a6, tp, 385
219:              ori          s4, s2, -1032
                  lui          t0, 667928
                  or           s6, t2, t6
                  add          gp, t0, s9
223:              auipc        tp, 528284
                  slt          a3, s9, t6
                  bltu         a4, s1, 242f
                  addi         zero, a0, -1079
                  and          s7, sp, s5
                  slti         t6, s2, 1466
                  slt          t3, t3, ra
                  lui          a1, 748545
                  xori         t6, s4, 1941
                  bne          t5, a1, 250f
                  or           a1, s7, a6
                  ori          t0, t0, -104
                  sub          s6, s10, a6
                  blt          s7, s8, 256f
                  sub          t2, s2, s11
                  blt          s0, s4, 246f
                  slti         s7, sp, -912
                  slti         a5, a0, 747
                  nop
242:              sra          s9, s9, s2
                  srai         s5, a0, 20
                  auipc        s4, 25021
                  add          s6, tp, s0
246:              bgeu         s2, s7, 265f
                  xori         ra, zero, 1233
                  sltiu        s9, t1, 737
                  beq          s11, s11, 256f
250:              srli         tp, gp, 28
                  bne          a6, t2, 260f
                  slt          a5, a6, a6
                  auipc        t0, 484785
                  add          t6, s1, zero
                  bge          s11, a6, 272f
256:              nop
                  auipc        a1, 564918
                  or           a2, t6, s9
                  slt          s0, a4, t2
260:              xori         s11, a7, 1662
                  ori          zero, a5, -56
                  or           a3, t2, a5
                  ori          ra, a2, 1531
                  nop
265:              sltiu        t3, s2, -509
                  beq          s0, s5, 285f
                  beq          t4, s3, 285f
                  add          s6, zero, gp
                  or           a0, s9, t4
                  bgeu         t3, t6, 279f
                  auipc        s1, 597475
272:              blt          s3, a7, 291f
                  slli         s11, zero, 28
                  slt          t2, s3, zero
                  xor          t3, t1, s0
                  slti         t4, s3, -1187
                  sll          s6, tp, gp
                  sub          a2, tp, t4
279:              slt          s4, t5, a2
                  or           a3, a1, s3
                  srli         s6, a3, 10
                  sltu         s10, s10, s2
                  auipc        tp, 937892
                  add          s11, zero, s4
285:              srli         s8, s11, 9
                  bge          t0, zero, 297f
                  ori          t0, tp, -1380
                  nop
                  sltu         t2, a2, t6
                  and          s1, s4, t4
291:              sltiu        a2, s6, -496
                  sra          t6, a2, t3
                  srli         s1, s7, 13
                  sra          a1, a3, s2
                  auipc        gp, 928635
                  srl          sp, s10, a5
297:              nop
                  bge          s7, a2, 305f
                  bge          s0, a1, 312f
                  andi         a0, a5, 430
                  ori          s0, t6, -292
                  sll          s10, s7, ra
                  xor          s9, s6, s6
                  bne          a5, t6, 311f
305:              bltu         a0, s0, 312f
                  srli         s3, zero, 11
                  auipc        s4, 25514
                  xori         gp, a7, 1340
                  bge          s9, gp, 312f
                  bge          a2, a0, 312f
311:              nop
312:              sll          gp, a7, s9
                  sra          s4, s0, s10
                  sll          t4, s5, s10
                  and          t2, t0, a2
                  sra          a6, s6, a6
                  lw           s10, 4(a4)
                  addi         a4, a4, 44
                  lui          gp, 829477
431:              addi x21, x26, 0
431:              jalr x21, x21, 0
sub_6:            bge          t5, s0, sub_6_stack_p
                  andi         a6, a6, -1020
                  nop
                  auipc        a2, 608282
                  nop
sub_6_stack_p:    addi         a4, a4, -8
                  slt          zero, s11, a4
                  sll          sp, s5, tp
                  sll          s6, a5, zero
                  nop
                  slti         t3, t1, -30
                  sw           s10, 4(a4)
                  xori         t4, s4, 657
                  srli         s10, t6, 27
                  sltiu        a5, a3, -67
                  or           s1, a7, s0
                  or           a5, t6, a4
                  la           s2, sub_7
                  sll          gp, t6, a4
                  addi         s2, s2, 586
                  bltu         s1, a7, sub_6_j11 #branch to jump instr
                  slli         s3, sp, 12
sub_6_j11:        jalr         s10, s2, -586 #jump sub_6 -> sub_7
                  la           a1, region_1+1122 #start riscv_load_store_rand_instr_stream_1
                  sh           s9, -80(a1)
                  lb           a2, -995(a1)
                  lh           sp, 744(a1)
                  ori          s5, a7, 845
                  auipc        a5, 1020196
                  lbu          t3, 211(a1)
                  slti         a6, s4, -1520
                  slt          s11, t1, t2
                  ori          t1, sp, -1946
                  slt          t6, a7, s10
                  auipc        t2, 885673
                  and          s8, t4, t1
                  sb           s2, -895(a1)
                  sb           gp, -465(a1)
                  xori         t0, s5, -1742
                  slti         tp, gp, 698
                  lbu          s0, 61(a1)
                  lui          s1, 958845
                  xor          a5, s6, t3
                  nop
                  lb           ra, 33(a1)
                  sub          zero, a4, s3
                  slt          s2, s8, a4
                  lb           s10, 745(a1)
                  lbu          t2, 731(a1)
                  srai         s7, t1, 10
                  auipc        a6, 268440
                  lb           a2, -306(a1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+536 #start riscv_load_store_rand_instr_stream_2
                  sltu         t0, s3, a2
                  sltu         a1, a6, s9
                  slti         s11, gp, 1810
                  sltiu        a3, gp, -880
                  sh           t0, -10(sp)
                  sub          a1, s8, gp
                  lb           t4, -7(sp)
                  lb           s8, 2(sp)
                  lh           t4, -10(sp)
                  lb           s5, 13(sp)
                  add          a5, s10, t1
                  lbu          s6, 4(sp)
                  sh           a6, -16(sp)
                  sra          t1, s8, a2
                  xori         gp, s2, -2015
                  lbu          t2, -7(sp)
                  lbu          a2, -13(sp)
                  sltiu        a2, t3, -329
                  sh           s4, -16(sp)
                  addi         zero, s5, -755
                  sll          s4, s6, s9
                  lbu          a0, -6(sp)
                  lbu          t2, 13(sp)
                  lbu          s6, -13(sp)
                  lb           ra, -9(sp) #end riscv_load_store_rand_instr_stream_2
                  bgeu         zero, a3, 5f
                  xori         s2, s8, -40
                  and          s10, s7, s7
                  bge          t3, t1, 8f
                  auipc        s2, 548930
5:                xor          s2, s2, t5
                  xor          s2, s3, s1
                  nop
8:                nop
                  srl          zero, a1, s11
                  lui          gp, 439074
                  add          s0, a4, tp
                  nop
                  sra          s1, s3, ra
                  auipc        s1, 139327
                  blt          a1, s9, 21f
                  bgeu         s7, a7, 35f
                  beq          a5, t0, 30f
                  sub          s1, zero, a4
                  srai         s5, zero, 31
                  bltu         s11, t4, 31f
21:               add          s11, gp, a5
                  sub          s3, s0, s8
                  sub          s3, a6, t0
                  sll          t3, s1, t2
                  slt          t1, a7, gp
                  slt          gp, ra, zero
                  xori         s9, t5, -132
                  srl          s8, a6, a3
                  lui          t1, 811836
30:               addi         t3, sp, 441
31:               addi         s2, t6, 1973
                  beq          a2, zero, 37f
                  or           t0, a5, t4
                  sra          ra, sp, s1
35:               slli         a0, s0, 2
                  sra          t6, s2, t6
37:               andi         zero, s5, -1200
                  sub          a5, s7, t2
                  nop
                  ori          t1, a0, -343
                  slti         t4, t4, 1046
                  and          s11, t1, t2
                  add          s7, s8, s2
                  xor          s11, sp, t4
                  sltu         t2, s4, s2
                  or           zero, t1, t6
                  slt          s8, zero, a5
                  sltu         a6, s0, s9
                  nop
                  andi         ra, t5, -380
                  andi         s5, t2, -1616
                  xor          s2, s10, zero
                  bgeu         s9, t2, 67f
                  andi         t2, s2, 473
                  srli         a6, a7, 27
                  bltu         a2, t3, 75f
                  slt          t1, s7, s2
                  add          s2, a3, t0
                  auipc        t3, 540800
                  lui          s7, 463781
                  bge          s10, s1, 62f
62:               sll          t1, sp, a5
                  blt          a0, s8, 75f
                  xor          a5, s1, a6
                  lui          gp, 113317
                  sub          a5, s9, a0
67:               slli         a5, a4, 20
                  beq          t1, t3, 77f
                  auipc        gp, 250696
                  xor          zero, a0, t3
                  beq          gp, zero, 85f
                  andi         s10, sp, -337
                  sra          a0, s9, a2
                  nop
75:               and          t6, s4, t3
                  sltu         a1, a5, s5
77:               beq          a2, t6, 94f
                  sll          s10, a5, a2
                  xori         ra, tp, -1403
                  sltiu        ra, s5, 1158
                  bge          a3, a7, 97f
                  or           gp, a7, zero
                  slti         a6, a0, 610
                  beq          a3, s5, 85f
85:               beq          t6, a1, 88f
                  xori         a5, sp, -242
                  sll          a6, ra, tp
88:               ori          gp, t4, -1056
                  sltiu        s5, s6, 716
                  andi         s2, t0, -315
                  srai         s0, t3, 23
                  xor          s6, t6, zero
                  beq          a6, a2, 104f
94:               slt          sp, a1, s10
                  nop
                  auipc        s6, 586043
97:               ori          a5, t0, 1481
                  bne          a6, s6, 101f
                  ori          s9, t6, -485
                  bge          t2, s1, 102f
101:              auipc        s6, 344525
102:              and          a0, s2, t0
                  srl          tp, s9, s10
104:              andi         s1, tp, 75
                  xor          s3, t2, s1
                  blt          a6, a2, 107f
107:              bgeu         t6, s1, 125f
                  sub          gp, ra, a3
                  srli         s11, a1, 0
                  andi         t1, t0, 26
                  xor          t2, a0, s2
                  slti         s6, t1, 292
                  xori         zero, gp, -484
                  slt          tp, gp, t5
                  slli         t0, s0, 25
                  lui          t0, 859231
                  add          s1, s9, a6
                  ori          s4, a2, -763
                  and          s0, t4, ra
                  blt          s2, t5, 134f
                  blt          a0, t3, 127f
                  slli         t1, t4, 0
                  add          tp, a4, t5
                  beq          a0, a1, 125f
125:              ori          s7, zero, 648
                  sltu         a6, a3, s1
127:              slli         t4, tp, 31
                  srl          a2, s7, s11
                  auipc        t1, 948702
                  bne          a7, tp, 144f
                  srl          s11, t3, s8
                  bltu         gp, t0, 147f
                  srli         s3, t4, 3
134:              ori          s2, a0, -124
                  bge          t0, s2, 151f
                  lui          s6, 201483
                  srl          s9, zero, s5
                  add          s5, s8, s0
                  ori          s3, a7, -1058
                  sll          tp, s8, a0
                  addi         sp, a6, -1214
                  lui          s11, 330584
                  sll          t6, a4, gp
144:              bne          ra, s10, 153f
                  add          t3, a0, s2
                  srl          s11, t1, t6
147:              srl          ra, s4, t1
                  xor          gp, a5, s8
                  or           a5, s11, s11
                  sll          s3, s10, t3
151:              xori         tp, s9, -1727
                  bne          a2, tp, 164f
153:              bge          s4, t6, 169f
                  sub          s8, s9, ra
                  slt          s8, t0, gp
                  addi         a5, s0, -1383
                  slt          ra, gp, a3
                  xori         s10, t6, 893
                  xor          sp, s10, t1
                  bgeu         a0, gp, 161f
161:              add          s7, t4, t2
                  sll          s6, ra, a7
                  srl          s5, t6, t5
164:              nop
                  lui          a6, 20029
                  sltu         s2, a0, s2
                  or           s2, t5, a7
                  bne          a7, a5, 180f
169:              srli         s1, t1, 1
                  xori         sp, s11, -913
                  srai         s4, s7, 2
                  or           s10, t1, a5
                  beq          sp, s5, 176f
                  lui          s6, 483211
                  andi         s9, s9, 1830
176:              xori         a1, a2, 1708
                  sltu         s10, a7, t4
                  nop
                  beq          s0, ra, 190f
180:              slt          s6, t6, s3
                  slti         zero, s8, 1946
                  xor          t2, sp, a5
                  sra          t0, tp, t6
                  ori          s1, a7, -1629
                  sll          tp, a3, t1
                  add          s5, s0, s11
                  slt          a0, s4, a1
                  sll          s8, s0, s3
                  andi         t1, s10, -1594
190:              sub          sp, a0, a0
                  sltu         s3, sp, ra
                  ori          s10, a7, -475
                  sltu         a3, a7, a3
                  sll          s11, s8, a7
                  sltiu        t3, ra, -340
                  sltu         gp, gp, a3
                  and          a6, s3, sp
                  beq          a6, ra, 215f
                  srai         t1, s10, 27
                  beq          t3, s5, 206f
                  ori          s8, s5, 160
                  bne          t0, zero, 215f
                  sll          a1, s8, s9
                  bltu         t3, s5, 218f
                  slt          sp, t6, t4
206:              bne          a2, s10, 218f
                  sll          t2, s11, ra
                  slt          t2, sp, a3
                  lui          a3, 162660
                  auipc        s4, 372894
                  xori         ra, t6, 939
                  srli         t3, a6, 14
                  srai         s0, t6, 0
                  bgeu         s6, a4, 230f
215:              addi         s11, s0, -977
                  xor          t0, s11, a4
                  addi         tp, a7, -73
218:              bltu         t1, s7, 233f
                  add          a6, s3, gp
                  beq          ra, s1, 231f
                  andi         s5, zero, 786
                  bgeu         s9, a1, 223f
223:              nop
                  srl          t1, s9, s11
                  sltu         s6, t5, s7
                  ori          s1, s2, -1328
                  sltu         t2, a2, s10
                  and          s9, a7, a4
                  lui          s10, 91090
230:              bge          sp, t3, 244f
231:              sra          t0, s2, a0
                  auipc        s9, 988625
233:              slti         t0, s1, -221
                  sltiu        sp, s3, -187
                  blt          s5, a2, 254f
                  xor          t1, s8, s11
                  addi         t4, s10, -1385
                  slti         t4, gp, 1770
                  andi         a0, zero, -1920
                  sltiu        s1, sp, 1072
                  slt          zero, zero, s6
                  bltu         a6, a5, 256f
                  sltiu        s5, sp, -1486
244:              xori         ra, a5, -1785
                  sll          s4, s5, a1
                  sltiu        s6, a7, 437
                  add          sp, t5, a2
                  sub          s3, t5, s6
                  slt          a2, a0, a6
                  sub          gp, s6, a1
                  add          s9, s1, sp
                  auipc        s4, 982261
                  andi         a1, t6, 1066
254:              bne          s8, t3, 257f
                  andi         s6, s4, -530
256:              bgeu         a1, s9, 261f
257:              slli         s9, s5, 2
                  srli         s5, t6, 26
                  auipc        s0, 859503
                  sltu         s9, s8, t0
261:              and          s6, a4, t4
                  or           s1, t2, s11
                  la           s7, region_1+569 #start riscv_load_store_rand_instr_stream_3
                  sw           t5, -53(s7)
                  lb           t6, -12(s7)
                  sll          s0, t5, a5
                  srl          s11, a3, s3
                  lhu          s1, 45(s7)
                  sb           t6, 46(s7)
                  lb           a0, 14(s7)
                  lbu          s6, 34(s7)
                  slti         t0, t3, -1046
                  lbu          zero, -39(s7)
                  lbu          t6, -13(s7)
                  sb           a4, -46(s7)
                  sb           s4, 12(s7)
                  or           a2, t1, t1
                  srl          t3, s6, s8
                  sltu         tp, t0, gp
                  lb           s0, 44(s7)
                  xori         s11, sp, -418
                  xori         s8, s5, 1884
                  sb           a6, -34(s7)
                  lbu          s4, 8(s7)
                  lb           t3, -9(s7)
                  sb           s3, -47(s7)
                  sw           a1, -33(s7)
                  lb           gp, -23(s7)
                  lui          a5, 386215
                  lb           s3, 47(s7)
                  lbu          a3, -22(s7)
                  lbu          s11, -50(s7)
                  slli         sp, a0, 26
                  sb           a0, -10(s7)
                  srl          gp, a1, ra
                  lb           a2, -38(s7)
                  lb           sp, -45(s7) #end riscv_load_store_rand_instr_stream_3
                  xor          a2, s2, zero
                  sra          t6, gp, t1
                  add          a5, a4, gp
                  ori          ra, a3, -797
                  srl          s10, t6, s2
                  bge          s8, a3, 269f
269:              lui          t3, 108058
                  or           ra, a3, s3
                  slti         ra, a0, -997
                  nop
                  auipc        a5, 133191
                  sltiu        a0, s11, 1989
                  blt          a5, s8, 277f
                  nop
277:              blt          s5, t0, 283f
                  add          t1, s9, a6
                  sub          s3, a6, s8
                  or           t1, t0, s8
                  bgeu         s2, t5, 290f
                  nop
283:              sltiu        s4, t6, 1520
                  sll          ra, s0, t3
                  bne          zero, s7, 286f
286:              beq          s3, s2, 304f
                  blt          a0, s5, 306f
                  blt          a2, a7, 302f
                  srli         t6, s10, 21
290:              beq          s5, ra, 295f
                  srli         s10, a1, 0
                  bge          a4, s9, 301f
                  slli         s4, a0, 1
                  srai         gp, s1, 7
295:              xori         s3, a4, -622
                  sltiu        s7, t4, -1595
                  and          t2, a5, zero
                  slti         s5, s5, -1768
                  andi         s2, a2, 594
                  bne          s10, s11, 305f
301:              add          s4, zero, s11
302:              bltu         s5, ra, 308f
                  auipc        s6, 959933
304:              slli         a2, s11, 2
305:              slli         a2, a2, 4
306:              bge          t3, t5, 318f
                  srl          ra, s4, s3
308:              nop
                  srli         tp, a3, 14
                  sltu         s0, zero, t3
                  sltu         s5, ra, t5
                  bge          s7, a5, 328f
                  bne          a5, t0, 332f
                  slti         a0, t6, 269
                  addi         t4, ra, 1832
                  blt          s4, tp, 334f
                  bge          a5, t6, 331f
318:              slt          s9, t5, t0
                  slt          s8, sp, t6
                  lui          s11, 399629
                  bne          s5, t1, 336f
                  srl          s7, s3, s5
                  xor          a0, t5, t6
                  bltu         s5, s11, 325f
325:              sra          t2, s4, s2
                  andi         a2, sp, 288
                  and          s8, s6, a3
328:              sltiu        ra, s10, -1003
                  beq          s8, a4, 332f
                  addi         ra, t0, -293
331:              beq          a5, a0, 344f
332:              or           a3, t5, a1
                  sll          a6, s3, zero
334:              lui          a2, 866619
                  and          s10, t1, sp
336:              and          a2, a2, t5
                  xor          zero, gp, s3
                  nop
                  auipc        s5, 39959
                  sll          a1, s3, s3
                  bltu         t2, t2, 355f
                  auipc        a6, 192653
                  xori         gp, s11, -1724
344:              xori         s5, s11, 1919
                  addi         t1, a5, 256
                  srai         a0, t3, 20
                  or           t6, s10, s6
                  bge          zero, t5, 359f
                  bge          s2, a6, 366f
                  srli         s2, s2, 25
                  sltu         t6, t3, s1
                  ori          a1, t2, -1060
                  auipc        t1, 824728
                  srai         t1, s1, 6
355:              nop
                  and          a6, s6, s7
                  slli         s5, t2, 20
                  blt          s4, s9, 367f
359:              bgeu         t6, s9, 375f
                  andi         t6, t2, -479
                  slti         a6, s0, 985
                  sll          sp, a4, s8
                  auipc        tp, 480149
                  sub          s2, a6, s5
                  sltu         t4, a1, a3
366:              bge          a7, t2, 377f
367:              bltu         s5, s8, 370f
                  slli         s9, zero, 2
                  beq          s2, zero, 375f
370:              blt          s10, t0, 379f
                  srl          tp, zero, a7
                  bgeu         s5, t0, 384f
                  beq          t2, a3, 378f
                  sub          sp, t2, a7
375:              sltiu        tp, s3, -1713
                  bltu         t2, sp, 390f
377:              and          ra, s2, t3
378:              blt          t0, s1, 383f
379:              bltu         ra, zero, 380f
380:              slti         a0, a5, -1260
                  and          a5, a1, s10
                  sra          s4, t5, t5
383:              xor          t6, s10, s0
384:              lui          s8, 203544
                  sll          gp, a2, t2
                  xor          gp, s4, a4
                  bne          t0, a5, 388f
388:              srai         t4, t1, 29
                  andi         zero, a7, -57
390:              or           a1, t2, zero
                  xor          a2, s10, t0
                  and          s3, a2, tp
                  or           a2, a4, s2
                  srl          s4, gp, s11
                  blt          s1, a5, 397f
                  slti         zero, s10, 905
397:              srai         a1, s10, 2
                  and          s1, a7, t3
                  blt          a7, t2, 404f
                  slti         t1, a7, -1354
                  add          s3, t0, t3
                  andi         s8, ra, -656
                  sltu         a6, t2, s2
404:              auipc        gp, 615317
                  blt          a3, ra, 419f
                  nop
                  sltiu        s5, s9, 284
                  auipc        t2, 655408
                  xor          a6, a0, s11
                  slli         s5, s10, 19
                  srli         zero, t4, 14
                  bgeu         zero, zero, 431f
                  add          s4, a6, s3
                  srl          ra, s8, s4
                  slti         s10, s8, -1452
                  auipc        s3, 823825
                  add          s3, t0, s9
                  ori          s0, s0, 1337
419:              addi         a5, a3, -973
                  beq          t3, a4, 421f
421:              and          zero, s7, s10
                  bgeu         a3, tp, 424f
                  bge          s4, a3, 438f
424:              bge          s3, a5, 438f
                  auipc        s6, 31735
                  nop
                  ori          sp, a4, 1141
                  lui          s4, 790453
                  nop
                  srai         tp, s4, 19
431:              lui          a2, 397662
                  sll          t0, a5, t4
                  add          a2, s10, t6
                  bge          s2, a7, 439f
                  bge          s11, a5, 454f
                  bgeu         gp, t3, 445f
                  srl          t0, s11, a4
438:              slt          a2, a6, s9
439:              sltu         s5, a2, a4
                  sra          sp, gp, s10
                  and          t2, s3, a2
                  auipc        s9, 584026
                  add          s0, t6, t3
                  slt          s0, s6, s1
445:              bltu         a7, sp, 456f
                  lui          a5, 952121
                  slt          a6, s4, s10
                  sub          a6, tp, t5
                  nop
                  xor          t3, s1, s10
                  andi         t6, s7, -1263
                  slti         s6, s3, -1391
                  bgeu         a6, s6, 465f
454:              nop
                  ori          t1, s2, -306
456:              slli         s8, ra, 14
                  or           s8, s6, s4
                  slti         a2, t4, -1361
                  slti         t6, s0, -1872
                  srl          s7, t4, gp
                  blt          t4, t4, 462f
462:              slli         s10, s9, 12
                  slt          t1, s0, zero
                  srl          s2, t1, tp
465:              srli         s4, t6, 5
                  or           a1, s1, s9
                  lui          t0, 555210
                  lui          s5, 279208
                  lui          t3, 635175
                  ori          s0, s1, 271
                  or           a6, a2, zero
                  srai         s11, t3, 1
                  auipc        s5, 635726
                  slli         s5, a4, 13
                  slli         t4, t1, 0
                  slti         t1, a6, 640
                  sltiu        s8, a0, -237
                  srli         s8, gp, 24
                  bgeu         t2, s5, 488f
                  and          gp, gp, tp
                  nop
                  sub          ra, a0, a7
                  slt          s3, s6, gp
                  xori         a1, a6, -23
                  slli         a2, s10, 20
                  sltu         s10, sp, s4
                  or           tp, t6, t1
488:              slti         tp, a1, 1838
                  nop
                  sub          sp, s1, t5
                  sra          s5, t3, t6
                  or           a3, tp, s8
                  sra          s5, t4, t4
                  xor          tp, s2, s1
                  sra          a0, t0, s11
                  xor          s2, a1, zero
                  lui          zero, 114317
                  bge          sp, a3, 501f
                  or           t6, t5, s7
                  blt          t6, t0, 512f
501:              sltu         s2, t5, gp
                  auipc        s11, 884233
                  xor          a3, s5, t2
                  or           a1, a4, t5
                  slli         t0, zero, 29
                  srai         t0, tp, 29
                  auipc        t3, 691904
                  bne          s1, s7, 526f
                  bne          a4, ra, 510f
510:              slli         t2, t6, 3
                  slti         a3, s6, -797
512:              xor          a0, a4, s4
                  bne          s11, t5, 526f
                  addi         s7, a7, -1320
                  srai         sp, sp, 9
                  sll          s1, a6, s5
                  andi         ra, a0, 757
                  slli         ra, a4, 20
                  srl          a5, a1, t5
                  srli         t4, a4, 14
                  or           s6, t4, t2
                  addi         s8, t2, -703
                  blt          a3, s0, 539f
                  bgeu         t3, s5, 525f
525:              slti         s1, t5, 1536
526:              xori         s10, a4, 1927
                  andi         t2, tp, -1054
                  sra          s2, s5, s11
                  addi         a1, a7, -971
                  sra          a6, s4, a4
                  srl          t4, s3, sp
                  andi         sp, t5, 590
                  addi         a6, s9, 706
                  sra          t0, s6, s6
                  sll          sp, t5, a5
                  bne          a2, s3, 541f
                  sltiu        s5, gp, 1401
                  lui          a3, 204005
539:              and          t1, t3, a6
                  bgeu         tp, s4, 554f
541:              auipc        tp, 2369
                  addi         s7, s5, -1349
                  add          s11, s1, s5
                  slli         a6, a4, 18
                  bge          a3, s6, 546f
546:              ori          s1, s5, -1795
                  ori          t2, a4, -880
                  sra          s6, ra, s2
                  blt          s3, t0, 568f
                  ori          s10, s0, 706
                  srai         s6, a7, 11
                  or           t0, ra, t6
                  add          a6, s2, tp
554:              bge          a6, t6, 565f
                  beq          gp, s1, 571f
                  blt          a2, zero, 570f
                  sltu         t4, s4, s2
                  xori         t0, t5, 674
                  sra          s9, gp, s10
                  srai         s1, t2, 29
                  bltu         a1, t4, 567f
                  srl          a6, s10, gp
                  lui          s11, 983883
                  bltu         t5, s9, 581f
565:              slt          s1, t2, a5
                  xori         tp, a2, 1138
567:              xori         s5, t2, -1571
568:              or           sp, a5, a4
                  srli         s9, t2, 25
570:              lui          s0, 252981
571:              auipc        s2, 847942
                  andi         a3, a5, 1102
                  bge          a0, t0, 587f
                  sltiu        a0, a7, 1030
                  auipc        s4, 365506
                  la           s7, region_0+1493 #start riscv_load_store_rand_instr_stream_0
                  addi         t0, t4, 790
                  srl          t6, a1, t0
                  lbu          s9, 202(s7)
                  lb           s11, -831(s7)
                  and          tp, s7, gp
                  lbu          s0, -684(s7)
                  lw           zero, -229(s7)
                  lbu          a0, 476(s7)
                  sw           sp, 495(s7)
                  srl          a2, a5, a2
                  slli         tp, gp, 1
                  sb           s1, -217(s7)
                  sb           t0, -965(s7)
                  lh           t4, -179(s7)
                  lui          a1, 1015498
                  sb           t3, -879(s7)
                  sb           t5, -686(s7)
                  auipc        zero, 808174
                  lb           s1, -756(s7)
                  sb           s1, -1236(s7)
                  sll          a6, gp, a5
                  sltiu        s5, s10, 287
                  and          a1, a1, s5
                  lhu          s6, -747(s7)
                  lb           a1, -129(s7)
                  lbu          s0, 496(s7)
                  sb           t0, -636(s7)
                  add          t1, s8, tp
                  sub          a6, ra, t5
                  lbu          gp, -1154(s7)
                  lb           a5, -254(s7)
                  srli         ra, t5, 4
                  and          s8, s9, s10
                  lui          a1, 247229
                  sb           a0, -853(s7)
                  srli         ra, t1, 28
                  sb           s3, -790(s7)
                  lb           s9, -47(s7)
                  lhu          t2, -297(s7)
                  lw           s3, -789(s7)
                  ori          s1, sp, 510
                  lhu          a6, -1115(s7)
                  lbu          tp, -87(s7)
                  lbu          s4, -942(s7)
                  lhu          gp, -787(s7) #end riscv_load_store_rand_instr_stream_0
                  auipc        a2, 374391
                  blt          a2, a7, 582f
                  slt          a5, s7, a6
                  bltu         zero, s0, 582f
                  sll          s3, tp, s8
581:              add          t3, t3, s5
582:              slli         t0, tp, 16
                  and          s5, a3, t0
                  srl          t1, s4, s4
                  or           t0, a2, s2
                  andi         tp, t5, -128
587:              andi         s4, a1, -1697
                  lui          s10, 253838
                  srli         a6, t3, 30
                  or           s8, a5, ra
                  sltiu        s9, gp, -78
                  andi         a1, a7, -1565
                  slli         a2, t5, 13
                  bne          gp, s2, 600f
                  auipc        a6, 160418
                  bgeu         t4, s8, 608f
                  slli         a2, a4, 21
                  sltiu        a5, a0, -239
                  bgeu         t0, t4, 611f
600:              ori          a3, a0, -696
                  sltiu        t6, s3, 1218
                  ori          s7, s0, -1288
                  sltiu        s3, s1, 297
                  lui          t2, 513239
                  sltu         a1, s3, gp
                  sll          s5, s0, s4
                  sll          t6, a5, s5
608:              bge          a2, t5, 613f
                  sra          ra, a7, s10
                  xor          s1, a3, s1
611:              srli         t0, t5, 9
                  srli         s7, a2, 1
613:              addi         s6, s0, -794
                  lw           s10, 4(a4)
                  srli         s7, t1, 12
                  nop
                  sll          s11, t6, zero
                  addi         a4, a4, 8
                  sra          s5, s3, a6
                  lui          a2, 318220
                  or           s1, a5, t6
781:              addi x21, x26, 1
781:              jalr x21, x21, 0
sub_1:            addi         a4, a4, -16
                  sw           s10, 4(a4)
                  and          s9, t3, s4
                  nop
                  or           ra, t5, t1
                  sltiu        s6, s11, 556
                  lui          t6, 503881
                  and          s0, a7, s9
                  and          sp, t6, s10
                  srli         a0, a4, 21
                  addi         s5, t1, 1595
                  srl          zero, s11, a7
                  la           a5, sub_2
                  srli         t3, a2, 25
                  srl          ra, a1, t5
                  sub          s1, a7, s3
                  slti         t0, s9, -1626
                  addi         a5, a5, -309
                  slt          s4, t1, tp
                  addi         a6, t6, 649
                  slli         zero, ra, 12
                  xori         t6, gp, 1410
                  bgeu         s2, s7, sub_1_j2 #branch to jump instr
                  xori         ra, t2, 1079
sub_1_j2:         jalr         s10, a5, 310 #jump sub_1 -> sub_2
                  la           gp, sub_2
                  sll          a0, s7, s4
                  ori          a1, t2, -673
                  addi         gp, gp, -610
                  or           s1, a4, s6
                  slt          a6, s9, s7
                  slt          s7, t0, s4
                  srai         a1, s8, 26
                  slli         t4, s4, 4
                  nop
                  srai         s0, s8, 22
                  srl          tp, t0, t5
sub_1_j3:         jalr         s10, gp, 611 #jump sub_1 -> sub_2
                  la           sp, region_0+433 #start riscv_load_store_rand_instr_stream_2
                  or           a0, s8, s10
                  ori          t2, zero, 1942
                  srl          s5, gp, a4
                  lb           s9, 869(sp)
                  slli         s8, s5, 25
                  lb           a1, 60(sp)
                  and          gp, s9, tp
                  lb           tp, 248(sp)
                  slti         t4, a5, 925
                  slt          s1, s6, t3
                  lbu          zero, 1416(sp)
                  slti         s6, s11, -1410
                  add          t6, s8, s1
                  lbu          a3, 544(sp)
                  auipc        s2, 161885
                  lb           t3, 1178(sp)
                  sub          s10, a6, zero
                  slti         ra, s2, -663
                  lh           a6, 1423(sp)
                  srai         t1, s0, 18
                  or           a6, a5, s3
                  sb           a2, 344(sp)
                  addi         s9, s6, 751
                  auipc        t1, 963169
                  andi         s2, zero, 365
                  lbu          s10, 563(sp)
                  slti         t0, s4, -922
                  lb           zero, -8(sp)
                  sb           s5, 717(sp)
                  sltu         t1, a1, a0
                  sh           s2, -273(sp)
                  auipc        tp, 508607
                  lui          s0, 76184
                  xori         a3, zero, 1358
                  lhu          gp, 219(sp)
                  srai         s1, t6, 27
                  sra          ra, zero, a0
                  addi         s10, sp, -1740
                  srai         a0, s8, 4
                  auipc        s4, 525221
                  addi         s7, t2, 1225
                  lb           ra, 1499(sp)
                  sw           a2, -401(sp)
                  xor          t1, a2, a7
                  sb           gp, 912(sp)
                  lb           t3, -279(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1041 #start riscv_load_store_rand_instr_stream_1
                  and          a5, a5, s6
                  lb           s3, 40(sp)
                  sw           a3, -37(sp)
                  lb           s6, 60(sp)
                  lb           a0, -4(sp)
                  lbu          s5, 56(sp)
                  lw           s11, 51(sp)
                  auipc        s6, 279938
                  and          s7, tp, t3
                  and          gp, s2, t6
                  sh           s7, -9(sp)
                  lb           t4, -30(sp)
                  sra          s5, s4, zero
                  sh           t2, 21(sp)
                  lbu          s11, -6(sp)
                  nop
                  lb           s1, 43(sp)
                  and          s1, zero, a4
                  lbu          gp, 20(sp)
                  lbu          s10, -12(sp)
                  andi         t2, s10, 1665
                  lb           s3, 36(sp)
                  lb           s2, -19(sp)
                  sb           t6, 40(sp)
                  sb           s8, -14(sp)
                  lw           s7, -9(sp)
                  srl          zero, s9, s7
                  srl          s4, sp, a7
                  xori         t3, s1, 719
                  sb           a0, 27(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_0+1799 #start riscv_load_store_rand_instr_stream_0
                  lb           a3, -15(s9)
                  sra          s1, t5, s8
                  srai         a0, s6, 31
                  srli         s5, s2, 7
                  lhu          t1, -45(s9)
                  ori          t4, a4, -743
                  ori          t3, s6, -1686
                  andi         s1, a4, -868
                  sll          s7, t1, a5
                  lui          t2, 182486
                  sltiu        s2, ra, 596
                  lui          t4, 483178
                  xori         t2, a2, 2040
                  lbu          s3, 172(s9)
                  slt          s7, t1, sp
                  srai         a0, s2, 24
                  sltu         t1, s6, sp
                  sw           s9, -139(s9)
                  sll          t1, ra, sp
                  sltiu        t4, a4, -1500
                  sra          s3, t0, gp
                  xor          tp, s8, t3
                  lb           s1, -121(s9)
                  sb           a5, -193(s9)
                  srl          s1, s10, a6
                  xori         a0, sp, 430
                  slti         t0, a4, -1264
                  nop
                  sltu         a5, t0, zero
                  addi         sp, s8, 609
                  lb           a6, 185(s9)
                  and          a1, a3, a7
                  lb           gp, -240(s9)
                  lb           zero, -30(s9)
                  lbu          s5, -98(s9)
                  slt          s7, a3, s5
                  slt          a0, tp, a5
                  lw           s10, -143(s9)
                  lb           t0, 190(s9) #end riscv_load_store_rand_instr_stream_0
                  sltiu        a6, t1, -789
                  srai         a2, s9, 17
                  nop
                  blt          a4, a3, 7f
                  xori         s7, s5, 594
                  nop
                  slt          a0, t4, s11
7:                slli         tp, s1, 16
                  srl          a6, s11, s8
                  slti         a0, zero, -647
                  and          sp, a4, s1
                  and          a2, a7, s9
                  sltiu        s8, s4, -642
                  srai         t1, s3, 4
                  xori         t0, ra, -1066
                  slti         s6, s11, 1017
                  sltu         zero, s6, t5
                  bge          a0, a7, 21f
                  sub          ra, s0, t4
                  ori          ra, sp, 1839
                  sub          a3, t3, t0
21:               srli         a0, s2, 4
                  bge          t4, s11, 41f
                  add          s0, zero, s5
                  sltiu        s0, a3, 2031
                  bne          a6, t1, 34f
                  xori         s7, t3, 1769
                  bne          s9, t6, 37f
                  slt          s11, ra, a5
                  bne          a3, t3, 34f
                  and          s9, t0, zero
                  sltu         s9, s0, sp
                  beq          a7, a5, 43f
                  ori          s0, a5, 1523
34:               nop
                  slli         t6, t0, 30
                  and          ra, a4, a4
37:               srli         tp, s4, 2
                  srl          a1, a0, gp
                  slli         s11, tp, 16
                  beq          a4, t4, 47f
41:               xor          ra, a6, t5
                  nop
43:               srli         tp, t1, 1
                  bltu         s10, s5, 52f
                  ori          s4, zero, 1863
                  nop
47:               and          s6, s5, sp
                  xori         t6, s0, 666
                  and          t0, a3, s5
                  sra          s8, zero, s2
                  sltu         zero, a4, s3
52:               blt          t2, s11, 62f
                  blt          s10, a2, 62f
                  or           a3, a6, s8
                  bne          s2, t3, 58f
                  slti         t6, s9, 1474
                  sra          t1, s10, s8
58:               or           a0, a0, tp
                  xori         t3, a4, -1595
                  slli         zero, s7, 26
                  beq          a3, sp, 77f
62:               sltiu        a2, s7, 776
                  nop
                  bltu         a1, t3, 69f
                  beq          s4, t4, 80f
                  srl          s9, t2, s8
                  slli         s11, s0, 13
                  slti         t1, s3, -799
69:               beq          s8, ra, 70f
70:               slt          ra, a5, a1
                  sll          s0, a5, t4
                  slli         t2, s7, 6
                  xori         zero, a0, 29
                  add          a6, t2, a4
                  nop
                  lui          s8, 83932
77:               xori         s6, s1, -925
                  sltiu        a5, a3, -1329
                  add          s2, t4, a0
80:               add          a5, a5, s3
                  slli         a5, s1, 18
                  auipc        t1, 772787
                  xori         a1, a3, 1776
                  slt          a0, a0, s0
                  bne          s5, s4, 103f
                  bge          s3, t1, 94f
                  and          sp, a7, zero
                  srl          s6, a3, t2
                  srai         s6, s9, 23
                  addi         s7, s2, 560
                  andi         s4, a5, -1252
                  slli         t0, a2, 22
                  slli         s8, a1, 6
94:               auipc        s2, 857880
                  and          s6, s1, t4
                  nop
                  sltiu        t4, a3, 1344
                  sll          a2, s7, a4
                  auipc        t1, 405368
                  sltiu        t0, tp, -1634
                  ori          s6, zero, -1765
                  sll          a5, a0, t4
103:              bge          gp, s1, 110f
                  lui          s11, 14083
                  and          s3, s8, s0
                  sub          tp, t0, s8
                  beq          t2, t1, 118f
                  bge          s7, a5, 114f
                  ori          a1, sp, 1449
110:              sltiu        gp, sp, -1458
                  sra          s2, a3, gp
                  xori         a3, s11, 1861
                  xori         s5, t2, -774
114:              bge          a0, s10, 133f
                  andi         t6, s1, -296
                  ori          s10, s11, -1636
                  bltu         t5, s9, 133f
118:              sll          a3, s11, t1
                  srli         a0, t1, 7
                  sll          tp, s4, a2
                  or           t6, t4, s1
                  slt          t2, s4, s10
                  sll          s4, a7, s7
                  bge          tp, a7, 127f
                  add          s7, s1, s3
                  slli         t4, t3, 28
127:              sltu         s6, s10, s1
                  sltiu        a1, a1, 1548
                  slt          s1, a3, a7
                  auipc        s1, 482257
                  ori          s4, a0, 1757
                  addi         zero, t2, 1888
133:              srl          s1, s7, s0
                  srai         a1, s11, 13
                  bltu         s3, t4, 138f
                  slli         a6, t0, 4
                  sll          s10, s11, t2
138:              add          t4, t1, s7
                  srli         s0, sp, 24
                  srl          s3, t4, gp
                  add          t2, s10, t4
                  auipc        t2, 590431
                  sll          s11, a5, ra
                  sltu         ra, s3, s5
                  slti         s9, s3, -1774
                  blt          a3, s3, 165f
                  sltiu        sp, ra, 227
                  or           a2, s9, t5
                  sll          s0, a3, s10
                  sll          s5, tp, tp
                  lui          s2, 306955
                  ori          t2, a7, -1963
                  sll          a1, s3, t6
                  sltiu        t0, a0, -975
                  or           s1, t6, gp
                  nop
                  addi         t4, s5, -1676
                  bne          s5, a4, 166f
                  bne          s0, t6, 170f
                  srli         s2, a5, 4
                  sltu         s0, zero, a5
                  or           a2, t6, s2
                  sub          ra, zero, sp
                  and          s10, t0, s4
165:              xor          a5, s6, s8
166:              lui          t0, 238357
                  blt          zero, gp, 184f
                  bge          a7, gp, 173f
                  bgeu         a4, a7, 177f
170:              slt          s1, a1, a3
                  andi         tp, gp, -1177
                  auipc        s0, 871220
173:              and          s10, t5, t4
                  xori         zero, s11, 1072
                  srli         a0, s2, 12
                  sra          s11, s4, t1
177:              xor          s0, s6, s7
                  ori          t6, a5, -1173
                  blt          zero, s6, 185f
                  bne          t4, t1, 185f
                  slli         a5, t6, 27
                  or           tp, a4, a3
                  sra          t4, s9, a6
184:              srai         s8, s1, 21
185:              addi         s5, s10, 570
                  or           s6, s6, a6
                  sra          ra, s3, s2
                  ori          ra, t0, 1065
                  addi         tp, tp, -654
                  xori         s0, s8, -57
                  ori          t6, tp, 424
                  sra          s1, s2, s2
                  bge          t2, t5, 210f
                  xori         gp, s10, -1322
                  or           sp, s6, s9
                  srl          t0, s4, t4
                  bgeu         t5, ra, 204f
                  addi         a0, gp, -1765
                  sll          s4, s4, s3
                  slti         a1, s8, 687
                  bge          s6, sp, 204f
                  xor          t2, gp, s2
                  xori         t1, s10, -793
204:              and          s3, a2, s0
                  bne          a2, s5, 210f
                  xor          s1, s9, s2
                  bgeu         a7, a3, 210f
                  slli         s2, t2, 22
                  andi         gp, s0, -1624
210:              ori          s10, t1, -1939
                  bgeu         s10, s6, 229f
                  bltu         t3, ra, 213f
213:              xor          a5, t4, s1
                  ori          s0, ra, -385
                  sub          s8, t2, s6
                  blt          a4, a7, 232f
                  slli         s11, t1, 24
                  xor          s7, t0, a3
                  or           s4, t6, s5
                  slli         s7, s11, 7
                  and          s4, zero, a1
                  blt          a6, a2, 233f
                  nop
                  sltu         s4, zero, s11
                  sub          s9, a5, a3
                  slt          gp, s11, s1
                  bgeu         s2, s3, 238f
                  sra          a3, zero, t1
229:              slt          s1, t5, s4
                  add          s4, a0, a0
                  and          gp, t2, gp
232:              and          t2, s4, tp
233:              sub          a1, zero, t1
                  sltiu        tp, sp, -931
                  srai         gp, s2, 17
                  add          s2, a2, s1
                  sub          s9, a5, ra
238:              add          t1, t2, t3
                  andi         s1, s7, 1992
                  andi         ra, a1, -769
                  slli         gp, s2, 21
                  sra          s11, s5, ra
                  sub          s3, a2, s6
                  ori          ra, a6, 71
                  xor          t6, s8, t2
                  xor          s6, s11, t6
                  slt          a1, s2, t2
                  sltiu        s10, s10, 816
                  bltu         s11, s1, 253f
                  bltu         a4, s0, 269f
                  sltiu        s0, s10, 1388
                  bge          s9, s9, 263f
253:              xori         s5, ra, 1139
                  slt          a3, s7, a7
                  sub          a6, s3, s10
                  and          s0, s11, a1
                  or           a1, a4, s1
                  slt          t2, tp, a4
                  blt          a6, t4, 274f
                  srl          a0, sp, a0
                  slt          s5, t1, ra
                  slt          a2, s11, s5
263:              srli         t1, a4, 22
                  srai         a5, t3, 19
                  slti         t1, a0, 281
                  srai         a3, s11, 30
                  bltu         a0, s3, 270f
                  slli         t4, a5, 21
269:              add          a3, t1, gp
270:              auipc        s6, 323959
                  bge          s7, s8, 280f
                  or           t6, a6, t4
                  sll          s7, s2, tp
274:              xor          zero, a2, a0
                  sltiu        s11, s2, -1731
                  nop
                  lui          s0, 407184
                  add          a6, t2, gp
                  srli         s9, s10, 5
280:              blt          a4, s2, 290f
                  ori          a2, a7, -1759
                  add          s2, t3, s10
                  ori          s7, t2, 1758
                  and          sp, s8, s4
                  sra          s7, s0, gp
                  srai         s2, a6, 30
                  blt          s11, t4, 297f
                  sltiu        t6, a1, 1835
                  ori          s6, t3, -1526
290:              or           t1, s11, t6
                  slt          ra, a7, t4
                  ori          s11, a7, 1904
                  ori          s8, a1, -109
                  sltu         s8, s1, s2
                  slt          t3, s7, a7
                  bgeu         a2, gp, 300f
297:              slti         s7, s6, -1115
                  blt          t3, a3, 305f
                  srl          a0, s1, a7
300:              beq          t1, t3, 319f
                  lui          s10, 213583
                  addi         a5, s7, -166
                  sll          s3, s4, sp
                  auipc        zero, 174644
305:              auipc        a5, 295869
                  lui          t0, 47060
                  srli         s11, tp, 16
                  slt          s6, s0, s5
                  srai         t0, sp, 16
                  sub          zero, tp, a4
                  add          s9, a3, s8
                  addi         t6, t3, -1888
                  blt          a7, s6, 329f
                  sll          t3, t1, gp
                  blt          s11, a5, 323f
                  srl          sp, s5, a6
                  slli         s6, zero, 8
                  slt          s6, s10, a1
319:              ori          s5, a3, -1912
                  bltu         t6, a4, 339f
                  nop
                  auipc        s7, 17218
323:              lui          t2, 192158
                  sll          t0, a6, s8
                  slli         a5, sp, 11
                  blt          a6, ra, 334f
                  slli         t1, s6, 28
                  nop
329:              beq          a3, gp, 338f
                  xor          s7, t0, s2
                  slt          ra, s7, s3
                  auipc        s0, 232526
                  slli         s7, ra, 13
334:              xori         s3, s11, 771
                  beq          a5, s9, 340f
                  beq          s5, a6, 343f
                  auipc        a3, 228522
338:              auipc        a3, 453702
339:              lui          s6, 232966
340:              ori          a0, s0, -869
                  sra          s0, a7, s2
                  bltu         a4, t5, 350f
343:              bltu         s3, a0, 354f
                  sra          s10, sp, a5
                  blt          a6, t4, 350f
                  and          s10, ra, a4
                  bltu         a3, t4, 358f
                  ori          s3, a3, 1373
                  auipc        t1, 219945
350:              bne          a4, s4, 354f
                  srli         s4, t3, 30
                  bgeu         s7, gp, 355f
                  lui          s9, 1034404
354:              xori         s3, tp, 1907
355:              srli         s10, a1, 26
                  srai         a1, s8, 4
                  lui          a2, 538823
358:              andi         sp, t1, -1190
                  blt          a1, s3, 369f
                  bge          s6, sp, 366f
                  bne          a5, s11, 364f
                  slli         s10, s11, 12
                  or           t3, s5, s5
364:              add          s1, t1, a3
                  auipc        t0, 746732
366:              blt          gp, t5, 367f
367:              addi         s11, sp, -120
                  sltu         s9, t0, ra
369:              beq          t3, t0, 377f
                  or           ra, s9, s1
                  bgeu         s9, t1, 382f
                  ori          s7, a4, 1907
                  sra          zero, s10, t3
                  srl          s6, zero, a3
                  sub          t1, a5, s7
                  bne          t1, t3, 385f
377:              or           tp, t0, a2
                  andi         zero, s0, -841
                  bltu         s4, gp, 394f
                  sll          s7, s6, a2
                  or           a1, a6, t3
382:              beq          ra, t5, 387f
                  bltu         t0, a4, 400f
                  lui          zero, 637043
385:              srl          t0, gp, s5
                  andi         ra, t6, 1907
387:              srl          t3, s10, t0
                  slli         s2, s11, 4
                  addi         a1, t5, -14
                  sub          s9, t5, a7
                  andi         s6, s4, -181
                  bne          a0, t4, 410f
                  bltu         s9, a3, 409f
394:              srli         s6, s5, 24
                  sltu         s11, sp, a3
                  srli         t4, s4, 6
                  lui          s3, 869981
                  bgeu         s0, a6, 401f
                  bne          sp, zero, 403f
400:              srl          a0, a6, s4
401:              blt          t1, s2, 410f
                  ori          s6, a7, 530
403:              srli         t2, s0, 7
                  bgeu         s0, t4, 410f
                  sub          s3, s3, ra
                  slli         s2, s8, 24
                  nop
                  slti         s8, a5, 1463
409:              or           zero, tp, s5
410:              sra          a2, s5, tp
                  nop
                  sltu         t1, a0, a7
                  add          s6, t4, a4
                  lw           s10, 4(a4)
                  sltiu        s4, s10, 1159
                  addi         a4, a4, 16
                  lui          t4, 313056
                  xori         s6, s10, -903
                  add          a3, s9, t6
576:              addi x19, x26, 1
576:              jalr x19, x19, 0
sub_3:            sra          a3, a5, s1
                  addi         a4, a4, -60
                  addi         t4, a6, -1685
                  addi         a2, t4, 86
                  sw           s10, 4(a4)
                  or           a2, s4, s2
                  sll          t3, t3, s10
                  slli         s9, s10, 13
                  bgeu         s0, s8, sub_3_j7 #branch to jump instr
                  slt          s5, s9, t4
                  xori         s0, a7, 405
                  sll          zero, a6, t1
                  ori          t1, gp, 1304
sub_3_j7:         jal          s10, sub_6 #jump sub_3 -> sub_6
                  lui          s6, 666757
                  lui          a6, 933155
                  ori          t1, s0, -239
                  xor          a2, t5, a4
                  srai         s8, s6, 4
                  sra          s1, t1, s2
                  sll          ra, s5, s5
                  ori          a2, t2, 1788
sub_3_j8:         jal          s10, sub_6 #jump sub_3 -> sub_6
                  and          sp, s10, a1
                  slli         t1, a4, 7
                  srl          s1, a3, a0
                  sub          t4, s1, a2
                  slli         s9, s2, 14
                  bltu         s3, ra, sub_3_j9 #branch to jump instr
                  slti         ra, s5, -1464
                  srai         t1, s9, 14
                  xor          s4, zero, t6
                  auipc        gp, 731246
                  xor          t6, s9, s9
sub_3_j9:         jal          s10, sub_5 #jump sub_3 -> sub_5
                  or           tp, s7, a2
                  auipc        s9, 454129
                  auipc        tp, 440367
                  beq          s0, t2, 7f
                  and          t2, s7, t2
                  add          sp, a5, s2
                  sra          s11, a3, s6
7:                andi         a3, t6, -1505
                  addi         s1, s11, 67
                  lw           s10, 4(a4)
                  srl          s7, t0, s1
                  lui          s8, 753361
                  addi         a4, a4, 60
                  nop
49:               addi x13, x26, 0
49:               jalr x13, x13, 0
sub_9:            addi         a4, a4, -8
                  lui          t4, 155949
                  srai         s3, zero, 12
                  sltiu        s0, s8, 32
                  sw           s10, 4(a4)
                  slli         t1, a2, 3
                  sra          a6, s0, t4
                  slt          a2, a0, a3
                  sra          tp, s5, t4
                  sub          s4, gp, s8
                  beq          s2, s11, sub_9_j14 #branch to jump instr
                  slti         zero, s9, 519
                  add          s4, s4, ra
                  sll          s3, a3, t2
sub_9_j14:        jal          s10, sub_10 #jump sub_9 -> sub_10
                  addi         s0, a6, -1327
                  sll          a0, s11, s3
                  la           a5, sub_10
                  addi         a5, a5, 559
                  sub          a3, t6, s4
                  and          s5, a4, a5
                  or           s4, t5, t2
                  bgeu         t5, zero, sub_9_j15 #branch to jump instr
                  sltu         s8, t5, sp
                  ori          a0, s5, 209
                  srai         a0, a0, 13
sub_9_j15:        jalr         s10, a5, -559 #jump sub_9 -> sub_10
                  beq          s7, a5, 1f
1:                blt          a5, a1, 2f
2:                slli         t0, zero, 11
                  blt          a5, ra, 11f
                  sltu         s10, a5, a7
                  srai         s2, s2, 10
                  bgeu         s11, t1, 7f
7:                bgeu         t6, s4, 16f
                  blt          gp, t0, 16f
                  slti         s2, gp, 1299
                  or           s11, tp, t1
11:               bne          a0, ra, 16f
                  beq          s8, s6, 16f
                  sltiu        s2, a3, 1591
                  sltiu        s3, a3, -180
                  srai         s5, s6, 11
16:               sra          sp, gp, t2
                  lw           s10, 4(a4)
                  sra          s8, s4, s1
                  addi         a4, a4, 8
                  ori          a3, s1, 419
                  ori          s11, t0, 1462
                  ori          s5, ra, -299
50:               addi x19, x26, 1
50:               jalr x19, x19, 0
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
.word 0x727183ca, 0xac73d202, 0x89b19814, 0x9f8377c3, 0x10d384c4, 0xb2ecaec5, 0x9785317a, 0x5779c329
.word 0x6dd37817, 0xd83bc534, 0x9acb94ed, 0x9ead0405, 0x9369ff89, 0x325d1749, 0x0b521fbc, 0xff0075e7
.word 0xcd6d72c5, 0x970487c3, 0x29194bfd, 0xf8563de5, 0xe911116a, 0xb7571088, 0xbc3879ec, 0xdd87feb9
.word 0xb91ed15a, 0x35ab6351, 0x89c90c36, 0xee0195c6, 0xbce6d07e, 0x5b3fd093, 0x9ae5943f, 0x13de0d36
.word 0xf6531e1d, 0x2bbbb83c, 0x65450f25, 0xe9f22fbd, 0xa5ba6803, 0xb37f29a0, 0xa01e5a21, 0xa2c140be
.word 0xa8347310, 0x488fa043, 0xa7395a3b, 0xd7a6c040, 0x7beb1598, 0xb5462a71, 0xf2c98c7d, 0xd981f8ae
.word 0xfa335923, 0x48308549, 0x80cb0673, 0xc3d41c68, 0x80444ea0, 0xce2f3ed8, 0xc05a5f0c, 0xccb944b2
.word 0x07362166, 0x0b6f1941, 0xfbbedd01, 0x169affd7, 0xb952a21f, 0xa04888ff, 0x9ffec792, 0xa5e170ee
.word 0x1355e8e8, 0x50926130, 0xd5dec70d, 0x24042f71, 0x0f31539c, 0xe6c09194, 0x9b70f5f4, 0xe59d4f55
.word 0x5e14a14e, 0xc83c79c1, 0xd2c59dfc, 0x06461128, 0xd5822d73, 0x64725d87, 0x6a09eb76, 0x40c4c22d
.word 0xd7e41df2, 0x24a225f4, 0x0f788443, 0x8353e8a6, 0xad928f57, 0xdd12d99b, 0x5fdf3062, 0xc27547c0
.word 0xd87d3613, 0x402d651c, 0xa348a839, 0x509822b5, 0xab61168c, 0x899e1368, 0x2c3298eb, 0x3f1b06f8
.word 0xb63fe0e6, 0xa5af8c40, 0xb41de46e, 0xc3c594ff, 0xc33e4585, 0x97afc3a3, 0xaa568173, 0x355db143
.word 0xb8c07cbc, 0x407ad5d4, 0x254faded, 0xd80ddf5e, 0xbda7c1c1, 0x86f3c8b2, 0x8edce4ff, 0xb2730ca4
.word 0xf3729b4c, 0xdd6a3037, 0xe820c229, 0xfa9480fc, 0xb6f5e0da, 0x7cb6c49b, 0x5081fabd, 0xe7988569
.word 0x073c5c5c, 0xe2e89eb3, 0x87e30639, 0x1459aef7, 0xb178c0ec, 0xeade8807, 0xec63a2c0, 0x39b3e6d0
.word 0xa637eb7e, 0x99384d61, 0xc4f9bb70, 0x0bd6b475, 0xce8a38a4, 0x12faa01b, 0x1efd3418, 0x21313f84
.word 0x0cc2c160, 0xf95c3ee5, 0x116aae2a, 0x8113573d, 0x763e152c, 0x672a4d29, 0x28f73b75, 0x6e977376
.word 0x071162c9, 0xe2007cfd, 0xb41f1794, 0x76dd50d7, 0x2fd6c82b, 0x579e2010, 0x1e687dc3, 0x0adc0661
.word 0x3316a700, 0x94ded65b, 0x50ae4600, 0xecbb4d6f, 0x2e4cb80f, 0xf0b18d4c, 0x0693215e, 0xea2dea78
.word 0xba9e8b48, 0xd555526f, 0x32aafebe, 0x176e5b84, 0x7d4f12c4, 0x460616a7, 0x7472a304, 0x854bd04e
.word 0x003326b9, 0x0159a645, 0xacf36251, 0x62da59d9, 0x018a615e, 0x9565d285, 0xa25aeaed, 0xc5c3b479
.word 0x0affae07, 0x10e056ca, 0x3120f581, 0x88b538af, 0x4bf6198b, 0xba6d9c31, 0xb3a4ea0f, 0xbc7ff9a0
.word 0x4ea0c96e, 0x2922760b, 0xdbe6436d, 0x4d1bd272, 0x5cd91d46, 0x8cf1731c, 0xd310534d, 0x266b6706
.word 0xafce23c5, 0x140f4588, 0x2b219269, 0xd27c84eb, 0x238cec54, 0x9c2ee908, 0x14b0edfe, 0xc92e412a
.word 0xcf715257, 0x02cb9edc, 0xb5e71073, 0x8ce0b104, 0x3c61eb94, 0x44f322ce, 0xbfb5e688, 0xbf4c24a0
.word 0xbef48a77, 0x6d851f21, 0xa7d3f436, 0xa44cc961, 0xe72b8af8, 0x3f254011, 0x8e7913cd, 0x5d12b201
.word 0xa4fb4aeb, 0x927d81d0, 0x8757b71d, 0x0e5f51fe, 0x346059e1, 0x0ae7aec9, 0x342d44ab, 0xd6b6aa88
.word 0xa2299ebc, 0x447beafb, 0x603e2d4a, 0xd33562fb, 0x048d2e87, 0x892adf4f, 0x45488b32, 0x8de94496
.word 0xf3eb6c35, 0xe8462041, 0xc0e2d0f3, 0x6ae3e058, 0xcea46d98, 0x74dbd1a8, 0x785d75ab, 0x26048d45
.word 0xfc9d94b9, 0xf359dc08, 0xf469d634, 0x7c01b103, 0x4bc9245c, 0x2f70948f, 0xe2259d5e, 0xe13b9c9a
.word 0xc21e0546, 0xdbd33e97, 0x85d23f97, 0x6bf937b6, 0xbc1a935f, 0xc36765ae, 0x6c7ada40, 0xa4a26012
.word 0x32786978, 0x056b6c6d, 0x975e98a0, 0x3c5517dc, 0x812b9f55, 0xcbd73fc7, 0x86d91733, 0xb136b74e
.word 0xea0d77d1, 0x79475114, 0x62164d82, 0xcec859f9, 0x3d24b83d, 0x6cc3b6c8, 0x135c7afd, 0xe7e1db3e
.word 0x95a90ec4, 0x8142abad, 0x73fa0b61, 0x9d4827a1, 0x3dd331ae, 0x04695a50, 0x9d03c20e, 0xe346b91a
.word 0x3f6f8f71, 0x047480a0, 0xe2995fbb, 0x22a10f8c, 0x75d3e07c, 0xf1078dad, 0xf46bc9dd, 0x66835859
.word 0xb8f1f3cc, 0x6228ec15, 0x8be2f9c8, 0xd8fa81ce, 0xb55bb350, 0x95a69404, 0x9b052fb7, 0xf3bf013d
.word 0xcb807167, 0xb46e267d, 0xdd19fce0, 0x9b6a1ac6, 0x7b4db4e7, 0xf25496e1, 0x7348ceb7, 0x91b006fc
.word 0x67153842, 0x70c68c30, 0x1aa4997e, 0x18ff574c, 0x110bbdbe, 0x33fb7208, 0x47d8e10b, 0xab1ade20
.word 0x65052a35, 0xfd4e34c0, 0x6fa13002, 0x5f32ed8f, 0x7d0ac1af, 0x504173c8, 0x56b41d5e, 0xee96f199
.word 0x6d424090, 0xa135ef6d, 0xf14172d9, 0x15461f08, 0x2f308f2e, 0x01c4f626, 0x45079ecd, 0x17142c24
.word 0xdc91acf4, 0x94ad9aa4, 0x7e1cc6f4, 0x09b07a96, 0xfa5d58a3, 0x3a9226d7, 0x5e0a51b6, 0xc345ab95
.word 0x6156e456, 0xe2d3e8b5, 0x6422037a, 0x803f4293, 0x5ec92a55, 0xdd37e289, 0xd625c40f, 0x09ac3a9b
.word 0x1175e672, 0xae8ee2ed, 0xea7b3338, 0x8116bf2d, 0x3be67f25, 0x18a0cd04, 0xddc632ac, 0xd274955f
.word 0x9988d327, 0xaa1260c3, 0x694a30a7, 0xe9819c43, 0xac8bc942, 0x74530f68, 0xcd19e093, 0xab3ac823
.word 0xc4ae3258, 0xd74d875b, 0xdcb8844a, 0xbe259da6, 0x1a2dabb4, 0xca4784de, 0x7cf23998, 0xa69de3c4
.word 0x2dce668c, 0x82d778cd, 0x259b4b78, 0x7c17987d, 0x5765a67b, 0xa4fb2d21, 0x0f9725d4, 0x8e4ee9f8
.word 0x9c1a8e5b, 0xbaa96bd8, 0x3a5df6f7, 0xd97d7ae3, 0x0ed47a28, 0xfa613054, 0x2279f982, 0x5bd8b485
.word 0x1adaf393, 0xb3597ccd, 0x8709b994, 0xdcc9fea3, 0x34e77936, 0x80ab21ac, 0xfc89bbae, 0xe19aa4c1
.word 0x967c4402, 0x664971ec, 0xab03df29, 0x9962cb91, 0x9b42f93e, 0xeaec2987, 0xf7991994, 0x6cb1e774
.word 0x40099fbd, 0xdc9d504f, 0x06c2cc40, 0x3a46e594, 0xf899f401, 0xdcf64ea9, 0x32e3293b, 0xeeb81d1c
.word 0x32815a7d, 0x8951f528, 0x8143d326, 0x2bfce139, 0xfc6cf7ec, 0x1e8eb8df, 0x99062e8e, 0x65dc5e8c
.word 0xb94a40bb, 0xf1b2297c, 0x856b740d, 0x94c7ba30, 0x2edc89a7, 0x07fb5e95, 0x06ff198e, 0xd983cd5e
.word 0xce6f5544, 0x920b2978, 0x508c5827, 0xb2746948, 0xbd827e68, 0xb99dad20, 0x345eb572, 0x81960caa
.word 0xca48e162, 0xb2bc3fa2, 0x73e3e6c3, 0xa31bd8f4, 0x9888f370, 0xab081f18, 0x5c1903d9, 0xfcc0baac
.word 0x3df36ce9, 0xb4b50996, 0xaf495cf3, 0x2b83a5b5, 0x960a25cf, 0x94da28ce, 0x2fd09df8, 0xaf69a67f
.word 0x8dc94053, 0xd19b0426, 0x5cabb3ff, 0x906abff7, 0x44ffc616, 0xc5dfd6dc, 0xb9637b98, 0x36ea21b0
.word 0x8cd08487, 0x292e40f5, 0xf94840cb, 0x30581ffd, 0xfde67888, 0x5efc45c6, 0x2a771d4d, 0x0971b27e
.word 0xb9543ae7, 0xfbef06d9, 0x7e7893eb, 0x9d2c5518, 0x5d61f0e4, 0x2e4bbc0d, 0x7708f972, 0xc8270deb
.word 0x4b3643c4, 0x9126a6f1, 0x258b5160, 0x6e7bdafa, 0xac97401a, 0x2089e95a, 0xcc954f71, 0x503acfe1
.word 0x9c24de22, 0x8ce60b14, 0x9b5611a6, 0x03d022d3, 0x95ffd0ee, 0xcef94f8d, 0x5cbecbf0, 0x3571b56c
.word 0xa29ab4a9, 0x262b10e7, 0xd9724d3f, 0xc4edbdbf, 0x77623117, 0x5afd2732, 0xee867fb7, 0xe948b0ec
.word 0xb0232b66, 0x65a3b3c9, 0x8a26189a, 0xd74b40d0
.section .region_1,"aw",@progbits;
region_1:
.word 0x7a0cecfc, 0xf09890a8, 0x20ecd8ea, 0xb625c79d, 0x3ac81d23, 0x700556e5, 0x46e3676e, 0xe40184e8
.word 0xae89ff1f, 0xb42c96b1, 0x84f06373, 0xe63b6696, 0x7f69e7dd, 0x0217e690, 0xc4fa44e5, 0xfa48b415
.word 0xbbd1eff6, 0x76a26496, 0x2144a403, 0xf8311dba, 0x67fc83ff, 0xf10a0fd8, 0x10851f2c, 0x81cc7f50
.word 0x463da69f, 0x53060ab5, 0x783a7dec, 0x864d65d9, 0x2e3bd413, 0xc7e3c19c, 0xf9096d9f, 0x8a65e3be
.word 0x192734c6, 0x29b0c575, 0x27b52bfe, 0xb9ea4bc5, 0x616c966d, 0x65271738, 0xb4fa5dea, 0x9c63ba35
.word 0xc19ddd15, 0x3ca630fb, 0x2ea96e20, 0x34233572, 0x8877ac07, 0x3e1f0f59, 0x65bc57f0, 0x0a2a5255
.word 0x143572fc, 0x53fd6edf, 0x747fb7c7, 0x27d6b046, 0xc88b76a8, 0xf61d00c7, 0xa84c5fa8, 0xb5f34679
.word 0xadbaf4a7, 0xe14e2be6, 0x15894602, 0xaf4c18a6, 0x5949de58, 0x271dd627, 0xa505e488, 0x722e5d31
.word 0x3b552160, 0xce2caae1, 0x00bef7ef, 0x007e9c12, 0x3a76ad48, 0x38b9fc5d, 0xab2da0cc, 0x8e00c786
.word 0x6e8f596f, 0xa7c47b49, 0x9ff15bd2, 0x128354d9, 0x7316d217, 0x73583908, 0x267d0ed4, 0x84c2cd8e
.word 0xa8a2d091, 0xe5a138ae, 0xa12ff7aa, 0xc08cf1e9, 0x3d8b7cd2, 0x9aee421b, 0x522adfdd, 0x9424a97b
.word 0xf8c03e06, 0xa6c7d6d3, 0x1b84345c, 0x1a499491, 0x9043a09c, 0xb2ae19ae, 0x69771754, 0x72403363
.word 0x8d898640, 0xba23f668, 0xb27d1737, 0xe31d1f48, 0x3b6919b7, 0x6c5cb04e, 0x14a54e42, 0x2d9235bf
.word 0x5f691786, 0x0fb8f277, 0x32a73681, 0xa2377ff2, 0x89ba3b3d, 0x6c293f98, 0xeb578113, 0x8ec4f6ee
.word 0x1009d0f3, 0x7c0bd218, 0x83878acc, 0x198dd119, 0xf7c546dd, 0x36e35669, 0x00b3e32c, 0xf48ff3e4
.word 0x65c84d6e, 0x73bfe2a1, 0x567a4861, 0x5323fdcb, 0x09fca5ff, 0x86287371, 0x601ecb92, 0x951a353a
.word 0x808f7d5c, 0x362a4b06, 0x7f947e9f, 0x8572faf6, 0x96a8e935, 0x6099a3fd, 0x30694fca, 0xe4045afa
.word 0x681dfd98, 0x00748f21, 0xc3d7cd39, 0x8e9def31, 0xcb60c7b7, 0xb8deaede, 0x1d5c144c, 0x1b14a7c2
.word 0x6e7602a1, 0xf44b13e7, 0xba8df65c, 0xaa97c768, 0x50a2502f, 0x3dd9b81b, 0xc7d8f279, 0x4fb3a409
.word 0xee2dfd40, 0x1645e8a5, 0xdbe68cde, 0x4fb22ce6, 0xc1be2400, 0x66af187e, 0xc71714d6, 0xb7d3b4cf
.word 0x79ab2ec1, 0xa62cd1a9, 0xc4460b05, 0x3d6baf40, 0x0a6d2ae6, 0xf665213e, 0x26a7dfe0, 0x95210987
.word 0xa2e8f421, 0x2b809e24, 0x6c87c705, 0x029986c1, 0x37bb8192, 0x22ba7a6c, 0xd47184b9, 0x272beec0
.word 0x25f14525, 0xacad64a6, 0x6bb01521, 0x1b15ebb6, 0x2afdc888, 0x00bdaeb8, 0x29f9d705, 0xc0182f0c
.word 0x28cd9a64, 0x9ebe75de, 0x1c83ce05, 0xedcf006e, 0x533aecbe, 0xc840e335, 0x494155e2, 0x8de58f30
.word 0xbf29cbf6, 0xc39a5afb, 0xec325e07, 0x9c5cd192, 0x852d6137, 0x7f0e5390, 0x0da2a7a2, 0xe3ec7e1c
.word 0x69790554, 0x3057a061, 0xd200ea5d, 0x84e19261, 0x21aada00, 0x92921706, 0xd52b20d6, 0xc80a2584
.word 0x34755241, 0xa914ba92, 0x76ae11d4, 0xb3eaccfe, 0xd4e83922, 0x91f8f1ab, 0x79d83b5c, 0xc5188c62
.word 0xae5daeb8, 0x93971ec1, 0x6a06c39f, 0x1969627c, 0x16c8d9f3, 0x9168c592, 0x603b615d, 0x4ddd3858
.word 0x23414827, 0xbf775378, 0x9f43a4bb, 0x4ae3143f, 0x02d526c5, 0xdbe9832b, 0x93351221, 0xa6004b76
.word 0x0d325bb4, 0x493b017c, 0x0c6ba4df, 0x10e46c58, 0xcb247a6f, 0x8ea4b4fc, 0x99187777, 0x6288ab6b
.word 0xf343a60a, 0x8c2819e7, 0x8244d37d, 0xe1f1532a, 0x99067a94, 0xf29bc64d, 0xdae5805f, 0xfd066821
.word 0xdcf4bed2, 0xe78fa6e9, 0xb2694465, 0x850ec109, 0x22f265c2, 0xabd9444f, 0x0d82e181, 0x98afd646
.word 0xb366fd0b, 0x34618f49, 0x9a16cfbf, 0x5957178c, 0x2bd211cc, 0x9d4bd8ea, 0x30899c1a, 0xbb1b785b
.word 0xba765451, 0x7aeef801, 0x25f6786f, 0x082786a6, 0xe6939f25, 0x9405ebfa, 0xa842ab3e, 0x1c18fa71
.word 0x87821ce9, 0x8bebc2cc, 0x5279057e, 0x782f79f0, 0xd05fdfaa, 0x66900ac1, 0x412de0b1, 0x7bd55e08
.word 0x11a85ebb, 0xf9c6c62f, 0xb521a4a6, 0xfb01170b, 0xc16c6e0a, 0x3e95e29f, 0x4a76449a, 0x542f3972
.word 0x9ef059c7, 0xf513078e, 0x6cff128c, 0x6d417b58, 0xbf853ff5, 0xa13193fb, 0x0a207c1e, 0xde8b3f9d
.word 0xa9b37462, 0x60ec91fe, 0x3a4d3da7, 0x390f9d92, 0xea3884b5, 0x22715555, 0x18f44080, 0x001e8d19
.word 0xba1c8b88, 0x249f562b, 0x17732a74, 0x1319a949, 0x3b0b3f91, 0xb6bebd8b, 0x2c8a4826, 0xa0971c2f
.word 0xe990ddab, 0xf3f90e50, 0x67cb3d3b, 0x080aec07, 0x15c8273e, 0xc23334fb, 0x8559c522, 0x3857578f
.word 0x8c299ab9, 0x0d57bea7, 0xfc81e737, 0xdb658ac0, 0x0720dd52, 0x19f6fe17, 0xab760883, 0x0768eac6
.word 0xd8ddb1d3, 0xc87897de, 0x0cbae369, 0x02b4aaa2, 0x31929db8, 0xf0371354, 0xfa6f1087, 0xf3784153
.word 0xe912520c, 0xd2097e05, 0x216c867b, 0xeafe82db, 0x5003dbab, 0x5e211db1, 0x568e088d, 0x37d052bc
.word 0x1a7c76ff, 0x3081102c, 0x7bba30c5, 0xd67ec3e0, 0x64ddf75a, 0xd1bff240, 0xf0cd203a, 0x26a3c2db
.word 0x1c132b19, 0x0996f50b, 0xc3414ac5, 0x163c90e7, 0xb4c16570, 0x0580d318, 0xcf959e3e, 0x33866ded
.word 0xc81a9274, 0x777669f1, 0x6a10899c, 0x3b13a316, 0x7162829d, 0xb57d914f, 0xc875826a, 0x314e1a7f
.word 0x279e14ad, 0x7fc8192f, 0xdbbbec99, 0xb2494c87, 0x6db16163, 0x6686efb9, 0x1d9c67a9, 0x0733ecc3
.word 0x773e1971, 0xad12dcba, 0xbe9995da, 0x5ba58f3a, 0x211cf4c7, 0x3302068a, 0x7020085f, 0x02cb83c8
.word 0x237c2ccd, 0xb4d553ad, 0x50157b6a, 0xc4c3d95b, 0x96d3e5a1, 0xe97ccbc5, 0xe2a004a2, 0xcf154548
.word 0xaff5e2c2, 0x65c3d6f2, 0xbe872810, 0x647dd45f, 0xf3fcb83f, 0x47178c8b, 0x0ef8b84b, 0xa2b8bc60
.word 0x88ddcfef, 0x8f224e1e, 0xdd570f3c, 0x56a6077b, 0xc293ae57, 0x21aeb872, 0xe6b4c110, 0xe7ae455a
.word 0x992c23f9, 0x97ccaeb0, 0x075d76a5, 0xc6545660, 0xe94e5a5b, 0x171d8d2b, 0xbfced7ff, 0x44f9e2b3
.word 0x5141c7ee, 0xfeb81609, 0x1a66a7eb, 0xb8165615, 0x5faa50d4, 0xee11fecf, 0xc04c0a87, 0xa21b5b63
.word 0x3b1873f8, 0xcd452de3, 0x1ca7d5c6, 0x34ae35b9, 0x70e9c305, 0xbffc4571, 0xe393db26, 0xb5d8f94c
.word 0x2144d84d, 0xf489afc9, 0xf356f59e, 0x6ae08d44, 0xf236137b, 0xbd55aeec, 0x6149e818, 0x6f4f82d9
.word 0xd4451707, 0x6faab36d, 0x2730dbde, 0x0d30abcd, 0xf84f5954, 0x029a39cf, 0x1a7b85e3, 0x085a1be4
.word 0x60acdf69, 0x84598a30, 0xe88a3f41, 0x79a6f097, 0x6dec0872, 0xc644837c, 0xeed7ce41, 0x8e88baca
.word 0xa6c9bd09, 0x3b6e7d7c, 0xfb66fd1e, 0x5c212c79, 0x3b83ad62, 0x960a0050, 0x250646e7, 0x99911852
.word 0x5113e66c, 0xeaaee914, 0x05ec5f05, 0x5f9748c1, 0xe5a29123, 0x761c570b, 0x929e2c80, 0x6e0b24d1
.word 0xae8a232b, 0x73978bd9, 0x0955ad16, 0x4bdf7427, 0x7b6d2fc3, 0x75731fdb, 0x192f098f, 0x5e3b0d29
.word 0xd847e4ed, 0x71e1a5f6, 0x80eda1fd, 0xac0fd3d5, 0x8faf3724, 0x9d57fdc8, 0x1aae2988, 0xe29a8f7b
.word 0xd03503c5, 0x0a42240a, 0xb55c83d4, 0x0ff28334, 0x27ac5192, 0xd076696b, 0xa118d300, 0x69834f8f
.word 0x0be342f3, 0xcecb40d3, 0x0f05096d, 0x9deae3dd
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x17, x14, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x2, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x2, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x2, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x2, x28, ecall_handler
                  li x28, 0x1
                  beq x2, x28, instr_fault_handler
                  li x28, 0x5
                  beq x2, x28, load_fault_handler
                  li x28, 0x7
                  beq x2, x28, store_fault_handler
                  li x28, 0xc
                  beq x2, x28, pt_fault_handler
                  li x28, 0xd
                  beq x2, x28, pt_fault_handler
                  li x28, 0xf
                  beq x2, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

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
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x14, x17, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x17, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x17, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x14, x17, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x14, x17, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x14, x17, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
