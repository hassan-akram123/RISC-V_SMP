.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 1
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0xfeb0330e
                  li x1, 0x80000000
                  li x2, 0x1
                  li x3, 0xf7893a2d
                  li x4, 0x8
                  li x5, 0xe
                  li x6, 0x3fe1819b
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x9
                  li x12, 0xf551f608
                  li x13, 0xf9c29998
                  li x15, 0xe
                  li x16, 0x30191d56
                  li x18, 0x69baabdc
                  li x19, 0x4
                  li x20, 0x80000000
                  li x21, 0xd
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xa
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0xc
                  la x17, user_stack_end
main:             la           sp, region_0+272 #start load_store_instr_stream_1
                  la           s4, region_0+1624 #start load_store_instr_stream_0
                  la           s7, region_0+1131 #start load_store_instr_stream_3
                  la           a2, region_0+1324 #start load_store_instr_stream_2
                  lb           a6, 10(sp)
                  sh           a1, -8(sp)
                  la           tp, region_0+6 #start load_store_instr_stream_4
                  lbu          t2, -1300(s4)
                  lhu          gp, 12(sp)
                  sb           t0, -184(s7)
                  lbu          s8, -7(sp)
                  lhu          t5, -1262(s4)
                  lbu          s0, -972(a2)
                  lb           s6, -991(a2)
                  lh           a5, -296(a2)
                  lh           s8, 1788(tp)
                  lb           t3, 754(tp)
                  lbu          s8, -15(sp)
                  lb           s0, 20(s7)
                  lb           s5, -1107(s4)
                  sb           a6, -230(s7)
                  lhu          a5, -1342(s4)
                  sb           tp, -124(s7)
                  sh           sp, -2(sp)
                  lh           s6, -1620(s4)
                  sw           s2, 1378(tp)
                  sh           s2, -187(s7)
                  sb           s1, 8(sp)
                  lhu          a0, -726(a2)
                  lb           a3, 1(sp)
                  lbu          s8, -62(s7)
                  lb           s9, 769(tp)
                  lb           ra, 233(a2) #end load_store_instr_stream_2
                  lbu          t5, 1608(tp)
                  lh           a1, 251(s7) #end load_store_instr_stream_3
                  lbu          s5, 990(tp) #end load_store_instr_stream_4
                  lbu          a6, 9(sp)
                  sb           a5, -6(sp) #end load_store_instr_stream_1
                  lbu          zero, -499(s4) #end load_store_instr_stream_0
                  la           sp, region_0+79 #start riscv_load_store_hazard_instr_stream_2
                  lbu          t1, 90(sp)
                  lb           a5, 90(sp)
                  lb           t3, 115(sp)
                  lhu          t1, 115(sp)
                  lb           gp, -4(sp)
                  sb           a6, -4(sp)
                  lbu          t6, -4(sp)
                  srli         t3, t4, 8
                  lh           s0, -61(sp)
                  sh           s2, -23(sp)
                  lbu          s4, 132(sp)
                  slti         gp, s5, 1855
                  lbu          t3, 234(sp)
                  lbu          t3, 234(sp)
                  lbu          tp, 234(sp)
                  lb           t1, 245(sp)
                  add          s1, tp, s0
                  lbu          t0, 245(sp)
                  sw           a3, 245(sp)
                  lbu          a3, 12(sp)
                  lbu          s8, 12(sp)
                  lb           s4, 200(sp)
                  lbu          t1, 74(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           gp, region_0+1208 #start riscv_load_store_hazard_instr_stream_4
                  lb           a6, -44(gp)
                  xori         s6, t0, 1409
                  auipc        zero, 809793
                  lw           a3, -44(gp)
                  lw           t2, -44(gp)
                  lhu          s8, -44(gp)
                  lhu          s6, -44(gp)
                  sw           s0, -44(gp)
                  srl          a1, s4, a7
                  lh           t3, -44(gp)
                  lhu          s5, -44(gp)
                  sb           s4, -44(gp)
                  lh           s2, -44(gp)
                  nop
                  lbu          t0, -44(gp)
                  sltiu        s10, t1, -1023
                  nop
                  lb           zero, -44(gp) #end riscv_load_store_hazard_instr_stream_4
                  la           s6, region_0+1223 #start load_store_instr_stream_2
                  la           s10, region_0+1697 #start load_store_instr_stream_0
                  lbu          t5, -59(s10)
                  sb           s1, -54(s10)
                  lb           t1, 52(s10)
                  lb           ra, -4(s6)
                  la           s5, region_0+923 #start load_store_instr_stream_1
                  lw           s4, 89(s5)
                  lhu          t0, -15(s6)
                  sb           a7, 43(s10)
                  lbu          s9, -276(s5)
                  lbu          s1, 138(s5)
                  lb           t3, 14(s6)
                  sh           t0, -47(s10)
                  sh           s3, 7(s6)
                  sb           t0, 61(s10)
                  lb           t5, 1072(s5)
                  lw           s1, 209(s5) #end load_store_instr_stream_1
                  lh           s11, 15(s6)
                  sb           t3, -36(s10)
                  lb           s0, -14(s6) #end load_store_instr_stream_2
                  sb           s5, -34(s10) #end load_store_instr_stream_0
                  la           s0, region_0+1595 #start riscv_load_store_rand_instr_stream_3
                  xor          t2, s3, s4
                  and          s10, a6, s9
                  xori         a5, s0, -1990
                  sw           sp, 5(s0)
                  addi         gp, t2, 36
                  auipc        t2, 1028437
                  addi         a3, s10, 1672
                  sh           s11, 15(s0)
                  sb           s3, 10(s0)
                  slt          sp, s0, s2
                  srl          s10, s0, ra
                  nop
                  lhu          sp, 5(s0)
                  nop
                  lh           t5, -13(s0)
                  andi         s1, zero, -539
                  sb           s7, -14(s0)
                  slli         t2, s6, 6
                  lbu          a6, -10(s0)
                  sltiu        t2, t2, -813
                  lb           t3, 8(s0)
                  ori          t1, s0, 82
                  srl          t3, a5, t5
                  slt          zero, a0, t3
                  lhu          t4, -11(s0)
                  andi         s9, a5, 921
                  lb           sp, 8(s0)
                  nop
                  srli         t6, t5, 16
                  sltiu        a0, t4, 1716
                  sw           t0, 1(s0)
                  sub          a2, sp, s11
                  slt          zero, s5, t2
                  sb           s0, -3(s0)
                  lb           t5, 4(s0)
                  lui          a5, 169400
                  sra          t2, s9, t5
                  lbu          s11, -6(s0)
                  sltu         tp, tp, s11
                  lbu          t5, -1(s0)
                  slli         t6, s0, 23
                  lb           t4, 0(s0)
                  slli         ra, s1, 30
                  lb           t0, 6(s0)
                  lb           a3, 14(s0) #end riscv_load_store_rand_instr_stream_3
                  la           s5, region_0+1238 #start load_store_instr_stream_1
                  sh           s3, 158(s5)
                  la           a5, region_0+321 #start load_store_instr_stream_0
                  sb           ra, 48(a5)
                  sb           s5, 89(s5)
                  lbu          t0, 14(a5)
                  lbu          a6, -238(s5)
                  lb           t0, 43(s5)
                  lh           t5, -19(a5)
                  sb           ra, -253(s5)
                  sb           t1, 25(a5)
                  sw           zero, -41(a5)
                  sh           a2, 186(s5) #end load_store_instr_stream_1
                  lbu          s10, 54(a5)
                  lbu          s7, 14(a5) #end load_store_instr_stream_0
                  la           a6, region_1+1563 #start riscv_load_store_rand_instr_stream_1
                  srli         s0, s11, 5
                  lb           s7, 164(a6)
                  ori          s4, s11, -821
                  lb           a5, -92(a6)
                  sub          t1, a7, s1
                  lbu          s2, -121(a6)
                  slli         tp, t1, 20
                  slti         zero, s0, -308
                  or           s9, a1, s9
                  srli         a0, s6, 11
                  lui          t4, 667526
                  lb           s2, 133(a6)
                  sll          s7, s10, s0
                  sub          a5, a5, s7
                  srl          tp, a3, a0
                  lb           s4, -66(a6)
                  sb           t1, 212(a6)
                  lbu          t0, 240(a6)
                  sltu         t5, a0, t6
                  lh           t3, -237(a6)
                  and          s1, t3, t1
                  nop
                  slt          t4, t2, a2
                  lb           a2, -8(a6)
                  lb           s4, 168(a6)
                  andi         t2, s11, 1179
                  xor          gp, s11, a7
                  lb           t2, -160(a6)
                  lb           s7, 24(a6)
                  xori         s4, a3, -1123
                  slli         t1, t6, 24
                  sb           s3, -46(a6)
                  sltiu        zero, gp, 1296
                  addi         sp, t2, -1212
                  lw           t3, -15(a6)
                  auipc        t1, 527030
                  lb           s0, 124(a6)
                  sb           t0, -225(a6)
                  sb           s2, -166(a6)
                  lb           s7, 195(a6)
                  lw           s1, 121(a6)
                  sh           t3, 41(a6)
                  slti         t6, s7, -193
                  ori          sp, gp, 129
                  lbu          s5, 203(a6)
                  sltiu        s2, t4, 1477
                  slt          t4, gp, a0
                  lb           s5, -62(a6)
                  addi         t5, s8, -1417
                  lbu          s0, 45(a6)
                  srl          t5, gp, t0
                  sb           tp, -98(a6)
                  sub          t2, a7, t5
                  lb           s9, -58(a6)
                  xor          s6, t4, t4
                  lb           sp, 183(a6) #end riscv_load_store_rand_instr_stream_1
                  la           s7, region_1+1503 #start riscv_load_store_rand_instr_stream_4
                  or           t0, a0, t2
                  slti         s9, t6, 747
                  andi         s6, s6, -562
                  sub          ra, s2, zero
                  sll          a3, t6, ra
                  slli         s10, s11, 7
                  srai         gp, t3, 25
                  sb           s10, -6(s7)
                  sw           zero, -15(s7)
                  add          t6, t3, a1
                  ori          ra, t3, 1823
                  sub          s1, s9, a1
                  sll          t0, s3, tp
                  lbu          s6, -16(s7)
                  xor          t2, sp, s11
                  lbu          a5, 12(s7)
                  lbu          s11, -12(s7)
                  lb           a0, 4(s7)
                  sra          sp, a7, s9
                  lbu          s11, -4(s7)
                  lui          s11, 994460
                  andi         a5, a6, 519
                  sb           t1, 2(s7)
                  sb           s11, -8(s7)
                  sb           a4, -12(s7)
                  sh           s1, 7(s7)
                  lb           s0, -4(s7)
                  sub          tp, a7, t4
                  lh           a6, 15(s7)
                  slli         tp, ra, 9
                  lbu          s0, -4(s7)
                  nop
                  srl          s10, t2, gp
                  slt          t0, tp, s8
                  xor          zero, zero, a4
                  auipc        t0, 414437
                  sb           a4, 6(s7)
                  lb           t0, -10(s7) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_0+1076 #start load_store_instr_stream_4
                  la           s9, region_0+1796 #start load_store_instr_stream_1
                  la           a5, region_0+930 #start load_store_instr_stream_2
                  lh           s10, 22(a6)
                  lb           s0, -983(s9)
                  la           a3, region_0+3 #start load_store_instr_stream_0
                  sb           t0, -1453(s9)
                  sb           gp, 62(a5)
                  lhu          s11, -1562(s9)
                  lb           s4, -591(s9)
                  lh           zero, 11(a3)
                  sb           s11, 64(a5)
                  sb           gp, -2(a3)
                  lbu          a0, 6(a3)
                  lbu          s4, 37(a6)
                  lh           s1, -8(a5)
                  lh           s7, -8(a5)
                  lb           ra, 4(a3)
                  lb           s8, -296(s9)
                  lb           t6, 15(a5)
                  sb           a5, 18(a5)
                  sh           s10, 0(a5)
                  sh           gp, -1(a3)
                  lbu          sp, 28(a6)
                  la           a1, region_0+163 #start load_store_instr_stream_3
                  lb           s4, -1655(s9)
                  lb           gp, 12(a3)
                  lb           s7, 1(a6)
                  lhu          a2, -2(a5)
                  sb           s4, 360(a1)
                  lbu          t3, -734(s9)
                  lb           s2, -35(a5)
                  lbu          zero, -25(a6)
                  lb           t3, 1133(a1)
                  lb           zero, -1287(s9)
                  lh           s4, 1673(a1)
                  lhu          t1, 62(a5) #end load_store_instr_stream_2
                  sb           s9, 772(a1)
                  lbu          tp, -1054(s9) #end load_store_instr_stream_1
                  lbu          s1, 210(a1) #end load_store_instr_stream_3
                  lb           t1, -23(a6) #end load_store_instr_stream_4
                  lbu          tp, -2(a3) #end load_store_instr_stream_0
                  la           sp, region_0+1243 #start riscv_load_store_rand_instr_stream_0
                  lbu          zero, 4(sp)
                  xori         a5, t5, -1556
                  add          t4, s6, s8
                  auipc        s5, 706748
                  sltu         s8, a4, tp
                  lbu          a2, 8(sp)
                  sb           ra, -2(sp)
                  auipc        s10, 305100
                  lbu          a6, -10(sp)
                  srai         a5, ra, 25
                  sh           a2, -5(sp)
                  lb           s10, 5(sp)
                  add          a6, s8, a3
                  sltu         t2, s4, a7
                  nop
                  lui          t2, 851302
                  lhu          s11, -9(sp)
                  sltu         tp, a3, gp
                  ori          s6, s9, -788
                  lbu          s2, -5(sp)
                  lui          tp, 361746
                  lbu          s4, -16(sp)
                  sub          s10, t1, gp
                  addi         s8, tp, 971
                  ori          a6, t3, -1538
                  sh           t1, 15(sp)
                  lui          s11, 3124
                  lw           a2, -15(sp)
                  nop
                  sltiu        a5, s2, -1927
                  lhu          s6, 9(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_1+997 #start riscv_load_store_hazard_instr_stream_1
                  sll          s9, t4, a6
                  sb           gp, 2(a2)
                  slti         s2, t2, -114
                  lb           t6, 8(a2)
                  lbu          t4, -7(a2)
                  lui          s10, 85682
                  lb           sp, 32(a2)
                  xori         a5, a0, -1548
                  lb           s10, 32(a2)
                  sw           a7, 3(a2)
                  sll          ra, s11, a6
                  sh           s6, -43(a2)
                  sb           t4, -34(a2)
                  sub          s8, a3, s1
                  lb           s0, -2(a2)
                  lbu          t1, 42(a2) #end riscv_load_store_hazard_instr_stream_1
                  la           a3, region_1+145 #start riscv_load_store_hazard_instr_stream_3
                  lh           ra, 67(a3)
                  and          t6, a6, a6
                  lbu          t6, -138(a3)
                  nop
                  addi         t1, s11, -439
                  lb           a0, -138(a3)
                  lbu          sp, -138(a3)
                  auipc        gp, 193005
                  andi         ra, a1, 265
                  lb           ra, 242(a3)
                  andi         s7, t6, -1836
                  lw           s7, 1731(a3)
                  lbu          s11, 1731(a3)
                  lhu          gp, 1731(a3)
                  lh           s6, 1731(a3)
                  lbu          s1, 1731(a3) #end riscv_load_store_hazard_instr_stream_3
                  la           a0, region_1+1133 #start riscv_load_store_hazard_instr_stream_0
                  and          t5, a1, t4
                  sb           s4, -4(a0)
                  sb           t2, 13(a0)
                  sll          a3, s4, s4
                  lbu          s10, 13(a0)
                  sltiu        s9, a7, -636
                  lh           t3, 13(a0)
                  sltu         a1, s6, a6
                  sb           s3, -12(a0)
                  lh           t0, 15(a0)
                  lb           t5, -13(a0)
                  lhu          t6, -13(a0)
                  lb           gp, 4(a0)
                  lbu          t2, 4(a0)
                  sb           a3, 4(a0)
                  lbu          s4, 0(a0)
                  sb           a3, 12(a0)
                  sra          s9, tp, a5
                  sll          s1, t5, t5
                  lbu          t0, 16(a0)
                  sb           s7, 16(a0) #end riscv_load_store_hazard_instr_stream_0
                  auipc        zero, 368624
                  xori         s11, s7, -501
                  sra          s6, a6, s1
                  slli         a0, gp, 27
                  andi         a1, s10, 222
                  srli         gp, a0, 7
                  la           a2, region_1+1180 #start load_store_instr_stream_2
                  la           t4, region_1+995 #start load_store_instr_stream_4
                  la           s10, region_1+1288 #start load_store_instr_stream_1
                  lbu          ra, -463(t4)
                  la           a0, region_1+974 #start load_store_instr_stream_3
                  lbu          s1, 79(a0)
                  sb           s5, 81(a2)
                  sb           s5, 247(a0)
                  sb           tp, 200(t4)
                  sb           s1, -348(s10)
                  la           sp, region_1+1063 #start load_store_instr_stream_0
                  sb           t0, 338(t4)
                  lb           s0, 882(t4)
                  lb           a5, -25(a0)
                  sb           t5, 35(a0)
                  sh           zero, -785(t4)
                  sh           t1, -730(s10)
                  lb           s2, 36(sp)
                  sb           a6, -156(t4)
                  lbu          s6, 256(a2)
                  lb           a5, -923(s10)
                  lb           s1, -189(a0)
                  lb           a5, -365(t4)
                  sb           s8, -443(s10)
                  sb           zero, 366(t4)
                  sb           t1, 63(sp)
                  lb           s5, -242(a2)
                  lb           s0, -313(s10)
                  lbu          s9, -525(t4) #end load_store_instr_stream_4
                  sb           a4, 109(a2)
                  lb           s0, -26(sp)
                  lb           s9, -913(s10)
                  sb           s6, -32(sp)
                  lbu          s0, 92(a2)
                  sw           a0, -840(s10) #end load_store_instr_stream_1
                  lb           gp, 249(a0) #end load_store_instr_stream_3
                  lw           a5, -140(a2) #end load_store_instr_stream_2
                  lbu          a6, 50(sp) #end load_store_instr_stream_0
                  xori         sp, s10, -1365
                  sra          s11, s11, s1
                  slli         s2, s5, 17
                  bne          t2, s8, 13f
                  blt          t0, t5, 25f
                  addi         s7, t1, 1106
                  srli         s7, t1, 0
13:               lui          s4, 40744
                  srli         tp, t4, 12
                  bge          s9, s7, 25f
                  sll          t4, zero, s0
                  sll          a5, t2, s10
                  auipc        t1, 221216
                  bgeu         a2, s4, 38f
                  bne          sp, a7, 28f
                  nop
                  srli         a2, s4, 9
                  or           ra, tp, a4
                  lui          a2, 908510
25:               sltiu        ra, ra, -1704
                  srl          t1, s1, t5
                  bne          a0, sp, 33f
28:               lui          sp, 394616
                  slli         s9, s6, 18
                  ori          t6, s11, 1739
                  slli         t1, t0, 25
                  srai         s0, gp, 28
33:               sltiu        t1, s7, 1182
                  lui          s11, 191401
                  sub          s5, a2, a4
                  sll          t6, a6, s6
                  beq          s4, s3, 44f
38:               bgeu         t1, s5, 48f
                  and          s2, s0, s10
                  or           s4, t5, a4
                  xori         s7, a2, -1286
                  sll          ra, s1, a3
                  srl          s9, ra, s5
44:               nop
                  sra          s0, zero, t6
                  ori          a5, t0, -1059
                  andi         s10, a3, 895
48:               sll          ra, tp, gp
                  beq          t6, s9, 67f
                  sra          t5, zero, a0
                  sra          s9, a3, s9
                  andi         zero, s11, -503
                  andi         a1, s8, 995
                  ori          a0, s1, 1799
                  bne          s11, a6, 60f
                  auipc        zero, 271065
                  andi         s6, tp, 319
                  bgeu         gp, s0, 65f
                  and          t6, ra, a1
60:               bgeu         ra, t4, 73f
                  sra          s10, s6, zero
                  xori         s9, a1, -270
                  bgeu         a2, a7, 72f
                  slli         t3, gp, 30
65:               andi         t3, t6, -1478
                  xori         s7, t4, 847
67:               add          t2, a1, s9
                  auipc        a1, 829950
                  andi         a3, s3, 1085
                  bgeu         sp, s0, 79f
                  blt          t4, a4, 83f
72:               bltu         t0, s5, 78f
73:               bne          tp, zero, 87f
                  srai         gp, s6, 14
                  la           a1, sub_1
                  sub          t6, s6, t3
                  addi         a1, a1, -300
                  slli         ra, a7, 26
                  bge          s10, s1, main_j1 #branch to jump instr
                  srai         s11, a7, 21
                  andi         s9, s3, -1262
                  add          zero, a0, s10
                  addi         s11, a2, 1416
main_j1:          jalr         ra, a1, 300 #jump main -> sub_1
                  ori          s10, t4, -1989
                  blt          s3, s9, 79f
                  sub          s1, t6, s10
78:               sltiu        t1, t1, -1772
79:               slli         s0, s1, 25
                  sll          sp, t1, tp
                  sra          tp, t4, s4
                  slti         t5, a3, 1183
83:               xori         s8, zero, -197
                  blt          a2, s7, 97f
                  sltiu        a6, s3, 786
                  bne          s7, s6, 100f
87:               ori          tp, t1, -829
                  srai         s2, a3, 15
                  blt          a0, gp, 107f
                  addi         s5, t4, 690
                  srl          gp, tp, a7
                  srli         t6, a2, 28
                  sub          tp, t4, a3
                  auipc        a0, 157849
                  nop
                  srai         a3, s0, 24
97:               lui          s10, 707104
                  ori          zero, t4, -1952
                  sra          ra, s0, a0
100:              slli         gp, t2, 25
                  slti         a5, s9, 1131
                  nop
                  blt          s11, t2, 120f
                  sll          sp, gp, a6
                  auipc        s10, 366329
                  add          t4, s5, t1
107:              sltiu        a0, t3, -1435
                  add          t0, s7, s4
                  bgeu         tp, a2, 119f
                  sltu         t3, t6, gp
                  and          s7, t1, s7
                  and          gp, s8, s2
                  bgeu         a4, a4, 127f
                  ori          t0, gp, -1257
                  ori          t5, s1, 1155
                  sltiu        s0, s6, 974
                  add          t6, t1, t5
                  auipc        a6, 199148
119:              bge          t4, a5, 133f
120:              lui          a3, 986569
                  sltiu        a3, s0, -1982
                  sltu         zero, t5, s5
                  sll          t4, a3, zero
                  srli         t5, a0, 31
                  srl          zero, s2, s9
                  sll          a2, s11, t2
127:              blt          s10, tp, 140f
                  andi         s2, a0, 488
                  or           t5, ra, t2
                  sub          s9, zero, t4
                  addi         t5, a5, 1115
                  slt          a2, a0, s9
133:              slt          t5, s1, a6
                  bgeu         t3, s9, 139f
                  ori          s8, a4, -1505
                  slt          gp, s10, s4
                  srli         s8, s5, 14
                  bltu         s7, a6, 154f
139:              blt          t3, s6, 147f
140:              bgeu         t5, t3, 153f
                  srl          tp, s6, t3
                  slti         zero, s4, 934
                  sll          t1, t2, t4
                  xor          s6, s0, ra
                  xori         gp, a0, 957
                  ori          a5, zero, 1259
147:              xori         s11, s5, -131
                  lui          s7, 807971
                  xori         s11, t6, 152
                  beq          s3, tp, 163f
                  slli         ra, t6, 29
                  and          s5, s3, a2
153:              add          tp, s3, s5
154:              sub          gp, sp, a5
                  sra          t4, a6, s9
                  srl          tp, s11, s1
                  srl          s9, t1, a2
                  xori         t2, a0, -1193
                  srai         ra, s6, 21
                  beq          sp, zero, 168f
                  slt          t4, s6, tp
                  slt          t6, t5, a4
163:              srl          zero, t6, s9
                  auipc        a0, 187180
                  bne          a4, s8, 179f
                  andi         s2, zero, -711
                  sltu         t3, t0, sp
168:              bge          a1, s7, 177f
                  srai         t4, s7, 10
                  or           a2, s10, sp
                  sub          s6, s9, a2
                  auipc        a2, 249250
                  nop
                  sll          ra, s9, s3
                  or           a5, s8, zero
                  srl          s6, s2, a2
177:              slti         tp, t3, -281
                  srl          s9, ra, s4
179:              slti         s11, t1, -830
                  sltu         t1, s5, t1
                  and          s0, a4, a6
                  bge          t4, t0, 190f
                  bltu         a6, sp, 195f
                  bgeu         t0, zero, 187f
                  sll          t1, t6, s2
                  sltiu        gp, t0, 1591
187:              slt          t0, s3, s6
                  sra          s10, t1, s5
                  addi         t2, s9, -1526
190:              srli         s6, t2, 5
                  auipc        sp, 873027
                  or           t0, s5, s6
                  sll          s9, s7, s5
                  sra          a6, a6, tp
195:              bge          s0, s7, 202f
                  sltu         gp, t4, s0
                  slli         s5, s5, 31
                  auipc        a1, 367331
                  sltiu        t1, a7, 1178
                  add          a5, a0, gp
                  addi         s2, a7, -1259
202:              lui          t1, 453784
                  sra          s2, t6, s7
                  xor          a3, a7, s11
                  nop
                  sub          t4, t6, zero
                  srli         a0, a4, 22
                  lui          zero, 182179
                  sub          a6, a1, a4
                  la           sp, region_0+1243 #start riscv_load_store_rand_instr_stream_2
                  srl          s5, s9, s5
                  lh           a5, -235(sp)
                  slt          a3, a4, t3
                  lh           a2, -251(sp)
                  sb           s4, 6(sp)
                  or           s10, s11, a0
                  slti         s2, sp, 498
                  lui          ra, 494134
                  lb           t3, -75(sp)
                  lbu          t2, 80(sp)
                  lbu          t3, 54(sp)
                  sb           t4, -38(sp)
                  lb           t4, 16(sp)
                  addi         s8, zero, -538
                  sltiu        a5, t2, 336
                  sltiu        s7, s8, -1870
                  lbu          s11, -202(sp)
                  sw           s10, 45(sp)
                  sb           sp, -76(sp)
                  sb           t1, 100(sp)
                  lbu          s7, 65(sp)
                  sb           s11, 16(sp)
                  auipc        t6, 307254
                  sb           t2, 6(sp)
                  sh           s0, 31(sp)
                  and          tp, a4, s8
                  sltiu        s2, s2, 674
                  add          s4, a1, t1
                  and          s9, s4, a5
                  sra          ra, t0, ra
                  lbu          a5, -169(sp)
                  slti         a1, t6, -465
                  xor          gp, t0, t0
                  lbu          gp, -60(sp)
                  slti         gp, s1, 1700
                  auipc        t5, 419390
                  srl          s9, s3, a6
                  srli         t2, t3, 16
                  lb           zero, -216(sp)
                  nop
                  srli         t4, s0, 7
                  lh           a0, -61(sp) #end riscv_load_store_rand_instr_stream_2
                  lui          zero, 109964
                  srl          t4, a3, s10
                  andi         tp, a3, 592
                  auipc        s7, 672495
                  add          a6, zero, s1
                  sub          s7, a7, t4
                  blt          t2, a5, 220f
                  nop
                  slti         s9, s2, -38
                  slt          t6, s2, a5
220:              bge          s10, a0, 225f
                  slti         a0, s9, 1716
                  sltu         s9, s9, zero
                  xor          t5, a4, a2
                  bgeu         ra, a3, 233f
225:              bltu         gp, a4, 244f
                  bgeu         a2, s2, 236f
                  sltu         a1, s8, s6
                  srl          s7, gp, s3
                  sltiu        s6, sp, 1784
                  sub          a0, s11, a2
                  slt          a3, s6, sp
                  la           s8, sub_1
                  slli         s6, a0, 11
                  andi         s10, s10, -1273
                  andi         s4, a7, 1013
                  sra          t6, s7, s4
                  srai         s7, t1, 21
                  addi         s8, s8, -738
                  bne          a1, a7, main_j2 #branch to jump instr
                  addi         t2, s5, 635
                  slt          t1, a7, t1
main_j2:          jalr         ra, s8, 738 #jump main -> sub_1
                  xori         s7, t3, -408
                  sub          s10, s8, t0
                  sll          t1, sp, a2
                  bge          s2, gp, 250f
233:              sll          a1, s4, s9
                  addi         s4, s3, 1182
                  lui          s10, 894170
236:              lui          t0, 219391
                  and          t4, a5, t3
                  sll          t5, s0, ra
                  slti         s4, a0, 447
                  xor          s11, s6, a5
                  sltiu        t5, t2, -1007
                  blt          t6, t1, 257f
                  sll          t2, sp, s0
244:              bgeu         a4, s10, 262f
                  srl          a5, a2, s9
                  or           a1, a1, t5
                  addi         t6, s5, 129
                  srl          a2, s0, zero
                  sra          sp, zero, s6
250:              blt          s1, gp, 264f
                  bgeu         s11, t4, 268f
                  slt          a5, s2, s6
                  nop
                  srl          tp, a6, s3
                  sll          t2, s5, t4
                  slt          ra, s10, t5
257:              bgeu         s11, s6, 270f
                  srl          t5, s11, a5
                  srl          t4, t5, s8
                  lui          s2, 317810
                  srai         t0, s3, 24
262:              slti         t1, s6, -1332
                  sltu         s5, a2, t5
264:              beq          s1, a5, 274f
                  auipc        t6, 107933
                  slti         s11, gp, 1825
                  bne          a4, a5, 273f
268:              xori         a0, t4, 1121
                  xor          s10, t1, s3
270:              slt          gp, t1, s6
                  bltu         t5, t2, 284f
                  auipc        t1, 436104
273:              sltiu        s8, s2, 1654
274:              lui          s0, 907620
                  sll          zero, s4, t6
                  or           s5, s1, s2
                  slti         t6, t6, -153
                  auipc        zero, 91655
                  bltu         t0, s11, 285f
                  xori         s0, a7, 438
                  auipc        ra, 496504
                  auipc        s2, 979754
                  xori         a5, s11, 829
284:              blt          sp, a2, 298f
285:              bgeu         t6, t4, 295f
                  sub          a6, s6, a0
                  ori          a0, tp, -1035
                  lui          s7, 87426
                  bge          s9, s10, 303f
                  nop
                  nop
                  addi         t2, t3, -110
                  srl          t3, a5, t4
                  beq          t4, s10, 299f
295:              xori         s0, zero, -1897
                  nop
                  auipc        a6, 269194
298:              bne          sp, s11, 314f
299:              bne          s7, a7, 312f
                  slli         s8, a3, 3
                  slti         gp, s10, 1015
                  srai         t4, a6, 11
303:              slti         t6, a7, -2017
                  xori         s11, t5, -643
                  sra          t1, t2, a0
                  sub          a1, a2, a5
                  nop
                  addi         a0, s6, -981
                  sltiu        a0, s3, -1016
                  blt          s8, s10, 317f
                  bge          a3, s11, 324f
312:              sra          a3, t2, a4
                  slt          s0, zero, s1
314:              xori         a3, s3, -1760
                  xori         s7, s3, 1513
                  sub          a1, t0, tp
317:              beq          zero, a4, 331f
                  xor          t2, t3, s1
                  sra          a6, a3, a5
                  slt          t0, a4, tp
                  slti         s0, s1, 2002
                  sltu         s9, gp, t2
                  nop
324:              addi         s11, t4, -987
                  lui          t6, 418572
                  xor          s1, s0, sp
                  bgeu         t1, t4, 337f
                  add          gp, s3, t6
                  or           s4, s8, s9
                  slt          s8, gp, s7
331:              addi         t2, sp, 1610
                  bgeu         gp, t5, 340f
                  slt          a3, s6, a4
                  beq          s9, t4, 347f
                  bne          s11, s8, 353f
                  bgeu         a2, s6, 341f
337:              ori          t3, s4, -372
                  blt          t5, a0, 352f
                  addi         s1, sp, -1204
340:              ori          t0, zero, 361
341:              nop
                  slt          a1, s1, t5
                  srli         t5, s8, 0
                  srli         a2, t2, 17
                  bne          s5, s8, 351f
                  addi         s6, a7, 1187
347:              or           a3, a2, a6
                  srl          t3, s9, t3
                  bgeu         s0, a2, 353f
                  xor          t4, s6, gp
351:              sltiu        s7, s0, -1819
352:              nop
353:              sltiu        s11, s5, -94
                  bgeu         zero, s10, 360f
                  bge          t0, s3, 373f
                  andi         s10, s5, -835
                  ori          s1, s3, 1416
                  andi         s9, t5, 1587
                  addi         a5, s3, -1789
360:              sltu         a6, gp, t6
                  srai         t0, s2, 13
                  sltiu        s11, s6, 157
                  srai         s11, a5, 30
                  slli         s9, a1, 18
                  slli         t0, a0, 8
                  xor          a1, zero, t3
                  nop
                  blt          s1, t3, 387f
                  nop
                  sltiu        tp, a7, 1820
                  xori         s2, gp, -727
                  auipc        s10, 361478
373:              xori         s6, t3, -809
                  srli         sp, a6, 0
                  sltu         a3, s8, t5
                  slti         s2, s3, -822
                  xori         t6, s5, -1638
                  sltiu        t2, t0, 780
                  and          s7, s6, t3
                  blt          s11, a6, 393f
                  auipc        a2, 17906
                  sub          t3, zero, s5
                  lui          t1, 591375
                  and          zero, sp, t1
                  and          zero, s9, gp
                  slli         t6, a2, 10
387:              bltu         ra, zero, 400f
                  srl          a6, t2, a3
                  srli         s10, sp, 5
                  bne          ra, s1, 397f
                  sll          t1, a3, t2
                  nop
393:              add          t2, t0, a6
                  or           a1, a0, s3
                  lui          zero, 594624
                  slli         a6, tp, 6
397:              sub          t5, s2, s3
                  andi         s4, s5, 650
                  blt          s6, s9, 409f
400:              xor          zero, s6, a4
                  sub          t5, a7, tp
                  sltu         ra, a7, s7
                  bgeu         a5, a0, 417f
                  sltu         s6, a2, t3
                  slli         a5, s10, 22
                  sltiu        t4, a1, 695
                  slli         s0, a1, 24
                  ori          zero, s10, 1580
409:              sltu         s5, sp, s2
                  sll          s9, a1, s7
                  nop
                  beq          a4, a6, 417f
                  sltiu        zero, s2, -1932
                  addi         s11, t0, 268
                  slli         t5, s7, 10
                  add          a6, a1, a7
417:              auipc        t2, 905682
                  nop
                  auipc        zero, 154319
                  add          t1, gp, t5
                  bltu         gp, s10, 436f
                  sll          a5, s3, s6
                  xori         s8, a7, 279
                  addi         tp, a2, 1533
                  srli         t1, sp, 15
                  bgeu         t0, s11, 429f
                  ori          a0, a1, 20
                  blt          a4, s10, 438f
429:              and          ra, a6, s2
                  srl          t2, a6, s7
                  slli         s11, a3, 15
                  srai         s4, t3, 16
                  blt          s11, s8, 447f
                  xori         a0, s9, 1264
                  xori         s10, a7, -188
436:              blt          s5, s0, 445f
                  srli         s5, s2, 20
438:              sll          s4, s1, s9
                  ori          s6, t1, -1569
                  slt          s1, s2, a5
                  srl          s5, sp, a3
                  slli         t4, s9, 14
                  ori          tp, s6, 1382
                  srl          t4, t5, a5
445:              sra          t3, a0, t4
                  auipc        s6, 264076
447:              xor          s0, s10, s2
                  slt          t1, s10, s5
                  lui          t0, 493894
                  sll          s5, t5, s10
                  bltu         a6, a3, 459f
                  auipc        s9, 928032
                  sltiu        t0, t6, -295
                  sll          t3, s8, s10
                  sltu         zero, s8, t5
                  srli         a5, s6, 11
                  slti         ra, s11, -1641
                  bne          t3, t2, 465f
459:              xor          a0, t6, ra
                  blt          tp, s0, 469f
                  bge          t0, t6, 473f
                  nop
                  sub          gp, s8, s1
                  slt          s8, s5, s4
465:              auipc        s2, 16654
                  beq          s6, s5, 482f
                  sll          s11, a3, t6
                  bltu         s0, s10, 485f
469:              sll          t0, gp, s8
                  bltu         s7, s9, 475f
                  ori          t5, s6, -800
                  or           a6, s2, gp
473:              and          gp, s7, s8
                  or           a5, t6, t3
475:              bltu         s0, s3, 490f
                  andi         a1, a6, 1377
                  srli         a2, s9, 0
                  nop
                  slli         s11, gp, 10
                  sub          a2, a6, a4
                  sltu         s4, gp, s7
482:              xor          s7, a6, t2
                  slti         s1, t1, 1337
                  sll          s2, sp, zero
485:              bne          a2, s11, 491f
                  bne          t5, a4, 491f
                  add          a2, s8, a3
                  slli         s6, s5, 16
                  or           gp, s5, s8
490:              slt          s4, s4, s2
491:              lui          a6, 987617
                  nop
                  slt          t4, s0, zero
                  bltu         s1, t3, 498f
                  beq          s3, t4, 508f
                  auipc        a0, 62014
                  sra          s1, s9, t5
498:              bgeu         s6, s11, 508f
                  addi         tp, gp, 1647
                  bltu         a0, sp, 508f
                  or           s0, s11, a4
                  nop
                  srl          s4, a5, s1
                  slt          s9, tp, t6
                  bge          s9, t2, 508f
                  add          s7, a7, zero
                  sra          s11, a1, t2
508:              slli         gp, sp, 0
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         zero, a5, 1190
                  bge          a0, a3, sub_2_stack_p
sub_2_stack_p:    addi         a7, a7, -20
                  srl          s6, zero, t6
                  slt          t2, s1, s7
                  sltu         t5, s2, ra
                  auipc        s9, 431946
                  sw           ra, 4(a7)
                  slli         s5, s10, 14
                  la           t1, region_1+1799 #start load_store_instr_stream_2
                  la           t5, region_1+671 #start load_store_instr_stream_1
                  lbu          s6, 28(t1)
                  sb           t1, 178(t1)
                  la           s9, region_1+513 #start load_store_instr_stream_0
                  lbu          a1, 72(s9)
                  lb           a5, -128(t1)
                  lb           s5, -10(t5)
                  lhu          sp, -35(t5)
                  sb           zero, 110(s9)
                  lbu          s10, -47(t5)
                  lbu          s6, -57(t1)
                  lbu          s4, -246(t1)
                  sh           t3, 193(s9)
                  lb           a6, 1(t5)
                  sb           a5, 70(t1)
                  lw           t3, -7(t1)
                  lh           s6, 115(s9)
                  lb           s4, 10(t5)
                  sb           s9, -108(t1)
                  sb           a4, 30(s9)
                  lb           ra, 52(t5)
                  lhu          a0, -181(t1)
                  lb           s11, 10(t5)
                  sb           s3, 52(t5)
                  lw           s8, -187(t1) #end load_store_instr_stream_2
                  lbu          s11, -2(s9)
                  lbu          t3, 64(t5) #end load_store_instr_stream_1
                  lbu          s6, -110(s9) #end load_store_instr_stream_0
                  la           sp, region_1+743 #start riscv_load_store_rand_instr_stream_0
                  lhu          a6, 7(sp)
                  sltu         s6, a3, s1
                  lb           s9, -46(sp)
                  lw           t2, 49(sp)
                  lhu          tp, -57(sp)
                  xori         gp, s7, 2022
                  sub          a1, gp, t0
                  lb           tp, -40(sp)
                  sub          ra, s6, s3
                  lb           t5, -61(sp)
                  sb           sp, -45(sp)
                  slti         a6, s4, -768
                  ori          t1, s7, -1787
                  lb           s2, 45(sp)
                  sb           s5, 6(sp)
                  sb           s2, -20(sp)
                  lb           gp, 11(sp)
                  xor          t5, gp, tp
                  slli         s1, t4, 13
                  lb           t3, -6(sp)
                  sb           zero, 63(sp)
                  lb           t1, 40(sp)
                  sb           s7, -10(sp)
                  xori         s5, ra, 123
                  lui          a0, 1000587
                  slti         t4, t3, 765
                  lb           a1, 46(sp)
                  lb           gp, 6(sp)
                  lb           s6, -8(sp)
                  lbu          gp, 35(sp)
                  sb           a2, -53(sp)
                  add          s8, zero, a4
                  sub          s11, s3, zero
                  sh           s9, -43(sp)
                  ori          s9, s11, 976
                  sw           t6, -15(sp)
                  sb           a2, -26(sp)
                  lbu          s4, 62(sp)
                  lh           t6, -27(sp)
                  sw           a7, -3(sp)
                  lbu          t3, 26(sp)
                  lb           s6, -17(sp)
                  lb           gp, -25(sp)
                  lbu          zero, 0(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_1+944 #start load_store_instr_stream_0
                  lh           s1, -16(a5)
                  la           t3, region_1+1225 #start load_store_instr_stream_1
                  sb           s10, 15(t3)
                  lb           s11, 11(a5)
                  lbu          s8, -13(t3)
                  lbu          s1, -3(a5)
                  sb           s7, -5(a5)
                  sb           t3, -15(a5)
                  lb           gp, 9(a5)
                  lbu          s1, 0(t3)
                  lbu          t5, -8(a5)
                  lbu          s4, 16(t3)
                  lb           s7, -3(a5)
                  lb           s8, 8(t3) #end load_store_instr_stream_1
                  lh           s7, 8(a5)
                  lhu          t4, -6(a5) #end load_store_instr_stream_0
                  la           a5, region_1+1043 #start riscv_load_store_rand_instr_stream_1
                  sh           t5, 1(a5)
                  sb           gp, 12(a5)
                  sll          s2, ra, s9
                  lb           t5, -12(a5)
                  lhu          a3, -43(a5)
                  lb           a6, 48(a5)
                  lbu          s9, 40(a5)
                  lbu          s10, 45(a5)
                  sra          a1, s8, t0
                  addi         a2, t0, 1618
                  lbu          tp, -62(a5)
                  sh           s5, 29(a5)
                  lbu          t0, 58(a5)
                  lbu          s8, 50(a5)
                  sll          t3, t5, s8
                  slti         s6, s11, -1140
                  lhu          t4, -25(a5)
                  add          t5, s2, s6
                  sb           zero, -59(a5)
                  lbu          ra, 58(a5)
                  xori         a6, s0, -1331
                  sb           gp, 18(a5)
                  andi         s11, s7, -1026
                  lhu          t4, -31(a5)
                  addi         tp, tp, -20
                  lhu          s1, 1(a5)
                  lbu          a0, -6(a5)
                  lbu          t0, -38(a5)
                  and          s6, t1, zero
                  xori         t1, a1, -876
                  sb           s7, -11(a5)
                  sh           t1, 7(a5) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1537 #start riscv_load_store_hazard_instr_stream_1
                  sw           a2, 15(sp)
                  lhu          a5, -7(sp)
                  slt          a0, a6, a1
                  sb           s2, -15(sp)
                  lhu          t6, -15(sp)
                  lui          t5, 644156
                  sltu         a0, s7, a5
                  sll          s2, a2, t4
                  lbu          t5, -8(sp)
                  lhu          s10, 13(sp)
                  lhu          s6, -5(sp)
                  sll          s7, t5, s2
                  lhu          t3, -5(sp)
                  lhu          tp, -5(sp)
                  lhu          ra, -5(sp)
                  lbu          tp, 10(sp)
                  lb           s8, -10(sp)
                  lb           a3, -10(sp)
                  lb           t1, -10(sp)
                  lb           a6, -10(sp)
                  andi         a2, a0, 1370
                  lh           s9, 15(sp) #end riscv_load_store_hazard_instr_stream_1
                  lui          a5, 157194
                  ori          t2, a1, -121
                  lui          s11, 518862
                  slt          s4, t0, a0
                  add          t6, t3, s5
                  sll          s11, a1, t5
                  sub          t6, s9, a3
                  and          a3, a2, sp
                  slli         a2, a5, 2
                  bgeu         t3, s5, 10f
10:               sll          t3, s1, s11
                  addi         s10, s5, 1656
                  slli         a6, s10, 1
                  slt          tp, s8, a4
                  and          a2, gp, s10
                  lui          tp, 617147
                  sll          a1, tp, s5
                  bgeu         s7, t3, 34f
                  sltiu        a2, t0, -396
                  sll          a2, s7, t2
                  slt          a5, s10, s10
                  bne          s11, a0, 26f
                  sll          a2, tp, s6
                  slli         a1, t3, 16
                  or           s7, t6, t5
                  slti         gp, sp, 1758
26:               lui          a0, 805694
                  bne          a3, t5, 35f
                  andi         t6, s11, 501
                  sltu         a2, s10, s5
                  bltu         a7, s0, 37f
                  sll          s10, a0, s4
                  andi         t0, s3, -982
                  bne          s1, s10, 50f
34:               sra          t4, s7, ra
35:               srai         s4, t3, 11
                  add          a1, s5, t5
37:               addi         t2, ra, -88
                  nop
                  bge          a0, s11, 46f
                  add          a1, s1, t5
                  blt          t5, s7, 57f
                  and          s4, a4, a7
                  beq          sp, a6, 60f
                  sub          t6, s11, a3
                  andi         t4, s1, 1366
46:               slt          a0, s6, s3
                  auipc        s7, 590379
                  sll          a0, s4, s8
                  slt          s2, s1, s9
50:               slti         s1, s2, 1498
                  or           t3, t3, s2
                  addi         gp, a5, 949
                  auipc        sp, 375467
                  auipc        a2, 457426
                  or           a0, tp, ra
                  slli         t2, s7, 27
57:               srai         s8, s3, 15
                  srli         s8, s11, 14
                  slt          tp, t6, s2
60:               bltu         tp, s7, 64f
                  blt          s6, s1, 76f
                  blt          a2, s1, 69f
                  sll          a6, t5, s11
64:               nop
                  xor          sp, a7, s2
                  addi         s9, ra, -155
                  srai         ra, a3, 14
                  sra          s5, s4, a3
69:               blt          t4, t1, 72f
                  srl          t5, a7, a6
                  xor          t2, t5, a0
72:               slli         t5, s10, 1
                  nop
                  xori         a3, s5, -561
                  bgeu         s11, s2, 95f
76:               bge          s4, t4, 80f
                  sltiu        a2, s10, -50
                  sra          s1, s11, s10
                  xor          s10, s4, a6
80:               beq          t1, t6, 89f
                  sll          t0, t3, a0
                  slt          a6, t5, gp
                  sltu         sp, t5, a4
                  srai         a1, s2, 22
                  nop
                  bge          a3, t0, 95f
                  srl          s2, a1, a5
                  bne          t6, t4, 91f
89:               sra          ra, gp, a1
                  or           s1, t0, s10
91:               and          s2, ra, a3
                  sub          t4, s7, a6
                  bge          tp, s1, 107f
                  or           gp, t5, t3
95:               sltiu        t2, s1, 1287
                  la           s2, region_0+1439 #start riscv_load_store_hazard_instr_stream_0
                  sb           a2, -9(s2)
                  lhu          a6, -9(s2)
                  lbu          t0, -9(s2)
                  lh           a2, -9(s2)
                  lhu          t3, -9(s2)
                  andi         ra, s9, 853
                  sh           s6, -9(s2)
                  lbu          t6, -9(s2)
                  lbu          a2, 7(s2)
                  sb           a0, 1(s2)
                  lw           a2, 1(s2)
                  sb           s4, 1(s2)
                  lbu          s10, 1(s2)
                  lb           s4, 1(s2)
                  sb           s11, -15(s2)
                  lbu          s1, -16(s2)
                  lb           s6, -16(s2)
                  lw           s6, 5(s2) #end riscv_load_store_hazard_instr_stream_0
                  sltiu        a1, t5, -1669
                  slli         a2, t2, 6
                  add          a2, s7, ra
                  add          s6, t3, sp
                  and          t1, a6, t0
                  auipc        s6, 743507
                  lui          s0, 731098
                  bge          t6, a5, 105f
                  srl          s5, s4, a2
105:              andi         s2, a1, 21
                  xor          t2, s0, t0
107:              blt          a2, t6, 110f
                  andi         t6, t1, -203
                  bgeu         t1, s7, 127f
110:              blt          t2, s11, 113f
                  addi         t0, s2, -33
                  bgeu         s3, s1, 131f
113:              bge          s4, s2, 122f
                  and          s8, t5, s3
                  sub          s1, t2, a4
                  bltu         s10, a0, 123f
                  bgeu         s8, a5, 132f
                  bge          a2, a3, 137f
                  bge          s2, t3, 127f
                  auipc        s0, 284182
                  slti         a1, s9, 1604
122:              srai         a2, ra, 4
123:              xor          s1, a5, s2
                  bne          t1, s11, 144f
                  slt          s10, s7, t3
                  xor          t3, t3, s9
127:              auipc        a5, 886304
                  xori         s2, ra, 688
                  sra          a6, zero, s4
                  lui          s8, 347773
131:              andi         t5, s7, -1905
132:              bltu         s4, tp, 141f
                  addi         t4, a6, 1889
                  slti         a6, zero, -34
                  addi         a1, a0, -147
                  srli         tp, ra, 26
137:              bge          gp, gp, 153f
                  sltu         s8, s2, s3
                  sltu         a3, a3, gp
                  slli         sp, sp, 6
141:              auipc        t6, 735885
                  or           s5, zero, a5
                  andi         t1, s5, 1899
144:              bgeu         sp, gp, 146f
                  sra          t0, t2, zero
146:              xor          t5, s2, a3
                  sub          t6, s9, a2
                  bge          a6, s11, 151f
                  xori         s8, s6, 1611
                  lui          s2, 232220
151:              bge          s4, a4, 155f
                  auipc        s8, 610082
153:              add          a1, a2, t2
                  addi         t0, a6, -1583
155:              sltiu        zero, s7, -1586
                  xori         t3, a3, 199
                  andi         s10, sp, -1738
                  or           a5, t3, s1
                  slti         t3, s7, -664
                  addi         s4, t4, 2026
                  auipc        zero, 195298
                  srai         zero, zero, 20
                  xori         sp, a4, 88
                  nop
                  xor          t2, s6, a3
                  auipc        a1, 974350
                  sltu         s2, t2, zero
                  srl          t5, s4, s4
                  sltu         a5, t2, s11
                  slt          s2, s6, a1
                  bgeu         a7, s3, 188f
                  blt          t5, s1, 179f
                  xor          s5, a4, zero
                  sltiu        s4, ra, -625
                  blt          s3, t3, 190f
                  beq          s5, s6, 196f
                  srai         t0, s7, 18
                  srai         s11, s5, 3
179:              sub          s5, s0, a7
                  bltu         s9, t4, 197f
                  ori          s10, a7, -1742
                  sltiu        t3, t3, -660
                  and          s7, a4, s1
                  srl          a3, t4, a0
                  slti         s5, a0, -189
                  slli         a5, t3, 15
                  sra          s6, ra, s4
188:              sll          s1, a4, a1
                  srl          s1, t0, t4
190:              bge          s4, a5, 195f
                  nop
                  sub          s9, t5, a3
                  blt          t6, t4, 197f
                  addi         t6, a1, -1154
195:              bltu         sp, a5, 214f
196:              addi         s6, zero, -1025
197:              nop
                  bgeu         a1, t1, 206f
                  sll          a0, a0, a7
                  sltiu        s10, s8, -1769
                  sub          s1, s6, t2
                  or           s8, s3, s1
                  blt          t0, a2, 223f
                  sltu         t5, sp, t0
                  sltu         tp, ra, s7
206:              bltu         zero, s7, 225f
                  bgeu         t4, a0, 216f
                  slt          ra, a4, t0
                  sra          s4, a4, s0
                  bge          t4, s8, 213f
                  slti         s10, sp, 1959
                  bge          ra, a5, 215f
213:              xor          s6, gp, a5
214:              andi         s5, a1, 1170
215:              sltu         a2, s10, s8
216:              slti         s5, s4, 62
                  ori          s6, s9, 2038
                  slti         a3, s10, -2048
                  sll          s6, zero, ra
                  andi         s4, s11, -605
                  srl          s4, a2, ra
                  bne          s0, s8, 229f
223:              srli         s7, t4, 24
                  and          a1, s5, a7
225:              lui          ra, 962985
                  beq          t5, s11, 234f
                  sltu         s9, a3, tp
                  bgeu         t1, s2, 229f
229:              bge          t4, a1, 247f
                  and          a2, sp, s2
                  xori         sp, a6, 2016
                  bltu         s9, a0, 235f
                  ori          zero, gp, -629
234:              slti         t3, t6, -1443
235:              blt          a5, a6, 250f
                  srl          s1, t1, a3
                  sll          ra, ra, s11
                  srli         s8, tp, 18
                  or           t0, t2, s1
                  blt          s11, t5, 254f
                  slli         s8, t2, 7
                  nop
                  srl          t2, a0, s9
                  and          s0, s10, s2
                  and          t5, t4, s11
                  bgeu         s2, sp, 253f
247:              slli         t6, gp, 16
                  sll          a3, s8, gp
                  srli         t1, s10, 28
250:              lui          t5, 895935
                  lui          t6, 278515
                  andi         t0, s9, 593
253:              srl          s8, t4, s4
254:              beq          s10, s5, 263f
                  ori          a1, a4, 871
                  xor          t0, t6, t6
                  xori         s6, s4, -1846
                  blt          s6, t5, 263f
                  auipc        s11, 5597
                  sltiu        sp, s6, 1049
                  slti         gp, s7, 184
                  and          a3, s0, t5
263:              ori          a0, t3, -183
                  lw           ra, 4(a7)
                  sltu         s11, t0, s5
                  addi         a7, a7, 20
                  sltiu        s9, s11, 1069
                  or           t1, t3, s1
                  slli         s0, t5, 20
445:              addi x13, x1, 0
445:              jalr x13, x13, 0
sub_1:            sltu         t6, a3, t4
                  addi         a7, a7, -52
                  slti         sp, s8, 927
                  addi         a2, a6, -358
                  sltiu        a6, s7, -76
                  nop
                  sltiu        a6, s8, 111
                  sw           ra, 4(a7)
                  sra          s8, s6, s2
                  sltu         t3, tp, t4
                  auipc        t3, 619400
                  srl          s9, s10, t3
                  slti         s1, t5, 1436
                  slt          s10, a2, t0
                  slti         t1, sp, -81
                  addi         s6, gp, 1156
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  slt          tp, t2, a6
                  la           a6, sub_2
                  srl          s9, a2, s8
                  slti         s5, t4, 1290
                  xor          s9, a2, t0
                  srai         s9, a5, 0
                  addi         a6, a6, -540
                  srl          t1, a1, a5
                  sub          zero, t2, tp
                  slti         sp, a5, -523
sub_1_j4:         jalr         ra, a6, 540 #jump sub_1 -> sub_2
                  la           a1, region_1+194 #start load_store_instr_stream_4
                  lbu          gp, -153(a1)
                  la           s11, region_1+205 #start load_store_instr_stream_2
                  lbu          s8, 964(a1)
                  la           s6, region_1+1041 #start load_store_instr_stream_3
                  la           a5, region_1+848 #start load_store_instr_stream_0
                  sb           s11, -30(s6)
                  lb           s1, 930(a1)
                  sh           t4, -27(s11)
                  sb           sp, 58(a1)
                  la           t1, region_1+1996 #start load_store_instr_stream_1
                  sb           s7, 40(s6)
                  sb           zero, -8(s11)
                  lb           s9, 930(a1)
                  sb           a1, -8(t1)
                  sb           s3, 35(a5)
                  lbu          sp, -6(t1)
                  lbu          s2, -3(t1)
                  lb           gp, -7(t1)
                  lb           s5, 61(a5)
                  lbu          s8, 29(a5)
                  sb           s11, -107(a1)
                  lb           ra, 796(a1)
                  sb           a3, -32(s6)
                  lbu          s5, -163(a1)
                  sb           t0, -2(s6)
                  lb           a0, 16(s11)
                  lbu          s4, 50(s6)
                  lb           ra, -3(t1)
                  sb           tp, -12(t1)
                  lbu          zero, 28(s6)
                  lb           s0, -20(s11)
                  sb           gp, -27(s6) #end load_store_instr_stream_3
                  lbu          t2, -62(s11) #end load_store_instr_stream_2
                  lhu          s8, 1322(a1) #end load_store_instr_stream_4
                  lw           t0, -8(a5)
                  lb           s10, -14(t1) #end load_store_instr_stream_1
                  sh           a6, 52(a5) #end load_store_instr_stream_0
                  la           a6, region_1+1688 #start load_store_instr_stream_1
                  la           a2, region_1+1190 #start load_store_instr_stream_0
                  lbu          s10, 1(a6)
                  sb           a3, -13(a2)
                  lhu          ra, 12(a6)
                  lbu          a5, 5(a6)
                  lhu          t5, -10(a2)
                  sb           sp, 15(a6)
                  sb           gp, -16(a2)
                  sb           tp, -12(a6)
                  sh           t5, -2(a2)
                  sb           a7, 4(a2)
                  lb           tp, -11(a6) #end load_store_instr_stream_1
                  lbu          s0, -4(a2)
                  lbu          t3, 16(a2) #end load_store_instr_stream_0
                  la           gp, region_1+999 #start riscv_load_store_rand_instr_stream_1
                  and          s6, s5, a0
                  sb           tp, -38(gp)
                  lb           t1, 222(gp)
                  nop
                  srli         a6, sp, 28
                  sb           t1, -138(gp)
                  srli         t4, t3, 4
                  or           s0, sp, a1
                  lb           t2, 100(gp)
                  and          a1, a3, a5
                  sltiu        t1, s4, 1316
                  sra          t1, t4, s11
                  lh           t6, 85(gp)
                  lb           a0, 40(gp)
                  lbu          s11, 159(gp)
                  xori         ra, t4, -1420
                  slt          s6, ra, t5
                  slti         s7, tp, -933
                  lw           t1, -187(gp)
                  sb           a2, 22(gp)
                  xori         zero, zero, -305
                  sb           t2, 58(gp)
                  auipc        t2, 569665
                  lh           t3, 131(gp)
                  lbu          s6, 188(gp)
                  srli         t3, s11, 3
                  sb           s6, 112(gp)
                  slt          t5, s7, a3
                  sh           s3, -185(gp)
                  xor          t6, a5, s11
                  sh           s6, 101(gp)
                  lbu          a6, -105(gp)
                  lb           s4, -70(gp)
                  lb           s10, -134(gp) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_0+1491 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s5, 22(s11)
                  lb           t1, 50(s11)
                  lbu          s9, -57(s11)
                  sltu         t6, s1, s8
                  lh           s5, 49(s11)
                  lh           t2, -23(s11)
                  sh           s11, -23(s11)
                  sw           s10, 57(s11)
                  lbu          a0, -2(s11)
                  sll          ra, t3, ra
                  sb           s9, -2(s11)
                  lh           sp, 27(s11)
                  sb           s5, -17(s11)
                  sb           a4, -3(s11)
                  lbu          t2, -52(s11)
                  lbu          t6, -52(s11) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+1341 #start riscv_load_store_hazard_instr_stream_0
                  lb           s1, -60(sp)
                  sb           zero, -48(sp)
                  xori         t1, a4, 186
                  or           t2, s6, a4
                  lb           s6, -48(sp)
                  sb           s2, -48(sp)
                  lb           gp, -16(sp)
                  andi         a5, t1, -1890
                  lbu          s2, -16(sp)
                  lui          zero, 595587
                  sra          t0, t4, a7
                  lbu          a1, -16(sp)
                  lh           t2, 59(sp)
                  sub          t3, a7, s10
                  sw           t4, 59(sp)
                  sltu         t4, s1, t6
                  lh           t6, 57(sp)
                  lbu          s0, 15(sp)
                  lb           s9, 26(sp)
                  sb           s1, 8(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+225 #start riscv_load_store_rand_instr_stream_0
                  srli         s11, s7, 25
                  add          s4, a1, s11
                  sb           s9, 1619(sp)
                  or           a2, s4, a4
                  sub          a5, zero, s4
                  addi         s2, s1, 1265
                  sw           a5, 907(sp)
                  lw           a2, -145(sp)
                  xor          s9, t1, t1
                  lb           s7, -128(sp)
                  sltiu        tp, a1, -1074
                  xori         s2, s3, 258
                  xor          s11, ra, a4
                  lui          t6, 866747
                  sh           gp, 905(sp)
                  lhu          s2, 779(sp)
                  slti         s7, sp, 1953
                  xor          t5, a5, t3
                  and          a6, s7, tp
                  sh           s5, -39(sp)
                  lbu          tp, 716(sp)
                  lbu          a5, 167(sp)
                  lh           a5, 893(sp)
                  auipc        tp, 992137
                  xor          s5, t5, t2
                  sltiu        zero, t0, -1978
                  sub          s1, t5, a7
                  lbu          t4, -118(sp)
                  sh           s5, 427(sp)
                  and          s0, gp, s9
                  auipc        s5, 1048208
                  slli         tp, s9, 25
                  srai         ra, tp, 1
                  lhu          s5, 17(sp)
                  xori         s11, s2, -1514
                  lb           s11, 1538(sp)
                  sll          t6, s6, t6
                  auipc        t2, 650920
                  nop
                  slt          s6, t0, a3
                  and          gp, a1, s7
                  lui          t2, 872031
                  sb           s11, 1692(sp)
                  lbu          t2, 498(sp)
                  lbu          a0, 414(sp)
                  lbu          a2, 450(sp) #end riscv_load_store_rand_instr_stream_0
                  slti         t5, a3, -652
                  addi         t3, s3, -894
                  sltiu        s2, a2, 864
                  sll          t3, s8, s9
                  blt          tp, s7, 18f
                  addi         t1, tp, 2044
                  bge          s11, gp, 11f
                  slli         tp, s7, 30
                  add          s5, s10, s10
                  andi         t2, gp, -710
                  or           s9, a3, a5
11:               sltu         a0, s3, t6
                  sra          s4, gp, t6
                  sltu         t0, t0, t3
                  bne          a6, s6, 29f
                  srli         zero, t1, 2
                  srai         t5, a3, 26
                  sub          t3, s6, a3
18:               bge          a1, t5, 24f
                  addi         t2, a0, -684
                  bgeu         s0, s8, 25f
                  srai         t3, gp, 19
                  sra          t4, t6, s6
                  ori          s4, s0, 1876
24:               sra          ra, a6, a2
25:               ori          s6, s7, -1063
                  ori          s0, a2, -214
                  sltu         ra, s6, s7
                  andi         t0, a2, -502
29:               andi         s4, ra, -1948
                  srl          t5, a4, a2
                  addi         sp, s5, -1236
                  sub          t5, s0, tp
                  bge          t5, s5, 51f
                  slt          a2, a2, t1
                  blt          s7, s6, 36f
36:               and          a2, s2, a0
                  sltiu        a3, s0, 1692
                  srli         s6, s2, 21
                  bltu         zero, a1, 59f
                  sub          s4, t4, a3
                  xori         s4, s0, 186
                  slti         t5, s10, 351
                  nop
                  sra          s4, s11, t5
                  srli         a5, s11, 25
                  sll          zero, a7, s9
                  xor          t0, s0, t4
                  ori          zero, s5, -813
                  bltu         t1, s9, 53f
                  bgeu         s11, a3, 56f
51:               lui          tp, 69959
                  srli         s5, s8, 23
53:               add          s1, a1, a0
                  andi         s2, tp, 1125
                  srli         a3, s1, 7
56:               sra          zero, a7, a0
                  or           zero, s2, s5
                  srai         s4, t1, 20
59:               bge          t5, a6, 62f
                  addi         s7, s0, -1013
                  add          s5, t6, t5
62:               xori         s5, s2, -255
                  bne          s7, a2, 74f
                  sltu         a6, t0, t6
                  nop
                  addi         a2, t4, 1789
                  bgeu         s10, s6, 80f
                  add          sp, s3, s2
                  srli         a1, s7, 16
                  srai         s0, s1, 5
                  nop
                  lui          a2, 489013
                  slti         s6, ra, 645
74:               add          a0, sp, t1
                  or           t4, t4, gp
                  slt          s9, s0, t6
                  blt          a2, t1, 81f
                  xor          sp, s1, t5
                  addi         t6, s3, 244
80:               sltu         a5, s8, s4
81:               lui          t4, 319978
                  bgeu         t6, s6, 88f
                  sltiu        s1, s11, 1013
                  slli         t0, a0, 28
                  lui          t4, 555420
                  sub          sp, t3, t3
                  sll          t2, t5, t4
88:               xor          t1, s0, s9
                  and          s7, s6, gp
                  blt          a0, ra, 95f
                  xor          s7, a4, s8
                  andi         s4, s7, -1170
                  slti         s2, s9, -1897
                  xori         s4, s10, -1595
95:               slli         s7, s4, 7
                  beq          t5, t2, 111f
                  sltu         s7, s6, a6
                  xor          a2, a4, a1
                  srl          s4, a3, ra
                  xor          ra, a0, s1
                  blt          s10, s10, 107f
                  bge          s3, a4, 116f
                  andi         s6, t5, -451
                  srl          s9, t0, s1
                  lui          t4, 13800
                  blt          t6, t3, 109f
107:              srli         t4, a5, 2
                  xor          t5, s8, s1
109:              sll          a0, s10, zero
                  srli         a0, s7, 26
111:              bgeu         t2, s8, 116f
                  sub          s5, s1, s1
                  bge          zero, ra, 130f
                  add          s4, a7, t2
                  slt          zero, t2, s3
116:              srli         gp, a4, 24
                  slli         s6, a4, 28
                  sub          t3, t0, s4
                  ori          s11, s8, -996
                  addi         s11, a6, 109
                  ori          s11, s9, -1278
                  andi         s8, a6, -298
                  xor          zero, s0, a5
                  lui          t6, 642389
                  bge          s5, s8, 139f
                  bge          s6, a7, 141f
                  add          a0, a2, a7
                  slt          t4, s8, s5
                  sra          a2, s7, ra
130:              addi         a3, t1, -209
                  srli         t2, s4, 27
                  nop
                  sll          zero, tp, s4
                  xori         t4, s4, -164
                  slt          a3, t4, t0
                  bne          gp, s3, 155f
                  or           t2, s9, gp
                  srli         gp, s1, 11
139:              bge          gp, ra, 140f
140:              sll          s6, gp, t2
141:              slli         a2, a3, 2
                  ori          a1, s8, 1009
                  sltu         tp, a2, s5
                  slti         s6, ra, 809
                  bne          a6, t6, 152f
                  slli         t4, t1, 6
                  sll          t2, s2, s0
                  blt          s10, sp, 154f
                  sltiu        tp, t5, -1199
                  add          s6, s6, t3
                  sltiu        s8, s10, 1183
152:              nop
                  srai         a1, s4, 14
154:              sub          s7, s4, gp
155:              xor          s0, a2, ra
                  sll          a3, s1, a3
                  auipc        a6, 639264
                  ori          sp, s10, 1149
                  auipc        t3, 670861
                  sltiu        a3, gp, 1606
                  addi         sp, a7, -1614
                  sll          t0, a4, s4
                  bltu         t3, s7, 174f
                  sltiu        s9, s3, -1094
                  slli         a6, a3, 27
                  beq          a6, a1, 173f
                  ori          a1, a1, 774
                  srl          sp, s6, s10
                  auipc        a3, 124172
                  slli         t3, a5, 13
                  slti         s2, t5, -1128
                  sra          s10, s0, s8
173:              lui          a6, 807233
174:              and          s0, a1, ra
                  slt          a6, t2, a5
                  slti         s10, s6, -2014
                  lui          zero, 659303
                  blt          t6, a7, 191f
                  sub          s6, t5, a5
                  bgeu         ra, a0, 191f
                  blt          t5, a7, 184f
                  or           s2, a4, s6
                  slli         ra, s4, 12
184:              bge          a0, s1, 190f
                  sra          t6, zero, s4
                  beq          a3, t5, 193f
                  addi         s5, s10, -1232
                  add          s2, t3, s11
                  srli         a0, s4, 26
190:              bltu         a0, t5, 201f
191:              slt          s0, s1, s7
                  addi         t2, a0, 1106
193:              sra          tp, a4, s3
                  and          t2, tp, a7
                  lui          t6, 910668
                  blt          s0, a6, 201f
                  bltu         a0, a3, 216f
                  addi         sp, s5, 1715
                  or           a1, s7, t3
                  nop
201:              sub          t4, s6, s1
                  xor          s1, s1, t2
                  xor          t4, a2, s8
                  xor          s11, zero, a2
                  bltu         t0, ra, 220f
                  bltu         s2, t1, 210f
                  bltu         a2, a6, 224f
                  sub          t1, s1, ra
                  slli         a0, t4, 23
210:              bne          s4, s10, 215f
                  xori         s0, s9, -1171
                  bltu         tp, sp, 225f
                  and          s10, a2, s2
                  sltiu        a5, a7, -204
215:              slti         a3, a0, -208
216:              bltu         s4, s4, 225f
                  slt          t3, s8, s6
                  auipc        t4, 254486
                  nop
220:              auipc        a2, 312602
                  srai         a3, a7, 9
                  xor          s4, zero, a6
                  or           s7, a5, a4
224:              sub          t4, s3, s2
225:              srl          s9, s9, a6
                  sltiu        a1, s2, 1147
                  lw           ra, 4(a7)
                  andi         t2, a6, 1446
                  srli         gp, s1, 26
                  addi         a7, a7, 52
                  srli         t1, a3, 4
                  srl          s1, t2, s10
                  addi         t3, a2, -190
                  srai         a2, ra, 5
                  srl          s9, t0, s9
437:              addi x12, x1, 1
437:              jalr x12, x12, 0
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
.word 0xf18137be, 0x70a0c6e0, 0x4ad5d89e, 0x8abf21e5, 0x763d47c1, 0x9160b4b5, 0xedf7a8aa, 0x97f1bd1f
.word 0xf956c1f0, 0xa2af0254, 0x4a9efd2a, 0x1020d0b8, 0x3f6d9f29, 0xae37f19b, 0x984a09c2, 0xdeeb8738
.word 0xe25e2579, 0xd1496207, 0xb6e99630, 0x07c63df8, 0xed230075, 0x616b0627, 0x76508b2a, 0x61a8b02d
.word 0xf8fde9ad, 0x3bcb7870, 0x44b105dd, 0x61349731, 0xf7b1dea9, 0x52b48815, 0x2aad38b5, 0x9b1cf90c
.word 0x852ea343, 0x16b95483, 0x873be523, 0x07a7b767, 0xd0876bd2, 0x85d8bf8e, 0xfd248822, 0xb275b642
.word 0xa163bfa3, 0x67321cea, 0x67155516, 0x9b44b7ac, 0x3bc8d119, 0x9da38c17, 0xc787cfbe, 0x4351bf4f
.word 0x93bd8b1c, 0x64036e0c, 0x1fd8dad1, 0x6f5ca0ed, 0x36933eb7, 0x5d96c2cb, 0x87af01cc, 0xbf9a07d0
.word 0x696acd0c, 0x5de04bbd, 0xb7c990bb, 0x56adadd6, 0x043740db, 0x027b412a, 0xdada999f, 0xd2c36763
.word 0x697eeb5b, 0xc26f5471, 0xfd1104b4, 0xf0aeba32, 0xc3cead84, 0x760c5a85, 0xc98b661d, 0x5e059172
.word 0xbdbd7dd4, 0x5121cb71, 0x3ccaa7c9, 0x1793adfc, 0xc52d391d, 0xe219c47f, 0xadb81386, 0x4a6304da
.word 0x11d4ea62, 0x82c8fad6, 0xee674faa, 0x8d54e595, 0xbb9b573a, 0x5e480ccd, 0xeb534640, 0xd3d7efcb
.word 0x374e36d9, 0xdf83e0bb, 0x1502c151, 0x8c747910, 0xb420c8ea, 0x7c0c45ee, 0x0447378d, 0x4e63b181
.word 0xeb648c1d, 0xc5616bd1, 0x20a84908, 0xac7932fd, 0x0b8c2029, 0x7ff7f989, 0x1721355f, 0x4ebf9db7
.word 0xaef47b58, 0x1f77bf2b, 0x9ee95200, 0x24859e5b, 0x4ddabe21, 0xe08921a8, 0x3d113042, 0xa516ab91
.word 0x3809406d, 0xb387465f, 0x5abf6e99, 0xb58302c8, 0x3e5d431a, 0x4d5c6416, 0x661e113f, 0x8eca6968
.word 0xc9517319, 0x16f77ee3, 0x94e75ad2, 0xbc4b86e6, 0xd5d81e49, 0x666ca6ad, 0xa50d2aae, 0xa3ea5c45
.word 0x34e46be0, 0x154da898, 0x802c71a3, 0xb040f568, 0xd07d6d81, 0x4c3a7354, 0x02ba1c8e, 0xac7867c7
.word 0xf0e8063a, 0xdd93cbcf, 0x97c3dac7, 0x66a993bc, 0xf07e4f69, 0x32f4dbf1, 0x289c5b71, 0xb260e207
.word 0x1ba159ef, 0xbf74b7f7, 0x00c7850d, 0x50541b03, 0xe4e79667, 0xd9828037, 0xa6fbb409, 0x3dd010b3
.word 0x8c6632a2, 0xc0b466dc, 0xbecabfca, 0x99c85892, 0x60027328, 0x319a230c, 0xc46b1003, 0x857f9a24
.word 0xfb6c59d3, 0xebefd48d, 0x01406ea5, 0x3f7477a5, 0x35e5ad6c, 0x0d44c172, 0x85870644, 0x643089f2
.word 0x9eded282, 0x096a8028, 0x204ae5a1, 0xc6c7133f, 0x2dad0666, 0x24bb0fa7, 0x5dec293b, 0xbd08850b
.word 0x2c90c0dc, 0xd720f4a7, 0x23b22001, 0x4e31dab2, 0x237a7461, 0xb4e1c430, 0x111f2f94, 0xf268cfa1
.word 0x4b5663b1, 0x2743f291, 0x57bdc5b9, 0x1a473af9, 0x489b94a2, 0xae882c0a, 0x31bc3972, 0x321b20b1
.word 0x61ac543a, 0xe5696a26, 0xdb01276d, 0xa3f2a584, 0x598e581b, 0x530e8b30, 0x05419fe6, 0x0268fe42
.word 0x2bec5bb1, 0x59ff74b4, 0x40767e5c, 0x4c30d6bf, 0x0b31450e, 0xcb73117c, 0x1c7fb78b, 0x8cc6182e
.word 0x277039f0, 0xa2d1afb4, 0xa81f3320, 0x6087d8cd, 0x5adb4e34, 0xb247a6c2, 0xef956ed8, 0xe376be25
.word 0xf642a1cc, 0xf1bbf3fe, 0x86dd4663, 0x073371ae, 0x041e309d, 0xb339f161, 0xf9cd6cb0, 0x648e0404
.word 0x90482990, 0x9d0e2ac8, 0xc6f8d2da, 0x8ade801d, 0x7c319677, 0x6fe1b472, 0xc040cfa3, 0x89e45662
.word 0x283dadda, 0x1723a543, 0x8f71f08b, 0xcb21077c, 0x66bedb24, 0xfc9f70de, 0xfe2c693f, 0x61a741a9
.word 0xc67c5711, 0xfcaa8763, 0x1a91d687, 0xe58098a8, 0xfd1f1e9e, 0xec507302, 0x56187404, 0x79b996ef
.word 0x9ea8a9d5, 0x57e645bc, 0x93b0382c, 0x758fcc31, 0x79c6c0ab, 0x833c0000, 0x9a48d31d, 0xa88cb95b
.word 0x75a447f8, 0xe1219557, 0xe3a61b12, 0x0f9d0cdb, 0x8aa1e3c2, 0x4bb77c10, 0x0d02c668, 0xb55e3a33
.word 0xa221793f, 0x3744bd60, 0xe9aa514e, 0x2f3d4653, 0x2fc4e154, 0x472bcea7, 0xf693f275, 0xca66d882
.word 0xe1becd37, 0xd0230e87, 0x9bda3e82, 0xc74b27dc, 0x2fe32d8d, 0x991dd770, 0x0f325495, 0x8586aaa1
.word 0x5ebb8623, 0x3fd2fb21, 0xb8894936, 0xb2d23ab3, 0xa22bd16c, 0xf3ec94fb, 0x20e7d032, 0x550e03c5
.word 0x7919e1cf, 0x0048ff2a, 0xe07e91ea, 0x3f0e808c, 0x6bb0c14b, 0x9b603fc5, 0xe45f2d2b, 0x73087733
.word 0x86860139, 0x1a74934b, 0x18a96cf4, 0x99965406, 0xdfaf7d49, 0xcacc47c8, 0x28561338, 0x51649e71
.word 0x211f77d5, 0xd9206b63, 0xe532fc9c, 0xceaf1c45, 0x63fb4723, 0xc98641f4, 0x0a2c91b0, 0xe0522d80
.word 0x0f04972a, 0x94f71c1f, 0x5b5264ab, 0x4eb489d0, 0x9912d77c, 0xab3785fa, 0x93eb6f7e, 0xb2bc2ca6
.word 0xe89264a9, 0x773f52d8, 0x22486f99, 0x684122e6, 0x1d51ef2f, 0x174fdcff, 0xf711cfc2, 0x153344d6
.word 0xe6e8b5b2, 0x897e6e03, 0x0ca2e38e, 0xce03992c, 0x0f29c73b, 0x7628668e, 0x93c884ed, 0x854059f7
.word 0x482894e7, 0x0148cdb4, 0x64496af9, 0x1102d011, 0xaeb4084a, 0xa299ad51, 0xafd8d359, 0x5601b75b
.word 0x839f55d3, 0x582f2af8, 0xbd5f20a0, 0x43c4141f, 0x82aa9afd, 0x5472c78d, 0x70949d04, 0xd68d3d6d
.word 0x7da175b3, 0x5c210fac, 0x28de4db5, 0xdc1eb4cb, 0xe2be0f25, 0x59d1ea91, 0xd3da2dba, 0x50b846fb
.word 0x99709020, 0x30b72574, 0x4ac855aa, 0xfcae2aef, 0x3b8e76fa, 0xd4be2a10, 0xd8d1a394, 0x82944c81
.word 0x74bed073, 0x204ed776, 0xc6ed8a2e, 0x97cb8c56, 0xbb86005c, 0xa4c27766, 0xab3dc277, 0x112648fc
.word 0x0bebe7bf, 0x4da2fd3f, 0x6421a293, 0x263767fb, 0x4e274fd2, 0xd840a2b6, 0x6e2d7ce3, 0x06401897
.word 0x4e1ab6f9, 0xac391f4d, 0x20db0923, 0xae723aa8, 0xf52beeba, 0xc7b30107, 0x8527ea9e, 0x202e9d1a
.word 0xc3707136, 0xc12369ca, 0xdb5aec33, 0x855ea9d1, 0x81a0ff35, 0x49e302e4, 0x1f0b8f52, 0x14cace0a
.word 0xd4eb9742, 0xc33bd621, 0x5c3c852a, 0x04b5229c, 0x626e8e3b, 0x3b33f366, 0x88c06130, 0xa270ad0a
.word 0xa07fff16, 0x112a123d, 0x47c00863, 0x151bae8a, 0x797eea39, 0x7df64fa5, 0x798b7ddd, 0xad8aa98f
.word 0xd43abcee, 0x8d86d021, 0x1ef5f4a8, 0x43efb8a3, 0xd2aacda6, 0x0ef4e2fb, 0x199a993b, 0x688f7b4b
.word 0x719992ad, 0xde17c58a, 0x5fa0115f, 0x585c6472, 0xb6b8ac6b, 0x3fd8b203, 0x88b3999c, 0x59df7451
.word 0x19c1cde5, 0x8589d5f9, 0x2c48840a, 0x39c424a5, 0x2cd6f493, 0xa002ff94, 0x69c9f16f, 0x510b94b4
.word 0x0ded41d4, 0xa5f20f97, 0x96fc9306, 0xf4681fa3, 0x236949e5, 0xa3739da9, 0x935ee43c, 0xaa7f9552
.word 0xff73e67f, 0x9d7ec333, 0xe12f8e0c, 0x6be65b84, 0x0fbcd302, 0x8c4578f2, 0x31447f69, 0x16e2bed7
.word 0x294ef60f, 0x812efa5e, 0x4a051aa1, 0xc2e54054, 0xc9b68a85, 0x903a25ee, 0x7cc983d0, 0x66bd4ee2
.word 0x26b63070, 0xd0ab075d, 0x75c05675, 0x3e823fbe, 0xb74c30e3, 0x128c0c46, 0x04eabf80, 0x34b4c7ae
.word 0x403ebcdb, 0x59dcd827, 0xca6a78a7, 0xce5d7c42, 0xe31d49e8, 0xc0b0af35, 0xeb1cf72a, 0x5ca61d41
.word 0xdc6f47d5, 0xd775863e, 0xc67b0065, 0xd2abaa42, 0x64215071, 0x908957bd, 0x60e54b7a, 0x5cc7fa7a
.word 0xa2ef9062, 0xbabc099e, 0x444ffdc4, 0xc3dd1d8d, 0x9929c071, 0x5fbd5982, 0xc0d6c115, 0xbece00c3
.word 0xa3e41c69, 0x8acd3d7a, 0x499e426b, 0xa9d44b4d
.section .region_1,"aw",@progbits;
region_1:
.word 0x3bcbee73, 0xb4582da0, 0xf19085f7, 0xf883e100, 0x93ec6503, 0x2db2d2af, 0x4f2d1412, 0xaf6b5c00
.word 0x12cd605f, 0xb9af4804, 0x77592f96, 0x3768b73e, 0xc9fb500a, 0xfe811833, 0x00b4ac35, 0xa1b8fc40
.word 0xd362e52d, 0xd99a17f4, 0xc65d68f4, 0xdfdcf988, 0xa5b32102, 0x81639a12, 0xb2eaa0e9, 0x627b33f7
.word 0x9eea2617, 0x8d2fe118, 0xd686257b, 0x17449730, 0x91445057, 0xfe4461dd, 0x0b379e46, 0x619d4904
.word 0x242daf61, 0x5cf477ec, 0x4e3f24cf, 0x008eae3e, 0x382d8989, 0x7b89a0d1, 0x51117836, 0x09038217
.word 0x9ddd636f, 0xb86d8cb9, 0x385f0db7, 0x547f1a00, 0x9733251f, 0xb5c5aa07, 0x02c085d5, 0x3fed2bf9
.word 0xa393f77a, 0x6915ee46, 0xfa186c2b, 0xcc33c27e, 0xc844931c, 0x91fc0a53, 0xd5509246, 0x589f7a3f
.word 0xf7649903, 0xb28dc4a5, 0x756a4090, 0xe1d0a411, 0x594dfa47, 0x7d06735b, 0xa4f60565, 0xe9ed866e
.word 0xcbffbd77, 0x9e4c8bce, 0x520f5319, 0xdd2f3aa8, 0x8094431a, 0x3b27f625, 0x300b0a61, 0x1b6d8560
.word 0xcf6aa631, 0x30365b31, 0xbc12620b, 0x299af66f, 0xf68d8944, 0x3f67d966, 0x8816f39c, 0x1cf8834e
.word 0x2536d430, 0xf19a3b42, 0xce1ab4b1, 0x3ed54f08, 0x315847c4, 0x6d306d99, 0x0177da25, 0xa1e3372c
.word 0x6073e62c, 0x42b61c66, 0xc5bf7554, 0x3711d002, 0xd9d465b4, 0x2c63fa24, 0x1dd3ada7, 0xf0f11b56
.word 0xf0fa1350, 0x1c84beca, 0xc05cd9df, 0xf5a24d2b, 0x0ac7a39d, 0x53eaace9, 0x93931340, 0xc508a51a
.word 0x976df626, 0x015403dc, 0x82854b9a, 0x9bb581f3, 0xcd79c2e3, 0x8f3d83aa, 0xa3b22c21, 0x8c162bfc
.word 0xaef52ddb, 0xa5e47f2c, 0x5dd77088, 0x20c44b61, 0xb5d5997c, 0xe0c11e5b, 0xd6352189, 0x7c90f517
.word 0x5f1ee218, 0xf90ac42b, 0x105eae0f, 0x26667e1b, 0x2c79e533, 0x5467edf4, 0xaee83bdd, 0x707403cc
.word 0x51f010a0, 0xac180446, 0xe3a2d252, 0x3e48ab43, 0x41d91f07, 0x3091ecb5, 0xb87ebf72, 0x8a33bc53
.word 0xa99e9ebd, 0xfd7c03cf, 0x62eae065, 0x7922df46, 0x2ef8f9e3, 0xe7f8e859, 0x2d627ef4, 0x3e5f9f53
.word 0x7cf1cef4, 0x994c8a22, 0x2a3faa08, 0x9cda68f6, 0xb8cf4e61, 0x24fd828c, 0x67a383cd, 0x966f5d0c
.word 0x1990dd82, 0xf1142658, 0x750f9ec9, 0xae4d5b0b, 0xe02d6a08, 0x4675d03a, 0xb92afdcd, 0x9b7366cf
.word 0x2f3c0789, 0x7653a089, 0xde8eb09a, 0x15c6e497, 0xeb848304, 0x0e821dc0, 0x1dcbabec, 0x0ec5f9c6
.word 0x2b398d06, 0xa1c49db5, 0x7abd67b3, 0xe3115762, 0x49ec30b3, 0x71518da0, 0x303f2715, 0x298a1b1f
.word 0x4da15d91, 0x81b67285, 0x9b2628e3, 0x261e4946, 0x122944e3, 0x3bdb6c4e, 0xb686961f, 0xe5f3fa5b
.word 0x6250c137, 0x89a72223, 0x9c044966, 0x6d1bc0ca, 0xc72aa0d6, 0x3000c72d, 0x2092d188, 0x19872ac2
.word 0x3473b7c3, 0xe1c2833d, 0xd566213f, 0xe8b5d316, 0x76913601, 0xef61c878, 0x9e882317, 0x158192ce
.word 0x84649d17, 0x4660eb04, 0x40e269ea, 0x1efcb5bb, 0x1d997e29, 0xc813be16, 0x30030d9f, 0xe70d071e
.word 0x645bfc0c, 0xb1afad52, 0x06062bcc, 0x16b9cda4, 0x18126280, 0x65975f33, 0xc5ed84b8, 0xa04d03c0
.word 0x55f56447, 0xdb10b0ac, 0xb72093ea, 0xe2047ca7, 0x0d7709c5, 0x6ec0bfb4, 0xff031734, 0x99343e4a
.word 0x057bc0fe, 0x6515effe, 0x1e31bea6, 0xbd3b1e3a, 0x9330695f, 0x7a17da30, 0x7346be90, 0x3bb71451
.word 0x05517f96, 0x74a61ee8, 0x52332617, 0x30acb613, 0xef23d6dd, 0xa94e182d, 0xd348dba6, 0xd0add24a
.word 0x8f0b80c1, 0x8f5e6ef1, 0x32a1a85a, 0xe95af363, 0x787a4be5, 0x472f074b, 0x3524bcb5, 0xfa08c548
.word 0x1ad23339, 0x889ec758, 0x6980a02d, 0x4c56cbe0, 0x7aac6421, 0xd7fb7a3d, 0xd4d3059e, 0x34aae63e
.word 0xc5cf3e9b, 0x1a37dffb, 0xc6288cbe, 0x1238cde9, 0x9ab59af0, 0xeb04830e, 0xb36d91a6, 0x5d92652a
.word 0x98fe2bf1, 0x5030a7c0, 0x8d621b0f, 0xff67259e, 0xbffecc15, 0x2adfdfc5, 0x1cc70261, 0xec9caa4f
.word 0x903affe9, 0xd2157bbc, 0xc7f0ee58, 0xceae94b1, 0x0d72d43c, 0xc53522cf, 0x718ce965, 0xba6369a0
.word 0x97126f8c, 0xd8586863, 0x38ce7852, 0x19243411, 0xe3b1fc81, 0x8aa38791, 0x9cf82473, 0x4e3776eb
.word 0x6b37d02d, 0x546869e8, 0xfd9fee52, 0x6dd0c74e, 0x85609c75, 0x2a1e67db, 0x015c7770, 0x07206761
.word 0x13019797, 0xd16a02be, 0x7039e49e, 0x5efd1267, 0xccba9e04, 0x7455508e, 0x38d2aa37, 0xc14578d0
.word 0x2a9c5f64, 0xbc32a059, 0x36af90ab, 0xf7854c01, 0x4dae234e, 0x917034c3, 0x65d0433a, 0x0a5383e5
.word 0xb994b4ba, 0x07008a7c, 0x0cc94e6b, 0x0c4a5e52, 0xe0ccb590, 0x57622460, 0x4a3dc7b4, 0xcdb09774
.word 0x01e41565, 0x34ac9358, 0x51ede259, 0x9287a39a, 0x6f6af66d, 0xd6708dd1, 0x6fa3b710, 0x5b4a9797
.word 0xce27046a, 0xfdd5b300, 0x7b5149a7, 0x9ff84437, 0xca331284, 0x940aa500, 0x7eabd288, 0xba135da9
.word 0x488a6190, 0x48bcb41e, 0x9b7fc23b, 0x8fb86364, 0x253a1e11, 0x82806643, 0xc147593c, 0x371017ea
.word 0xf524281c, 0xb76c57fe, 0xd953e4e0, 0x6dc9c066, 0x5501f2f0, 0xe64d3c48, 0x8f42d01d, 0x45215ed0
.word 0x4d351583, 0x7d027dae, 0x7bb6d551, 0xabecb825, 0x3c46968a, 0x25922cd8, 0x0e101302, 0x0557f2a7
.word 0xe72371f3, 0xe652a9c5, 0x16628b79, 0xfb16e26c, 0x24307bf8, 0x83537926, 0x4b593c28, 0x7bd08c1c
.word 0xf3ddaf04, 0xf3bfdab7, 0x7cc3a95d, 0x679faa37, 0x559dd55f, 0x46564a83, 0x7f0063a7, 0xd6bffcf7
.word 0x46569ecd, 0x0455eb9d, 0x0c4b9fbd, 0x5d8710ea, 0xf5cda594, 0xd2c21faa, 0xcd17802f, 0x9ebdfebc
.word 0x6cceecc8, 0x21cb1d36, 0x35c6df74, 0xfb0dbc71, 0x57ad31fd, 0xc4766113, 0xdc2a7dcd, 0x3e810b77
.word 0x8ce80c5c, 0xf8159ff9, 0x0e04e3ad, 0x75f58faf, 0xfd21b2bc, 0xacda7595, 0xe18d3dd4, 0xe5963ec1
.word 0xc06fdfab, 0xa8f18330, 0x415dda96, 0xf53c0b56, 0x51cfc09d, 0xa58a8fb7, 0xd2c1da62, 0x33eaa34c
.word 0xee571d2c, 0x04d597a4, 0xd54073a5, 0x512be03d, 0xe2c359cd, 0x682a7136, 0x3d8dd80a, 0xa16f3aaf
.word 0x25a66dad, 0x93bb98bc, 0xf12fce50, 0x4b58372f, 0xff891716, 0xb2a5aa04, 0xd44c2dea, 0xedf91cd6
.word 0x7c36f425, 0x36185ae2, 0xc72d0890, 0xf4d8f624, 0xb4ab6710, 0x5fae298a, 0x44ce1d5c, 0x791513c4
.word 0xb3dfc2d0, 0xee913068, 0xb92d871f, 0xdf350fd3, 0x0639c33b, 0x606ba055, 0x03e33027, 0x0da6d7bb
.word 0x8e06f611, 0x7287d7d2, 0x484f48ce, 0xb2d8d0b7, 0xfadd5ced, 0x603ce7bd, 0xb0cd2e07, 0x70c60786
.word 0x05f4bde5, 0xe3d97f69, 0xb8126956, 0xcf2ae38a, 0x5e713237, 0x8adc312b, 0xa0faadd9, 0xf9ae8427
.word 0x82b240e4, 0x22e3ac33, 0x0a1f8626, 0x7bff9e9a, 0x6ee393a2, 0x6b713203, 0x2bf39aae, 0x71f09827
.word 0x7b85e4ed, 0x0fd4108c, 0xbd1c9a25, 0xa2712499, 0x02e40311, 0x2e1aaced, 0x0ccba0c8, 0xb8c70af8
.word 0xc1625885, 0xe48949d2, 0xfc547770, 0x9e2ed6c8, 0x2273521a, 0x2998ef13, 0x813d2593, 0x14a46dc3
.word 0xea33012a, 0x9b6f6767, 0x6245cb9d, 0x30119d8e, 0x6a03e2db, 0x43a70fd8, 0xa935faad, 0x213769f9
.word 0x0b738145, 0xaecaca82, 0x348fb058, 0x65d05d55, 0xb00a7a8a, 0xa706fcab, 0xa905c770, 0x64425a8e
.word 0x47316503, 0x6008448d, 0xb452338a, 0xb08025e1
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
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
                  add x14, x17, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  add x14, x17, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x15, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x15, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x15, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x15, x24, ecall_handler
                  li x24, 0x1
                  beq x15, x24, instr_fault_handler
                  li x24, 0x5
                  beq x15, x24, load_fault_handler
                  li x24, 0x7
                  beq x15, x24, store_fault_handler
                  li x24, 0xc
                  beq x15, x24, pt_fault_handler
                  li x24, 0xd
                  beq x15, x24, pt_fault_handler
                  li x24, 0xf
                  beq x15, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x17, x14, zero
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
                  add x17, x14, zero
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
                  add x17, x14, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x17, x14, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x17, x14, zero
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
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x17, x14, zero
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
