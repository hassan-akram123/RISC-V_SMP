.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x2, kernel_stack_end

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
                  li x0, 0x197a39df
                  li x1, 0x0
                  li x3, 0x9
                  li x4, 0xaa8f2817
                  li x5, 0x80000000
                  li x6, 0xe931142a
                  li x7, 0x0
                  li x8, 0xf8b69685
                  li x9, 0xfd1c8ceb
                  li x10, 0x0
                  li x11, 0xc6e57954
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0xf44c7fe1
                  li x15, 0x80000000
                  li x16, 0x3
                  li x17, 0x8
                  li x18, 0x0
                  li x19, 0x8
                  li x20, 0xf943bced
                  li x21, 0xf
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0xf5b720fc
                  li x26, 0x69e71ca2
                  li x27, 0x0
                  li x28, 0x9
                  li x29, 0x80000000
                  li x31, 0xedb95f0a
                  la x30, user_stack_end
main:             la           s2, region_1+132 #start load_store_instr_stream_1
                  sh           s11, 1866(s2)
                  lb           ra, 1743(s2)
                  la           s3, region_1+537 #start load_store_instr_stream_0
                  sh           a5, 1444(s2)
                  sb           t1, 11(s3)
                  sb           s1, 10(s3)
                  sb           tp, -7(s3)
                  lb           t0, -15(s3)
                  sb           a3, -14(s3)
                  sh           a7, 1050(s2)
                  lbu          a0, -14(s3)
                  lb           zero, -8(s3)
                  sw           sp, 620(s2) #end load_store_instr_stream_1
                  sh           s5, 15(s3)
                  sw           s10, 3(s3) #end load_store_instr_stream_0
                  la           s8, region_0+1333 #start riscv_load_store_rand_instr_stream_1
                  add          s1, s8, s5
                  slli         s7, s1, 23
                  srai         a5, t5, 17
                  lb           s10, 15(s8)
                  lhu          s0, 13(s8)
                  sltiu        t2, t1, 1062
                  lbu          a5, 22(s8)
                  slti         a4, s5, -937
                  srl          s9, t3, t5
                  sb           tp, 31(s8)
                  slt          a2, a4, s4
                  add          s9, t0, s9
                  andi         s10, s5, -1014
                  or           zero, a3, a0
                  sb           a6, -28(s8)
                  lh           a1, -21(s8)
                  lui          a4, 226589
                  add          t4, zero, s8
                  slt          s11, a3, sp
                  sb           a1, -31(s8)
                  lhu          s7, -59(s8)
                  lui          s10, 139382
                  lui          gp, 86428
                  slti         t4, s6, 814
                  lb           a7, 12(s8)
                  slli         s9, a7, 18
                  lb           s7, -56(s8)
                  xor          s1, s1, a2
                  slti         zero, tp, -1492
                  sh           s6, 5(s8)
                  andi         s0, a5, 1120
                  lbu          ra, -22(s8)
                  add          t1, a1, t5
                  sb           s7, -54(s8)
                  lbu          t2, 9(s8)
                  or           a6, s10, s2
                  sh           a2, -61(s8)
                  sb           t6, -58(s8)
                  sll          s11, s7, ra
                  sb           a6, 44(s8)
                  ori          s9, a5, 487
                  sltu         a7, t6, s6
                  sh           s10, 51(s8)
                  lui          a5, 243069
                  or           t6, s8, a6
                  xor          t4, s11, a4
                  xori         t1, a6, 619
                  and          a5, ra, t1
                  lb           t1, 54(s8)
                  sb           s6, -46(s8) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_0+89 #start riscv_load_store_hazard_instr_stream_5
                  lb           s11, 26(a0)
                  sb           a5, 26(a0)
                  andi         t0, a6, -1059
                  sb           ra, -54(a0)
                  sb           a7, -54(a0)
                  lb           a4, 0(a0)
                  lb           s0, 0(a0)
                  lb           t3, 12(a0)
                  sb           t0, -54(a0)
                  lb           t0, 22(a0)
                  lbu          a7, 22(a0)
                  lh           a7, 51(a0)
                  lui          a4, 116477
                  lbu          s1, 54(a0)
                  lb           s3, 28(a0) #end riscv_load_store_hazard_instr_stream_5
                  la           t1, region_0+786 #start riscv_load_store_rand_instr_stream_5
                  slt          t4, t2, t3
                  lb           a5, 33(t1)
                  lh           s7, 240(t1)
                  sb           t1, -85(t1)
                  ori          a7, t0, -1421
                  add          a1, t3, t5
                  sw           s7, -66(t1)
                  srli         t4, a4, 14
                  sh           s3, -208(t1)
                  and          a0, s0, a3
                  lhu          s1, 236(t1)
                  and          s1, gp, s5
                  lb           ra, 25(t1)
                  slt          s3, t1, s9
                  lb           a3, -251(t1)
                  slti         s10, t2, 1407
                  lbu          t2, 141(t1)
                  ori          s3, t1, -933
                  sb           sp, 141(t1)
                  slti         t0, zero, -1961
                  lh           s0, -160(t1)
                  xori         a6, s8, 1986
                  sh           s10, -228(t1)
                  sltu         a0, t2, s7
                  andi         a7, zero, 1371
                  sb           ra, -60(t1)
                  lbu          s5, 152(t1)
                  lb           s9, 151(t1) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_1+368 #start riscv_load_store_rand_instr_stream_6
                  andi         t0, t0, 352
                  lbu          s5, 97(s1)
                  lhu          a5, 38(s1)
                  lb           a4, 125(s1)
                  lb           s5, -107(s1)
                  sh           t1, -214(s1)
                  andi         s0, s0, -1232
                  andi         t6, t0, 1752
                  lb           t2, -127(s1)
                  lbu          s11, 59(s1)
                  lh           s3, -160(s1)
                  sh           s9, -106(s1)
                  slli         t4, t3, 11
                  lui          a3, 267079
                  lui          t4, 488906
                  lbu          a4, 212(s1)
                  lbu          t1, -203(s1)
                  lh           s3, -210(s1)
                  slt          s8, a7, a1
                  lb           t2, -152(s1)
                  lb           s4, 53(s1)
                  sb           zero, 13(s1)
                  xor          t6, s10, s1
                  add          s8, t1, s3
                  lh           a2, 64(s1)
                  srl          s0, s1, s10
                  auipc        ra, 362392
                  sltu         tp, a4, s8
                  lhu          t1, 194(s1)
                  sb           s11, -54(s1)
                  srai         a4, s11, 26
                  slti         a5, s7, 795
                  lbu          t3, -179(s1)
                  lb           a7, 25(s1)
                  sub          a0, s6, t4
                  lbu          s9, -203(s1)
                  lbu          s7, 23(s1)
                  sb           a3, -45(s1)
                  sub          t0, s5, tp
                  and          s7, tp, s5
                  lb           s9, -37(s1)
                  sb           s8, -224(s1)
                  srli         a7, t5, 9
                  sb           a5, -207(s1) #end riscv_load_store_rand_instr_stream_6
                  la           a5, region_1+914 #start load_store_instr_stream_2
                  la           s3, region_1+1668 #start load_store_instr_stream_4
                  lw           s9, 710(a5)
                  la           t4, region_1+1218 #start load_store_instr_stream_1
                  la           gp, region_1+1006 #start load_store_instr_stream_3
                  la           a1, region_1+1371 #start load_store_instr_stream_0
                  sw           tp, -874(a5)
                  lb           s7, -38(a1)
                  lbu          s9, -267(a5)
                  lbu          t3, 11(t4)
                  lh           zero, 48(gp)
                  sb           s8, 691(a5)
                  sb           t5, -6(t4)
                  sb           s8, 162(s3)
                  lbu          t0, 11(t4)
                  lb           tp, 17(gp)
                  lhu          s1, 124(s3)
                  sb           s10, -800(a5)
                  lh           s4, -26(gp)
                  lbu          a6, 53(gp)
                  lb           s2, 165(s3)
                  sh           t6, -37(a1)
                  sb           sp, -32(a1)
                  sb           sp, -181(s3)
                  lb           s5, 27(t4)
                  sb           s6, 973(a5)
                  sb           s7, 772(a5)
                  sb           s7, 59(t4)
                  lb           s0, -9(s3)
                  lhu          ra, -19(a1)
                  lhu          a3, 14(s3) #end load_store_instr_stream_4
                  lb           a7, 33(gp)
                  sb           sp, -22(t4)
                  sb           s2, 108(a5)
                  sb           a7, 743(a5)
                  lhu          t1, -8(gp) #end load_store_instr_stream_3
                  sh           t4, 38(t4) #end load_store_instr_stream_1
                  sw           a5, 490(a5) #end load_store_instr_stream_2
                  lh           t0, 5(a1) #end load_store_instr_stream_0
                  la           t6, region_1+1926 #start load_store_instr_stream_1
                  la           t3, region_1+1379 #start load_store_instr_stream_0
                  sw           t1, -194(t6)
                  lb           tp, -45(t6)
                  lb           a5, -726(t3)
                  lb           s5, -147(t3)
                  sb           t4, -837(t3)
                  lb           a1, -136(t6)
                  sb           t2, -811(t3)
                  sh           s2, -651(t3)
                  lbu          s0, -143(t6)
                  lh           s8, 44(t6)
                  lhu          a1, 375(t3)
                  sb           s0, 15(t6)
                  lb           a1, -55(t6) #end load_store_instr_stream_1
                  lbu          s4, -1296(t3) #end load_store_instr_stream_0
                  la           s5, region_1+1602 #start riscv_load_store_rand_instr_stream_3
                  lbu          s9, -23(s5)
                  lui          t0, 317231
                  sll          s3, s11, s3
                  lb           a5, 40(s5)
                  lhu          t6, -58(s5)
                  sw           gp, 42(s5)
                  lhu          s2, -4(s5)
                  or           s7, a2, ra
                  sb           tp, -47(s5)
                  sltu         a6, a3, t4
                  srl          t4, t2, gp
                  sh           s10, 62(s5)
                  sub          gp, t6, s10
                  auipc        s10, 75415
                  nop
                  lbu          s0, -3(s5)
                  lb           s2, 29(s5)
                  sra          ra, s9, a0
                  xor          a4, a7, a0
                  slli         t1, a2, 27
                  sub          a4, s1, a3
                  lhu          a3, -62(s5)
                  sub          s4, a5, s4
                  xor          a3, s5, s9
                  sll          a2, zero, s3
                  or           ra, t6, s0
                  sub          s4, s10, ra
                  lbu          zero, -56(s5)
                  xori         s7, a2, -1642
                  lw           a6, -30(s5)
                  addi         zero, tp, 1374
                  lbu          a0, 35(s5)
                  ori          a4, zero, 468
                  sb           ra, 39(s5)
                  ori          a2, a1, 701
                  ori          a6, ra, 687
                  or           t6, s3, s10
                  and          s10, a5, s9
                  lh           s9, -36(s5)
                  andi         s4, s3, -1858
                  andi         a2, s3, 292
                  lb           t4, 18(s5)
                  lbu          t1, -37(s5)
                  lb           t3, 21(s5)
                  sb           s6, 35(s5)
                  sra          s0, gp, t0
                  sll          a2, ra, t1
                  lb           a0, 40(s5)
                  and          s4, ra, t6
                  and          t0, a4, s11
                  lb           s11, 38(s5) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_1+1308 #start riscv_load_store_hazard_instr_stream_0
                  sh           t3, 8(s8)
                  lbu          ra, 0(s8)
                  sh           s0, 0(s8)
                  xor          ra, s3, s10
                  lw           s5, 0(s8)
                  sub          a2, a1, s0
                  sb           a5, 6(s8)
                  lb           s3, 5(s8)
                  lbu          t2, 5(s8)
                  sw           t2, -8(s8)
                  sw           t1, -4(s8)
                  sb           zero, -1(s8)
                  slti         s9, a4, 1504
                  lbu          t3, -1(s8)
                  xori         t6, ra, -1669
                  sb           s0, -1(s8)
                  lbu          s3, -1(s8)
                  sltiu        a7, gp, 229
                  sub          s2, s0, t5
                  sb           t6, -1(s8)
                  lbu          s10, 5(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           a2, region_0+1923 #start load_store_instr_stream_1
                  sh           s9, -15(a2)
                  la           s3, region_0+756 #start load_store_instr_stream_0
                  lb           ra, 2(a2)
                  sb           s1, -10(a2)
                  lbu          zero, 96(s3)
                  lw           gp, 13(a2)
                  lhu          t0, 120(s3)
                  lbu          ra, 16(a2)
                  lb           tp, -244(s3)
                  sb           s1, 2(a2)
                  sb           s4, 74(s3)
                  lb           s8, 6(a2) #end load_store_instr_stream_1
                  lbu          t3, 176(s3) #end load_store_instr_stream_0
                  la           ra, region_0+44 #start riscv_load_store_rand_instr_stream_4
                  lh           s8, 14(ra)
                  lhu          a6, 8(ra)
                  lb           a0, 12(ra)
                  lhu          a0, -14(ra)
                  lb           s1, 15(ra)
                  srl          a3, s5, t5
                  srl          s4, s0, s2
                  sltu         t2, a3, a1
                  srl          a7, s9, a3
                  lbu          s11, -9(ra)
                  slt          s0, a1, t4
                  ori          a7, a2, 910
                  lui          s3, 732986
                  sb           a2, 5(ra)
                  auipc        t2, 252476
                  sb           s9, 0(ra)
                  sb           s10, -11(ra)
                  andi         s2, s8, -1852
                  lw           t4, -8(ra)
                  or           a3, s9, s2
                  lh           t6, -6(ra)
                  nop
                  lbu          tp, -13(ra)
                  srli         a7, t2, 5
                  lbu          zero, 13(ra)
                  sb           s8, -6(ra)
                  sh           s3, -6(ra)
                  and          s10, s10, s0
                  or           s3, t5, a5
                  lh           a6, 6(ra)
                  lbu          a3, 16(ra)
                  sll          s11, s2, s7
                  sb           t5, 5(ra) #end riscv_load_store_rand_instr_stream_4
                  la           s4, region_0+165 #start riscv_load_store_hazard_instr_stream_4
                  lbu          t0, 137(s4)
                  xori         tp, tp, -298
                  lbu          a0, 39(s4)
                  sh           s11, 37(s4)
                  lhu          s8, 37(s4)
                  lh           s5, 37(s4)
                  sltu         tp, t6, t6
                  lh           s11, -109(s4)
                  sh           s4, -109(s4)
                  lw           gp, -109(s4)
                  sub          gp, t0, gp
                  lbu          t6, -6(s4)
                  lb           s10, -6(s4)
                  lb           a2, -6(s4)
                  sll          s9, a1, t1
                  lbu          t6, 96(s4)
                  lbu          t6, 96(s4)
                  sb           s8, 245(s4)
                  lw           a2, 111(s4)
                  sb           tp, -91(s4) #end riscv_load_store_hazard_instr_stream_4
                  la           t2, region_1+1220 #start riscv_load_store_hazard_instr_stream_1
                  lb           t6, -1088(t2)
                  slli         a7, a2, 3
                  srli         s1, t4, 26
                  lb           a4, -1088(t2)
                  sb           s2, 607(t2)
                  nop
                  lbu          s8, 607(t2)
                  sb           s4, -1157(t2)
                  lb           s11, -1157(t2)
                  sb           s4, -449(t2)
                  sb           ra, -591(t2)
                  and          t6, sp, s3
                  lw           s3, -196(t2)
                  slli         tp, sp, 23
                  lbu          gp, -196(t2)
                  lhu          a3, 746(t2) #end riscv_load_store_hazard_instr_stream_1
                  la           s3, region_1+626 #start riscv_load_store_rand_instr_stream_2
                  lh           a4, 38(s3)
                  lbu          s4, 695(s3)
                  sll          s10, a6, s2
                  lb           zero, -193(s3)
                  lw           zero, 462(s3)
                  sb           t0, 384(s3)
                  auipc        s5, 845612
                  slli         gp, s1, 15
                  lhu          a2, 176(s3)
                  lbu          t3, 1369(s3)
                  sra          tp, s10, t4
                  sb           t5, 1281(s3)
                  lh           s5, -84(s3)
                  lbu          s5, -567(s3)
                  nop
                  sh           s0, -76(s3)
                  lb           t1, 627(s3)
                  xor          s8, t3, s11
                  sb           a1, 1275(s3)
                  lh           ra, 258(s3)
                  srai         s7, t1, 31
                  sub          gp, s0, a2
                  srai         ra, s11, 0
                  lh           t3, 864(s3)
                  sh           ra, 1266(s3)
                  sb           a7, 55(s3)
                  or           s8, a4, s11
                  nop
                  sb           a3, 981(s3)
                  sh           a0, -424(s3)
                  sb           t6, -407(s3)
                  sltiu        s7, t6, 44
                  sh           a3, 978(s3)
                  sb           s7, -247(s3)
                  sh           ra, -546(s3)
                  sb           a4, 375(s3)
                  lb           t6, 622(s3) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_1+662 #start riscv_load_store_hazard_instr_stream_3
                  lb           gp, 146(s0)
                  xori         s3, ra, -119
                  sh           s9, 146(s0)
                  lb           a0, 146(s0)
                  lhu          s7, 146(s0)
                  lb           s4, 146(s0)
                  sll          tp, s8, gp
                  lb           s3, 146(s0)
                  lbu          zero, 146(s0)
                  lbu          a6, 146(s0)
                  lbu          s10, 146(s0)
                  lhu          t3, 146(s0)
                  sw           a0, 146(s0)
                  lw           s1, 146(s0)
                  lh           s3, 222(s0)
                  sw           s7, 222(s0)
                  sb           t6, 222(s0)
                  and          t6, a5, t2
                  lw           s9, 222(s0)
                  lw           a7, 222(s0)
                  sh           s2, 222(s0)
                  sra          s3, t3, s9
                  lw           s9, 222(s0) #end riscv_load_store_hazard_instr_stream_3
                  la           s0, region_1+1288 #start riscv_load_store_rand_instr_stream_0
                  lb           a5, -43(s0)
                  lbu          tp, 20(s0)
                  srli         a2, t5, 30
                  slt          a5, zero, a0
                  sb           a3, 41(s0)
                  lb           a7, -49(s0)
                  sra          a1, s9, s5
                  sb           s2, -33(s0)
                  lbu          a0, 51(s0)
                  sb           s11, -1(s0)
                  sh           t2, -56(s0)
                  slti         a6, a1, 1626
                  sb           t3, 57(s0)
                  or           a4, s1, s1
                  sb           ra, 63(s0)
                  lb           a1, 1(s0)
                  srli         a2, tp, 2
                  lbu          a2, 41(s0)
                  sb           a1, 19(s0)
                  lh           t3, -10(s0)
                  lui          t4, 425992
                  sb           zero, -49(s0)
                  lbu          ra, 6(s0)
                  lb           ra, -58(s0)
                  lb           s9, -39(s0)
                  lb           zero, -10(s0)
                  srli         a3, sp, 25
                  nop
                  addi         s11, s5, -833
                  lh           s3, 46(s0)
                  slli         s4, a3, 16
                  lb           s10, 14(s0)
                  lbu          a3, 16(s0)
                  xor          s4, tp, s10
                  sra          ra, ra, sp
                  lhu          s3, 34(s0)
                  lbu          a7, -60(s0)
                  srai         s1, a3, 6
                  lb           t0, -13(s0)
                  sb           gp, -7(s0) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+1188 #start riscv_load_store_hazard_instr_stream_2
                  auipc        t1, 666786
                  nop
                  andi         tp, s10, 621
                  nop
                  slti         a0, t4, 1945
                  lb           a1, -77(s3)
                  lb           s5, 757(s3)
                  lb           t4, 289(s3)
                  and          s10, a4, s3
                  lbu          t6, -525(s3)
                  lb           s11, -525(s3)
                  ori          s1, sp, -1304
                  lb           zero, -525(s3)
                  lbu          a4, -525(s3)
                  sb           s3, -525(s3)
                  sb           t3, -525(s3)
                  lbu          t2, -525(s3) #end riscv_load_store_hazard_instr_stream_2
                  la           a4, region_1+213 #start load_store_instr_stream_1
                  la           s4, region_1+1673 #start load_store_instr_stream_0
                  lhu          s11, -31(a4)
                  lhu          s10, -175(a4)
                  lhu          s9, -71(a4)
                  lb           a0, -8(s4)
                  sh           a4, -15(s4)
                  lbu          a2, 242(a4)
                  lbu          s10, 57(a4)
                  sb           a0, 215(a4)
                  lhu          ra, 15(s4)
                  sb           t4, 244(a4)
                  lb           a7, -4(s4)
                  lbu          s1, -112(a4) #end load_store_instr_stream_1
                  lh           s10, -9(s4) #end load_store_instr_stream_0
                  la           s1, region_0+1548 #start load_store_instr_stream_0
                  la           a0, region_0+889 #start load_store_instr_stream_3
                  la           a3, region_0+885 #start load_store_instr_stream_1
                  la           a4, region_0+76 #start load_store_instr_stream_2
                  sb           s0, -163(s1)
                  sb           tp, -7(a4)
                  lb           a7, 40(a3)
                  lbu          s9, -4(a4)
                  lbu          s7, -6(a3)
                  lbu          t3, 2(a0)
                  lw           s3, -205(a3)
                  sh           s8, 231(a3)
                  lb           s0, 208(s1)
                  lbu          s7, -153(a3)
                  lb           s9, -1(s1)
                  lb           t1, -2(a4)
                  sw           zero, 151(a3)
                  lbu          s3, 235(a0)
                  sw           t3, 19(a3)
                  lbu          s9, 138(a3)
                  lb           gp, 221(a0)
                  lb           gp, 78(a0)
                  sw           gp, -81(a0)
                  lb           s9, -10(a4)
                  lbu          s0, 234(a0)
                  lhu          t4, -10(a4)
                  sb           gp, -75(a0)
                  sh           t6, 81(a0)
                  sb           s5, -169(s1)
                  lb           s10, 66(a0) #end load_store_instr_stream_3
                  lb           zero, -98(a3)
                  lh           t4, -6(a4)
                  lw           s5, -244(s1)
                  sb           a3, -15(a3) #end load_store_instr_stream_1
                  sb           a4, 13(a4)
                  lbu          t1, 105(s1)
                  lb           t1, -5(a4) #end load_store_instr_stream_2
                  sb           a3, 255(s1) #end load_store_instr_stream_0
                  sll          gp, t1, a6
                  sll          zero, a2, s1
                  slli         tp, zero, 22
                  srl          a4, t5, s9
                  nop
                  slti         a2, s9, -676
                  auipc        a0, 989553
                  sub          s0, a4, s2
                  and          a1, tp, s4
                  srli         s1, s0, 7
                  addi         t2, a7, 2017
                  add          s7, t4, a4
                  andi         t0, s8, -1420
                  slt          a6, s1, a0
                  nop
                  addi         t3, s11, -1104
                  sll          s10, t2, t1
                  sra          t3, s1, s5
                  or           s3, a0, a0
                  sll          s4, a5, gp
                  auipc        gp, 527730
                  andi         s3, t0, -1360
                  bge          s10, ra, 34f
                  andi         a4, t5, 1392
                  andi         s7, s7, 84
                  beq          s3, s3, 27f
                  bne          s4, a0, 27f
27:               add          t2, ra, t1
                  ori          s0, a3, 1012
                  bgeu         s5, t0, 42f
                  sll          a6, s6, a0
                  sll          tp, a3, s0
                  xor          zero, t4, a3
                  or           a6, ra, s6
34:               xor          t2, t6, a5
                  srai         s0, t2, 27
                  slt          t6, t1, t3
                  slti         s2, s8, 576
                  bne          tp, s6, 54f
                  ori          s9, a4, -919
                  xor          a1, a1, s8
                  bge          s9, a2, 58f
42:               or           s9, s10, s10
                  sub          tp, a6, t3
                  slt          t6, a7, a2
                  add          tp, a4, s8
                  sub          a2, tp, s5
                  slli         s8, s6, 27
                  ori          a4, s11, -1930
                  auipc        s9, 341439
                  sltiu        gp, s0, 1707
                  sltu         t0, s10, s8
                  beq          t2, t1, 56f
                  andi         s8, a1, -1718
54:               slli         t3, s6, 16
                  or           t0, s8, t0
56:               nop
                  nop
58:               sltiu        s4, t1, 327
                  slli         t1, sp, 17
                  bgeu         s5, t1, 73f
                  slli         t2, tp, 13
                  bne          tp, t6, 74f
                  srl          t0, tp, zero
                  lui          s11, 845249
                  auipc        a4, 584558
                  xor          s7, s8, a2
                  bne          t5, t3, 78f
                  srai         s4, a5, 15
                  sub          a5, s1, ra
                  slt          t0, s11, s1
                  sub          t2, a7, s5
                  xor          s11, s11, a0
73:               slti         t0, a7, 991
74:               addi         t1, t3, -968
                  lui          s4, 68406
                  bltu         s8, s4, 82f
                  sltiu        a0, s9, 718
78:               sltiu        a4, t3, -1193
                  lui          a4, 607455
                  add          s4, gp, s8
                  sll          a6, a7, s3
82:               sub          s9, a6, s8
                  sub          t2, s2, t4
                  sra          t4, a1, s3
                  auipc        s8, 947007
                  sub          s3, gp, s11
                  sltiu        a1, s2, -751
                  srl          a0, sp, t4
                  lui          s8, 738406
                  bne          s3, s11, 92f
                  srai         t2, s11, 21
92:               add          s8, a4, s2
                  and          zero, zero, a4
                  bge          a4, s9, 113f
                  blt          t2, s0, 101f
                  slt          s3, s11, a3
                  nop
                  slt          gp, ra, zero
                  sra          a2, s7, s10
                  auipc        s5, 273703
101:              auipc        s8, 166625
                  addi         s10, tp, 1771
                  srli         s8, a2, 25
                  srl          t6, s3, t0
                  srli         a5, a5, 2
                  andi         ra, s0, 747
                  sltu         s2, a7, s11
                  beq          s7, tp, 111f
                  sub          s9, s4, s7
                  and          s3, a1, s6
111:              beq          t3, s9, 129f
                  sra          zero, t4, s0
113:              sltu         s3, t1, s5
                  bltu         t1, t2, 132f
                  auipc        tp, 224046
                  srli         s4, a0, 7
                  auipc        s4, 488666
                  sltu         zero, t4, a0
                  lui          s9, 669741
                  slti         a0, t2, -1079
                  and          a3, s11, s5
                  blt          tp, a5, 123f
123:              sub          gp, a0, t5
                  slt          t6, t2, s7
                  andi         s8, a6, -2023
                  sub          a0, gp, zero
                  auipc        s3, 24917
                  slli         s10, gp, 8
129:              sll          a7, tp, gp
                  srl          gp, t0, s8
                  addi         t1, tp, 1347
132:              xor          s2, ra, a5
                  ori          s10, a0, 1280
                  ori          s4, a6, 1956
                  blt          a3, s4, 146f
                  blt          s11, t3, 145f
                  sltu         s4, a0, tp
                  sltu         gp, sp, s10
                  srai         a4, t2, 15
                  srli         s0, a3, 10
                  add          t2, t1, a4
                  sub          a6, s6, s2
                  bgeu         t3, s6, 153f
                  sltu         s4, t3, s11
145:              sll          s8, t2, tp
146:              xor          a7, s2, a3
                  add          s10, t0, t4
                  sub          s9, s6, zero
                  blt          gp, s10, 162f
                  bltu         s0, s11, 162f
                  sll          a5, t6, s5
                  auipc        s3, 556401
153:              bgeu         zero, s6, 161f
                  blt          t6, t6, 167f
                  ori          s7, s4, -507
                  sub          tp, tp, s7
                  bge          s3, a5, 168f
                  bgeu         a6, s4, 172f
                  bgeu         s7, a2, 168f
                  andi         a4, sp, -1721
161:              bne          s1, s7, 171f
162:              beq          s5, zero, 172f
                  blt          t6, t1, 169f
                  or           s3, s9, gp
                  srl          a6, a4, a5
                  lui          s11, 128779
167:              sub          tp, s2, t3
168:              slti         t6, s11, 596
                  la           s7, region_0+1037 #start riscv_load_store_hazard_instr_stream_6
                  lhu          a5, -33(s7)
                  sb           sp, 12(s7)
                  sb           t5, 12(s7)
                  slli         t3, s7, 14
                  sb           t0, 45(s7)
                  sh           a2, 29(s7)
                  lbu          s3, 22(s7)
                  sb           a5, 22(s7)
                  lbu          ra, 22(s7)
                  lb           gp, 22(s7)
                  sb           s8, 60(s7)
                  lbu          a5, 60(s7)
                  sb           sp, 60(s7)
                  lbu          t0, 60(s7)
                  lbu          s2, 42(s7) #end riscv_load_store_hazard_instr_stream_6
169:              srli         s10, a7, 26
                  sub          a7, ra, s5
171:              and          s11, t5, a0
172:              slti         t6, gp, 1739
                  beq          tp, gp, 183f
                  ori          s8, s11, -1936
                  xor          s11, a3, s2
                  blt          t5, tp, 178f
                  slt          s10, t0, s1
178:              sltiu        a1, s0, 1500
                  xori         a2, ra, 1537
                  blt          s7, s0, 199f
                  auipc        t2, 281679
                  lui          s1, 969436
183:              ori          t6, tp, 1344
                  add          s2, s10, a0
                  auipc        s1, 30687
                  srl          t3, a5, a5
                  addi         t4, a2, -1514
                  blt          gp, t5, 189f
189:              srai         a0, s4, 0
                  bgeu         s11, a4, 204f
                  slt          a4, t0, s10
                  slti         a4, a7, -797
                  bltu         a7, a2, 206f
                  andi         tp, s2, 1851
                  andi         gp, s9, -120
                  sll          a5, a3, s7
                  xori         s3, t3, 485
                  blt          t1, t4, 204f
199:              sub          t2, a6, s11
                  addi         t0, s11, 420
                  srai         s4, t4, 21
                  bge          s8, t6, 215f
                  srl          s1, s5, a3
204:              andi         a3, tp, -1449
                  sltu         t1, s4, zero
206:              beq          s9, t3, 215f
                  sll          t2, a3, s10
                  slt          a0, s8, s10
                  sra          a4, t0, tp
                  sltu         a7, ra, a5
                  srl          s5, t5, s6
                  sra          a7, t6, t3
                  xori         t3, sp, 1858
                  and          a2, t4, s6
                  slli         a7, s9, 18
                  la           tp, sub_2
                  sll          t1, s10, a2
                  add          t1, t6, a5
                  addi         tp, tp, -403
                  sra          t6, t1, sp
                  auipc        s9, 576981
                  nop
                  blt          s0, a7, main_j2 #branch to jump instr
                  or           s8, t2, t2
main_j2:          jalr         s1, tp, 404 #jump main -> sub_2
215:              bgeu         a7, a5, 218f
                  bne          s5, s8, 225f
                  and          s4, s9, s2
218:              bne          t2, s11, 231f
                  blt          a4, s2, 223f
                  or           s1, gp, a7
                  and          s2, a6, tp
                  slli         s7, zero, 26
223:              sltiu        s0, t0, -1084
                  sltu         a4, a5, a3
225:              bge          s9, s10, 242f
                  slli         gp, zero, 24
                  add          s3, t1, s2
                  auipc        a7, 13255
                  andi         a0, ra, -1544
                  sub          t2, s10, t1
231:              ori          s4, t1, -1294
                  blt          gp, s1, 248f
                  sltu         t1, s0, a6
                  beq          zero, s2, 247f
                  sra          a4, s2, a7
                  sltu         a5, a2, t5
                  and          t1, sp, s8
                  bgeu         s11, s3, 248f
                  sltu         s0, a7, a5
                  srl          t3, s3, s10
                  add          a3, a4, a0
242:              slli         s7, s9, 31
                  slli         a1, zero, 26
                  sltu         a5, a4, a2
                  sub          s0, s9, s2
                  srli         t1, t1, 23
247:              slt          tp, a5, t0
248:              lui          ra, 199615
                  bge          s8, s11, 261f
                  addi         t2, ra, 693
                  slt          t6, t4, s3
                  la           s1, region_0+1672 #start load_store_instr_stream_0
                  la           t4, region_0+277 #start load_store_instr_stream_1
                  sb           sp, -12(s1)
                  sh           s2, -63(t4)
                  sb           ra, 7(s1)
                  lb           a5, 19(t4)
                  lbu          s2, 31(t4)
                  lbu          s11, 5(s1)
                  sh           s6, -14(s1)
                  sb           gp, -7(s1)
                  sh           s10, 229(t4)
                  lbu          s4, 198(t4) #end load_store_instr_stream_1
                  lbu          tp, 7(s1)
                  lw           t2, -8(s1) #end load_store_instr_stream_0
                  bltu         s8, s7, 260f
                  add          a0, t6, gp
                  srai         t4, t0, 17
                  bge          a5, zero, 273f
                  slt          s1, t1, tp
                  xori         a3, a6, 1611
                  nop
                  bne          t3, t0, 270f
260:              addi         s5, a6, -1234
261:              or           a7, a2, s1
                  bne          a5, s1, 273f
                  sltu         gp, t1, a1
                  nop
                  bne          a2, a6, 275f
                  beq          t4, a3, 278f
                  bge          s2, s9, 285f
                  sltu         t0, ra, ra
                  bge          s5, a0, 281f
270:              ori          t4, t1, 1318
                  blt          tp, zero, 272f
272:              beq          a5, a1, 274f
273:              xor          a0, a2, a6
274:              xori         a2, a6, -199
275:              addi         t0, s8, 13
                  ori          t4, s9, -86
                  andi         a6, s11, -768
278:              andi         a3, a0, -1139
                  slli         t3, s1, 0
                  slli         s5, t1, 3
281:              lui          gp, 488004
                  addi         ra, s4, -213
                  beq          s9, s3, 294f
                  nop
285:              andi         t1, t1, -249
                  bge          sp, a1, 296f
                  bltu         sp, a5, 300f
                  addi         a4, a6, 500
                  bne          a2, t4, 306f
                  and          s9, t3, t2
                  slt          s8, t6, s8
                  auipc        a5, 289460
                  bne          s11, s9, 295f
294:              slt          a5, t1, a7
295:              blt          s11, s8, 311f
296:              srli         s4, t4, 7
                  bgeu         a7, t0, 305f
                  beq          t0, s1, 311f
                  xori         s1, s11, -1563
300:              bltu         s9, s6, 309f
                  srai         t0, zero, 21
                  sltu         a5, s7, s11
                  and          s5, s0, a3
                  and          s8, s3, s5
305:              bge          ra, t4, 311f
306:              xori         a7, t5, -25
                  or           s9, a6, s1
                  srli         s4, t1, 2
309:              and          s3, a4, a1
                  addi         s0, s2, -858
311:              add          a5, a1, a0
                  addi         a6, s5, 625
                  sub          s1, s11, s7
                  add          s10, a6, a6
                  bne          s4, zero, 327f
                  bltu         s7, a7, 319f
                  bltu         s9, t3, 327f
                  bge          sp, t0, 319f
319:              slt          s3, s9, ra
                  xori         t0, t5, 654
                  xor          s10, t1, sp
                  and          ra, s11, s2
                  nop
                  andi         a2, a5, 988
                  add          s7, a5, t1
                  blt          gp, s2, 344f
327:              srli         s8, s2, 20
                  nop
                  sltiu        s5, a2, -148
                  slli         s4, s7, 30
                  sltu         s5, t6, s10
                  beq          s9, s6, 346f
                  or           t0, t0, sp
                  auipc        s2, 193658
                  and          a4, s4, a5
                  xor          zero, s6, a0
                  xori         a5, t4, 1403
                  nop
                  andi         s3, s11, -478
                  beq          t3, a6, 351f
                  beq          tp, s9, 360f
                  addi         a4, t3, -1252
                  ori          t6, s6, -971
344:              sra          t6, s3, t5
                  srli         s1, a1, 24
346:              sra          a2, t2, a0
                  bne          a0, s0, 358f
                  sltiu        a6, a0, -643
                  and          s11, sp, t0
                  lui          t4, 840521
351:              ori          a7, s2, -873
                  slti         ra, tp, 135
                  bgeu         t5, s3, 371f
                  blt          a7, a3, 360f
                  blt          s5, s4, 356f
356:              slt          s2, s0, s5
                  lui          ra, 988934
358:              add          s9, s6, a6
                  xori         t0, t2, 525
360:              srl          s0, a2, a2
                  add          s9, t0, a7
                  ori          zero, s3, 1044
                  xori         s7, s3, 1959
                  bne          zero, s11, 368f
                  nop
                  slli         a5, t0, 0
                  beq          a1, s5, 379f
368:              sll          s1, a7, s9
                  beq          s1, a4, 382f
                  ori          s10, t4, -1569
371:              auipc        s8, 679926
                  nop
                  slli         s7, gp, 19
                  srli         gp, s7, 18
                  srl          t6, s8, s5
                  ori          s10, a1, -1412
                  sll          s10, a4, s8
                  bne          a7, a3, 389f
379:              slti         t6, ra, 530
                  srli         a1, a2, 11
                  bgeu         s1, a0, 393f
382:              slti         a2, s0, 621
                  sub          s9, a6, t0
                  slli         s2, s0, 26
                  sltiu        a6, a6, -537
                  or           s1, s10, a5
                  sltiu        s4, tp, -1810
                  or           s8, s10, a2
389:              slti         gp, t4, -1855
                  and          s8, s1, t4
                  bltu         gp, s11, 400f
                  srl          s7, s5, a1
393:              and          a3, s0, s6
                  addi         a1, a1, 1878
                  andi         t6, a4, -1022
                  sltu         tp, s1, a7
                  bne          s9, s1, 399f
                  blt          a1, s4, 411f
399:              and          t1, t1, s4
400:              ori          s10, s9, -1365
                  bltu         a5, s4, 411f
                  lui          t3, 529026
                  slti         t3, s8, -1509
                  bne          a6, gp, 421f
                  sub          t4, s7, s3
                  beq          s1, gp, 414f
                  sll          s11, s7, t1
                  bne          s9, a2, 424f
                  bgeu         s11, a7, 428f
                  sltiu        s11, s3, 72
411:              sub          s1, t5, s3
                  bne          a1, s1, 422f
                  slli         s3, s0, 10
414:              nop
                  srl          a5, s9, s10
                  srl          a3, a4, a1
                  bgeu         s2, a7, 427f
                  and          s9, t4, s11
                  srl          s11, a5, a1
                  srli         gp, a2, 0
421:              bne          a2, a5, 434f
422:              sll          t0, s7, gp
                  lui          s0, 174658
424:              lui          a5, 337764
                  ori          ra, tp, -1490
                  lui          s4, 648258
427:              auipc        s4, 390670
428:              bgeu         s9, ra, 441f
                  xori         a3, t5, -2003
                  beq          s0, s1, 431f
431:              slt          a6, tp, t1
                  sra          a5, t6, s8
                  and          s4, a7, a4
434:              ori          t6, s6, 1043
                  sll          s1, s11, s6
                  auipc        a5, 798435
                  blt          s4, s7, 439f
                  xori         a4, s1, -1326
439:              sltu         s10, s7, t6
                  nop
441:              addi         t6, ra, 1474
                  sltu         s9, t2, zero
                  blt          a1, t6, 447f
                  ori          a5, a4, 733
                  slli         s11, s3, 21
                  blt          ra, s2, 448f
447:              beq          t4, a5, 458f
448:              slti         gp, t2, 814
                  blt          ra, t2, 455f
                  sltiu        a4, t3, -930
                  andi         t2, a2, 2005
                  bge          zero, s7, 464f
                  xor          tp, s6, ra
                  and          a5, a6, a5
455:              srli         ra, s10, 6
                  bge          t3, t3, 457f
457:              srl          s9, a1, s2
458:              slli         a1, a7, 4
                  auipc        gp, 413875
                  or           t1, s10, s0
                  add          s4, ra, s10
                  addi         s4, s8, 1722
                  beq          s1, s6, 481f
464:              sra          a1, s8, a6
                  sub          s5, t0, sp
                  lui          s10, 759726
                  beq          zero, a3, 480f
                  or           s9, a0, s0
                  srli         s3, s2, 1
                  xor          zero, s0, t1
                  slli         s10, t5, 11
                  bge          ra, a7, 484f
                  sltu         a1, a7, t1
                  slt          tp, t6, s4
                  auipc        ra, 186308
                  nop
                  srli         t6, sp, 14
                  srli         s4, t6, 22
                  beq          t2, s6, 490f
480:              addi         a6, s4, 981
481:              slli         a6, s8, 22
                  sltu         a7, gp, t3
                  bne          t1, a6, 486f
484:              nop
                  bge          s1, tp, 498f
486:              srli         tp, s11, 17
                  add          s11, s0, a2
                  bgeu         a0, t2, 497f
                  sll          s1, gp, t2
490:              sltiu        s7, a6, -848
                  add          t0, s5, s4
                  nop
                  add          a3, t1, t3
                  slt          zero, a4, t3
                  srai         t2, a2, 11
                  addi         s1, a2, 1220
497:              xor          t4, t2, s6
498:              beq          t6, s4, 507f
                  sub          zero, t6, tp
                  beq          s8, a3, 510f
                  sltu         s10, a0, s7
                  ori          t1, s2, 1297
                  ori          s8, t1, -604
                  andi         s0, s5, -1350
                  sltiu        a6, a1, -1317
                  sra          s1, t4, s0
507:              sll          s2, t4, t0
                  beq          gp, a7, 520f
                  blt          a6, s6, 520f
510:              sll          t4, a5, t2
                  srli         a2, t0, 26
                  auipc        ra, 131225
                  sra          s2, a7, s9
                  sll          t3, t2, t2
                  addi         t4, s2, -910
                  bltu         s5, sp, 530f
                  srai         a5, zero, 7
                  xor          s11, s0, t2
                  xori         a3, t0, -1993
520:              nop
                  bne          tp, s2, 527f
                  bge          s5, a6, 540f
                  auipc        s1, 67001
                  srli         s10, s3, 16
                  slli         t3, tp, 12
                  slt          gp, a3, s8
527:              srl          s9, ra, t3
                  add          t1, s3, zero
                  bltu         s0, sp, 548f
530:              bge          t6, a7, 540f
                  add          t1, s9, gp
                  and          s10, s4, gp
                  sll          a3, t6, s3
                  srli         a4, s8, 30
                  bgeu         s11, t2, 537f
                  add          s2, a7, a1
537:              sll          a5, a1, a2
                  sra          s1, t1, a4
                  lui          a5, 151801
540:              bgeu         a2, t5, 553f
                  bne          a3, gp, 550f
                  and          s9, s11, a0
                  slti         ra, a5, -852
                  lui          s2, 468354
                  bltu         t1, t6, 558f
                  xor          s9, a7, a2
                  sltu         s2, s2, a6
548:              bgeu         s3, t3, 566f
                  andi         a2, ra, 205
550:              srl          a6, gp, s3
                  addi         a3, a4, 3
                  slt          s8, s0, t5
553:              auipc        s9, 159479
                  srli         s0, a4, 1
                  sltiu        s9, s7, -1837
                  nop
                  srli         t4, t4, 6
558:              sll          a5, s1, a5
                  beq          a3, s6, 573f
                  xor          tp, s10, a7
                  sltiu        a2, s8, 158
                  andi         s5, a2, 1080
                  bge          t3, a1, 574f
                  slli         ra, t0, 23
                  or           s0, s6, s8
566:              lui          t1, 40247
                  sltiu        t0, t0, -667
                  slt          s11, a2, t6
                  sub          s1, s2, ra
                  sra          ra, a6, s8
                  slt          s2, a4, a5
                  and          s2, t1, t2
573:              bge          s8, a6, 576f
574:              bge          t5, a5, 575f
575:              sra          a2, t1, s7
576:              sub          s5, tp, a5
                  srl          t2, t2, s0
                  lui          t1, 575961
                  bne          a1, s11, 580f
580:              addi         s1, a1, 993
                  sub          t4, s10, s10
                  bltu         a5, sp, 586f
                  blt          s3, a7, 594f
                  slt          a2, t2, t5
                  add          a3, s2, t2
586:              slt          a4, t4, s8
                  and          s0, s2, zero
                  ori          s0, t6, -807
                  srai         a5, t6, 23
                  sltiu        a5, s10, 1098
                  slti         t4, s1, -1716
                  bne          a3, s9, 605f
                  add          s1, t4, s0
594:              nop
                  srai         a2, t2, 24
                  sra          t2, s9, s8
                  slti         s10, s3, -1279
                  srli         s3, s6, 19
                  addi         tp, tp, 902
                  beq          ra, sp, 608f
                  sub          zero, t5, sp
                  bne          s9, tp, 611f
                  bltu         gp, t1, 605f
                  sltiu        a4, t4, 192
605:              slti         a7, s9, -38
                  bltu         zero, t3, 617f
                  auipc        s10, 798999
608:              slli         s4, ra, 2
                  nop
                  auipc        t1, 656108
611:              or           a7, s1, a6
                  andi         s5, s2, 626
                  sub          tp, a2, a1
                  bltu         a7, a3, 632f
                  sra          s11, a5, gp
                  sltiu        s1, a2, 1758
617:              blt          a6, s11, 629f
                  slti         ra, s8, -1414
                  andi         t2, s5, 152
                  bne          s6, s9, 633f
                  sltiu        zero, a3, -604
                  xori         t4, s10, -1469
                  ori          a0, a5, -401
                  srai         a3, t4, 29
                  add          s9, t4, t4
                  or           a0, s11, t3
                  sll          a6, t6, tp
                  andi         a2, a0, -219
629:              bge          s1, s3, 641f
                  sll          s10, s5, sp
                  and          s5, ra, gp
632:              auipc        s4, 954496
633:              sltu         t2, t4, s3
                  slli         t2, s5, 26
                  and          tp, ra, s7
                  slti         zero, a5, -629
                  blt          s2, s11, 649f
                  blt          s4, t1, 648f
                  ori          s8, a0, -1676
                  srli         s3, s3, 5
641:              srai         tp, tp, 11
                  addi         t2, s0, 403
                  xor          a6, s2, s11
                  blt          a2, a0, 661f
                  xori         a6, gp, 466
                  add          s3, s8, s6
                  slti         s2, gp, 712
648:              srai         s11, tp, 26
649:              or           gp, s8, a2
                  andi         s5, s1, -1021
                  xor          a3, a1, s5
                  bltu         s8, zero, 668f
                  addi         t6, s8, -1207
                  sltu         s10, t5, s2
                  xori         t2, s7, 259
                  bne          tp, t0, 662f
                  srl          s4, sp, t0
                  srai         a7, a7, 14
                  addi         gp, s11, 1759
                  bltu         t0, a1, 670f
661:              srai         t0, tp, 5
662:              sub          s5, tp, a6
                  add          s9, a1, a6
                  bne          gp, t0, 670f
                  srai         s9, s8, 16
                  sub          t2, s4, s8
                  slti         s5, a2, -120
668:              bge          s3, a3, 687f
                  add          s0, a0, a4
670:              srli         s7, t3, 18
                  bne          a2, sp, 687f
                  auipc        zero, 32500
                  xor          ra, a3, t3
                  slt          gp, s7, s5
                  bge          s6, a7, 681f
                  bltu         a0, s7, 687f
                  lui          s3, 81209
                  sltiu        s11, t4, -1370
                  slt          s3, a6, s1
                  bne          tp, s8, 693f
681:              bgeu         s5, s5, 691f
                  sll          s5, s2, gp
                  bltu         t2, t5, 692f
                  beq          tp, s0, 702f
                  sltu         zero, t1, a6
                  bne          sp, s8, 687f
687:              addi         s8, s11, -941
                  and          s4, s4, s1
                  and          s5, ra, a0
                  la           t3, sub_1
                  srli         a1, s7, 5
                  add          zero, a6, sp
                  add          s11, a2, a5
                  slti         ra, a5, -689
                  addi         t3, t3, 823
                  xor          s4, s7, s8
                  bge          s10, s11, main_j1 #branch to jump instr
                  sltiu        s3, tp, -1933
                  slt          t2, s1, t5
main_j1:          jalr         s1, t3, -822 #jump main -> sub_1
                  srai         s7, a3, 3
691:              lui          gp, 1010624
692:              and          gp, a2, a1
693:              andi         t0, s5, 174
                  auipc        s7, 363793
                  and          s7, a4, t3
                  bge          sp, sp, 702f
                  xori         s11, t2, -1296
                  auipc        ra, 71248
                  srl          t1, s0, gp
                  or           tp, s7, s8
                  xori         a7, a3, -644
702:              xor          t4, s6, t3
                  sltu         s11, s11, ra
                  bge          gp, s7, 706f
                  slt          s9, a1, s9
706:              addi         t1, a6, 906
                  slli         s8, a0, 16
                  slti         a1, t0, -771
                  ori          zero, a2, -905
                  sll          gp, t6, ra
                  bgeu         t6, sp, 724f
                  sra          a0, s7, s2
                  ori          s2, a3, -301
                  andi         s9, s5, 300
                  sll          a4, a6, s5
                  and          gp, t5, tp
                  sltu         s0, a6, s3
                  slli         ra, a2, 2
                  xor          s10, tp, s3
                  xor          s0, t0, a6
                  bge          ra, tp, 736f
                  sub          t4, a1, s10
                  add          a4, a5, s0
724:              slt          a3, s2, t1
                  nop
                  srai         a0, s5, 4
                  bne          a3, s0, 736f
                  and          t1, a0, s9
                  andi         t1, gp, -463
                  sra          ra, s10, s9
                  ori          a1, a2, 1363
                  slt          s4, s6, t3
                  sltiu        gp, t3, 1498
                  sltiu        s2, a0, -825
                  slli         t3, t0, 30
736:              sll          s5, sp, sp
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sll          a2, s5, t2
                  addi         t5, t5, -20
                  and          s2, s5, s1
                  auipc        t3, 749258
                  add          t2, a6, t6
                  slti         s9, t3, -52
                  sw           s1, 4(t5)
                  slti         a5, a3, -1721
                  add          t2, a5, t3
                  andi         ra, a0, 566
                  srl          a0, s4, a0
                  andi         ra, zero, 1318
                  la           s3, region_1+1425 #start riscv_load_store_rand_instr_stream_0
                  sh           a4, -21(s3)
                  xori         s4, a6, -1474
                  lbu          a4, -10(s3)
                  sb           a4, -100(s3)
                  srli         a7, zero, 20
                  lb           a5, 176(s3)
                  sw           s11, -65(s3)
                  sw           a2, 191(s3)
                  lb           t2, -58(s3)
                  slli         a4, tp, 24
                  lbu          t4, 70(s3)
                  sub          s1, sp, a1
                  lbu          a3, 68(s3)
                  sb           s2, 116(s3)
                  slt          a6, tp, s11
                  lbu          tp, -150(s3)
                  lb           s10, 220(s3)
                  add          s5, s9, s11
                  andi         a2, s10, 330
                  lhu          s10, 39(s3)
                  srai         s7, a3, 9
                  lh           t0, 217(s3)
                  lbu          s11, -31(s3)
                  or           s0, s0, s10
                  addi         s4, a4, 1799
                  ori          ra, s6, -668
                  and          s4, t1, a4
                  lhu          s10, 13(s3)
                  slli         a1, s8, 27
                  lh           t1, 123(s3)
                  sb           s11, -27(s3) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_0+1360 #start load_store_instr_stream_2
                  la           t4, region_0+644 #start load_store_instr_stream_3
                  la           s8, region_0+1474 #start load_store_instr_stream_1
                  sb           sp, -87(s8)
                  la           a1, region_0+1768 #start load_store_instr_stream_0
                  lw           a7, -204(t4)
                  lbu          a6, -197(t4)
                  lb           s2, -4(s8)
                  sh           a1, 20(s8)
                  lbu          a3, -215(a1)
                  lb           s0, -815(a1)
                  sb           a6, 76(t4)
                  sb           s10, 29(t4)
                  lbu          gp, 287(s9)
                  lb           t3, -74(t4)
                  lbu          s3, 159(s8)
                  lbu          a2, 36(t4)
                  lh           t3, -210(t4)
                  sb           s5, -925(a1)
                  lbu          s11, 117(s8)
                  lb           s0, -95(t4)
                  lb           t1, 49(s8)
                  sw           t5, 20(s9)
                  lb           a4, -1233(s9)
                  lh           gp, 142(s8)
                  lbu          s11, 29(s8)
                  lh           t1, -476(s9)
                  sw           s10, 132(s9)
                  lw           tp, 116(t4)
                  lhu          s4, -752(a1)
                  sb           s8, 211(s8) #end load_store_instr_stream_1
                  sb           s4, 148(t4) #end load_store_instr_stream_3
                  lbu          s4, 205(s9) #end load_store_instr_stream_2
                  sb           a7, 204(a1)
                  lb           s4, -316(a1) #end load_store_instr_stream_0
                  slt          s7, s11, t2
                  blt          s8, a4, 7f
                  slt          s7, s0, t3
                  la           ra, region_0+863 #start riscv_load_store_hazard_instr_stream_0
                  lb           s7, -15(ra)
                  sb           a1, 10(ra)
                  sh           tp, -15(ra)
                  srl          a2, s3, s4
                  sb           a7, -14(ra)
                  lbu          t6, -1(ra)
                  lbu          t6, 16(ra)
                  lhu          a7, -13(ra)
                  lbu          t6, -12(ra)
                  lbu          gp, -12(ra)
                  lb           s8, -12(ra)
                  lb           s0, 2(ra)
                  sb           t3, -12(ra)
                  lbu          s9, 12(ra)
                  lhu          s3, -1(ra)
                  lh           tp, -1(ra)
                  sll          s7, a6, s3
                  sb           s11, -1(ra) #end riscv_load_store_hazard_instr_stream_0
                  sltiu        t6, s8, -1840
                  bne          tp, s8, 19f
                  srl          s8, a4, gp
                  andi         zero, a1, -1601
7:                srai         a7, a2, 23
                  srl          s11, s4, t3
                  sltu         s11, a3, s2
                  bltu         t3, s7, 29f
                  sra          s11, s8, sp
                  or           s9, t6, a6
                  ori          s7, a3, -412
                  andi         s7, t6, 165
                  slli         s7, s3, 24
                  or           a4, s4, a4
                  sub          t6, t2, s5
                  xor          ra, sp, t1
19:               beq          a2, t0, 34f
                  slli         a3, s0, 4
                  add          s5, s1, s11
                  slt          s10, s6, t4
                  slt          a1, t5, a6
                  sub          s8, sp, s5
                  addi         s10, a6, -1147
                  addi         s0, s3, 1974
                  sra          t1, s0, s6
                  srli         t1, s3, 20
29:               nop
                  addi         s2, s9, -1224
                  srl          a3, tp, t4
                  slli         s11, t5, 26
                  or           s11, gp, t1
34:               bgeu         t1, s9, 40f
                  srai         ra, ra, 12
                  bge          t1, t1, 45f
                  nop
                  auipc        s4, 346608
                  addi         s3, s9, 1500
40:               srl          s5, a3, s11
                  xori         t6, a0, 1986
                  bge          t6, a1, 48f
                  ori          t3, s2, 1893
                  addi         a2, ra, 758
45:               ori          s5, s9, 1614
                  xor          s5, t6, a2
                  bgeu         s4, a1, 66f
48:               auipc        a3, 197497
                  slt          t1, s6, s2
                  sra          t1, s2, s8
                  bgeu         sp, t1, 52f
52:               srl          a7, s0, gp
                  xor          a2, t2, s1
                  srl          a3, a3, a1
                  xori         s9, ra, 660
                  blt          s7, a1, 74f
                  add          s1, tp, a7
                  ori          zero, s1, -1870
                  xor          s4, sp, t4
                  bne          t5, a3, 67f
                  bltu         s5, a3, 81f
                  and          s3, s0, s0
                  sll          s7, gp, t4
                  slti         t4, a3, -203
                  andi         a2, s8, -1277
66:               beq          t0, t4, 82f
67:               sub          s10, s7, s0
                  add          a2, t5, a5
                  sub          s7, t1, a5
                  lui          t6, 62947
                  sltu         s0, s7, t1
                  bltu         t4, a3, 88f
                  or           s2, gp, tp
74:               lui          a3, 234381
                  ori          zero, a5, -1744
                  sll          gp, t4, s11
                  andi         t0, a1, 1633
                  addi         s1, s6, 611
                  andi         gp, t2, 444
                  andi         t6, t6, 437
81:               srl          a1, gp, a1
82:               xori         a0, s5, -1975
                  srl          s10, a6, t1
                  andi         s1, t3, 761
                  and          s7, t4, sp
                  sltu         t6, t5, tp
                  xor          t0, t4, s3
88:               slt          s9, s7, s0
                  addi         s7, s6, -931
                  ori          a1, s10, -1468
                  blt          zero, sp, 93f
                  or           s11, s10, t3
93:               bltu         t5, s0, 96f
                  bgeu         a2, a4, 102f
                  xori         a1, s3, -964
96:               slti         s0, ra, 345
                  xori         t2, a5, -679
                  bne          s0, gp, 110f
                  lui          s8, 415435
                  slli         a4, a2, 24
                  sub          s7, a2, a7
102:              blt          t3, t6, 110f
                  sub          s5, s11, s9
                  sra          zero, sp, a5
                  xor          s10, a1, a4
                  srl          t1, t3, a5
                  blt          t1, a2, 108f
108:              srl          gp, a1, a2
                  andi         t2, t1, -1460
110:              srai         a6, gp, 20
                  lui          s5, 78218
                  sll          s0, t2, s0
                  slti         a7, a1, 1481
                  sltiu        a7, a3, 525
                  addi         s9, s7, 618
                  lw           s1, 4(t5)
                  addi         t5, t5, 20
                  srai         a1, s11, 1
217:              addi x1, x9, 0
217:              jalr x1, x1, 0
sub_2:            bgeu         s0, ra, sub_2_stack_p
                  srl          s11, t6, zero
                  sll          t2, tp, s6
                  srai         zero, gp, 4
sub_2_stack_p:    addi         t5, t5, -40
                  sw           s1, 4(t5)
                  sltu         s0, ra, s6
                  addi         t4, a4, 53
                  la           t2, region_0+713 #start load_store_instr_stream_1
                  la           a1, region_0+77 #start load_store_instr_stream_2
                  la           a5, region_0+1093 #start load_store_instr_stream_3
                  la           s0, region_0+414 #start load_store_instr_stream_0
                  lbu          s9, 28(a5)
                  lh           s8, 55(t2)
                  sb           t1, -158(s0)
                  sb           a0, 6(a5)
                  sb           s6, 7(t2)
                  sb           a4, 32(a5)
                  sh           t0, 5(a1)
                  lb           tp, -21(s0)
                  sb           a3, 57(a5)
                  lbu          s7, -11(a1)
                  sb           a4, -7(a5)
                  sb           a1, 111(s0)
                  lh           ra, -3(a1)
                  lb           t3, -43(a5)
                  lb           s11, -4(a1)
                  sb           ra, 10(t2)
                  lbu          gp, -6(a1)
                  lb           s2, -48(a5)
                  lhu          a3, -70(s0)
                  lb           s5, -1(a1)
                  sh           s5, 23(t2)
                  lbu          t3, 60(a5)
                  lbu          a4, 95(s0)
                  lh           t3, -11(a1)
                  lb           t1, 240(s0)
                  lbu          t1, -29(t2)
                  lbu          s9, -8(a5)
                  lh           a2, 7(t2)
                  sb           t3, 55(t2)
                  lbu          tp, 207(s0)
                  sb           t3, -9(t2)
                  lbu          s10, 4(a1)
                  sb           a2, -4(a1)
                  lw           a7, -1(a5) #end load_store_instr_stream_3
                  sb           a4, -240(s0)
                  lb           a0, 2(a1) #end load_store_instr_stream_2
                  lbu          a0, -7(t2) #end load_store_instr_stream_1
                  lbu          a6, 26(s0) #end load_store_instr_stream_0
                  la           a5, region_1+406 #start riscv_load_store_rand_instr_stream_0
                  sltiu        a7, gp, 1842
                  or           gp, ra, s8
                  xor          s10, s3, s1
                  ori          a4, ra, -2010
                  lui          t0, 751312
                  lb           s3, 7(a5)
                  ori          tp, s2, 1998
                  lb           s10, -5(a5)
                  slt          s7, s9, zero
                  srli         s1, s4, 7
                  sltu         zero, t0, a3
                  lbu          a6, -19(a5)
                  sb           t4, 41(a5)
                  or           zero, a3, s7
                  or           zero, s8, zero
                  xor          s7, t4, s1
                  add          s2, zero, s8
                  sb           s6, 19(a5)
                  nop
                  lbu          s0, 49(a5)
                  sh           t2, -16(a5)
                  lbu          a6, 39(a5)
                  lw           s5, -18(a5)
                  xori         s5, a5, -1669
                  lb           s5, 13(a5)
                  nop
                  xor          s9, s7, a3
                  xori         s0, s6, -368
                  lbu          s5, -18(a5)
                  lh           t6, -40(a5)
                  sb           gp, -32(a5)
                  slti         s8, t4, 436
                  lb           t0, 11(a5)
                  lbu          s8, -27(a5)
                  lhu          s8, -56(a5)
                  and          s1, s6, t2
                  lhu          a7, -40(a5) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_1+6 #start riscv_load_store_hazard_instr_stream_0
                  lw           gp, 230(a5)
                  sh           t6, 230(a5)
                  lh           tp, 230(a5)
                  lbu          gp, 230(a5)
                  ori          t2, ra, -1661
                  lw           s3, 230(a5)
                  sb           a2, 230(a5)
                  lbu          t4, 230(a5)
                  lw           s3, 230(a5)
                  lw           t3, 230(a5)
                  lb           t0, 230(a5)
                  add          t6, s0, s10
                  lh           t1, 230(a5)
                  lbu          a1, 145(a5)
                  sb           t2, 145(a5)
                  srai         a0, sp, 23
                  lbu          a7, 145(a5)
                  lb           zero, 145(a5)
                  lbu          a2, 145(a5) #end riscv_load_store_hazard_instr_stream_0
                  bltu         a2, zero, 11f
                  add          s8, sp, s0
                  addi         a4, t5, 1856
                  beq          tp, s10, 7f
                  beq          a2, t6, 18f
                  srli         a6, t4, 15
                  ori          s10, t2, -1953
7:                sltu         t4, t4, s6
                  bgeu         t6, s7, 21f
                  sltiu        a3, zero, 159
                  srli         a2, t2, 30
11:               sltiu        a1, s5, -878
                  or           t2, s11, a4
                  blt          a0, a1, 31f
                  auipc        s4, 144960
                  bgeu         s1, a2, 28f
                  bge          t6, s2, 22f
                  xori         t0, a1, -1012
18:               sltu         a6, a6, t0
                  sltu         zero, a0, a6
                  xor          s4, a4, s9
21:               sll          ra, s8, s0
22:               bgeu         s2, gp, 23f
23:               addi         a3, s5, 1146
                  bge          tp, s8, 42f
                  sub          t4, a3, a6
                  blt          a2, s5, 43f
                  sltiu        a7, t0, 281
28:               slti         a3, tp, -1686
                  slti         a1, a1, 375
                  ori          s5, s11, 971
31:               add          gp, s4, s3
                  blt          s9, a5, 35f
                  slli         a4, t3, 17
                  and          a3, a7, sp
35:               xori         a4, ra, 305
                  sltu         t2, s7, gp
                  sub          tp, s4, a6
                  sltiu        s11, t0, 963
                  slti         a2, a4, -812
                  bgeu         s5, a3, 50f
                  slti         a2, s2, 792
42:               bne          s6, s9, 60f
43:               slli         a1, s4, 31
                  sra          s4, s6, s1
                  bltu         s4, s10, 60f
                  bge          t4, s5, 60f
                  sltu         s7, gp, t5
                  slt          a1, a0, s10
                  srl          s9, s0, a7
50:               sra          zero, t0, ra
                  sll          a6, s1, t3
                  lui          a7, 1042577
                  xori         s2, t0, 1212
                  sltu         t2, zero, tp
                  lui          a1, 763555
                  sra          tp, s8, a5
                  sub          a7, zero, a6
                  andi         s2, s2, -2030
                  andi         s5, a0, 560
60:               lui          s3, 391797
                  bge          t5, t1, 62f
62:               and          t4, s1, t1
                  sra          a1, a7, a4
                  add          s1, s3, s1
                  bne          a5, gp, 84f
                  sub          a1, zero, t5
                  andi         t3, a6, 36
                  addi         a3, s8, 789
                  and          s10, gp, a7
                  nop
                  slli         s1, s7, 18
                  and          s10, s0, tp
                  ori          a1, t6, -115
                  beq          zero, s5, 76f
                  blt          a3, a4, 83f
76:               sll          a1, a7, t3
                  xor          t0, t0, tp
                  add          tp, a1, a4
                  bltu         a3, zero, 99f
                  beq          t0, a3, 100f
                  bne          a4, a5, 99f
                  add          s5, s10, s6
83:               sltiu        a2, s7, -65
84:               beq          a1, zero, 97f
                  srl          t1, s0, s8
                  bgeu         t1, t6, 100f
                  sll          s4, t2, t2
                  addi         t1, ra, 479
                  bgeu         s10, s4, 99f
                  nop
                  srli         a4, a4, 25
                  slt          t0, t5, a1
                  bgeu         a1, t1, 102f
                  sub          s7, a6, a6
                  bgeu         s4, tp, 107f
                  sltiu        s0, s11, 45
97:               srl          s7, a6, s5
                  and          a4, t5, t2
99:               bgeu         a1, s8, 115f
100:              andi         s9, t5, -993
                  bltu         s2, tp, 112f
102:              andi         a2, gp, -980
                  srli         s2, t0, 17
                  beq          a1, s10, 109f
                  auipc        s1, 279893
                  srai         zero, s0, 9
107:              beq          ra, s10, 119f
                  slli         t4, s3, 28
109:              or           s3, a7, tp
                  bne          t1, a5, 114f
                  lui          ra, 849346
112:              add          s7, a0, t2
                  and          a7, t2, s1
114:              bne          t4, s4, 127f
115:              srli         a6, t1, 10
                  srai         a7, t4, 3
                  addi         s5, s9, 1105
                  sra          a3, a5, a7
119:              slli         zero, t6, 29
                  sra          a4, s7, t4
                  lui          a3, 763450
                  andi         t4, a3, -909
                  sltiu        a6, tp, 268
                  bltu         t2, t0, 138f
                  auipc        a1, 115767
                  sltiu        ra, s11, 126
127:              nop
                  ori          s5, a5, -58
                  sub          a0, t5, a5
                  slti         tp, t5, -993
                  slti         s10, t3, -356
                  srli         a3, s7, 18
                  auipc        s11, 57942
                  auipc        s1, 435789
                  blt          t6, t4, 138f
                  auipc        ra, 215026
                  lui          t0, 676290
138:              sub          s10, a6, a6
                  srl          a6, s11, a2
                  sltiu        a3, a6, 1449
                  add          s4, tp, s3
                  andi         s10, t5, 1218
                  slti         a1, s3, -516
                  bgeu         s2, a7, 150f
                  ori          s7, s2, -1087
                  slti         s2, s6, -946
                  nop
                  or           s8, s1, a1
                  srai         s3, a0, 1
150:              lui          s10, 942452
                  lw           s1, 4(t5)
                  sll          s4, a6, s9
                  addi         t5, t5, 40
                  xor          t6, s3, t1
                  xor          s2, s9, s11
                  sltiu        s7, t4, 636
                  srai         a1, s1, 5
                  sll          t3, zero, a2
                  addi         s4, sp, -224
268:              addi x29, x9, 1
268:              jalr x29, x29, 0
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
.word 0x13e4c7d4, 0xc5c2e565, 0xb66fbb3f, 0x9082676a, 0xa5c043a5, 0xf9a86f0e, 0xe860bb35, 0xc241156e
.word 0x30cb291b, 0xe5a9e32e, 0x5a306201, 0x5494fa2b, 0xde3d946d, 0x0ef438da, 0x9c7d5790, 0x463d4aa5
.word 0xe397c18d, 0xe1afb315, 0xcddc6e1e, 0x8a833129, 0x3abc939a, 0x5629122e, 0xa42c48a9, 0x01a23bdb
.word 0xb7f7c203, 0x752f76ef, 0x943edf14, 0xc9014c49, 0x07bf2dbe, 0x740b64be, 0xb17cf84a, 0x1542946a
.word 0xdc7381a0, 0xd3a4d038, 0xea6ebc75, 0x749c16da, 0xa10afaa4, 0xdc081b63, 0xaa233993, 0x2736f194
.word 0x6ee265a1, 0xbef9cebe, 0xf61bd0b1, 0x07ae00fa, 0x87d32672, 0x447f291b, 0xf87bb8be, 0x439d2477
.word 0x0a4fe261, 0x2fcd79a5, 0xac1a42c1, 0xafa4eac3, 0x63b01e3d, 0x8226c579, 0x3c41e450, 0x115f0ebb
.word 0x53a3a7c9, 0x9f89371e, 0x4f43f8ca, 0xf760f5ae, 0x98b3f083, 0xfd916923, 0x73e9fcda, 0x463d764d
.word 0x22247fdb, 0x5f7fa6b1, 0x086b37ae, 0xc27a2792, 0xb3d222ea, 0x761ec95a, 0x7909efe4, 0x47876c05
.word 0x5df710f5, 0x25450626, 0x1e92f075, 0x0dd3b125, 0x75d99135, 0xf6680c5d, 0x6c29a665, 0x78b9e471
.word 0x119f3afc, 0x1f000d2d, 0x067730d6, 0x1d4271d1, 0x10ab8f08, 0x8b7d0bde, 0x178282fc, 0x86b95560
.word 0xd2fa3b08, 0x38287a5c, 0xdb6a9292, 0x069a7cc3, 0x2f0beb62, 0x694245f7, 0xd7608575, 0x74efc411
.word 0x280a65f0, 0xa4f4e984, 0x58de44a7, 0x36c01361, 0x70bf0bcd, 0x7b20a9b6, 0xfb49a83d, 0xb757f040
.word 0x08a034e2, 0xe97f3891, 0xd7d2d928, 0x00b0c872, 0xf54c16c5, 0xc2570d24, 0xdb317f0c, 0x95f8d23c
.word 0x6e7520d9, 0x1313b30d, 0xcfda184a, 0xa7080e31, 0xfa187c38, 0x2bab6097, 0x362e18d6, 0xd74609ed
.word 0xce5ab745, 0x8d649c53, 0x9e762a66, 0x912e38c9, 0xa00d3795, 0xdade7c9e, 0x9d6c1469, 0xff170d0a
.word 0x8826dc98, 0xbab552c3, 0x504644b8, 0x55a5fdd8, 0x322e33ec, 0x0b4e8ff6, 0xcd2d02ac, 0xae159924
.word 0x6806964f, 0xb30cfd37, 0xffa5c8f6, 0x840891f0, 0xf73dccb6, 0xd683fba5, 0x6fca61f8, 0xa57b7fbb
.word 0x69529722, 0x29e13619, 0xb394c121, 0xc86648fd, 0x0412d900, 0xe0b9010b, 0xbd6d2bfc, 0x304e3cbc
.word 0xdb37c1c6, 0x771ae58b, 0xb3264ffc, 0x07038443, 0xb9f781e6, 0xb322e00e, 0xe83ddda6, 0xde75921b
.word 0xdc7e548c, 0xad8caa42, 0x9255aae7, 0x6d1dc593, 0xca99cf08, 0xfe8d3728, 0x573db63b, 0x88719ad9
.word 0x106320a3, 0x74d47ad0, 0x25ea0a5d, 0x83866eca, 0x3c578bfa, 0x520c769e, 0x5bf8578b, 0x83693657
.word 0x13aa0da5, 0xbc5fa8ef, 0x1098e9d4, 0xfbca9e6a, 0x1917f933, 0xe83c5d0d, 0xfe9e4241, 0x03057419
.word 0x34c58392, 0x7949980c, 0xf09bc657, 0xe701c9b2, 0x1a251ddf, 0x22ef02cb, 0x8f6187a7, 0x480500f0
.word 0xb1dead09, 0x638f454f, 0x86ba6403, 0xf10bb845, 0xb34fb649, 0x829a69bc, 0x25d13b3c, 0x5c51103e
.word 0xa7e9986b, 0x49ac55b7, 0x422f03a7, 0x20ad9092, 0x5557601b, 0xd2b69307, 0xbd270fb7, 0x47cda661
.word 0x2ff4f695, 0xcafeae7d, 0x87b1da07, 0xe08aca36, 0x77cbd485, 0xbb90058f, 0x2673e2e5, 0x0ec5f3b0
.word 0x940c575d, 0x9b9fbb3d, 0x02e45535, 0x40a2abd9, 0x890fbebe, 0x6f97a51b, 0x0f4df634, 0x01b0f82c
.word 0xd3f158dc, 0x88e49631, 0x952452c9, 0x9ba41ab6, 0x40dcb15d, 0xe6d47c3e, 0x98719c23, 0xc84de88f
.word 0xb2a5561a, 0xbe188b52, 0x33df9661, 0x20b0059e, 0xb7a6a4ee, 0xb339c4dd, 0x5ac1bacf, 0xd056cb98
.word 0x0578b060, 0x7a700fd8, 0xc97b8c4e, 0x0da99b7b, 0x72d0e620, 0xc9fa7cf9, 0x0d672ff7, 0x1945deee
.word 0xef9605c9, 0xbf21af69, 0xe94b9698, 0x9dbb7dd1, 0x28e92303, 0x9b26f8ea, 0x4d574dad, 0x7f1749e6
.word 0xd9a38255, 0xf1da352c, 0xa1c8c3e8, 0xc69dcecd, 0xf4fdbf9b, 0xdbe8f09a, 0xdcfeff7c, 0xeb732f3b
.word 0xbd84165e, 0xe9a27f1e, 0x09e52241, 0x66405d68, 0x0ca24dbb, 0x3bd91767, 0xab06795f, 0xdea02ed3
.word 0x34ee17d1, 0xabfd3446, 0xca3f6acf, 0xa8ec7ad7, 0x2f96a9f7, 0x784d57ff, 0x08013def, 0x4c4467b9
.word 0xcacd332c, 0x5f3556a5, 0x4859fcb1, 0x2ab38bd2, 0x8a5bc29e, 0xb1529e84, 0x2ffa9f08, 0x5ea50a1a
.word 0xefc0ff97, 0x3dd5a4d6, 0x3241d642, 0x1463c146, 0x2a462295, 0xcc42a4c3, 0x104f3ab4, 0xad6fd7c2
.word 0x280dc57e, 0x5e41e5ca, 0xc7dcfdb7, 0x581ebcb7, 0x824df028, 0xfda319bf, 0x91ff25f9, 0xc2f60e29
.word 0xfeb0ffa2, 0x3793d0c7, 0x0191260f, 0x981169dc, 0x66cc0e12, 0x2fb5030e, 0x3a610366, 0xa06171b9
.word 0xf4852828, 0x4c23e8c1, 0xcfdc895a, 0x5541557e, 0x5af42502, 0x51025143, 0xd2b3ec50, 0x6161170f
.word 0x5b9b18c5, 0x6cb2f58c, 0xa185d24a, 0x75fdcfcc, 0xc8206c93, 0xf8c55d06, 0xb599a139, 0x0cdcf7a0
.word 0xa91bf70d, 0xfdd00089, 0x66a3b507, 0xaa8e44cf, 0xfc2d4dec, 0xd46a8e15, 0x4830a5c7, 0x5e2c30b9
.word 0x98533c77, 0xaa4da08e, 0x8e9ed0e8, 0x346058a9, 0xd97882b1, 0x7cf4c37d, 0xe36caf9c, 0x42b4ad0e
.word 0x1ba7aafc, 0xd24ba746, 0xc3a21686, 0x1b191ab0, 0xe1f8b393, 0x1a9dd0b8, 0x7c06699d, 0x89f64dce
.word 0xc6f6a282, 0xc8ad12a9, 0xebcbbeea, 0xd8cb2c49, 0xd8930c1e, 0xf71cfa97, 0x728532ad, 0xfd7a606d
.word 0x4ab670d9, 0xd0b2667b, 0x15f67ec3, 0xdbab9f0f, 0x1cce950f, 0xdba8ecc4, 0x5fec6483, 0xcdccbd47
.word 0xceafe21c, 0xa98c27d9, 0x82ad4871, 0xf804ab55, 0xb2afaa4a, 0xb344db0c, 0xc269c09d, 0x9924e282
.word 0x49844278, 0xb9d60529, 0xf6f8a986, 0xac3552e6, 0x4d7ecd4c, 0xbe3009dc, 0xf6fe6e58, 0x2b144eee
.word 0xc818b4bf, 0xb355328a, 0x053ad3cf, 0xedb98c34, 0x8905f27a, 0xcee160f2, 0x2268ea51, 0x499f64a8
.word 0x2fc35295, 0x38e53188, 0xfeb600a1, 0xe4f37b6f, 0xf9df3254, 0xad30be49, 0x8829fd41, 0x0a9e7da3
.word 0x7245dd1a, 0x743cc89a, 0x189b40e0, 0x5a3714f4, 0xe0a226cd, 0xf9dd18c7, 0x37ddf9d6, 0x42d86d90
.word 0x37382a9c, 0x5235ea43, 0x467e2766, 0x0630964f, 0x1ddaec21, 0xefb1e498, 0x0c9c4b63, 0x24d1d049
.word 0xd3cd4e94, 0x0545684a, 0xd2d3bd65, 0xa94e2887, 0xedac00f5, 0xd0e24a4c, 0x977dd89a, 0xdad0dd40
.word 0x83c5d6ab, 0x746349dd, 0xbb5c8d3e, 0xd88bc91a, 0xa916cc88, 0x0a93fca7, 0x0aadf3d1, 0x9c346797
.word 0x163aa6d1, 0x8be855d5, 0xb6082af7, 0x5cc546aa, 0x4b91074a, 0xdf8636a7, 0xde30bfd4, 0xf03f2e9a
.word 0x648046a4, 0x5793fe7a, 0x73a0f771, 0xa526baf0, 0x0d383cba, 0xb1cb41ad, 0x60cc311d, 0xa06062ac
.word 0xff009f70, 0xadfe9531, 0xfca1595c, 0x31883dda, 0x6a754aa6, 0xbb3744af, 0xab9aa600, 0x3636cc4d
.word 0xaa73d044, 0x16d104b1, 0xfe7c420b, 0xa4d739c5, 0x29783373, 0x864bdbe3, 0x66b39825, 0x73b0548f
.word 0xc2e98997, 0x6b3be94c, 0x2244bb7e, 0x67eb81c1, 0x97d497c5, 0x88f2e903, 0x9827ae87, 0xad8044b5
.word 0x11787227, 0x97583f30, 0x85ccefcc, 0x75e73731, 0xdadf831b, 0xc8f7b19d, 0x729a5539, 0x442ce89e
.word 0xc949763c, 0x6e8efea1, 0xf991d0be, 0xb0d5618a, 0x8f8fc51b, 0x01927432, 0x9eed55db, 0x1e4e4c83
.word 0x4a0477b8, 0xb6a41c0f, 0xdd873c56, 0x929bb876, 0x687fbe03, 0x099c5434, 0x06b553cf, 0x9e13a440
.word 0xf34f1f92, 0xdbfd1e80, 0x35650926, 0x46909e80
.section .region_1,"aw",@progbits;
region_1:
.word 0x688d0bff, 0xee46eaff, 0x7d7cdf23, 0x54296972, 0x6257fab3, 0x759ab890, 0x2629456c, 0xb506616d
.word 0x4d1e4da8, 0xfc79d1a2, 0x0aa10920, 0xb84fe15e, 0x7a22084c, 0x0d8e812c, 0x222d590f, 0xf15c1741
.word 0x26e89ca3, 0xff19f264, 0xf4177524, 0x22d3dcea, 0xe0500de0, 0x0ff84d85, 0xad5d88a1, 0x35d9cb5a
.word 0x8fb3c070, 0x082c9f23, 0xf163a2b1, 0xcb524b7a, 0x14747dc0, 0xa07dd5f0, 0x90463641, 0x2617803b
.word 0x8e4cb412, 0x12b49881, 0x26da08bf, 0xe10c600c, 0x06a5d494, 0x8053dc75, 0x1f3bef49, 0xd79d1eb7
.word 0x8200858e, 0x763c862a, 0x32af409b, 0x87fe0e1f, 0x8eaf6a00, 0x5a08ea89, 0xd55748fb, 0x4c81487d
.word 0xcad08205, 0x24974369, 0xf085d158, 0xa02af9bc, 0xe2799816, 0x5a82fd30, 0x7f4bcdac, 0x38013774
.word 0x211eb02b, 0xfa97c431, 0x425e8280, 0x24da666b, 0xd166bdd2, 0xfac6984d, 0xb95e721c, 0x1099162d
.word 0x9a15ac6c, 0x9687b338, 0xf4667a63, 0x8d2a71ce, 0x94604e5d, 0x3944b63b, 0x7152c595, 0x83d771c7
.word 0x45addb71, 0xdce80330, 0xee6cb4a9, 0x3ef2e8ef, 0x5a6f1659, 0x808dac84, 0x0f2e386d, 0x16bc185d
.word 0xd7826a60, 0x3d107a39, 0x2f57cafb, 0xe22c232d, 0xf09f29a3, 0xc0b09abf, 0xfc408e3d, 0x6c0263ba
.word 0x4689c86d, 0xa1790923, 0x4aabf969, 0xf416dfb4, 0xc209e57c, 0xca66e9eb, 0xad0a8fbf, 0x6cac13a9
.word 0xf6314607, 0x96251fc1, 0xd7b370c2, 0x4299652d, 0x6591505c, 0x05fb13c3, 0xb86a30dd, 0xe333a856
.word 0xeeacb8d3, 0x4a45a441, 0xbd8ba17d, 0xc09a3532, 0x4d7bea2e, 0x8ce5c7b0, 0x6698e6b1, 0xdb7a4eeb
.word 0x7a77ab74, 0x4507296f, 0x80e18230, 0x76526290, 0x80333f37, 0x5d9faefb, 0x1fe725e2, 0xdf3bdd1d
.word 0x864a1144, 0xf43eafbf, 0x1ef93607, 0x54e8de4b, 0x0868656c, 0xc01f9c33, 0x763a8bc5, 0xe120e6b0
.word 0x299caeae, 0xc9148264, 0xb9ee43e3, 0xf816baac, 0x5daaf73d, 0x224337d1, 0xfb39093f, 0x9548ba3b
.word 0x9e3f14b7, 0x8ba961cd, 0x105e11bd, 0x924c7dc1, 0x068a1b94, 0x8c8083dd, 0x0c7abb58, 0x167c7c2c
.word 0x1056328c, 0x2e4d9293, 0x3a4a27f8, 0x3893ea87, 0x097a522b, 0xa08d273c, 0x3fee76ce, 0xcc4186d0
.word 0xa2b9e3e6, 0x8c165428, 0xadfae108, 0x2c018a0e, 0x09403b4c, 0x63458d9d, 0xccee4663, 0x7c0cedfd
.word 0x4f0db36d, 0xb46822b2, 0x2b057393, 0x64704694, 0x75eea230, 0xfe3ce61c, 0x84832e1b, 0xb5d2feaa
.word 0x23fca014, 0xaa92aade, 0xe0693c1a, 0xd109ebd1, 0x6b2e462a, 0x7c4ceab8, 0xa4cc5ad5, 0xb7911a55
.word 0xc3b7ea1e, 0xac311491, 0x291a2110, 0x8f67d03d, 0x67c0d39b, 0x616e13c8, 0x38dadbf5, 0x9b31635a
.word 0xf731db9a, 0x42823e68, 0xe38722c0, 0xfd78a8a4, 0x64841b79, 0xa045cafb, 0xc0f8a2fc, 0x115285f4
.word 0x52c08860, 0x56168fec, 0x54da3530, 0x5d894cab, 0x1b900e32, 0xde4f2962, 0x40cf5e01, 0xabc69e4b
.word 0x4581d4fb, 0x654b9214, 0x0a3b8576, 0xb34c7035, 0x6e215d7d, 0xd0641b55, 0xa45c53d9, 0x35f90fdd
.word 0x9b1025d5, 0x813830a8, 0xb2a07bb2, 0xe4799d1e, 0xd9f88e8b, 0xae2f0e1c, 0xb4cc259d, 0xb7711f7b
.word 0x52f3fc71, 0x31ac86b0, 0xdcc3ad0c, 0x2bc269dd, 0xda109e6c, 0x9c6491b6, 0x2fa94b41, 0xbc9bb5ca
.word 0x7368fd84, 0xbc596966, 0x487d29f9, 0x53406ed9, 0x93e75d2a, 0xe7a8c606, 0xd2421efb, 0xba54e4c0
.word 0x2e7910f1, 0x7e4c33c7, 0x2ff07e41, 0x29c24ae8, 0x454577b7, 0x2a862835, 0xde53ea09, 0x26867430
.word 0x4438d55e, 0xdab2b91f, 0x9809431d, 0x0214f6f2, 0xde380296, 0x36ccc39a, 0x0000001d, 0xdb3ca86a
.word 0xe6e8635f, 0x2577dbe4, 0xea17b4ce, 0xc66903e6, 0x8825cd96, 0x33511e7e, 0xd4022e49, 0x670e9405
.word 0x016df3ba, 0xa2df09c8, 0xc0671bb4, 0xb198cfa2, 0xe9abdb0a, 0x4a61f241, 0x8b271c20, 0x5ecf555a
.word 0xa6850128, 0xc1759482, 0xe6bb3bdd, 0x07744ae5, 0xbf9a1e6e, 0x81b6d437, 0x9ccf3c64, 0x4c81ba30
.word 0x786fd476, 0xdd6b96e2, 0x63223e7e, 0xecfd3689, 0x05097959, 0x8727fc97, 0x751cd494, 0x68add946
.word 0x7cc1e503, 0x9382067c, 0x80d087c7, 0xd04a5f54, 0x86bfc5b1, 0x1f5404a9, 0x9aaffe72, 0x4ef0964e
.word 0x4f80d29f, 0x5605341d, 0x349f1e6d, 0xd93177ce, 0xfb9dc3ce, 0x0759f5f2, 0x15eb3ab2, 0xf0fb69d8
.word 0x99e69999, 0x06041d02, 0xe8f34666, 0xa9042a70, 0x2188e87e, 0x238b755b, 0x6253f86b, 0xee60d427
.word 0x830cd40f, 0x7ed46167, 0x625fa1bf, 0x67fa987a, 0x7d9d6d4b, 0x12d501b6, 0x4ffbb283, 0x12a6b261
.word 0xadd72524, 0x5ed31752, 0x71f5cc56, 0x5282e7d0, 0xcf1da91f, 0x94b09b78, 0xe4cc09d8, 0x0efbacbe
.word 0x25ce6705, 0x661216db, 0x52ea3acb, 0xe8130023, 0x6492c44c, 0xae6a6a1b, 0xc3715b3f, 0xea9df068
.word 0xf30f6088, 0xf186114e, 0x4a6731ec, 0x94af637b, 0x35c0649b, 0x9fb3a49a, 0x2be58aad, 0xa6b4f4b8
.word 0x3ee1d58a, 0xf90f21ee, 0xc36e92f5, 0x000526f4, 0xc9185af4, 0x14363ee9, 0xc520de67, 0x977752b6
.word 0xdd9dc052, 0x5e3478ce, 0xdb15d195, 0xaf74c503, 0x20b0fef2, 0xf0e5b573, 0xf68a0d9b, 0x8e9ba9a9
.word 0x3660c9f5, 0x6cb41e3b, 0x60eabd2f, 0xa9435e47, 0x64275809, 0x0052442c, 0xab699ed6, 0x044c5af7
.word 0xc9cc0655, 0xd8b21f6e, 0x40107a48, 0x7519f17f, 0x2e930f5d, 0x5b98e500, 0xd7dae76b, 0x5014891b
.word 0x1f1204c6, 0x81e9a5db, 0x2538f415, 0xfb3b7db5, 0xa37f96e9, 0x48dd032b, 0x26fb0091, 0x56b7243e
.word 0x7332d85b, 0x325d65af, 0x5c351cef, 0xab4dea94, 0x1a011238, 0xaa5142c1, 0xbe60992e, 0x6bcb5317
.word 0x8115476f, 0x521235bf, 0xbf345bfa, 0xd803689e, 0x3f21f8a2, 0x9b630210, 0x7d5b231c, 0x153519ab
.word 0xe465e1f4, 0x8b48986a, 0xdb2a85ef, 0x5171220d, 0xd2349c6e, 0x3aa294b3, 0x24823353, 0xa999d365
.word 0x87ee00ee, 0xdf80fb23, 0x31be8157, 0xb4201eef, 0x3d613437, 0x45488508, 0x5c991ceb, 0x507bb25e
.word 0xb0f7082d, 0x6dbda91f, 0x7ec8ab38, 0xddbe6303, 0x8a9b9933, 0x71d52f57, 0xb9669d09, 0x7c5c6729
.word 0xc678c794, 0xa1de562c, 0x8ced4aaf, 0x4391895b, 0x3d71dc9c, 0xc67d29f0, 0x11048c34, 0x51b77fc4
.word 0x65cd7057, 0xe2047461, 0xff34d847, 0xc415ebf1, 0x63172abe, 0x374ad328, 0xf5599dfe, 0xa0fd99bc
.word 0x11faeb2b, 0xc9bd6d28, 0x1f2d479e, 0x558b6bb7, 0xabf13e9b, 0x6a7ff2e7, 0x68c20e4f, 0x502de203
.word 0xdd369101, 0xde559c8f, 0xb68c80db, 0x55d46608, 0x661d83d0, 0x26551e4e, 0xe2435e32, 0xcb5b5573
.word 0x5bfaf1d3, 0xcddf7730, 0x5ec30aa7, 0xd16cefc5, 0x8152d9c6, 0x1775793a, 0x941e8cf8, 0x9a975107
.word 0xa8630309, 0xfbbfc909, 0x98ca3d06, 0x67205453, 0x174f6ac6, 0x80ef4b6b, 0x42139464, 0x4800fe6f
.word 0x2c2f2868, 0x80daf5b7, 0x97ef36a0, 0xbe46c341, 0xcf0a3a89, 0x7fe3ad11, 0x30222d90, 0x5e2b980e
.word 0x7f3748d9, 0xe927eda0, 0x16021b9f, 0x99a615e4, 0x4b71ba5a, 0x9f94295f, 0x0c1655fa, 0xecfee198
.word 0xda0f6e86, 0x65f4358f, 0x6fe2f039, 0x01ce8b5f, 0x0a21f5ee, 0xe98a2c04, 0x24b57efe, 0x4fd4e4f5
.word 0xcbc73ca0, 0x349d06ed, 0xf529a691, 0xa94664f0, 0x3e6afa0a, 0xc1f06e38, 0x3eb8db99, 0x906e3122
.word 0xeb13d863, 0x4be55193, 0xdfe6a5fa, 0xd9499eb3
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x2, x30, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x5, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x5, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x5, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x5, x14, ecall_handler
                  li x14, 0x1
                  beq x5, x14, instr_fault_handler
                  li x14, 0x5
                  beq x5, x14, load_fault_handler
                  li x14, 0x7
                  beq x5, x14, store_fault_handler
                  li x14, 0xc
                  beq x5, x14, pt_fault_handler
                  li x14, 0xd
                  beq x5, x14, pt_fault_handler
                  li x14, 0xf
                  beq x5, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

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
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x30, x2, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x2, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x2, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x30, x2, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x30, x2, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x30, x2, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
