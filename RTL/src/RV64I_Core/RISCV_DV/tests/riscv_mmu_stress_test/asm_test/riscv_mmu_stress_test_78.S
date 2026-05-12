.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x5, 0x5e066268
                  li x6, 0x8
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0xfb3c7c27
                  li x10, 0xff880989
                  li x11, 0x0
                  li x12, 0xb4b94fee
                  li x13, 0x80000000
                  li x14, 0x9
                  li x15, 0xe71af83
                  li x16, 0xb11e1932
                  li x17, 0x80000000
                  li x18, 0xf1ad1dd0
                  li x19, 0xf874afa2
                  li x20, 0xfc4390d5
                  li x21, 0x80000000
                  li x22, 0xfc8514ef
                  li x23, 0x57708715
                  li x24, 0x7
                  li x25, 0xf4b327a2
                  li x26, 0xffc7028d
                  li x28, 0xffc4b852
                  li x29, 0xf487bbc1
                  li x30, 0xf7d1469c
                  li x31, 0xf1976ede
                  la x4, user_stack_end
main:             and          t1, s2, t3
                  xori         a7, s3, -1173
                  auipc        s6, 224118
                  slti         s3, s11, -867
                  xor          a3, a2, t3
                  la           sp, sub_2
                  addi         sp, sp, -236
                  addi         t4, s6, 110
main_j3:          jalr         s8, sp, 237 #jump main -> sub_2
                  la           a3, region_0+465 #start riscv_load_store_hazard_instr_stream_2
                  lb           s1, -6(a3)
                  sb           s9, -6(a3)
                  lb           t6, -6(a3)
                  lhu          t3, -7(a3)
                  lbu          a5, -7(a3)
                  ori          s6, s0, 2011
                  lhu          t2, -7(a3)
                  sub          s4, s6, a4
                  xori         s2, zero, 1923
                  sb           a0, -7(a3)
                  lh           a1, -7(a3)
                  lhu          a7, -15(a3)
                  add          t5, zero, s3
                  lh           a7, -15(a3)
                  lb           a5, -15(a3)
                  sh           t3, -15(a3)
                  lh           a2, -15(a3)
                  lbu          t1, -15(a3)
                  lb           gp, -15(a3)
                  lh           sp, -15(a3)
                  sb           t0, -15(a3)
                  lh           t6, -15(a3)
                  lb           a7, 8(a3) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1583 #start riscv_load_store_rand_instr_stream_2
                  sb           s6, -5(sp)
                  slti         s2, t3, -1960
                  sra          s3, a5, s4
                  addi         t5, s4, -1909
                  sb           tp, 4(sp)
                  and          a1, a2, a1
                  lb           zero, -16(sp)
                  or           s0, a1, t5
                  lb           s2, -16(sp)
                  addi         a5, s1, 1052
                  andi         a3, sp, 807
                  lbu          a7, 8(sp)
                  or           ra, t4, s0
                  sb           s7, 3(sp)
                  lhu          t6, -9(sp)
                  xori         t4, a6, -1822
                  lw           s7, -7(sp)
                  or           t3, ra, tp
                  lb           a0, 14(sp)
                  lbu          s4, 16(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+97 #start load_store_instr_stream_1
                  la           s4, region_0+530 #start load_store_instr_stream_0
                  sh           s2, 352(s4)
                  sh           a7, 749(t1)
                  la           s7, region_0+729 #start load_store_instr_stream_2
                  lh           t2, 1467(t1)
                  sb           t3, -176(s4)
                  sh           a2, 208(s4)
                  lh           s6, -123(s7)
                  lbu          zero, 1027(t1)
                  la           a5, region_0+587 #start load_store_instr_stream_3
                  lbu          t0, 31(s7)
                  lh           s2, 15(a5)
                  sb           ra, 694(t1)
                  lbu          s8, 326(t1)
                  sb           a5, 1231(s4)
                  lh           s0, -13(a5)
                  sh           sp, 65(s7)
                  lb           t4, 1544(t1)
                  sb           s0, 10(a5)
                  sh           s5, -3(a5)
                  lb           s2, 845(s4)
                  sb           a5, 14(a5)
                  lb           s9, -1(s7)
                  lw           t3, 1547(t1) #end load_store_instr_stream_1
                  lbu          s5, -4(a5) #end load_store_instr_stream_3
                  lhu          s0, -157(s7) #end load_store_instr_stream_2
                  sb           t1, -97(s4) #end load_store_instr_stream_0
                  la           t3, region_0+1953 #start riscv_load_store_hazard_instr_stream_1
                  lb           a3, -1628(t3)
                  sw           s1, -505(t3)
                  lb           s3, -1278(t3)
                  andi         t4, t0, -694
                  lbu          a1, -1644(t3)
                  sb           zero, -1644(t3)
                  lbu          a7, -1644(t3)
                  sb           tp, -1891(t3)
                  sb           a7, -1891(t3)
                  sb           t5, -1091(t3)
                  lb           ra, -1176(t3)
                  lbu          s3, -1176(t3)
                  sb           s9, -1176(t3) #end riscv_load_store_hazard_instr_stream_1
                  la           a7, region_0+43 #start load_store_instr_stream_0
                  la           sp, region_0+986 #start load_store_instr_stream_1
                  la           t4, region_0+1566 #start load_store_instr_stream_2
                  lhu          s7, 8(t4)
                  la           s4, region_0+1663 #start load_store_instr_stream_3
                  lb           a5, 212(a7)
                  lhu          s10, -42(sp)
                  lb           s9, 80(a7)
                  sb           s5, 119(s4)
                  lhu          a4, 139(a7)
                  sb           a4, -43(sp)
                  sb           t2, -1240(s4)
                  lb           s2, 208(a7)
                  lb           t6, 63(sp)
                  sb           a5, -7(t4)
                  sb           t5, -16(t4)
                  sh           s9, -18(sp)
                  lbu          a5, 255(s4)
                  lbu          t6, 40(t4)
                  lb           a0, 11(t4)
                  lb           s7, -386(s4)
                  lbu          s3, 49(t4)
                  lbu          t0, -28(sp)
                  lhu          a3, 24(t4) #end load_store_instr_stream_2
                  lbu          s8, -11(sp) #end load_store_instr_stream_1
                  sb           a4, 246(s4) #end load_store_instr_stream_3
                  sh           s5, 241(a7) #end load_store_instr_stream_0
                  la           a1, region_1+839 #start load_store_instr_stream_1
                  la           s4, region_1+1261 #start load_store_instr_stream_2
                  la           a7, region_1+1523 #start load_store_instr_stream_3
                  lbu          s8, 12(s4)
                  la           sp, region_1+1154 #start load_store_instr_stream_0
                  lbu          s7, -41(a7)
                  lbu          gp, 22(s4)
                  sb           s10, -46(a7)
                  sh           s9, -57(a7)
                  lbu          t1, -11(sp)
                  lb           s7, 1(sp)
                  lb           zero, 48(a7)
                  lbu          t6, 10(a1)
                  lhu          gp, 53(s4)
                  sb           a4, 8(a1)
                  lw           s2, 2(sp)
                  lw           s2, -15(a1)
                  sh           a2, 14(sp)
                  sw           tp, 53(a7)
                  lbu          t0, -4(a1)
                  lhu          gp, -45(a7)
                  lbu          t1, 24(s4)
                  sb           t5, -43(a7)
                  lbu          s9, -12(a1)
                  sh           sp, -16(sp)
                  lb           t1, 34(s4)
                  sb           a2, 16(a7)
                  lbu          s9, -6(sp)
                  lbu          a4, -58(s4)
                  sb           a3, -9(sp)
                  lb           zero, -5(sp)
                  lb           ra, -8(a7)
                  lbu          a4, -15(sp)
                  lw           t6, -19(a7) #end load_store_instr_stream_3
                  sh           s5, -31(s4) #end load_store_instr_stream_2
                  lhu          ra, -13(a1) #end load_store_instr_stream_1
                  lb           a0, 11(sp) #end load_store_instr_stream_0
                  la           s5, region_0+1245 #start riscv_load_store_rand_instr_stream_4
                  lb           s1, 33(s5)
                  slli         a5, s8, 5
                  lbu          s9, -20(s5)
                  xori         s7, s5, 1579
                  lbu          t2, -20(s5)
                  slti         t3, zero, -581
                  andi         a0, t6, 1152
                  auipc        t6, 1038104
                  sb           zero, -53(s5)
                  lb           a3, -59(s5)
                  lb           sp, 14(s5)
                  lbu          s2, 14(s5)
                  and          s3, gp, s9
                  slti         ra, tp, 1421
                  xori         s3, s3, 111
                  lw           t3, -17(s5)
                  sb           s4, 40(s5)
                  sw           a0, 39(s5)
                  lhu          s0, 5(s5)
                  lb           a5, -60(s5)
                  andi         a0, s7, -1035
                  lw           ra, 55(s5)
                  slli         s1, a6, 28
                  xori         t1, s10, -1617
                  sh           sp, -3(s5)
                  srli         a3, s7, 22
                  sb           t5, 45(s5)
                  or           a2, t0, s11
                  sub          a5, a6, a1
                  lb           s7, 16(s5)
                  lbu          s8, 54(s5)
                  ori          t0, t3, 1232
                  addi         a7, ra, -402
                  lb           a0, 10(s5)
                  sb           s10, -28(s5)
                  nop
                  sra          gp, ra, s5
                  lui          a2, 312848
                  srai         s3, a1, 2
                  nop
                  sll          s10, s3, s10
                  sw           t4, 31(s5)
                  lhu          a5, -47(s5)
                  slti         s4, s9, 386
                  srl          t0, a6, s5
                  lhu          t6, 25(s5)
                  lb           s0, 0(s5)
                  ori          t5, t1, 999
                  sw           s3, -37(s5)
                  auipc        a1, 761067
                  lbu          t4, -17(s5) #end riscv_load_store_rand_instr_stream_4
                  la           a5, region_0+1911 #start riscv_load_store_hazard_instr_stream_0
                  sh           t6, -539(a5)
                  xori         s8, t1, -780
                  sb           s2, -539(a5)
                  add          zero, s9, s2
                  lw           s8, -539(a5)
                  lh           s10, -539(a5)
                  or           t2, s0, s3
                  sw           t4, -539(a5)
                  lh           sp, -539(a5)
                  sw           a7, -539(a5)
                  sh           s5, -539(a5)
                  sra          zero, t5, s9
                  xori         s8, gp, -605
                  sw           s7, -539(a5)
                  lw           s0, -539(a5) #end riscv_load_store_hazard_instr_stream_0
                  la           a2, region_1+461 #start riscv_load_store_rand_instr_stream_0
                  lb           t4, -124(a2)
                  xor          s1, s0, s7
                  slt          t5, s6, ra
                  lbu          ra, -90(a2)
                  sb           s3, 0(a2)
                  lbu          s5, 54(a2)
                  sub          a5, s9, t3
                  lbu          s10, -112(a2)
                  lbu          s5, -28(a2)
                  srl          s6, s4, a4
                  lbu          t4, -104(a2)
                  lui          s1, 890794
                  lh           t4, -125(a2)
                  lb           sp, 0(a2)
                  lb           sp, 22(a2)
                  or           a1, ra, zero
                  sra          s10, s11, t3
                  or           s4, gp, tp
                  xori         a4, s3, -580
                  slti         a0, s9, -1920
                  sh           s6, -99(a2)
                  lb           a7, -132(a2)
                  nop
                  nop
                  and          sp, ra, ra
                  andi         s1, zero, 1449
                  lh           a5, 205(a2)
                  lbu          ra, -86(a2)
                  lbu          s0, -4(a2)
                  lb           a3, -227(a2)
                  srli         s7, t4, 23
                  lh           t5, 175(a2)
                  sb           t5, 187(a2)
                  lb           s2, -152(a2) #end riscv_load_store_rand_instr_stream_0
                  la           a1, region_0+575 #start load_store_instr_stream_1
                  la           s3, region_0+681 #start load_store_instr_stream_3
                  la           t5, region_0+1342 #start load_store_instr_stream_0
                  sh           tp, 8(t5)
                  lb           s7, -50(a1)
                  lb           a3, -16(t5)
                  sb           t4, -50(a1)
                  lbu          a4, 2(t5)
                  lbu          s0, -13(t5)
                  lhu          s7, -7(s3)
                  lbu          a7, -12(t5)
                  lb           s9, -20(a1)
                  la           s4, region_0+997 #start load_store_instr_stream_2
                  sw           a3, -6(t5)
                  sb           s6, -27(s4)
                  lb           s6, 14(s3)
                  lbu          t1, 6(t5)
                  lb           a5, 46(a1)
                  sh           sp, -3(s3)
                  lbu          s8, 44(s4)
                  lbu          t1, -227(a1)
                  lb           s0, -17(a1)
                  lbu          a2, -42(s4)
                  sb           s11, -122(a1)
                  lb           t3, 35(s4)
                  lb           s5, 0(a1)
                  sb           t3, -5(t5)
                  lb           sp, 2(s3)
                  lb           a2, 155(a1) #end load_store_instr_stream_1
                  sb           a4, -13(t5)
                  sw           s4, 23(s4)
                  sb           a2, -8(s3) #end load_store_instr_stream_3
                  lbu          s0, 27(s4) #end load_store_instr_stream_2
                  lbu          t2, 3(t5) #end load_store_instr_stream_0
                  la           sp, region_0+253 #start riscv_load_store_hazard_instr_stream_4
                  sb           s8, 838(sp)
                  sub          t5, s0, t5
                  lbu          zero, 838(sp)
                  lb           t3, 838(sp)
                  lb           s1, 838(sp)
                  sb           t3, 838(sp)
                  lb           s5, 838(sp)
                  lb           a1, 838(sp)
                  lbu          a5, 838(sp)
                  lbu          a4, 838(sp)
                  lb           ra, 838(sp)
                  lb           s9, 838(sp)
                  sll          t3, a0, a6
                  sub          s4, s4, t6
                  lbu          s0, 838(sp)
                  lh           a1, 939(sp)
                  lbu          s0, 939(sp)
                  sh           a6, 939(sp)
                  lhu          t6, 939(sp)
                  lw           s8, 939(sp)
                  sb           ra, 939(sp)
                  sw           s8, 939(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           t2, region_0+1002 #start load_store_instr_stream_3
                  la           gp, region_0+946 #start load_store_instr_stream_2
                  la           s8, region_0+9 #start load_store_instr_stream_1
                  la           t5, region_0+1314 #start load_store_instr_stream_0
                  lhu          a0, -82(t2)
                  sb           s10, 704(gp)
                  lbu          a3, 120(s8)
                  lw           s7, 106(t2)
                  lb           a4, 12(s8)
                  lhu          t3, 238(gp)
                  lbu          t6, 999(gp)
                  lbu          a2, 11(t5)
                  lbu          s7, 249(gp)
                  sb           s11, -893(t2)
                  lb           s0, 665(gp)
                  lb           s3, 62(s8)
                  lw           s3, -638(t2)
                  lbu          s3, -512(t2)
                  sb           s8, 13(t5)
                  lb           s4, 743(gp)
                  sb           sp, -6(t5)
                  sh           s1, 47(s8)
                  lhu          zero, 270(t2)
                  lbu          s3, 164(t2)
                  sb           s10, 12(t5)
                  lhu          t0, 0(gp) #end load_store_instr_stream_2
                  lhu          s2, 350(t2)
                  lbu          a7, 113(s8)
                  sb           t1, 933(t2)
                  sb           gp, -13(t5)
                  sw           tp, 131(s8) #end load_store_instr_stream_1
                  sb           s1, 579(t2) #end load_store_instr_stream_3
                  lb           t0, 11(t5) #end load_store_instr_stream_0
                  la           sp, region_1+287 #start riscv_load_store_rand_instr_stream_3
                  lbu          s10, 372(sp)
                  sw           a5, 1133(sp)
                  lw           gp, 389(sp)
                  andi         t6, t3, -1510
                  lb           s2, 1129(sp)
                  lbu          t1, 475(sp)
                  sltu         a0, s11, gp
                  nop
                  sb           s11, 1151(sp)
                  or           t5, s7, s6
                  lbu          s4, 102(sp)
                  lh           ra, 825(sp)
                  and          a0, s5, a1
                  lhu          a0, 437(sp)
                  auipc        a5, 273712
                  slt          t4, s9, a0
                  and          s7, s1, s9
                  srl          t1, a2, s0
                  srai         a7, s5, 25
                  lb           t5, -265(sp)
                  sh           s1, 1441(sp)
                  or           a0, s5, s10
                  sb           a2, 164(sp)
                  lb           ra, 294(sp)
                  lbu          s6, 1286(sp)
                  lb           t1, 1592(sp)
                  lhu          s6, 1467(sp)
                  slti         t4, a0, 1010
                  lh           ra, 657(sp)
                  lbu          t4, 1210(sp)
                  lb           a7, 1336(sp)
                  lb           a3, 982(sp)
                  add          t1, s9, t0
                  lb           s6, 806(sp)
                  srli         t1, ra, 30
                  lb           s7, 1048(sp)
                  nop
                  sb           a1, 472(sp)
                  nop
                  lui          s3, 886741
                  sb           ra, 490(sp)
                  lb           s10, 868(sp)
                  lb           s4, 1562(sp)
                  sltiu        t0, tp, 363
                  xori         a5, t5, -757
                  srli         s3, s2, 24
                  lb           s1, 1030(sp)
                  nop
                  lb           s9, 1438(sp) #end riscv_load_store_rand_instr_stream_3
                  blt          s8, zero, 18f
                  add          sp, s2, s4
                  auipc        s2, 379674
                  srai         a5, s4, 12
                  andi         s9, s5, -524
                  srl          t3, s8, t5
                  bne          a5, a1, 8f
                  ori          t2, s7, -575
8:                bne          s11, s1, 26f
                  bne          zero, s5, 13f
                  sub          sp, t0, a7
                  sra          a5, a7, s0
                  xor          s9, a4, a4
13:               bge          s10, t2, 28f
                  srl          ra, s11, gp
                  ori          ra, t5, -1272
                  sltiu        t2, gp, -1781
                  xor          s9, tp, a3
18:               bne          t6, s4, 29f
                  sltu         a0, s9, s7
                  or           gp, a0, s8
                  blt          zero, s8, 29f
                  add          t5, s8, ra
                  add          t6, t1, t3
                  addi         s8, t4, 1453
                  bgeu         t1, a4, 45f
26:               srli         a3, s10, 28
                  addi         s9, s0, -859
28:               or           t2, t2, s4
29:               bge          s2, s4, 32f
                  and          s5, s1, t5
                  sll          gp, gp, t6
32:               addi         s8, zero, -1658
                  nop
                  xori         t4, s7, 647
                  bne          s8, t3, 42f
                  or           s3, t2, t0
                  and          t5, s2, s3
                  or           s0, a2, s2
                  xor          t2, t6, t6
                  sltu         s10, a6, s6
                  slt          s7, t5, s3
42:               bltu         s2, s2, 44f
                  sub          a1, s9, s11
44:               bne          t4, a4, 62f
45:               srli         a3, s8, 15
                  lui          t6, 281693
                  slli         s5, s11, 31
                  blt          s4, s9, 68f
                  nop
                  slti         t4, s1, -1366
                  auipc        t1, 144302
                  auipc        s5, 930121
                  slt          a4, s2, s2
                  xor          s3, t4, a5
                  sub          a1, t6, t3
                  blt          s3, t0, 65f
                  add          t0, s1, t2
                  sltu         s5, s7, s8
                  srai         t0, a0, 26
                  bgeu         a0, t5, 76f
                  bltu         a5, a2, 63f
62:               slt          gp, gp, tp
63:               srli         s8, s5, 23
                  sub          t3, s11, a1
65:               nop
                  blt          s1, a2, 70f
                  srl          a7, gp, a0
68:               srai         ra, t2, 24
                  bltu         s4, s11, 89f
70:               and          a5, s11, a1
                  and          a1, s3, t6
                  srli         s6, tp, 20
                  bltu         t1, s0, 85f
                  sll          s6, tp, s3
                  ori          s0, a7, -1216
76:               and          a3, s4, s1
                  sra          t3, s9, a4
                  add          s1, s2, a1
                  slt          a7, a5, ra
                  xori         a3, t2, -1553
                  and          s2, zero, s7
                  slli         ra, a7, 28
                  bge          t4, s0, 91f
                  nop
85:               srli         a4, a3, 28
                  bne          a0, tp, 105f
                  ori          t2, s11, -378
                  bge          s6, a5, 98f
89:               and          s9, s5, s2
                  srl          t4, s8, s0
91:               xori         s8, a7, -1307
                  slt          gp, s4, s8
                  beq          s1, s0, 96f
                  and          ra, s8, t3
                  bltu         t0, a4, 101f
96:               addi         s2, s9, 226
                  sltu         a0, s6, a1
98:               slti         t2, t6, -502
                  add          s10, a7, s0
                  xori         zero, t0, 1190
101:              andi         s4, t5, 1567
                  add          a4, tp, s0
                  beq          s1, s10, 108f
                  sra          s1, a3, s8
105:              nop
                  sll          s3, a0, s11
                  lui          a2, 583913
108:              nop
                  addi         t4, s4, 1271
                  slli         s9, sp, 6
                  add          s9, a1, zero
                  slti         s7, a3, 624
                  addi         t0, tp, -1519
                  add          s10, t0, ra
                  sltiu        t1, gp, 1396
                  nop
                  slli         t4, sp, 15
                  xor          t3, s1, s6
                  beq          ra, s0, 133f
                  beq          t4, s5, 133f
                  sll          t4, a7, t6
                  sltiu        a3, t3, -475
                  blt          s8, sp, 136f
                  slti         sp, gp, -1727
                  or           s4, a3, a4
                  srai         s0, t4, 29
                  bgeu         zero, t1, 143f
                  xor          s7, a0, a3
                  or           s4, s3, s6
                  andi         gp, s0, 1822
                  sltu         s5, t1, gp
                  srl          a5, s9, s3
133:              nop
                  slti         s4, t0, -1370
                  blt          s9, a3, 150f
136:              xor          a1, a6, s5
                  sltu         a4, a7, s6
                  srl          s5, t1, s6
                  sltu         t6, s0, s9
                  slti         t4, a5, -697
                  auipc        t0, 311726
                  bge          a2, ra, 162f
143:              sll          t0, a1, zero
                  srli         s3, a5, 27
                  sltu         a5, t0, s4
                  bgeu         a7, s8, 149f
                  andi         t3, t2, -928
                  sll          a3, gp, s1
149:              slti         a7, s2, -646
150:              srl          a5, t6, sp
                  la           s3, sub_1
                  sll          a5, a0, s8
                  slli         s5, a0, 23
                  sub          a1, sp, a2
                  andi         s5, t3, 1146
                  ori          a5, a6, 1489
                  addi         s3, s3, -466
                  slti         a3, s9, 1454
                  add          gp, ra, a5
                  bltu         s2, t3, main_j1 #branch to jump instr
                  lui          s6, 233176
                  ori          t5, s5, -1618
                  xor          s10, s4, a0
main_j1:          jalr         s8, s3, 466 #jump main -> sub_1
                  beq          ra, s8, 162f
                  and          s4, s5, a6
                  slt          a2, a7, tp
                  beq          s9, a1, 170f
                  andi         a2, s6, -826
                  and          t4, s11, s7
                  sltu         a2, gp, s6
                  sll          t1, s2, s1
                  and          s8, a0, s11
                  lui          s10, 302913
                  and          s4, s10, s4
162:              blt          s7, a6, 170f
                  sra          t6, s2, t2
                  sll          a3, t2, s6
                  ori          gp, s1, -1919
                  slti         t3, a4, 251
                  blt          a2, t5, 172f
                  xor          s4, s6, t0
                  beq          t6, t5, 182f
170:              xori         zero, s1, 912
                  sra          t5, s4, t3
172:              sltu         a3, t2, t2
                  slt          sp, t0, t5
                  bne          t2, t5, 192f
                  or           a3, s11, s6
                  xor          t1, tp, t6
                  xori         s1, t1, -1106
                  add          ra, zero, a0
                  blt          s8, s5, 181f
                  bgeu         s9, s2, 198f
181:              sll          zero, a2, s11
182:              sltu         t1, t5, t3
                  bge          a4, ra, 187f
                  sra          s4, s5, s0
                  and          s7, s10, s5
                  addi         t4, s9, -1571
187:              srli         s9, t0, 16
                  blt          tp, a7, 206f
                  slli         zero, a6, 20
                  nop
                  bgeu         s3, t4, 203f
192:              addi         t3, t5, -1516
                  and          s5, a3, t5
                  slti         t5, s7, 261
                  sra          a1, a6, a2
                  srli         s1, t2, 19
                  ori          t0, s11, 3
198:              bltu         s0, zero, 208f
                  sll          a0, a5, t1
                  xor          a2, t6, s10
                  srl          t6, gp, s8
                  sltiu        s10, t6, -50
203:              addi         s9, s2, 2029
                  srai         s7, a7, 5
                  slti         a5, t1, -1105
206:              bltu         a7, zero, 219f
                  sra          a0, a7, gp
208:              slti         a5, s5, -1143
                  ori          t0, a4, -916
                  bge          a1, a7, 219f
                  sub          a5, s3, zero
                  srli         s2, a1, 13
                  blt          s6, a6, 220f
                  bge          a1, s7, 220f
                  sll          t3, a4, t6
                  xor          sp, s7, s7
                  srl          s0, a4, s0
                  sltiu        a3, s7, -1890
219:              slli         t2, t6, 17
220:              addi         t0, a5, 505
                  sltu         s5, zero, s1
                  bne          s9, sp, 238f
                  sub          t5, s6, ra
                  bltu         s4, s9, 239f
                  xori         t1, s3, -859
                  bne          a0, t3, 240f
                  blt          s5, t3, 235f
                  slli         s8, sp, 9
                  andi         ra, sp, -1015
                  srli         s4, s4, 11
                  slt          s8, tp, s2
                  slli         s3, s6, 8
                  beq          t1, sp, 252f
                  sra          t5, a4, t3
235:              ori          t1, s5, 87
                  srli         s6, s5, 10
                  add          s0, t0, s0
238:              slt          t3, gp, a5
239:              srai         sp, s7, 28
240:              bltu         s7, gp, 242f
                  sra          zero, s5, s2
242:              xori         zero, tp, -1416
                  srai         t4, s8, 4
                  xor          t1, s6, t6
                  andi         s3, t2, -1907
                  slli         a4, a4, 22
                  ori          s9, t6, -2004
                  blt          t3, t4, 268f
                  or           a3, a1, s11
                  sub          zero, s8, t4
                  auipc        s2, 582428
252:              lui          a3, 11059
                  and          gp, a6, s9
                  lui          s8, 835407
                  bne          s2, s1, 257f
                  slti         t3, t4, -843
257:              sll          t1, t4, s0
                  slti         a5, s9, 1320
                  sub          ra, a0, s11
                  sll          t6, a5, gp
                  xor          a0, s9, s6
                  sltiu        a7, s7, 484
                  nop
                  xor          a3, zero, t3
                  lui          s4, 973325
                  bgeu         a4, ra, 269f
                  slt          s4, s11, s7
268:              bgeu         sp, t3, 272f
269:              ori          t5, s7, -1997
                  slli         a3, t4, 12
                  la           sp, region_0+290 #start riscv_load_store_hazard_instr_stream_3
                  lbu          t2, 18(sp)
                  lb           a2, 25(sp)
                  sb           a4, 25(sp)
                  slli         s0, t6, 8
                  lb           gp, 25(sp)
                  lb           s9, 14(sp)
                  sb           s7, -11(sp)
                  sltu         a4, a2, s10
                  sb           a3, -47(sp)
                  srl          s2, tp, t6
                  sb           a2, 41(sp)
                  slt          t2, t6, s10
                  lh           t6, -42(sp)
                  and          t0, a6, s9
                  slt          a4, t5, t1
                  lh           t0, -42(sp)
                  lhu          ra, -36(sp)
                  sw           s2, 10(sp)
                  lbu          s3, 46(sp)
                  sb           a1, 42(sp) #end riscv_load_store_hazard_instr_stream_3
                  srli         s2, t0, 1
272:              addi         t4, s11, -884
                  slti         s2, a1, 490
                  auipc        a7, 659396
                  srli         t1, a2, 22
                  sll          t6, tp, a7
                  srai         s0, tp, 4
                  slt          t0, t1, s3
                  addi         s8, s7, -1979
                  sra          s3, tp, a1
                  slt          t4, a4, a6
                  sll          t5, a7, t6
                  lui          t5, 863644
                  xori         zero, a1, -1430
                  auipc        s8, 914418
                  sltu         s6, s4, s6
                  bgeu         t6, gp, 302f
                  sll          t2, a7, ra
                  lui          a1, 748465
                  slti         s3, a4, -1688
                  auipc        s9, 689274
                  sltu         a7, s1, a1
                  srli         a2, ra, 9
                  srl          zero, a7, gp
                  sra          s2, s8, s0
                  sra          ra, s0, a5
                  xor          t1, t3, a7
                  auipc        ra, 714603
                  blt          a1, s8, 319f
                  xor          a3, a1, a7
                  xori         t2, t4, -505
302:              sub          s2, t2, gp
                  or           s6, s4, s3
                  bgeu         zero, t1, 310f
                  lui          zero, 588967
                  srl          t5, t1, s6
                  srai         t5, s11, 20
                  sltu         t1, s7, s4
                  blt          s0, ra, 322f
310:              andi         t4, t5, -1325
                  sll          t1, s8, s3
                  sra          s3, t0, t6
                  or           t6, t1, t0
                  nop
                  beq          s10, t5, 328f
                  srai         s3, t3, 5
                  ori          a3, t2, -555
                  add          sp, a6, s10
319:              ori          s5, tp, 1165
                  auipc        t0, 236339
                  bge          s3, t1, 336f
322:              srai         t1, a5, 21
                  sra          a4, s8, s9
                  slt          a3, s10, ra
                  lui          t5, 237823
                  sub          gp, s3, s1
                  auipc        t2, 540567
328:              slt          a7, zero, t1
                  srl          t5, t3, a3
                  sltu         s9, s10, s9
                  andi         s6, gp, -2025
                  or           t0, t0, s7
                  beq          t1, a3, 349f
                  slti         s0, a2, 1692
                  blt          t0, s2, 353f
336:              ori          gp, a2, 458
                  sltu         s5, s5, ra
                  bltu         t4, a4, 341f
                  sll          a7, a3, t2
                  bne          s9, s3, 342f
341:              sub          s3, s9, gp
                  la           t1, region_1+1140 #start riscv_load_store_rand_instr_stream_1
                  sb           t6, 179(t1)
                  sh           t3, -170(t1)
                  sb           s11, -27(t1)
                  lb           s2, -649(t1)
                  sra          s6, t1, a6
                  sltu         s7, s3, a3
                  lb           s8, -345(t1)
                  addi         a0, zero, 1558
                  lb           s10, -827(t1)
                  nop
                  sb           s1, -868(t1)
                  sh           a7, -1130(t1)
                  sltu         s9, a0, a3
                  sra          s1, t1, s9
                  lbu          t3, -806(t1)
                  auipc        s3, 409001
                  sh           s9, -518(t1)
                  lb           s7, 114(t1)
                  sh           s3, -784(t1)
                  auipc        t5, 719877
                  sb           tp, -143(t1)
                  lbu          t5, -140(t1)
                  and          s1, t6, a7
                  lbu          s6, -427(t1)
                  sb           a0, 93(t1)
                  lhu          a1, -326(t1)
                  lbu          a7, 405(t1)
                  lw           t6, -308(t1)
                  lbu          s9, 492(t1)
                  sb           a2, 569(t1)
                  srai         s1, ra, 29
                  lb           t2, 7(t1)
                  lb           s10, 721(t1)
                  sb           t0, -670(t1)
                  lw           t3, -532(t1)
                  sb           s5, 641(t1)
                  lb           s2, 97(t1)
                  lb           t0, 829(t1)
                  andi         t0, s10, 1452
                  sb           s9, -157(t1)
                  lbu          s1, -667(t1) #end riscv_load_store_rand_instr_stream_1
342:              ori          t6, t4, -367
                  sltiu        s0, s2, 2001
                  srl          s3, t6, a5
                  beq          s8, s6, 348f
                  blt          t6, t6, 351f
                  xori         a1, t1, -260
348:              or           s9, gp, s5
349:              addi         sp, s1, -1757
                  lui          a0, 328987
351:              xor          t1, s0, s11
                  andi         ra, s2, 925
353:              xori         sp, s5, -1438
                  ori          t0, t2, -1043
                  beq          tp, tp, 373f
                  blt          s2, a4, 360f
                  blt          s3, s10, 372f
                  slti         a1, t1, 1037
                  bgeu         a4, s4, 361f
360:              sll          t2, s2, s8
361:              slli         s0, t5, 12
                  xor          s3, s4, a3
                  bltu         a1, t3, 375f
                  bltu         a5, s11, 375f
                  srli         t3, zero, 0
                  sltiu        a4, s4, -936
                  slti         a3, t0, 1056
                  slti         a3, a5, -378
                  or           a2, ra, s11
                  srl          ra, a5, a2
                  blt          t2, a5, 390f
372:              slli         a3, a3, 28
373:              bgeu         s6, s11, 387f
                  xori         s1, a5, 1514
375:              srli         sp, s0, 8
                  xor          s6, s9, a4
                  lui          s3, 589653
                  bne          t0, t1, 394f
                  slli         t4, s8, 28
                  lui          a0, 900807
                  srli         a7, s10, 31
                  sll          zero, t4, gp
                  sltu         a5, s10, s9
                  bltu         a4, s4, 392f
                  bltu         a1, a5, 394f
                  bltu         t5, s2, 406f
387:              and          t3, a5, t1
                  la           t2, sub_1
                  addi         a3, s7, -345
                  or           zero, ra, gp
                  addi         zero, s3, 1889
                  addi         t2, t2, 660
                  srli         s5, t6, 6
                  bge          sp, t0, main_j2 #branch to jump instr
                  srl          a7, t4, a2
main_j2:          jalr         s8, t2, -659 #jump main -> sub_1
                  srli         s7, t6, 30
                  sra          a7, s6, s8
390:              nop
                  bge          a2, s7, 395f
392:              slli         s7, a7, 21
                  bne          gp, sp, 411f
394:              add          gp, a4, t2
395:              sll          s3, a7, s9
                  slli         s1, t1, 5
                  blt          t6, t2, 405f
                  bgeu         gp, s1, 418f
                  addi         a7, a2, -32
                  slli         s7, a6, 14
                  bltu         a5, zero, 408f
                  slti         s3, a4, 1203
                  addi         s1, s0, 481
                  lui          t1, 640626
405:              andi         s0, a0, 1675
406:              srai         t4, s9, 6
                  bgeu         t4, t6, 417f
408:              bltu         s6, s0, 410f
                  beq          s5, a7, 429f
410:              sra          s0, a6, t5
411:              andi         s3, s9, -615
                  xor          s1, s7, a1
                  or           s0, a2, t3
                  sll          t5, s2, s11
                  and          t1, a4, t3
                  nop
417:              sltiu        t4, a7, -1331
418:              auipc        zero, 564580
                  bgeu         s2, a3, 423f
                  sra          ra, s6, t3
                  xor          a2, s7, s10
                  lui          a4, 462623
423:              andi         s1, s11, 936
                  slti         t5, t4, 1675
                  sltu         a5, s7, t6
                  addi         t6, s8, 1129
                  srai         t4, t6, 14
                  nop
429:              srl          s0, a2, s8
                  andi         gp, a1, -955
                  blt          s3, gp, 445f
                  blt          t0, a4, 452f
                  add          t5, a0, a6
                  andi         t1, s7, 1197
                  srai         t5, s5, 18
                  addi         a0, gp, 768
                  sltu         t1, ra, gp
                  addi         a1, a0, 1897
                  or           s3, t3, tp
                  bne          tp, t5, 459f
                  ori          s5, s0, 260
                  beq          a0, s4, 444f
                  bgeu         s7, s3, 463f
444:              nop
445:              sub          gp, s2, a4
                  sra          sp, s5, s4
                  andi         zero, gp, 419
                  nop
                  ori          sp, a0, -1193
                  sra          a4, a4, t5
                  sll          s9, a3, t3
452:              sltu         s6, t4, s0
                  add          a7, s11, s4
                  slti         s6, s3, 546
                  or           a2, a6, t0
                  nop
                  xor          s5, s8, s1
                  bne          s0, gp, 468f
459:              or           a1, s6, t0
                  srai         t4, a1, 31
                  slti         sp, a4, 1785
                  slli         s3, sp, 9
463:              auipc        a2, 911462
                  sltu         s1, a2, t6
                  srl          gp, a6, s2
                  and          a2, sp, s3
                  sub          ra, s5, zero
468:              andi         a7, tp, 2000
                  xor          t1, a1, s5
                  sltu         a5, s9, a5
                  sltiu        t3, s1, -1168
                  addi         ra, zero, -77
                  ori          s6, a7, 774
                  xor          s8, a7, s1
                  xor          s7, t6, s8
                  ori          s1, s8, 198
                  srai         a0, a3, 24
                  add          s1, s11, s0
                  srl          t1, ra, a2
                  slli         s2, s4, 9
                  srai         s4, a5, 11
                  slli         a7, s7, 14
                  xori         a5, a0, -1976
                  or           a1, sp, a3
                  sll          a4, a1, s5
                  andi         s7, s10, 443
                  xori         a0, a7, -1015
                  xor          t1, a4, s10
                  addi         t6, tp, 25
                  slti         t6, t6, -715
                  addi         s4, s11, 236
                  andi         ra, ra, 132
                  and          s1, a6, s7
                  sltu         gp, t6, t4
                  sll          s2, s6, a1
                  beq          s3, t0, 501f
                  slti         s4, s1, 1817
                  blt          s10, a7, 513f
                  auipc        t0, 899642
                  sltiu        t6, a0, -548
501:              addi         s3, a6, 1227
                  xor          zero, s4, t6
                  nop
                  sltu         gp, s7, s6
                  srl          zero, s5, t3
                  add          a1, s6, a2
                  or           zero, a3, s1
                  beq          s7, s4, 520f
                  bge          s8, t1, 523f
                  srai         s5, s7, 5
                  slti         a0, s0, 1987
                  bne          s9, s8, 514f
513:              slt          s5, t6, s2
514:              sltu         a2, s10, t2
                  and          s7, a7, s4
                  sra          t0, a4, s2
                  sltiu        a3, s11, -812
                  and          a0, s0, tp
                  and          s1, s8, t6
520:              and          t3, zero, a3
                  and          a4, tp, a2
                  sltiu        gp, s2, -1571
523:              srli         ra, s1, 7
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sltu         s9, t2, a4
                  beq          s7, a6, sub_1_stack_p
sub_1_stack_p:    addi         tp, tp, -36
                  sub          a2, ra, s5
                  sw           s8, 4(tp)
                  sub          t2, ra, gp
                  la           s3, region_1+74 #start load_store_instr_stream_2
                  la           sp, region_1+1224 #start load_store_instr_stream_3
                  la           gp, region_1+794 #start load_store_instr_stream_1
                  sb           a3, 5(s3)
                  lb           a0, 13(s3)
                  sh           s8, -776(gp)
                  sb           s8, -9(sp)
                  lbu          s2, -11(sp)
                  lbu          ra, -1(s3)
                  sb           a0, -7(s3)
                  sb           s5, 11(s3)
                  lbu          s0, 164(gp)
                  la           a1, region_1+1034 #start load_store_instr_stream_0
                  lbu          s8, 14(sp)
                  sb           t6, 775(gp)
                  lb           s1, 1014(gp)
                  lhu          s10, 6(s3)
                  lhu          a7, -450(gp)
                  lb           a3, 67(a1)
                  lb           s4, 5(s3)
                  lb           t0, 14(s3)
                  lh           s2, 1120(gp) #end load_store_instr_stream_1
                  lbu          t5, 10(sp)
                  lbu          t0, 49(sp)
                  lb           s8, -9(s3) #end load_store_instr_stream_2
                  sb           s0, -1(sp) #end load_store_instr_stream_3
                  lbu          s5, 185(a1)
                  lw           s6, -74(a1)
                  lbu          s6, -148(a1)
                  sb           s9, -139(a1) #end load_store_instr_stream_0
                  la           a7, region_1+1873 #start riscv_load_store_rand_instr_stream_0
                  slt          a0, sp, s0
                  nop
                  sra          t1, s8, t1
                  srl          a1, s1, s4
                  slti         t1, a6, -1853
                  slti         t4, s1, 1525
                  lb           ra, -44(a7)
                  lh           zero, -27(a7)
                  sll          a5, t1, t6
                  ori          t3, t1, 484
                  sb           s2, 58(a7)
                  lh           t5, -49(a7)
                  sb           t3, -54(a7)
                  lbu          t3, 4(a7)
                  lb           zero, -18(a7)
                  add          t2, a3, s1
                  sh           sp, 59(a7)
                  sb           s3, 0(a7)
                  lb           gp, -47(a7)
                  and          s10, t2, s7
                  srai         s10, t3, 2
                  lb           sp, -16(a7)
                  lhu          ra, 43(a7)
                  sb           s3, 59(a7)
                  srli         t3, s7, 3
                  sb           zero, -39(a7) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+1534 #start load_store_instr_stream_2
                  la           a5, region_1+1123 #start load_store_instr_stream_4
                  la           t4, region_1+278 #start load_store_instr_stream_0
                  lhu          ra, -2(t3)
                  la           s7, region_1+899 #start load_store_instr_stream_3
                  la           a7, region_1+880 #start load_store_instr_stream_1
                  lb           t2, 725(t4)
                  lw           ra, 794(t4)
                  lb           a3, 730(a5)
                  lbu          t6, 2(s7)
                  lb           zero, 70(a7)
                  sw           s10, 80(a7)
                  lhu          s4, -3(s7)
                  lbu          zero, 172(a7)
                  sb           s9, 853(a5)
                  lb           t2, -15(t3)
                  lbu          t1, -48(s7)
                  lbu          s0, -14(t4)
                  lbu          s3, 915(t4)
                  lbu          a1, -13(t3)
                  lb           s0, 0(s7)
                  lh           s4, 82(a7)
                  lbu          s5, 28(s7)
                  sh           t2, 591(a5)
                  lh           s8, 86(a7)
                  sh           a1, -9(s7)
                  lbu          s10, -24(a5)
                  lb           t2, 3(t3)
                  lbu          zero, -52(s7)
                  lbu          t5, -9(t3)
                  lb           t1, 800(a5)
                  sh           s9, -2(t4)
                  sb           s11, 57(a7) #end load_store_instr_stream_1
                  lh           ra, -91(a5)
                  lb           s1, 55(s7) #end load_store_instr_stream_3
                  sb           a7, -16(t3)
                  lb           s5, -6(t3) #end load_store_instr_stream_2
                  lbu          a3, 1251(t4)
                  lhu          t2, 900(t4)
                  sb           tp, 86(a5) #end load_store_instr_stream_4
                  sb           tp, 284(t4) #end load_store_instr_stream_0
                  la           a1, region_1+20 #start riscv_load_store_rand_instr_stream_1
                  andi         t4, s5, -1896
                  add          t6, s5, t3
                  lbu          a5, 155(a1)
                  sb           s10, 45(a1)
                  lb           a3, 179(a1)
                  sub          s8, a0, t4
                  lui          s4, 843290
                  lbu          a4, 115(a1)
                  sb           t4, 12(a1)
                  sh           a2, 208(a1)
                  addi         a3, s2, -455
                  sb           s0, 131(a1)
                  lbu          sp, 113(a1)
                  srai         s8, zero, 13
                  nop
                  srai         ra, a6, 18
                  sb           tp, 103(a1)
                  or           sp, zero, a4
                  sb           tp, 151(a1)
                  lui          s10, 26184
                  xor          s8, s1, t4
                  sw           s7, 76(a1)
                  lb           a5, 200(a1)
                  lb           s0, 139(a1)
                  lui          t4, 814627
                  lbu          t3, 40(a1)
                  lh           ra, 174(a1)
                  lhu          t5, 70(a1)
                  andi         sp, t1, 849
                  slli         s8, t0, 30
                  or           ra, s3, a0
                  lbu          a4, 12(a1)
                  lbu          a4, 236(a1)
                  sh           s10, 218(a1)
                  lbu          t1, 104(a1)
                  sb           ra, 239(a1)
                  lui          s10, 689694
                  and          s4, a7, a2
                  lb           s6, 139(a1)
                  sh           a2, 46(a1)
                  lb           gp, 16(a1)
                  sra          s1, s3, a3
                  lui          t6, 651486
                  sb           t4, 49(a1)
                  lhu          t3, 26(a1)
                  slti         s1, a2, 1476
                  srl          s5, t2, t5
                  slt          a4, t3, tp
                  sll          s5, s7, s2
                  sra          t2, s9, s6
                  sb           s2, 199(a1)
                  nop
                  lhu          t1, 212(a1)
                  sll          t3, t6, t3
                  lb           s2, 118(a1)
                  sw           a3, 236(a1) #end riscv_load_store_rand_instr_stream_1
                  auipc        s10, 696942
                  sltiu        t0, t3, 1907
                  andi         s3, s0, 843
                  slti         s10, a3, 1220
                  slt          s7, t0, zero
                  lui          t2, 1010901
                  sltu         a0, s8, s8
                  beq          s7, s3, 22f
                  sltiu        a5, t6, 687
                  andi         a0, t5, -1639
                  and          s8, t6, zero
                  srli         s9, s10, 0
                  nop
                  srl          t2, t6, t6
                  xor          a2, zero, s3
                  blt          a6, gp, 17f
                  addi         a0, t4, -891
17:               srl          s1, a6, a4
                  auipc        s7, 876067
                  bltu         a7, t1, 32f
                  auipc        t1, 880236
                  srli         a1, s2, 29
22:               xori         s8, t5, 968
                  xori         a3, s7, -1520
                  sub          s9, a1, a3
                  auipc        t0, 251485
                  sltiu        a1, a2, 1026
                  slt          sp, a7, t6
                  slt          s6, s0, a2
                  xori         t2, s6, -2041
                  slti         s9, zero, 1970
                  add          s5, a7, t1
32:               bge          a0, s10, 52f
                  srli         a1, t6, 25
                  slli         a3, sp, 10
                  addi         s5, tp, 533
                  andi         ra, s4, -146
                  blt          t0, t4, 47f
                  sll          a2, s11, a7
                  srli         a3, s2, 7
                  add          t0, s0, s0
                  sub          sp, t2, a6
                  sltu         t5, s1, zero
                  srli         s2, zero, 2
                  lui          s10, 804975
                  xor          s9, s4, ra
                  srli         s6, a4, 29
47:               slt          s6, s9, tp
                  addi         s0, a6, -1419
                  slt          s4, s0, t3
                  slt          ra, t6, zero
                  and          s6, s4, a5
52:               bge          a2, gp, 57f
                  xor          s0, t0, a2
                  andi         s9, s6, 1641
                  blt          t0, sp, 63f
                  addi         s5, t4, -1233
57:               slli         s5, s0, 5
                  srl          a5, s0, t0
                  andi         s10, t1, -1268
                  xori         s3, zero, -769
                  slti         s4, t3, 452
                  andi         t3, ra, 1265
63:               bgeu         s10, gp, 72f
                  auipc        a0, 603926
                  sltiu        a7, s6, 1224
                  srl          a4, ra, ra
                  lui          t6, 660590
                  auipc        a3, 34091
                  srl          gp, t3, zero
                  sra          ra, s4, s3
                  nop
72:               sll          gp, s2, t1
                  bne          gp, a5, 93f
                  lui          s2, 882348
                  slli         s6, t4, 11
                  ori          a1, sp, -1269
                  srai         s6, a5, 27
                  sll          s0, t1, t1
                  add          s9, zero, a0
                  beq          tp, t6, 91f
                  srl          s3, s2, a4
                  bne          a1, a5, 86f
                  srl          s6, s7, ra
                  xor          s0, t6, s2
                  slli         gp, s6, 16
86:               nop
                  bge          a1, a5, 94f
                  sll          t5, s8, a6
                  bge          s0, t1, 90f
90:               sub          a0, s1, zero
91:               srli         s9, t0, 3
                  bne          s5, sp, 109f
93:               bne          a3, t4, 105f
94:               bltu         ra, tp, 106f
                  bgeu         s5, a1, 99f
                  slti         s10, s3, -387
                  sll          s5, s3, a0
                  slti         gp, a6, -1413
                  la           sp, region_1+1934 #start riscv_load_store_hazard_instr_stream_1
                  lb           t6, -25(sp)
                  sb           a0, -25(sp)
                  lb           s1, -25(sp)
                  lb           s5, -25(sp)
                  lbu          s7, 31(sp)
                  lb           s6, 31(sp)
                  lh           s6, 38(sp)
                  sh           gp, 38(sp)
                  lhu          gp, 38(sp)
                  sb           t1, -23(sp)
                  or           s8, t1, a0
                  lb           s7, -23(sp)
                  lb           a5, -23(sp)
                  lh           gp, -38(sp)
                  lhu          s10, -38(sp)
                  sw           s8, -38(sp)
                  sw           t2, -38(sp)
                  lh           s5, 32(sp)
                  sb           t0, -13(sp)
                  lb           a0, -19(sp)
                  lbu          s10, -63(sp) #end riscv_load_store_hazard_instr_stream_1
99:               sltiu        t2, s11, 352
                  sltiu        s3, t1, -1188
                  slti         t6, s10, 1421
                  slt          sp, s0, s0
                  srai         s3, sp, 19
                  bltu         a5, a4, 107f
105:              sltiu        a4, s10, -29
106:              bge          tp, s9, 122f
107:              bge          s3, s8, 110f
                  xor          zero, gp, ra
109:              and          a3, t0, a0
110:              slti         zero, sp, -1319
                  bgeu         s5, a3, 127f
                  bltu         s10, t5, 115f
                  slli         t0, zero, 10
                  srl          s0, t1, a6
115:              slli         s7, gp, 26
                  srl          s8, t0, a7
                  srli         t6, a0, 21
                  slt          s10, a7, s2
                  srli         ra, a1, 2
                  sra          a7, tp, s3
                  sub          t6, s7, a7
122:              or           a2, t4, t3
                  sll          a5, zero, tp
                  srl          zero, s9, s5
                  sra          t1, t2, s5
                  and          t0, s7, t3
127:              bgeu         s6, t1, 144f
                  bltu         s4, gp, 142f
                  nop
                  auipc        a1, 833748
                  slli         s8, a3, 25
                  andi         a2, s5, -934
                  slti         s9, a3, 1855
                  bgeu         tp, sp, 147f
                  addi         a1, zero, -1502
                  slli         t6, a2, 1
                  or           s5, s6, sp
                  lui          gp, 157072
                  andi         t1, sp, 496
                  bgeu         s11, a7, 154f
                  sll          s5, s2, t5
142:              srli         t1, s11, 10
                  srl          s3, s5, a7
144:              nop
                  auipc        a5, 265587
                  bne          s3, s2, 160f
147:              andi         s10, sp, 973
                  ori          t3, t6, -1132
                  sltu         s9, a6, s7
                  ori          t1, s0, -1912
                  andi         s2, a1, -510
                  bltu         s8, a0, 159f
                  blt          a0, a6, 165f
154:              andi         t6, a1, -950
                  sltu         zero, s3, a6
                  beq          s11, s4, 175f
                  ori          a0, s1, -1747
                  bltu         s9, s9, 172f
159:              xor          s4, t3, a5
160:              beq          s3, t3, 161f
161:              srl          s9, s8, a2
                  srl          s10, tp, t2
                  blt          a7, s6, 176f
                  sltiu        t2, a6, 1998
165:              and          gp, s9, s1
                  nop
                  or           a0, a2, a3
                  or           s0, t4, t0
                  bltu         ra, s8, 181f
                  xori         zero, a3, 339
                  and          s2, s5, s10
172:              or           s4, s3, s5
                  bge          a7, s0, 183f
                  ori          sp, t6, -499
175:              xor          t1, ra, s3
176:              or           t0, t0, t4
                  srai         a4, t1, 18
                  xori         t3, s1, -1137
                  srl          a3, s11, s7
                  xor          t0, t6, a2
181:              sub          a1, a4, gp
                  xori         s7, ra, 272
183:              blt          s2, s5, 203f
                  bgeu         t3, s0, 187f
                  addi         sp, t6, -522
                  slti         s8, s7, -1990
187:              bltu         t2, a2, 203f
                  bge          s7, a7, 192f
                  sll          sp, t3, t1
                  bgeu         s8, s11, 194f
                  blt          a5, s8, 211f
192:              andi         s5, t6, -503
                  sltu         t5, gp, s10
194:              add          gp, s3, ra
                  sll          gp, zero, s9
                  sll          t4, a7, t4
                  srai         zero, a0, 31
                  or           a5, s9, t5
                  or           t6, s10, t0
                  slli         s6, s5, 28
                  slli         s2, s6, 29
                  slt          a3, s6, a0
203:              xor          a5, t5, s5
                  lui          a2, 24243
                  sub          s3, ra, s11
                  addi         a5, a6, -1601
                  slt          a2, a0, a7
                  bgeu         s6, tp, 215f
                  sub          t3, a7, gp
                  lui          t1, 440963
211:              andi         a1, a2, 1483
                  blt          s4, a7, 223f
                  srli         t5, s3, 8
                  xori         t4, t5, 1744
215:              bne          gp, s6, 224f
                  bne          tp, ra, 229f
                  beq          a5, s1, 220f
                  lui          s9, 503170
                  xor          s0, a6, a6
220:              bne          zero, a3, 237f
                  sll          t6, sp, a5
                  sltu         a3, s11, a0
223:              nop
224:              add          a7, t3, t6
                  or           s10, a3, s6
                  addi         s7, t3, 1296
                  blt          sp, s4, 246f
                  sub          t4, s3, a3
229:              slli         a1, s5, 30
                  bne          s6, s1, 244f
                  sll          ra, a0, s0
                  bltu         t2, a2, 248f
                  srai         s7, t6, 30
                  add          a3, a1, gp
                  slli         a7, a6, 4
                  sll          s2, s2, a4
237:              bge          t0, s7, 251f
                  beq          t6, t4, 246f
                  auipc        s6, 938623
                  add          gp, gp, sp
                  sub          zero, s3, s11
                  srai         s5, a0, 24
                  xori         s4, s10, 878
244:              srai         ra, sp, 26
                  slli         t1, t1, 1
246:              bne          sp, t3, 258f
                  andi         a2, s1, 552
248:              sub          t0, s8, s0
                  nop
                  srai         s4, s11, 27
251:              srl          t0, gp, t4
                  bne          s6, a5, 264f
                  bgeu         t0, a6, 258f
                  andi         s0, t2, -1620
                  bne          t6, s11, 262f
                  sll          a7, zero, ra
                  bgeu         s11, a2, 274f
258:              auipc        a2, 275721
                  andi         t3, s11, -621
                  or           s8, gp, a1
                  srai         a2, a1, 2
262:              and          t5, t2, a1
                  srl          t3, gp, s3
264:              xori         s5, s7, -585
                  bltu         s11, t1, 267f
                  slli         s1, s9, 10
267:              addi         s0, a5, -760
                  add          t0, a6, s4
                  or           s3, zero, gp
                  addi         s1, s6, 24
                  slti         ra, s4, -636
                  beq          t4, s6, 275f
                  or           t2, s0, gp
274:              nop
275:              sra          s8, t6, s4
                  xor          ra, ra, s8
                  sll          s9, t3, s5
                  sltu         s9, a3, t0
                  bgeu         a6, s9, 293f
                  slt          t3, t1, t1
                  srl          s10, s7, s7
                  sltu         ra, t4, s0
                  sra          t1, t0, t3
                  sra          a3, a7, t3
                  nop
                  sra          t3, s11, s9
                  la           t3, region_0+1953 #start riscv_load_store_hazard_instr_stream_0
                  sb           s11, 14(t3)
                  lb           s3, 14(t3)
                  lb           s1, -8(t3)
                  sb           s6, 25(t3)
                  sltu         s5, t4, s8
                  slt          a7, a3, t5
                  lb           t4, 46(t3)
                  sb           s0, 16(t3)
                  sb           a0, 16(t3)
                  lbu          s1, -44(t3)
                  sb           s9, -12(t3)
                  lhu          t0, 13(t3)
                  lhu          s2, 13(t3)
                  slt          a3, a3, a2
                  lb           s0, 13(t3)
                  slt          t6, s7, t0
                  sra          s0, a2, s10
                  sb           gp, 13(t3)
                  xor          sp, a4, a1
                  lh           t2, 13(t3)
                  lb           t6, -29(t3)
                  nop
                  sh           s8, -29(t3)
                  lb           a7, -33(t3) #end riscv_load_store_hazard_instr_stream_0
                  bgeu         s3, s10, 292f
                  lui          s8, 549253
                  srai         t1, t3, 20
                  srl          t6, t1, a1
                  nop
292:              beq          a0, a5, 293f
293:              lui          a2, 759398
                  sll          s1, zero, s8
                  lw           s8, 4(tp)
                  sll          t2, a2, gp
                  or           s0, a5, s9
                  addi         tp, tp, 36
                  slli         ra, s1, 20
508:              addi x12, x24, 1
508:              jalr x12, x12, 0
sub_2:            addi         tp, tp, -44
                  lui          s9, 510301
                  slt          a1, s8, s6
                  sltu         zero, a6, gp
                  slt          a3, tp, a1
                  sw           s8, 4(tp)
                  sra          s10, sp, gp
                  sltiu        t3, t6, -1092
                  la           a2, region_0+299 #start load_store_instr_stream_3
                  la           a0, region_0+1205 #start load_store_instr_stream_0
                  lhu          zero, 7(a2)
                  lbu          s9, -8(a0)
                  la           t4, region_0+656 #start load_store_instr_stream_1
                  la           gp, region_0+509 #start load_store_instr_stream_2
                  lbu          s3, 234(gp)
                  lw           s6, 439(a0)
                  sb           t6, -149(t4)
                  sb           s10, 16(a2)
                  lbu          s9, -1188(a0)
                  lb           a4, 10(a2)
                  sb           t4, -2(a2)
                  sb           ra, 241(gp)
                  lbu          a5, -68(gp)
                  sb           s7, -208(t4)
                  lbu          a1, -15(a2)
                  lw           t6, -205(gp)
                  lbu          sp, 67(t4)
                  lb           t0, -860(a0)
                  sb           a2, -52(gp)
                  lbu          sp, -653(a0)
                  lbu          zero, -156(a0)
                  lbu          s8, 62(t4)
                  lhu          a1, -15(a2) #end load_store_instr_stream_3
                  lbu          a7, -214(t4)
                  lb           s8, -43(t4)
                  lbu          s0, 357(a0)
                  sb           a4, -161(t4) #end load_store_instr_stream_1
                  lb           s2, -116(gp) #end load_store_instr_stream_2
                  lbu          t1, -170(a0) #end load_store_instr_stream_0
                  la           sp, region_1+1667 #start riscv_load_store_rand_instr_stream_0
                  add          a3, a7, t5
                  sb           s2, 187(sp)
                  sh           ra, -629(sp)
                  lb           s7, -636(sp)
                  sh           t2, -625(sp)
                  lb           a4, -1246(sp)
                  lb           s7, -592(sp)
                  lb           ra, -1258(sp)
                  sb           t0, -889(sp)
                  lbu          s6, 288(sp)
                  lw           t5, -603(sp)
                  lb           a3, -2(sp)
                  sub          s1, a2, zero
                  and          a3, s0, t4
                  and          ra, s5, sp
                  add          a5, s1, t0
                  lh           a3, -209(sp)
                  and          s8, a2, t0
                  add          s1, gp, s4
                  xori         a1, a0, 1535
                  lb           s4, -1217(sp)
                  and          s5, t1, a4
                  auipc        s0, 583859
                  or           zero, s6, t4
                  lbu          s6, -248(sp)
                  lhu          a2, -573(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        t5, t6, -1980
                  blt          t4, a2, 20f
                  bne          tp, s3, 18f
                  srai         s10, s2, 28
                  nop
                  bne          s10, a0, 14f
                  slti         a1, s1, -469
                  bne          s1, a4, 23f
                  sra          a5, s10, t0
                  andi         s0, t1, -1953
                  bltu         t4, t1, 12f
                  sra          t2, a0, t6
12:               xori         s3, ra, 1073
                  sub          gp, t4, t1
14:               sra          gp, s9, s7
                  and          a1, sp, ra
                  sub          s5, t5, t0
                  sll          s3, s7, t0
18:               srl          s8, a4, a0
                  xori         s2, t3, -1247
20:               andi         t6, s1, -410
                  beq          s0, ra, 27f
                  sub          a3, t0, s7
23:               srai         t1, s9, 13
                  lui          sp, 1012387
                  sltiu        s4, a3, -140
                  and          t3, s8, t1
27:               or           s2, a6, s1
                  lui          s4, 609848
                  ori          a5, t0, -1885
                  sltiu        a7, t6, -1595
                  andi         s4, s0, 76
                  srli         a7, s7, 16
                  lui          a4, 228780
                  bltu         t0, t4, 48f
                  beq          zero, s1, 55f
                  addi         s2, sp, 961
                  and          a5, ra, t0
                  add          gp, a7, s4
                  bltu         s7, a0, 41f
                  beq          a3, s8, 57f
41:               add          t5, a3, s6
                  sll          t4, s10, ra
                  sll          s4, s6, s0
                  addi         a0, s10, -1765
                  addi         a5, gp, -865
                  sra          s1, a0, s6
                  beq          a7, s1, 62f
48:               xori         s8, s3, -1566
                  slt          s5, s7, a0
                  bge          a0, t0, 68f
                  srli         a4, a6, 9
                  sll          s5, a4, s9
                  srli         a0, s7, 7
                  sltu         s8, s1, s3
55:               auipc        a3, 307762
                  bgeu         s11, a5, 72f
57:               ori          s5, a2, -1302
                  sll          t2, s11, t5
                  bne          s11, s1, 74f
                  srai         a5, a0, 4
                  sltu         zero, a5, tp
62:               add          s5, a1, a1
                  andi         a1, s11, -1849
                  srli         a7, a5, 16
                  auipc        gp, 333358
                  slt          s5, s7, a3
                  sra          a7, t5, s7
68:               xori         t3, s7, -283
                  la           sp, region_0+1700 #start riscv_load_store_hazard_instr_stream_0
                  sb           s8, 1(sp)
                  lb           t5, -27(sp)
                  lhu          a0, -58(sp)
                  sub          a7, t2, t6
                  andi         t0, zero, -1382
                  lh           a7, 64(sp)
                  lbu          t4, 4(sp)
                  sh           gp, -10(sp)
                  sh           s11, -6(sp)
                  lh           a4, -6(sp)
                  lb           s0, -6(sp)
                  lb           t0, -6(sp)
                  sltiu        s8, t0, 1448
                  sb           t4, -6(sp)
                  lbu          ra, -6(sp)
                  sra          s8, ra, s8
                  lb           a2, -6(sp)
                  addi         t6, t3, -1913
                  lh           t6, -6(sp) #end riscv_load_store_hazard_instr_stream_0
                  sltiu        a0, s11, -58
                  bgeu         t6, s10, 75f
                  slti         s2, t6, -1454
72:               auipc        gp, 1829
                  sub          s8, s0, zero
74:               sltu         s5, s9, t0
75:               srli         s3, a1, 9
                  srai         t2, t3, 30
                  slt          s4, s4, a2
                  and          a3, a7, a1
                  nop
                  srli         t4, s9, 25
                  blt          a5, a6, 92f
                  xor          s9, s9, s4
                  and          t0, s3, s6
                  ori          s9, s9, -484
                  sub          a3, s6, s11
                  andi         a3, a6, -1846
                  ori          a1, t0, 1656
                  slli         s7, s3, 9
                  srli         a3, s3, 20
                  add          s4, a2, t3
                  beq          s3, s4, 104f
92:               and          t3, a4, s0
                  bne          s4, s11, 101f
                  sll          s5, a5, s2
                  and          ra, a2, zero
                  sltu         s4, s2, a5
                  sll          s5, a2, s5
                  bge          a4, t0, 105f
                  bge          sp, a0, 108f
                  sra          s0, a3, a3
101:              blt          s7, t5, 104f
                  add          a1, gp, ra
                  blt          s9, a2, 108f
104:              beq          s0, a3, 116f
105:              ori          a0, s6, -1110
                  sra          ra, a4, zero
                  sll          zero, a6, t6
108:              xor          zero, gp, a1
                  nop
                  nop
                  sll          a0, a3, s9
                  srai         s8, s7, 3
                  add          s5, s7, s11
                  add          s4, s11, s5
                  beq          a3, s11, 135f
116:              sll          s0, t3, s10
                  add          a7, sp, s4
                  add          s10, s5, t6
                  sra          s5, s8, a0
                  bne          sp, s7, 129f
                  sub          t0, t5, s1
                  sra          a3, s9, tp
                  bgeu         a7, a6, 141f
                  srai         s8, ra, 3
                  srl          s4, a5, t6
                  xori         s7, a3, 1287
                  addi         gp, a2, -1952
                  bgeu         s3, s10, 130f
129:              sll          a0, s1, s3
130:              slli         s7, sp, 15
                  or           a4, a6, a6
                  bge          s9, s4, 144f
                  sll          s10, t3, s11
                  nop
135:              bne          s5, s5, 145f
                  bltu         a1, a2, 143f
                  bge          s6, s2, 146f
                  bge          sp, t3, 146f
                  xori         t6, a5, 439
                  slt          sp, a5, s0
141:              blt          s9, s4, 157f
                  bge          t0, a5, 149f
143:              sltu         a0, a0, s7
144:              srli         s4, s0, 14
145:              srli         t4, s6, 25
146:              sra          sp, a6, s6
                  sltu         a4, s9, s5
                  bne          a7, a6, 157f
149:              blt          t6, s8, 162f
                  addi         t2, a5, -791
                  slti         s9, zero, -313
                  sub          s2, s11, tp
                  xor          t4, a3, zero
                  bge          s9, s1, 169f
                  bge          a4, t1, 169f
                  srli         t1, s7, 18
157:              bltu         tp, a0, 168f
                  xori         s5, s8, 945
                  ori          a1, s6, -363
                  sra          s6, t4, a2
                  slli         s5, a2, 16
162:              slti         s10, sp, -1292
                  sll          sp, s2, t2
                  ori          s5, a6, 644
                  sltu         a5, s6, a1
                  slti         a3, a4, 931
                  auipc        s10, 929606
168:              addi         t4, a4, 1426
169:              or           zero, t3, s10
                  bltu         t5, s10, 181f
                  slt          t6, ra, s2
                  add          s0, s9, t4
                  blt          a5, t2, 181f
                  blt          s5, t6, 176f
                  bne          s6, tp, 181f
176:              xori         s10, s1, 1027
                  bne          t2, a6, 181f
                  and          sp, s0, t6
                  sll          t5, a4, a7
                  slli         s10, zero, 9
181:              srai         s9, ra, 26
                  lw           s8, 4(tp)
                  ori          t0, s9, 309
                  and          s7, a5, s1
                  xor          t5, t5, s1
                  addi         tp, tp, 44
                  andi         a2, zero, -947
                  lui          s4, 731449
                  srai         t2, s10, 14
276:              addi x20, x24, 0
276:              jalr x20, x20, 0
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
                  add x27, x4, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x7, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x7, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x7, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x7, x2, ecall_handler
                  li x2, 0x1
                  beq x7, x2, instr_fault_handler
                  li x2, 0x5
                  beq x7, x2, load_fault_handler
                  li x2, 0x7
                  beq x7, x2, store_fault_handler
                  li x2, 0xc
                  beq x7, x2, pt_fault_handler
                  li x2, 0xd
                  beq x7, x2, pt_fault_handler
                  li x2, 0xf
                  beq x7, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x4, x27, zero
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
                  add x4, x27, zero
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
                  add x4, x27, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x4, x27, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x4, x27, zero
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
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x4, x27, zero
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
