.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x894be61a
                  li x3, 0x80000000
                  li x4, 0xfea1010b
                  li x5, 0xf08e14c5
                  li x6, 0xf6a76fc7
                  li x9, 0x7
                  li x10, 0x5
                  li x11, 0x9
                  li x12, 0x7041bd61
                  li x13, 0xfe967991
                  li x14, 0x0
                  li x15, 0xbba26be5
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0xa
                  li x20, 0x8
                  li x21, 0xd
                  li x22, 0xf9a415dd
                  li x23, 0x2
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0xfc37683b
                  li x28, 0xac21a8f0
                  li x29, 0x80000000
                  li x30, 0xd9a1199
                  li x31, 0x0
                  la x8, user_stack_end
main:             la           a7, region_0+1613 #start riscv_load_store_rand_instr_stream_1
                  srli         a5, a1, 18
                  or           s4, tp, t6
                  srai         s2, gp, 16
                  sh           s9, 145(a7)
                  lbu          a0, -244(a7)
                  sb           a7, 78(a7)
                  sra          t4, a6, s8
                  lh           t5, 219(a7)
                  addi         s9, t1, -432
                  lb           a5, 91(a7)
                  sh           s3, -37(a7)
                  lhu          t1, 173(a7)
                  sb           s4, 254(a7)
                  sltu         s9, s10, a6
                  lh           sp, 237(a7)
                  srli         t6, s8, 4
                  srli         sp, s8, 9
                  sh           s4, 49(a7)
                  addi         t3, s10, 714
                  lh           a1, -251(a7)
                  lbu          zero, 132(a7)
                  lh           a2, -237(a7)
                  lb           s7, 44(a7)
                  sltu         s8, zero, a6
                  nop
                  slt          s3, a0, s11
                  sb           s4, -118(a7)
                  sll          s3, s6, a5
                  srli         zero, s9, 25
                  ori          s3, s0, 883
                  lbu          a6, -200(a7)
                  srli         zero, tp, 28
                  sltiu        t6, t4, -644
                  slt          t0, a1, t6
                  slti         s6, s6, 1569
                  lh           sp, -49(a7) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+1764 #start riscv_load_store_rand_instr_stream_4
                  sb           s4, 13(s5)
                  lh           t5, -14(s5)
                  sh           a6, -4(s5)
                  xori         s2, a5, 1271
                  sh           t3, -12(s5)
                  sra          s10, s6, gp
                  sll          s11, t5, t6
                  sub          a5, t2, s2
                  sltiu        zero, sp, 139
                  slti         ra, s2, -146
                  lbu          a3, 15(s5)
                  and          zero, s3, s11
                  lb           a7, 10(s5)
                  addi         t5, s2, -872
                  nop
                  sub          s6, s8, a6
                  auipc        s2, 96595
                  lb           t1, 5(s5)
                  lb           t6, -5(s5)
                  srl          s6, a0, s5
                  slt          t4, t2, s3
                  auipc        ra, 339709
                  sra          s11, t0, ra
                  xor          t4, a2, t1
                  xori         t1, s10, -1035
                  lbu          s10, 9(s5)
                  sra          sp, s4, t6
                  lh           a5, -4(s5)
                  addi         a3, a2, -148
                  lb           s10, 1(s5)
                  nop
                  srl          s6, a2, s5
                  addi         t6, a0, -1292
                  slli         s10, a5, 11
                  xori         s2, t1, 1534
                  nop
                  lb           s9, -8(s5) #end riscv_load_store_rand_instr_stream_4
                  la           s9, region_1+1129 #start load_store_instr_stream_4
                  lb           s1, 251(s9)
                  la           a0, region_1+1776 #start load_store_instr_stream_2
                  la           t3, region_1+356 #start load_store_instr_stream_1
                  lh           s4, -186(t3)
                  la           t5, region_1+1299 #start load_store_instr_stream_3
                  lhu          a2, -18(a0)
                  sb           s11, 1411(t3)
                  lbu          a6, 114(s9)
                  la           s8, region_1+1630 #start load_store_instr_stream_0
                  lbu          a1, 45(a0)
                  lb           s2, 44(t5)
                  lb           t4, 36(a0)
                  lb           a7, -1(s8)
                  sh           zero, -4(s8)
                  sb           a5, 30(s9)
                  lb           s11, -7(s8)
                  sb           t4, 850(t3)
                  sb           a0, -52(a0)
                  sb           s9, 22(t5)
                  lbu          t0, -28(a0)
                  lhu          s3, -10(s8)
                  lb           a2, -13(a0)
                  sb           a0, -73(t3)
                  lb           t0, -23(a0)
                  sb           t3, 15(s8)
                  lbu          t4, 2(t5)
                  sb           t5, -11(a0)
                  lbu          t4, 3(s8)
                  lh           gp, -95(s9)
                  lbu          zero, 726(t3)
                  lw           s6, 21(t5)
                  lbu          s3, 30(a0)
                  lbu          s11, -49(a0) #end load_store_instr_stream_2
                  lbu          a6, 213(s9) #end load_store_instr_stream_4
                  lbu          a4, -7(s8)
                  lhu          s2, -288(t3) #end load_store_instr_stream_1
                  sb           a4, 20(t5) #end load_store_instr_stream_3
                  lh           t1, 6(s8) #end load_store_instr_stream_0
                  la           s8, region_0+43 #start load_store_instr_stream_1
                  la           s11, region_0+509 #start load_store_instr_stream_2
                  sb           a5, 34(s11)
                  lb           zero, 240(s8)
                  la           s6, region_0+789 #start load_store_instr_stream_0
                  lb           s1, -33(s11)
                  lhu          a4, 97(s11)
                  la           ra, region_0+1512 #start load_store_instr_stream_3
                  sb           t6, 11(s6)
                  sb           s1, 17(ra)
                  la           s2, region_0+1543 #start load_store_instr_stream_4
                  lbu          sp, -16(s11)
                  lbu          s9, -1336(s2)
                  sb           a2, 130(s8)
                  sw           s7, 7(s6)
                  lh           gp, 289(s2)
                  lhu          s10, 373(s2)
                  lb           t6, -67(ra)
                  sb           a4, -135(ra)
                  lbu          t1, -40(s8)
                  lb           a4, 242(ra)
                  lhu          a6, 3(s6)
                  sb           t0, 68(s11)
                  lb           a1, -1233(s2)
                  lb           s5, 151(ra)
                  lbu          s5, 16(s6)
                  lhu          a2, -189(s11)
                  lhu          a7, -132(ra)
                  sb           s6, 14(s6)
                  lhu          a5, -50(ra)
                  lb           a0, -3(s11)
                  sb           t5, 179(s11)
                  lbu          s5, 54(s8)
                  sh           s3, 180(ra)
                  lb           gp, 238(s11)
                  lbu          t0, -1400(s2)
                  lb           a5, -478(s2) #end load_store_instr_stream_4
                  sh           a2, 62(ra) #end load_store_instr_stream_3
                  sb           s7, -14(s6)
                  lb           a4, 190(s8) #end load_store_instr_stream_1
                  sb           ra, 6(s6)
                  lbu          a1, 169(s11) #end load_store_instr_stream_2
                  lb           s5, 14(s6) #end load_store_instr_stream_0
                  la           t6, region_0+1072 #start riscv_load_store_hazard_instr_stream_2
                  lb           s1, -197(t6)
                  sltu         s7, sp, a4
                  sw           s11, -944(t6)
                  xor          gp, t2, s6
                  lb           a0, -944(t6)
                  srai         s6, t4, 27
                  lh           s8, -330(t6)
                  lb           t0, -330(t6)
                  sll          s7, t5, s9
                  srli         s11, tp, 23
                  lh           a2, -330(t6)
                  sh           s5, -330(t6)
                  ori          t1, a5, -1101
                  sb           s3, -330(t6)
                  lb           t4, -330(t6)
                  lh           a1, -330(t6)
                  sh           a3, -330(t6)
                  lh           zero, -330(t6) #end riscv_load_store_hazard_instr_stream_2
                  la           s11, region_1+1189 #start riscv_load_store_rand_instr_stream_5
                  slli         s4, tp, 22
                  xori         a3, t2, 374
                  lbu          t1, -198(s11)
                  sb           t2, 56(s11)
                  lb           t6, 64(s11)
                  sh           t2, -27(s11)
                  lbu          a5, 148(s11)
                  lhu          s7, 103(s11)
                  lbu          t4, 36(s11)
                  sb           t4, 244(s11)
                  lbu          a1, -246(s11)
                  srl          s3, a5, a5
                  slt          a7, a4, s4
                  nop
                  sra          a3, t1, s4
                  sb           a4, -102(s11)
                  lbu          s1, -58(s11)
                  lhu          s3, 133(s11)
                  lhu          a0, 109(s11)
                  lui          s2, 767135
                  lh           s9, 101(s11)
                  lb           t6, -100(s11)
                  sb           a7, 106(s11)
                  lbu          s4, 82(s11)
                  srl          a7, t0, s7
                  addi         a4, s1, -1045
                  lbu          zero, 220(s11)
                  and          s7, t1, s2
                  sb           t3, 230(s11)
                  sb           t1, 0(s11)
                  nop
                  lbu          s7, 2(s11)
                  xori         s7, ra, -1917
                  sb           s3, -106(s11)
                  xori         t1, a1, 1992
                  slli         s1, s9, 9
                  lb           a3, -43(s11)
                  slti         t3, s0, -2
                  sh           s4, 119(s11)
                  sltiu        a6, a0, -531
                  lbu          s3, 132(s11)
                  slli         s4, a6, 15
                  and          t4, t5, s6
                  slli         a6, a4, 10
                  sb           s1, -95(s11)
                  sh           sp, 105(s11)
                  sh           t6, 91(s11)
                  srai         s9, s2, 4
                  sll          s8, s0, s5
                  srli         t5, s11, 10
                  slli         s7, s11, 6
                  lb           gp, 13(s11) #end riscv_load_store_rand_instr_stream_5
                  la           s11, region_1+115 #start load_store_instr_stream_1
                  la           s7, region_1+661 #start load_store_instr_stream_0
                  sh           s0, 615(s11)
                  sb           t1, 610(s11)
                  lbu          a4, -59(s7)
                  sb           s7, -14(s7)
                  lb           ra, 798(s11)
                  lbu          t4, -24(s7)
                  sh           a7, 271(s11)
                  lbu          t0, 0(s7)
                  lbu          zero, -27(s7)
                  sb           s8, 57(s7)
                  sb           a7, 345(s11)
                  sb           s2, -7(s7)
                  lw           s6, 653(s11)
                  sb           s4, 1602(s11)
                  lb           a2, -23(s7)
                  lhu          a7, 1489(s11) #end load_store_instr_stream_1
                  lbu          s6, -15(s7) #end load_store_instr_stream_0
                  la           ra, region_1+1734 #start riscv_load_store_rand_instr_stream_3
                  sub          s10, a3, t3
                  lbu          a5, -51(ra)
                  sb           gp, -8(ra)
                  sh           s4, 4(ra)
                  sltiu        s10, a5, 569
                  slt          t4, gp, s3
                  lbu          t4, -46(ra)
                  srl          s3, ra, zero
                  sub          a1, tp, gp
                  sra          t4, s4, a5
                  slti         s1, zero, 1791
                  lbu          t4, 52(ra)
                  sh           a1, -4(ra)
                  sb           a2, 50(ra)
                  add          s6, t3, t0
                  lb           s10, -54(ra)
                  xori         a5, a3, 423
                  xor          s7, s5, s5
                  lh           a2, -14(ra)
                  lbu          gp, -23(ra)
                  sra          t5, s3, s10
                  addi         a2, s6, 307
                  andi         s4, ra, -417
                  lb           t1, -45(ra)
                  lbu          s6, 53(ra)
                  srli         t1, t2, 18
                  srai         t4, s2, 31
                  lui          a2, 559205
                  andi         t1, s3, -1693
                  sltu         a3, tp, s5
                  sra          s4, t0, s10
                  sb           s7, 7(ra)
                  slti         a7, s1, -2001
                  sb           s7, -34(ra) #end riscv_load_store_rand_instr_stream_3
                  la           gp, region_1+501 #start riscv_load_store_rand_instr_stream_0
                  srli         s6, t3, 23
                  sb           sp, -77(gp)
                  lw           a5, -229(gp)
                  lbu          a5, 30(gp)
                  slt          s10, gp, a1
                  lbu          s7, -128(gp)
                  sh           gp, 129(gp)
                  lb           a6, 245(gp)
                  sb           sp, 169(gp)
                  slli         a6, s11, 8
                  lh           t4, 79(gp)
                  nop
                  lb           zero, 144(gp)
                  sw           a0, -153(gp)
                  sb           s9, 86(gp)
                  xori         s4, t2, -828
                  slli         s6, s10, 7
                  sb           s8, 89(gp)
                  sh           a6, -33(gp)
                  sll          a6, s10, s11
                  slti         t1, s6, -127
                  sb           s3, 91(gp)
                  lw           a0, 247(gp)
                  xor          s5, a7, s5
                  nop
                  lb           t4, 254(gp)
                  lui          t4, 293061
                  srl          s9, a4, t5
                  lb           t3, 117(gp)
                  sw           t5, -57(gp)
                  srl          s2, a2, a2
                  addi         t6, sp, 748
                  or           s10, s11, ra
                  sw           a5, 115(gp)
                  sb           a4, 41(gp)
                  lb           a1, 69(gp)
                  lh           s8, -11(gp)
                  srai         a0, t5, 13
                  sb           a6, 70(gp) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_1+1912 #start load_store_instr_stream_0
                  la           s10, region_1+308 #start load_store_instr_stream_1
                  lb           s6, 5(s10)
                  lbu          s3, -15(s10)
                  lb           a0, -99(a2)
                  lbu          s3, 11(s10)
                  lb           t1, -194(a2)
                  lhu          s8, -190(a2)
                  sb           a6, 14(s10)
                  sb           a7, -47(a2)
                  lbu          s9, 7(s10)
                  sb           t0, -205(a2)
                  sb           a2, -159(a2)
                  sw           t0, 12(s10)
                  lbu          t1, 6(s10) #end load_store_instr_stream_1
                  sb           t5, 86(a2) #end load_store_instr_stream_0
                  la           a6, region_0+215 #start load_store_instr_stream_1
                  la           a5, region_0+1810 #start load_store_instr_stream_3
                  lbu          a3, -10(a6)
                  sb           a5, -4(a6)
                  lb           gp, 4(a5)
                  la           s1, region_0+1682 #start load_store_instr_stream_2
                  la           t1, region_0+1779 #start load_store_instr_stream_0
                  sb           a6, -1055(s1)
                  lb           t0, -17(a5)
                  lbu          a1, -351(t1)
                  lbu          t4, 51(a5)
                  lbu          zero, -373(s1)
                  lbu          s11, -2(a6)
                  lb           a7, -1016(t1)
                  lb           sp, -695(s1)
                  sb           t6, -921(s1)
                  lhu          ra, 5(a6)
                  sb           t2, -17(a5)
                  sb           s9, 43(a5)
                  lb           a0, 76(t1)
                  lb           a7, 57(a5)
                  sb           a6, -922(t1)
                  sb           a6, 4(a6)
                  lb           s7, -53(s1)
                  lbu          t5, -1258(t1)
                  lh           s4, 0(s1)
                  sh           s2, -13(a6) #end load_store_instr_stream_1
                  lb           t6, 50(a5)
                  lbu          s3, -35(a5)
                  sb           t6, 205(s1)
                  lbu          t3, -754(t1)
                  lb           t3, -1409(s1) #end load_store_instr_stream_2
                  lb           sp, 43(a5) #end load_store_instr_stream_3
                  sb           s10, -576(t1) #end load_store_instr_stream_0
                  la           s3, region_1+1137 #start load_store_instr_stream_1
                  lbu          a2, 10(s3)
                  la           sp, region_1+586 #start load_store_instr_stream_0
                  lhu          a6, 1244(sp)
                  sb           s9, 10(s3)
                  sb           tp, 6(s3)
                  sb           a0, 387(sp)
                  lh           t0, -326(sp)
                  lb           a4, 139(sp)
                  lh           s4, 1096(sp)
                  lb           a5, 8(s3)
                  sh           t5, 1(s3)
                  lbu          s11, 12(s3)
                  sh           t0, 9(s3)
                  lhu          s11, 0(sp)
                  sb           s8, 16(s3) #end load_store_instr_stream_1
                  lh           s1, 856(sp)
                  lbu          a3, -117(sp)
                  lb           a4, 1172(sp)
                  sb           s6, 1000(sp) #end load_store_instr_stream_0
                  la           s7, region_1+736 #start riscv_load_store_hazard_instr_stream_4
                  sh           a1, -400(s7)
                  sh           a3, 582(s7)
                  lbu          t5, 623(s7)
                  lbu          a0, -31(s7)
                  lb           s2, -31(s7)
                  sb           t0, -31(s7)
                  lbu          s8, -31(s7)
                  or           s4, sp, s9
                  lbu          s2, 197(s7)
                  sb           tp, 197(s7)
                  lb           a2, 945(s7)
                  lbu          ra, 569(s7)
                  lb           s8, 569(s7)
                  nop
                  andi         s11, gp, -792
                  lb           s8, -609(s7)
                  lbu          a3, 254(s7)
                  lbu          s6, 254(s7) #end riscv_load_store_hazard_instr_stream_4
                  la           s8, region_1+1182 #start riscv_load_store_hazard_instr_stream_1
                  lb           a5, -311(s8)
                  sb           s7, -1002(s8)
                  sh           s7, -1002(s8)
                  sw           a2, -1002(s8)
                  sw           s0, 502(s8)
                  lbu          a5, -892(s8)
                  lb           a1, -1180(s8)
                  lbu          s10, 401(s8)
                  lbu          t5, 126(s8)
                  lhu          s1, -178(s8)
                  lw           zero, -878(s8)
                  srl          s11, s4, s9
                  lh           s6, -878(s8)
                  sh           t6, -878(s8)
                  lbu          s1, 619(s8)
                  ori          a1, t4, -1070
                  lbu          s2, -651(s8) #end riscv_load_store_hazard_instr_stream_1
                  la           a0, region_1+1847 #start riscv_load_store_hazard_instr_stream_0
                  sh           t6, -19(a0)
                  lbu          t4, -19(a0)
                  sw           s9, -19(a0)
                  add          s1, a3, t6
                  srli         s6, sp, 20
                  auipc        t5, 751048
                  lbu          a4, -19(a0)
                  sh           t0, 1(a0)
                  sw           s7, 1(a0)
                  sh           s1, 1(a0)
                  lbu          s2, -54(a0)
                  lb           t5, -54(a0)
                  lbu          s2, -5(a0) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1980 #start riscv_load_store_hazard_instr_stream_5
                  sra          a2, s11, t2
                  sb           t3, -27(sp)
                  sra          ra, t2, sp
                  sb           t6, -27(sp)
                  sub          zero, t4, s3
                  sb           s1, -27(sp)
                  slti         t3, a2, 1250
                  lb           s5, -27(sp)
                  lbu          a5, -27(sp)
                  sub          a5, a1, sp
                  sb           s2, -27(sp)
                  lb           s8, -27(sp)
                  srl          a0, ra, s9
                  lb           t5, -27(sp)
                  lb           t5, -27(sp)
                  lb           t5, -27(sp)
                  sb           t4, -27(sp)
                  lbu          s11, -27(sp)
                  lb           s11, 15(sp)
                  lb           t4, 17(sp)
                  lbu          s2, 17(sp) #end riscv_load_store_hazard_instr_stream_5
                  and          sp, s2, s2
                  sra          t3, s11, s10
                  and          a7, s1, s6
                  srai         s3, tp, 15
                  bgeu         gp, a6, 22f
                  bltu         s1, zero, 17f
                  bltu         t1, a0, 16f
                  sltu         sp, t3, a2
                  bge          s6, t6, 17f
                  add          a2, a3, sp
                  beq          a5, a5, 11f
11:               srl          s5, s10, t0
                  addi         a5, tp, 279
                  slt          a4, s5, s10
                  bge          s4, s11, 19f
                  andi         t5, t2, 1369
16:               bge          s4, t0, 33f
17:               andi         a4, a2, -1397
                  bge          s8, a4, 34f
19:               lui          zero, 104473
                  bgeu         s1, s1, 36f
                  slli         a1, t5, 9
22:               sra          s10, a0, sp
                  slli         t0, s10, 30
                  xor          a6, tp, a3
                  ori          s4, t1, -161
                  sltu         s8, a1, s1
                  sltu         t4, tp, t2
                  slli         a5, t4, 11
                  srai         t5, t5, 10
                  bgeu         a4, s11, 47f
                  xori         t1, s11, -12
                  slti         s4, a2, 289
33:               bge          t1, s7, 47f
34:               and          s3, a1, s4
                  srai         a2, t3, 21
36:               slli         s9, t5, 31
                  srli         a5, a0, 15
                  srli         s8, a1, 24
                  sll          s7, t3, a7
                  sltu         s9, s2, s5
                  sltu         s4, s3, s8
                  sltu         s6, s6, ra
                  sll          a5, s2, a2
                  ori          s8, t6, 85
                  blt          s9, a7, 56f
                  bgeu         t5, t5, 56f
47:               sub          s1, t6, a5
                  addi         s6, s8, 1202
                  lui          s6, 959012
                  bge          a6, a3, 66f
                  and          a0, s9, s2
                  xor          t6, s1, a4
                  bge          t4, a7, 66f
                  andi         a0, zero, 1083
                  bne          s10, zero, 65f
56:               xor          s5, t4, s5
                  bge          s4, s10, 62f
                  bgeu         s2, t4, 76f
                  slt          t6, tp, s4
                  slti         s10, s7, 505
                  add          s2, s10, a3
62:               bge          s8, s11, 75f
                  srli         t3, zero, 13
                  add          a6, t6, s8
65:               srai         sp, s10, 6
66:               bge          t5, a6, 70f
                  srli         t5, a6, 6
                  xor          a0, a6, ra
                  add          t1, a4, s7
70:               slti         t1, s8, -101
                  blt          s2, s2, 73f
                  srai         a7, a4, 3
73:               beq          a1, a5, 80f
                  sll          s10, s9, tp
75:               slti         s11, s1, 1858
76:               addi         s1, ra, -1205
                  srl          zero, tp, tp
                  add          gp, t2, t0
                  slt          a1, a1, s11
80:               bltu         a3, a3, 98f
                  addi         s3, a1, -1871
                  slt          ra, s1, a2
                  bgeu         a4, ra, 101f
                  andi         zero, a2, 1599
                  sra          s8, tp, a0
                  nop
                  slti         t5, t0, -796
                  bge          s9, t4, 97f
                  beq          zero, s4, 108f
                  xor          s6, t2, t5
                  sll          a6, t2, t3
                  beq          t3, s7, 96f
                  blt          s10, a1, 103f
                  bltu         tp, t6, 98f
                  nop
96:               blt          a7, s1, 98f
97:               addi         t5, s0, -254
98:               sub          a2, a4, s4
                  xor          a2, s11, t1
                  auipc        gp, 36861
101:              sll          s7, s9, t3
                  auipc        a4, 97098
103:              add          t3, a6, a3
                  bgeu         s1, tp, 114f
                  xori         t3, s7, -1372
                  sll          gp, t1, t0
                  addi         s2, tp, -554
108:              blt          s7, s7, 113f
                  slti         t4, ra, 1791
                  slti         t5, t2, -1887
                  xori         s3, a3, -742
                  srli         s2, s4, 17
113:              and          gp, s9, t6
114:              sltiu        gp, t6, 1265
                  bge          t2, zero, 120f
                  sra          s1, s8, t1
                  and          a2, t3, zero
                  nop
                  addi         gp, a3, 146
120:              xor          s6, a7, a4
                  slli         s8, s6, 10
                  andi         a7, ra, -1168
                  bne          s4, s4, 140f
                  beq          s11, s9, 140f
                  beq          s3, a6, 138f
                  ori          t5, s10, -1931
                  lui          sp, 203872
                  or           s10, ra, s4
                  srl          t5, s9, zero
                  xor          s4, s9, a4
                  nop
                  blt          s8, t1, 141f
                  sltiu        t1, s0, -1158
                  slt          gp, s5, ra
                  xor          a3, s4, t2
                  srl          gp, s3, a1
                  lui          t4, 578104
138:              srl          t0, s1, t3
                  xori         t5, ra, 1535
140:              bgeu         a5, a7, 156f
141:              slt          t6, s8, s0
                  sub          gp, s4, s8
                  nop
                  sub          ra, a2, tp
                  or           s3, s8, s11
                  ori          a2, s8, 777
                  sltiu        t3, s9, 1817
                  xor          s7, s11, t3
                  bgeu         a3, a2, 153f
                  add          s10, a4, s10
                  sub          a6, s0, ra
                  bgeu         a7, t5, 170f
153:              sub          s5, ra, a1
                  blt          s6, t1, 168f
                  nop
156:              ori          a5, s2, -1367
                  slt          s3, a6, a5
                  slti         s3, s8, 431
                  auipc        a6, 868538
                  bgeu         s4, s11, 164f
                  sltiu        t4, a6, 1247
                  srli         a3, t5, 7
                  and          s1, a0, a0
164:              bgeu         t6, a3, 176f
                  bge          a0, s5, 183f
                  blt          a4, s1, 179f
                  sll          a1, sp, s3
168:              ori          ra, s0, 1198
                  srai         s4, s7, 18
170:              add          a1, s7, a1
                  ori          zero, t1, 358
                  bltu         a4, a0, 174f
                  add          s9, s3, sp
174:              sra          gp, a4, s5
                  nop
176:              add          t6, s4, a7
                  sra          t3, s10, s5
                  add          s5, s8, s0
179:              srli         s10, t2, 25
                  bltu         a0, t4, 190f
                  bltu         t3, a1, 198f
                  srl          a1, a0, s11
183:              lui          t6, 975401
                  sltu         s9, s8, s6
                  blt          a3, s10, 203f
                  slli         s6, t3, 25
                  slli         a5, a0, 30
                  sll          t3, s9, a4
                  add          t3, s9, sp
190:              or           t1, a2, gp
                  srai         ra, s0, 27
                  andi         sp, t3, -1077
                  add          s8, ra, a4
                  slti         s2, t1, -2037
                  slli         a4, s0, 0
                  addi         ra, s9, 1558
                  bgeu         s3, s3, 208f
198:              bgeu         s2, s10, 207f
                  lui          t4, 467397
                  xor          a1, s1, a6
                  auipc        s1, 291085
                  srli         s6, t5, 14
203:              srl          t6, t1, gp
                  blt          ra, t3, 214f
                  bgeu         t1, t0, 206f
206:              ori          a1, s10, -1422
207:              auipc        sp, 847786
208:              or           t6, t2, zero
                  sub          a4, a5, t2
                  bne          t1, a5, 226f
                  blt          s10, t2, 215f
                  sltiu        s11, s0, 441
                  sra          s8, a1, t3
214:              or           s8, a2, s2
215:              or           s10, gp, s4
                  ori          t4, s2, 41
                  blt          t2, s7, 224f
                  add          s7, gp, t6
                  beq          s4, s7, 238f
                  bne          s8, tp, 230f
                  beq          s10, s1, 223f
                  or           s7, s8, a1
223:              auipc        t3, 475854
224:              slli         s10, s8, 21
                  lui          s7, 835684
226:              bge          a1, t3, 244f
                  andi         a7, t1, 901
                  andi         t4, s4, -1694
                  bgeu         a4, a7, 239f
230:              srai         a1, s6, 22
                  bge          t3, a5, 247f
                  and          s8, a0, s1
                  xori         s3, zero, -390
                  srli         t1, gp, 18
                  lui          ra, 905653
                  lui          a3, 659120
                  nop
238:              bltu         a5, s9, 254f
239:              sltiu        a3, sp, 567
                  sub          a7, s7, s11
                  sub          s11, t5, gp
                  bgeu         a0, s4, 246f
                  sltiu        t6, s4, 161
244:              srl          a7, s1, tp
                  bltu         t4, a2, 262f
246:              bltu         a4, t0, 253f
247:              bne          t2, s3, 257f
                  auipc        a2, 155067
                  bgeu         s3, s0, 251f
                  ori          s5, s8, 1863
251:              srai         s11, a5, 5
                  bgeu         a0, t4, 270f
253:              andi         t3, t5, 915
254:              slti         a2, s3, 323
                  and          a2, zero, t1
                  bgeu         t1, s5, 257f
257:              bltu         t0, s3, 275f
                  andi         a6, t0, -799
                  slti         a0, a4, -1591
                  blt          s1, s5, 265f
                  and          a2, s6, s9
262:              andi         s5, s2, -790
                  sra          s10, s2, a1
                  sltu         t6, s3, s7
265:              xor          t0, s1, t5
                  add          s11, s6, s1
                  sra          s5, t0, s9
                  addi         a0, s10, -990
                  sra          a4, s7, a3
270:              srl          t3, a6, a7
                  addi         s3, a6, -2015
                  blt          a0, t2, 290f
                  bge          s6, t0, 286f
                  srl          a5, s11, s6
275:              sub          t4, a5, gp
                  xor          ra, gp, t6
                  xor          gp, s9, s8
                  srai         t1, a2, 16
                  srl          a3, t2, s7
                  xor          s3, s5, t2
                  sltiu        a2, s7, 781
                  blt          a6, s0, 300f
                  slt          zero, s1, s2
                  xor          a3, a4, s9
                  sra          s2, a2, s6
286:              and          s10, a5, s5
                  slti         s8, s4, -1425
                  addi         sp, t3, 809
                  slt          t3, a3, s6
290:              sltiu        sp, s10, -1262
                  blt          s1, a4, 304f
                  bgeu         s5, a2, 311f
                  blt          a3, a2, 295f
                  add          s9, t3, s4
295:              or           s4, tp, s7
                  srli         ra, a0, 0
                  blt          t6, a4, 311f
                  srli         s9, s5, 25
                  sub          s8, s11, sp
300:              sub          a2, s11, sp
                  srl          gp, s9, tp
                  andi         a4, t6, -42
                  bge          a5, a5, 312f
304:              add          a2, s11, s1
                  ori          t1, s0, 957
                  sub          t5, s6, a6
                  bltu         s10, t2, 323f
                  nop
                  la           s8, sub_1
                  slti         t3, s5, 159
                  slt          a1, s0, a7
                  sra          s3, t0, a6
                  add          t0, a7, s7
                  srl          a4, s0, ra
                  addi         s8, s8, -612
                  nop
main_j1:          jalr         ra, s8, 612 #jump main -> sub_1
                  bge          s3, a5, 318f
                  srl          gp, a0, t0
                  xori         s4, sp, -698
311:              addi         t0, t6, -1940
312:              ori          a2, s3, 584
                  bge          t6, tp, 324f
                  or           s2, a5, a3
                  sltu         s6, t3, a7
                  bltu         t5, a0, 325f
                  srai         s5, s6, 3
318:              sll          ra, s3, a0
                  and          a0, s8, t1
                  andi         t3, s5, 566
                  slti         s1, s8, 1181
                  beq          s8, a3, 327f
323:              srli         a3, a1, 9
324:              xor          t5, a6, s1
325:              or           s4, a4, t0
                  or           s8, a7, t4
327:              sll          gp, s5, sp
                  xori         s4, t6, 1460
                  or           gp, s8, a5
                  sltu         s8, s10, a3
                  srl          s1, s10, s9
                  blt          t2, s1, 336f
                  beq          s8, t2, 343f
                  bne          a5, a2, 338f
                  and          a6, s9, s10
336:              xor          a5, t5, zero
                  nop
338:              lui          a7, 674396
                  xori         a0, a3, 1449
                  xori         a0, tp, -1199
                  bgeu         s7, a6, 358f
                  nop
343:              add          a6, a7, a0
                  beq          tp, ra, 356f
                  sltu         a0, t3, s4
                  srai         t0, s11, 16
                  xori         s4, s11, -1831
                  auipc        a7, 285838
                  lui          a1, 659819
                  sltu         a0, t3, gp
                  sra          t0, sp, s0
                  blt          s3, s3, 359f
                  sltu         sp, zero, zero
                  and          a0, t3, s11
                  blt          t2, s3, 371f
356:              beq          s8, t2, 366f
                  auipc        a4, 874049
358:              srai         t0, t0, 31
359:              slli         ra, s1, 5
                  auipc        t0, 517157
                  bgeu         a3, a2, 363f
                  la           s6, region_1+539 #start riscv_load_store_hazard_instr_stream_3
                  sb           t3, 1099(s6)
                  sh           s0, 1099(s6)
                  sb           t3, 1099(s6)
                  xor          zero, s11, t6
                  lb           a0, 1099(s6)
                  lh           s10, 1099(s6)
                  lh           a7, 155(s6)
                  and          s9, s7, a5
                  sb           a1, 155(s6)
                  lbu          s8, -214(s6)
                  sb           t2, -214(s6)
                  sll          s2, a0, a3
                  lui          a6, 103018
                  lbu          a4, -214(s6)
                  lhu          s4, 125(s6)
                  lb           t5, 730(s6)
                  sh           s3, 1311(s6)
                  lb           s3, 1311(s6)
                  lhu          s7, 1311(s6)
                  sll          a0, t0, a0
                  lbu          ra, -429(s6)
                  lb           t1, 574(s6)
                  lb           a6, 58(s6)
                  lb           s1, 328(s6) #end riscv_load_store_hazard_instr_stream_3
                  xori         a1, t3, 982
363:              ori          a6, s5, 1794
                  or           s3, s8, s2
                  bge          a7, s7, 381f
366:              lui          a5, 38567
                  ori          t6, t4, -1189
                  beq          a0, ra, 384f
                  srl          gp, t6, t6
                  srli         s8, s11, 15
371:              sltiu        t3, s3, 1743
                  slli         a0, a2, 26
                  addi         s10, s7, -1915
                  beq          t3, s5, 391f
                  and          a7, s0, s3
                  xor          s6, t6, ra
                  slt          s7, t2, s5
                  andi         s7, t1, 346
                  xori         s11, s3, 1117
                  addi         a1, a1, -579
381:              ori          zero, s4, 399
                  srai         a7, a0, 23
                  bne          s9, ra, 401f
384:              nop
                  add          s6, a2, s11
                  srl          s7, a7, a6
                  bne          s10, t4, 392f
                  add          a4, s11, s3
                  xor          a4, a6, t3
                  bltu         s5, a1, 404f
391:              lui          a4, 1010019
392:              beq          s6, s8, 396f
                  ori          t0, s2, 181
                  sll          t0, t2, s8
                  sub          sp, s11, a4
                  la           a6, sub_2
                  andi         t3, s5, -741
                  nop
                  addi         a6, a6, 363
                  or           a3, ra, t2
                  bne          t5, s2, main_j2 #branch to jump instr
                  sub          a1, tp, a5
main_j2:          jalr         ra, a6, -363 #jump main -> sub_2
                  bge          s10, t4, 410f
                  slti         s11, a1, -1567
                  sltu         s1, s6, s0
396:              auipc        a0, 712703
                  auipc        gp, 850874
                  slt          a0, t0, s2
                  bltu         s7, t2, 409f
                  bne          s1, s5, 402f
401:              bne          t2, a4, 419f
402:              slti         s8, sp, 904
                  sll          s6, t2, t5
404:              sltu         s8, a4, s10
                  sub          s8, s2, s6
                  addi         a0, t4, -1510
                  or           t5, s10, ra
                  xor          s4, t6, s7
409:              and          s2, a3, ra
410:              sub          zero, a0, a5
                  sra          s11, s0, t3
                  srli         s11, ra, 13
                  sltu         t6, s6, s10
                  beq          s0, sp, 427f
                  andi         a2, t3, 1606
                  slti         a1, s3, -1791
                  sub          s8, zero, s4
                  blt          s8, s10, 427f
419:              slt          t0, a0, a5
                  slti         zero, s8, 908
                  or           a1, s9, s8
                  xor          a5, a7, t0
                  ori          a1, t2, 1719
                  sll          s4, a3, t4
                  sra          s4, s8, t1
                  sltu         s7, t4, zero
427:              sltu         a6, t4, t5
                  srli         a4, a5, 14
                  sltiu        s8, s2, 1629
                  srl          t6, t6, t5
                  srai         s8, tp, 22
                  andi         s10, a1, -872
                  and          ra, zero, tp
                  and          t4, a5, a4
                  add          ra, a1, ra
                  xor          s5, gp, a6
                  slt          gp, t0, zero
                  slti         a2, s10, 1214
                  xor          s8, t6, a0
                  add          s1, a3, s2
                  xor          s7, gp, t6
                  andi         s5, sp, -79
                  blt          s5, a7, 447f
                  bgeu         s4, gp, 453f
                  sltiu        s8, s8, 1536
                  srli         s6, zero, 19
447:              bge          s0, t6, 460f
                  xori         sp, s11, 1711
                  srai         zero, s1, 27
                  slt          ra, s1, zero
                  andi         t3, t5, 1932
                  sub          s3, t0, zero
453:              and          a3, gp, ra
                  addi         a3, zero, 1082
                  sll          t4, tp, ra
                  sra          t6, a1, a4
                  bge          sp, s4, 462f
                  sltu         s2, s9, ra
                  blt          a5, gp, 478f
460:              bne          a2, a3, 478f
                  bltu         a4, s1, 479f
462:              slli         t5, sp, 26
                  xor          a7, a2, s9
                  slt          s2, zero, zero
                  and          t5, t3, t3
                  srli         a3, t5, 14
                  auipc        ra, 487089
                  andi         s9, a1, -42
                  srl          t1, a0, s4
                  slt          s6, s8, t5
                  xor          t3, s0, s2
                  or           a6, s8, a6
                  or           sp, t2, sp
                  lui          a3, 843853
                  srai         s2, s1, 22
                  bge          s3, s2, 486f
                  auipc        t5, 890269
478:              ori          t6, t6, -732
479:              srai         s11, s10, 12
                  bne          s1, t4, 481f
481:              ori          s1, gp, -403
                  sltiu        a6, s11, -1526
                  nop
                  ori          zero, a0, 906
                  sll          t4, s0, a6
486:              bltu         t5, t3, 490f
                  sra          s5, s11, t4
                  ori          zero, s7, -1549
                  srai         a1, s8, 17
490:              xor          a0, s6, s8
                  sltiu        a5, s9, -648
                  nop
                  bne          s1, t2, 505f
                  sll          s10, s9, a2
                  nop
                  bge          t3, s7, 506f
                  add          a4, s2, s10
                  sra          gp, a7, s1
                  add          s5, s10, a6
                  sub          s8, ra, t5
                  nop
                  sll          s9, ra, s6
                  beq          t4, a0, 514f
                  add          s8, t2, s8
505:              sltu         a1, s2, s4
506:              slti         t6, s1, 1765
                  beq          a3, s5, 511f
                  or           gp, t1, t3
                  addi         a0, a7, -1224
                  slti         s7, gp, 1028
511:              addi         s5, a2, 1932
                  srli         a1, s1, 13
                  bltu         sp, s9, 517f
514:              bgeu         a1, s0, 521f
                  sll          s9, s2, a5
                  addi         a2, s9, -680
517:              addi         a0, a7, 269
                  bltu         t2, a2, 522f
                  add          a7, s2, t4
                  bltu         t3, s2, 536f
521:              slti         t1, a3, -1908
522:              add          s6, a7, s4
                  sltiu        s7, a5, 1115
                  srli         t4, s8, 15
                  xor          a5, s3, t2
                  addi         t4, t2, -1240
                  addi         s10, t6, -800
                  sll          a7, t6, t2
                  sll          s5, s10, t1
                  slti         s5, s4, 2040
                  slli         gp, s11, 15
                  blt          a7, t0, 549f
                  and          a5, sp, s1
                  andi         gp, a1, 990
                  add          a0, a1, zero
536:              bltu         s6, s10, 554f
                  nop
                  xori         a0, s7, 834
                  blt          s10, ra, 555f
                  blt          s6, s9, 541f
541:              ori          zero, a5, -98
                  lui          s7, 377272
                  ori          t1, ra, -1035
                  auipc        s3, 266551
                  andi         t4, a2, -1868
                  auipc        t6, 990993
                  slli         a2, a3, 7
                  add          sp, a0, sp
549:              lui          s10, 350823
                  xor          a0, s3, t2
                  slt          s1, a4, t4
                  sltiu        t6, s1, 899
                  auipc        s8, 614218
554:              bltu         s7, a0, 567f
555:              slt          s6, s10, a5
                  sub          t5, s7, gp
                  srli         a6, gp, 9
                  xor          s4, t0, t4
                  bltu         s7, a0, 577f
                  bltu         t3, s6, 570f
                  auipc        a2, 914127
                  addi         ra, sp, 1700
                  bne          sp, s9, 568f
                  srai         t0, t0, 3
                  addi         a4, s5, -1486
                  sltu         s1, a6, gp
567:              auipc        s4, 528091
568:              auipc        zero, 108146
                  slli         a2, t1, 7
570:              sra          sp, t0, s5
                  nop
                  blt          a0, tp, 577f
                  sub          s9, tp, a2
                  xor          s5, ra, a3
                  bltu         a7, t6, 584f
                  slt          gp, a7, t1
577:              srl          ra, t5, s8
                  beq          s9, t1, 597f
                  beq          a2, s3, 592f
                  srai         s4, t6, 19
                  slti         t4, s0, -219
                  sltu         s8, a1, gp
                  srai         s5, s10, 21
584:              nop
                  andi         a0, a1, -428
                  xor          a5, s2, sp
                  bgeu         s5, a0, 597f
                  sra          a3, s2, t1
                  sltiu        s10, s4, 227
                  srai         s4, a3, 20
                  xor          t6, a6, s2
592:              andi         gp, s6, 1449
                  sltu         a4, s0, a1
                  srli         s9, s0, 16
                  bltu         zero, t6, 606f
                  srai         a5, tp, 17
597:              sra          s6, sp, gp
                  ori          a4, a5, -729
                  bgeu         s0, gp, 617f
                  sltu         s5, a5, gp
                  srai         s9, s8, 1
                  auipc        s1, 785466
                  sra          ra, a3, t0
                  add          gp, zero, t6
                  sra          a7, t6, zero
606:              bltu         t1, gp, 608f
                  slti         t1, s6, 1470
608:              bltu         a0, t5, 618f
                  sub          s1, tp, ra
                  sll          t4, s3, t5
                  xori         t1, t0, -59
                  sra          s9, a1, t0
                  sll          a2, a0, a7
                  srl          a0, t3, t0
                  blt          s1, tp, 617f
                  sub          s4, a1, s0
617:              slli         t6, t1, 15
618:              auipc        sp, 932998
                  andi         t0, s7, -730
                  bgeu         t6, s7, 638f
                  sll          zero, t4, a7
                  or           s6, s11, zero
                  srl          a7, sp, gp
                  andi         s3, t4, 1918
                  slti         a4, s10, 1375
                  slt          s1, s2, sp
                  la           s8, region_1+1359 #start riscv_load_store_rand_instr_stream_2
                  sra          a4, a3, t2
                  sb           a5, 107(s8)
                  lbu          a0, 211(s8)
                  slti         t1, a3, 1211
                  addi         ra, s4, -1127
                  srli         sp, a5, 4
                  sll          t6, s3, a4
                  andi         s6, s3, 609
                  sll          t5, a3, t4
                  andi         s7, t3, -1944
                  lbu          s3, -191(s8)
                  sltu         a1, t3, s8
                  lhu          t3, 187(s8)
                  slt          t0, s2, s10
                  sb           s9, 204(s8)
                  addi         s3, s0, 580
                  lbu          s2, 58(s8)
                  sltiu        a3, s3, 1354
                  lhu          a7, 103(s8)
                  lw           s11, 205(s8)
                  lhu          t3, 99(s8)
                  lbu          t3, 1(s8) #end riscv_load_store_rand_instr_stream_2
                  sll          t6, a6, a5
                  auipc        t3, 528812
                  blt          a6, s9, 646f
                  ori          s2, t6, -1251
                  bgeu         s2, t4, 643f
                  srl          a4, t3, t4
                  srl          a6, gp, gp
                  and          s6, s9, t6
                  andi         s2, s2, -1496
                  srl          s8, t4, s6
                  sub          gp, a1, gp
638:              xori         s9, a0, 1613
                  sub          a4, t5, tp
                  slt          a7, a6, s8
                  add          a6, a7, t0
                  srli         a4, s4, 24
643:              slli         s8, a2, 0
                  add          s1, a3, a7
                  addi         t3, s9, 1684
646:              sra          s1, t5, s11
                  bltu         s10, t3, 658f
                  sltu         s2, t5, s5
                  sltiu        gp, t3, -1869
                  srl          a5, a2, sp
                  nop
                  lui          s8, 529422
                  srli         gp, s5, 17
                  bge          s10, sp, 658f
                  slt          zero, ra, s0
                  auipc        a1, 1022054
                  bltu         s10, s2, 658f
658:              slli         a1, t6, 28
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            srai         s4, s3, 2
                  bge          a1, s4, sub_1_stack_p
sub_1_stack_p:    addi         s0, s0, -36
                  and          s6, a7, t5
                  sw           ra, 4(s0)
                  xor          a0, a3, a2
                  xori         s1, a5, 436
                  and          s6, s7, zero
                  auipc        a1, 403683
                  lui          s1, 503485
                  blt          s4, gp, 12f
                  bgeu         a1, gp, 13f
                  sub          sp, a0, t4
                  srli         t4, t2, 15
                  ori          a3, a1, 1455
                  auipc        s2, 632064
                  and          s7, s9, s6
                  srai         s5, a5, 4
                  slti         a0, s11, 1306
                  nop
12:               lui          ra, 278524
13:               slti         t5, a1, 372
                  bgeu         s8, gp, 21f
                  andi         s1, s2, 1158
                  or           s11, s6, s5
                  srli         a1, a5, 18
                  srl          a3, a3, s8
                  and          t5, a1, s6
                  sltu         t5, a7, a4
21:               slt          zero, a2, tp
                  andi         a0, a4, -786
                  add          s3, s4, a1
                  sltiu        s10, s6, 747
                  bgeu         s10, s3, 27f
                  blt          t0, t5, 27f
27:               lui          t4, 530270
                  lui          t4, 925377
                  srli         s2, a7, 29
                  bne          t6, a0, 34f
                  srai         a2, a5, 6
                  xor          s10, tp, t6
                  slli         gp, a4, 28
34:               and          s3, t6, s1
                  sra          s1, s10, a6
                  lw           ra, 4(s0)
                  sra          a6, t3, s6
                  sub          t0, a3, s8
                  or           a7, a5, ra
                  srl          a2, a6, s7
                  addi         s0, s0, 36
                  sltiu        a2, a3, 1735
                  slt          t1, tp, a3
                  xor          s4, a2, a3
                  lui          s11, 60197
54:               addi x28, x1, 1
54:               jalr x28, x28, 0
sub_2:            bne          a6, s10, sub_2_stack_p
                  xori         s7, s10, -1650
                  slt          zero, s2, a5
sub_2_stack_p:    addi         s0, s0, -60
                  sw           ra, 4(s0)
                  add          a1, a2, s9
                  la           s7, region_1+1959 #start riscv_load_store_hazard_instr_stream_2
                  lbu          sp, 14(s7)
                  lbu          a7, -3(s7)
                  sh           s10, -3(s7)
                  lhu          gp, -3(s7)
                  sb           a0, -3(s7)
                  sra          ra, s3, a3
                  lbu          s6, -5(s7)
                  lhu          t0, -5(s7)
                  srai         s5, s7, 0
                  lh           a0, -5(s7)
                  sb           t1, -5(s7)
                  srli         a4, a6, 8
                  lbu          s3, -5(s7)
                  srli         t3, a4, 16
                  sh           s1, -5(s7) #end riscv_load_store_hazard_instr_stream_2
                  la           s11, region_1+331 #start load_store_instr_stream_2
                  la           s1, region_1+1406 #start load_store_instr_stream_1
                  lbu          t6, -27(s1)
                  la           sp, region_1+1288 #start load_store_instr_stream_0
                  lh           t5, -51(s11)
                  lhu          a0, 27(s11)
                  lb           a5, 4(s1)
                  la           a6, region_1+396 #start load_store_instr_stream_3
                  lbu          zero, 17(sp)
                  sh           t6, 40(s1)
                  lbu          s6, -5(a6)
                  sh           s8, -50(s1)
                  lbu          ra, 33(a6)
                  sb           t2, 2(s11)
                  lh           a4, 22(a6)
                  lbu          a4, 9(a6)
                  lbu          s5, 41(s1)
                  sb           s8, 21(s11)
                  lb           s5, 33(s1)
                  lb           ra, 0(a6)
                  sb           t2, -141(sp)
                  lb           t1, 43(a6)
                  lbu          t1, -46(s1)
                  lb           s2, -59(a6)
                  sh           t3, 8(sp)
                  lb           s6, 12(s11)
                  lw           a7, -18(s1)
                  lw           ra, -52(sp)
                  lb           t3, -49(s1)
                  sb           s8, -57(s11)
                  lb           a3, -227(sp)
                  sh           a6, 46(s1) #end load_store_instr_stream_1
                  sb           a4, 37(a6) #end load_store_instr_stream_3
                  sh           s6, -59(s11)
                  lbu          t3, 35(s11) #end load_store_instr_stream_2
                  sb           a7, -86(sp) #end load_store_instr_stream_0
                  la           t6, region_0+523 #start riscv_load_store_rand_instr_stream_1
                  lh           t1, -1(t6)
                  xor          a6, a2, t6
                  lb           s2, -13(t6)
                  sb           s9, -16(t6)
                  lbu          s9, 2(t6)
                  slti         zero, zero, -1142
                  sra          ra, s10, a7
                  slti         t5, a6, 213
                  lui          s1, 558492
                  auipc        a4, 780826
                  sll          a7, a6, sp
                  andi         a2, t0, -1783
                  sb           s3, 0(t6)
                  sb           t0, 15(t6)
                  srl          a6, a6, a4
                  slt          a3, t5, a2
                  xori         t4, t1, 1122
                  srli         s2, s1, 4
                  sub          a0, t1, s2
                  auipc        s9, 303757
                  sh           sp, -9(t6)
                  srai         s7, t2, 31
                  sltu         ra, t5, s10
                  add          a6, s2, s4
                  addi         a2, t5, 199
                  sltiu        a5, t6, -1703
                  sub          sp, s7, ra
                  sltiu        t3, zero, -473
                  srli         a0, s1, 13
                  auipc        s9, 207147
                  lui          t5, 77006
                  slt          s6, s4, sp
                  lui          s7, 252473
                  andi         a7, zero, 1649
                  lhu          zero, 11(t6)
                  sll          s5, s10, sp
                  sb           s11, -14(t6)
                  lbu          t4, 4(t6) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+1315 #start riscv_load_store_hazard_instr_stream_1
                  lb           s2, 123(s6)
                  and          s10, zero, sp
                  lb           s8, 36(s6)
                  sb           a4, 36(s6)
                  or           a7, zero, s5
                  xor          t3, s4, s8
                  lb           t4, 36(s6)
                  lb           a2, 36(s6)
                  lb           s5, 36(s6)
                  srli         s3, s4, 29
                  sb           a0, 36(s6)
                  lbu          a6, 36(s6)
                  lb           a0, 36(s6)
                  auipc        s7, 114202
                  sb           ra, 36(s6)
                  lh           a4, -249(s6)
                  lbu          t5, -144(s6)
                  sll          t6, a1, a5
                  sb           ra, -144(s6)
                  lbu          zero, -144(s6)
                  sb           t5, 176(s6)
                  lb           s8, -210(s6)
                  lb           s3, -210(s6) #end riscv_load_store_hazard_instr_stream_1
                  la           s9, region_0+148 #start load_store_instr_stream_4
                  la           a3, region_0+673 #start load_store_instr_stream_1
                  la           t0, region_0+1727 #start load_store_instr_stream_0
                  la           t3, region_0+1389 #start load_store_instr_stream_2
                  la           t5, region_0+1241 #start load_store_instr_stream_3
                  sh           t1, 1269(a3)
                  sb           a6, -392(t0)
                  lw           sp, -29(t3)
                  lbu          s4, -11(s9)
                  lb           sp, -1180(t3)
                  lbu          a4, 444(a3)
                  lh           s7, 40(s9)
                  sb           a4, -579(t0)
                  sb           a3, -24(t0)
                  lb           t1, 9(t5)
                  lbu          s1, -6(t5)
                  lb           s11, 0(s9)
                  sb           sp, -98(a3)
                  sb           t0, -22(s9)
                  sb           a1, -1572(t0)
                  lbu          s11, -288(a3)
                  lb           s11, -664(t0)
                  lb           t6, 3(s9)
                  sh           s2, 1313(a3)
                  lb           a4, -4(t5)
                  lb           s1, -8(t5)
                  lbu          s2, 200(t3)
                  lb           gp, 7(t5)
                  sh           s4, -123(a3) #end load_store_instr_stream_1
                  sb           s8, -6(t5)
                  sb           ra, 55(s9)
                  lbu          a1, -966(t3)
                  lb           s8, 57(s9)
                  sb           t0, 588(t3) #end load_store_instr_stream_2
                  lh           s11, -3(t5) #end load_store_instr_stream_3
                  lbu          s4, 15(s9) #end load_store_instr_stream_4
                  lbu          a5, -24(t0) #end load_store_instr_stream_0
                  la           sp, region_1+1369 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s5, -1364(sp)
                  xor          s2, s7, t2
                  sb           t6, 118(sp)
                  sb           s0, 118(sp)
                  lw           s3, -101(sp)
                  srli         a5, a7, 10
                  sb           a7, -1248(sp)
                  slli         t1, a6, 6
                  lbu          s3, 71(sp)
                  nop
                  lb           t3, 71(sp)
                  sw           t5, 71(sp)
                  lbu          t6, -973(sp)
                  sltiu        s4, s9, -412
                  lh           s2, -973(sp)
                  lbu          zero, -1037(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t5, region_1+621 #start load_store_instr_stream_1
                  lh           s4, 49(t5)
                  sw           a6, 3(t5)
                  la           s9, region_1+1807 #start load_store_instr_stream_0
                  lb           sp, 3(t5)
                  sb           a6, 9(t5)
                  lb           t3, 68(s9)
                  lb           zero, -57(t5)
                  lbu          sp, -35(s9)
                  lbu          t0, -57(t5)
                  lhu          a7, -141(s9)
                  sb           s6, -109(s9)
                  lbu          t6, 14(t5)
                  sb           t4, 0(t5)
                  lhu          s6, -249(s9)
                  lbu          s6, 46(t5)
                  lbu          a4, 43(s9)
                  sb           t1, -61(t5) #end load_store_instr_stream_1
                  lb           s11, 48(s9) #end load_store_instr_stream_0
                  la           s11, region_0+1887 #start riscv_load_store_rand_instr_stream_0
                  sra          s8, gp, a7
                  srai         s7, s7, 30
                  add          a4, a6, sp
                  sb           tp, 56(s11)
                  lb           a4, 62(s11)
                  lui          t0, 39115
                  slt          gp, s9, t0
                  lh           ra, -63(s11)
                  lb           gp, -38(s11)
                  or           sp, t5, s9
                  sb           s4, 23(s11)
                  sb           s2, 6(s11)
                  lbu          s10, 54(s11)
                  lh           zero, -63(s11)
                  slti         sp, a7, -120
                  xor          sp, a3, s2
                  sll          s4, s8, a7
                  lb           s9, -56(s11)
                  nop
                  lbu          s4, 33(s11)
                  slti         s7, zero, 1603
                  addi         t0, a2, -1244
                  sb           t6, 6(s11)
                  sb           ra, -25(s11)
                  srai         a6, s8, 5
                  slt          t5, s6, zero
                  sll          a3, s9, a4
                  lhu          a1, -45(s11)
                  sltiu        s3, a4, 453
                  sb           gp, -61(s11)
                  and          s7, a4, t0
                  xor          a3, t1, zero
                  xori         s10, a2, 1740
                  slti         s7, t4, 1044
                  sb           gp, -2(s11)
                  sltu         a3, s8, s8
                  lb           t1, 57(s11)
                  lb           a7, -4(s11)
                  sltu         zero, s10, s3
                  ori          s6, t4, -293
                  srli         s7, s1, 15
                  srai         s9, t0, 11
                  srli         t0, gp, 16
                  lbu          s1, -42(s11)
                  xor          a6, a4, a0
                  lb           a4, -1(s11)
                  addi         t6, s2, 1973
                  srai         s8, t3, 22
                  sb           zero, -44(s11)
                  lb           s3, 58(s11)
                  sb           t0, 36(s11)
                  sb           a7, -10(s11) #end riscv_load_store_rand_instr_stream_0
                  blt          a7, s2, 15f
                  sltiu        s10, s10, -708
                  bgeu         zero, a6, 10f
                  sll          a3, t2, s2
                  bge          ra, s11, 23f
                  beq          a1, a0, 7f
                  srli         zero, a2, 21
7:                srl          s6, a5, s11
                  lui          t4, 252066
                  slt          ra, s11, s7
10:               beq          s3, s9, 28f
                  bne          s11, tp, 14f
                  slli         a6, s5, 29
                  auipc        s4, 151991
14:               beq          a7, a1, 32f
15:               sll          t4, s10, a0
                  slti         a4, s4, -1277
                  sra          a2, sp, tp
                  bgeu         a0, s2, 35f
                  bltu         a7, t5, 23f
                  srai         t3, a3, 12
                  auipc        s9, 385807
                  andi         s4, s1, -1799
23:               sra          s9, t3, a6
                  addi         s9, a6, -824
                  and          s10, a2, s9
                  beq          a0, s4, 40f
                  xor          t0, a0, s5
28:               or           s3, s9, a4
                  or           a1, s1, s11
                  sltiu        gp, t2, -179
                  sltiu        s9, a6, -404
32:               blt          s6, zero, 52f
                  slti         s10, t6, -5
                  bge          s11, t2, 36f
35:               srli         s10, gp, 14
36:               lui          s11, 321545
                  or           a1, gp, ra
                  sltiu        s2, a3, 79
                  add          s2, t2, s5
40:               beq          a3, s1, 41f
                  la           s9, region_0+1887 #start riscv_load_store_rand_instr_stream_2
                  ori          s6, s2, 1595
                  lbu          s11, -724(s9)
                  auipc        a3, 236625
                  lb           s5, -1240(s9)
                  slt          s8, a1, s1
                  lh           s7, -521(s9)
                  lw           t5, -211(s9)
                  srli         ra, t0, 28
                  srl          a2, t1, s4
                  sb           a4, -387(s9)
                  andi         a4, t6, 284
                  lw           t5, -303(s9)
                  srli         gp, tp, 3
                  auipc        ra, 743911
                  lhu          t3, -213(s9)
                  lbu          t6, -73(s9)
                  auipc        sp, 625902
                  sltu         ra, a4, t5
                  slli         s3, s5, 7
                  xori         s4, s2, 1943
                  sub          a4, t0, s6
                  sh           s7, -145(s9)
                  or           a0, a0, gp
                  sltu         t0, t6, s5
                  sub          a5, s0, ra
                  srl          a0, s1, s2
                  lbu          t3, -1632(s9)
                  ori          t0, s2, 290
                  auipc        s10, 573593
                  ori          zero, s6, -1660
                  sb           a1, -393(s9)
                  sb           a5, -725(s9)
                  sw           s4, -1079(s9)
                  add          a0, a3, a5
                  ori          t4, a2, -479
                  lbu          s8, -758(s9) #end riscv_load_store_rand_instr_stream_2
41:               bltu         t6, a6, 45f
                  xor          s7, s11, t5
                  and          a4, s2, t0
                  bgeu         s0, a2, 47f
45:               sltiu        s10, s2, -672
                  bgeu         s11, sp, 54f
47:               xor          t4, t2, zero
                  nop
                  bge          s10, s0, 50f
50:               nop
                  srli         a6, zero, 31
52:               xori         a7, ra, 807
                  sra          a3, sp, s7
54:               bge          a7, t4, 62f
                  bgeu         zero, a7, 69f
                  lui          s5, 38427
                  slli         a0, a7, 29
                  add          a1, t2, a1
                  bge          s9, t6, 62f
                  blt          t3, s5, 68f
                  nop
62:               lui          a3, 373178
                  bne          s3, a1, 67f
                  bne          s3, a1, 74f
                  sra          t0, s2, s10
                  srl          s6, s3, tp
67:               auipc        a7, 60420
68:               blt          zero, s10, 77f
69:               sra          s6, t4, a7
                  andi         a2, t0, -863
                  bgeu         s4, s5, 78f
                  xori         t4, t0, -1509
                  slli         gp, s1, 25
74:               slt          a2, s3, s0
                  sra          t0, gp, a2
                  xori         t6, t3, -1041
77:               slt          s9, ra, zero
78:               slt          s10, t0, s3
                  auipc        s9, 1010218
                  or           s5, t5, gp
                  sub          a5, tp, s6
                  sll          t1, t5, s11
                  auipc        sp, 762807
                  ori          zero, t4, 1785
                  auipc        a2, 981036
                  sra          s7, t3, t1
                  addi         gp, s4, -2023
                  slt          a3, gp, zero
                  beq          a6, s11, 94f
                  slti         a4, s0, 1778
                  lui          s11, 752407
                  and          s5, a7, s1
                  slt          s2, t2, s3
94:               bgeu         s9, t3, 107f
                  lui          s8, 796528
                  blt          t0, s9, 116f
                  sltiu        s3, t4, 759
                  bltu         ra, a6, 114f
                  bgeu         s5, t0, 116f
                  nop
                  xori         s6, a1, -1549
                  bge          a4, s8, 104f
                  ori          s2, a6, 1003
104:              sll          s2, s0, t0
                  srli         t5, t1, 2
                  beq          s1, t6, 107f
107:              add          a2, a1, s7
                  slli         a0, sp, 30
                  sll          a2, t3, s6
                  sltu         a5, s1, s5
                  bgeu         a4, s6, 115f
                  slli         s9, t3, 9
                  srai         s1, s4, 26
114:              bgeu         s4, t6, 132f
115:              sltu         t6, s3, s2
116:              lui          t0, 553442
                  add          t3, t5, s0
                  blt          s5, a7, 138f
                  sub          a7, s11, s6
                  andi         s1, a5, -1985
                  sll          a7, s9, s11
                  or           t3, s7, s1
                  sra          s9, s9, s11
                  sltu         a0, s10, s1
                  srli         t5, s4, 14
                  bne          s6, t4, 129f
                  auipc        a3, 918653
                  blt          tp, s7, 133f
129:              and          a4, s7, t1
                  xori         s2, a0, -898
                  xor          s9, a0, t1
132:              beq          t3, s11, 140f
133:              xori         s10, t5, -1893
                  slt          s9, t3, a4
                  bltu         t5, s4, 155f
                  or           s9, t6, s0
                  bge          t0, ra, 139f
138:              auipc        t0, 559457
139:              auipc        t0, 411999
140:              beq          s7, tp, 143f
                  and          t0, t6, s9
                  sltu         s3, zero, sp
143:              addi         t1, a4, -1643
                  andi         ra, t6, 28
                  slli         s6, s8, 17
                  andi         a6, zero, 570
                  addi         s9, s9, -1306
                  slli         s9, s4, 31
                  bgeu         s2, a1, 158f
                  srl          t4, s8, zero
                  slti         s9, a0, 1686
                  and          a0, s3, a7
                  addi         s4, a6, -928
                  sub          s8, t5, t4
155:              beq          s3, zero, 171f
                  bgeu         s11, a7, 157f
157:              beq          ra, s10, 175f
158:              srli         t0, s8, 25
                  xor          s4, zero, s0
                  sltu         a3, t6, t5
                  bge          s1, s1, 165f
                  sra          t3, t0, s3
                  sra          a6, s4, sp
                  nop
165:              sll          s3, s11, t3
                  add          t3, tp, s4
                  srl          s2, s10, s8
                  sra          a3, a7, a6
                  lui          s11, 864733
                  srl          s8, s2, s4
171:              blt          s0, s11, 188f
                  auipc        s6, 144560
                  slti         t5, t0, 1826
                  bltu         t5, s8, 177f
175:              xor          s4, t1, t4
                  slti         ra, s6, -1662
177:              andi         a1, t1, 1477
                  bgeu         zero, a0, 186f
                  sub          s2, tp, s10
                  bge          s10, t5, 184f
                  srai         a1, t4, 3
                  sltiu        sp, t2, -1338
                  add          ra, t6, t6
184:              sra          s7, a0, tp
                  bge          t2, a4, 198f
186:              sltiu        a3, t5, -1618
                  slti         s4, t6, 468
188:              xor          ra, t6, tp
                  nop
                  xor          s4, t2, s8
                  lui          sp, 156618
                  bne          gp, a2, 200f
                  blt          s7, a7, 207f
                  slti         s4, a0, -1107
                  slti         a5, zero, -945
                  srai         s7, a7, 17
                  beq          ra, sp, 214f
198:              slli         a5, t2, 13
                  bge          a5, s4, 209f
200:              andi         s9, t2, 101
                  sra          a6, s8, s6
                  srli         a5, a3, 26
                  andi         a6, s3, -591
                  slli         s11, zero, 1
                  srl          s2, sp, a1
                  slti         s5, t2, 529
207:              srl          s8, t1, t1
                  sll          s7, a2, s10
209:              xor          t6, a1, t3
                  ori          s11, s6, -561
                  sub          a2, t2, sp
                  srai         sp, t1, 13
                  or           ra, t6, sp
214:              nop
                  bgeu         t5, t6, 223f
                  nop
                  bge          a3, gp, 231f
                  beq          s5, a6, 237f
                  add          s11, t2, s1
                  and          a1, ra, s11
                  bltu         gp, ra, 228f
                  sll          t3, s5, tp
223:              xori         a7, s4, -1529
                  auipc        t6, 582424
                  srai         a2, t5, 19
                  bgeu         t2, tp, 241f
                  bne          s2, s1, 230f
228:              addi         a0, t5, -36
                  sltu         t5, s1, s10
230:              bne          zero, a4, 247f
231:              srai         a6, a2, 2
                  bgeu         s8, a4, 239f
                  sll          s6, t4, gp
                  auipc        s10, 980238
                  nop
                  srai         a2, s2, 27
237:              sub          gp, t0, t5
                  xor          a6, tp, a0
239:              srli         a1, t1, 14
                  or           s2, gp, t5
241:              bgeu         a5, t2, 261f
                  andi         ra, a2, 694
                  sub          t6, a2, a3
                  slli         s8, s7, 17
                  ori          a2, a0, -1449
                  slli         s7, s5, 18
247:              sub          s1, t1, a0
                  srl          t5, s6, t6
                  slli         s1, t4, 8
                  sub          ra, t4, s9
                  lui          t4, 465246
                  nop
                  xor          ra, a5, a7
                  xori         a5, s3, 93
                  xor          s1, t5, s2
                  slli         a6, s7, 15
                  and          s5, s5, a4
                  and          a5, t6, gp
                  beq          t5, s6, 263f
                  beq          s9, s1, 276f
261:              addi         s10, s5, -1753
                  srai         s5, s10, 11
263:              sra          s4, a3, a3
                  slt          s10, ra, s10
                  slli         t0, s9, 24
                  slli         t5, t2, 24
                  nop
                  lui          t3, 288434
                  bgeu         s7, zero, 284f
                  lui          s3, 23957
                  xor          s3, t4, a7
                  and          s11, t2, s6
                  srli         a5, s9, 30
                  xor          a4, s10, s1
                  bne          gp, a6, 276f
276:              addi         s4, s3, 1997
                  nop
                  nop
                  srli         t6, ra, 8
                  ori          s5, s6, -2043
                  beq          sp, t0, 301f
                  and          a3, t6, s2
                  xor          t1, s3, s5
284:              add          t0, s2, t6
                  slt          a0, a2, s4
                  xor          s10, s3, a5
                  srai         t5, s2, 4
                  lui          s1, 707771
                  auipc        t0, 925452
                  blt          s0, s5, 304f
                  blt          s0, s8, 300f
                  lui          gp, 287771
                  beq          ra, s0, 303f
                  bge          gp, s9, 304f
                  sra          s5, s9, t3
                  xori         sp, s9, -1478
                  auipc        s2, 805607
                  blt          zero, gp, 301f
                  bge          t6, t1, 301f
300:              auipc        a4, 406048
301:              srli         t6, a0, 27
                  beq          s11, ra, 304f
303:              sltu         t4, t3, a7
304:              lui          t4, 203038
                  lw           ra, 4(s0)
                  ori          s3, s4, -1675
                  sll          s10, t4, s9
                  sltiu        s6, gp, -667
                  or           s9, s11, a5
                  srl          s7, zero, a4
                  sltiu        s5, s11, 1678
                  and          s9, zero, s2
                  addi         s0, s0, 60
                  slti         t1, a7, -807
                  sll          sp, zero, a4
600:              addi x31, x1, 1
600:              jalr x31, x31, 0
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
.word 0x049519b0, 0x2535ac73, 0xd0c85a7f, 0xb4642363, 0xa57770d4, 0xef40ef0d, 0x41b34f27, 0xe43f2409
.word 0xcc6d239f, 0x41255099, 0x4b4210d7, 0xd47ec70e, 0x742e6ce3, 0x5a67a672, 0xf2894717, 0xc76b5ac3
.word 0x9c1b1e39, 0x6593a2b1, 0xe8bdd6e2, 0x12f33b17, 0x325e91a2, 0xb123c0b0, 0x11e025b8, 0x48a5bb0a
.word 0xa687e478, 0x9cb2a251, 0xa818bd3e, 0x4b462fcf, 0xcd2e97d5, 0xc70fe65f, 0x935a0068, 0xd0b92aab
.word 0xc4287ff6, 0xd72a1b6a, 0xcf5c9962, 0x46fadd53, 0xa9fe2220, 0x08f9c605, 0x3d8b4c28, 0xa55e31f1
.word 0xaf87a728, 0x8c02d4aa, 0xc075bb58, 0x432e2f2a, 0xd5ecaf2b, 0x690b5faa, 0x625e3e95, 0xaffa784d
.word 0x05573433, 0x98230aa0, 0xc58e2924, 0x2ae0c0c8, 0x7f14e43f, 0xba50d947, 0xf4fc01de, 0xb0855cc8
.word 0xae6612cd, 0x75608235, 0xe06c5cba, 0xb2ddbfff, 0xd7133bdb, 0xc1f1d692, 0x1ccaf052, 0x60b08d1c
.word 0x3b07d0e9, 0xc3603b6f, 0xab829190, 0xa35b3b35, 0xe7a0004e, 0x3a23ac2b, 0xec386186, 0xd6974fdb
.word 0x1c6d4cdd, 0xaba078a0, 0x0b2af366, 0xe91c1865, 0x3a2a9c97, 0xf9b6cb0c, 0x9e8b4093, 0xe43f3500
.word 0xac488269, 0xf73127c3, 0x293e33c1, 0xad2013ff, 0x71102af4, 0x47832ba9, 0xb18d9e2b, 0x4c1cac18
.word 0x459e799b, 0x97a4a901, 0x5fcc8e90, 0x9f8a7d75, 0x68e4eb7b, 0x0d3ef808, 0xb76acf67, 0x31246140
.word 0x93cbaa87, 0x527156ad, 0xcde8b452, 0xc0926d3f, 0xe06faff3, 0xe6de678f, 0xe63cff38, 0xdf27a933
.word 0x97951c34, 0x8a26132a, 0x22b9fd5a, 0x9529c2bb, 0xcaaa6f5a, 0x3ffff88c, 0x3d861fb9, 0x0f102fcc
.word 0x12d69bc1, 0x08dad890, 0x3eb164ad, 0x1f05ac20, 0x183e1d38, 0xbb98f225, 0x05e72b50, 0x67f20990
.word 0x12558b6d, 0xee184d89, 0x9c0a8208, 0x45d14910, 0xf9d31bf2, 0x4b65fc59, 0x81fef7d3, 0xff23294a
.word 0xb1cc557b, 0xd847052d, 0xff6e7a4c, 0xf1f5c7ac, 0xa752a555, 0x5a83d0df, 0x0efb246d, 0x34eb0eaf
.word 0x3ea70321, 0x4da7931c, 0xeeb6cd99, 0x105b78db, 0xdeb82a90, 0x862057ad, 0x2755a6bb, 0x1700eb76
.word 0x19ad6dd6, 0xe89818c4, 0xb9da0a8d, 0x31b610f7, 0x5e879a3f, 0x21a2c32e, 0x41ed14cd, 0x668a0af1
.word 0xbe06325c, 0x53bed35b, 0x5f2749d3, 0xc1e3e31f, 0x982b8d34, 0x9118f449, 0x5c69a38e, 0x9128ccc4
.word 0x42618257, 0xddc58623, 0x059bc7d6, 0x3770c27d, 0x8b52b99d, 0xe868efb7, 0xb74a7f6b, 0xb1e9e2fb
.word 0xa29afa51, 0xbe6f270d, 0x04fa843f, 0xbb04b6b1, 0x10b2ba34, 0xb1b5e95a, 0x5069f8fe, 0x186fa08a
.word 0x2abfbb04, 0xf3479c9f, 0x65274ac5, 0x249fed11, 0xf0ff0bac, 0x029027c9, 0x37267da5, 0x3765e5d0
.word 0xf44c5daf, 0x45668422, 0x1d1f6fc2, 0xbb325b8c, 0x493a4f1a, 0x8c20d250, 0xd10a67d1, 0x10221a7b
.word 0x3878d6cb, 0xcf8b8ba1, 0x6ee25aa0, 0xb654b6d1, 0x21e36185, 0x8b48c2d4, 0xd6774e36, 0xfd70dfd2
.word 0x71b029fa, 0xac1bd0c7, 0xd7471ca3, 0x8f0995aa, 0x9a630c88, 0x6fb50170, 0x0d25d949, 0x6f203305
.word 0x499a0a0f, 0xe694196e, 0x13a9514b, 0xdea3a785, 0xe8d10457, 0xe6ac4aba, 0xfad928fb, 0x139c7f72
.word 0x17ef6b9f, 0x713b1574, 0x4a46816e, 0xd6792c19, 0xb5c06eeb, 0xfed7b07a, 0x7d25a169, 0x8c31c037
.word 0xc04e09ce, 0xd71d3acf, 0xd7807f41, 0xf2346c03, 0x303e1f34, 0x6f4b6e13, 0x11216b26, 0x3a0f3af2
.word 0x702d7182, 0xf46deae3, 0x07452933, 0x61f5e1fe, 0xc418f89e, 0xe04e2a96, 0x8814cfa1, 0xe383b6f5
.word 0x6202dc65, 0x284403f1, 0x5667b433, 0x5a1d4a0d, 0x4e29c8df, 0x97358948, 0x18652c3f, 0x5c892faf
.word 0xcbd14c51, 0xb68b52df, 0xf6c67813, 0x4dff8137, 0xbfe818b8, 0xd634da52, 0xd0e17064, 0x678ac045
.word 0x80f3e9f8, 0xefd10bb8, 0x71c16948, 0xa05dd973, 0xc45f36f1, 0xc608f411, 0xf35d7fe9, 0x67a6bea7
.word 0xce5f136d, 0xf27b9bb7, 0x081317a6, 0x6d18bf54, 0x7a5a5a61, 0x7703e90b, 0x2aeb6965, 0x79a8c43f
.word 0x1c87ba3d, 0x467c90d7, 0x03130cf2, 0x3d78e5d2, 0x449612e1, 0xa653a12a, 0x951be5a2, 0xaacb1d18
.word 0x0c373e2e, 0xa995921a, 0x1c2fdc12, 0xc24869f5, 0xb3562477, 0x5f05eb78, 0xf78c2cd2, 0x71cd3c04
.word 0xc4f98011, 0xdf311f5a, 0x46b16fa5, 0x58f436fd, 0x51fcec33, 0x0496ea0c, 0x37414718, 0x9bb57b20
.word 0x152feb9b, 0x950e210f, 0x5ef75f8f, 0xb8e25084, 0xfa9f59b0, 0x077929de, 0xfd600edb, 0xd84066ba
.word 0xf2ea392f, 0x0b73c13f, 0x31cd93c6, 0x7696f8d7, 0x87ce8207, 0x21a12db8, 0x33d07a6a, 0x55ed30c8
.word 0x0f581b06, 0xdbe5f9d6, 0xf9a0ad0d, 0xcc396a4f, 0x9068a73c, 0x0d7f6dee, 0x3403ee5f, 0x2f1d3712
.word 0xc2d63a43, 0xa2718619, 0x77931875, 0xd915437a, 0x70495733, 0x8bb430e1, 0x74966c68, 0xa77cb4ce
.word 0x5f611998, 0xcbb613e1, 0x1e35171a, 0x201e9998, 0x0dfa5996, 0x8f70f963, 0xa56a6307, 0x9c64e9d6
.word 0xb713a014, 0xbf083eb6, 0x774095c6, 0xe72bb2ad, 0xa8ee0cf9, 0xe824827a, 0x71867e95, 0xfe05986f
.word 0xca1fb6a2, 0xb6bad523, 0x85d41cab, 0x9dbd7693, 0x8a5fc62e, 0x821bd89a, 0x48463c74, 0x98663f66
.word 0x5ca9f2d1, 0x8fd90f79, 0x7aff0e37, 0x7bcf6b98, 0x7bf6e573, 0x4e9533a5, 0xcb3eb96f, 0x041c2a66
.word 0x433bdd4d, 0x6a469d08, 0x2a1254dd, 0xc916d334, 0x711096d0, 0x57b6f72f, 0xa3eb561f, 0x74f34847
.word 0x7821e8db, 0x8894ffdc, 0x6f72b2f4, 0x58c1e87a, 0xfe04278d, 0x02e7a0d7, 0xb967fd3e, 0x8f40f769
.word 0xc4eee6e8, 0x2b3d7154, 0x2e8829a3, 0x22646b36, 0xa4ba6df2, 0x4a5f470a, 0x77bc6365, 0x58277c6d
.word 0x646fa834, 0x1d6530e7, 0x1cfa1497, 0x3a0f034d, 0xe355fc70, 0x29decaea, 0xd87f9327, 0xa6feb4b4
.word 0x0a64668e, 0xd1890378, 0x5934da05, 0xd5ff20b4, 0x5b486482, 0x9c804b5f, 0xd7d9ec08, 0x97e458a6
.word 0xe963ec33, 0xda83357e, 0x4c372f1a, 0x2e06801d, 0xf27d7bda, 0x221d5414, 0x246e97f0, 0xd80c552c
.word 0x044a651b, 0xc8c75a34, 0x4146e0d6, 0x126389f2, 0x77b0bfdf, 0x2f73e0bd, 0xab7b5a6a, 0x6061c1c4
.word 0x6519a8c5, 0x7f10d561, 0x181302aa, 0x6e475ec7, 0x9d6f78ec, 0x7c289ba2, 0x1f43d932, 0x9fcee3e3
.word 0x011d907f, 0xe9719a8d, 0x28b4c93a, 0x31ff8d5d, 0xa596d2ad, 0xbd16dabc, 0x75798301, 0xf6152277
.word 0x03800e96, 0xcf0c071b, 0xae0ef800, 0xf19fc34d, 0x3117b4b4, 0xbf216e0a, 0x01083fa6, 0xcb808ba3
.word 0xd1b9e7ec, 0x00a8747c, 0x37a3050a, 0x08c9edc2, 0x7203871f, 0x4f161c22, 0xe11e7bd4, 0x59364b01
.word 0xc7f650eb, 0x8fdabf44, 0xe83bb021, 0x32a8fb76, 0x7f3d227d, 0xa1f1957b, 0xa480c8fe, 0xdf03ae9e
.word 0xaca4ea46, 0x195ed76d, 0xfd474cad, 0xc84c219b, 0x10fa384c, 0x69dbd601, 0x9d25af7e, 0x6c3a6a48
.word 0xe37c4104, 0x3e7e3f2a, 0x978f4317, 0xbc80438a, 0x5624af7c, 0xc7e1acb9, 0x29405d88, 0xa3307ca1
.word 0x8d71f31f, 0x29aed9e1, 0xf9e2675a, 0xc1f8064c, 0x91021597, 0x69761b34, 0x8ecc4f30, 0xaac5c571
.word 0x64bb3f33, 0x04ce9db3, 0x944e651e, 0x343049b3, 0x170948eb, 0x6b81bf1c, 0x413671ea, 0x2fff1d42
.word 0x1bc18ecd, 0xc0e49f4a, 0xea9af41e, 0xc3caef6d, 0xb42227bc, 0x91822d86, 0xf902efdc, 0x60c456b0
.word 0x9462467a, 0xd4ac5eb9, 0x89762fd1, 0x70b5ce18
.section .region_1,"aw",@progbits;
region_1:
.word 0x729b93df, 0x65fe8b77, 0xfb23432e, 0xe4699276, 0x89af7001, 0x8640d621, 0xda74457f, 0x99af3971
.word 0x23856ed2, 0x37ba7631, 0xc7da1d72, 0x98564ae2, 0xeb635466, 0xbfa1b4af, 0x07b8d368, 0x924d9068
.word 0xd4a887f4, 0xc0209807, 0x58e041ef, 0x8797f199, 0x3d7656cb, 0x10a773f3, 0xadfb088d, 0x0e0abc76
.word 0x203ab8f4, 0xd0615b06, 0x76242d49, 0x250fa424, 0x4ff5b471, 0x01693ca5, 0x820817c5, 0x916fa21a
.word 0x16cda6c0, 0xd9796b94, 0x6d41f079, 0xeffc56b0, 0x4373d2db, 0xec46f2c6, 0x27149bc5, 0x5afa3afd
.word 0xee403fd6, 0xdec583af, 0x9ea7d777, 0x45014b74, 0xab769b6f, 0x1b5d2ad5, 0xc86a2c67, 0xf0d72ea8
.word 0x5c8f1c98, 0xb69e2eaf, 0x51d73b13, 0x27d2f3a8, 0x69c089a7, 0x7787dfb5, 0x3e16996b, 0xb1cf114c
.word 0xb2f1baca, 0xb0203553, 0xad09682a, 0x695f7b1d, 0x46ebda61, 0xc9cefe75, 0x4cf31f93, 0x38ec2163
.word 0x54076ab2, 0x633e79b5, 0x44c23217, 0x1d31741e, 0x297b2376, 0x80432752, 0xe20c7428, 0x0a072eaf
.word 0x53f5fec5, 0x43accd79, 0xc07a4575, 0x155a5544, 0x60d46148, 0xb561f08d, 0xf264e2ff, 0x7adb1e94
.word 0x172e8656, 0xba888ed0, 0x08afbc51, 0x5cfdb132, 0x567e37b8, 0x1bc5d9d4, 0x5f847a53, 0xa9a53097
.word 0xb6be76f9, 0xede7d4f0, 0xe6ca97a5, 0x836e1bdc, 0x3fd1ed75, 0x5b58c24b, 0x8c699f2b, 0x40c8f53c
.word 0x3675aac4, 0x4c156ca5, 0x557682ce, 0x433604bd, 0x91d53aa1, 0x9d82b0bd, 0x2f614854, 0xbc2cab9c
.word 0x340c4326, 0xdaffdc6e, 0x8f9dadbc, 0x4a74f1d7, 0x8971f925, 0x3b7c089e, 0xee4ca597, 0x83e7ed3b
.word 0xc93561aa, 0x98c0b516, 0xe0f5e009, 0x987ca7d4, 0xadc27728, 0x41eebcdf, 0x262c080e, 0x72569bca
.word 0xc16b2b18, 0x24838ff2, 0xdb0e53fe, 0x016e685e, 0x35cb2adb, 0xbdb463ae, 0x7883240d, 0x0c27699b
.word 0x6a0bb12c, 0xee60a57c, 0x4893bc49, 0x2062bcda, 0x23e3d57d, 0xb182fc7b, 0x9517b044, 0x1ef7f0c5
.word 0x9f3a963c, 0x97058195, 0x7e7e546a, 0xe364281d, 0x6e569abe, 0x6735f97f, 0xc88db2ed, 0xf6de2d32
.word 0xd087c49b, 0x148d8176, 0x85431eb5, 0x77e1dcff, 0x1a47c7c9, 0x33612ac0, 0x7182402d, 0x496194e7
.word 0x325e19fb, 0x2c81d7f3, 0x91ec9bc8, 0xc2b5b6c1, 0xc5ecb173, 0x00fc5e60, 0xd4d1ab84, 0xd307e8dd
.word 0x40331d58, 0x81fb8ef3, 0x9cb7f584, 0x777fc73d, 0x60a845c1, 0x5166ecf3, 0x61ccb92e, 0x66c1f56d
.word 0x6dc28400, 0x571a883b, 0x5c01980d, 0xae970947, 0x0ad93262, 0x4c1cb656, 0x88c0b345, 0xe230d0c6
.word 0x2f4a7fe5, 0x075f2159, 0xf6857590, 0x0e12bd7f, 0x08bcc2de, 0x7483686c, 0x431506a5, 0x2b89d604
.word 0x67bdc6b3, 0x661613da, 0x5e31aaed, 0x16e313fe, 0x353d31a0, 0xebc16c04, 0x6d66614d, 0x1998ac81
.word 0x341c6e72, 0xf07199e3, 0xc2ed3425, 0x54f24fcb, 0x2c93180f, 0xf3dca091, 0xc1b359ba, 0x4223f36e
.word 0x21ab9c6f, 0xd2b30899, 0x70b11e5a, 0x6d720648, 0x2f91fdc0, 0x1e89ee66, 0x39599fc0, 0x1089393a
.word 0x162edeb6, 0x0f950dc7, 0x1acf47bc, 0x572b8941, 0x6a57721e, 0x8b76df24, 0x375b923f, 0x235aad08
.word 0x3388d093, 0x96af207b, 0x751e29ea, 0x10225fcd, 0xd5755ba9, 0xf2b5a591, 0x3cf85e54, 0x1d9ec502
.word 0x1008f030, 0x41fcbfe2, 0xac9a8695, 0x27bafd97, 0x24e1c4cb, 0x3c22dc39, 0x0a72d767, 0x54ebe8f1
.word 0x8dc33e6b, 0x5e215821, 0xcad8c1c2, 0x4d955f6d, 0xb2425fce, 0x3b176d39, 0x3767d515, 0x3e169149
.word 0x941977ba, 0x412f6804, 0x4feea67e, 0x58d5b3c3, 0x984c6ba9, 0x1854a807, 0x02ee5c2b, 0xb86f1850
.word 0xb129088e, 0xded77c08, 0x6d030552, 0x76f45673, 0x3872ff24, 0xc80d221e, 0x2b87d213, 0x2988cb2c
.word 0xb49d7be0, 0x2641270e, 0x78855287, 0x84b86de5, 0xf3b8a157, 0xd22a310f, 0x612e0124, 0x6b49c2cf
.word 0xf1a068b5, 0x62be9dc5, 0x1f9d2a7c, 0x6f1fe08a, 0xcc2b6afa, 0x8ddadcc9, 0xdb104f76, 0xe6f85fd3
.word 0xb4021316, 0xcb125f22, 0xe8d5001d, 0xcb852979, 0x057d643a, 0xf3c3b55a, 0x0a0e9788, 0xde7a741c
.word 0xb957af35, 0xe5799eec, 0x0e6882b8, 0xa75d77bd, 0xad552990, 0xc1d15885, 0x7a3e7bb6, 0x8e1763c7
.word 0xfe94e4b7, 0xef805aec, 0xd6e448b8, 0x945538a2, 0x450a8999, 0xbb1c423a, 0x24011c90, 0xf7af4415
.word 0x75b77c6a, 0x09f8e887, 0xe06cf619, 0xf492b4a1, 0x62751296, 0xe069d27b, 0x9e87aa8c, 0xe6629821
.word 0x6eb4eb36, 0xa483458e, 0x95ec617f, 0x718cd3ed, 0x24f2f4e2, 0x85b3c889, 0x6e82263d, 0xa695459a
.word 0xfd4176be, 0x7cb7e003, 0xb28eed9d, 0x44e875cb, 0xbbef63e3, 0x347f1cdd, 0x3ba4e063, 0xd5ff3a53
.word 0x947adf17, 0xbed9301c, 0x37e2c710, 0x74ad3081, 0x8a17ed0b, 0xb99fefb0, 0xfa48fc32, 0xc1a66aec
.word 0xff156852, 0xa59cd6b7, 0x37db9a8a, 0x3a8bee77, 0x40758285, 0x7d41aced, 0x87b3da7d, 0xca765f4a
.word 0x8d3d6fc8, 0x1fcc7576, 0x32068615, 0x24f503b9, 0x6ea9ee95, 0x9d3eaf47, 0xeab18551, 0xc540a3be
.word 0x1b50cf86, 0x5e5cf976, 0x2d53f3c5, 0xe8b4651f, 0xa5d542e1, 0x380f4555, 0x4a3e3d70, 0x76b98658
.word 0xcf4eb1e8, 0x3a8fe872, 0xd80475bb, 0xbe26ab32, 0xec0db8a8, 0x58855d77, 0xd2a9546e, 0xe6343382
.word 0x3fb623c7, 0x5fd9dd2f, 0xbc529a87, 0x8e872576, 0x483ba421, 0xc9e1ea78, 0x27a6b950, 0x8fd8b97e
.word 0x1cd9b5f2, 0xb696f30e, 0x86307c4c, 0x84e4b96f, 0x52813708, 0xae22dfef, 0xcba8d5dc, 0xe701faa4
.word 0x66df5e02, 0x24fcea04, 0x635debe9, 0x3d397e8e, 0x87c9e69a, 0xfbfed670, 0x5904f8c0, 0x0bcb5ac3
.word 0xd2e95786, 0x3853f140, 0xdc27d623, 0xb5ce2344, 0xc91f5138, 0xa6e74d49, 0x64c0e747, 0xe3d1cf12
.word 0xd83d4659, 0xaf214ec3, 0x267a017b, 0x20112e31, 0xbe7ef62c, 0x3f5c7109, 0x3fff2a65, 0x342a067f
.word 0x01e57962, 0xb7d051b5, 0xe9b9e5b2, 0xe6c0fa8c, 0xcbfa3a02, 0xd213e1cb, 0x75cb1c57, 0x41428777
.word 0xb89364af, 0x838d8ca6, 0x53a9efac, 0x1d48a60f, 0x32a17ddd, 0x77a7d47a, 0x75b380dc, 0x93c32247
.word 0xd314649b, 0xf192c62a, 0xd7bfd731, 0xfdebdbde, 0x4338c067, 0xadef0fb8, 0x80f6f5a6, 0xc424c978
.word 0xd96110aa, 0x3ff4c0ab, 0x5169c558, 0x41658689, 0x82f62909, 0xbfa3c242, 0x7cee3501, 0xb4973f3f
.word 0xc9260583, 0xf2c650a9, 0xa39e714d, 0x1fb66bf9, 0xaf43b22e, 0x299577e2, 0xfff29a9e, 0xd5478456
.word 0x0c82ec1a, 0x4003c8d0, 0x2d465e4b, 0x3589d500, 0x506baf10, 0xb4b2ad3d, 0x042771fc, 0xd6830b36
.word 0xf38c2bc5, 0x38fe2bac, 0xacee6881, 0xa56843e8, 0xc0861edc, 0x92496f8e, 0x2b750650, 0x9b7a7793
.word 0x1985f81f, 0xc6e927d9, 0xa49bc1f9, 0x24d65a2e, 0x18f314ee, 0xf44e6acc, 0x52ef1e26, 0x1ba51236
.word 0x61431eea, 0x050fc65c, 0x2d42d5b6, 0xfc753919, 0x77eafd95, 0x8f330f25, 0x4cde1daf, 0x7ce5eb89
.word 0x44a946ce, 0xa6b73fc9, 0x266426aa, 0xf87975cf, 0x7385141a, 0xa8c0b40b, 0xcaf53f89, 0x0db13f8b
.word 0x33076330, 0x185a5905, 0x5fe78ea7, 0x964fcd9c, 0xdb3b4194, 0xebfc49aa, 0x619a3aed, 0x6827a00c
.word 0x28390fd9, 0x112826dd, 0x3cfa9605, 0x671540ce, 0xb6bd68b6, 0x30a954a7, 0xd288a751, 0x4497f332
.word 0xf669a793, 0x3b6e5f30, 0x096cd214, 0x42feaf83
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
                  add x7, x8, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x29, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x29, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x29, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x29, x15, ecall_handler
                  li x15, 0x1
                  beq x29, x15, instr_fault_handler
                  li x15, 0x5
                  beq x29, x15, load_fault_handler
                  li x15, 0x7
                  beq x29, x15, store_fault_handler
                  li x15, 0xc
                  beq x29, x15, pt_fault_handler
                  li x15, 0xd
                  beq x29, x15, pt_fault_handler
                  li x15, 0xf
                  beq x29, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x8, x7, zero
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
                  add x8, x7, zero
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
                  add x8, x7, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x8, x7, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x8, x7, zero
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
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x8, x7, zero
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
