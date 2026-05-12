.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x17, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x966125e2
                  li x5, 0xfcb96a9f
                  li x6, 0x4
                  li x7, 0x89bf0be5
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0xf607e363
                  li x11, 0x80000000
                  li x12, 0xb40cf932
                  li x13, 0x0
                  li x14, 0x146db833
                  li x15, 0x80000000
                  li x16, 0x0
                  li x18, 0xb
                  li x19, 0xfd758771
                  li x20, 0xf8deb215
                  li x22, 0x80000000
                  li x23, 0xf7391cc8
                  li x24, 0x52c31bb0
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x1
                  li x29, 0x0
                  li x30, 0x6
                  li x31, 0x7
                  la x21, user_stack_end
main:             la           s2, region_0+1510 #start load_store_instr_stream_3
                  la           gp, region_0+868 #start load_store_instr_stream_2
                  lhu          t6, -166(gp)
                  la           a5, region_0+158 #start load_store_instr_stream_1
                  sb           s2, -147(gp)
                  la           s8, region_0+1259 #start load_store_instr_stream_4
                  sb           s11, -103(gp)
                  la           s6, region_0+573 #start load_store_instr_stream_0
                  sw           s0, 105(s8)
                  lhu          a2, 38(a5)
                  lb           a3, -37(a5)
                  lb           t4, -217(s2)
                  sb           s5, -922(s8)
                  lbu          s1, 74(gp)
                  lhu          a2, 9(s6)
                  sh           s2, -48(s2)
                  lhu          t0, 249(s8)
                  lhu          s1, -230(gp)
                  lb           t3, 60(a5)
                  lb           s9, 4(s6)
                  lb           s9, 47(a5)
                  sb           s3, 5(s6)
                  lh           s11, -182(s2)
                  lb           a2, 232(gp)
                  sw           a0, 42(a5)
                  sh           s11, 44(gp)
                  sh           zero, -84(gp)
                  lb           s1, 59(s2)
                  sb           gp, -102(gp)
                  lbu          a6, 0(s6)
                  lbu          a3, -236(s8)
                  sb           tp, 21(s8)
                  lh           a3, 20(s2)
                  sb           s6, -227(gp) #end load_store_instr_stream_2
                  lbu          s1, -1(s6)
                  lh           a6, 1(s8)
                  sh           s7, 8(a5)
                  sb           a6, 151(s2)
                  lbu          t5, -600(s8)
                  lbu          s1, 31(a5) #end load_store_instr_stream_1
                  lhu          a0, 477(s8)
                  sb           t0, 86(s2)
                  lbu          s9, 76(s2) #end load_store_instr_stream_3
                  sw           a1, -799(s8)
                  lbu          t5, -1009(s8) #end load_store_instr_stream_4
                  sw           s0, -13(s6) #end load_store_instr_stream_0
                  la           a2, region_1+1269 #start load_store_instr_stream_0
                  la           tp, region_1+802 #start load_store_instr_stream_2
                  la           s9, region_1+1641 #start load_store_instr_stream_1
                  lb           t4, -16(s9)
                  lbu          t0, 10(a2)
                  lb           a6, -57(tp)
                  sb           t1, 6(a2)
                  lbu          a6, 33(tp)
                  lb           a4, 6(s9)
                  lh           ra, -46(tp)
                  sb           t2, -4(a2)
                  lw           a0, -1(s9)
                  sh           t1, 11(s9)
                  lb           gp, 9(a2)
                  sb           t5, -16(s9)
                  sb           t0, -6(s9) #end load_store_instr_stream_1
                  lbu          zero, 58(tp)
                  sb           s0, -52(tp) #end load_store_instr_stream_2
                  sb           tp, 3(a2) #end load_store_instr_stream_0
                  la           s3, region_0+468 #start riscv_load_store_rand_instr_stream_5
                  add          t3, s7, t1
                  sb           gp, -173(s3)
                  lb           t4, -46(s3)
                  add          s10, s8, a2
                  sb           s0, 17(s3)
                  sh           s1, 2(s3)
                  lw           a5, 156(s3)
                  lhu          t4, -112(s3)
                  lbu          t3, 33(s3)
                  lb           t1, -188(s3)
                  lb           s11, -121(s3)
                  sw           t4, 188(s3)
                  lbu          t4, 234(s3)
                  sra          a1, ra, ra
                  sb           s9, -49(s3)
                  sll          a0, t4, sp
                  lb           s10, -169(s3)
                  lh           a4, -20(s3)
                  sh           s5, -48(s3)
                  nop
                  srai         s11, a5, 9
                  lui          a1, 827273
                  lbu          s1, 149(s3)
                  sh           t1, -204(s3)
                  lb           t1, -174(s3)
                  add          s0, s1, t4
                  sra          a4, s1, a3
                  slti         t4, gp, 671
                  ori          t1, s9, -877
                  sb           a0, 237(s3)
                  addi         t2, sp, -1637
                  sb           t0, -205(s3)
                  slli         a3, sp, 17
                  lbu          t5, 117(s3) #end riscv_load_store_rand_instr_stream_5
                  la           s9, region_0+1350 #start riscv_load_store_hazard_instr_stream_2
                  sb           sp, -472(s9)
                  xor          a0, ra, s9
                  sb           a4, -595(s9)
                  lhu          s2, -38(s9)
                  lb           ra, -38(s9)
                  lhu          a5, 640(s9)
                  lhu          tp, 640(s9)
                  addi         ra, s8, 1651
                  and          t5, t0, a3
                  sh           a4, 640(s9)
                  srai         s10, t3, 25
                  lbu          a2, 127(s9)
                  lhu          t2, -832(s9)
                  slti         a1, ra, 592
                  lw           a4, 10(s9)
                  lh           s2, -484(s9) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1310 #start riscv_load_store_rand_instr_stream_1
                  srl          s11, a4, s5
                  sb           t1, 435(sp)
                  sll          s3, s9, a5
                  lui          t6, 653572
                  slt          s3, a0, s6
                  sb           t6, 560(sp)
                  sh           s11, -1196(sp)
                  sltiu        t2, s0, -533
                  sub          a5, a3, s10
                  sh           s7, 574(sp)
                  auipc        s4, 201239
                  srai         t4, gp, 26
                  lb           s9, -289(sp)
                  sltiu        t0, s6, -251
                  lb           tp, 395(sp)
                  sw           t4, 290(sp)
                  lb           t2, -1165(sp)
                  nop
                  lbu          a5, -1228(sp)
                  lbu          zero, 37(sp)
                  or           t5, t2, t1
                  lb           t6, 247(sp)
                  sb           s8, -80(sp)
                  lb           s10, 423(sp)
                  sb           t6, -809(sp)
                  sll          a0, s5, s1
                  sltiu        t0, zero, -1054
                  lhu          t4, -1056(sp)
                  lh           a3, -1088(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t6, region_0+1815 #start riscv_load_store_hazard_instr_stream_3
                  srai         s6, s9, 6
                  sh           s0, 165(t6)
                  lw           a1, 165(t6)
                  lbu          a2, 165(t6)
                  auipc        t1, 124253
                  lb           t4, -68(t6)
                  sb           a2, -68(t6)
                  xori         t5, s7, 1505
                  ori          zero, s10, 925
                  lb           sp, -68(t6)
                  slli         s4, a7, 15
                  lh           ra, 17(t6)
                  slli         t4, s3, 29
                  sh           t6, 17(t6)
                  lb           s0, 17(t6)
                  lbu          ra, 17(t6)
                  xori         t2, tp, 665
                  sb           s0, 17(t6)
                  lbu          s0, 84(t6)
                  lb           s2, 84(t6)
                  lh           s4, 139(t6) #end riscv_load_store_hazard_instr_stream_3
                  la           a3, region_0+964 #start riscv_load_store_hazard_instr_stream_6
                  sb           s8, -5(a3)
                  sb           ra, -4(a3)
                  lw           a1, -4(a3)
                  lb           gp, -8(a3)
                  lhu          t3, -8(a3)
                  sh           s5, -8(a3)
                  lb           a5, -13(a3)
                  srli         sp, ra, 28
                  sb           ra, 5(a3)
                  sb           s8, 5(a3)
                  lh           s9, 12(a3)
                  lw           s1, 12(a3)
                  sw           zero, 12(a3) #end riscv_load_store_hazard_instr_stream_6
                  la           t5, region_0+1346 #start load_store_instr_stream_2
                  la           a0, region_0+282 #start load_store_instr_stream_1
                  lh           a6, -164(a0)
                  la           gp, region_0+333 #start load_store_instr_stream_3
                  la           s9, region_0+922 #start load_store_instr_stream_0
                  lhu          a1, 50(s9)
                  lb           t6, 1041(s9)
                  lb           s0, -1(gp)
                  lbu          a1, 163(a0)
                  sb           a0, 0(gp)
                  sb           a4, -79(t5)
                  sb           a7, -62(t5)
                  sb           s7, -419(s9)
                  lhu          a4, -236(a0)
                  lb           s4, -129(t5)
                  lbu          s1, 52(a0)
                  sh           s4, 148(t5)
                  lh           a5, -168(a0)
                  lb           a1, 203(t5)
                  sh           zero, 926(s9)
                  sb           s2, 12(gp)
                  lhu          zero, -188(a0)
                  sb           t3, 16(gp)
                  sb           s5, -16(gp)
                  sb           s9, -32(t5)
                  lbu          s10, -11(t5)
                  lb           ra, -9(a0)
                  sb           a4, -179(t5) #end load_store_instr_stream_2
                  lb           a4, -245(a0)
                  lbu          a4, 0(gp)
                  sb           t1, 83(a0) #end load_store_instr_stream_1
                  lhu          t1, 5(gp) #end load_store_instr_stream_3
                  lbu          t6, 372(s9) #end load_store_instr_stream_0
                  la           s2, region_0+943 #start load_store_instr_stream_2
                  la           s6, region_0+84 #start load_store_instr_stream_1
                  la           a5, region_0+439 #start load_store_instr_stream_0
                  sb           a6, -34(s6)
                  la           a4, region_0+1145 #start load_store_instr_stream_4
                  lbu          sp, 246(a5)
                  lb           t4, 0(s2)
                  sb           s0, -37(s6)
                  la           s10, region_0+1576 #start load_store_instr_stream_3
                  lbu          zero, -130(a5)
                  sw           a4, -64(s10)
                  sb           s9, 11(s6)
                  lbu          a1, 93(a5)
                  lbu          t4, -10(s2)
                  sb           s8, -56(a5)
                  sb           a3, -6(s2)
                  sh           a1, -16(s10)
                  lh           t3, 1(a4)
                  sb           t5, 17(s6)
                  lh           t1, 15(s2)
                  lb           t2, 8(s2)
                  lb           a3, -16(a4)
                  sb           t1, 10(s6)
                  sb           a7, 226(a5)
                  sb           t0, -14(s2)
                  lh           a3, -52(s6)
                  sb           t0, -8(a4)
                  sb           gp, -14(s2)
                  lhu          t3, -38(s10)
                  lb           a1, -59(s10)
                  sb           s5, -221(a5)
                  lb           s3, 21(s10)
                  lh           zero, 48(s6)
                  sb           s11, 162(a5)
                  lbu          t5, 214(a5)
                  lhu          s9, -40(s6)
                  lh           t5, 15(a4)
                  sb           sp, -4(s2)
                  sb           s3, -37(s6)
                  lb           t2, 8(a4) #end load_store_instr_stream_4
                  sb           a1, 27(s10) #end load_store_instr_stream_3
                  lb           s11, -181(a5)
                  lbu          s11, -18(s6) #end load_store_instr_stream_1
                  sb           s2, 16(s2) #end load_store_instr_stream_2
                  lbu          t2, 158(a5) #end load_store_instr_stream_0
                  la           ra, region_0+490 #start riscv_load_store_rand_instr_stream_2
                  lbu          zero, 202(ra)
                  lbu          s8, -48(ra)
                  lbu          zero, 99(ra)
                  sub          t5, t2, a2
                  lb           zero, 18(ra)
                  xori         s3, tp, -1930
                  lh           gp, 198(ra)
                  slti         s6, t0, 1313
                  sb           sp, 209(ra)
                  lb           t6, 195(ra)
                  sb           ra, 33(ra)
                  xori         t0, a0, -1236
                  slti         a5, a5, -1832
                  slti         t5, s0, -1485
                  sb           a5, -215(ra)
                  srl          t6, sp, a6
                  sh           t0, 120(ra)
                  lbu          a5, 90(ra)
                  sh           s6, -254(ra)
                  addi         s0, zero, -1042
                  add          t3, a4, a0
                  srli         s10, s4, 18
                  and          a2, a7, t3
                  and          zero, a4, s5
                  srl          s0, s4, a3
                  lbu          a3, 24(ra)
                  slli         gp, t3, 18
                  lbu          t3, 218(ra)
                  slti         t2, s11, 1850
                  lbu          s9, 230(ra)
                  srli         t5, t6, 8
                  sh           gp, 202(ra)
                  srai         gp, a1, 17
                  sb           t2, 107(ra)
                  or           a0, s5, tp
                  lui          s9, 451784
                  xor          tp, tp, zero
                  srl          s1, a6, gp
                  lbu          sp, -14(ra)
                  srli         sp, t3, 28
                  lui          s0, 770222
                  lb           s3, -123(ra)
                  auipc        t0, 444585
                  sh           a7, 180(ra)
                  lh           tp, 16(ra)
                  lh           a3, 86(ra)
                  lw           t4, -154(ra) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+303 #start riscv_load_store_hazard_instr_stream_0
                  sb           t2, -2(sp)
                  lbu          s2, -2(sp)
                  lb           a3, -2(sp)
                  lbu          a0, 8(sp)
                  lb           a6, 8(sp)
                  lb           t5, 8(sp)
                  lbu          a4, 8(sp)
                  lb           a1, 8(sp)
                  sb           s9, 8(sp)
                  sb           tp, 8(sp)
                  lbu          a3, 8(sp)
                  auipc        s10, 49156
                  add          s9, t2, t5
                  lbu          gp, 8(sp)
                  lbu          t0, 8(sp)
                  sb           a2, 8(sp)
                  add          s1, a6, t0
                  sb           t6, 8(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+296 #start load_store_instr_stream_2
                  la           s3, region_1+415 #start load_store_instr_stream_1
                  sb           a5, 55(s3)
                  la           a6, region_1+1866 #start load_store_instr_stream_0
                  lhu          a0, 17(s3)
                  sb           a6, 33(a6)
                  sb           s1, -16(sp)
                  la           ra, region_1+1977 #start load_store_instr_stream_3
                  lh           s6, -21(s3)
                  lhu          s4, 32(a6)
                  sb           s11, 5(sp)
                  lh           t3, -47(s3)
                  lbu          a3, -5(sp)
                  lbu          s1, 9(a6)
                  lb           a4, -58(s3)
                  sw           sp, 16(sp)
                  sw           s8, 10(a6)
                  lb           a5, 44(s3)
                  lb           a1, -7(ra)
                  lbu          s11, 19(s3)
                  sb           a7, 40(a6)
                  lb           s1, 20(ra)
                  lbu          s6, 17(s3)
                  lw           s10, -4(sp)
                  lb           t1, 12(sp)
                  lb           s8, -20(ra)
                  lb           a1, -3(sp)
                  lbu          s11, -50(s3)
                  lh           s8, 60(a6)
                  sb           a7, -27(ra)
                  sh           a7, 13(ra)
                  sw           a1, -8(sp) #end load_store_instr_stream_2
                  sb           a5, -2(s3) #end load_store_instr_stream_1
                  lhu          a2, 13(ra) #end load_store_instr_stream_3
                  lb           t3, -22(a6)
                  lbu          t5, -8(a6) #end load_store_instr_stream_0
                  la           a1, region_1+1911 #start riscv_load_store_rand_instr_stream_6
                  sll          s0, t5, s3
                  lbu          gp, -48(a1)
                  addi         t1, s9, -1730
                  xori         s4, zero, -423
                  sb           t3, -10(a1)
                  lhu          s4, 19(a1)
                  lui          sp, 649655
                  slt          s6, a7, t1
                  sra          gp, s10, a6
                  sll          s0, a0, s7
                  sh           s8, -19(a1)
                  nop
                  lb           a0, 43(a1)
                  slti         a6, a1, -417
                  lb           t3, -5(a1)
                  sh           a3, 5(a1)
                  srl          a5, s0, tp
                  or           ra, s8, s8
                  lhu          s10, 39(a1)
                  sb           a6, 4(a1)
                  sra          a3, s4, s10
                  auipc        a5, 608411
                  lbu          t5, 38(a1)
                  srai         s4, t1, 21
                  lw           s11, -23(a1)
                  lhu          t5, -49(a1)
                  lb           ra, -16(a1)
                  sra          s11, a5, t0
                  xori         s0, a2, 1406
                  xori         s1, a6, -1245
                  lbu          t4, -39(a1)
                  slti         tp, a0, -948
                  lb           tp, 35(a1)
                  andi         s0, t4, -940
                  sb           a5, 38(a1)
                  lbu          s0, 33(a1)
                  lhu          a3, -61(a1)
                  sltu         a0, t0, a4
                  andi         s1, s1, -890
                  slti         a4, s2, -1151
                  sb           s1, -38(a1)
                  lh           ra, 61(a1)
                  srl          gp, a7, s1
                  lbu          t5, -16(a1)
                  lb           tp, -48(a1)
                  sltiu        t3, a0, -1284
                  auipc        s1, 25184
                  lb           t4, 36(a1)
                  lb           gp, 64(a1)
                  sltiu        tp, s9, -1943
                  lbu          t2, -7(a1)
                  sll          a3, s3, a0
                  sll          a0, s10, s5
                  and          a6, s1, a0
                  lbu          t6, 14(a1)
                  xori         a0, s7, -882
                  sb           zero, -34(a1)
                  lbu          t3, -51(a1) #end riscv_load_store_rand_instr_stream_6
                  la           a1, region_0+1986 #start riscv_load_store_rand_instr_stream_4
                  slti         a4, s0, 1899
                  slt          ra, s0, zero
                  sb           a7, -1516(a1)
                  nop
                  sltu         a4, s1, s9
                  lbu          s0, -137(a1)
                  or           s1, s11, sp
                  lbu          t4, -1763(a1)
                  lb           a6, -1325(a1)
                  srl          a4, t6, t5
                  auipc        t6, 636637
                  srli         t6, s6, 24
                  lhu          s3, -720(a1)
                  slli         s6, s6, 26
                  or           t4, zero, t6
                  sll          t2, t6, t1
                  xori         s1, s11, -1677
                  sltiu        t0, t6, 505
                  sb           s11, -337(a1)
                  lbu          s8, -930(a1)
                  sb           zero, -1979(a1)
                  srl          s9, a0, s11
                  srl          sp, s1, s5
                  lbu          a5, -895(a1)
                  lbu          t6, -664(a1)
                  slli         s6, s6, 31
                  sb           s8, -614(a1)
                  or           s1, sp, a2
                  ori          a2, a3, -1548
                  lhu          sp, 12(a1)
                  lb           a6, -1438(a1)
                  lb           s4, -1755(a1)
                  sw           a4, -270(a1)
                  lhu          t6, -1588(a1)
                  slli         a2, s5, 9
                  slti         t2, s10, -2
                  lbu          s0, -1813(a1)
                  sw           s7, -582(a1)
                  sb           a6, -111(a1)
                  lb           zero, -1117(a1)
                  lbu          a4, -1053(a1)
                  ori          zero, a0, 536
                  lbu          t2, -156(a1)
                  sh           a7, -140(a1)
                  slti         s10, t0, -845
                  lb           s3, -1069(a1)
                  lb           s1, -42(a1)
                  addi         a2, t1, -1443
                  sltu         s2, tp, s6
                  sb           tp, -601(a1)
                  lui          t2, 163130
                  sh           sp, -1790(a1)
                  sh           s8, -1372(a1) #end riscv_load_store_rand_instr_stream_4
                  la           t3, region_0+528 #start load_store_instr_stream_0
                  lbu          a5, -93(t3)
                  la           a4, region_0+659 #start load_store_instr_stream_1
                  sh           t1, 635(a4)
                  lb           t0, -241(t3)
                  sb           s5, -109(a4)
                  sb           s1, 191(t3)
                  sb           a4, 89(t3)
                  lhu          s4, 191(a4)
                  lh           zero, 287(a4)
                  lh           sp, 12(t3)
                  lb           s4, -160(a4)
                  sb           a1, -31(t3)
                  sb           s0, -564(a4)
                  lbu          s6, 110(t3)
                  sh           a2, 191(a4)
                  sb           a2, -55(t3)
                  lb           t5, -29(t3)
                  lh           a6, 597(a4) #end load_store_instr_stream_1
                  lbu          sp, 137(t3) #end load_store_instr_stream_0
                  la           s0, region_1+1550 #start riscv_load_store_hazard_instr_stream_5
                  srl          tp, s8, t3
                  slti         a6, t4, 1557
                  sb           s8, -1211(s0)
                  lbu          t4, -1211(s0)
                  lb           t6, -1211(s0)
                  xor          s9, t3, a4
                  sb           a1, -1211(s0)
                  lbu          ra, -1211(s0)
                  sb           t0, 207(s0)
                  lb           a5, 207(s0)
                  sra          a1, s5, s10
                  lb           s2, 207(s0)
                  sb           zero, 207(s0)
                  sll          t1, a0, t6
                  lb           sp, -45(s0)
                  lb           s2, 445(s0)
                  sb           a2, 74(s0)
                  lbu          t4, 74(s0)
                  lbu          s11, -1335(s0) #end riscv_load_store_hazard_instr_stream_5
                  la           sp, region_0+1587 #start riscv_load_store_hazard_instr_stream_4
                  lb           t0, -24(sp)
                  slli         s9, a1, 9
                  lb           gp, -24(sp)
                  slli         tp, t1, 5
                  lb           a1, -24(sp)
                  lbu          s0, 147(sp)
                  sh           ra, 147(sp)
                  sh           t2, 147(sp)
                  sltiu        t1, t4, 581
                  sltu         ra, a1, a6
                  ori          s11, s2, -791
                  lb           a4, 221(sp)
                  sb           s11, 221(sp)
                  or           t0, s8, s0
                  lbu          s8, -69(sp)
                  sltiu        s1, s1, 1251
                  lhu          a3, -69(sp)
                  lb           s11, -69(sp)
                  sh           t3, -69(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           t6, region_0+1913 #start riscv_load_store_rand_instr_stream_3
                  lw           t5, -45(t6)
                  auipc        t1, 503320
                  slt          gp, a2, a4
                  nop
                  lhu          s4, -9(t6)
                  lbu          s11, -252(t6)
                  lb           gp, -218(t6)
                  lb           s2, -179(t6)
                  lbu          t0, 82(t6)
                  sh           t0, -117(t6)
                  lb           tp, -68(t6)
                  lbu          s2, -184(t6)
                  andi         zero, tp, 896
                  lbu          t3, -135(t6)
                  slti         s8, a1, -1224
                  lh           s0, 23(t6)
                  xori         s1, t3, 1613
                  sll          s6, a0, s3
                  lbu          t2, 64(t6)
                  lui          s8, 1019202
                  sb           s4, 73(t6)
                  lbu          t3, -102(t6)
                  slti         s2, gp, 315
                  nop
                  sb           s7, -250(t6)
                  sw           t3, -69(t6) #end riscv_load_store_rand_instr_stream_3
                  la           t5, region_1+137 #start load_store_instr_stream_1
                  la           t4, region_1+121 #start load_store_instr_stream_0
                  lbu          zero, -120(t4)
                  lb           a1, -32(t5)
                  la           sp, region_1+1669 #start load_store_instr_stream_3
                  sw           t2, 247(t4)
                  la           a2, region_1+1391 #start load_store_instr_stream_2
                  lb           zero, -894(sp)
                  lbu          zero, -1543(sp)
                  sb           a3, 147(t4)
                  lb           zero, 138(t4)
                  sb           t1, -172(sp)
                  lb           a4, -588(a2)
                  lb           a1, 571(a2)
                  lbu          s8, -23(t5)
                  lbu          s4, 46(t5)
                  sb           t5, -807(sp)
                  lh           s10, 395(a2)
                  sb           a6, 323(sp)
                  sb           s11, -771(a2)
                  lb           gp, 40(t5)
                  sh           t0, -735(sp) #end load_store_instr_stream_3
                  sw           a1, 135(t4)
                  lb           s10, -5(t5)
                  lbu          t1, -44(t4)
                  lbu          s8, -121(t4)
                  lb           s8, -1204(a2)
                  sb           s8, -54(t5)
                  lb           s2, 54(t4)
                  sb           a7, 31(t5) #end load_store_instr_stream_1
                  lb           t1, 261(a2) #end load_store_instr_stream_2
                  lb           zero, 248(t4) #end load_store_instr_stream_0
                  la           gp, region_1+1605 #start riscv_load_store_hazard_instr_stream_1
                  lb           zero, -2(gp)
                  sb           s7, -11(gp)
                  lbu          tp, 8(gp)
                  sb           zero, -3(gp)
                  lb           a3, 15(gp)
                  sb           a2, -4(gp)
                  sb           a6, -4(gp)
                  sb           t2, 12(gp)
                  sb           t4, -10(gp)
                  sb           sp, 7(gp)
                  lbu          ra, -12(gp)
                  sltiu        a3, t1, -592
                  sh           a2, -3(gp)
                  lbu          t5, 4(gp)
                  lb           s8, -16(gp)
                  sltu         t2, s4, s5
                  lb           t1, 14(gp)
                  srai         t1, s2, 26
                  lbu          t3, 14(gp)
                  lb           s1, -11(gp)
                  lhu          tp, -11(gp)
                  sw           gp, -9(gp)
                  lbu          sp, -9(gp) #end riscv_load_store_hazard_instr_stream_1
                  srai         s4, a5, 21
                  sltu         s10, t4, s2
                  sub          t0, s7, s10
                  addi         a3, a1, -682
                  srl          s0, t2, a1
                  srli         s2, s10, 29
                  and          a1, a1, s5
                  xor          a0, t6, s0
                  and          s8, a4, a5
                  sra          s3, sp, s10
                  add          t5, a3, s3
                  auipc        a2, 19426
                  lui          t0, 249568
                  add          t2, t2, a1
                  sll          s2, s11, s9
                  slt          zero, s8, gp
                  lui          t2, 183914
                  sub          t6, t6, t0
                  or           a5, s2, t3
                  slli         t0, ra, 27
                  beq          s5, t3, 38f
                  bgeu         a3, s11, 25f
                  sll          t6, a7, a2
                  sll          t3, s7, a5
                  srli         t5, s10, 7
25:               bge          s1, a1, 29f
                  bltu         a2, t5, 40f
                  beq          t0, s5, 37f
                  srl          t2, t5, t2
29:               ori          t6, s2, -2010
                  or           a5, sp, a3
                  slt          tp, s10, t2
                  lui          s8, 990556
                  sra          a0, t1, t1
                  slti         t4, tp, 1696
                  bltu         t5, t2, 36f
36:               lui          t4, 344141
37:               sub          zero, s9, s11
38:               and          gp, s4, s4
                  sltu         t6, t4, gp
40:               srli         s8, s8, 29
                  xor          ra, t4, a1
                  addi         s0, a6, 1807
                  andi         a0, s9, -878
                  blt          a1, ra, 64f
                  add          t2, t1, a3
                  lui          t4, 59075
                  beq          zero, t4, 65f
                  xori         t5, t5, -1466
                  sll          s3, a7, a0
                  sltu         s1, s10, s0
                  sub          s3, s0, a6
                  ori          s10, s6, -1903
                  ori          s3, tp, 1985
                  slti         s9, t0, -1492
                  addi         s4, t2, -507
                  addi         gp, s9, 1580
                  sll          s4, a4, s0
                  sltiu        s3, s2, 1915
                  addi         s11, s2, 1986
                  srai         a2, s1, 26
                  ori          ra, s11, -1229
                  bge          s5, s9, 65f
                  auipc        s10, 1027372
64:               srli         a3, s7, 5
65:               bltu         s4, t0, 79f
                  beq          s9, ra, 77f
                  slt          s6, s4, s3
                  srai         a6, sp, 5
                  srl          t3, s8, s8
                  srl          zero, t3, tp
                  bgeu         s10, t0, 83f
                  sra          t2, s8, s4
                  sltu         ra, s11, zero
                  srli         s0, t5, 2
                  addi         s9, sp, -1834
                  xori         s9, s4, -1951
77:               sltiu        ra, a1, 1372
                  sll          t6, a4, s4
79:               addi         a6, t6, 392
                  sltiu        a1, t5, -1836
                  add          a5, tp, t3
                  auipc        a0, 591158
83:               xori         s9, s6, -1116
                  sltu         s10, s10, a7
                  sltiu        gp, s3, -1555
                  sltiu        t5, a6, 1838
                  beq          t1, gp, 97f
                  slti         s9, ra, 1100
                  srli         s2, s3, 21
                  beq          a1, s11, 98f
                  auipc        zero, 888714
                  sltu         s1, a1, a7
                  addi         s3, s7, -584
                  slli         t5, s7, 28
                  lui          a6, 17898
                  and          s2, sp, t4
97:               sll          t1, tp, s10
98:               slt          t1, s7, sp
                  or           t0, s6, a1
                  lui          s1, 66362
                  sub          s6, t2, s4
                  beq          zero, sp, 107f
                  sltiu        t5, a0, -1029
                  sll          s0, t6, a5
                  bgeu         s10, a4, 125f
                  slli         s6, t2, 18
107:              bge          s11, s8, 116f
                  or           t0, t2, s10
                  lui          a6, 410420
                  andi         t4, a5, 1896
                  blt          s0, a7, 113f
                  sltu         s0, s11, t5
113:              sll          a5, t2, t2
                  andi         s4, a6, -164
                  bltu         t4, a7, 122f
116:              auipc        s4, 502586
                  xor          a6, ra, a6
                  srai         ra, s10, 31
                  sltu         t4, s2, s0
                  srli         t3, a0, 25
                  srl          s2, t0, s9
122:              blt          t3, s3, 142f
                  or           a2, a5, t2
                  beq          s10, sp, 132f
125:              addi         a4, zero, 669
                  sub          s1, s11, a4
                  sra          a1, a5, zero
                  slti         ra, s10, -1192
                  add          s10, s7, a6
                  addi         t5, s6, 367
                  sltu         t5, s4, s10
132:              sll          sp, a0, s0
                  auipc        s6, 948048
                  ori          a3, zero, 575
                  auipc        gp, 52176
                  bgeu         s11, a0, 144f
                  srai         t3, s2, 21
                  or           s1, a5, gp
                  blt          a5, s8, 148f
                  sltu         zero, s0, t5
                  sub          t6, a7, t0
142:              ori          sp, s7, -1180
                  slt          t4, a5, s0
144:              srl          s1, a7, s7
                  srai         s3, a3, 28
                  beq          t2, s8, 166f
                  bltu         t0, t0, 163f
148:              bltu         a2, s2, 164f
                  bgeu         s4, t2, 157f
                  slli         zero, t1, 25
                  slli         t6, s8, 0
                  and          t4, zero, t5
                  ori          s9, zero, -785
                  bltu         s5, a6, 167f
                  sltu         a2, s7, sp
                  bge          s4, a4, 168f
157:              bgeu         t4, t1, 163f
                  slli         s2, s4, 30
                  ori          zero, s6, -1089
                  bgeu         t1, t0, 178f
                  sltu         tp, a5, s4
                  bgeu         s7, a4, 176f
163:              bge          s4, s3, 171f
164:              sub          sp, t1, s3
                  or           s9, s1, t3
166:              bge          t0, s5, 170f
167:              sra          t0, s6, t0
168:              sltiu        a4, t6, -1164
                  blt          zero, a7, 170f
170:              slti         s8, s1, 1150
171:              xor          a2, t1, s7
                  slti         ra, ra, -638
                  sll          t4, t6, a7
                  sub          t3, t1, s11
                  bltu         a5, tp, 187f
176:              and          s2, a7, a4
                  sltu         s1, a2, tp
178:              slli         a2, s2, 24
                  xori         tp, a7, 1519
                  auipc        s11, 552717
                  ori          t0, a3, 955
                  beq          s3, a4, 202f
                  blt          s0, t0, 194f
                  nop
                  bgeu         s9, s9, 194f
                  and          s4, a4, s4
187:              bltu         s3, s10, 207f
                  bge          s2, t6, 198f
                  srl          s4, a1, zero
                  sll          a4, s8, t5
                  bgeu         s10, a1, 194f
                  addi         a4, ra, -450
                  andi         a6, s2, 1833
194:              sll          s9, s11, a3
                  add          ra, a3, a4
                  addi         s2, s2, 1352
                  sra          tp, s5, tp
198:              andi         s11, s6, 799
                  add          s4, s7, s5
                  addi         s2, s5, -1763
                  slti         s9, a0, -1786
202:              or           s8, s10, s3
                  slt          t6, a5, t0
                  sltiu        s8, a3, -311
                  beq          s7, s5, 221f
                  slt          s4, a2, a3
207:              srli         a5, a5, 29
                  lui          a2, 342402
                  sub          a4, a4, s0
                  sltiu        s1, t5, 613
                  bne          s3, s7, 213f
                  nop
213:              lui          s8, 12847
                  ori          s10, zero, 475
                  nop
                  xori         s11, s6, 404
                  slli         s3, s4, 18
                  lui          t0, 385042
                  slti         t1, s9, -1055
                  or           s2, tp, s3
221:              xor          s9, a1, t5
                  lui          tp, 496758
                  sub          t0, a4, t0
                  ori          zero, s6, 330
                  or           s0, s2, t4
                  slt          sp, s7, a5
                  blt          s7, s5, 235f
                  xori         a2, s6, -1670
                  bltu         s4, a1, 239f
                  sub          s11, s8, t1
                  srai         s8, a5, 25
                  slt          s11, ra, t4
                  beq          s8, sp, 238f
                  slli         t2, a3, 9
235:              blt          s1, s5, 242f
                  sra          sp, a4, gp
                  addi         s9, s2, 575
238:              bge          a7, s11, 250f
239:              srli         t3, s2, 25
                  bge          t4, t3, 244f
                  addi         s6, zero, -1662
242:              or           t4, a5, s3
                  beq          s0, t0, 263f
244:              bge          a6, t1, 257f
                  bltu         sp, s0, 263f
                  and          sp, s0, a6
                  addi         a5, s6, 1846
                  sltiu        ra, a7, -337
                  blt          s11, ra, 257f
250:              sra          a5, a0, a4
                  nop
                  xori         t1, s11, 1989
                  sll          a6, sp, s8
                  bne          a7, a2, 260f
                  beq          t2, gp, 269f
                  nop
257:              nop
                  sltu         t2, a6, t3
                  and          t3, s6, a0
260:              sub          a0, a5, s7
                  srl          s8, a6, s3
                  ori          s10, s1, 968
263:              ori          tp, sp, -968
                  sltiu        zero, s2, -1675
                  beq          a2, s11, 274f
                  nop
                  srl          s8, a0, a5
                  bge          gp, s9, 276f
269:              or           s8, gp, a0
                  sra          t0, s10, sp
                  bgeu         a5, t5, 291f
                  nop
                  srli         t0, t1, 17
274:              sra          a6, s3, gp
                  andi         s6, s2, 179
276:              slt          s2, s10, s11
                  srai         t0, s6, 14
                  sltu         zero, t6, a5
                  blt          s2, s6, 295f
                  xori         s2, tp, -1858
                  xor          s9, s7, a6
                  slti         t6, ra, -1922
                  slt          s9, s2, s5
                  bltu         t3, a5, 297f
                  sltiu        s9, a5, 1324
                  nop
                  bge          a6, s4, 303f
                  auipc        a4, 759832
                  bge          s0, a1, 298f
                  xor          tp, s10, t2
291:              bne          a0, s3, 299f
                  xor          gp, s6, a5
                  slti         t0, tp, 197
                  srli         tp, t6, 13
295:              blt          a6, a7, 305f
                  slti         a0, ra, -1609
297:              ori          t3, t6, -181
298:              andi         gp, a7, -1390
299:              slti         s11, ra, -521
                  sub          s10, a0, a0
                  lui          gp, 375666
                  and          t0, t1, a7
303:              lui          t6, 774566
                  srl          s10, a7, sp
305:              srli         a6, a4, 9
                  slli         s6, s4, 22
                  bgeu         s10, tp, 311f
                  slt          t1, s0, s2
                  slti         s10, s6, 1362
                  xori         t3, s9, 741
311:              srl          t5, s4, a6
                  sltu         s10, a3, s10
                  srli         s2, a5, 10
                  bne          s11, a6, 328f
                  ori          t1, zero, -314
                  sltiu        s3, sp, -63
                  addi         t5, t0, -1229
                  andi         s8, t4, 1814
                  sltiu        t6, a0, 168
                  andi         sp, s5, -17
                  and          s11, a3, t0
                  srai         tp, s2, 27
                  slli         s2, a6, 0
                  srli         s0, t2, 16
                  sra          ra, t0, t0
                  lui          s9, 799118
                  beq          s2, t3, 335f
328:              slti         s3, s9, 1828
                  and          gp, s1, t2
                  or           a4, s1, sp
                  lui          t5, 792949
                  andi         t5, zero, -1864
                  andi         zero, s10, -1863
                  sll          s9, s4, gp
335:              lui          s3, 935115
                  auipc        a2, 686477
                  bgeu         s6, a0, 353f
                  xori         a2, s6, -1129
                  xor          a2, s11, s9
                  bne          sp, s6, 350f
                  andi         t4, s7, -2007
                  bne          gp, s2, 356f
                  nop
                  nop
                  bgeu         ra, t6, 347f
                  bge          t4, s7, 357f
347:              bne          s1, s7, 351f
                  bge          a5, s4, 349f
349:              bltu         s6, tp, 361f
350:              slli         s9, s11, 28
351:              xor          t4, s7, t2
                  srai         a0, s2, 18
353:              bltu         s1, a1, 358f
                  andi         t0, t2, -1854
                  sltu         s2, t2, t2
356:              bltu         s2, a1, 374f
357:              srli         zero, t3, 14
358:              sra          a3, s11, s5
                  nop
                  bgeu         a4, s6, 366f
361:              slti         t0, s5, -1850
                  sltu         s4, s10, s5
                  auipc        s0, 636682
                  lui          a5, 610121
                  beq          a0, zero, 372f
366:              andi         t2, a6, -238
                  blt          t2, t2, 375f
                  srai         s10, a2, 6
                  ori          s2, tp, 488
                  beq          s1, sp, 388f
                  srai         a5, t1, 22
372:              addi         t2, s6, -1074
                  nop
374:              srai         s11, zero, 16
375:              slli         t5, a5, 10
                  nop
                  xori         t0, sp, 749
                  bge          ra, s3, 398f
                  sltiu        s3, a2, -1804
                  sltu         t1, s9, s6
                  sltu         a0, s1, a4
                  and          s8, s0, s0
                  andi         s1, s7, 419
                  addi         t6, s1, -1583
                  addi         a4, s3, -1870
                  or           s2, t3, gp
                  auipc        s2, 1036504
388:              ori          t1, a1, -1386
                  srli         sp, a5, 18
                  srl          s8, s4, t0
                  slti         t6, a3, 2010
                  bne          a1, a6, 412f
                  ori          ra, t2, 1894
                  addi         gp, t1, -1203
                  srli         a0, s11, 14
                  srl          t3, s11, t2
                  srai         t6, t4, 16
398:              and          s1, zero, s4
                  add          s1, s10, sp
                  srai         t4, a7, 26
                  bltu         s2, t3, 421f
                  xori         a2, s3, 928
                  beq          s11, s0, 415f
                  and          t1, t1, t0
                  srli         a4, t2, 6
                  bltu         a0, a6, 414f
                  and          a0, s1, a3
                  nop
                  add          a3, t3, s10
                  add          t3, ra, a4
                  andi         s4, t6, 653
412:              andi         s2, s4, -76
                  sltu         a5, a7, a6
414:              lui          a2, 789475
415:              srli         s10, s2, 11
                  ori          a2, t1, 1846
                  sub          t4, t4, s5
                  or           t4, t3, s1
                  srai         gp, a2, 2
                  sltiu        s0, t5, 1229
421:              add          s2, a5, s3
                  beq          t3, zero, 425f
                  sltiu        a6, t6, -1945
                  and          s9, sp, t3
425:              slt          s8, s10, t0
                  beq          a6, a4, 446f
                  or           t6, s11, t2
                  xor          a2, t1, t3
                  sltiu        zero, t3, -522
                  nop
                  sll          s9, s1, t0
                  srl          t0, s0, s5
                  add          a2, t2, a3
                  add          t5, t3, a6
                  addi         s10, ra, -781
                  sll          s0, a1, s0
                  bltu         gp, a7, 446f
                  slti         sp, zero, 1479
                  nop
                  beq          a7, s5, 443f
                  bne          a2, a0, 453f
                  nop
443:              xori         t2, t0, -1614
                  sll          t5, s9, s11
                  bne          gp, t2, 450f
446:              sltiu        t1, a3, -1786
                  bge          a3, s7, 465f
                  auipc        t5, 86657
                  nop
450:              slli         a3, s2, 29
                  srl          a3, s7, a1
                  srl          s4, t0, s2
453:              add          s1, s4, s2
                  nop
                  lui          s9, 431898
                  slli         t1, t1, 20
                  bge          s6, s0, 471f
                  srli         s8, t0, 14
                  slli         zero, a7, 25
                  auipc        s3, 860432
                  slti         ra, t6, -200
                  bltu         a5, t6, 466f
                  lui          s1, 499479
                  bge          t1, s7, 484f
465:              or           s1, t2, a6
466:              bltu         zero, a7, 486f
                  sltiu        gp, gp, 216
                  blt          s2, s11, 476f
                  add          a4, ra, s5
                  and          s11, t1, s2
471:              auipc        tp, 622029
                  bltu         tp, s8, 473f
                  la           s6, sub_1
                  sra          s10, s0, s8
                  addi         s6, s6, -83
                  xori         sp, t1, 734
                  slti         s2, s8, 814
                  sll          t6, sp, s4
                  srli         t6, gp, 14
main_j1:          jalr         s6, s6, 83 #jump main -> sub_1
473:              auipc        s0, 212832
                  bne          t1, gp, 483f
                  auipc        a6, 241191
476:              bgeu         a5, s9, 485f
                  bltu         s7, t0, 487f
                  slti         a0, gp, 1610
                  sub          a6, t5, gp
                  sll          a1, s3, a2
                  lui          a3, 509018
                  sub          sp, s9, t0
483:              beq          ra, t2, 485f
484:              sll          a4, s1, s1
485:              srai         t3, s0, 4
486:              srl          a6, a0, t6
487:              slt          gp, s7, s4
                  add          s3, a6, t0
                  sltiu        s3, s8, 1186
                  bgeu         s10, s9, 494f
                  addi         a2, a3, 1935
                  slli         s4, zero, 22
                  slti         ra, sp, -1077
494:              srai         s0, t5, 4
                  sltiu        ra, a7, 227
                  xori         a1, t4, 558
                  and          t5, s3, a2
                  bgeu         s8, t5, 510f
                  slt          s11, s7, s1
                  and          s8, a7, s4
                  srl          s8, t2, s6
                  ori          t0, s11, -515
                  sltiu        s3, ra, -1053
                  sll          s3, s2, s7
                  lui          zero, 483631
                  slli         t5, t2, 19
                  bgeu         t2, t5, 521f
                  bge          gp, sp, 515f
                  auipc        sp, 552388
510:              blt          gp, a7, 518f
                  srl          s8, s11, s7
                  slti         t4, gp, 698
                  sltiu        s1, s5, 1241
                  sll          s0, s11, ra
515:              or           s3, a1, a7
                  bne          t2, t6, 536f
                  nop
518:              xori         s10, a7, -1953
                  srl          ra, s0, tp
                  addi         sp, s1, 219
521:              ori          s1, a6, -1962
                  bge          s8, s5, 533f
                  srl          t5, a5, a4
                  auipc        t2, 594698
                  sll          a6, s7, a1
                  bgeu         ra, t5, 542f
                  sub          s8, s3, sp
                  srai         a3, t5, 27
                  sll          t3, t3, s9
                  bne          s1, s0, 538f
                  lui          t0, 654757
                  slti         zero, a7, -128
533:              slt          a4, gp, gp
                  xor          a6, s9, s5
                  srli         a6, a1, 3
536:              sltu         sp, a5, t6
                  bge          a4, t4, 543f
538:              srai         t4, a1, 29
                  sra          a3, s4, s1
                  nop
                  bge          zero, a3, 551f
542:              auipc        a1, 263577
543:              sub          s10, s10, a3
                  andi         s9, s6, 716
                  slt          s8, s9, s2
                  xor          a2, a5, s2
                  sub          t3, s4, s2
                  nop
                  srl          s9, t5, ra
                  or           t1, s2, t4
551:              slti         t0, a7, 2034
                  bgeu         sp, s9, 565f
                  srl          s6, t5, a7
                  bgeu         ra, t4, 572f
                  xori         ra, ra, 1714
                  sltiu        t5, t5, -488
                  blt          zero, s7, 577f
                  xori         a4, s8, 1029
                  slt          t5, t1, a4
                  slti         t5, ra, -1101
                  sra          a6, s7, s4
                  xor          t6, s11, s11
                  lui          t2, 927892
                  srl          a6, s1, s10
565:              add          a6, a4, a1
                  slti         s3, s7, -688
                  bge          t6, s2, 575f
                  bgeu         t4, s5, 584f
                  and          t1, t5, a0
                  xori         s6, a1, 1292
                  sltu         t2, s0, s4
572:              sll          gp, a7, t4
                  slti         tp, a2, -618
                  beq          a5, a7, 582f
575:              addi         a3, a7, 1185
                  slt          s2, t4, a1
577:              slt          s2, a1, a5
                  sub          a6, s8, a2
                  beq          t4, t2, 585f
                  ori          gp, t2, -652
                  slt          sp, gp, a4
582:              sltiu        sp, t1, -1418
                  addi         s2, t0, 721
584:              srai         tp, t3, 14
585:              ori          s4, s6, 1000
                  sub          a6, t5, s7
                  sltiu        s8, a3, 249
                  slti         t1, s6, -2039
                  srli         t4, gp, 5
                  nop
                  addi         s2, sp, -1367
                  andi         s2, s2, 729
                  sll          s0, t0, s11
                  beq          t6, a3, 607f
                  sltu         s11, s10, t3
                  add          ra, a6, s3
                  ori          a2, s11, 392
                  slt          a1, a4, s7
                  srli         t2, s10, 20
                  sltu         t3, t4, a7
                  sra          a3, t5, t0
                  bltu         a3, s5, 622f
                  blt          s5, s6, 611f
                  and          s10, s5, s5
                  add          s6, t0, zero
                  nop
607:              lui          sp, 133704
                  bne          t4, s9, 613f
                  la           s9, region_0+572 #start riscv_load_store_rand_instr_stream_0
                  nop
                  lbu          t6, 9(s9)
                  nop
                  lbu          s2, 7(s9)
                  sra          t4, s7, s10
                  lb           tp, -16(s9)
                  sb           s7, 9(s9)
                  sb           s4, -13(s9)
                  sll          gp, s2, s4
                  sb           a5, -3(s9)
                  srai         zero, s1, 10
                  sra          a0, tp, s9
                  xori         s6, ra, -1975
                  lbu          sp, 3(s9)
                  srli         s2, a1, 3
                  lbu          zero, -5(s9)
                  slti         s6, s10, -630
                  xor          s3, s11, s3
                  sh           s8, -2(s9)
                  slt          a3, s3, s9
                  sb           s10, 13(s9)
                  sb           t6, -9(s9)
                  slt          a6, t3, s6
                  sra          a5, a1, t1
                  lb           a1, 5(s9)
                  lbu          t3, -13(s9)
                  sra          s8, a2, s11
                  sub          t3, t4, sp
                  sb           s11, -9(s9)
                  lb           s1, -1(s9)
                  sb           zero, -13(s9)
                  sb           s3, 10(s9)
                  xor          a3, t6, s7
                  sll          a0, s9, tp
                  nop
                  ori          s8, s1, 1617
                  srl          s2, s3, t2
                  sra          s4, s3, a3
                  sltu         a1, t5, s7
                  andi         t1, a6, -1251
                  add          a6, a5, ra
                  lbu          a2, -13(s9) #end riscv_load_store_rand_instr_stream_0
                  or           a3, ra, a5
                  sub          t1, s10, a5
611:              slt          t3, t3, a6
                  slt          s6, t5, s1
613:              sra          s3, s1, a2
                  blt          a6, a2, 618f
                  slt          s11, zero, s2
                  slli         t3, t5, 11
                  blt          a5, s11, 618f
618:              srli         s1, a3, 10
                  sub          s9, s9, a2
                  xori         s8, s4, -220
                  sltu         a0, a0, s8
622:              sltu         t6, a1, t4
                  add          t4, s8, a5
                  srli         t1, s10, 26
                  lui          s4, 71627
                  blt          tp, a7, 635f
                  or           a3, a0, s9
                  sra          a4, ra, s1
                  slti         s3, t6, -1720
                  add          ra, a2, sp
                  auipc        a2, 676048
                  addi         gp, t4, -1235
                  slt          a3, a5, gp
                  bge          a1, s10, 648f
635:              nop
                  bltu         s5, a7, 648f
                  xor          s6, a1, s8
                  slti         s1, s1, -1345
                  andi         s0, sp, -794
                  blt          s2, t5, 656f
                  blt          a7, s4, 648f
                  add          s10, a1, t4
                  add          s0, s3, s11
                  bltu         s4, s7, 654f
                  beq          s9, ra, 653f
                  bgeu         t3, zero, 658f
                  nop
648:              ori          s2, s2, 1862
                  xor          s10, s0, s5
                  nop
                  xor          s3, zero, s4
                  add          s0, a0, t5
653:              bltu         s11, s4, 667f
654:              bltu         sp, t1, 674f
                  ori          t1, tp, -479
656:              auipc        s11, 30594
                  auipc        t1, 669569
658:              slti         s11, zero, 429
                  addi         s1, s0, -905
                  xor          s9, t1, a1
                  bgeu         zero, s8, 663f
                  xori         ra, t3, -1980
663:              bne          s0, s4, 666f
                  and          s9, s9, t2
                  sub          gp, a2, tp
666:              add          t6, gp, t3
667:              sltu         s9, a6, s4
                  sltiu        t0, t6, -473
                  add          s11, t6, ra
                  lui          t6, 437568
                  bltu         a4, s0, 687f
                  add          s9, tp, s10
                  srli         a6, t6, 29
674:              sra          s6, t4, s10
                  sub          a3, a3, a6
                  slt          a4, sp, t1
                  sltu         sp, s3, s0
                  srai         s3, t2, 24
                  nop
                  slti         s6, a0, -738
                  addi         a2, s5, -1261
                  bne          t1, s10, 702f
                  slti         t5, a7, -1090
                  nop
                  ori          s3, t4, -1398
                  slti         s4, a7, -1433
687:              slt          a3, a4, a0
                  slli         t2, s11, 15
                  bge          a6, s9, 699f
                  lui          tp, 788604
                  addi         s3, zero, -1433
                  bltu         s6, s9, 701f
                  ori          s3, sp, 1460
                  srai         s10, s2, 4
                  lui          t0, 218947
                  beq          s8, t5, 704f
                  blt          s5, s9, 717f
                  bge          gp, s3, 709f
699:              xori         s4, t6, -1995
                  xori         ra, t4, -1500
701:              ori          s1, a7, 1390
702:              andi         s3, gp, -614
                  sltu         s4, a2, a7
704:              blt          s6, a6, 722f
                  beq          zero, s1, 709f
                  ori          a3, s1, -815
                  sltu         tp, a6, s10
                  xori         t1, a0, -1733
709:              bgeu         a7, s5, 727f
                  bne          s7, zero, 730f
                  sltu         a3, a5, s7
                  auipc        s11, 753681
                  sll          s1, t0, gp
                  sub          zero, t2, s4
                  slli         s11, sp, 18
                  bge          s10, ra, 718f
717:              slt          t2, a2, t6
718:              blt          t6, s10, 728f
                  or           s6, sp, s7
                  bne          a1, s5, 729f
                  beq          a3, s11, 739f
722:              bltu         a4, a5, 725f
                  beq          t4, t4, 734f
                  xori         ra, a0, 484
725:              andi         s9, ra, -1656
                  add          s6, s2, tp
727:              and          t2, t2, s1
728:              lui          t5, 789849
729:              slli         s3, s8, 13
730:              srai         s9, zero, 6
                  srl          s2, s3, s9
                  slt          gp, t0, ra
                  beq          tp, t4, 737f
734:              bge          a0, a6, 739f
                  xor          a3, t1, a5
                  add          a0, a6, s10
737:              or           a0, s9, ra
                  sub          ra, a6, s0
739:              sub          t1, tp, s9
                  sltiu        ra, s8, 238
                  add          s6, t6, t1
                  add          s1, s9, s8
                  srli         s0, tp, 24
                  sll          s3, s3, s3
                  slli         t0, s2, 25
                  bltu         a3, t6, 760f
                  srli         s8, s0, 14
                  nop
                  lui          t0, 444621
                  xori         s10, a0, -694
                  nop
                  beq          a7, a1, 761f
                  slli         t6, t0, 5
                  auipc        ra, 698926
                  andi         t1, s1, 935
                  bgeu         t2, s0, 769f
                  andi         gp, t0, -929
                  slti         t6, t6, 1536
                  sub          s10, tp, s3
760:              sll          sp, s10, s0
761:              bne          s2, ra, 769f
                  and          s11, t0, s1
                  bne          a4, s1, 769f
                  sltiu        sp, t1, 49
                  sltu         sp, a6, s3
                  bltu         a6, s7, 769f
                  bltu         s7, s6, 768f
768:              auipc        t1, 869709
769:              slti         s10, t6, 1830
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            blt          s8, s3, sub_2_stack_p
                  sra          t3, gp, s8
                  sll          t0, a1, t1
                  sltiu        s0, a4, -1663
                  sltu         s10, t1, s8
sub_2_stack_p:    addi         s5, s5, -40
                  ori          a5, a0, 1
                  sw           s6, 4(s5)
                  lui          t5, 924731
                  nop
                  addi         s10, s8, -68
                  or           s0, ra, sp
                  andi         s1, s1, 636
                  la           tp, region_1+125 #start riscv_load_store_rand_instr_stream_0
                  or           gp, s10, s0
                  sb           s6, 83(tp)
                  sb           s6, -114(tp)
                  srli         t3, a2, 25
                  lbu          a1, -122(tp)
                  sb           a6, 146(tp)
                  auipc        s4, 253321
                  add          t4, s6, zero
                  add          s6, s4, t4
                  sw           t4, -73(tp)
                  auipc        t1, 364636
                  xor          a6, sp, s5
                  sb           zero, -122(tp)
                  and          gp, a6, s10
                  srl          s8, a4, s7
                  sub          a1, s3, s5
                  sw           t4, 183(tp)
                  lbu          s11, 120(tp)
                  sll          t5, a3, s0
                  sh           s8, 103(tp)
                  lui          s11, 214896
                  lw           gp, 31(tp)
                  sra          s9, sp, ra
                  sb           t5, -106(tp)
                  sh           t5, 125(tp) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_0+268 #start riscv_load_store_hazard_instr_stream_0
                  sb           t0, -9(s0)
                  sb           s4, -4(s0)
                  sb           a0, -13(s0)
                  sll          a5, t1, sp
                  lb           t0, -7(s0)
                  lb           a3, -12(s0)
                  lb           s11, 9(s0)
                  sb           s9, -5(s0)
                  lh           a2, -14(s0)
                  sb           s7, 7(s0)
                  lw           a1, 0(s0)
                  lb           t4, 0(s0)
                  lb           s11, 13(s0)
                  slt          s4, a6, s6
                  sb           gp, -4(s0)
                  srai         a2, t3, 21
                  and          s8, sp, a3
                  lbu          t6, -4(s0) #end riscv_load_store_hazard_instr_stream_0
                  auipc        t1, 794381
                  bgeu         tp, s8, 2f
2:                bltu         a1, s0, 16f
                  slli         s2, a1, 20
                  auipc        sp, 1048054
                  ori          a3, t0, -145
                  slti         sp, sp, 1588
                  xori         s10, t2, -281
                  beq          s3, t4, 22f
                  slt          s1, a6, s1
                  xori         sp, s2, -1178
                  slt          s3, t2, s11
                  andi         s0, s7, -747
                  sll          sp, a0, a3
                  beq          a1, gp, 30f
                  andi         a3, zero, 1703
16:               xori         a4, s4, -501
                  sll          s11, t0, t2
                  srl          s8, s1, s4
                  sll          gp, t6, t3
                  nop
                  sltu         a4, t2, tp
22:               sra          s3, a6, a1
                  ori          s9, zero, 964
                  beq          a0, t6, 29f
                  slli         t1, t0, 7
                  slt          t6, t1, s8
                  bltu         s6, a4, 30f
                  lui          tp, 115427
29:               andi         a2, a1, 1918
30:               sll          s1, t5, t3
                  sltu         a6, t4, t4
                  bgeu         s7, t5, 50f
                  or           sp, a5, t4
                  sra          ra, a5, zero
                  bltu         a1, s0, 46f
                  andi         s9, s4, 665
                  sra          a2, s10, a5
                  addi         s8, t3, 1738
                  slli         a5, t1, 30
                  sra          ra, t5, s4
                  sltu         t0, s7, s8
                  andi         t4, s8, 333
                  sub          t0, s6, t2
                  slli         s9, a3, 16
                  ori          s10, s7, 1641
46:               slli         t6, s0, 12
                  bgeu         a7, s11, 58f
                  srai         s11, t0, 29
                  bne          s5, t4, 60f
50:               nop
                  sltiu        t1, s4, 1723
                  srai         t6, t1, 5
                  auipc        t2, 820708
                  nop
                  srl          s10, ra, s3
                  bne          t5, s0, 63f
                  bltu         s10, t6, 72f
58:               xori         t6, s0, 1633
                  slt          t1, s6, a1
60:               bne          t2, t3, 73f
                  bltu         s5, t3, 67f
                  or           zero, zero, s4
63:               sltiu        a5, t0, 409
                  srli         a4, t1, 24
                  sltu         a6, t5, ra
                  andi         gp, sp, 1743
67:               add          a1, s8, a5
                  slti         a1, t4, -1084
                  slt          s2, sp, s10
                  add          s0, a1, t4
                  addi         s1, a3, -1608
72:               bne          a7, a2, 90f
73:               beq          a1, t6, 88f
                  ori          s9, t1, 96
                  andi         ra, tp, -1077
                  srl          t6, s9, s7
                  srai         s1, t1, 13
                  sra          s2, a0, a4
                  blt          a0, t3, 80f
80:               and          t5, a5, s0
                  slt          a5, s8, s8
                  and          tp, gp, ra
                  auipc        ra, 147979
                  srli         t2, a6, 21
                  slli         tp, s9, 8
                  andi         s0, a2, 609
                  sub          s1, sp, s3
88:               srli         s10, t6, 5
                  ori          s0, s4, -854
90:               slti         s1, a7, -539
                  srl          s3, a0, s3
                  nop
                  sltiu        t6, s9, -603
                  slli         a6, a3, 25
                  nop
                  bne          zero, a4, 113f
                  srli         a1, s7, 20
                  sub          zero, ra, t2
                  slt          s6, t6, s3
                  xor          t4, s1, a6
                  add          a2, s11, sp
                  add          s4, a7, ra
                  srli         gp, t5, 13
                  xor          gp, t3, a6
                  andi         t1, s10, -1652
                  slt          a4, s9, t0
                  sll          t6, s0, t3
                  auipc        t0, 224110
                  sll          s4, tp, sp
                  slti         s10, a7, 148
                  sltu         t5, a7, t1
                  srl          s4, s3, t0
113:              bgeu         a1, t2, 120f
                  beq          t0, s7, 134f
                  blt          t3, a2, 122f
                  sltiu        a3, s4, -954
                  addi         ra, a1, 1672
                  srl          t1, a6, s3
                  sll          sp, t3, tp
120:              blt          ra, s4, 127f
                  bge          a0, s7, 127f
122:              slt          s2, s7, a0
                  bltu         s4, tp, 131f
                  srli         s6, a0, 9
                  blt          s11, a5, 132f
                  ori          s2, a4, 1599
127:              slt          zero, a5, a0
                  sltiu        tp, a1, -561
                  sub          s9, a3, a3
                  sltu         zero, s11, t2
131:              sltiu        a5, a6, 1475
132:              andi         a2, s3, 1220
                  bne          a3, a3, 143f
134:              addi         s8, t0, -1552
                  auipc        zero, 714549
                  slti         ra, s4, -1766
                  la           t1, region_1+758 #start load_store_instr_stream_3
                  la           a6, region_1+1969 #start load_store_instr_stream_2
                  lh           s8, -16(t1)
                  lb           t0, -248(t1)
                  sb           a4, -15(a6)
                  la           a1, region_1+958 #start load_store_instr_stream_1
                  lb           s0, -127(t1)
                  la           sp, region_1+1741 #start load_store_instr_stream_0
                  lbu          t3, 0(a6)
                  sb           s2, 239(a1)
                  lh           s8, 32(t1)
                  lbu          t5, -6(sp)
                  lbu          gp, 79(a1)
                  sb           a7, -56(sp)
                  sb           s9, -59(a6)
                  lbu          t3, -11(a1)
                  lh           s6, -246(t1)
                  sb           zero, 2(a6)
                  lbu          s3, -3(sp)
                  lbu          t4, 25(a6)
                  sh           ra, -12(t1)
                  lbu          s4, -11(a1)
                  lb           a3, 32(sp)
                  lbu          s9, -132(a1)
                  lb           t0, 86(t1)
                  sb           ra, 61(sp)
                  sb           t4, -41(a6)
                  sb           s8, -21(a6)
                  sb           s1, -7(sp)
                  sb           sp, 69(a1) #end load_store_instr_stream_1
                  lh           a0, 22(t1)
                  lbu          tp, 32(sp)
                  sh           s9, 106(t1) #end load_store_instr_stream_3
                  lb           t5, -2(a6) #end load_store_instr_stream_2
                  sb           ra, -17(sp) #end load_store_instr_stream_0
                  sra          a6, t3, t5
                  auipc        a0, 255831
                  auipc        t3, 65455
                  add          a3, s7, t4
                  sll          s10, s9, t4
                  sub          t2, s5, sp
143:              add          t3, a0, t0
                  bge          s1, s7, 153f
                  bltu         s10, a5, 158f
                  slli         a6, s10, 8
                  beq          ra, t5, 162f
                  sll          t6, ra, sp
                  addi         s2, a3, 665
                  xori         s0, s4, 401
                  sll          t5, tp, s9
                  bltu         s7, t1, 161f
153:              bne          s8, tp, 154f
154:              srl          s1, t3, a1
                  bne          s7, gp, 170f
                  slti         t5, s3, 249
                  lui          t3, 923315
158:              sra          s4, s6, s0
                  srli         a2, s1, 6
                  add          t6, a1, a3
161:              bge          s11, t4, 168f
162:              sltu         s6, gp, a6
                  srli         t1, s5, 11
                  sltu         s11, s9, ra
                  bgeu         ra, s9, 181f
                  bge          s8, a3, 174f
                  xor          a6, t3, ra
168:              slti         t5, s2, 1357
                  xori         tp, t3, 1388
170:              andi         s11, sp, 1380
                  sltiu        s9, a5, -928
                  sltiu        a4, s9, -1719
                  sltu         gp, gp, t2
174:              addi         sp, a6, 1020
                  beq          s9, t2, 189f
                  xor          sp, gp, s4
                  bgeu         s5, s9, 183f
                  sltu         s3, a2, s1
                  bgeu         s9, s1, 180f
180:              or           s1, s1, a6
181:              xori         s4, s0, -1566
                  bne          s2, t5, 189f
183:              srl          s1, sp, t3
                  sltiu        s3, s10, 1119
                  nop
                  sub          s3, t2, s4
                  or           a6, t2, s4
                  slli         a5, a2, 17
189:              sltiu        a6, t6, -154
                  sra          t3, a5, a3
                  sltu         s10, tp, a7
                  lw           s6, 4(s5)
                  slt          t0, s9, t3
                  addi         s5, s5, 40
                  slt          ra, a7, s2
                  srli         zero, s0, 28
                  and          zero, t2, s0
                  xor          a3, a3, s5
292:              addi x26, x22, 0
292:              jalr x26, x26, 0
sub_1:            bgeu         s0, t2, sub_1_stack_p
                  slti         t5, t6, -1381
sub_1_stack_p:    addi         s5, s5, -44
                  and          a1, s11, sp
                  sw           s6, 4(s5)
                  or           t4, s0, s11
                  la           s11, sub_2
                  sra          s2, sp, s7
                  addi         s11, s11, 865
                  srli         s3, t4, 0
                  xori         s8, s6, -1680
                  slti         t3, t6, 1672
                  bge          s3, a4, sub_1_j2 #branch to jump instr
                  sll          t6, s8, ra
sub_1_j2:         jalr         s6, s11, -864 #jump sub_1 -> sub_2
                  bne          s11, ra, 7f
                  bge          sp, s2, 10f
                  ori          a3, a2, -416
                  and          s2, s2, a0
                  add          s0, t4, a0
                  or           ra, t5, t4
                  andi         s8, a1, 361
7:                bgeu         zero, t0, 13f
                  xor          a4, a1, a0
                  beq          a1, s5, 29f
10:               sra          a0, t6, s4
                  beq          a4, t6, 18f
                  auipc        t4, 368099
13:               xori         s1, a4, -134
                  ori          gp, s11, -1099
                  beq          gp, zero, 33f
                  bne          a5, a1, 20f
                  xori         s11, t4, -1681
18:               auipc        a4, 681062
                  beq          t0, s7, 23f
20:               auipc        s4, 755514
                  blt          gp, a3, 26f
                  sltu         s10, a2, s10
23:               bltu         t6, s6, 38f
                  xori         t5, s9, 1734
                  srli         a0, ra, 1
26:               sub          a3, sp, t0
                  and          a1, a4, t4
                  bge          t3, gp, 38f
29:               sra          a6, a3, s1
                  sra          tp, a4, a7
                  xori         s9, a3, -1858
                  beq          t3, a2, 38f
33:               slti         tp, s1, -1710
                  addi         a6, s3, -967
                  blt          a4, a5, 38f
                  ori          a6, t2, 1944
                  slli         a1, s0, 2
38:               slti         a0, s7, 612
                  srl          t2, s4, s10
                  sltiu        a3, a4, -1099
                  lw           s6, 4(s5)
                  srli         t3, s4, 6
                  nop
                  xori         tp, s6, -278
                  addi         s5, s5, 44
                  add          a2, t6, a4
                  srl          s4, s7, a1
                  nop
64:               addi x4, x22, 1
64:               jalr x4, x4, 0
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
mmode_intr_vector_1:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_2:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_3:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_4:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_5:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_6:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_7:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_8:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_9:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_10:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_11:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_12:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_13:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_14:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_15:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x5, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x5, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x5, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x5, x11, ecall_handler
                  li x11, 0x1
                  beq x5, x11, instr_fault_handler
                  li x11, 0x5
                  beq x5, x11, load_fault_handler
                  li x11, 0x7
                  beq x5, x11, store_fault_handler
                  li x11, 0xc
                  beq x5, x11, pt_fault_handler
                  li x11, 0xd
                  beq x5, x11, pt_fault_handler
                  li x11, 0xf
                  beq x5, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

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
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
