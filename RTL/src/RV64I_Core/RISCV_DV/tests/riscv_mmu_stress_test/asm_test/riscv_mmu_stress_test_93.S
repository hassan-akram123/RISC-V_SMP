.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x9, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x239e93b6
                  li x4, 0x80000000
                  li x5, 0xff902989
                  li x6, 0xe
                  li x7, 0x80000000
                  li x8, 0x0
                  li x10, 0xf27bc586
                  li x11, 0x0
                  li x12, 0x3
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xba0cfd00
                  li x16, 0xfc458e44
                  li x17, 0x7
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x5
                  li x21, 0x80000000
                  li x22, 0x9
                  li x23, 0x80000000
                  li x24, 0xfaa056ff
                  li x25, 0x0
                  li x26, 0xd3b4a1e7
                  li x27, 0x2
                  li x28, 0x80000000
                  li x30, 0x8
                  li x31, 0x80000000
                  la x29, user_stack_end
main:             la           sp, region_1+312 #start riscv_load_store_rand_instr_stream_2
                  lb           t5, -13(sp)
                  auipc        s5, 750057
                  and          s2, s8, s7
                  lui          a3, 937448
                  lb           s8, -14(sp)
                  xori         s8, a5, -1203
                  sb           gp, 15(sp)
                  sltiu        s8, s3, -1801
                  sb           s0, -10(sp)
                  lui          s10, 747868
                  andi         tp, t0, 1973
                  srai         s2, tp, 1
                  sltiu        tp, s8, -1289
                  lh           t6, 14(sp)
                  xor          s7, tp, s5
                  add          s6, s5, t5
                  slti         s0, gp, 398
                  sb           a1, -13(sp)
                  sltiu        a2, t0, 729
                  lb           s5, -5(sp)
                  lbu          tp, 3(sp)
                  xori         s11, sp, -1703
                  slli         t5, t1, 20
                  lbu          s6, 15(sp)
                  lb           a3, -7(sp)
                  lb           t3, 14(sp)
                  xori         a2, a0, 1927
                  slt          s3, a4, s7
                  slt          s10, t6, s7
                  and          s2, a7, t3
                  sb           s0, 5(sp)
                  sltiu        a6, t1, 1222
                  sb           gp, -11(sp)
                  add          a4, s3, s9
                  nop
                  lb           t5, -13(sp)
                  slti         s6, s8, -1461
                  or           t2, a7, t6
                  lh           s7, 6(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+529 #start riscv_load_store_rand_instr_stream_4
                  sll          a4, s10, s3
                  sw           a6, 91(sp)
                  lw           s2, 135(sp)
                  lbu          s2, 112(sp)
                  srai         ra, s2, 14
                  auipc        s10, 471487
                  sw           t3, -17(sp)
                  srl          t2, s11, s8
                  lbu          a1, -197(sp)
                  slli         ra, a5, 31
                  lui          s7, 745904
                  slti         s4, zero, -1911
                  slti         s5, s9, 631
                  lw           s6, -57(sp)
                  slli         a5, s1, 8
                  and          t5, s0, s11
                  sb           zero, 40(sp)
                  sb           s8, -190(sp)
                  sll          t2, s2, s7
                  lbu          a7, -161(sp)
                  lb           t3, 41(sp)
                  andi         gp, ra, 431
                  srai         a1, s2, 7
                  sll          t6, s8, s6
                  lb           s10, 218(sp)
                  lbu          tp, 126(sp)
                  sll          s7, t0, t3
                  srai         t0, a2, 25
                  slti         tp, s7, 1033
                  sra          gp, s6, t3
                  lui          a5, 531123
                  auipc        tp, 556279
                  sb           a4, -2(sp)
                  lb           s5, 220(sp)
                  lb           a1, 142(sp)
                  sb           t2, -218(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+1312 #start load_store_instr_stream_2
                  lbu          s7, 29(a0)
                  la           tp, region_0+1000 #start load_store_instr_stream_1
                  la           sp, region_0+503 #start load_store_instr_stream_0
                  la           a2, region_0+101 #start load_store_instr_stream_3
                  lw           t2, -380(tp)
                  lbu          s8, 1101(a2)
                  lb           s11, -211(sp)
                  lbu          t0, 1229(a2)
                  sb           s6, -44(sp)
                  sb           s11, 327(a0)
                  sh           a4, -182(tp)
                  sw           a2, 1799(a2)
                  sb           zero, 137(a0)
                  sb           s6, -286(a0)
                  sb           s10, -959(a0)
                  sb           tp, -159(tp)
                  lhu          s0, -198(a0)
                  lb           s3, 222(a0)
                  lbu          s8, -117(sp)
                  lb           t0, -173(sp)
                  lbu          s7, 747(a2)
                  lb           a6, 249(sp)
                  lb           s5, 363(a0)
                  lbu          t5, -473(tp)
                  sb           a6, 69(sp)
                  lb           a4, 656(a2) #end load_store_instr_stream_3
                  sh           gp, -262(tp) #end load_store_instr_stream_1
                  sb           s11, -1078(a0)
                  lhu          t2, 552(a0) #end load_store_instr_stream_2
                  lb           t3, 250(sp) #end load_store_instr_stream_0
                  la           sp, region_1+772 #start riscv_load_store_hazard_instr_stream_0
                  sb           s0, -137(sp)
                  andi         t2, t3, 885
                  lbu          a7, -137(sp)
                  lb           a5, -137(sp)
                  lb           t3, -137(sp)
                  lb           s0, -137(sp)
                  lb           a2, -137(sp)
                  lbu          t2, -137(sp)
                  lb           ra, -137(sp)
                  lbu          t3, -137(sp)
                  sb           s9, -137(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t6, region_0+1497 #start riscv_load_store_rand_instr_stream_0
                  lbu          ra, 292(t6)
                  sb           s9, 48(t6)
                  sh           t6, -647(t6)
                  slli         a1, s10, 25
                  slli         s2, a2, 4
                  sltiu        a1, t6, -1483
                  sll          s6, a0, a2
                  srli         tp, t3, 13
                  sb           t4, -1338(t6)
                  sb           s10, -783(t6)
                  auipc        a3, 488407
                  sll          s3, a3, t2
                  lui          a2, 994438
                  lh           zero, -533(t6)
                  lb           s5, 81(t6)
                  andi         a7, t2, 1693
                  add          s5, s4, t5
                  xor          t5, s2, s6
                  slt          t2, s1, a4
                  sb           a7, -1434(t6)
                  or           a6, a2, s3
                  sb           a6, -510(t6)
                  sb           s4, -1195(t6) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_0+948 #start riscv_load_store_rand_instr_stream_1
                  ori          gp, s8, -1818
                  auipc        a5, 238350
                  sra          a3, a6, a4
                  lbu          a2, 64(s3)
                  sb           a6, 43(s3)
                  lb           s0, -13(s3)
                  lb           t3, 31(s3)
                  sb           sp, 10(s3)
                  lhu          s0, -32(s3)
                  lhu          t2, 38(s3)
                  sltu         sp, s3, tp
                  sb           s11, 27(s3)
                  slti         tp, a1, 1924
                  sh           a1, 22(s3)
                  srl          a5, s4, t4
                  srli         s6, s1, 29
                  sb           s2, 11(s3)
                  lbu          s0, -19(s3)
                  lbu          tp, -1(s3)
                  lb           a1, -49(s3)
                  lb           a6, 26(s3)
                  lbu          t0, 23(s3)
                  lb           a5, 27(s3)
                  lbu          s10, 24(s3)
                  sll          a2, a7, ra
                  sb           s11, -26(s3)
                  sh           a2, 20(s3)
                  lbu          a1, 52(s3)
                  slti         gp, a7, 640
                  lbu          a6, -26(s3)
                  lb           t6, -11(s3)
                  sb           gp, 28(s3)
                  lbu          s11, 49(s3)
                  slt          s6, t1, s7
                  lbu          a2, 41(s3)
                  sh           gp, 8(s3)
                  sw           s2, 0(s3) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+611 #start riscv_load_store_rand_instr_stream_3
                  xor          ra, s2, a6
                  sh           s7, 15(sp)
                  lbu          a1, -16(sp)
                  sra          t0, t5, s5
                  srai         s10, t3, 16
                  lb           t1, 8(sp)
                  xori         ra, a4, 874
                  sll          a4, s4, t5
                  slli         tp, s2, 29
                  lbu          s2, -4(sp)
                  lbu          a1, 8(sp)
                  ori          s11, t3, 1884
                  sb           a7, 10(sp)
                  lb           a5, -2(sp)
                  add          s3, a3, s10
                  srl          a4, a3, a2
                  lh           s6, -11(sp)
                  ori          t6, s4, 566
                  srl          s6, t6, t6
                  lbu          ra, -9(sp)
                  lb           a0, 2(sp)
                  srai         s11, s10, 11
                  srli         ra, t2, 4
                  nop
                  lb           a5, -9(sp)
                  nop
                  slt          a6, a5, s9
                  srl          s4, t2, s8
                  lbu          s2, -16(sp)
                  addi         s3, sp, -1309
                  lbu          s4, 12(sp)
                  lbu          a4, -8(sp)
                  xor          s0, t3, s5
                  lbu          gp, -13(sp)
                  and          a2, t3, s11
                  lhu          a0, -15(sp)
                  sb           a1, 14(sp)
                  lui          a4, 750845
                  or           a6, zero, s10
                  sra          s6, a1, a3
                  sb           t5, -14(sp)
                  lb           s2, 10(sp)
                  sltu         a1, s2, t4
                  add          s3, s4, s10
                  lhu          a7, -11(sp)
                  srai         s2, a2, 18
                  sb           s4, -10(sp)
                  sh           sp, -5(sp)
                  lbu          zero, -16(sp)
                  sltiu        s2, tp, -1154
                  and          a6, s7, s9
                  slli         s5, gp, 21
                  sw           s4, 5(sp)
                  sb           a3, 14(sp)
                  lhu          a7, -1(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+462 #start riscv_load_store_hazard_instr_stream_1
                  lh           s4, -2(sp)
                  sh           s2, -2(sp)
                  sb           a4, 31(sp)
                  sb           a4, 31(sp)
                  lbu          s2, -7(sp)
                  lh           zero, -32(sp)
                  sb           ra, -7(sp)
                  lb           s11, -7(sp)
                  lb           t3, -7(sp)
                  lb           t0, -7(sp)
                  sb           s7, -7(sp)
                  sb           ra, -7(sp)
                  xori         s3, a0, -1075
                  lbu          s4, -7(sp)
                  lbu          a3, -7(sp)
                  lhu          a4, -32(sp)
                  lb           a7, -32(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+311 #start riscv_load_store_hazard_instr_stream_4
                  lb           t2, 8(sp)
                  sb           s11, 8(sp)
                  sb           a0, 8(sp)
                  sub          ra, t0, a4
                  sb           t2, 8(sp)
                  lb           gp, 8(sp)
                  lbu          t5, 6(sp)
                  sb           t5, 1(sp)
                  slli         a6, t6, 14
                  lbu          tp, -4(sp)
                  sb           a0, 16(sp)
                  add          gp, a7, t5
                  lb           ra, 16(sp)
                  srli         ra, s9, 14
                  sh           t0, -11(sp)
                  lb           s3, -11(sp)
                  lui          tp, 181913
                  sb           t0, -11(sp)
                  sh           t0, -11(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           a1, region_1+65 #start load_store_instr_stream_0
                  la           gp, region_1+664 #start load_store_instr_stream_3
                  la           s4, region_1+447 #start load_store_instr_stream_1
                  sb           s7, 62(a1)
                  sb           t6, 37(gp)
                  lb           s0, -200(s4)
                  lhu          a6, -180(gp)
                  la           a2, region_1+1436 #start load_store_instr_stream_2
                  lbu          t0, -248(a2)
                  lhu          a5, 53(a1)
                  lbu          a7, -186(gp)
                  sb           s6, 30(s4)
                  lh           a7, -29(s4)
                  lbu          s2, -64(a1)
                  lb           t2, 16(a1)
                  sb           a5, -4(a1)
                  lbu          sp, 143(gp)
                  sb           ra, 9(a2)
                  sb           s3, 43(a1)
                  lb           t1, -108(gp)
                  sb           s3, -12(a1)
                  lbu          sp, 12(a2)
                  lbu          sp, -18(s4)
                  lbu          s5, -95(gp)
                  lb           s11, 97(a2)
                  lhu          s6, -182(gp)
                  sh           s5, -72(a2)
                  sb           s0, -89(gp)
                  lbu          a4, 212(s4) #end load_store_instr_stream_1
                  sh           a4, -126(gp) #end load_store_instr_stream_3
                  sb           t6, 110(a2) #end load_store_instr_stream_2
                  sh           t1, -45(a1)
                  sb           t0, 44(a1) #end load_store_instr_stream_0
                  la           a5, region_0+970 #start load_store_instr_stream_1
                  la           t3, region_0+1810 #start load_store_instr_stream_3
                  la           s0, region_0+592 #start load_store_instr_stream_2
                  lb           t1, -3(a5)
                  la           a3, region_0+690 #start load_store_instr_stream_0
                  lbu          s10, -3(a3)
                  lb           s4, 554(a3)
                  lb           s7, -24(t3)
                  sb           s4, 1379(s0)
                  sb           s4, 4(a5)
                  lbu          s6, 49(a5)
                  lh           s11, -26(t3)
                  lbu          a7, -25(t3)
                  lbu          gp, 507(a3)
                  lbu          sp, 7(a5)
                  lbu          a4, 63(a3)
                  lbu          s2, -7(t3)
                  lbu          a7, -26(a5)
                  sb           a6, -15(t3)
                  sb           t3, 793(a3)
                  lb           s7, 952(s0)
                  sb           a5, 62(t3) #end load_store_instr_stream_3
                  sh           gp, 16(a5)
                  lb           t2, -126(s0)
                  lb           sp, -48(a5) #end load_store_instr_stream_1
                  sw           a0, 1148(s0)
                  lhu          t6, 804(a3)
                  sb           s7, 1001(s0) #end load_store_instr_stream_2
                  sb           a6, 885(a3) #end load_store_instr_stream_0
                  la           s11, region_1+1516 #start riscv_load_store_hazard_instr_stream_2
                  lb           s10, 115(s11)
                  and          sp, t1, gp
                  sb           t6, 38(s11)
                  lhu          zero, 38(s11)
                  sb           t3, -30(s11)
                  lh           t3, -30(s11)
                  lb           a1, -165(s11)
                  xori         s10, tp, 1566
                  lbu          a6, -165(s11)
                  sb           a6, -165(s11)
                  srl          a1, a4, s0
                  sb           s3, -165(s11)
                  slti         a6, t2, -1160
                  lb           s3, -165(s11)
                  sb           t5, -105(s11)
                  lbu          ra, -105(s11)
                  lbu          tp, -105(s11)
                  sltu         s6, s7, a2
                  srli         t2, t0, 19
                  lb           ra, -105(s11) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1697 #start load_store_instr_stream_2
                  la           a1, region_1+1859 #start load_store_instr_stream_3
                  la           t0, region_1+1880 #start load_store_instr_stream_0
                  lbu          t3, -28(sp)
                  sh           s1, -8(t0)
                  sb           t5, 7(a1)
                  lb           t6, -2(sp)
                  lbu          a0, 22(sp)
                  la           s11, region_1+643 #start load_store_instr_stream_1
                  lb           a0, -3(s11)
                  lbu          a0, 30(sp)
                  lbu          tp, 15(t0)
                  lbu          s8, 16(t0)
                  sb           s9, -58(sp)
                  sh           t2, -14(t0)
                  lbu          t5, 41(sp)
                  lb           gp, 43(a1)
                  lbu          tp, 4(s11)
                  lb           a2, -48(sp)
                  sh           s9, -3(s11)
                  sb           tp, -34(a1)
                  lh           s10, 12(t0)
                  lbu          s7, -32(a1)
                  lb           a6, 3(t0)
                  lbu          s4, 25(sp)
                  lb           s5, -14(s11)
                  lbu          s3, 32(a1)
                  lh           s2, 39(a1)
                  lbu          a4, -64(sp)
                  lh           t2, 49(a1)
                  sb           a2, -2(s11)
                  lh           gp, -4(t0)
                  sb           t0, 44(sp) #end load_store_instr_stream_2
                  lhu          zero, 49(a1) #end load_store_instr_stream_3
                  lbu          a5, -15(t0)
                  lb           t5, 14(s11)
                  sh           gp, -1(s11) #end load_store_instr_stream_1
                  sb           s1, 5(t0) #end load_store_instr_stream_0
                  la           s5, region_0+1512 #start load_store_instr_stream_1
                  sb           s0, 0(s5)
                  la           a4, region_0+975 #start load_store_instr_stream_0
                  sb           s9, -15(s5)
                  sh           s1, 10(s5)
                  lhu          zero, -13(a4)
                  lh           a3, -16(s5)
                  sb           s5, 6(s5)
                  lb           a2, -9(s5)
                  lhu          a3, 5(a4)
                  lbu          ra, 12(a4)
                  lb           s8, -11(s5)
                  lhu          a0, 10(s5)
                  lw           a0, -16(s5)
                  lh           tp, 3(a4)
                  lhu          s7, 2(s5) #end load_store_instr_stream_1
                  sh           a4, -5(a4) #end load_store_instr_stream_0
                  add          a5, t4, a7
                  beq          zero, t3, 4f
                  and          t6, s8, s7
                  ori          s2, t5, 1282
4:                bne          s2, a2, 6f
                  lui          tp, 632591
6:                add          s2, s10, s9
                  xor          s6, s7, a2
                  add          sp, t3, t3
                  slli         t0, s7, 13
                  ori          s0, a4, -1533
                  bgeu         t5, s4, 18f
                  sub          a3, t2, t0
                  beq          a7, tp, 24f
                  blt          a4, s9, 20f
                  bge          s7, s10, 30f
                  bne          s10, gp, 27f
                  slt          t3, t5, gp
18:               and          s3, s11, t5
                  srai         t6, s7, 27
20:               slt          a7, s7, t3
                  slli         a0, s4, 24
                  and          ra, t5, a6
                  add          t6, s7, ra
24:               slti         t0, t6, 849
                  blt          s11, ra, 33f
                  sltiu        a2, s7, 689
27:               sltu         s6, s8, s8
                  addi         t3, tp, -1192
                  xori         a4, s1, -939
30:               sll          sp, s10, a6
                  sltiu        s5, s2, -703
                  bgeu         s10, sp, 46f
33:               beq          s0, s8, 42f
                  beq          t2, s10, 40f
                  ori          s0, a2, 1355
                  slt          a2, s5, s6
                  or           s3, a6, a0
                  xori         a5, t5, 2045
                  and          zero, t0, s8
40:               bne          a5, ra, 48f
                  auipc        s8, 565413
42:               andi         tp, t6, -1895
                  sll          s5, t0, a4
                  slt          a0, s5, s2
                  sll          t1, s10, t4
46:               sltu         t6, s5, t3
                  sltiu        t1, a4, 1211
48:               bne          a3, a5, 56f
                  nop
                  xori         t2, s6, -431
                  or           s4, a1, gp
                  slt          s6, a7, t1
                  auipc        a5, 775240
                  slti         sp, t1, 1088
                  bgeu         s6, t3, 70f
56:               bltu         gp, s4, 66f
                  or           s7, zero, t0
                  blt          s4, s3, 67f
                  bltu         sp, t4, 63f
                  and          a6, t1, sp
                  srl          gp, a0, gp
                  slt          a4, a4, t4
63:               blt          zero, s1, 77f
                  ori          s6, t0, -226
                  slli         s2, a2, 10
66:               addi         s7, s4, 1117
67:               slti         a1, a4, -713
                  beq          s0, a6, 71f
                  blt          t4, s7, 71f
70:               or           s3, s10, ra
71:               xor          a6, zero, a2
                  sltiu        t6, a3, -1255
                  addi         a5, a4, 1292
                  bltu         s2, a4, 92f
                  sltu         a2, t5, a2
                  bltu         ra, t2, 80f
77:               nop
                  auipc        s11, 643184
                  srai         s11, s2, 26
80:               slti         sp, sp, 108
                  sub          s0, s5, a1
                  addi         a2, gp, 1187
                  srli         s5, t6, 5
                  bge          a3, a4, 96f
                  beq          t2, a1, 95f
                  sra          t0, t0, t6
                  slt          s3, zero, t3
                  slli         a6, s4, 1
                  xor          s4, s10, s6
                  slt          a2, sp, s6
                  sltu         s2, s2, s6
92:               auipc        s5, 582032
                  sltu         s4, t5, t5
                  srai         t5, gp, 30
95:               sll          s0, s5, a3
96:               addi         t1, a4, -644
                  sltiu        s6, s7, -1199
                  ori          zero, t4, 1231
                  beq          s1, s10, 108f
                  bgeu         s1, s5, 116f
                  srl          sp, s9, s11
                  and          a4, a7, t6
                  nop
                  beq          a1, s3, 111f
                  andi         a1, s0, -1920
                  sltiu        gp, s0, 524
                  nop
108:              auipc        s8, 689132
                  slli         a4, s6, 24
                  bltu         s0, sp, 111f
111:              srai         s4, t1, 14
                  slt          t3, a5, tp
                  srl          s5, s0, t3
                  ori          t0, s4, -1378
                  xor          tp, s10, s0
116:              sltu         a6, a5, t0
                  sra          a7, s11, t1
                  andi         a1, gp, 1571
                  auipc        a1, 407434
                  add          ra, a6, a0
                  lui          s11, 812029
                  sll          t5, t0, a4
                  or           a0, s7, t5
                  bgeu         a2, a0, 137f
                  beq          a6, zero, 134f
                  or           a3, a0, t3
                  bltu         s4, t2, 133f
                  add          gp, s2, s5
                  sra          a2, s5, a2
                  bne          ra, s10, 133f
                  addi         s8, a0, 1874
                  sra          t3, s5, s7
133:              ori          s0, s4, -1943
134:              bge          a6, s1, 143f
                  srl          s2, ra, s11
                  sll          a2, a3, s10
137:              slli         s3, t2, 23
                  sub          s5, s5, s9
                  or           tp, t1, a3
                  srai         zero, s5, 14
                  or           s6, t5, t6
                  nop
143:              slt          s4, t5, t5
                  and          a5, tp, s6
                  auipc        t5, 506076
                  xori         s5, s7, -1102
                  sltu         t3, s4, t6
                  xori         tp, s3, 597
                  add          a6, s0, t0
                  srai         sp, a7, 16
                  bge          s1, ra, 153f
                  lui          a0, 478795
153:              bgeu         a4, a2, 161f
                  bne          t5, s1, 164f
                  sub          a6, s11, s11
                  beq          t1, t3, 163f
                  slli         a7, ra, 30
                  sll          ra, a6, t1
                  sub          s8, t4, t4
                  bltu         t4, t2, 174f
161:              bgeu         s7, s7, 170f
                  bne          tp, a1, 180f
163:              lui          t1, 322534
164:              and          t5, tp, s9
                  bltu         s8, sp, 172f
                  addi         gp, a5, 813
                  srli         a0, s2, 30
                  sub          zero, gp, a5
                  slt          s0, t5, s6
170:              or           sp, a2, s0
                  bne          t3, s0, 184f
172:              bltu         t2, a1, 181f
                  sltiu        s2, t1, -917
174:              slt          t2, s11, s4
                  srli         s4, a0, 25
                  slti         s5, ra, -822
                  andi         s2, t2, -1638
                  srai         gp, sp, 20
                  beq          t1, t6, 189f
180:              sltu         s8, s9, t3
181:              slti         a2, a3, -616
                  slti         t6, a5, 1016
                  and          t6, s5, s2
184:              lui          a5, 409125
                  beq          s7, a6, 196f
                  slli         a2, s9, 2
                  blt          a5, gp, 195f
                  sub          a4, gp, a1
189:              srai         ra, a5, 30
                  bge          ra, sp, 206f
                  srli         t5, a3, 23
                  lui          a4, 854725
                  xori         s4, s8, 1584
                  nop
195:              slti         t0, s11, -127
196:              andi         t6, s0, -1071
                  xor          s0, s9, t0
                  slti         ra, s5, -1976
                  xor          a2, a0, a1
                  slt          a6, s11, s7
                  srai         t1, a3, 17
                  xori         a6, t6, -1274
                  addi         sp, t3, 373
                  slti         s0, s6, 737
                  sra          s5, t3, sp
206:              sltiu        sp, a6, -76
                  and          t2, s6, a2
                  xori         tp, t4, -96
                  sll          s6, t5, a2
                  slti         s8, s3, 1607
                  bge          s3, s3, 223f
                  add          t0, s7, s6
                  bgeu         s6, ra, 219f
                  sub          t1, s7, a3
                  add          s7, t1, s11
                  sub          ra, gp, a2
                  ori          s5, s1, 1558
                  slti         a2, s3, -1520
219:              sltiu        t3, a6, -639
                  bne          gp, a4, 221f
221:              blt          t2, tp, 236f
                  la           s8, region_1+1182 #start riscv_load_store_hazard_instr_stream_3
                  lui          a4, 730905
                  lbu          gp, -11(s8)
                  lbu          a5, -11(s8)
                  sb           s3, -11(s8)
                  lb           s4, -11(s8)
                  lbu          s4, -11(s8)
                  lb           t5, -11(s8)
                  sb           s9, -11(s8)
                  add          t2, s4, s0
                  lbu          a4, -11(s8)
                  lb           t5, -11(s8)
                  xor          s7, s9, s6
                  nop
                  lb           s7, -11(s8)
                  add          t5, a7, a7
                  lbu          tp, -11(s8)
                  lbu          s0, -11(s8)
                  sb           t4, -11(s8) #end riscv_load_store_hazard_instr_stream_3
                  or           a6, sp, t1
223:              or           s10, s4, zero
                  xor          t1, s6, t4
                  bge          s5, s9, 234f
                  sra          a2, a3, s5
                  lui          t1, 1031097
                  bge          a2, zero, 232f
                  xori         s0, s4, -30
                  xori         ra, t3, -653
                  sub          t5, s0, gp
232:              nop
                  bne          gp, a3, 237f
234:              srli         s8, s7, 1
                  sra          t2, s11, ra
236:              bne          s1, s11, 239f
237:              and          t0, sp, s3
                  bgeu         s6, ra, 249f
239:              blt          a3, a4, 254f
                  blt          s0, zero, 248f
                  bgeu         s5, t0, 243f
                  srli         a3, s2, 11
243:              slt          a6, t0, a0
                  slli         t0, s0, 29
                  sub          a5, a0, s2
                  sub          a1, t0, s8
                  ori          gp, t0, -1231
248:              andi         a2, s7, -740
249:              blt          s4, s10, 263f
                  bgeu         a0, s8, 253f
                  bne          zero, zero, 267f
                  sll          s6, sp, s2
253:              lui          a3, 263165
254:              beq          s5, t1, 256f
                  and          tp, gp, s5
256:              sll          a4, tp, s11
                  bne          a3, s8, 261f
                  xor          s2, s7, s5
                  srl          a6, tp, s9
                  srli         s10, t3, 15
261:              slti         a0, tp, -660
                  sll          tp, t4, s3
263:              ori          gp, t2, 1355
                  xor          s10, a0, t1
                  ori          tp, a4, 867
                  bgeu         s11, s6, 272f
267:              bne          s8, s5, 278f
                  bgeu         gp, zero, 278f
                  sll          s5, s8, a3
                  sra          a3, t0, s6
                  lui          s2, 360545
272:              bge          s9, a4, 290f
                  slti         s6, t4, -1560
                  bge          s4, zero, 276f
                  xor          s2, tp, a1
276:              andi         s3, a2, 252
                  andi         t1, s5, -2004
278:              add          t0, t5, s7
                  slli         s6, s4, 10
                  srli         t2, s5, 17
                  beq          tp, a2, 293f
                  addi         s7, a3, 1527
                  lui          s0, 671046
                  sll          sp, a0, s11
                  srai         s7, s4, 22
                  or           tp, a4, a7
                  slli         t2, s3, 5
                  sltu         t6, t6, tp
                  nop
                  la           a7, sub_2
                  slt          sp, t5, a4
                  addi         a7, a7, -444
                  sltiu        a5, t0, -1740
                  blt          s10, s0, main_j2 #branch to jump instr
                  sub          s5, s6, t6
                  sll          a4, s8, t6
                  xori         a1, a0, -1872
                  add          a2, a3, tp
                  sll          a1, s7, a5
                  ori          sp, s3, 113
                  sltiu        a3, s8, -924
main_j2:          jalr         s6, a7, 445 #jump main -> sub_2
                  ori          gp, tp, 1675
290:              xor          s11, t1, s3
                  andi         s11, s11, 1197
                  blt          zero, t0, 295f
293:              xor          t3, t2, s3
                  slli         t2, s3, 3
295:              sltiu        zero, zero, 1229
                  bne          a6, s3, 304f
                  sra          s11, ra, s8
                  bgeu         s1, s2, 312f
                  sltu         s3, a2, a5
                  srl          a1, ra, s4
                  lui          a1, 757200
                  bltu         t6, t4, 309f
                  sll          t3, t1, sp
304:              and          a4, t6, t6
                  sltu         s8, ra, s11
                  srai         s5, t1, 22
                  bne          t5, s8, 322f
                  slti         s11, a4, -103
309:              bgeu         t3, s5, 322f
                  add          a6, t5, tp
                  bltu         a5, t6, 320f
312:              xor          s6, s6, t4
                  bne          tp, s10, 321f
                  blt          zero, s2, 323f
                  beq          tp, a7, 330f
                  and          t2, s4, s9
                  nop
                  beq          t0, s4, 327f
                  xor          t1, s9, s3
320:              srai         t2, t2, 6
321:              slti         sp, tp, -46
322:              sltu         a4, s11, s1
323:              ori          s2, a5, -1999
                  bne          t3, s2, 338f
                  auipc        a5, 639864
                  slt          s7, sp, t4
327:              xori         t3, t6, 819
                  bltu         s4, s10, 337f
                  sll          tp, s6, a2
330:              or           s3, s8, a6
                  sltu         s10, t0, s7
                  bne          s5, s10, 342f
                  lui          s3, 153214
                  blt          a7, s11, 338f
                  sll          t3, a0, a5
                  sub          s10, sp, a6
337:              sltu         t6, s9, a7
338:              addi         s3, s7, 918
                  bgeu         s11, a7, 346f
                  blt          sp, s2, 346f
                  xori         a6, s2, 1009
342:              bne          a5, s8, 343f
343:              slt          gp, s7, gp
                  lui          tp, 161965
                  bgeu         t3, t5, 356f
346:              bgeu         tp, tp, 354f
                  beq          s0, a3, 353f
                  addi         t0, t1, -505
                  lui          s8, 535176
                  xori         s2, a5, -1333
                  slt          t3, s7, s7
                  sub          tp, t2, t1
353:              slli         s10, a2, 14
354:              or           s3, zero, t1
                  auipc        ra, 816861
356:              slli         zero, a5, 23
                  nop
                  srli         s0, t3, 2
                  add          s10, zero, a1
                  srli         s3, a6, 12
                  or           s10, ra, tp
                  beq          sp, s9, 377f
                  bne          t5, a2, 365f
                  auipc        t2, 5231
365:              sltu         s8, a2, s4
                  xori         s8, t0, -1903
                  or           t2, a4, s9
                  or           a3, t5, a4
                  lui          a0, 745527
                  sltiu        a3, t3, -459
                  bltu         s5, t1, 385f
                  or           s2, a0, t6
                  addi         a7, s10, 472
                  or           t5, s0, s8
                  slti         a0, sp, -209
                  nop
377:              xor          t6, s2, a6
                  andi         zero, zero, -1356
                  slti         a2, s0, -1310
                  xor          s0, a1, s5
                  blt          ra, a1, 391f
                  nop
                  addi         zero, s7, -461
                  ori          zero, s9, -1598
385:              auipc        tp, 713851
                  beq          a3, s0, 395f
                  srli         a6, t1, 9
                  srli         s10, s7, 26
                  and          t6, a0, a4
                  sll          s5, a0, s1
391:              bltu         s2, a1, 401f
                  or           zero, s1, s8
                  bgeu         a0, s3, 404f
                  blt          a2, a5, 398f
395:              blt          s5, s4, 407f
                  xor          zero, s1, a4
                  sll          a3, t5, t4
398:              bne          s6, t0, 400f
                  bltu         s7, ra, 406f
400:              xori         s2, t1, 1707
401:              sll          s5, a2, sp
                  blt          s8, s4, 415f
                  bge          s5, s6, 411f
404:              sltu         a4, t3, s7
                  beq          sp, a2, 408f
406:              bge          gp, t0, 415f
407:              blt          s10, s0, 415f
408:              bgeu         s2, s2, 415f
                  slli         a4, a4, 14
                  nop
411:              and          t1, a4, s3
                  srli         a3, tp, 14
                  ori          a4, ra, -1513
                  slli         t1, s8, 25
415:              srl          gp, a5, t4
                  bge          a3, t2, 434f
                  and          s2, a3, t6
                  and          a3, gp, a2
                  lui          s8, 65426
                  la           gp, sub_1
                  nop
                  addi         gp, gp, 425
                  add          s2, gp, a4
                  addi         t0, s3, 1492
                  sra          s8, t1, a2
                  bge          s2, s6, main_j1 #branch to jump instr
                  and          t2, t2, s5
main_j1:          jalr         s6, gp, -425 #jump main -> sub_1
                  bne          zero, t2, 423f
                  bge          a7, s7, 426f
                  slti         s6, s3, 1178
                  srl          gp, a1, s6
423:              slti         a2, t3, 1549
                  beq          s5, t2, 438f
                  bge          a6, t4, 426f
426:              bne          a7, ra, 435f
                  beq          zero, ra, 435f
                  add          s2, s6, a5
                  andi         zero, gp, 843
                  andi         t1, t5, -607
                  sltiu        s8, a2, 1689
                  srl          a3, s1, t3
                  addi         s0, tp, -31
434:              slli         gp, t0, 5
435:              sub          a0, t3, s5
                  srl          s11, s3, t0
                  andi         a2, t3, -1726
438:              beq          t4, t3, 447f
                  bne          s1, s9, 455f
                  add          s10, a6, tp
                  sll          t0, s8, gp
                  sltu         a7, t1, t1
                  sra          t3, a3, s2
                  bne          s7, s0, 455f
                  slt          t1, s10, tp
                  sub          a1, a7, s4
447:              beq          t0, a6, 462f
                  blt          zero, t5, 451f
                  srl          tp, sp, s11
                  auipc        a3, 27678
451:              lui          a1, 567766
                  bgeu         s7, s9, 460f
                  srai         gp, a5, 13
                  xori         a3, ra, -590
455:              srai         t1, s1, 11
                  lui          ra, 965885
                  or           a2, gp, a7
                  add          a2, a6, a1
                  andi         a4, s1, -1576
460:              srli         s2, tp, 24
                  ori          ra, t3, 1370
462:              srl          a5, a7, sp
                  ori          sp, zero, 163
                  and          a1, s4, a3
                  slli         s11, gp, 4
                  sub          s8, a3, s0
                  auipc        s3, 135914
                  srl          t5, s6, a2
                  bgeu         a0, s0, 476f
                  blt          s9, s10, 471f
471:              and          a4, t3, tp
                  slli         a6, s11, 24
                  slt          t1, ra, s0
                  nop
                  sltu         s2, s2, sp
476:              addi         sp, s0, -898
                  auipc        s7, 338529
                  blt          a6, s0, 490f
                  bne          t5, t4, 487f
                  xori         a4, a3, 782
                  srai         zero, t4, 16
                  add          s3, gp, t0
                  srai         sp, s8, 12
                  or           a7, a2, s8
                  sltiu        a3, sp, 1315
                  slt          s5, zero, a4
487:              slt          a7, s10, s2
                  nop
                  andi         sp, s5, -1293
490:              bltu         a5, ra, 504f
                  srai         t6, s2, 3
                  srai         a1, sp, 28
                  nop
                  sub          s4, t4, s10
                  bne          a0, s0, 504f
                  andi         ra, t2, -1287
                  srli         s2, s0, 4
                  sltu         a5, gp, gp
                  bne          sp, s1, 517f
                  andi         a3, t1, -2026
                  ori          a1, s5, -178
                  sltu         s4, zero, a7
                  bltu         s6, a1, 505f
504:              sltu         t2, s11, gp
505:              bge          a1, t6, 509f
                  lui          a3, 201421
                  and          a3, a2, t1
                  sltu         t0, a0, t5
509:              nop
                  bge          t0, a3, 521f
                  auipc        t5, 32575
                  sltiu        s3, t1, 559
                  andi         t0, a3, -1658
                  addi         a5, s4, -1408
                  auipc        s10, 484615
                  srl          a3, t0, a4
                  la           s5, sub_1
                  srli         a6, t3, 6
                  addi         s5, s5, -834
                  addi         a6, a2, 1364
                  srl          s0, s1, gp
                  sll          t3, t4, s10
                  bge          t4, a6, main_j3 #branch to jump instr
                  sltu         t1, s5, a0
                  slti         a3, t3, 1618
main_j3:          jalr         s6, s5, 835 #jump main -> sub_1
                  sll          t3, tp, s3
                  srai         a2, s4, 28
517:              sltiu        t3, t3, -910
                  xori         s8, ra, 1447
                  bgeu         s0, ra, 529f
                  xor          s0, s5, s4
521:              slti         s4, s1, -600
                  xori         s7, s9, 1677
                  xor          s5, t0, gp
                  auipc        zero, 722122
                  slt          t2, t5, s6
                  bne          s11, s1, 535f
                  xor          s11, sp, a2
                  bge          a0, a3, 531f
529:              slt          t1, a1, s9
                  sltiu        a5, s6, 400
531:              srli         s6, s5, 18
                  sltu         a1, a7, a1
                  nop
                  or           a4, t0, a2
535:              nop
                  srl          a1, s11, t6
                  lui          gp, 817919
                  sll          t6, a1, tp
                  add          t0, s11, s4
                  ori          t3, a0, -396
                  andi         t6, a1, -105
                  sub          s3, s5, a1
                  or           sp, s9, t0
                  srli         t0, t0, 28
                  sra          sp, a0, a6
                  and          gp, t6, s4
                  auipc        s4, 1026822
                  slli         a6, t2, 29
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            auipc        ra, 368795
                  xori         a4, s10, 216
                  blt          s1, s7, sub_2_stack_p
                  addi         sp, a0, 1496
sub_2_stack_p:    addi         t4, t4, -16
                  sltu         gp, s9, t2
                  sw           s6, 4(t4)
                  sltu         t0, zero, a4
                  slli         s3, a7, 18
                  la           s7, region_0+1571 #start load_store_instr_stream_3
                  lb           a6, 256(s7)
                  la           s11, region_0+706 #start load_store_instr_stream_2
                  la           s6, region_0+1449 #start load_store_instr_stream_1
                  lbu          a6, -632(s11)
                  la           a2, region_0+1815 #start load_store_instr_stream_0
                  sh           t6, -81(s7)
                  sw           t4, -15(a2)
                  lb           s2, 285(s11)
                  lbu          ra, -111(s7)
                  lh           t5, 53(a2)
                  sb           t3, -75(s6)
                  lh           s5, -108(s11)
                  sb           a0, -184(s7)
                  lb           a1, 1060(s11)
                  lb           a1, -64(a2)
                  lbu          a5, 148(s6)
                  lb           s5, -82(s6)
                  sb           s4, 525(s11)
                  lw           t2, -23(a2)
                  lb           zero, 196(s7)
                  lh           s2, -3(s6)
                  sh           zero, 35(a2)
                  lbu          tp, 48(a2)
                  lbu          s2, -20(s7)
                  lb           s10, 495(s11)
                  lb           a7, -30(a2)
                  lh           s8, 253(s6)
                  lh           a3, 229(s7)
                  lbu          a1, -54(a2)
                  lb           t6, 195(s6) #end load_store_instr_stream_1
                  lbu          gp, 769(s11)
                  sb           s1, 127(s7)
                  lh           tp, 618(s11) #end load_store_instr_stream_2
                  lb           s8, -61(s7) #end load_store_instr_stream_3
                  lb           zero, 30(a2) #end load_store_instr_stream_0
                  la           s10, region_1+406 #start load_store_instr_stream_2
                  la           t2, region_1+837 #start load_store_instr_stream_1
                  lbu          ra, 3(s10)
                  lh           a4, -11(t2)
                  la           a1, region_1+19 #start load_store_instr_stream_0
                  lh           s6, 9(t2)
                  sh           s4, 239(a1)
                  lbu          s5, 9(t2)
                  lh           s8, 71(a1)
                  lb           t1, -50(s10)
                  sb           s3, -32(s10)
                  lhu          tp, -9(t2)
                  sb           a4, 59(s10)
                  sh           t0, 13(t2)
                  sh           s7, -60(s10)
                  sb           sp, -10(a1)
                  lw           sp, 11(t2)
                  lb           s5, -17(s10)
                  lhu          t1, 32(s10)
                  lbu          t3, -8(t2)
                  sb           s8, 179(a1)
                  lb           t0, 3(t2) #end load_store_instr_stream_1
                  lbu          s0, -51(s10)
                  lbu          t0, 51(s10)
                  lh           tp, 187(a1)
                  sb           tp, -24(s10) #end load_store_instr_stream_2
                  lbu          s8, 42(a1) #end load_store_instr_stream_0
                  la           sp, region_1+1913 #start riscv_load_store_rand_instr_stream_2
                  and          ra, s10, s2
                  lbu          s11, -1903(sp)
                  lb           zero, -1622(sp)
                  lb           a3, -1888(sp)
                  srl          ra, zero, t0
                  andi         s4, zero, -1557
                  lb           a7, -1718(sp)
                  sw           a3, -449(sp)
                  lb           a7, -734(sp)
                  ori          a6, a1, -627
                  sh           t3, -431(sp)
                  sll          a1, t2, s6
                  lh           a2, -1505(sp)
                  sb           a4, -43(sp)
                  and          s11, t1, t6
                  sb           s3, -1070(sp)
                  sb           t6, -1392(sp)
                  or           s3, s11, t5
                  slt          a4, t2, s10
                  slli         s10, a5, 15
                  srli         a3, t5, 6
                  or           s8, t4, a7
                  lhu          a1, -1079(sp)
                  lw           t6, -961(sp)
                  srli         a5, zero, 12
                  sra          s10, s11, a7
                  lbu          a7, -625(sp)
                  sh           a2, -823(sp)
                  or           gp, s10, a4
                  add          s8, a2, t4
                  sh           s5, -219(sp)
                  lb           a1, -598(sp) #end riscv_load_store_rand_instr_stream_2
                  la           tp, region_0+1360 #start load_store_instr_stream_1
                  lhu          s11, -518(tp)
                  la           t5, region_0+1060 #start load_store_instr_stream_0
                  lhu          gp, -146(tp)
                  lb           gp, 115(t5)
                  sb           t0, -791(tp)
                  la           s5, region_0+276 #start load_store_instr_stream_2
                  sb           s7, 5(tp)
                  sb           a1, 49(s5)
                  lw           s4, 24(s5)
                  lb           ra, 5(t5)
                  lb           gp, -82(t5)
                  sb           t4, -1276(tp)
                  lb           sp, -1344(tp)
                  lhu          a4, 62(s5)
                  lw           t3, 240(t5)
                  sh           t1, 250(t5)
                  lb           t2, -207(tp)
                  sb           a5, 220(tp) #end load_store_instr_stream_1
                  lb           t1, 1(s5)
                  lb           a0, -30(s5) #end load_store_instr_stream_2
                  sb           s1, 213(t5) #end load_store_instr_stream_0
                  la           sp, region_0+1076 #start riscv_load_store_hazard_instr_stream_0
                  nop
                  lbu          s6, 13(sp)
                  sb           s6, 6(sp)
                  lb           s2, 4(sp)
                  lhu          s6, 4(sp)
                  lhu          s6, 10(sp)
                  sb           t3, -7(sp)
                  lhu          s6, -12(sp)
                  xori         s10, a2, 1146
                  sltiu        s7, a5, -1785
                  nop
                  sb           a4, 7(sp)
                  sb           s5, 5(sp)
                  lb           t1, -1(sp)
                  sra          t2, a3, a5
                  lb           s2, -1(sp)
                  lbu          s8, 7(sp)
                  sh           t4, 8(sp)
                  sb           gp, -2(sp)
                  sb           sp, -11(sp)
                  sltiu        s6, a4, 1675
                  sw           s5, 0(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1957 #start riscv_load_store_rand_instr_stream_1
                  sub          a3, s1, s2
                  lbu          s0, -213(sp)
                  nop
                  slt          ra, s2, ra
                  srl          s8, a7, a1
                  lbu          zero, -1506(sp)
                  lb           tp, -1726(sp)
                  sw           tp, -1321(sp)
                  andi         a5, t0, 1917
                  slt          t0, a4, tp
                  lbu          t0, -1948(sp)
                  xor          s2, t0, s1
                  lb           t3, -136(sp)
                  ori          s10, s2, -1170
                  sltu         s8, a7, s3
                  lb           s10, -1236(sp)
                  lbu          s6, -987(sp)
                  xori         s5, t5, 1816
                  auipc        t0, 288070
                  xori         a7, gp, 1949
                  and          s7, s1, s3
                  sb           s1, -1052(sp)
                  lb           s10, -990(sp)
                  ori          s11, t4, 1097
                  lb           s3, -514(sp)
                  slti         t0, t3, 1809
                  lbu          a0, -304(sp)
                  sb           gp, -1544(sp)
                  srl          tp, s8, s6
                  sb           a3, -1677(sp)
                  lbu          s4, -924(sp)
                  sra          t6, ra, sp
                  srli         s10, a1, 19
                  and          a0, s9, s6
                  lhu          a2, -1419(sp)
                  lbu          t0, -955(sp)
                  lhu          s2, -1(sp)
                  lb           t5, -1069(sp)
                  auipc        a2, 790133
                  sltiu        a3, a3, 934
                  srli         s5, s8, 23
                  lb           t1, -670(sp)
                  nop
                  lb           s10, -1725(sp)
                  lbu          a5, -1594(sp)
                  sb           s7, -1867(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_1+1612 #start riscv_load_store_rand_instr_stream_0
                  lhu          zero, 134(a1)
                  slt          s3, a5, t4
                  sh           sp, -68(a1)
                  sh           t3, -198(a1)
                  slli         gp, s0, 29
                  lhu          s5, 2(a1)
                  lw           s11, 44(a1)
                  auipc        s10, 109114
                  lbu          s3, -129(a1)
                  ori          s11, a4, 1892
                  lbu          a5, -29(a1)
                  lb           a0, 207(a1)
                  slt          t5, s9, a2
                  lh           s10, -106(a1)
                  lhu          s11, 74(a1)
                  lbu          a2, -178(a1)
                  lb           s4, -189(a1)
                  lw           s10, -216(a1)
                  lbu          s11, -92(a1)
                  slt          a2, s10, a2
                  srai         s5, sp, 14
                  lb           a6, -226(a1)
                  srl          zero, s0, t6
                  sb           zero, 16(a1)
                  sb           sp, 195(a1)
                  slt          s6, a3, ra
                  lhu          s8, 92(a1)
                  lhu          ra, -102(a1)
                  lbu          t3, -185(a1)
                  slli         t3, s3, 21
                  sb           s0, -121(a1)
                  sb           s4, 247(a1)
                  addi         a4, s11, 289
                  sub          t5, s8, t2
                  srai         s3, a6, 26
                  srai         a7, t0, 18
                  auipc        s2, 144144
                  xor          t0, a3, a5
                  lb           t2, 4(a1)
                  lb           t2, 41(a1)
                  lb           s7, -118(a1)
                  lbu          a6, 184(a1)
                  lbu          s7, -140(a1)
                  or           s6, s11, s0
                  lbu          s2, -105(a1)
                  lhu          gp, 192(a1)
                  add          t6, a6, t0
                  lbu          s4, 225(a1) #end riscv_load_store_rand_instr_stream_0
                  xori         a0, zero, 265
                  srli         a7, a3, 7
                  srai         t0, s0, 24
                  or           s8, s0, s4
                  srl          s4, a0, t6
                  ori          s8, sp, -453
                  sub          s10, s4, a3
                  beq          t4, t5, 27f
                  slli         t2, s2, 9
                  bltu         s7, a7, 12f
                  bltu         t3, s9, 28f
                  bne          a7, s4, 30f
12:               sub          t5, s7, s7
                  sltiu        t1, a5, -1886
                  and          s2, t4, t3
                  slti         s11, s0, -1972
                  auipc        zero, 318224
                  addi         s5, ra, -537
                  auipc        s5, 472851
                  andi         t6, s2, 758
                  bge          t6, s9, 21f
21:               slt          ra, t6, zero
                  auipc        s6, 661410
                  blt          a2, a0, 32f
                  sra          a1, a5, sp
                  blt          ra, ra, 30f
                  srl          a3, s8, a7
27:               beq          a3, t0, 45f
28:               bne          s1, t2, 47f
                  lui          t6, 624985
30:               addi         gp, a5, -139
                  srai         t3, a2, 4
32:               ori          a4, s3, -998
                  add          s0, t3, s7
                  bne          s10, t4, 46f
                  lui          a6, 988446
                  add          sp, t5, t0
                  andi         t2, t4, -1190
                  slt          s8, s5, ra
                  andi         zero, t1, 323
                  slt          s7, t5, a6
                  add          t1, gp, t0
                  sll          s4, s2, s9
                  slt          s4, s5, s5
                  sra          a0, t0, a7
45:               xor          a1, t5, t2
46:               bne          s10, s0, 57f
47:               lui          a6, 175187
                  bne          a7, t5, 67f
                  lui          t0, 45452
                  sra          s3, t5, s10
                  bgeu         s0, tp, 56f
                  blt          s6, zero, 54f
                  blt          s6, s7, 66f
54:               bge          a2, t3, 56f
                  or           tp, a3, tp
56:               andi         s7, s10, 1814
57:               srli         t5, s0, 27
                  sltu         t0, zero, s3
                  nop
                  nop
                  bge          zero, a0, 81f
                  sltu         a3, a5, s11
                  sltu         s8, s5, t3
                  bge          t2, gp, 73f
                  bltu         t4, s2, 80f
66:               sll          s2, ra, t1
67:               xori         s7, zero, -1219
                  bgeu         a2, tp, 74f
                  srl          a1, s10, s4
                  sub          sp, a6, a3
                  lui          s8, 729667
                  ori          t5, a6, -572
73:               bge          ra, a1, 93f
74:               srl          a2, s7, a0
                  and          a4, s9, s11
                  sub          a2, a3, t5
                  slt          s2, a2, s6
                  or           a0, s2, t5
                  ori          ra, gp, 1454
80:               auipc        a7, 901295
81:               blt          a7, s0, 93f
                  or           s11, a5, s5
                  ori          s3, s5, -517
                  or           t0, s4, s2
                  addi         zero, a4, -3
                  nop
                  srai         t0, a0, 14
                  nop
                  sltu         tp, s3, s10
                  sll          a7, zero, a0
                  nop
                  nop
93:               slti         s6, s8, 18
                  xor          t0, t2, s3
                  and          t6, a4, s7
                  srai         t2, a2, 30
                  blt          sp, t1, 105f
                  lui          s11, 156701
                  sra          a2, s9, s11
                  bltu         gp, s8, 104f
                  and          tp, s6, a7
                  xor          t0, s2, a7
                  xori         s6, t3, 1846
104:              xori         zero, t1, -1914
105:              sll          s11, a3, t4
                  lui          a4, 508528
                  srli         s6, t0, 31
                  sub          s3, ra, t3
                  nop
                  sra          s7, t0, t5
                  xori         s2, a3, -1072
                  beq          s8, t1, 124f
                  andi         t6, tp, 1993
                  or           a3, a2, a1
                  sltu         s2, ra, t4
                  beq          a1, s7, 132f
                  nop
                  slt          s4, s10, a0
                  lui          sp, 331962
                  bgeu         s9, a7, 121f
121:              slti         s5, s8, -442
                  or           a1, s3, gp
                  blt          gp, a5, 127f
124:              and          ra, t4, s2
                  srl          s3, zero, s9
                  bgeu         t0, s8, 137f
127:              sll          gp, s10, s1
                  auipc        t2, 292706
                  blt          s2, t1, 143f
                  bge          t6, t2, 132f
                  beq          s2, t4, 140f
132:              sltu         t6, s5, a6
                  auipc        s6, 863019
                  xor          a2, s1, sp
                  and          a7, s3, s10
                  or           a4, a4, a3
137:              ori          a4, s0, -1315
                  slt          a0, t5, s9
                  nop
140:              srai         s2, a3, 15
                  sra          t6, a6, s4
                  srai         t6, s10, 15
143:              slli         s7, t5, 1
                  lui          t1, 258888
                  bltu         s0, a5, 165f
                  add          t2, t4, s7
                  addi         gp, a3, 683
                  add          t5, s7, s7
                  ori          s8, gp, 480
                  blt          a1, t0, 162f
                  add          s7, a3, s3
                  bge          a2, t2, 170f
                  sub          s2, s8, s3
                  slti         a7, zero, 49
                  beq          t6, s3, 175f
                  blt          a1, t4, 164f
                  srl          a2, a3, s8
                  sra          a6, s9, s3
                  sltiu        a4, s0, -1719
                  bgeu         s0, t0, 163f
                  auipc        s0, 973091
162:              slli         a3, a0, 1
163:              beq          t1, a7, 168f
164:              sll          s7, t1, s6
165:              blt          s11, s6, 181f
                  addi         s0, s9, -38
                  auipc        ra, 339217
168:              sltu         s6, gp, a7
                  add          a7, a1, s8
170:              add          s6, sp, s11
                  or           t1, a5, s7
                  srli         a2, t2, 14
                  sll          sp, a6, a2
                  bltu         sp, t3, 178f
175:              lui          a3, 626555
                  auipc        t0, 1016193
                  sltu         s5, tp, s10
178:              bne          s1, s3, 189f
                  bltu         s10, t5, 197f
                  sltiu        s10, t2, 1211
181:              slli         sp, tp, 24
                  bltu         a2, s3, 188f
                  la           sp, region_0+814 #start riscv_load_store_hazard_instr_stream_1
                  sra          s8, s3, t2
                  lb           s4, 190(sp)
                  lb           t2, 913(sp)
                  sb           gp, 250(sp)
                  lw           a0, 250(sp)
                  lbu          ra, 156(sp)
                  lh           gp, 156(sp)
                  lw           gp, -6(sp)
                  lb           a4, 799(sp)
                  add          a1, a5, t5
                  lbu          s11, -397(sp)
                  sb           ra, 498(sp)
                  slt          s7, a2, t3
                  addi         t3, s0, -3
                  lbu          zero, 757(sp)
                  sb           s5, 757(sp)
                  sb           s0, 665(sp)
                  sb           t4, 1147(sp) #end riscv_load_store_hazard_instr_stream_1
                  xori         s0, a2, 1413
                  slt          s4, a4, s4
                  blt          gp, t2, 196f
                  slt          s4, s10, s11
                  and          s8, s9, zero
188:              andi         zero, s3, -601
189:              nop
                  andi         ra, s7, -1186
                  auipc        s5, 549167
                  blt          s2, a7, 193f
193:              bge          zero, a1, 198f
                  bne          s10, tp, 195f
195:              nop
196:              andi         t1, t1, -350
197:              sll          s3, t3, s9
198:              addi         t6, a1, -1948
                  ori          a6, a0, -180
                  srai         a0, a1, 26
                  and          s0, a5, s4
                  srli         a0, t5, 9
                  xori         a4, s1, -727
                  srl          s6, a2, gp
                  blt          s10, s2, 209f
                  bgeu         a5, ra, 221f
                  bne          sp, zero, 221f
                  bltu         a1, t2, 227f
209:              bgeu         sp, s4, 222f
                  nop
                  sra          t2, s9, a4
                  sltiu        s7, a4, 672
                  beq          a3, s3, 222f
                  blt          s5, a2, 233f
                  add          s6, t5, a7
                  bgeu         zero, t1, 228f
                  bltu         a3, s6, 236f
                  and          a1, s11, s10
                  bge          s0, s6, 239f
                  srli         t0, a7, 13
221:              sra          zero, t1, gp
222:              slti         s10, s2, 1091
                  auipc        s3, 250126
                  srli         t1, t5, 9
                  ori          a4, a1, -1784
                  slt          t0, s9, t6
227:              sltiu        t1, t6, -1338
228:              ori          a0, s5, -1222
                  andi         s4, s10, 329
                  auipc        s6, 534861
                  slt          sp, s7, a6
                  slt          a5, a1, s10
233:              sub          ra, t0, a2
                  sub          a6, t2, s11
                  sll          a2, s2, a3
236:              slli         ra, t2, 11
                  beq          s7, a2, 249f
                  add          a7, s10, t3
239:              beq          ra, a5, 241f
                  blt          zero, s0, 251f
241:              sltiu        s5, ra, -152
                  ori          s8, sp, 1846
                  add          s0, s1, a3
                  sll          t6, t2, t0
                  srli         ra, sp, 0
                  lui          s0, 564810
                  ori          s10, t5, 250
                  srl          s2, s0, s10
249:              and          a4, tp, s1
                  ori          s2, t1, -176
251:              andi         a1, t4, 343
                  srl          a4, s4, t4
                  auipc        t5, 318997
                  ori          s10, a2, 1858
                  bge          tp, a0, 275f
                  sub          zero, t6, a2
                  auipc        s8, 923433
                  nop
                  andi         s3, ra, 630
                  add          a1, gp, s2
                  sra          a0, tp, s4
                  lui          s6, 611202
                  sll          a1, t5, a0
                  sltiu        t6, s3, 1464
                  lui          s3, 614787
                  ori          s0, a6, 598
                  xori         tp, t1, 523
                  sub          s0, s1, s4
                  slli         zero, t3, 29
                  blt          a6, s4, 271f
271:              auipc        a1, 446066
                  xori         zero, s0, 1789
                  addi         s5, zero, -980
                  bge          t1, gp, 286f
275:              andi         t1, a6, 214
                  blt          t5, a4, 282f
                  bge          t6, s2, 289f
                  sltu         a3, s6, s11
                  sra          a2, zero, a6
                  nop
                  nop
282:              ori          a1, gp, -1778
                  auipc        s2, 518115
                  nop
                  slli         s7, t0, 8
286:              auipc        t6, 91309
                  andi         zero, zero, 1562
                  beq          s3, zero, 307f
289:              ori          a4, a2, -964
                  bge          s8, s1, 299f
                  xor          t2, t0, s7
                  srai         t2, gp, 5
                  slt          a6, a3, s4
                  slti         sp, a5, -936
                  sub          sp, a0, s9
                  addi         s8, s9, 7
                  bge          tp, a2, 316f
                  auipc        gp, 153983
299:              srli         s4, a4, 16
                  slli         t3, a6, 24
                  slt          s7, tp, a6
                  addi         a4, s10, -1104
                  sltiu        zero, a0, 1636
                  blt          t6, s4, 309f
                  slti         a4, t2, 1981
                  ori          a0, s4, -1017
307:              bltu         sp, t2, 311f
                  srli         t5, s9, 20
309:              lui          s5, 634148
                  xor          gp, t5, sp
311:              lui          a1, 174255
                  bgeu         a7, t4, 317f
                  bltu         t2, tp, 333f
                  la           a4, region_0+264 #start riscv_load_store_hazard_instr_stream_2
                  lw           s3, -44(a4)
                  lw           t6, -44(a4)
                  lhu          s6, -16(a4)
                  sh           a3, -50(a4)
                  sra          s6, a3, t0
                  lb           s8, 35(a4)
                  sb           s10, 35(a4)
                  sb           a4, 35(a4)
                  sb           t2, 35(a4)
                  slli         t3, tp, 24
                  lb           t6, 47(a4)
                  sw           s5, 44(a4)
                  lbu          ra, 44(a4)
                  lb           a3, 44(a4)
                  sw           t3, 44(a4)
                  sb           s9, 58(a4)
                  lb           zero, 58(a4)
                  lhu          s4, 58(a4)
                  auipc        s3, 156117
                  lhu          t2, 58(a4)
                  sh           s9, 58(a4)
                  sh           s1, 52(a4)
                  lb           t6, 52(a4) #end riscv_load_store_hazard_instr_stream_2
                  sltiu        s10, t3, -1938
                  and          a4, t6, a0
316:              sltiu        a1, zero, 1794
317:              srl          a6, t5, a0
                  sub          a5, t3, sp
                  sll          a0, ra, s2
                  srl          t3, a3, sp
                  bge          s2, s4, 329f
                  or           gp, t3, t0
                  bge          s4, t0, 335f
                  sub          t0, a5, t5
                  nop
                  add          t2, s0, zero
                  beq          s6, sp, 328f
328:              sra          tp, t2, s6
329:              xor          t1, a1, s5
                  sltiu        s3, s10, -562
                  lui          s8, 281033
                  slli         s10, zero, 7
333:              auipc        s2, 911902
                  sll          t6, s6, s1
335:              and          gp, sp, s9
                  lw           s6, 4(t4)
                  slt          t0, s9, s11
                  slli         tp, s8, 5
                  addi         t4, t4, 16
                  and          a5, t0, a0
                  sub          a3, s4, a5
631:              addi x23, x22, 0
631:              jalr x23, x23, 0
sub_1:            addi         t4, t4, -28
                  andi         a2, s4, 957
                  slli         a5, s0, 0
                  ori          ra, zero, 657
                  sltu         a7, sp, s7
                  sw           s6, 4(t4)
                  xor          a7, zero, s10
                  addi         t1, t4, 1666
                  auipc        t2, 855437
                  la           s8, region_0+1332 #start load_store_instr_stream_0
                  la           s0, region_0+1344 #start load_store_instr_stream_1
                  lb           s2, 29(s0)
                  lb           s10, -1169(s8)
                  sb           t4, 27(s0)
                  lbu          a5, -881(s8)
                  sh           s8, -56(s0)
                  lb           s6, -1223(s8)
                  lb           s2, -23(s0)
                  lb           ra, -1101(s8)
                  lb           t1, 133(s8)
                  sb           a1, -1055(s8)
                  sb           s10, -4(s8)
                  sb           s0, 49(s0) #end load_store_instr_stream_1
                  lw           t6, -160(s8)
                  lb           t1, -508(s8) #end load_store_instr_stream_0
                  la           s3, region_1+302 #start riscv_load_store_rand_instr_stream_0
                  srai         ra, t1, 4
                  lh           t2, -8(s3)
                  srl          t6, s7, s7
                  or           s2, t6, t5
                  lh           s4, -26(s3)
                  sw           a7, 154(s3)
                  srl          s10, a7, s3
                  sh           t4, -58(s3)
                  srai         gp, a2, 27
                  sb           t2, 143(s3)
                  lb           t2, -44(s3)
                  sub          t6, t5, a6
                  lbu          s10, -174(s3)
                  sb           s4, 241(s3)
                  lbu          s10, 155(s3)
                  sw           a7, 206(s3)
                  sh           s2, 34(s3)
                  add          s6, a4, s2
                  sb           t4, -75(s3)
                  xori         tp, s11, 69
                  add          a1, gp, s9
                  or           t0, s1, a0
                  lb           t0, -191(s3)
                  sb           t5, -228(s3)
                  sll          t3, s6, s3
                  sltiu        a6, zero, 807
                  sb           gp, -203(s3)
                  lh           s5, -114(s3)
                  xor          tp, s6, sp
                  auipc        a0, 797846
                  andi         t3, t2, 1976
                  addi         sp, t6, 897
                  sh           t6, -32(s3)
                  sb           t4, -123(s3)
                  addi         s2, s6, 1681
                  sltu         t3, s5, a7
                  srli         tp, tp, 14
                  sb           a6, 200(s3) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_1+1574 #start riscv_load_store_hazard_instr_stream_0
                  srai         t2, a2, 7
                  andi         t1, t6, -1409
                  sh           t5, 50(s2)
                  sb           t0, 50(s2)
                  lb           t0, 50(s2)
                  lbu          a0, 50(s2)
                  addi         ra, s7, -1716
                  lh           a4, 50(s2)
                  lbu          t3, 50(s2)
                  sw           a2, 50(s2)
                  sw           a3, 50(s2)
                  and          a6, t4, s11
                  sb           s2, 50(s2)
                  sw           a4, 50(s2)
                  lhu          t5, 50(s2)
                  lh           a2, 50(s2)
                  lw           t2, 50(s2)
                  add          s5, a4, s2
                  xor          s7, a6, s4
                  lb           s10, -42(s2)
                  lb           a6, -42(s2) #end riscv_load_store_hazard_instr_stream_0
                  or           s2, tp, s2
                  xori         a4, a0, 1525
                  and          s4, s9, t4
                  srl          a4, s6, s4
                  lui          t2, 44090
                  beq          s10, t2, 22f
                  sltiu        s8, s10, 1027
                  slti         a4, s6, -305
                  srai         s7, t5, 6
                  sltu         s3, ra, a2
                  sub          t1, s7, t2
                  xori         a5, s8, -1084
                  ori          s4, s8, 1436
                  add          t2, t5, s0
                  ori          s4, a3, 935
                  add          a2, ra, a7
                  xori         a4, s1, 1494
                  srli         t3, t2, 2
                  sll          t5, a0, a4
                  blt          a0, a2, 32f
                  and          t1, t3, ra
                  or           t2, zero, a0
22:               sltu         t5, ra, s7
                  sll          t5, t6, t4
                  addi         t1, s4, -1419
                  slti         gp, a0, -1738
                  nop
                  sra          s2, t5, t6
                  auipc        s11, 22097
                  bge          ra, s0, 41f
                  blt          s10, t5, 40f
                  ori          s10, s7, 353
32:               ori          s10, a5, -811
                  add          a5, s9, s7
                  bgeu         t0, s10, 51f
                  sub          s7, tp, a0
                  xor          s5, a6, s8
                  blt          ra, s8, 39f
                  sra          t1, s0, a6
39:               ori          a2, s0, -1894
40:               bne          t6, a4, 60f
41:               andi         a6, sp, -3
                  or           gp, a7, t0
                  srl          s0, zero, s4
                  lui          s4, 913049
                  addi         a2, s6, -1981
                  xor          t6, a5, t3
                  ori          s7, a7, 1240
                  sub          a3, s3, s1
                  ori          zero, t4, -670
                  srai         a7, tp, 0
51:               sub          s8, s6, s10
                  slli         s7, s9, 25
                  add          s4, t6, s4
                  xor          a1, s6, s0
                  blt          s7, s10, 67f
                  xor          t3, s3, s9
                  slli         s6, s5, 6
                  andi         a2, t1, 73
                  bltu         a1, zero, 64f
60:               bgeu         a7, ra, 70f
                  sltu         a6, a5, a4
                  bne          t2, gp, 69f
                  andi         t2, s7, 1927
64:               ori          t6, s10, 295
                  bne          t5, s6, 80f
                  blt          sp, s1, 68f
67:               blt          zero, s4, 86f
68:               sub          sp, a5, s4
69:               auipc        t1, 840981
70:               xor          a4, a0, sp
                  nop
                  or           a5, t1, a1
                  srli         s0, a4, 15
                  slli         s8, gp, 28
                  sltu         t0, s4, tp
                  bgeu         s1, s8, 83f
                  add          a7, gp, s9
                  xor          s7, s10, t2
                  xor          s5, s5, s8
80:               beq          sp, a1, 88f
                  srli         t3, a7, 7
                  and          s0, a5, s1
83:               sltu         t0, a6, t6
                  auipc        s6, 30335
                  xori         sp, tp, 798
86:               blt          gp, s1, 100f
                  blt          s3, s10, 97f
88:               andi         s2, t2, 1652
                  beq          tp, s9, 96f
                  xor          sp, s8, s6
                  srl          t1, s11, a6
                  sub          sp, a6, s2
                  sll          s3, a2, s9
                  xor          s2, ra, sp
                  sub          t6, s1, a0
96:               bltu         s8, sp, 112f
97:               add          t2, s2, s1
                  nop
                  sra          a7, a1, gp
100:              ori          s7, t0, -1305
                  sra          t0, s5, a3
                  slt          a4, a3, ra
                  sltiu        ra, s4, -376
                  srli         a5, a6, 14
                  lui          a3, 488254
                  sll          a0, zero, t0
                  sltu         t3, a0, t0
                  andi         a5, t5, -1641
                  slt          s3, zero, ra
                  xori         a1, s5, -1815
                  ori          tp, t3, -1529
112:              addi         s2, a0, 941
                  srli         s7, a0, 7
                  lw           s6, 4(t4)
                  slti         a2, a0, -403
                  xor          s11, s1, a0
                  srli         t1, zero, 1
                  or           a5, t5, s11
                  srai         s5, s11, 23
                  addi         t4, t4, 28
                  auipc        s7, 554461
                  nop
                  ori          s7, gp, 981
                  sltu         t5, s11, zero
211:              addi x24, x22, 1
211:              jalr x24, x24, 0
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
.word 0x9309b1e6, 0x5f7639c7, 0x8176b445, 0x31b43117, 0x95bd2e1e, 0xcccc965b, 0xcff083e8, 0xb0eb732b
.word 0x765ea053, 0x40dab27c, 0xa6969cca, 0xe19e5479, 0x798717e8, 0x0c001dff, 0x05369e92, 0x521fe425
.word 0x5cc35715, 0x3425cd9a, 0x4393345c, 0xe2268dcc, 0xf226d998, 0x8a8c8a8c, 0xc59f2cc4, 0x4e01b6b6
.word 0x332b175c, 0xd1117132, 0xa614c41f, 0xb80c6ca3, 0x67ac0ff8, 0xcca5df69, 0xbd18003f, 0xff95a0d6
.word 0xa6188316, 0x19e8ea5e, 0xdda7cb11, 0x39dfb8a3, 0xabb93649, 0xdc169290, 0xa973be93, 0xf3254875
.word 0xd9f79f61, 0xeaf22dff, 0xea1685ef, 0x1ef58dc3, 0x76e564bd, 0xc03f1fec, 0x89be242b, 0x164f9183
.word 0x5ebe3009, 0x4d8da3f8, 0xdf17a407, 0x90ca236d, 0xe3f70884, 0xefd7cd82, 0x0febade8, 0x177f1d64
.word 0x1915271d, 0x4d199927, 0x6da0261a, 0x9248765f, 0x2c29d869, 0xdb45fd40, 0x16ef1fe6, 0x3e0a098b
.word 0x9bc4c1a9, 0xa9aa129d, 0x0aafe526, 0x38900be9, 0xa5353256, 0x123d534e, 0xff7bdc3e, 0xd2c00648
.word 0xfecdc8d9, 0x1bcc3321, 0xe6d1a9b5, 0x468858c5, 0x22a3350e, 0x92adf63d, 0x85172ce4, 0xb669f367
.word 0xa5b3c090, 0xbd69ea28, 0x81e35cca, 0xf16e638a, 0x350d6b8a, 0x8f91a4da, 0x6287da79, 0x346a4d32
.word 0xf0a5b361, 0xea166379, 0x078fa0eb, 0x118ce7f5, 0xb78d90a3, 0xfe77f87d, 0x279d2939, 0x9d553c36
.word 0x6c8f7e99, 0x1076f5d3, 0x66d66294, 0xe966fef7, 0x8d7a8d0e, 0xa08622ad, 0x38626714, 0xe70d84cd
.word 0xa3b006a7, 0x3f7ecec1, 0xe729e13b, 0x1cf2e20d, 0x1e7a79cf, 0x7bda2c8d, 0x94c913e5, 0xbd986f39
.word 0x1b6a929b, 0x7ba74a5b, 0x8d3fa656, 0x86d61fae, 0xc1168968, 0x6ed283cd, 0x98430f4a, 0xab0686da
.word 0x4139dcb3, 0x65e54f89, 0xb185052c, 0x67df1ef2, 0xda3ce4e9, 0x6d499d35, 0x349277c6, 0xca99139a
.word 0x02503057, 0xeeec472d, 0x2eac1acf, 0xd69447b0, 0x5590e06a, 0x2271d982, 0x3c3d6ccb, 0x72cce53e
.word 0x9c8c2849, 0xefe17624, 0x4559dafa, 0xf04e2155, 0x5f21d9ed, 0x714de3aa, 0xd8415334, 0x3775adc5
.word 0xfee6dced, 0x60196fdc, 0x6b7010fb, 0x795c1270, 0xd3cd6482, 0xc8cb74d4, 0x7ca72b40, 0x9f7c9f2a
.word 0xb6f9dc60, 0x40875031, 0x1ad49420, 0x69e8f8e1, 0x78d30486, 0xb83326f8, 0x4914b6e8, 0x75c51d03
.word 0x6a6dc826, 0xc2f32a09, 0x85b7dd7d, 0x0cd7f559, 0x553e9551, 0x94276dfe, 0x4778be4e, 0x42e874ca
.word 0xd8edb5f4, 0x325eecfd, 0x11556dea, 0xa03f5d9f, 0x7f7815fe, 0xfbb1fb07, 0x42fca98a, 0x2c60a15a
.word 0xf03c3928, 0x9c6c1d64, 0x355153f6, 0xf4ab02ae, 0x293ade65, 0x32f601b8, 0x87322416, 0xb771e292
.word 0xef7aed24, 0xd7912534, 0x7a738fa8, 0x6690b799, 0xfa3e5122, 0x81f05eaf, 0x2459a866, 0x85ecdf37
.word 0x831a07dc, 0x0935805e, 0xf80a347d, 0x8861d0ac, 0x2e730724, 0x5462ddd1, 0x017fddd1, 0x425dd7ba
.word 0x64fc7694, 0x79354fbe, 0x5ef8226c, 0xa6ac2e3f, 0x96eefc44, 0xec36fc09, 0x47804d72, 0xf861d9c7
.word 0x962d6c48, 0x46b74807, 0xe6d44556, 0x3eb0a45d, 0x8aeea195, 0x5d1f5909, 0x58fa8544, 0x17f9149e
.word 0xe1313aad, 0x5d9e3489, 0xc46718da, 0xcce3824a, 0xfec3860f, 0xc31014f0, 0x5cd22d87, 0x1d31db57
.word 0x8bfc3acb, 0x43f0a78d, 0x7c04b060, 0x797a0f67, 0x3c48f6ba, 0x4f8cf812, 0x4e6f9744, 0x99ce5697
.word 0x20bf8132, 0x278e9194, 0xf0aac64f, 0x627fa473, 0x10e14163, 0x43a7c732, 0x29ea7366, 0x93cbd277
.word 0xc169fdd5, 0xf0345910, 0x3410a53e, 0xc183876f, 0x3274c09d, 0x5a1fdac8, 0xb8cdce10, 0x48db14ea
.word 0x4a172801, 0xd1ebdede, 0x7d5a2206, 0x6c3c512d, 0xdf2cad5c, 0x2ab764f9, 0xedae6643, 0xbafc0cc9
.word 0x5bc99592, 0xffc66f05, 0x23b8e9be, 0xb8797ce8, 0xe93180ec, 0xb335ab58, 0x568d6636, 0x157da98e
.word 0xb6e9651f, 0x5a691681, 0x996e5f4b, 0xc9a8f6e5, 0xb5d65c54, 0x312b74f6, 0x8c50f743, 0x9eafaf41
.word 0x06a1ddf7, 0x8def76d4, 0x661d0f0f, 0x93dd868c, 0x12a582f1, 0xfbed52b0, 0x9e49a12b, 0xd48c7ce7
.word 0xd92ee274, 0x575d25af, 0x908db346, 0xe125c506, 0x6c8a7b44, 0x4002ecaf, 0xd19e7d38, 0x82097f4f
.word 0x9bead67c, 0xdfb84a97, 0xe0b4c6d7, 0x056d6ff3, 0x487765da, 0xac476066, 0x96d3bdcd, 0x6e347488
.word 0x382f008d, 0xfe72e7a8, 0xd81a7f57, 0x5134caa5, 0x80205209, 0x5db37ce4, 0xe1700ff1, 0x53afa30b
.word 0x8688c025, 0x0eb69145, 0x2767f315, 0x9bde322e, 0x6fe7b393, 0xf8a6e817, 0x1e043042, 0x62a9a44c
.word 0xe8d33523, 0xc37280fc, 0x032645e8, 0xb121b88e, 0x5831c4ac, 0xb0153d6e, 0x8894f748, 0x4690089c
.word 0xbd28e3c0, 0x06062605, 0x65056b82, 0x5d137d8f, 0x8e57f4de, 0x8d738159, 0xb5fb6cb4, 0x7e2ed341
.word 0x5cc8fcea, 0x0806db24, 0x07059b8f, 0xee6e0cae, 0xca0db5e7, 0xd9c5d685, 0xeddfb5fa, 0x11e74150
.word 0xef3fd872, 0x541dd25d, 0xb05a27b1, 0xa01bf341, 0x54334f57, 0x5d5e3fd4, 0x067e4ede, 0x0da6c6ab
.word 0x9771a907, 0x9b68bfc9, 0x9d0186fa, 0x3fa48cd3, 0x3949021c, 0xbbf6cc96, 0x8323e4a6, 0x24805350
.word 0x6e2c8a08, 0x5bd5b42d, 0x1a35a978, 0x2a2d6c5f, 0x28d8188f, 0x5705cff7, 0xaefb8d75, 0x85b2de28
.word 0x65a168e0, 0x66379b66, 0xda8492d6, 0x739fd98c, 0xa10c90c4, 0x829ad892, 0xee343873, 0x9e714fb2
.word 0xe67357f4, 0xfcbf0ae3, 0xcb3c96b6, 0xead3b92b, 0xec350bba, 0x62144a56, 0x09e79052, 0x5545067d
.word 0xe9619aa6, 0x8a03ede1, 0xf32ab2e5, 0x5dfc1748, 0x92fa3cc6, 0xdd1df80e, 0x7f6e4992, 0x55aaf1d3
.word 0x2263ea4b, 0x57b9b206, 0x1f66970d, 0xf3c93404, 0x266e855a, 0x239e75ff, 0x1a1dbce0, 0x1b059a82
.word 0xe7fa5550, 0x3364e51c, 0xd5d3e1e1, 0x73f55493, 0xa8ea546d, 0x3f35d963, 0xbd3b2a9a, 0x9f082cb6
.word 0x5cd0a071, 0xf32f9b57, 0x322f6d2a, 0xda9523b7, 0x05b8485a, 0x3d220270, 0x323b8734, 0xc9b7eceb
.word 0x411ce984, 0x22198259, 0x40ebc68c, 0xa7dd80a9, 0xa3a033fd, 0x1d3aaae1, 0x83d7eb4e, 0xa06cddea
.word 0xf8384298, 0xaae96391, 0x25829e6e, 0x83078711, 0x9671074d, 0x041996e9, 0x2a0425c3, 0x288319d9
.word 0x79c943b9, 0x58e1fdae, 0x8932a4ca, 0x4f4e44bb, 0x90cd2df1, 0x83e73bdf, 0xc92d15ad, 0xbcb12c45
.word 0x2cc81045, 0x485a98f3, 0xfee7c585, 0x0631e312, 0x44cef983, 0xf0066066, 0x7ce89ad0, 0xfbda454d
.word 0x4f640d84, 0xce267827, 0x6aecc97b, 0x988450cd, 0x25fbc7aa, 0x28a7e8b4, 0xf122f131, 0x1869bd70
.word 0x4f66db6a, 0x43ada2c7, 0x2bc459a3, 0x40363581, 0xb1b0e9cb, 0x7e68feb0, 0xf4266cfa, 0xf59c5245
.word 0xb236f4da, 0xc8a641a7, 0xf53c591b, 0x432b3289, 0x403b9d0c, 0x7edfe529, 0x354cfcce, 0x262f28e8
.word 0x6023bf08, 0xdeac6de9, 0x73a1c00b, 0x565248ff, 0xe28a24e5, 0x493b456c, 0xfc93bd56, 0xed81d31c
.word 0xa5c4ea44, 0xeb84e561, 0x5a8acad0, 0x0d78f259, 0xd4ac8f53, 0x84db34fa, 0x32c00c74, 0xa57badea
.word 0x5fb74b8a, 0x2d872486, 0x878c6878, 0x1ab9e38c, 0xcb5f1deb, 0xec11ae01, 0x2fc5e25d, 0x1bd0f1ad
.word 0x46ae71f2, 0xb1bbd84e, 0xcfce85c7, 0x7316cbde, 0xfc7e496d, 0x1e59c357, 0x5880688a, 0x64f376aa
.word 0x169d3483, 0x61060be7, 0xde17a430, 0xebbc4b68
.section .region_1,"aw",@progbits;
region_1:
.word 0xae63616d, 0x6bff40b4, 0xce8b32c5, 0xb7274e45, 0x5c74cdec, 0x5b24e6cb, 0x27046c7d, 0xde014f97
.word 0x0ea57063, 0xbd9bab7b, 0x14fe7c8c, 0x9c15b714, 0xcfeac8e4, 0x763fe701, 0x7cc5bc2f, 0x444ff471
.word 0xdfc9f373, 0xca0f9d2a, 0x4a5a4caf, 0xc700bafc, 0x2468efb5, 0x67453530, 0x6cc240a2, 0x0a877c27
.word 0x28d43806, 0xaa64d73f, 0x608589e4, 0x60bd4a68, 0x00d1033f, 0x7450786c, 0xed1a1954, 0x114d9c1e
.word 0x1651218f, 0xec4f840b, 0x9cd5cfff, 0x0af50c61, 0xc907727b, 0xa4a55dc4, 0x24ca3c11, 0x2479a2e6
.word 0x1c036d60, 0xf45f4834, 0xa91b5035, 0x18b207a7, 0x068f7e21, 0xfe764ca6, 0xb4b8e5e0, 0x4141ea0a
.word 0xd30af9f8, 0x7744e42f, 0xb2937a4e, 0x1a318b3e, 0xcd9a20cd, 0x33f40301, 0xc642e3dc, 0x08707112
.word 0x9a6f1347, 0xc79fbb73, 0xfd997a02, 0xd0b8ebae, 0x1134f218, 0xaa3de76d, 0xf67ebe7b, 0xd613d9dd
.word 0xa2f09698, 0x11d85ba1, 0xcc5211df, 0x8068aaec, 0x0a0d3530, 0x8f253319, 0xdaa2d67b, 0x7e3919a5
.word 0xd206b98f, 0x3203660a, 0x3bd43de2, 0x7e7c7d21, 0x29f2e3e4, 0x598ddf53, 0x0f2a73ea, 0x1cfef653
.word 0x4fd5dbbc, 0x79a8e679, 0xd6b5af48, 0x717f345b, 0x19808058, 0x987fcb1d, 0x7c4b468f, 0x65c24f96
.word 0x26fecc4a, 0x6cd7c9ac, 0x73b18187, 0xca7263e8, 0xbe1eef81, 0x41e4e529, 0xe68da825, 0x75c69f6d
.word 0xbaab805b, 0xcdb0c341, 0x1f1b9e07, 0xf46b0476, 0xeda32d79, 0x35e79906, 0x19cc6eb8, 0x1357cc5d
.word 0xf97e5d09, 0xc6a7305b, 0x3ce3cc36, 0xc8e707ef, 0xe064ee82, 0x473ca379, 0x25321c80, 0xfa3e2f15
.word 0x59935489, 0x5883b071, 0xad964fc4, 0xccf775ec, 0x6f8ad6e4, 0x539b7104, 0x80a00831, 0x8894c15c
.word 0xe7175ec1, 0x9b9d0d63, 0x48b331b0, 0xb1fdfb89, 0x2b2c47b0, 0xc271e749, 0x51c1ebce, 0x18ad1acd
.word 0x2d4d562e, 0x98112532, 0x4c60bb62, 0x5e22dfbc, 0x9e03d245, 0x33c207b1, 0xbabccc33, 0xe3f0a984
.word 0x17957bca, 0xc259d821, 0xf976901d, 0xc2846dfc, 0x8f6017ec, 0x87ce63fb, 0x97676bc3, 0x95f18fc5
.word 0x4a5cfe3e, 0x47a84d60, 0xaa0af693, 0x4a417271, 0xd3a8935f, 0x23f8aa2a, 0x154e71cc, 0x2cdb4a97
.word 0x3b7ed725, 0x0a72a4f9, 0x3c134e48, 0x2d900c54, 0x4892b5ef, 0x8c8b9a53, 0x0afa5294, 0x1f13a9c7
.word 0xdad307f0, 0xa9f54221, 0xe27816a8, 0x9b4f3cbd, 0xeaf3db31, 0xae5606f5, 0xe188883f, 0xafd14f91
.word 0xa25ad7db, 0xb6f7df85, 0xaad4458a, 0x173bb42b, 0x0b4521ba, 0x4526b4da, 0xb3e41f62, 0x8835e045
.word 0x690f46f3, 0x44057870, 0x8c65c015, 0x502bc756, 0xdc5e4270, 0x27d3cf14, 0x848dedf0, 0x5ecd6a39
.word 0xde075b87, 0x88a3df38, 0xdfc4cb66, 0xa6be12bc, 0x393273a2, 0xfa95d393, 0x1237b80e, 0x10bdf4cf
.word 0xc84d5c96, 0xef45e6a7, 0xab1631e6, 0x0373d771, 0xf0dd0cb9, 0x52fff1b0, 0xff33ac7c, 0x8a642eba
.word 0x880de71b, 0xa3e5b200, 0x31e716a7, 0xb08c574f, 0x8b524f14, 0x1ec1c540, 0x7d7fb760, 0xd688db3a
.word 0x301acdca, 0xb0ade028, 0xdb88f939, 0x1a110f48, 0xab110e21, 0xa9c4d2ba, 0xd60453b1, 0x22b1e4a4
.word 0xabbd37b0, 0xbb5c3680, 0x4e4c2ce8, 0x3ef343bf, 0x6be617dd, 0xccc13819, 0x875f1796, 0x74c7e42f
.word 0xaf13ce7d, 0xd458580b, 0xff03c739, 0xc27f8524, 0x67a2a519, 0x2cac71a6, 0x89a0b366, 0xfad589e5
.word 0x5b3852bd, 0x512b1318, 0x1b8483e7, 0x9000329b, 0xd2857d73, 0x4b1fe539, 0x4a7ca408, 0x682c0de4
.word 0xdda3b8f3, 0x0abac1f0, 0x49a536d8, 0x0cce5811, 0x69683bfd, 0xf9d6590c, 0xe2075cd0, 0x9b0be068
.word 0x5f6993c3, 0x71200deb, 0x75b55d9b, 0xb744c202, 0x8f4f73b2, 0xec2bd41e, 0xcd703d6c, 0xeeebde14
.word 0x1feab7e3, 0xd2f54fdd, 0x1019cf4d, 0x4b2f57c7, 0x38322e31, 0x8dfb9360, 0x816880f7, 0x47b0ec22
.word 0x6d759f63, 0x84647837, 0x65df38d6, 0x3e1fc10f, 0x72326bf4, 0xd25f7ccb, 0xfa7506a6, 0x612414ac
.word 0xd58acd09, 0x7906032a, 0x7793deee, 0x6a839053, 0x024ebc8e, 0xfcb4bc6f, 0x40650157, 0xbd1214cf
.word 0xa69e4211, 0x1a7df658, 0x17766434, 0x694388fe, 0x60be18a2, 0x5cddc207, 0x131c7bca, 0x08f15e89
.word 0x994de637, 0xe7625729, 0x89c71c9c, 0x9d07c10e, 0x6562275f, 0x4cd90e4a, 0xec2ee69f, 0x06d837e4
.word 0xa043228e, 0x5376b354, 0xf9a21ba8, 0x16da18b6, 0x25a07861, 0x6c5cd8a0, 0x8439255f, 0x0e0c3fd5
.word 0xc584094a, 0x87ef866f, 0x2631b243, 0x7e952524, 0x286150ff, 0x888261fe, 0x0e67e9ce, 0x14997a97
.word 0x669ba4f0, 0xb1c04bc1, 0x934cc8db, 0x0ea9ee82, 0xb4b64e09, 0x4186ee3c, 0xa7ae80b4, 0xedf276f2
.word 0x6d7ba6e4, 0xf773e4f1, 0x87ad32fb, 0x5cba86a3, 0x0c68ec8c, 0x834ffee2, 0x6d4e017b, 0x21607f80
.word 0x0e0d1fc7, 0x598e8683, 0x31f61fba, 0x5dfaef9a, 0x20f3042e, 0xd40448d5, 0xa75e6eeb, 0x696b9672
.word 0xce9f25df, 0xcecf0740, 0x64fa22d1, 0xcddb99b1, 0x7c441fa4, 0x4d395296, 0x429cc41c, 0x1d644924
.word 0x30c5b85a, 0x1abb328b, 0x3266e88a, 0x90f54016, 0x8befcccc, 0x9f861c65, 0x77054dd6, 0x31df184d
.word 0xd7032cfd, 0xe016f6d8, 0x9f0bf7c9, 0xde3b02ab, 0xf7273035, 0xf04f0b71, 0x8c092675, 0xd8832e7c
.word 0xed2d6045, 0x1fcbd91f, 0xcb9300ee, 0x29e52aeb, 0x9a480993, 0xcd1b20d6, 0x0fdd1efc, 0xaacb0acf
.word 0x1ef1ee3f, 0xa4c523eb, 0xeebcb99d, 0x2c565eef, 0x1fa298bd, 0xf1035cc5, 0x5ea72021, 0x2ac4181b
.word 0xe7bf1083, 0x5378aca7, 0x3813522b, 0xf1b90caa, 0x58a15e9e, 0x8d3f7bd2, 0xbf7a58d5, 0x46ec0dea
.word 0xc6323c69, 0xd86cb33e, 0x8dda4983, 0x0648bdb2, 0xe586c9c7, 0x53c33f0a, 0x42e6ee92, 0x91fb8463
.word 0xbd8f962a, 0xf4948c66, 0x26b46089, 0xde62598c, 0xf254117e, 0x6df490a6, 0x3c351b38, 0x41240eb9
.word 0x6f2729a5, 0x3ba6058a, 0xc5afd0d1, 0xfd35020b, 0xeffdd5bb, 0x5d7b4b0e, 0x2b0ecfa5, 0x70a1773f
.word 0x44433f16, 0x77f5582b, 0xe4177fef, 0x3640b8f7, 0xe4dd98fe, 0x69628970, 0xcf5f3542, 0x34f65d8a
.word 0x01cfe04b, 0xfac31201, 0x1656aa1b, 0x97bfec46, 0xfed96ad4, 0xf9e7ab3d, 0xff23ea3a, 0x7f93be91
.word 0x88a3e011, 0x2460626f, 0xc880346b, 0xf4b34249, 0xc5206166, 0x092496fa, 0x57f850ef, 0x5ecb2969
.word 0xb6d507a8, 0x3a2d5e26, 0xe5109489, 0x74706fa7, 0x134088d6, 0x7b8be30a, 0x4b182686, 0xba1019ea
.word 0xc31f7ae7, 0x380ef53b, 0xa63a2623, 0x79048262, 0x225330fb, 0x0b9886ed, 0x39e32c4b, 0x1fdc6d08
.word 0xe1b2aacb, 0x47896372, 0xf8eb2bb1, 0xbfbd35b6, 0x19b062ba, 0xb2c01125, 0x9b1e3951, 0xdccb5c74
.word 0xc2a8f714, 0x7ce589c1, 0x4f8357ce, 0xf591f6fd, 0xaa39cc3b, 0xa3a67da5, 0xf7ac3395, 0xec5784a5
.word 0x74b09904, 0x5c3005f4, 0xd5b6df42, 0x067b4b0c, 0x4723f144, 0x7cec7573, 0xaf3fbaf8, 0x022c44db
.word 0x673f904e, 0xc2871a3c, 0x3b87f5fe, 0xda898fca, 0xc5cf24ec, 0xfd88936f, 0x7b38ff71, 0xd683038a
.word 0x6913e92c, 0x48a074c5, 0x1f266a3e, 0x035f0ab4, 0x392019a9, 0xb71b2389, 0xcaea14b7, 0xb115857a
.word 0x0ed9003d, 0xbf504847, 0x7deb5023, 0xccb01d40, 0xd6dd9669, 0xc2816641, 0x2fee3f38, 0xc5d208cd
.word 0x6561e15d, 0x01e1e598, 0x47c7cbb8, 0xd80aeb2d
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x9, x29, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x20, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x20, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x20, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x20, x21, ecall_handler
                  li x21, 0x1
                  beq x20, x21, instr_fault_handler
                  li x21, 0x5
                  beq x20, x21, load_fault_handler
                  li x21, 0x7
                  beq x20, x21, store_fault_handler
                  li x21, 0xc
                  beq x20, x21, pt_fault_handler
                  li x21, 0xd
                  beq x20, x21, pt_fault_handler
                  li x21, 0xf
                  beq x20, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

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
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x29, x9, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x9, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x9, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x29, x9, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x29, x9, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x29, x9, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
