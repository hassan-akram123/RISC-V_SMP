.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0xa
                  li x1, 0xa
                  li x2, 0x0
                  li x3, 0xe
                  li x5, 0xa
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xf09f4e8d
                  li x10, 0x2
                  li x11, 0x7d536e8f
                  li x12, 0xb
                  li x13, 0xfb0baecb
                  li x14, 0x8c65939e
                  li x15, 0xa
                  li x16, 0xfa72bd99
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x2
                  li x21, 0xf14d0266
                  li x22, 0xff1acc50
                  li x23, 0xf6a7153a
                  li x24, 0xa6a51511
                  li x25, 0xf05f091e
                  li x26, 0xf56d5b46
                  li x27, 0xb
                  li x28, 0xf4d9112c
                  li x29, 0x5d54a7cf
                  li x30, 0x0
                  li x31, 0x80000000
                  la x4, user_stack_end
main:             la           ra, region_0+624 #start riscv_load_store_rand_instr_stream_1
                  lbu          a4, -62(ra)
                  lb           a0, 25(ra)
                  lh           s5, -58(ra)
                  lbu          s3, -63(ra)
                  lhu          sp, 36(ra)
                  slt          s8, t0, s5
                  lb           t0, -51(ra)
                  add          t4, s4, s9
                  srai         s11, a2, 13
                  lb           zero, -5(ra)
                  or           t2, s8, s6
                  sb           t1, 12(ra)
                  sb           s2, 11(ra)
                  sll          a0, a2, s5
                  lhu          a1, -10(ra)
                  nop
                  sra          sp, a0, t6
                  sb           s1, 38(ra)
                  lb           s10, -21(ra)
                  slti         s3, a7, -788
                  auipc        t6, 591022
                  xori         s7, ra, 1782
                  lhu          a1, -50(ra)
                  add          s2, a6, t3
                  sub          zero, s10, t3
                  and          a1, t0, a4
                  srl          s5, t2, t5
                  ori          s5, s8, 140
                  sltu         s10, t4, sp
                  sll          a7, sp, a2
                  sub          gp, s0, zero
                  sub          s8, tp, s2
                  slt          s4, t2, t5
                  sb           s8, 23(ra)
                  nop
                  sll          s3, t4, s11
                  sb           s1, 61(ra)
                  sb           s6, -15(ra)
                  lb           s10, -46(ra)
                  lui          a4, 644074
                  srl          s11, s11, gp
                  and          s8, s10, s8
                  andi         a4, s0, -901
                  sb           s10, 13(ra) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+205 #start riscv_load_store_hazard_instr_stream_2
                  lbu          sp, 281(s6)
                  lw           t5, 823(s6)
                  slli         t0, t3, 19
                  and          gp, a2, s0
                  lh           s8, 1765(s6)
                  sh           s11, 1497(s6)
                  sh           t4, 1497(s6)
                  lh           s8, 1497(s6)
                  xor          s0, t4, t4
                  and          a1, t6, tp
                  sb           a0, 654(s6)
                  lbu          s3, 858(s6)
                  lhu          a3, 369(s6)
                  sb           gp, 112(s6)
                  lbu          a0, 1166(s6)
                  srai         s4, ra, 23
                  lhu          t2, 849(s6)
                  sub          t5, s1, a7
                  sll          t0, s6, s7
                  sb           t1, -7(s6)
                  lb           sp, 334(s6)
                  sb           s10, 334(s6)
                  lbu          s8, 334(s6)
                  sb           s8, 334(s6)
                  sb           t3, 334(s6) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1715 #start riscv_load_store_rand_instr_stream_3
                  lbu          t5, -242(sp)
                  lbu          s2, -140(sp)
                  lb           s11, -1582(sp)
                  lb           a0, -1528(sp)
                  or           a6, s10, s1
                  nop
                  lui          s9, 248810
                  srl          s2, s6, s6
                  and          t1, gp, t2
                  lb           a0, -882(sp)
                  nop
                  lb           s2, -1712(sp)
                  lh           t4, -369(sp)
                  lb           s8, -1024(sp)
                  sb           t2, 55(sp)
                  srl          a1, ra, tp
                  addi         s7, t3, -1532
                  slt          a0, s0, a3
                  sltu         a2, t2, a1
                  lui          t6, 517611
                  sb           t4, -770(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s2, region_1+256 #start riscv_load_store_rand_instr_stream_4
                  auipc        sp, 890366
                  lbu          a3, -14(s2)
                  lbu          a3, -15(s2)
                  lb           t5, -1(s2)
                  ori          s10, a3, -1565
                  sh           s0, -2(s2)
                  addi         ra, tp, 1007
                  sb           a1, 15(s2)
                  sb           a2, 1(s2)
                  lb           t4, 14(s2)
                  xor          s5, s2, s9
                  xori         t5, s1, 705
                  srai         t2, t5, 0
                  lbu          t5, 11(s2)
                  sltiu        s8, t6, -289
                  slt          a7, a7, t0
                  lhu          s0, 16(s2)
                  lbu          s5, -12(s2)
                  lhu          s8, 8(s2)
                  slli         a0, s7, 25
                  lbu          s3, -3(s2)
                  lbu          t4, 6(s2)
                  lhu          a7, 2(s2)
                  lbu          zero, -7(s2)
                  lbu          a6, 14(s2)
                  xor          s11, s1, s0
                  lb           s5, -4(s2)
                  lb           t2, -5(s2)
                  and          t0, s11, tp
                  lhu          s8, 4(s2)
                  sb           t5, -2(s2)
                  sltiu        s5, a2, -1438
                  lb           a6, 2(s2)
                  lb           s4, -9(s2) #end riscv_load_store_rand_instr_stream_4
                  la           a5, region_1+1012 #start load_store_instr_stream_2
                  la           s0, region_1+173 #start load_store_instr_stream_1
                  la           t4, region_1+1835 #start load_store_instr_stream_0
                  la           s11, region_1+1764 #start load_store_instr_stream_3
                  lb           t5, 60(t4)
                  lb           a2, -6(s0)
                  lb           a6, 698(a5)
                  lb           s4, -39(s11)
                  lb           t6, 971(a5)
                  lb           t6, 8(s0)
                  lb           a7, -579(a5)
                  lbu          t0, 406(a5)
                  lbu          t5, 3(s11)
                  lb           t5, 9(s0)
                  lh           t6, -201(t4)
                  lbu          a6, -14(s0)
                  lbu          s6, -3(s11)
                  lbu          a6, 100(t4)
                  lb           a2, -350(t4)
                  lb           sp, -1575(t4)
                  lh           a3, 22(s11)
                  sb           t0, -936(a5)
                  lbu          a3, -5(s0)
                  lh           a4, 50(s11)
                  lbu          t2, 625(a5)
                  lhu          t2, -1621(t4)
                  sw           s11, -92(a5)
                  sb           s2, 53(a5)
                  sb           s7, 10(s0)
                  sb           s9, 6(s0)
                  lb           a6, -61(s11)
                  lbu          t2, -132(t4)
                  lbu          s10, 43(s11)
                  sb           a5, 2(s11)
                  sh           s6, -234(a5) #end load_store_instr_stream_2
                  lb           s5, -6(s0) #end load_store_instr_stream_1
                  lbu          a7, -1388(t4)
                  sb           t6, 6(s11) #end load_store_instr_stream_3
                  lhu          s7, -171(t4) #end load_store_instr_stream_0
                  la           s4, region_0+1419 #start load_store_instr_stream_0
                  la           s2, region_0+559 #start load_store_instr_stream_1
                  sb           a5, -368(s2)
                  lb           gp, 0(s4)
                  lb           s6, 286(s2)
                  lbu          s6, -10(s4)
                  lbu          t5, 310(s2)
                  sb           zero, 16(s4)
                  lbu          t2, -16(s4)
                  lbu          s11, 4(s4)
                  lbu          a5, -347(s2)
                  lbu          s7, 509(s2)
                  lb           t5, -9(s4)
                  lbu          a3, -538(s2) #end load_store_instr_stream_1
                  lb           gp, -5(s4)
                  sb           s5, -8(s4) #end load_store_instr_stream_0
                  la           s11, region_1+1204 #start riscv_load_store_hazard_instr_stream_3
                  sw           s5, 8(s11)
                  lb           a0, 11(s11)
                  sb           s1, 11(s11)
                  andi         a1, s2, -1354
                  sb           s0, 11(s11)
                  lb           t0, 11(s11)
                  lw           t2, -16(s11)
                  slt          s5, s3, s3
                  sh           s11, 6(s11)
                  lh           s0, 6(s11)
                  lb           s3, -7(s11)
                  sb           s6, -7(s11)
                  sb           t3, -7(s11)
                  lhu          s4, 8(s11)
                  sw           t6, 8(s11)
                  sltu         s10, gp, s10
                  lb           a3, -4(s11)
                  lhu          s6, -8(s11)
                  lhu          s5, -8(s11)
                  sh           t2, -14(s11) #end riscv_load_store_hazard_instr_stream_3
                  la           a4, region_0+285 #start riscv_load_store_rand_instr_stream_0
                  srai         a2, s5, 17
                  andi         s8, t6, -1765
                  xori         s8, s5, -1833
                  srl          t4, s6, zero
                  srai         a3, tp, 22
                  lb           s8, 37(a4)
                  lh           sp, -35(a4)
                  sra          s4, s4, s3
                  lbu          s0, 11(a4)
                  add          t5, s5, gp
                  slli         t5, a2, 13
                  addi         s6, tp, -174
                  lb           s10, 57(a4)
                  sra          t1, t1, sp
                  sw           sp, -29(a4)
                  lb           t2, 46(a4)
                  lh           s10, 61(a4)
                  sh           t1, -43(a4)
                  sw           t3, 59(a4)
                  lh           sp, -51(a4)
                  lbu          t2, -2(a4)
                  lbu          s5, 37(a4)
                  lw           t6, -33(a4)
                  slli         zero, zero, 13
                  sb           s7, 32(a4)
                  sub          s3, s5, s8
                  lbu          s5, -56(a4)
                  lbu          s7, -12(a4)
                  lbu          s5, -37(a4)
                  lb           sp, 23(a4)
                  xori         a6, s0, 1204
                  lbu          a0, -54(a4)
                  slli         t4, s8, 1
                  srli         s2, t4, 17
                  lbu          ra, 61(a4)
                  sh           a2, -17(a4)
                  slt          t1, ra, a0
                  slti         s4, s3, 324
                  lb           s5, 2(a4)
                  srai         s3, s7, 2
                  lb           t0, 44(a4)
                  lbu          s8, 1(a4)
                  sb           zero, -62(a4)
                  sb           gp, -47(a4)
                  lb           zero, 39(a4)
                  lb           t2, -21(a4)
                  lbu          s11, -22(a4) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+553 #start riscv_load_store_hazard_instr_stream_4
                  lh           s11, 9(s7)
                  lhu          a6, -15(s7)
                  lh           a4, -15(s7)
                  nop
                  sh           s9, -15(s7)
                  sra          s4, zero, s4
                  lbu          s3, -1(s7)
                  sb           s2, -6(s7)
                  lb           a7, -1(s7)
                  lbu          s4, -10(s7)
                  sb           s11, -2(s7)
                  sb           s5, -14(s7)
                  sra          a7, t1, s0
                  slt          a6, s8, s4
                  lb           s5, -12(s7)
                  lb           s10, -12(s7)
                  lbu          a3, -5(s7)
                  sltu         a1, s4, a4
                  lb           gp, 6(s7)
                  lh           t5, 9(s7)
                  andi         s10, t5, 274
                  sh           a3, 9(s7)
                  lh           s11, 9(s7)
                  lbu          a5, 8(s7) #end riscv_load_store_hazard_instr_stream_4
                  la           a3, region_1+687 #start riscv_load_store_rand_instr_stream_2
                  sb           s8, -45(a3)
                  srl          t4, s1, a2
                  lbu          s3, 0(a3)
                  or           s9, a2, t0
                  lh           gp, 19(a3)
                  sw           t2, -55(a3)
                  and          s0, t6, s4
                  lbu          s5, 10(a3)
                  xor          s11, t4, a6
                  sll          a5, s11, s9
                  nop
                  sltu         s7, t2, tp
                  lbu          s0, 10(a3)
                  sra          zero, t3, s5
                  xor          ra, t6, t5
                  nop
                  srl          s3, s6, a0
                  srl          s3, s10, s5
                  sb           s9, -38(a3)
                  sra          s4, s11, sp
                  lbu          s7, -54(a3)
                  andi         s10, a0, -516
                  lb           s5, 20(a3)
                  andi         s10, a1, -73
                  sltiu        s4, s1, -1757
                  ori          t2, a0, 1193
                  slli         s5, a2, 23
                  srli         s5, t0, 15
                  xor          a6, s5, t4
                  sh           a0, -43(a3)
                  addi         s4, s4, 1671
                  lhu          s11, -41(a3)
                  sb           zero, 46(a3)
                  sra          s0, s10, s2
                  slli         a4, s8, 3
                  sb           s2, 26(a3)
                  andi         s9, s3, 1944
                  sh           s4, 33(a3) #end riscv_load_store_rand_instr_stream_2
                  la           ra, region_0+114 #start load_store_instr_stream_0
                  la           s5, region_0+1489 #start load_store_instr_stream_1
                  lb           a2, 27(ra)
                  sh           zero, 349(s5)
                  sb           t2, 11(ra)
                  sb           s7, -131(s5)
                  sb           t4, -103(ra)
                  lb           a5, -544(s5)
                  lb           s11, 49(ra)
                  lb           s6, 169(ra)
                  sh           s5, -365(s5)
                  sb           t5, -144(s5)
                  sb           a0, 255(s5)
                  lbu          s0, 219(ra)
                  lbu          t0, 294(s5) #end load_store_instr_stream_1
                  lbu          t2, -73(ra) #end load_store_instr_stream_0
                  la           t2, region_1+1423 #start load_store_instr_stream_1
                  lb           s10, -208(t2)
                  la           a1, region_1+814 #start load_store_instr_stream_0
                  lbu          s4, -32(t2)
                  sb           t4, -14(t2)
                  sb           tp, 11(a1)
                  sh           zero, 20(a1)
                  lbu          s2, -255(t2)
                  lb           t4, -46(a1)
                  lhu          s0, -219(t2)
                  lb           s7, 5(a1)
                  lbu          s2, -21(a1)
                  lbu          s8, 27(a1)
                  lh           s3, 52(a1)
                  lbu          t1, -246(t2) #end load_store_instr_stream_1
                  lb           a2, 60(a1) #end load_store_instr_stream_0
                  la           sp, region_0+920 #start riscv_load_store_hazard_instr_stream_0
                  sra          t5, a2, a5
                  lbu          s0, 53(sp)
                  lbu          gp, 59(sp)
                  lhu          a2, 160(sp)
                  sh           s4, 160(sp)
                  sh           s6, -42(sp)
                  lhu          s4, 104(sp)
                  sh           gp, 104(sp)
                  sb           s8, -73(sp)
                  lbu          s8, -73(sp)
                  lb           t6, 248(sp)
                  lb           a0, 2(sp)
                  add          t6, ra, zero
                  add          s0, s6, t1
                  sb           s8, -8(sp)
                  lhu          ra, -8(sp)
                  lh           s2, -8(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_0+717 #start load_store_instr_stream_3
                  la           t1, region_0+1564 #start load_store_instr_stream_4
                  la           s8, region_0+1983 #start load_store_instr_stream_2
                  lb           s9, 13(t1)
                  la           t2, region_0+1854 #start load_store_instr_stream_0
                  lw           a6, 12(t1)
                  la           a1, region_0+704 #start load_store_instr_stream_1
                  lhu          s2, -31(s8)
                  sb           t0, 8(s3)
                  sb           t3, 7(t1)
                  lbu          a0, -410(a1)
                  sb           gp, -376(t2)
                  sh           s11, -10(t1)
                  lhu          s5, -15(s3)
                  lb           s11, 1249(a1)
                  sw           ra, 38(t2)
                  lb           a4, 405(a1)
                  sb           s9, -22(s8)
                  lbu          t6, -50(s8)
                  lbu          a3, -5(t1)
                  lhu          s2, -1(s3)
                  sh           zero, -1420(t2)
                  lb           s5, 1(t1)
                  lbu          sp, 14(s3)
                  lb           a3, 253(a1)
                  lbu          a2, 11(t1)
                  lb           t5, -4(s3)
                  lb           a4, -60(s8)
                  sh           a3, -1802(t2)
                  lbu          ra, 29(a1) #end load_store_instr_stream_1
                  sb           tp, -55(s8)
                  lbu          a0, -9(t1) #end load_store_instr_stream_4
                  sb           s4, -16(s3) #end load_store_instr_stream_3
                  lb           s11, -27(s8) #end load_store_instr_stream_2
                  lb           a4, -1201(t2) #end load_store_instr_stream_0
                  sub          a3, s4, a5
                  bgeu         s2, t4, 6f
                  slt          gp, s11, s4
                  or           s11, t5, sp
                  ori          s0, t1, 214
                  sub          a0, s3, zero
6:                xor          t1, s1, s10
                  la           a0, sub_1
                  xor          t5, s8, s9
                  srl          s2, ra, s0
                  addi         a0, a0, -872
                  srai         a6, gp, 22
                  slli         ra, gp, 15
                  add          s2, s8, s6
                  bne          a0, a6, main_j1 #branch to jump instr
                  xori         s0, a3, -1507
main_j1:          jalr         a7, a0, 873 #jump main -> sub_1
                  slti         a1, s5, 1071
                  bgeu         gp, a7, 16f
                  srai         a0, t5, 27
                  srli         s8, a7, 20
                  slli         sp, t6, 1
                  bne          a7, s8, 20f
                  srai         s0, s10, 1
                  and          s5, s1, s1
                  addi         s10, gp, -1751
16:               andi         gp, a6, 286
                  andi         s5, ra, 1168
                  beq          a5, s3, 27f
                  sub          t5, s3, a0
20:               auipc        a6, 696381
                  and          s3, t5, t6
                  srai         a5, s4, 11
                  slli         s11, tp, 6
                  bge          sp, t3, 27f
                  nop
                  sltiu        sp, a5, -1193
27:               srai         zero, s0, 21
                  slti         a6, a0, 43
                  lui          t0, 729998
                  srli         t1, t2, 13
                  sub          t0, s0, t6
                  sltu         a6, t2, s2
                  xori         ra, s8, -1446
                  slli         sp, s7, 18
                  sltu         t2, t2, sp
                  xori         gp, a2, 1424
                  auipc        t1, 458903
                  sltiu        s5, gp, 1047
                  srli         s3, ra, 4
                  xori         s10, s4, -1912
                  xor          s10, tp, a1
                  srli         s0, zero, 16
                  sub          a7, s8, t5
                  blt          a3, ra, 55f
                  andi         s6, t3, 1843
                  sll          s7, gp, s10
                  sltu         s9, t2, t6
                  blt          s6, s1, 57f
                  auipc        a5, 882403
                  srli         zero, a1, 18
                  bge          s11, s8, 55f
                  xori         s7, s2, 1994
                  add          s3, t4, s7
                  nop
55:               slti         t5, t4, -462
                  andi         t6, a1, 1974
57:               blt          s0, s9, 64f
                  bge          a5, s5, 71f
                  beq          s9, zero, 66f
                  ori          s11, s7, 1212
                  auipc        s5, 177305
                  sltu         s0, s2, a6
                  beq          s2, s9, 64f
64:               srl          a3, t5, sp
                  lui          a3, 1027570
66:               srl          s7, s3, t1
                  sltiu        a1, t4, -958
                  blt          t5, s7, 72f
                  sltu         sp, t5, s11
                  nop
71:               xori         s8, ra, -1160
72:               nop
                  auipc        a1, 856617
                  sltiu        a7, a7, -1694
                  sltu         a1, a3, s3
                  sra          s6, ra, s7
                  slti         a6, t4, -1906
                  and          s0, t5, s10
                  lui          t1, 70530
                  slti         s4, a4, 1328
                  addi         a4, s10, 1983
                  sra          s10, a1, a3
                  bltu         s8, a7, 102f
                  xor          s0, s2, a7
                  xor          a2, a6, s3
                  sltiu        s7, t1, 662
                  addi         s11, s3, -338
                  slli         a2, s3, 15
                  or           s2, s9, zero
                  sll          s7, t6, t4
                  sub          a4, a3, s4
                  srl          ra, a1, zero
                  addi         zero, a3, 468
                  bge          a7, a0, 110f
                  bne          tp, tp, 102f
                  nop
                  xor          t0, t1, a4
                  slli         a1, a5, 6
                  and          a2, s6, s2
                  la           a0, sub_2
                  or           s5, tp, a1
                  addi         a0, a0, -997
                  addi         a6, s6, -907
                  sll          s9, t5, t5
                  bgeu         a3, s11, main_j2 #branch to jump instr
                  srai         t1, a7, 23
main_j2:          jalr         a7, a0, 998 #jump main -> sub_2
                  and          a5, t1, a0
                  sra          s7, s2, s1
                  or           s4, gp, a5
                  beq          gp, s6, 117f
                  auipc        t1, 1008854
                  bge          a0, sp, 106f
102:              xori         t5, s3, 152
                  srai         s5, t5, 15
                  slti         a1, s0, -174
                  and          sp, t6, a3
106:              lui          s10, 38394
                  nop
                  bge          a3, tp, 122f
                  andi         a2, t3, 815
110:              bne          s5, tp, 127f
                  xori         s7, t5, -1600
                  srl          s11, a3, a6
                  slli         a1, s5, 3
                  slli         a7, a6, 20
                  srli         sp, t2, 27
                  slti         t2, t6, 1691
117:              xori         a6, tp, 1628
                  blt          s8, t3, 122f
                  slli         s7, tp, 31
                  bltu         gp, t2, 131f
                  srai         s8, s1, 6
122:              slt          s11, zero, s5
                  auipc        s9, 84792
                  srli         s9, a7, 20
                  slli         a0, a7, 30
                  xor          a2, s5, s9
127:              nop
                  blt          a5, a7, 131f
                  andi         t0, t5, -1725
                  srli         s7, s6, 22
131:              lui          a4, 1045894
                  sub          s9, t6, s7
                  auipc        s0, 131160
                  ori          t5, t2, 1070
                  sltiu        s9, sp, 1156
                  xori         s5, a0, 1504
                  sra          t1, s1, a2
                  nop
                  beq          s3, s6, 159f
                  slt          t1, t1, t6
                  bltu         ra, s6, 147f
                  sltu         t1, t6, t3
                  and          a3, a3, a4
                  xor          t1, s4, s7
                  blt          s5, s9, 159f
                  sltiu        a0, ra, -1709
147:              slti         a3, gp, -1366
                  sll          sp, s4, a1
                  sltiu        t6, s4, 1211
                  slt          s10, t1, t2
                  and          s5, a1, a4
                  or           s11, t6, t1
                  sll          a2, gp, s9
                  andi         t4, sp, -1527
                  bltu         t4, s10, 169f
                  andi         s0, s8, -1748
                  sra          t1, t3, t2
                  bne          s8, a5, 172f
159:              slti         s11, s11, -718
                  slti         t1, gp, 1356
                  sub          t5, t0, ra
                  lui          s5, 266444
                  and          a5, s4, t1
                  sll          a0, s1, s2
                  addi         gp, s10, 1386
                  or           s4, s8, a7
                  xor          t1, a4, sp
                  nop
169:              sltiu        a1, a1, -1938
                  bgeu         a7, s3, 179f
                  xor          s6, s4, tp
172:              xori         a1, tp, 1963
                  add          s6, s0, a7
                  bgeu         a7, a5, 178f
                  beq          a7, s3, 178f
                  beq          s0, zero, 190f
                  bgeu         s7, s7, 191f
178:              bltu         a5, s0, 194f
179:              srl          s6, s9, s1
                  srai         a2, t0, 27
                  blt          s9, s10, 189f
                  and          t2, a2, t0
                  slt          a2, zero, zero
                  bge          a7, s10, 203f
                  nop
                  auipc        a7, 603462
                  sub          a0, a6, t6
                  sltiu        t2, s0, 692
189:              sltu         gp, s1, gp
190:              bltu         s5, t3, 195f
191:              slti         s9, t6, 360
                  nop
                  srl          a3, s3, t2
194:              ori          t0, a6, -1319
195:              add          s2, t3, a2
                  sub          s0, zero, s4
                  blt          t4, s8, 210f
                  or           s9, s10, s0
                  slti         t2, s3, 1055
                  or           a6, s6, a3
                  sltu         a1, a7, a2
                  slti         gp, a5, -1760
203:              blt          sp, s8, 207f
                  sll          a6, s5, a4
                  bge          s0, t2, 208f
                  lui          ra, 680913
207:              ori          s5, t5, -1483
208:              slli         a4, s3, 8
                  beq          s9, ra, 220f
210:              xori         s4, t5, 1160
                  or           a3, s5, a2
                  srli         t2, a6, 31
                  sll          a6, s11, a2
                  sll          s4, a7, t4
                  or           a3, t0, a7
                  addi         a2, a1, 1004
                  srai         s7, s2, 21
                  blt          s5, a1, 236f
                  srai         ra, t3, 7
                  la           ra, region_0+836 #start riscv_load_store_hazard_instr_stream_1
                  sra          s5, a3, t5
                  lhu          s4, -394(ra)
                  lhu          s7, -376(ra)
                  lh           s5, -376(ra)
                  srai         t5, a4, 10
                  lb           t0, -376(ra)
                  lbu          a0, -376(ra)
                  lh           s3, -376(ra)
                  sb           s9, -69(ra)
                  lb           a4, -69(ra)
                  sb           t2, 741(ra)
                  lh           t4, 868(ra)
                  addi         s5, zero, 724
                  sb           sp, 412(ra)
                  lb           s5, 846(ra)
                  lbu          t6, 673(ra)
                  sb           a1, -585(ra)
                  lb           gp, -585(ra)
                  lb           s3, -585(ra)
                  lbu          s2, -585(ra)
                  lw           s6, -640(ra)
                  lhu          t2, -640(ra) #end riscv_load_store_hazard_instr_stream_1
220:              andi         t2, a3, 778
                  sll          a1, s9, s9
                  add          ra, s11, t4
                  and          s10, s1, a7
                  sub          t6, t2, gp
                  sltu         gp, s10, a2
                  srai         t6, s7, 11
                  bgeu         tp, s0, 244f
                  bltu         s7, t0, 237f
                  sub          a7, tp, s5
                  sltu         s3, a6, s1
                  xori         s5, gp, -1593
                  slti         t4, t3, 446
                  xor          a5, s5, t0
                  slli         ra, s9, 30
                  slt          s9, a6, a2
236:              sub          s3, a3, s5
237:              nop
                  andi         a4, s6, 2022
                  bge          t5, t2, 243f
                  srl          a0, tp, s9
                  and          a5, zero, tp
                  addi         ra, s9, 452
243:              and          a2, tp, t0
244:              xori         s2, t6, 427
                  bgeu         t6, a3, 252f
                  srl          t4, a2, t5
                  srai         zero, a2, 25
                  xor          sp, sp, a2
                  blt          s0, t4, 269f
                  and          sp, s11, a6
                  slti         t1, sp, -572
252:              bge          zero, t3, 256f
                  add          s0, t3, t6
                  srai         t5, sp, 26
                  bgeu         s9, s8, 269f
256:              srai         t0, t1, 17
                  and          a3, t3, a4
                  sll          a7, zero, a3
                  srl          a1, a4, sp
                  andi         t0, sp, -1973
                  slli         a6, s9, 19
                  nop
                  andi         a3, s8, 1657
                  andi         s11, sp, -2018
                  bge          t0, t2, 269f
                  blt          s9, s0, 274f
                  slli         s3, t4, 17
                  bge          a5, gp, 269f
269:              beq          t5, t0, 278f
                  or           s5, a0, s10
                  addi         t4, t1, -828
                  sub          a6, t5, t6
                  auipc        gp, 761637
274:              bltu         zero, t1, 281f
                  srli         s10, gp, 19
                  slt          t0, t5, a0
                  nop
278:              sltu         s5, t1, a4
                  sltiu        t6, s4, 1124
                  srai         ra, s10, 6
281:              nop
                  bltu         t6, a4, 289f
                  srai         t2, s10, 6
                  blt          a3, t6, 289f
                  bgeu         a0, t5, 296f
                  srl          a4, t6, s5
                  add          s4, t1, t4
                  bgeu         sp, tp, 297f
289:              bgeu         sp, s4, 303f
                  xor          t0, a0, s10
                  sltu         s2, s11, t1
                  bgeu         a1, a6, 298f
                  xori         s0, sp, 335
                  bge          s2, a0, 298f
                  bge          s3, t0, 302f
296:              xor          a6, t4, s4
297:              sltu         s8, t2, ra
298:              or           gp, a3, t0
                  xori         a2, gp, 1928
                  nop
                  lui          t0, 344903
302:              xori         s10, t3, 747
303:              auipc        t6, 514045
                  sltu         t0, a7, s6
                  bne          s9, t3, 311f
                  srl          t4, sp, t0
                  bne          a2, s7, 314f
                  andi         t0, sp, 1779
                  sltu         a5, t3, s4
                  ori          a5, a5, 1513
311:              slti         s9, s1, -634
                  bne          t5, a2, 326f
                  nop
314:              slti         t2, s1, -675
                  blt          s3, gp, 323f
                  nop
                  bge          sp, s7, 318f
318:              bgeu         sp, s1, 322f
                  xor          a0, a2, tp
                  sra          a3, ra, a4
                  auipc        t6, 976051
322:              beq          a2, t5, 330f
323:              srai         a0, a5, 29
                  sub          s9, s6, ra
                  beq          a5, ra, 336f
326:              andi         sp, t3, 634
                  lui          s9, 988496
                  and          gp, a5, s7
                  slt          s7, a6, a4
330:              sra          t5, t4, a0
                  and          a6, zero, t6
                  and          gp, t3, s4
                  addi         s0, t1, -1958
                  lui          s6, 891068
                  andi         a1, t1, -1729
336:              srai         a1, s4, 26
                  srl          s9, s10, t1
                  srai         s5, a7, 11
                  slt          zero, t3, s4
                  beq          s11, sp, 347f
                  srl          a2, s2, s6
                  slt          ra, t1, gp
                  xori         a0, t0, 1380
                  ori          a0, s10, 773
                  beq          t4, s4, 348f
                  sltiu        t0, s10, 214
347:              bgeu         t2, a4, 360f
348:              srli         s8, s5, 2
                  nop
                  srai         sp, a3, 6
                  slt          s8, t0, s2
                  auipc        a3, 875994
                  sra          gp, s8, a1
                  addi         a2, s5, 673
                  sltiu        zero, ra, -275
                  blt          a7, a5, 365f
                  ori          t5, s8, 793
                  sub          s6, a4, s4
                  and          sp, t2, a2
360:              add          a4, sp, s1
                  nop
                  sltu         t6, s8, zero
                  xor          t5, t3, s2
                  sll          s6, s5, gp
365:              srli         s7, a0, 2
                  sltiu        t1, t3, -1881
                  ori          s0, t0, 1893
                  slt          s8, sp, s9
                  lui          a5, 574283
                  bne          t5, s2, 386f
                  auipc        s3, 1048002
                  xor          t6, a7, t4
                  srai         a4, s9, 27
                  slt          a3, zero, t3
                  slt          a1, s5, a7
                  andi         s6, t4, -1099
                  bge          s5, s2, 391f
                  or           s10, gp, s6
                  slli         s0, gp, 12
                  addi         s4, s9, -732
                  andi         t1, s7, -1561
                  beq          s8, a0, 386f
                  andi         a3, s0, -687
                  srli         s8, t6, 28
                  sltu         t0, s3, a5
386:              slt          gp, s4, s10
                  bne          zero, a4, 407f
                  srai         s8, t2, 28
                  bne          s10, t5, 403f
                  blt          t1, s3, 409f
391:              nop
                  nop
                  srai         a1, s10, 24
                  bgeu         t4, s11, 403f
                  xor          a2, a6, s7
                  addi         s2, s0, 951
                  sra          s3, s3, t3
                  auipc        s3, 239168
                  srai         s6, s7, 13
                  slt          a4, s9, t6
                  sub          t1, a3, sp
                  bltu         s9, gp, 416f
403:              ori          a5, s8, -2015
                  ori          s0, s10, 1338
                  addi         a2, a3, -1808
                  srl          t5, t3, a0
407:              slli         t0, s10, 28
                  srli         zero, a5, 18
409:              xori         a5, t4, 1799
                  sll          s2, s8, ra
                  slli         s4, s2, 5
                  add          s6, t2, t6
                  xori         ra, s1, -64
                  nop
                  and          a0, a5, s4
416:              sra          s10, a0, gp
                  bltu         sp, ra, 420f
                  bgeu         tp, a2, 435f
                  nop
420:              sra          a2, a3, a3
                  addi         zero, zero, 1726
                  addi         a1, a6, 1320
                  andi         t0, s11, 1111
                  xori         a5, a2, 844
                  slti         ra, s7, -943
                  slti         a1, t1, -61
                  srai         a7, a2, 23
                  nop
                  nop
                  xor          a5, t5, s0
                  ori          t0, a7, -563
                  sltiu        ra, s11, 927
                  sub          t1, a1, s7
                  sltu         a3, s4, a4
435:              xor          s10, s5, t1
                  nop
                  auipc        s10, 806941
                  ori          s8, s2, -5
                  and          s5, a5, s6
                  bgeu         s5, s9, 444f
                  beq          a5, s7, 452f
                  lui          a1, 612282
                  add          a3, s4, t4
444:              nop
                  slli         a7, a1, 19
                  auipc        t5, 757550
                  sltu         a1, t2, gp
                  or           s8, a1, s0
                  add          t2, s9, ra
                  srli         s5, s7, 23
                  bltu         s5, a5, 460f
452:              xori         t0, a6, 367
                  ori          t0, zero, 1246
                  add          t0, ra, gp
                  srai         t1, s5, 19
                  sltu         gp, t3, zero
                  bne          ra, gp, 462f
                  xor          s2, s10, s10
                  sltu         t6, t6, s7
460:              srai         s10, t1, 4
                  nop
462:              sltiu        s6, s9, 752
                  slli         ra, s1, 3
                  srli         a3, a7, 9
                  bgeu         a4, t6, 470f
                  xor          t2, a0, a7
                  sltu         sp, t0, sp
                  auipc        a5, 18481
                  xori         sp, s6, 401
470:              sltu         s8, t4, s4
                  sll          t2, t4, t3
                  bge          s11, gp, 490f
                  andi         t0, s3, 1664
                  blt          s10, a5, 481f
                  add          s4, zero, gp
                  bge          s5, s0, 484f
                  andi         zero, s2, -1278
                  and          ra, zero, s1
                  sll          gp, s10, tp
                  bge          tp, t5, 494f
481:              add          s10, a4, t2
                  sltiu        t1, a7, 1615
                  bne          s10, s10, 503f
484:              srai         t1, a2, 20
                  auipc        ra, 1040500
                  sltiu        s10, a2, -1313
                  slt          t1, s5, s6
                  sub          s4, s2, a1
                  slt          s10, s7, a0
490:              sltu         s3, a2, t3
                  auipc        t5, 518971
                  slti         t1, sp, 515
                  srai         t2, a1, 1
494:              addi         s7, zero, 1213
                  sra          s10, s10, t2
                  auipc        t5, 707941
                  slt          t6, s5, tp
                  add          s9, sp, s1
                  add          ra, s5, a1
                  srli         s3, a4, 1
                  bge          t3, s8, 505f
                  blt          ra, s9, 508f
503:              xor          s3, ra, t5
                  sub          a3, t0, a3
505:              slt          ra, t4, sp
                  sltu         s2, s4, gp
                  and          s6, sp, zero
508:              sll          a5, s9, s6
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            auipc        t5, 1006483
                  add          t5, a3, t3
                  addi         tp, tp, -64
                  sll          s11, zero, a1
                  ori          a3, s3, 255
                  sw           a7, 4(tp)
                  or           sp, a1, t6
                  la           a6, region_1+1630 #start riscv_load_store_rand_instr_stream_2
                  slli         t1, a5, 10
                  sh           a1, 128(a6)
                  or           t6, t3, s9
                  sb           a4, 35(a6)
                  sb           a5, -199(a6)
                  slt          zero, a3, s6
                  sw           t1, 130(a6)
                  sub          s5, t3, t2
                  lb           s9, 59(a6)
                  lh           t1, 224(a6)
                  or           t4, gp, s0
                  lbu          t6, -170(a6)
                  lhu          s11, 158(a6)
                  lb           s3, 218(a6)
                  and          t5, a5, s11
                  lbu          zero, -125(a6)
                  sh           t5, 240(a6)
                  sb           t6, 227(a6)
                  sb           a1, -107(a6)
                  lb           a3, -4(a6)
                  sb           t6, -197(a6)
                  lb           a2, -203(a6)
                  lb           sp, -119(a6)
                  or           a5, a2, s0
                  auipc        s3, 768854
                  lbu          s4, 143(a6)
                  sb           s10, -220(a6)
                  xor          s5, s8, a3
                  lb           a4, -135(a6)
                  xori         s11, s1, 37
                  lb           a4, 203(a6)
                  lhu          t5, 6(a6)
                  lb           ra, 69(a6)
                  lbu          s9, -237(a6)
                  or           s2, t5, s1
                  lbu          t6, -231(a6) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+1978 #start riscv_load_store_rand_instr_stream_1
                  srl          t2, t3, s7
                  slti         a7, a1, 1229
                  sb           a5, 12(t1)
                  ori          s7, s4, -628
                  lb           s4, 16(t1)
                  nop
                  xor          a4, s11, a4
                  auipc        s0, 986469
                  sb           a6, -13(t1)
                  lw           a0, -14(t1)
                  ori          s8, t6, -587
                  lbu          s4, 0(t1)
                  sh           t3, 0(t1)
                  srli         t4, ra, 12
                  addi         a2, s3, -400
                  andi         a1, t2, -44
                  slti         s3, gp, 253
                  ori          s7, s11, -379
                  ori          s9, gp, 835
                  lb           sp, -7(t1)
                  sub          a5, a7, t0
                  sltiu        ra, t3, -1229
                  lui          a6, 837699
                  sb           a0, 6(t1)
                  and          gp, s5, t4
                  lbu          a5, 0(t1)
                  lb           s10, -4(t1)
                  or           t4, a3, s1
                  slti         gp, t4, -1046
                  srli         s8, a5, 3
                  sb           gp, 15(t1)
                  lb           a3, -11(t1)
                  sb           sp, -11(t1)
                  slli         s9, sp, 0
                  sb           a0, -4(t1)
                  lbu          s3, 5(t1)
                  srai         s3, a0, 29
                  ori          t4, t2, -2021
                  sh           a6, -10(t1)
                  sll          a2, a7, s11
                  sb           a0, -5(t1)
                  lh           s0, -8(t1)
                  lbu          s3, 10(t1)
                  lbu          zero, -7(t1)
                  add          ra, t6, a1
                  slt          a6, s11, a7
                  sb           s5, -9(t1)
                  or           t5, a4, t6
                  slli         s6, t3, 18
                  srl          gp, s2, a6
                  sltu         t2, s7, s10
                  lb           s8, -13(t1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+53 #start riscv_load_store_hazard_instr_stream_2
                  sh           a4, 15(sp)
                  sb           zero, -8(sp)
                  sltu         s10, s9, tp
                  lb           gp, -8(sp)
                  or           s9, s8, s0
                  sltu         zero, s10, s10
                  lb           s10, -6(sp)
                  xor          ra, a7, t6
                  lb           s0, -6(sp)
                  lh           ra, -15(sp)
                  sh           t3, -15(sp)
                  lb           a2, -12(sp)
                  lb           a1, -8(sp)
                  sra          a5, a7, a3
                  sltiu        a7, a6, -1852
                  sb           a2, -7(sp)
                  sb           gp, -7(sp)
                  lbu          s11, -4(sp)
                  slt          s6, ra, a0
                  lb           t2, 12(sp)
                  lb           a3, 10(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+222 #start riscv_load_store_rand_instr_stream_0
                  xor          s3, a1, t0
                  lbu          a0, -140(sp)
                  lbu          s11, 33(sp)
                  sb           zero, -202(sp)
                  srl          s8, s9, zero
                  nop
                  nop
                  lhu          a5, -96(sp)
                  slti         s0, s10, 197
                  lh           s0, 116(sp)
                  ori          a2, s10, 1277
                  sltiu        t4, s0, 1589
                  sb           s10, 215(sp)
                  lhu          s7, 38(sp)
                  xori         s10, t2, 34
                  lh           t4, -54(sp)
                  xori         a6, t3, -1678
                  lb           a0, 72(sp)
                  sh           t4, 130(sp)
                  lhu          a5, -96(sp)
                  ori          a7, t6, 1915
                  ori          t0, gp, -982
                  sltu         s3, s9, a1
                  slti         a2, t0, -174
                  lbu          t5, -145(sp)
                  sh           t5, -24(sp)
                  srl          t1, s8, a0
                  lbu          t4, -150(sp)
                  lb           s0, 243(sp)
                  lbu          t2, 47(sp)
                  slti         a6, zero, 1562
                  lb           zero, -27(sp)
                  sb           s5, -151(sp)
                  srl          a2, s8, s10
                  srli         gp, s1, 5
                  sltu         s7, a4, zero
                  srai         s3, s2, 8
                  lh           a5, -80(sp)
                  auipc        a7, 199657
                  srl          a2, s0, s1
                  xori         s7, tp, -1479
                  sb           a2, 194(sp)
                  lb           s0, -109(sp)
                  xori         a1, s4, 420
                  xor          a0, s5, t4
                  slti         t4, s9, 651
                  lbu          a6, 143(sp)
                  sb           s5, -195(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+1932 #start load_store_instr_stream_1
                  la           s6, region_1+573 #start load_store_instr_stream_3
                  la           gp, region_1+1417 #start load_store_instr_stream_0
                  la           a6, region_1+767 #start load_store_instr_stream_2
                  lhu          s3, 333(s6)
                  sb           a7, 0(gp)
                  lb           t5, 11(s7)
                  la           s4, region_1+1541 #start load_store_instr_stream_4
                  lbu          s5, 666(s6)
                  sb           s8, -507(s6)
                  lbu          a4, -26(gp)
                  sb           t0, 1295(s6)
                  lbu          s9, -3(a6)
                  lbu          t5, -237(s4)
                  lbu          a2, 13(s7)
                  lhu          a3, -9(a6)
                  lhu          t0, 45(gp)
                  lbu          a2, 16(a6)
                  lb           t5, -463(s6)
                  lbu          s9, 14(a6)
                  lb           s11, 826(s6)
                  lb           a1, 4(a6)
                  sb           s11, -162(s4)
                  lbu          t6, -126(s4)
                  sb           s4, 15(a6)
                  sb           s2, 162(s4)
                  lb           a4, 550(s6) #end load_store_instr_stream_3
                  lbu          s8, 0(s7)
                  lhu          ra, -33(gp)
                  sb           a2, -186(s4)
                  sb           s4, 2(gp)
                  lbu          t0, 224(s4)
                  lb           t4, -2(a6)
                  lh           s0, 197(s4)
                  sb           t1, 11(s7)
                  lh           s5, -10(s7)
                  sh           t4, 41(gp)
                  lb           a5, 16(a6)
                  lb           a2, 45(gp)
                  lb           s2, -11(a6)
                  sh           ra, 45(s4)
                  lbu          t1, -7(s7)
                  sb           t3, -12(s4) #end load_store_instr_stream_4
                  sw           a7, 9(a6) #end load_store_instr_stream_2
                  sb           t1, 29(gp)
                  lb           a1, -15(s7) #end load_store_instr_stream_1
                  sb           s5, -55(gp) #end load_store_instr_stream_0
                  la           sp, region_1+1816 #start riscv_load_store_hazard_instr_stream_3
                  lbu          t2, 3(sp)
                  xor          s3, s4, s11
                  lui          s3, 468589
                  lh           a7, -14(sp)
                  srl          t0, s2, a4
                  sb           t0, 11(sp)
                  lb           t6, 11(sp)
                  sb           t2, -9(sp)
                  lb           s3, -9(sp)
                  auipc        s8, 860822
                  lb           a1, -7(sp)
                  lbu          a3, -7(sp)
                  lb           s3, -7(sp)
                  lbu          s3, -7(sp)
                  xori         a3, ra, -1180
                  sb           a4, -7(sp)
                  ori          t6, s7, -611
                  lbu          s0, -11(sp)
                  sb           t1, -11(sp)
                  sb           zero, 7(sp)
                  lb           gp, 7(sp)
                  lbu          a2, 16(sp)
                  lw           gp, 16(sp)
                  sltiu        t4, s6, -793
                  lbu          a4, 16(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+554 #start riscv_load_store_hazard_instr_stream_0
                  ori          zero, sp, 1267
                  sb           tp, -187(sp)
                  lb           a2, -77(sp)
                  sh           tp, 140(sp)
                  xor          t0, s3, s11
                  ori          s11, a7, 1743
                  lhu          gp, 208(sp)
                  lhu          s6, 208(sp)
                  lb           s3, -96(sp)
                  lb           a5, -72(sp)
                  lb           t6, 28(sp)
                  sh           a5, 28(sp)
                  lbu          s11, 28(sp)
                  lb           s2, 5(sp)
                  lbu          a7, 193(sp)
                  lb           a3, 193(sp)
                  sw           t1, -246(sp)
                  sltiu        a4, s9, 368
                  lb           t4, 139(sp)
                  lb           a2, 139(sp)
                  srli         ra, t3, 15
                  lhu          a6, -136(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+1917 #start riscv_load_store_rand_instr_stream_3
                  auipc        a5, 587565
                  sb           tp, -64(s8)
                  lb           s2, -44(s8)
                  sh           s11, 23(s8)
                  xori         t6, t3, 464
                  lhu          a4, 33(s8)
                  slt          ra, s10, s0
                  sb           a0, -46(s8)
                  ori          s7, s10, 912
                  sb           a7, 12(s8)
                  sb           a0, 34(s8)
                  lb           sp, -28(s8)
                  lbu          s5, 0(s8)
                  slli         a0, s9, 6
                  andi         a4, s6, -1961
                  sra          a7, s8, a2
                  lhu          s2, 19(s8)
                  ori          a2, t2, 550
                  sh           a2, -13(s8)
                  sb           a0, 37(s8)
                  srai         t6, t2, 28
                  lhu          t2, -13(s8)
                  sb           a7, 55(s8)
                  lui          s5, 259208
                  lb           a4, -34(s8)
                  sh           ra, -51(s8)
                  srli         a0, s11, 13
                  lbu          a7, -41(s8)
                  sb           s11, 8(s8)
                  lh           s4, 13(s8)
                  lh           s6, -19(s8)
                  lui          s9, 223163
                  lb           t0, 36(s8)
                  lb           s5, -47(s8)
                  lbu          s4, 26(s8)
                  lhu          sp, 7(s8) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1065 #start riscv_load_store_hazard_instr_stream_1
                  lw           t5, -681(sp)
                  lh           s4, -681(sp)
                  lw           s6, -681(sp)
                  lb           a6, -681(sp)
                  lbu          s4, -681(sp)
                  lbu          gp, -681(sp)
                  lb           a2, -681(sp)
                  lb           zero, -324(sp)
                  sb           tp, -324(sp)
                  lb           t0, -324(sp)
                  lbu          a0, -348(sp)
                  sb           s1, -348(sp)
                  lb           a6, -348(sp)
                  lbu          gp, -348(sp)
                  lb           s6, -348(sp)
                  lb           s2, -348(sp)
                  lb           ra, -348(sp)
                  auipc        s3, 983825
                  lbu          s4, -348(sp)
                  lbu          a7, -348(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t0, region_1+1788 #start load_store_instr_stream_2
                  la           s6, region_1+690 #start load_store_instr_stream_1
                  la           t5, region_1+26 #start load_store_instr_stream_0
                  sh           t2, 16(t5)
                  sw           a5, -16(t0)
                  la           s2, region_1+1220 #start load_store_instr_stream_3
                  lbu          s9, -131(s6)
                  lbu          zero, -57(s2)
                  lbu          a7, 191(s6)
                  sb           t2, -7(t0)
                  sb           a5, 16(t0)
                  sb           a6, -1(t5)
                  lbu          s0, -1(s6)
                  lbu          t2, -210(s6)
                  lw           a7, 58(t5)
                  lhu          a3, -10(t0)
                  sb           t0, 172(s6)
                  lbu          s8, -14(t0) #end load_store_instr_stream_2
                  lhu          t4, -2(t5)
                  lbu          s8, 43(s2)
                  sh           a1, 14(t5)
                  lbu          t2, -32(s2)
                  lb           a0, -101(s6)
                  lb           s5, 49(s2)
                  sb           a0, 45(t5)
                  sb           t0, 49(t5)
                  lbu          a4, 36(s6)
                  lbu          s9, -199(s6)
                  sb           t0, -38(s2)
                  lb           s8, 4(t5)
                  lbu          a5, -9(s2) #end load_store_instr_stream_3
                  lh           a0, -98(s6) #end load_store_instr_stream_1
                  lh           a1, -24(t5) #end load_store_instr_stream_0
                  lui          s2, 934549
                  srli         s7, a6, 14
                  lui          s5, 404839
                  bgeu         a5, t2, 14f
                  addi         a1, t2, -840
                  srl          sp, a4, a6
                  lui          ra, 891198
                  srli         a2, s6, 11
                  addi         s4, s4, 1183
                  addi         ra, t0, 1338
                  bgeu         s10, a0, 30f
                  lui          t6, 661013
                  bge          s0, s1, 15f
                  bgeu         a1, s4, 22f
14:               xor          s2, a0, s9
15:               bgeu         s9, a1, 32f
                  sub          sp, s8, a6
                  and          s11, t3, s6
                  nop
                  slt          s6, s8, s2
                  bgeu         a2, s1, 24f
                  sltiu        s0, s3, -1014
22:               sub          s7, t0, s3
                  sltu         s0, a2, t1
24:               sub          s11, t6, s0
                  sll          s5, a2, s4
                  or           s6, a0, t2
                  sltu         s9, sp, s8
                  slti         t2, sp, 989
                  sltu         t2, gp, t0
30:               and          s8, t6, s0
                  sll          s4, a4, t1
32:               lui          t0, 846617
                  sltu         t6, a1, a7
                  sll          ra, sp, t0
                  slti         s2, s0, -1638
                  slti         t2, s8, 725
                  ori          s6, a2, -736
                  slli         s0, ra, 28
                  bne          s0, tp, 52f
                  xori         a0, gp, -1122
                  sll          s9, a6, a1
                  la           s9, region_1+1197 #start load_store_instr_stream_0
                  lhu          s4, 33(s9)
                  la           a6, region_1+1195 #start load_store_instr_stream_2
                  la           s10, region_1+1081 #start load_store_instr_stream_1
                  lbu          gp, -10(s10)
                  la           ra, region_1+1553 #start load_store_instr_stream_3
                  lh           t2, -25(a6)
                  lbu          a1, -3(ra)
                  la           s8, region_1+1747 #start load_store_instr_stream_4
                  sb           a3, -57(s8)
                  lbu          t6, -64(s9)
                  lb           a1, -28(a6)
                  lb           s4, -52(ra)
                  lhu          s2, -61(s10)
                  lbu          t6, 43(a6)
                  lbu          a3, -18(a6)
                  sb           s5, -62(s10)
                  lb           s6, -37(ra)
                  lbu          s5, 15(s8)
                  lb           a5, 64(s9)
                  lbu          s0, 15(s10)
                  lb           t1, 4(s9)
                  sw           t2, 23(s10)
                  lh           a3, 51(a6)
                  sh           ra, -15(ra)
                  sw           ra, 29(s8)
                  sh           t4, -61(s10)
                  lb           zero, -2(ra)
                  lw           t4, 11(s10)
                  lbu          a1, 44(s8)
                  lh           zero, -63(s10)
                  lhu          zero, 45(a6)
                  lb           t4, -62(s8) #end load_store_instr_stream_4
                  lbu          a4, 34(a6)
                  lb           sp, 54(s9)
                  lb           s4, -12(a6) #end load_store_instr_stream_2
                  lh           s3, -43(ra) #end load_store_instr_stream_3
                  sh           t1, 45(s10)
                  sb           s1, 30(s9)
                  lhu          zero, 41(s10) #end load_store_instr_stream_1
                  sb           a4, 30(s9) #end load_store_instr_stream_0
                  and          s0, s2, s8
                  andi         t6, s8, -1581
                  and          a6, t6, s8
                  srli         t4, a4, 15
                  nop
                  bne          s4, a3, 67f
                  sltu         s0, a4, ra
                  slt          a4, t2, a2
                  blt          s11, ra, 55f
                  auipc        a6, 925190
52:               sub          s0, s10, s9
                  ori          t6, s3, -549
                  slli         zero, a5, 11
55:               slt          s0, s4, s2
                  sra          a1, s10, gp
                  slti         s7, gp, -1743
                  bltu         s0, s6, 62f
                  bge          s5, s2, 77f
                  bgeu         a6, s1, 79f
                  sltu         a2, t6, s1
62:               and          t5, tp, s0
                  beq          t4, t5, 78f
                  slt          a5, a2, t0
                  bge          t3, a5, 81f
                  add          zero, t0, s6
67:               xori         s5, gp, 582
                  ori          s3, t5, -63
                  bltu         s4, a2, 83f
                  srli         a0, a1, 11
                  xori         s11, t3, 225
                  auipc        s6, 488600
                  lui          t5, 675514
                  and          a3, s11, tp
                  auipc        s3, 201717
                  beq          s7, s1, 95f
77:               slt          gp, t3, s7
78:               sltu         zero, a2, a3
79:               sll          a1, t6, ra
                  sltiu        ra, a5, -287
81:               add          s6, t4, t4
                  add          s9, a0, s0
83:               sub          s4, a2, t5
                  bgeu         t3, s4, 101f
                  sll          a2, s6, t3
                  slli         t1, s1, 14
                  ori          a6, a0, 1448
                  xori         a3, a0, -1646
                  sll          t0, t0, t2
                  sub          s5, a5, s6
                  and          a4, t5, s3
                  blt          s4, t1, 98f
                  slti         t4, t5, 671
                  srai         s2, a6, 10
95:               bgeu         s10, s3, 111f
                  bne          a1, t3, 107f
                  ori          a4, s10, 177
98:               srli         a3, a2, 23
                  srli         s3, zero, 0
                  bgeu         s9, a1, 102f
101:              add          s8, ra, a2
102:              ori          t6, s4, 672
                  slt          s4, tp, t1
                  srli         s4, s2, 10
                  nop
                  bgeu         a6, s10, 113f
107:              sltiu        a3, s10, 565
                  sll          t0, a0, s4
                  bne          a0, t6, 125f
                  or           s2, gp, s10
111:              sra          s5, a0, t3
                  slti         s6, s4, -765
113:              xor          ra, sp, a4
                  add          sp, zero, s5
                  slti         s9, t6, -1978
                  auipc        zero, 96185
                  bne          a4, zero, 124f
                  bne          a4, s0, 129f
                  srl          a1, s2, zero
                  bge          s0, s5, 121f
121:              and          a0, sp, sp
                  and          s3, t2, a2
                  and          a0, s1, s10
124:              srai         s6, ra, 15
125:              slt          a6, a3, a6
                  addi         t6, a4, -1691
                  srl          t4, sp, s0
                  srl          t4, s10, s6
129:              blt          a1, sp, 136f
                  sra          zero, s5, t2
                  sra          a1, s0, ra
                  and          zero, zero, zero
                  sltu         t5, t1, s3
                  addi         s0, s4, 1628
                  or           a0, a5, s2
136:              addi         a0, gp, -56
                  andi         ra, t0, 442
                  xori         a2, t3, -276
                  auipc        a4, 864398
                  sub          t4, s3, a2
                  bgeu         s1, t1, 153f
                  slli         a6, zero, 8
                  sra          t4, a7, ra
                  sltiu        a2, zero, 1162
                  bge          s7, sp, 151f
                  andi         s11, zero, -603
                  slti         t4, s8, 2020
                  srl          a6, s0, t1
                  xori         sp, tp, -765
                  bgeu         s1, s0, 152f
151:              sltu         s7, a7, t1
152:              slli         sp, s11, 0
153:              slt          s9, s9, a7
                  sll          t1, a2, a2
                  addi         s3, s6, 936
                  sra          s7, a3, a5
                  auipc        a6, 261507
                  ori          s6, s8, 1104
                  slli         s5, a4, 11
                  and          s9, ra, a2
                  sltiu        s2, a1, -11
                  auipc        a4, 554866
                  bge          tp, a5, 168f
                  xor          t2, s6, t2
                  slli         s8, sp, 0
                  bltu         a2, s1, 173f
                  blt          t6, s2, 174f
168:              slli         s11, t4, 8
                  bltu         t1, s4, 182f
                  slli         a3, s6, 12
                  sltiu        t0, gp, 1187
                  sub          t1, s8, s3
173:              blt          a6, gp, 188f
174:              and          s4, s6, s0
                  beq          ra, a0, 177f
                  xori         a0, a1, 1108
177:              sll          t4, t4, s3
                  sub          s2, a4, s8
                  lui          sp, 74218
                  sltiu        sp, s7, 522
                  xori         ra, s1, -1427
182:              bgeu         t4, s9, 184f
                  lui          a7, 66999
184:              nop
                  srl          t4, t1, sp
                  xor          a5, s6, s1
                  srai         a3, a4, 10
188:              add          t1, a3, s0
                  slt          zero, sp, s8
                  bne          a2, sp, 199f
                  bgeu         a1, t6, 194f
                  srli         s8, zero, 7
                  addi         a6, tp, -1529
194:              sub          t2, a0, s4
                  slt          s9, s8, t2
                  sltu         t2, s6, sp
                  srl          a3, s4, t1
                  or           a4, a1, zero
199:              bge          s4, gp, 200f
200:              bne          s11, a1, 216f
                  srli         s11, s8, 7
                  sltiu        a0, t3, -1193
                  sra          t2, t0, a6
                  andi         s11, s8, -1989
                  or           a7, gp, a7
                  xori         a4, gp, -223
                  lui          a0, 721758
                  bge          tp, t5, 224f
                  sra          zero, s10, t5
                  nop
                  nop
                  slt          s2, tp, a6
                  srai         a2, a4, 7
                  slt          a0, tp, t4
                  sltiu        ra, s4, -225
216:              bne          sp, t1, 220f
                  slti         ra, zero, -8
                  beq          t1, a0, 238f
                  bge          s5, s9, 225f
220:              sltiu        t0, a1, -344
                  bltu         t0, s7, 225f
                  beq          s1, a7, 233f
                  xori         a3, a3, -1978
224:              add          a5, a1, s11
225:              add          s11, s4, a7
                  nop
                  and          s9, t6, s11
                  slt          a0, sp, t6
                  add          s5, s6, gp
                  xor          s2, a0, a2
                  sll          t0, a7, s9
                  xor          zero, a7, a6
233:              ori          s0, t6, 60
                  nop
                  srli         a4, a1, 13
                  slt          a0, s5, a6
                  bne          s4, a7, 256f
238:              sll          s6, tp, s11
                  xor          a1, t1, ra
                  xor          t4, s10, s2
                  nop
                  sltiu        s9, tp, -1756
                  blt          a0, a2, 260f
                  sltiu        s2, a5, 466
                  srai         t2, s3, 12
                  nop
                  blt          t3, t2, 254f
                  sltiu        s10, gp, -1608
                  nop
                  slli         zero, a0, 24
                  beq          s10, s7, 257f
                  srli         gp, sp, 3
                  sltiu        a2, t0, -1395
254:              add          t5, t0, s7
                  srai         t1, t2, 5
256:              beq          t1, t0, 273f
257:              sll          a5, t0, a6
                  nop
                  auipc        t1, 209045
260:              bge          t3, s10, 280f
                  add          s6, t0, t2
                  nop
                  or           a5, a0, t0
                  and          t4, s4, sp
                  sra          zero, a3, a4
                  bltu         t0, s4, 285f
                  slt          t0, a5, t6
                  bltu         t4, a6, 286f
                  slt          a4, a2, a3
                  andi         a2, t2, -529
                  sltiu        a5, sp, -1037
                  andi         a1, s10, 217
273:              srl          sp, a4, a6
                  sltu         a6, s11, s8
                  bgeu         s3, s6, 289f
                  slli         t0, sp, 1
                  slli         s4, s3, 14
                  bltu         s11, t5, 290f
                  bltu         a1, s11, 290f
280:              srli         s11, s0, 23
                  sltiu        a5, a5, 1385
                  bge          s11, s10, 298f
                  add          sp, a0, a7
                  sra          a6, a6, gp
285:              bne          ra, s11, 296f
286:              lui          s4, 295667
                  sltu         t0, a7, s11
                  bgeu         a0, s11, 290f
289:              add          s6, s0, s6
290:              lui          s5, 13409
                  and          s3, gp, sp
                  andi         s3, t5, -1052
                  ori          s8, t1, 1738
                  lui          a6, 333323
                  srli         t0, a1, 9
296:              sra          t4, t1, s1
                  slli         s5, s9, 24
                  la           s7, region_0+270 #start load_store_instr_stream_1
                  la           s8, region_0+1250 #start load_store_instr_stream_2
                  la           t1, region_0+294 #start load_store_instr_stream_0
                  lb           zero, 27(s7)
                  sh           tp, 32(s7)
                  lb           s11, 4(s8)
                  lbu          a5, -4(t1)
                  lbu          s5, -13(s8)
                  sh           s11, -16(s8)
                  sb           a2, 59(s7)
                  la           ra, region_0+1217 #start load_store_instr_stream_3
                  sb           t0, 3(s8)
                  lb           a3, 1426(t1)
                  sb           s7, 6(s7)
                  lb           s11, 553(t1)
                  lbu          s0, 626(t1)
                  lbu          a4, 3(s7)
                  lb           zero, -2(ra)
                  sh           a6, -16(s8)
                  lb           a1, -7(s8)
                  lhu          t2, -15(ra)
                  lb           s11, -155(t1)
                  lbu          t0, 15(ra)
                  sb           a3, 53(s7)
                  lhu          t0, -16(s8)
                  lbu          s4, -41(s7)
                  lb           a7, 6(ra)
                  lbu          s5, 665(t1)
                  sb           a6, 9(s8)
                  lb           s6, -16(ra)
                  lw           s2, -38(s7)
                  sb           a3, 0(s8)
                  lb           a2, -8(ra) #end load_store_instr_stream_3
                  sb           ra, 1(s8) #end load_store_instr_stream_2
                  lbu          s9, 21(s7) #end load_store_instr_stream_1
                  sw           t6, 510(t1) #end load_store_instr_stream_0
298:              slti         s9, sp, -656
                  bltu         a5, s4, 315f
                  or           s8, s4, s9
                  srl          s7, s8, t3
                  slt          a6, a6, ra
                  xor          t1, t3, s8
                  xori         a2, s11, -1083
                  bltu         a5, tp, 322f
                  nop
                  auipc        t5, 981226
                  srl          s2, t6, s3
                  ori          a0, a3, -1059
                  slli         a7, s6, 28
                  nop
                  srli         t6, a6, 16
                  beq          t0, s2, 329f
                  nop
315:              or           t4, a5, gp
                  xori         a2, s7, 1754
                  sra          t5, a1, zero
                  xor          s5, s5, a2
                  addi         s9, s8, 1044
                  sra          zero, t1, t3
                  xor          a4, ra, gp
322:              srai         s7, s7, 8
                  blt          sp, zero, 324f
324:              blt          a5, t1, 344f
                  or           zero, sp, t0
                  xor          s5, ra, t1
                  bltu         sp, sp, 341f
                  xor          t2, a2, t5
329:              xori         s10, s3, 591
                  sltu         s3, t3, sp
                  sra          s4, s5, s9
                  sll          s7, a3, t3
                  srli         s4, a3, 16
                  slt          a0, a4, a4
                  sltu         a1, s8, t0
                  nop
                  bge          s3, sp, 356f
                  sll          zero, s3, a5
                  and          a0, t5, t3
                  sll          t6, t3, sp
341:              andi         gp, a2, 93
                  bgeu         t1, sp, 354f
                  sra          s3, t5, s1
344:              slti         s6, ra, 434
                  srli         s10, a1, 0
                  slt          s3, t0, s5
                  auipc        s7, 899443
                  auipc        t0, 826666
                  addi         a7, s8, 1948
                  slt          a0, a4, a2
                  or           a5, t5, sp
                  blt          a3, s9, 369f
                  sll          t4, a1, s8
354:              ori          t5, s10, 1973
                  or           a2, s9, s2
356:              xor          sp, s7, a0
                  xori         ra, s7, 842
                  srl          s9, t4, t0
                  auipc        s6, 261237
                  srli         zero, a4, 24
                  srai         s7, s3, 4
                  lui          zero, 70610
                  addi         t0, t0, 577
                  srli         s4, a0, 3
                  srli         a2, s7, 24
                  addi         a1, t6, -1139
                  srai         gp, t2, 20
                  sltiu        a0, s9, -1455
369:              srli         s5, a5, 26
                  add          a4, s0, s9
                  slti         gp, s9, -1397
                  addi         s7, t4, 1815
                  xori         a0, a5, 719
                  bltu         a6, s6, 389f
                  srli         t4, t6, 24
                  sra          s0, s2, gp
                  auipc        s11, 166452
                  srli         s4, s9, 12
                  srli         t0, t0, 21
                  bge          s1, t0, 399f
                  lui          s9, 654419
                  srai         t2, tp, 7
                  sll          t5, s10, s10
                  xor          t0, t3, tp
                  bgeu         a2, t3, 398f
                  auipc        gp, 878190
                  slli         zero, sp, 19
                  add          a6, s10, zero
389:              andi         t1, a5, -1651
                  srli         zero, a5, 30
                  sltu         s5, t3, t6
                  addi         s0, s1, 1691
                  addi         t5, s8, -983
                  or           a3, t6, s8
                  sub          s5, s3, s1
                  or           a2, sp, t2
                  sll          a5, s1, s5
398:              sll          ra, s4, s2
399:              sltu         s2, s4, a4
                  slti         t1, s0, -1620
                  slt          t5, s8, s9
                  addi         s4, a6, -1144
                  bge          a3, s1, 407f
                  srli         t6, t3, 21
                  xori         t0, t5, 1091
                  bge          a0, a3, 408f
407:              nop
408:              bne          a2, s2, 419f
                  sltiu        a1, a1, -590
                  sltu         t4, a0, a5
                  sll          sp, t2, a6
                  auipc        s3, 345763
                  sub          s5, s5, s7
                  beq          zero, s8, 425f
                  lui          s5, 326733
                  beq          t2, s1, 432f
                  sub          s7, a2, s1
                  or           t2, s10, zero
419:              bge          a6, t4, 437f
                  sltiu        s8, s4, 3
                  and          a4, t3, t4
                  or           a5, a0, s2
                  beq          t1, a1, 434f
                  bne          s11, s0, 428f
425:              srl          s0, s2, s3
                  sltu         s5, s10, s10
                  sltiu        t4, a1, -44
428:              auipc        a5, 505724
                  slli         t4, a3, 6
                  srl          a6, s2, t3
                  beq          tp, s0, 451f
432:              xor          a1, a5, a1
                  add          a7, s9, s8
434:              sltiu        s7, a7, -606
                  beq          s6, s9, 440f
                  ori          s0, a0, 1481
437:              auipc        a4, 1006385
                  ori          s10, s9, -1193
                  sltiu        s3, a2, 841
440:              blt          t1, a2, 446f
                  sll          s11, a0, a5
                  xor          t1, sp, a5
                  slt          a7, ra, t1
                  lui          a2, 526426
                  sltu         zero, ra, t1
446:              xori         t0, a5, -406
                  slt          s0, s9, a7
                  slli         t4, a3, 30
                  srai         a2, t2, 23
                  srai         s11, s3, 18
451:              sltu         a1, t3, s9
                  lui          a3, 511553
                  blt          zero, s2, 460f
                  sub          s4, a5, t2
                  sltu         s7, a2, a2
                  or           ra, s6, t6
                  and          a2, a5, t5
                  and          a2, t3, tp
                  addi         a3, t1, 1299
460:              sub          t6, t3, gp
                  auipc        a6, 160372
                  srai         gp, a6, 29
                  and          s2, zero, s9
                  nop
                  nop
                  andi         t4, t5, -145
                  bne          sp, a2, 468f
468:              or           t0, s8, a3
                  nop
                  xori         ra, a1, 530
                  slli         s11, s4, 31
                  add          t2, a2, t6
                  lw           a7, 4(tp)
                  addi         s9, s1, 688
                  nop
                  addi         tp, tp, 64
                  nop
                  sll          s8, t6, s0
                  andi         a0, t0, -1171
                  and          a3, a3, a1
913:              addi x23, x17, 1
913:              jalr x23, x23, 0
sub_2:            bge          s8, s6, sub_2_stack_p
                  lui          s5, 947093
                  srli         gp, sp, 3
                  slti         s0, s7, 1127
sub_2_stack_p:    addi         tp, tp, -56
                  sll          s3, s2, a6
                  xor          s8, a1, t4
                  andi         s9, a0, 1786
                  lui          t6, 223598
                  srai         a2, a6, 31
                  sw           a7, 4(tp)
                  sll          t0, a4, s5
                  auipc        gp, 280687
                  slli         t5, sp, 15
                  srai         a1, tp, 16
                  sub          gp, s4, a2
                  andi         a3, s5, 1286
                  slt          a1, s11, zero
                  bltu         s4, sp, 18f
                  bge          gp, s5, 14f
                  bltu         s1, s10, 21f
                  slli         s8, s1, 24
                  bgeu         a4, s3, 19f
                  lui          s9, 195281
                  bne          sp, zero, 21f
                  or           a5, sp, s8
14:               xori         t2, s7, -1560
                  xori         t4, a1, -365
                  add          t5, s2, s9
                  or           s10, a0, t2
18:               addi         s6, t6, 652
19:               slli         s5, t1, 9
                  andi         s3, t5, 1410
21:               slti         s10, zero, -1191
                  lw           a7, 4(tp)
                  srai         gp, a3, 14
                  addi         tp, tp, 56
                  sub          s6, s6, zero
                  or           t6, t5, ra
                  srl          a5, s0, s1
40:               addi x5, x17, 1
40:               jalr x5, x5, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x16, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x16, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x16, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x16, x29, ecall_handler
                  li x29, 0x1
                  beq x16, x29, instr_fault_handler
                  li x29, 0x5
                  beq x16, x29, load_fault_handler
                  li x29, 0x7
                  beq x16, x29, store_fault_handler
                  li x29, 0xc
                  beq x16, x29, pt_fault_handler
                  li x29, 0xd
                  beq x16, x29, pt_fault_handler
                  li x29, 0xf
                  beq x16, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
