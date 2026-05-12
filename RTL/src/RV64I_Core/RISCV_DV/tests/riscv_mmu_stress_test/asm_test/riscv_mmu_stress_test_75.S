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
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf9a0b8f4
                  li x2, 0xd841b2dc
                  li x3, 0x80000000
                  li x4, 0x8
                  li x5, 0x0
                  li x6, 0xf87c2c4c
                  li x8, 0x0
                  li x9, 0xf46a0753
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x37312a39
                  li x14, 0xf828a4ff
                  li x15, 0xf4deef22
                  li x16, 0x8
                  li x17, 0x6466636d
                  li x18, 0x0
                  li x19, 0xf92cea79
                  li x20, 0x7d0bd33f
                  li x21, 0xf3deb473
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x5
                  li x25, 0xfc541011
                  li x26, 0x0
                  li x27, 0xfdfccff2
                  li x28, 0xf731d370
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x80000000
                  la x10, user_stack_end
main:             la           s5, region_0+1505 #start riscv_load_store_rand_instr_stream_6
                  sb           s3, -151(s5)
                  lbu          sp, -612(s5)
                  sh           s11, 3(s5)
                  lw           a6, -1241(s5)
                  sb           s2, -1487(s5)
                  srl          t4, ra, a4
                  lb           a6, -1456(s5)
                  srl          s4, t1, tp
                  andi         zero, a6, 540
                  xor          t1, s0, a5
                  sb           a7, -1394(s5)
                  xori         t0, a2, -2000
                  sb           t1, -1070(s5)
                  lbu          a3, 82(s5)
                  ori          sp, a5, -1589
                  or           a1, s4, s3
                  andi         zero, t5, -1395
                  sb           s6, -1411(s5)
                  lui          sp, 629539
                  srai         s3, a7, 15
                  lbu          a4, 182(s5)
                  lbu          t0, -713(s5)
                  sb           s11, -860(s5)
                  slli         a3, s4, 8
                  lb           a7, -268(s5)
                  sb           gp, 202(s5)
                  slt          s9, tp, tp
                  sw           t3, -189(s5)
                  lb           a4, -1128(s5)
                  sltiu        t1, a7, -828
                  sub          sp, gp, t2
                  sb           s2, 352(s5)
                  lb           s1, 168(s5)
                  srai         a5, t0, 28
                  srli         a5, tp, 0
                  lh           ra, 279(s5)
                  lbu          s1, -670(s5)
                  addi         a4, t4, 1769
                  lb           sp, -616(s5)
                  slt          s8, s0, s4
                  sra          a1, a4, s1
                  slli         s9, a6, 9
                  addi         t4, s0, -816
                  sb           gp, 24(s5)
                  addi         s2, s0, 119
                  sb           s10, -352(s5)
                  lbu          t5, -1016(s5)
                  lbu          gp, -712(s5)
                  sltu         ra, s3, a6
                  lb           a3, -910(s5)
                  lhu          a2, -607(s5)
                  sb           a7, -881(s5)
                  sb           a1, -1253(s5) #end riscv_load_store_rand_instr_stream_6
                  la           t4, region_0+924 #start riscv_load_store_rand_instr_stream_1
                  sub          s0, a1, s7
                  srl          a2, s5, a4
                  lh           a1, 0(t4)
                  xori         t0, t1, -842
                  sb           s4, 13(t4)
                  ori          s1, a4, 767
                  slti         s0, gp, 1887
                  slt          t0, s2, s6
                  or           t5, s5, s4
                  lb           t1, -11(t4)
                  lb           a5, -13(t4)
                  ori          sp, s9, -715
                  or           a4, a1, t3
                  and          s1, a0, t6
                  lhu          a4, 16(t4)
                  slli         a1, ra, 10
                  addi         t1, a3, -1267
                  sh           a5, 8(t4)
                  lbu          s0, 0(t4)
                  sll          s11, t3, s2
                  sb           s6, -6(t4)
                  slt          s11, a3, s5
                  sh           s8, -2(t4)
                  sh           t0, 12(t4)
                  sh           s3, 6(t4)
                  lh           zero, -6(t4)
                  sltu         s1, zero, t2
                  lb           a4, 13(t4)
                  add          s2, t1, t2
                  sb           s4, 3(t4)
                  sltiu        a1, s2, 963
                  slt          t5, t6, sp
                  srl          sp, s10, a6
                  sltiu        a1, s5, -470
                  sb           s4, 4(t4)
                  srl          s4, a4, a1
                  auipc        a5, 134151
                  nop
                  sll          gp, gp, t3
                  sw           a7, 0(t4)
                  ori          a7, s1, -767
                  slti         t5, a5, -402
                  sb           t1, 3(t4)
                  lbu          sp, -12(t4)
                  sltiu        ra, sp, 376
                  lbu          t0, -13(t4) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+557 #start riscv_load_store_hazard_instr_stream_0
                  sh           gp, 639(s5)
                  sw           zero, 639(s5)
                  lw           t6, 639(s5)
                  lhu          s0, 639(s5)
                  sb           a4, 639(s5)
                  lb           s9, 411(s5)
                  lh           a3, 411(s5)
                  lh           s3, 411(s5)
                  lh           t5, 1329(s5)
                  lbu          a7, 1329(s5)
                  lh           s10, 1329(s5)
                  addi         s9, a5, 505
                  lb           t3, 1329(s5)
                  lhu          a5, 1329(s5)
                  lb           s1, 1329(s5)
                  lb           s3, 1356(s5)
                  sb           a5, 1356(s5)
                  lbu          s2, 1356(s5)
                  lbu          zero, 1356(s5) #end riscv_load_store_hazard_instr_stream_0
                  la           s0, region_0+1252 #start riscv_load_store_hazard_instr_stream_4
                  sb           s6, -9(s0)
                  sb           a5, -9(s0)
                  lb           s10, -9(s0)
                  lbu          t4, -9(s0)
                  ori          a7, s7, -1995
                  sw           s0, 48(s0)
                  lb           s9, 183(s0)
                  sb           a2, 183(s0)
                  sb           t2, 183(s0)
                  lbu          s10, 183(s0)
                  lb           ra, 183(s0)
                  sh           t6, 188(s0)
                  sll          zero, s1, s0
                  lb           s7, -240(s0)
                  srl          s2, s2, ra
                  lw           s9, -240(s0) #end riscv_load_store_hazard_instr_stream_4
                  la           sp, region_0+1278 #start riscv_load_store_hazard_instr_stream_6
                  lh           tp, 204(sp)
                  sb           s9, -11(sp)
                  sw           s9, 230(sp)
                  add          tp, a7, s3
                  lh           t5, 230(sp)
                  sh           a2, 20(sp)
                  lui          s3, 507587
                  lw           s11, -126(sp)
                  sub          s9, s7, a4
                  lhu          gp, -126(sp)
                  xori         ra, a4, 128
                  lh           t5, -126(sp)
                  lbu          s0, 155(sp)
                  sltiu        s4, gp, 1280
                  lb           ra, 155(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           a3, region_1+1586 #start load_store_instr_stream_1
                  la           a5, region_1+1011 #start load_store_instr_stream_2
                  sh           gp, -43(a5)
                  la           s10, region_1+1918 #start load_store_instr_stream_0
                  lbu          s2, 105(a3)
                  lh           gp, 148(a3)
                  lb           ra, -8(a5)
                  lbu          t0, 9(s10)
                  lh           s3, 10(s10)
                  lbu          s5, 202(a3)
                  lbu          tp, -27(a3)
                  lbu          a7, -20(a5)
                  lbu          s7, -32(a3)
                  lh           a2, 35(a5)
                  sw           t4, -6(s10)
                  sh           sp, 16(s10)
                  lb           s4, -12(a5)
                  lbu          s2, 177(a3)
                  lhu          a7, 78(a3)
                  sb           tp, 44(a5)
                  lbu          s2, 50(a5)
                  sb           a5, 85(a3) #end load_store_instr_stream_1
                  lbu          a6, -18(a5) #end load_store_instr_stream_2
                  lb           s11, 11(s10) #end load_store_instr_stream_0
                  la           t0, region_1+688 #start load_store_instr_stream_3
                  la           s11, region_1+1140 #start load_store_instr_stream_4
                  la           s5, region_1+436 #start load_store_instr_stream_0
                  lbu          a4, -173(t0)
                  lbu          t4, -201(s5)
                  sb           sp, 7(s11)
                  la           a1, region_1+284 #start load_store_instr_stream_2
                  sb           t4, 15(s11)
                  sb           a0, 57(s5)
                  lb           t6, -9(s11)
                  lbu          t6, 1583(a1)
                  sb           s9, 471(a1)
                  lh           t1, -130(t0)
                  la           s3, region_1+552 #start load_store_instr_stream_1
                  lb           t6, -121(t0)
                  sb           gp, 61(t0)
                  sb           sp, -59(s3)
                  sw           a2, -4(s11)
                  lb           a4, -2(s5)
                  sh           s3, -68(t0)
                  lh           s4, -234(t0)
                  lbu          a6, 499(a1)
                  sh           s3, 8(s11)
                  sb           a4, -12(s11)
                  lhu          s10, 46(t0)
                  lhu          ra, 148(s3)
                  lbu          s8, 102(t0)
                  lbu          gp, -130(s5)
                  sb           s6, 11(s11)
                  sh           s8, -206(s3)
                  lb           zero, 972(a1)
                  sb           gp, 131(s3)
                  lbu          s7, -69(a1)
                  sb           s8, 935(a1)
                  sb           t5, 106(s5)
                  lb           zero, 9(s11)
                  sb           a1, -41(s3)
                  lhu          a3, 96(t0)
                  lh           t1, 454(a1)
                  lbu          t3, -83(s5)
                  sb           s1, 301(a1)
                  lbu          s0, -165(s3)
                  lb           s8, -158(s5)
                  lb           ra, 14(s11)
                  sb           s4, 1500(a1)
                  lw           s10, 1448(a1) #end load_store_instr_stream_2
                  lbu          t3, 145(t0) #end load_store_instr_stream_3
                  lbu          a4, -16(s11) #end load_store_instr_stream_4
                  lbu          a7, 32(s3) #end load_store_instr_stream_1
                  lbu          s9, 51(s5) #end load_store_instr_stream_0
                  la           sp, region_0+959 #start riscv_load_store_rand_instr_stream_4
                  lbu          s10, 103(sp)
                  sb           tp, -134(sp)
                  or           s7, t4, s1
                  sub          ra, s7, t5
                  sltu         ra, s11, ra
                  srli         t0, s7, 7
                  lb           a7, 92(sp)
                  addi         a7, sp, -769
                  sb           s11, -23(sp)
                  lbu          t4, -168(sp)
                  srai         s4, tp, 23
                  sh           a2, -7(sp)
                  sh           s0, -215(sp)
                  srl          s3, s3, s6
                  srai         a6, gp, 29
                  lb           a1, -150(sp)
                  lh           s3, -173(sp)
                  lb           t1, 46(sp)
                  lw           a7, 181(sp)
                  sb           s8, 157(sp)
                  lb           a5, 0(sp)
                  lbu          s10, -94(sp)
                  sb           s8, -42(sp)
                  sh           a4, 27(sp)
                  sb           s1, 152(sp)
                  lb           a4, 238(sp)
                  sb           sp, -104(sp)
                  lhu          s11, -137(sp)
                  sh           a6, -113(sp)
                  lhu          s8, 253(sp)
                  lbu          s2, 236(sp)
                  auipc        s5, 980584
                  lbu          s11, -248(sp)
                  lbu          t4, 151(sp)
                  sb           a4, 120(sp)
                  slt          a6, t3, ra
                  slti         t3, s1, -1913
                  sb           a0, -61(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s8, region_0+164 #start load_store_instr_stream_1
                  la           s0, region_0+1762 #start load_store_instr_stream_2
                  la           t3, region_0+606 #start load_store_instr_stream_0
                  lh           t6, -398(t3)
                  sb           s0, -489(s0)
                  lbu          a2, 159(t3)
                  lb           t1, 189(s0)
                  lbu          s5, 253(s8)
                  sh           t2, 76(s0)
                  sh           a4, 580(t3)
                  sh           tp, 400(s8)
                  lbu          zero, 601(t3)
                  lb           gp, -422(s0)
                  lbu          s1, -932(s0)
                  lbu          s7, 1219(t3)
                  lb           zero, -1035(s0)
                  lhu          s1, 940(s8)
                  sb           s4, 907(t3)
                  sb           a1, 232(s8)
                  sb           tp, 409(s8)
                  lw           s1, 1188(s8)
                  lb           s11, -242(t3)
                  lb           a1, -400(t3)
                  sb           t1, -800(s0)
                  lhu          a1, 1142(s8)
                  lbu          a6, 467(t3)
                  lb           s2, -164(s0)
                  lw           s11, -490(s0)
                  sb           s4, -558(s0) #end load_store_instr_stream_2
                  lbu          s1, 870(s8) #end load_store_instr_stream_1
                  sb           t6, -175(t3) #end load_store_instr_stream_0
                  la           a4, region_0+1417 #start load_store_instr_stream_1
                  la           sp, region_0+1112 #start load_store_instr_stream_0
                  la           t6, region_0+510 #start load_store_instr_stream_2
                  lbu          t4, -162(a4)
                  sb           s4, -218(t6)
                  sh           s6, -803(a4)
                  lb           a5, 162(t6)
                  sh           t5, -515(a4)
                  sb           s0, -37(sp)
                  lh           s7, -67(a4)
                  lb           t0, -167(t6)
                  lbu          s4, -76(sp)
                  lhu          t5, -241(a4)
                  sh           t2, -493(a4)
                  lb           t1, -217(t6)
                  lbu          t0, -216(t6)
                  lbu          a6, 27(sp)
                  sw           s6, -154(t6)
                  sh           s3, -184(sp)
                  sb           s9, -1314(a4)
                  lb           t3, -156(sp)
                  lhu          s11, -84(sp)
                  lbu          t5, -57(t6)
                  lhu          t5, 311(a4)
                  lh           s10, -24(t6)
                  lb           s0, 239(sp)
                  sb           s8, 108(t6)
                  lb           a6, -988(a4)
                  sb           s9, -49(t6) #end load_store_instr_stream_2
                  lb           t1, 236(a4) #end load_store_instr_stream_1
                  lbu          s2, -10(sp) #end load_store_instr_stream_0
                  la           s0, region_0+1162 #start riscv_load_store_rand_instr_stream_0
                  and          t4, a1, s6
                  slli         a5, s10, 30
                  nop
                  sb           t2, 101(s0)
                  lbu          s7, 177(s0)
                  sll          t1, zero, t1
                  sb           a6, -485(s0)
                  addi         a5, t2, -1935
                  sb           a4, -895(s0)
                  lb           t1, 131(s0)
                  sb           s3, -74(s0)
                  sll          t0, a7, a3
                  lbu          a6, -395(s0)
                  lhu          s1, -52(s0)
                  lhu          zero, -900(s0)
                  srl          t3, a2, a0
                  and          t5, a7, s11
                  srl          s2, s11, s6
                  ori          t5, s1, -337
                  xor          t3, a3, sp
                  and          t1, a4, s11
                  sb           s5, -490(s0)
                  lbu          a4, -385(s0)
                  lbu          s5, -1063(s0)
                  andi         sp, a3, -443
                  sltu         s5, t6, a5
                  lhu          sp, 234(s0)
                  andi         s3, a7, -1146
                  add          t0, t0, t4
                  nop
                  or           s1, gp, gp
                  add          s11, t2, tp
                  nop
                  and          a7, t5, ra
                  sra          a1, s0, a5
                  and          t3, sp, a7
                  sltiu        s3, a0, 860
                  lhu          a4, -944(s0)
                  sh           s0, 48(s0)
                  srai         s1, s11, 0
                  slti         a6, t6, 871
                  lbu          sp, -1156(s0)
                  sh           s3, -424(s0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1285 #start riscv_load_store_rand_instr_stream_2
                  lbu          s3, -139(sp)
                  sb           s2, -230(sp)
                  sltiu        s5, t3, 1104
                  sra          a5, tp, s8
                  sltiu        s10, t1, 1950
                  slti         s11, s11, 1777
                  lhu          s0, -49(sp)
                  andi         a5, gp, 1426
                  sll          s0, s3, t4
                  lbu          s5, -80(sp)
                  sw           t4, -213(sp)
                  lbu          a5, -30(sp)
                  lb           a1, -45(sp)
                  lb           a4, -252(sp)
                  xori         s3, s7, -781
                  slt          t3, s0, t0
                  addi         s1, t6, -1927
                  add          a3, t1, s5
                  srl          t5, a7, s2
                  sltu         a4, a6, s7
                  srl          t4, s2, s8
                  lh           t6, 151(sp)
                  slti         a6, s5, 359
                  sll          s9, s0, s5
                  lh           s10, 231(sp)
                  lbu          s4, -254(sp)
                  ori          s8, t3, 978
                  lb           s11, 66(sp)
                  lbu          s1, -150(sp)
                  sb           t0, -44(sp)
                  lb           t4, 40(sp)
                  lb           s11, 92(sp)
                  sh           t5, 3(sp)
                  srai         a3, s5, 11
                  addi         s8, sp, 589
                  lw           s4, 199(sp)
                  xori         gp, s0, 708
                  slti         t0, s3, 1638
                  lui          ra, 608139
                  ori          s0, s8, -438
                  sh           t3, -167(sp)
                  sltu         s9, a6, s3
                  lw           t6, 179(sp)
                  lb           a3, -134(sp)
                  lw           a5, -229(sp)
                  lbu          t0, 92(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s11, region_0+1916 #start riscv_load_store_hazard_instr_stream_1
                  sb           tp, 3(s11)
                  sb           s3, -8(s11)
                  sh           t1, -8(s11)
                  xor          t4, a6, t3
                  srli         t0, a1, 28
                  slt          ra, t4, sp
                  lh           t0, -8(s11)
                  lhu          a5, -12(s11)
                  sh           s9, -12(s11)
                  lb           s8, -12(s11)
                  lhu          s2, -12(s11)
                  lb           s4, -12(s11)
                  sb           s2, -12(s11)
                  lbu          s4, -12(s11)
                  addi         a7, t4, 310
                  srli         t3, t2, 27
                  sw           t3, -12(s11)
                  lhu          s8, -12(s11)
                  lb           s8, -12(s11)
                  srli         a3, t5, 18
                  ori          s2, sp, 507
                  sh           a2, -12(s11)
                  lw           s2, -12(s11) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_0+1949 #start load_store_instr_stream_1
                  la           t1, region_0+1533 #start load_store_instr_stream_0
                  la           tp, region_0+520 #start load_store_instr_stream_2
                  sb           a0, -42(gp)
                  lb           s7, -15(tp)
                  lbu          s9, 274(t1)
                  lh           a5, 14(tp)
                  sh           t1, -63(gp)
                  lhu          a4, 6(tp)
                  lb           s10, -18(gp)
                  lhu          a1, -1375(t1)
                  sb           s3, -15(tp)
                  sb           ra, -32(gp)
                  lbu          s4, 1(tp)
                  lb           s8, 277(t1)
                  lb           s2, 27(gp)
                  lh           s7, -9(gp)
                  sw           t4, 16(tp)
                  lb           s2, -1162(t1)
                  sb           s8, 3(tp)
                  sb           s1, -64(gp)
                  lbu          a1, -54(gp)
                  lhu          s0, 7(t1)
                  lb           sp, -1528(t1)
                  lbu          s10, 9(tp)
                  lh           a6, -13(t1)
                  lbu          s7, -18(gp) #end load_store_instr_stream_1
                  lb           s4, 304(t1)
                  sb           s8, -12(tp) #end load_store_instr_stream_2
                  sb           a3, -728(t1)
                  sb           a4, -1277(t1) #end load_store_instr_stream_0
                  la           sp, region_1+1991 #start riscv_load_store_hazard_instr_stream_5
                  lb           t0, -57(sp)
                  add          a6, a6, s5
                  or           s1, s6, a6
                  lh           a4, -13(sp)
                  lb           t1, -17(sp)
                  slli         zero, sp, 27
                  lh           zero, -45(sp)
                  sh           t1, 3(sp)
                  lb           s3, -3(sp)
                  sb           ra, -60(sp)
                  sb           t3, -61(sp)
                  sh           s3, -45(sp)
                  lb           gp, 4(sp)
                  sb           a6, -2(sp)
                  lb           t5, -2(sp)
                  sb           a7, -2(sp)
                  auipc        s5, 302712
                  lbu          a4, -36(sp)
                  lbu          a5, -10(sp)
                  addi         t0, t6, -197
                  lbu          tp, -10(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           a1, region_0+1381 #start load_store_instr_stream_0
                  la           s5, region_0+572 #start load_store_instr_stream_1
                  la           s9, region_0+1980 #start load_store_instr_stream_3
                  la           s11, region_0+1645 #start load_store_instr_stream_2
                  lb           a2, 214(s11)
                  sb           s8, -11(a1)
                  lbu          gp, -24(s11)
                  lb           s7, -167(s9)
                  sb           sp, -5(s5)
                  lhu          a6, -230(s9)
                  sh           s5, 147(s11)
                  lb           s7, 8(s5)
                  lb           s2, -9(a1)
                  lbu          s0, -13(s5)
                  lb           gp, -79(s9)
                  lb           s1, -176(s11)
                  lbu          s2, 6(a1)
                  lb           t6, 7(s5)
                  lb           a4, -12(s5)
                  lb           s4, -145(s11)
                  sb           zero, -155(s9)
                  lb           s4, -9(s5) #end load_store_instr_stream_1
                  lbu          t3, -8(a1)
                  lb           t5, -160(s11)
                  sb           a7, -156(s11) #end load_store_instr_stream_2
                  lb           a2, -72(s9)
                  lhu          s2, -7(a1)
                  lb           zero, 15(s9) #end load_store_instr_stream_3
                  lh           s3, -7(a1) #end load_store_instr_stream_0
                  la           a1, region_1+1173 #start riscv_load_store_hazard_instr_stream_2
                  lbu          t6, 274(a1)
                  lbu          s4, 274(a1)
                  sw           zero, 459(a1)
                  sw           t4, 459(a1)
                  lb           s8, 459(a1)
                  sh           t6, -1081(a1)
                  and          s11, s6, t4
                  lb           a4, -238(a1)
                  lb           t6, -582(a1)
                  lb           s10, -582(a1)
                  xori         a6, s8, -419
                  lbu          ra, -582(a1)
                  lb           a5, -198(a1)
                  sb           s0, -198(a1)
                  lb           s10, -198(a1)
                  sra          gp, s9, a2
                  lb           s4, -198(a1) #end riscv_load_store_hazard_instr_stream_2
                  la           s7, region_1+1799 #start riscv_load_store_rand_instr_stream_3
                  auipc        s5, 813001
                  xor          s3, a5, sp
                  and          a5, zero, s0
                  slti         s4, s4, 206
                  sltu         a6, t6, t1
                  sb           s0, -148(s7)
                  sb           t5, -162(s7)
                  or           t6, t5, t2
                  lbu          t3, 56(s7)
                  or           a4, a2, gp
                  slt          t3, a1, t2
                  lb           s1, -122(s7)
                  slli         s2, s2, 28
                  sra          s2, tp, a3
                  lbu          zero, 20(s7)
                  lh           s3, 1(s7)
                  lhu          a5, -111(s7)
                  sltiu        a7, a7, -1572
                  sra          s2, a4, s5
                  lb           a5, 42(s7)
                  andi         a7, a6, 1519
                  lui          a5, 899338
                  sra          t4, s2, s7
                  slli         a4, s0, 27
                  lbu          tp, -198(s7)
                  andi         t0, a0, 1133
                  srai         a5, a2, 19
                  sb           s3, -115(s7)
                  lw           a1, -55(s7)
                  nop
                  slli         t3, gp, 2
                  sb           t4, -252(s7)
                  sll          tp, t3, s9
                  slti         s11, zero, -136
                  addi         s4, s11, -1575
                  srl          s5, t0, t6
                  lb           a5, 103(s7) #end riscv_load_store_rand_instr_stream_3
                  la           t0, region_1+1836 #start load_store_instr_stream_2
                  la           tp, region_1+1195 #start load_store_instr_stream_0
                  sb           t5, -1378(t0)
                  la           a6, region_1+1363 #start load_store_instr_stream_1
                  lb           t1, 52(a6)
                  la           a2, region_1+620 #start load_store_instr_stream_3
                  lbu          t1, -1535(t0)
                  sh           t4, 6(a2)
                  lh           s10, 7(tp)
                  sb           a6, -937(t0)
                  lbu          a5, -186(a6)
                  lbu          ra, -3(a2)
                  lb           zero, -989(t0)
                  lb           t6, 5(a2)
                  lb           gp, 1(tp)
                  lbu          sp, -135(t0)
                  sb           s9, 12(tp)
                  sb           zero, 10(tp)
                  sb           a5, -1577(t0)
                  sb           s0, 36(a6)
                  lh           sp, -1354(t0)
                  lh           t6, -1782(t0)
                  sw           s4, 8(a2)
                  lb           sp, -15(tp)
                  sb           a4, 12(a2)
                  sb           a3, 5(tp)
                  sb           s3, -7(a2)
                  lbu          a1, -68(a6)
                  lhu          s3, -1446(t0)
                  sb           sp, -12(a2)
                  sb           t2, 14(tp)
                  lbu          t1, -1277(t0) #end load_store_instr_stream_2
                  lbu          s10, -220(a6) #end load_store_instr_stream_1
                  lbu          s0, 16(a2) #end load_store_instr_stream_3
                  sb           a0, 0(tp) #end load_store_instr_stream_0
                  bge          gp, a2, 2f
                  xori         s3, s6, -1939
2:                sll          s11, t0, a5
                  slli         s0, ra, 9
                  xor          a1, zero, sp
                  blt          t5, s7, 10f
                  sltiu        zero, a1, 1406
                  sltu         t5, t0, s8
                  andi         s1, a6, -671
                  slli         a4, s2, 28
10:               srl          sp, t5, a1
                  srli         t4, s5, 7
                  beq          ra, s8, 22f
                  auipc        tp, 53173
                  nop
                  srl          sp, s7, s6
                  ori          s11, s6, 736
                  and          ra, s7, s1
                  slli         a7, s0, 2
                  srl          t0, a0, a2
                  xor          s1, a2, t6
                  slt          ra, s3, s3
22:               lui          ra, 93943
                  sll          a2, s8, s6
                  sra          gp, t6, tp
                  or           gp, a1, tp
                  blt          s10, s2, 43f
                  beq          s2, ra, 31f
                  add          a7, s8, s9
                  beq          s4, a1, 47f
                  beq          s2, sp, 48f
31:               sltiu        a4, t1, 1232
                  addi         tp, s7, 1327
                  lui          s11, 80821
                  bge          t1, s4, 47f
                  lui          t5, 603017
                  sub          s3, s3, sp
                  sltu         s7, t5, a6
                  blt          t4, s6, 57f
                  xor          t4, s3, s5
                  or           s1, a3, a1
                  sltu         sp, a4, zero
                  bne          a0, s7, 43f
43:               sltu         gp, s4, tp
                  bgeu         a4, a4, 55f
                  srl          t5, s1, sp
                  sub          s4, s8, tp
47:               auipc        s11, 193956
48:               srl          s0, gp, s2
                  srli         a3, s0, 10
                  xor          s9, s11, tp
                  auipc        s8, 407117
                  slti         tp, s10, -1162
                  blt          ra, a3, 66f
                  srai         s3, s11, 13
55:               addi         a5, t0, -1663
                  bge          s4, zero, 72f
57:               srli         s7, s0, 13
                  sltu         a6, t2, a4
                  bne          t1, s10, 69f
                  bne          a4, t5, 75f
                  sra          a4, gp, tp
                  srai         s3, t6, 27
                  sll          s1, zero, a7
                  bne          t5, t0, 67f
                  sll          t1, s2, s6
66:               addi         zero, t0, 1797
67:               bne          s8, ra, 76f
                  bgeu         a0, a4, 75f
69:               sub          t1, t1, s0
                  andi         t0, t4, -1959
                  slt          s11, s0, a1
72:               slt          s3, s0, s11
                  bltu         s6, s7, 91f
                  slti         t3, sp, 119
75:               bgeu         a7, a1, 92f
76:               srai         s11, a4, 3
                  beq          s2, s8, 91f
                  beq          sp, sp, 94f
                  sub          a5, t2, a7
                  nop
                  nop
                  slli         s5, t0, 12
                  auipc        s9, 956665
                  lui          s4, 534927
                  sltiu        t3, s10, -86
                  slli         s11, zero, 17
                  blt          s5, s9, 100f
                  sltu         s3, a7, s3
                  sra          t6, gp, zero
                  xori         s11, s1, 1063
91:               bgeu         a1, gp, 108f
92:               beq          tp, gp, 106f
                  lui          s4, 71419
94:               auipc        a5, 123539
                  or           a2, t5, s10
                  add          t3, gp, s8
                  sll          tp, tp, s7
                  bne          a6, ra, 99f
99:               sltu         a3, s0, a1
100:              nop
                  addi         s3, a4, -1018
                  nop
                  andi         a1, a1, -1286
                  ori          t0, s0, -1131
                  bltu         s11, t5, 114f
106:              srli         zero, sp, 20
                  ori          a4, s1, -4
108:              srli         s7, a6, 18
                  bne          t6, s10, 117f
                  srai         t4, a5, 23
                  nop
                  sub          s5, s4, s10
                  slli         s8, s8, 19
114:              add          t0, s11, a6
                  nop
                  or           a1, s3, a2
117:              slti         s2, a1, 229
                  bge          a4, a2, 121f
                  srai         gp, a7, 20
                  sra          s11, tp, a3
121:              sltu         s0, s2, a2
                  xor          s5, s6, t2
                  lui          s10, 710526
                  nop
                  sltu         s10, a4, zero
                  srai         s2, s8, 24
                  auipc        s7, 871069
                  andi         sp, a0, 821
                  addi         s2, s9, -643
                  sra          a4, t2, sp
                  beq          a1, a3, 140f
                  sltiu        a7, a7, -246
                  sra          s9, a6, a6
                  srli         tp, a3, 16
                  addi         s9, sp, 1614
                  srl          s11, gp, t6
                  and          t4, gp, a6
                  bge          a0, s11, 141f
                  or           t5, a4, s2
140:              ori          t1, a5, 1808
141:              srai         t4, s6, 21
                  bne          ra, t5, 159f
                  slli         t0, tp, 18
                  addi         ra, a5, 1752
                  blt          t0, a3, 154f
                  bne          tp, sp, 147f
147:              srli         s8, t2, 28
                  lui          s10, 532511
                  sub          tp, a0, t0
                  srai         gp, s9, 28
                  addi         s5, a7, -1208
                  srl          a4, s9, a7
                  blt          t2, t5, 167f
154:              sltiu        s1, a5, -1571
                  add          a2, a1, gp
                  or           t6, a7, t1
                  bne          a6, s5, 175f
                  and          s4, s8, s0
159:              and          t4, zero, s0
                  nop
                  add          t5, t3, a3
                  slti         t3, s7, 213
                  or           s7, s7, a2
                  auipc        t3, 615043
                  blt          t2, s2, 183f
                  bgeu         s1, ra, 170f
167:              sltu         a1, s7, a6
                  auipc        t5, 970449
                  or           s8, sp, s7
170:              nop
                  add          t0, t1, s11
                  beq          s2, t6, 181f
                  and          t6, s7, zero
                  andi         t0, a4, -1980
175:              auipc        s2, 185996
                  srli         a3, sp, 26
                  addi         a3, tp, -1699
                  sltiu        a6, s6, 1623
                  nop
                  nop
181:              nop
                  bltu         a2, t4, 195f
183:              beq          sp, ra, 199f
                  addi         t0, s5, 763
                  blt          a6, sp, 200f
                  slli         a5, a4, 16
                  slti         a2, t5, -255
                  sltu         t5, a6, s8
                  bge          s7, s4, 199f
                  andi         s8, a7, 562
                  srli         gp, t0, 21
                  auipc        t1, 77388
                  bgeu         s5, s1, 207f
                  sub          s5, a2, s9
195:              bne          a3, t2, 212f
                  sra          t4, s6, a6
                  bltu         s1, a7, 206f
                  srl          t5, t1, t4
199:              sll          s5, s1, a6
200:              sll          s0, s7, a7
                  srai         a5, s8, 11
                  bltu         ra, t0, 215f
                  lui          s8, 268725
                  sub          t3, t4, a4
                  bltu         s3, a4, 208f
206:              bgeu         s6, a7, 222f
207:              srai         t3, s9, 0
208:              sra          t6, a5, gp
                  srai         s8, s10, 20
                  auipc        sp, 355973
                  andi         a3, s6, -1668
212:              bgeu         s1, t0, 223f
                  srai         t1, t0, 14
                  ori          a7, a5, -1271
215:              xori         s0, a0, 947
                  bge          s3, s0, 226f
                  ori          a1, t3, -1283
                  blt          s8, t1, 220f
                  or           a6, gp, t6
220:              xor          t6, a7, a5
                  and          t1, t5, s11
222:              slli         s11, s10, 23
223:              srli         s2, a5, 5
                  bgeu         a5, s3, 241f
                  add          s8, t1, a4
226:              addi         s10, s6, -1041
                  srl          s10, t0, s8
                  addi         s7, s7, -54
                  and          gp, t3, zero
                  xori         a7, t3, -945
                  sub          s1, zero, a3
                  andi         t0, a7, -830
                  sra          t3, a7, a0
                  bgeu         t5, gp, 252f
                  nop
                  xor          s4, a3, s6
                  or           zero, t5, s10
                  nop
                  la           s4, sub_2
                  sub          s3, s1, s8
                  sltiu        gp, a1, -1114
                  ori          t5, tp, 173
                  addi         s4, s4, -877
                  srai         s11, s10, 20
                  sltiu        s3, s0, -149
                  srai         a1, t0, 23
                  slt          s9, a1, tp
                  andi         a6, s7, -1411
main_j1:          jalr         ra, s4, 878 #jump main -> sub_2
                  addi         s3, s10, 1742
                  add          s8, s2, tp
241:              xor          s0, s10, gp
                  ori          tp, t3, -1103
                  bne          gp, s0, 248f
                  slti         s4, gp, -1375
                  sltiu        ra, a2, -1678
                  sub          a2, s3, t6
                  srai         gp, a1, 21
248:              sltu         a6, a6, t3
                  srai         a1, t4, 8
                  sltiu        s9, zero, 1576
                  srai         tp, t0, 19
252:              bge          t6, s0, 265f
                  bne          t0, a1, 272f
                  beq          s5, s8, 255f
255:              srai         s4, t6, 22
                  auipc        s1, 738705
                  lui          zero, 839586
                  add          s4, s11, t6
                  or           s0, s3, s11
                  nop
                  blt          t6, a7, 269f
                  xor          a6, zero, a7
                  slti         t3, s11, -1988
                  nop
265:              slti         s8, a1, -1246
                  sll          t5, gp, a2
                  sltu         a1, a3, t3
                  auipc        a6, 743791
269:              sll          s7, t5, s3
                  bltu         a6, s6, 277f
                  sltiu        a2, a4, -804
272:              xori         s3, gp, -350
                  auipc        s3, 109910
                  sltiu        ra, s5, -990
                  bne          s6, t0, 285f
                  xori         t1, s6, 1390
277:              add          t6, s2, s7
                  sltiu        s7, ra, 521
                  bltu         zero, s8, 292f
                  bne          s2, s11, 297f
                  bge          ra, s9, 298f
                  slti         s8, t4, 640
                  sub          s11, t4, s9
                  ori          a7, s8, 1275
285:              srl          a5, t4, t0
                  ori          gp, s1, -1437
                  addi         zero, s2, 416
                  bltu         a4, a4, 301f
                  andi         a3, s10, -1232
                  xori         t5, s7, -950
                  slti         s11, s8, 1752
                  sra          s0, t1, a4
                  srl          sp, a7, s4
                  la           t4, sub_1
                  sub          s11, t3, t2
                  or           s2, t2, a5
                  addi         t4, t4, -798
                  slli         s4, s7, 29
                  andi         s9, s5, -275
main_j2:          jalr         ra, t4, 799 #jump main -> sub_1
                  sll          s4, s4, a6
                  bgeu         s2, t5, 294f
292:              slt          s0, a6, sp
                  bgeu         s11, t4, 312f
294:              nop
                  slt          gp, s11, s9
                  ori          s8, a2, 2046
297:              lui          s3, 231491
298:              blt          s10, tp, 315f
                  bne          gp, a7, 313f
                  sll          s1, a5, tp
301:              lui          s10, 390296
                  srai         s9, s10, 15
                  sra          a2, zero, a5
                  xor          t4, s1, s7
                  sra          t6, ra, s4
                  bltu         s9, t0, 311f
                  addi         a3, s6, 731
                  slti         a2, s10, 1283
                  blt          s5, s9, 327f
                  xori         s4, t4, 926
311:              slti         a2, gp, 1712
312:              sra          s1, a2, s2
313:              andi         a3, a3, -726
                  srli         t0, a3, 18
315:              sra          gp, s8, s11
                  sub          s0, a4, s10
                  sll          s0, s11, s3
                  bgeu         a2, s7, 334f
                  la           sp, region_1+1630 #start riscv_load_store_hazard_instr_stream_3
                  andi         a2, s10, -816
                  lb           t6, -1596(sp)
                  or           s2, s4, s6
                  lbu          s8, -665(sp)
                  add          s8, s11, s9
                  lbu          s5, -617(sp)
                  lhu          s9, 264(sp)
                  sh           t0, 264(sp)
                  lhu          t0, 264(sp)
                  sub          t0, a1, a2
                  lb           t1, 264(sp)
                  sb           a0, 264(sp)
                  slti         tp, gp, 759
                  sb           s3, -1452(sp)
                  lhu          tp, -1510(sp) #end riscv_load_store_hazard_instr_stream_3
                  beq          s10, s10, 328f
                  addi         a1, s10, 1790
                  slli         s8, t1, 1
                  sltu         sp, a0, s8
                  bne          s10, s6, 330f
                  andi         s10, s7, 1035
                  andi         gp, t4, -1686
                  sll          zero, s7, ra
327:              srai         a2, t1, 14
328:              srli         t3, s8, 16
                  srli         t0, tp, 7
330:              slti         a7, s8, 146
                  blt          a4, a6, 340f
                  xor          a3, zero, s2
                  sub          a7, a1, t1
334:              xor          a6, s2, t3
                  slti         s7, s11, 333
                  nop
                  srl          tp, t3, a3
                  andi         s10, s8, 954
                  ori          s10, s1, -203
340:              auipc        s4, 8343
                  and          a2, zero, a0
                  auipc        zero, 999391
                  slli         t5, s8, 26
                  andi         s5, t2, -1533
                  beq          s7, s9, 354f
                  blt          t0, zero, 347f
347:              auipc        a6, 152397
                  srai         s4, s9, 14
                  sub          s10, a6, t2
                  auipc        tp, 780225
                  lui          s1, 297011
                  bne          a1, t6, 368f
                  or           sp, s6, s8
354:              bltu         t2, a5, 368f
                  andi         s10, s9, 1673
                  ori          s3, t5, 1086
                  auipc        a7, 293155
                  auipc        zero, 983579
                  srli         sp, t2, 21
                  slti         a7, a0, 1695
                  srli         zero, s1, 17
                  bltu         t0, a6, 364f
                  srai         tp, t5, 4
364:              ori          gp, s7, 335
                  bne          t5, a2, 378f
                  beq          t3, a4, 377f
                  srli         s4, s9, 23
368:              sltu         t5, t5, t6
                  sltiu        s7, s5, -1820
                  auipc        t3, 503828
                  slti         a7, t0, -788
                  bge          s2, s8, 373f
373:              and          s9, sp, s6
                  beq          t4, t1, 392f
                  srl          t5, s6, t1
                  bltu         t1, zero, 394f
377:              sltiu        t4, a3, -905
378:              xori         a7, s4, 248
                  srai         s10, a2, 7
                  andi         a4, s3, 55
                  nop
                  slti         sp, t4, -613
                  srli         s5, gp, 6
                  andi         t5, a0, 464
                  slli         t3, s3, 21
                  or           s10, tp, s8
                  sub          t4, t0, a2
                  srai         s11, s9, 26
                  and          s3, a5, s0
                  add          s8, a7, s8
                  xor          s9, s3, t4
392:              xori         s8, s8, -200
                  bne          s9, a5, 396f
394:              bltu         s1, a0, 409f
                  slli         gp, s5, 11
396:              add          a4, s9, s2
                  sll          a3, t1, s1
                  add          ra, s4, a6
                  srl          s4, s7, ra
                  bge          t6, a6, 408f
                  xori         s3, t4, 1434
                  sll          tp, a1, zero
                  bge          t0, s6, 413f
                  srl          a5, t6, t4
                  andi         a2, s10, -507
                  slti         s3, s1, -1361
                  nop
408:              or           s7, a4, a4
409:              ori          s2, t5, 1241
                  sltu         s0, a3, s3
                  bltu         t5, t1, 415f
                  sltu         a6, zero, s2
413:              bltu         s9, t4, 430f
                  or           gp, t5, s11
415:              sub          s7, t3, ra
                  bne          s5, a1, 417f
417:              andi         t0, gp, -43
                  sra          a4, s2, t6
                  srli         s2, s10, 17
                  bge          t2, a2, 424f
                  xor          t0, t6, t3
                  srai         ra, a7, 30
                  bltu         zero, s6, 434f
424:              auipc        s11, 864236
                  add          a7, a3, t0
                  slli         tp, ra, 29
                  bne          a1, s4, 430f
                  add          s0, s9, a4
                  sub          a7, a3, s10
430:              sltu         t0, a5, s9
                  bgeu         s11, t4, 444f
                  srai         t0, zero, 23
                  bge          gp, a6, 443f
                  la           a1, region_1+413 #start riscv_load_store_rand_instr_stream_5
                  lbu          t3, -115(a1)
                  slt          s5, t2, s3
                  sub          t4, a5, s7
                  addi         a6, s2, -973
                  srli         gp, a2, 26
                  srai         s3, s5, 5
                  sb           a1, 205(a1)
                  sub          t5, s8, t5
                  xori         s9, s3, 359
                  srai         s3, t6, 14
                  addi         s2, t2, -23
                  lbu          a4, 78(a1)
                  lbu          s11, 110(a1)
                  andi         t4, gp, 512
                  lb           t4, 237(a1)
                  lbu          t0, 80(a1)
                  srl          s7, t0, t3
                  nop
                  sub          s5, a5, s11
                  add          s0, a6, a2
                  nop
                  lh           a7, 25(a1)
                  sra          t5, t0, a7
                  srai         s5, t4, 26
                  lb           a5, -159(a1)
                  slt          a5, s0, t4
                  slti         s7, a6, -1844
                  lh           t5, 163(a1)
                  lbu          s5, -108(a1)
                  nop
                  nop
                  lb           s9, -238(a1)
                  lb           a4, 245(a1)
                  lb           t4, 178(a1)
                  lb           a2, -10(a1) #end riscv_load_store_rand_instr_stream_5
434:              and          s8, s8, sp
                  bge          t2, s5, 449f
                  srl          a6, s11, a7
                  bgeu         gp, gp, 455f
                  add          s1, s7, s6
                  slli         a5, s4, 11
                  ori          s2, a1, 1538
                  nop
                  bltu         ra, s10, 456f
443:              bge          t0, s5, 445f
444:              blt          s3, zero, 459f
445:              bgeu         a5, zero, 461f
                  srli         s10, a0, 12
                  srli         gp, a1, 7
                  auipc        a3, 987588
449:              andi         t6, s9, 1279
                  slli         a1, s2, 8
                  blt          ra, s2, 460f
                  sra          gp, tp, t6
                  add          zero, t0, s6
                  beq          gp, ra, 462f
455:              blt          s11, a2, 465f
456:              slt          a7, a3, t2
                  bltu         s5, s4, 475f
                  xor          a2, t5, t1
459:              sra          s7, tp, s8
460:              slt          a7, s7, t0
461:              srl          ra, s10, sp
462:              nop
                  addi         s5, s7, -1536
                  bne          t0, t3, 465f
465:              bltu         a7, a0, 474f
                  andi         s9, a4, -1843
                  sub          s11, t3, a7
                  srai         t5, a5, 11
                  bge          s0, s6, 486f
                  blt          t1, gp, 473f
                  sll          t0, s9, t1
                  beq          t4, s10, 481f
473:              slli         a3, s8, 25
474:              sltu         s0, a0, t5
475:              xor          s11, s4, s2
                  slli         t4, t2, 31
                  bltu         s5, s0, 490f
                  xori         s8, s8, 1902
                  auipc        s5, 4990
                  xori         a6, t1, -330
481:              andi         s8, a7, 795
                  and          a3, t0, a3
                  sltu         a6, t1, s10
                  blt          a7, t0, 501f
                  srli         s5, a5, 10
486:              add          sp, t4, t3
                  bge          s0, s0, 494f
                  or           gp, tp, s9
                  sltiu        s0, a7, -705
490:              xori         s8, a1, 586
                  nop
                  add          s3, a1, a1
                  bge          sp, s1, 506f
494:              sra          t1, tp, t3
                  bne          s5, t5, 500f
                  lui          s2, 498369
                  andi         s10, s5, -494
                  xori         s11, t0, 1958
                  nop
500:              auipc        s1, 526638
501:              or           s11, a5, a0
                  sra          s0, a0, t6
                  srai         s2, t4, 11
                  nop
                  andi         a1, s7, -1024
506:              add          a6, t4, t6
                  and          s7, a6, zero
                  srai         a6, gp, 17
                  and          s10, s7, a6
                  srli         a1, t1, 14
                  blt          a1, a4, 527f
                  sub          t4, a6, a0
                  andi         s0, tp, 1331
                  auipc        t5, 641988
                  xori         t3, t5, 897
                  andi         a6, s2, -783
                  bltu         t1, t2, 536f
                  bge          a0, s8, 536f
                  slti         a5, t5, 1825
                  and          a3, t4, gp
                  or           s8, t3, a5
                  beq          a2, s3, 531f
                  srli         s8, a7, 9
                  bne          a4, a7, 526f
                  auipc        s8, 454367
526:              bne          t1, s1, 530f
527:              addi         t0, t0, 1224
                  slti         a5, tp, -1983
                  bgeu         s11, a5, 545f
530:              slli         a4, ra, 19
531:              sltu         zero, s6, s4
                  or           a4, a4, t2
                  bne          a1, ra, 551f
                  andi         a3, t2, 980
                  sll          t4, s7, t1
536:              ori          s7, s5, 529
                  lui          s5, 527788
                  bne          a1, t3, 551f
                  slli         a4, t3, 3
                  sltu         t3, tp, zero
                  sltu         s5, s0, t0
                  add          t6, sp, a1
                  slt          s10, a4, s2
                  srai         tp, tp, 12
545:              bltu         s0, a2, 564f
                  addi         a3, s7, -1263
                  bgeu         t3, t1, 548f
548:              bgeu         t1, s5, 561f
                  xori         a2, s10, 1531
                  beq          zero, zero, 568f
551:              bgeu         s3, s1, 554f
                  andi         s10, a0, 1992
                  blt          s11, a7, 567f
554:              addi         tp, s4, 583
                  or           a7, a7, s10
                  or           a6, t2, t4
                  beq          s3, tp, 564f
                  sra          s9, t0, a7
                  or           s10, s5, t6
                  auipc        s3, 72414
561:              sub          s5, t0, ra
                  andi         s7, a0, 104
                  srli         t4, a1, 10
564:              add          a2, s1, tp
                  or           a3, gp, s0
                  or           t3, a3, s0
567:              sra          a2, s2, t1
568:              srai         t3, s9, 10
                  sltu         a5, a6, s1
                  beq          a1, a4, 580f
                  beq          a5, s10, 588f
                  bgeu         a2, s11, 575f
                  and          t1, s0, ra
                  sll          t0, ra, a7
575:              sub          s1, t4, s3
                  bge          a1, s11, 594f
                  sub          t3, sp, a4
                  slt          a7, s4, s9
                  sltiu        ra, s11, -894
580:              andi         sp, s10, 353
                  sub          s8, a2, ra
                  bltu         s11, a6, 591f
                  sll          s0, a0, s4
                  xori         s11, ra, -774
                  andi         t3, s3, -269
                  srai         s9, a5, 3
                  slt          zero, a2, a5
588:              lui          s3, 738865
                  add          a3, t5, s9
                  lui          s0, 536867
591:              srai         gp, s6, 20
                  bne          a3, a0, 609f
                  xori         s4, t5, 863
594:              srai         a5, a5, 21
                  beq          s3, t1, 608f
                  xor          s11, s3, s3
                  ori          ra, s11, -485
                  bge          t1, s10, 608f
                  slt          tp, s4, t0
                  beq          s8, t4, 615f
                  add          s4, t5, sp
                  beq          t5, s9, 613f
                  nop
                  xor          s8, s8, a7
                  and          s10, sp, t0
                  nop
                  xori         s3, s5, 1399
608:              sltu         gp, a7, s3
609:              srai         t4, s11, 24
                  sltu         a3, s2, s3
                  bgeu         t5, t5, 616f
                  addi         sp, a3, -645
613:              slli         s3, a5, 30
                  bge          s8, s0, 628f
615:              add          t4, a1, a7
616:              bne          s4, s11, 632f
                  addi         a5, a0, 119
                  srai         a3, a2, 23
                  slli         t1, t1, 10
                  xor          s1, gp, s4
                  addi         s10, s7, 1488
                  srai         s5, t6, 9
                  slli         a7, a6, 9
                  srli         t6, t1, 2
                  sll          t0, s2, t1
                  sll          a1, s2, s0
                  sra          a7, zero, a1
628:              or           s3, a4, ra
                  auipc        s0, 469316
                  sub          s10, t0, s4
                  add          s5, t1, t3
632:              sltu         a1, s9, tp
                  srli         zero, s10, 8
                  xori         a3, s2, -1463
                  blt          s5, zero, 636f
636:              addi         s10, s8, 690
                  and          s7, t6, t0
                  bne          a2, tp, 655f
                  sltu         s11, t3, t0
                  sltiu        t6, a2, 1837
                  bltu         t0, a2, 650f
                  blt          s3, a7, 650f
                  or           s7, t0, t2
                  xor          a6, s7, s2
                  auipc        gp, 988661
                  xori         a1, s6, -1362
                  xor          t6, gp, zero
                  auipc        s5, 487556
                  sltu         s3, a6, a3
650:              srai         s9, s7, 25
                  ori          a5, t2, -287
                  bne          s11, t0, 661f
                  slti         sp, a7, 232
                  srli         s2, t6, 23
655:              srl          s10, s9, a7
                  bne          s0, s2, 675f
                  bgeu         s2, zero, 670f
                  lui          s0, 222778
                  slli         t1, a7, 26
                  slt          s1, s3, ra
661:              add          t6, t2, s1
                  sltu         a3, t6, zero
                  sra          a5, s10, t4
                  nop
                  sra          t4, t5, s8
                  bltu         sp, ra, 680f
                  sub          s10, a4, t0
                  bne          t1, s10, 673f
                  addi         s9, t4, -1173
670:              slt          zero, a0, s4
                  lui          t1, 113237
                  lui          a4, 511751
673:              sra          s1, t1, a7
                  lui          s11, 800294
675:              slt          tp, a7, s4
                  bltu         a6, s7, 680f
                  xor          t4, s1, a3
                  xori         s1, s9, -63
                  nop
680:              lui          a6, 740268
                  sltiu        s3, sp, 1046
                  auipc        a5, 433736
                  srli         s1, tp, 24
                  slti         s9, t2, -290
                  bltu         s10, s8, 703f
                  and          t3, t4, t1
                  sub          zero, zero, t2
                  slti         a2, s4, 1689
                  bgeu         s5, a7, 704f
                  sll          ra, a3, a6
                  blt          a4, s11, 708f
                  bge          s2, t3, 700f
                  xori         s0, t0, -1190
                  sub          s10, s3, s3
                  bne          t4, s6, 704f
                  blt          s2, tp, 697f
697:              srl          tp, s5, a2
                  andi         t1, a7, -747
                  srai         t5, zero, 23
700:              sub          t3, s3, a7
                  sltu         t5, zero, s7
                  or           s11, s10, s4
703:              blt          a7, s2, 712f
704:              or           a5, a2, s9
                  auipc        s1, 581676
                  bge          s0, s0, 716f
                  bgeu         a7, t1, 724f
708:              bgeu         sp, tp, 709f
709:              srl          a2, t6, s10
                  slti         gp, s3, 250
                  sub          s3, t4, a1
712:              srai         a2, s4, 14
                  srai         zero, a4, 16
                  add          zero, s5, gp
                  blt          s9, ra, 717f
716:              bltu         t6, a2, 723f
717:              nop
                  blt          t6, t2, 721f
                  sub          a4, zero, s8
                  beq          ra, s9, 737f
721:              bne          s6, t0, 735f
                  slli         a2, zero, 15
723:              sltiu        s10, s3, 1849
724:              sub          t1, a4, s10
                  nop
                  bltu         t4, s11, 737f
                  and          s2, s5, s3
                  bgeu         a1, a1, 746f
                  bne          tp, a2, 745f
                  sll          s11, a2, s11
                  nop
                  bne          t5, gp, 742f
                  andi         ra, s8, 986
                  sll          a6, t1, t4
735:              xor          zero, a4, s6
                  addi         s3, s3, 24
737:              srli         s0, s6, 27
                  beq          s10, s9, 754f
                  srl          a2, s4, t4
                  bne          a1, a0, 753f
                  srli         s0, a0, 4
742:              ori          a4, a4, 683
                  bge          s0, t4, 746f
                  slt          s4, a6, gp
745:              addi         s8, a0, 1026
746:              ori          s4, t6, -1858
                  srai         t0, t2, 9
                  andi         a2, a1, 1536
                  srai         a3, t2, 11
                  and          t0, a7, a0
                  nop
                  ori          s2, sp, -685
753:              xori         a5, a1, -1247
754:              bgeu         a2, s7, 767f
                  sra          a3, ra, s5
                  or           s1, s8, zero
                  add          s4, s6, a4
                  sub          s5, t5, tp
                  sra          a7, t1, t3
                  lui          a7, 458384
                  sub          t5, a3, s5
                  slli         zero, t5, 6
                  bne          a7, a1, 781f
                  srl          s11, a1, t3
                  bne          gp, s2, 767f
                  xor          s8, s11, t5
767:              srai         t1, s7, 31
                  sll          s3, s9, t6
                  beq          s6, s10, 786f
                  auipc        a4, 60611
                  sltiu        gp, s9, -1283
                  sra          a3, t3, zero
                  andi         a4, t5, 1929
                  addi         a2, a2, 1780
                  srl          t3, ra, s5
                  bne          t1, t4, 785f
                  or           t5, s0, s4
                  slt          t3, t6, a0
                  or           ra, tp, tp
                  auipc        t5, 471249
781:              nop
                  nop
                  srai         t0, t3, 6
                  sltu         ra, s9, t1
785:              slt          s10, t0, s8
786:              xor          s2, s5, s1
                  sltiu        s9, t0, 6
                  beq          ra, s7, 790f
                  lui          s2, 612309
790:              andi         s3, t0, -223
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sll          t4, a7, s10
                  addi         a0, a0, -28
                  srai         zero, a6, 7
                  xor          s7, s3, t6
                  sw           ra, 4(a0)
                  slt          s2, gp, sp
                  beq          a2, s9, 7f
                  or           t3, t6, s2
                  sltiu        s5, ra, -1302
                  add          s0, s10, s10
                  sltiu        a3, a5, 782
                  sub          a3, tp, a7
                  srl          a6, s9, s11
7:                srai         s0, s6, 22
                  beq          a7, t3, 28f
                  bltu         t0, zero, 13f
                  sltiu        a1, ra, 504
                  nop
                  add          a4, ra, a1
13:               blt          zero, s9, 20f
                  xori         a4, a5, 1365
                  srli         a1, zero, 28
                  xor          ra, a6, a0
                  slt          a2, s7, t6
                  srl          s7, a0, s2
                  sltu         t6, s10, s8
20:               sltu         t0, s1, ra
                  beq          t0, s10, 40f
                  nop
                  sltiu        s4, tp, 1825
                  andi         t1, a2, -1792
                  and          sp, t5, a2
                  lui          tp, 64616
                  slt          s5, t0, t0
28:               andi         t5, t5, -1823
                  xori         s0, t0, 1248
                  srli         a2, t0, 3
                  sub          gp, s11, t0
                  sub          a7, t1, s1
                  bltu         zero, sp, 36f
                  bne          t1, zero, 41f
                  bge          s4, s0, 38f
36:               bne          a2, t5, 41f
                  srai         a7, s10, 21
38:               addi         s4, t3, -730
                  add          s1, a5, a6
40:               slt          s4, s11, a0
41:               and          zero, s2, s4
                  lw           ra, 4(a0)
                  addi         t1, ra, -1559
                  xori         t4, s7, 728
                  addi         a0, a0, 28
                  ori          gp, t0, 2004
                  sub          s4, s7, a6
54:               addi x31, x1, 0
54:               jalr x31, x31, 0
sub_1:            bltu         s10, a4, sub_1_stack_p
                  srli         sp, s3, 15
                  nop
                  and          s4, sp, t0
                  ori          s4, tp, 1454
sub_1_stack_p:    addi         a0, a0, -40
                  add          s5, s6, sp
                  srai         a7, a1, 12
                  sw           ra, 4(a0)
                  slti         tp, t6, 1194
                  slli         s5, a2, 31
                  la           sp, region_0+1532 #start riscv_load_store_rand_instr_stream_0
                  sll          t5, s10, a4
                  sb           s0, -115(sp)
                  sb           t1, 161(sp)
                  sb           t0, 147(sp)
                  sb           s7, -109(sp)
                  lh           s9, -120(sp)
                  and          t1, a5, t0
                  slt          s9, s10, t4
                  lhu          t0, 234(sp)
                  lb           s9, 161(sp)
                  sb           s0, 209(sp)
                  sh           tp, -2(sp)
                  addi         t1, a1, -898
                  lhu          t5, -110(sp)
                  xori         gp, s2, -17
                  or           tp, s4, a4
                  sh           tp, 68(sp)
                  sb           s5, -123(sp)
                  sb           s7, -133(sp)
                  lbu          a7, 242(sp)
                  sh           s0, 126(sp)
                  slli         s4, s10, 6
                  sb           s5, -117(sp)
                  lh           a4, 12(sp)
                  sltu         s7, s1, s0
                  andi         s9, t6, -619
                  slt          s11, a3, s9
                  xor          s9, t4, s1
                  xori         t3, t5, 888
                  addi         s4, s10, -877
                  slti         s3, s6, 333
                  sltu         a7, sp, ra
                  addi         s2, s2, 1924
                  add          ra, a1, a0
                  sltiu        ra, a7, 1522
                  sb           t5, -215(sp)
                  sb           tp, -164(sp)
                  lbu          a1, 22(sp)
                  lbu          a2, 217(sp)
                  lhu          ra, 8(sp)
                  lbu          tp, 105(sp)
                  srai         a1, a0, 30
                  andi         a7, s7, 864
                  lhu          a5, 134(sp)
                  lb           t3, -90(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+756 #start load_store_instr_stream_1
                  sb           a0, -151(s11)
                  la           s4, region_0+1910 #start load_store_instr_stream_0
                  lbu          s10, 7(s11)
                  lbu          zero, -130(s11)
                  lhu          s8, -152(s11)
                  lbu          a7, -4(s4)
                  sb           t5, 167(s11)
                  lb           s3, -15(s4)
                  lbu          a7, -16(s11)
                  lhu          a6, -202(s11)
                  sh           t2, 12(s4)
                  sb           s3, 6(s4)
                  sb           a6, 2(s4)
                  sb           s6, 11(s11)
                  sh           s1, -170(s11)
                  sb           s4, 5(s4)
                  sb           s3, 256(s11) #end load_store_instr_stream_1
                  lb           ra, 12(s4) #end load_store_instr_stream_0
                  la           s4, region_1+920 #start riscv_load_store_hazard_instr_stream_0
                  lhu          a1, 130(s4)
                  lb           s1, 124(s4)
                  lhu          tp, 124(s4)
                  lui          ra, 419366
                  lhu          a7, 124(s4)
                  lw           a7, 124(s4)
                  lh           zero, 124(s4)
                  nop
                  sb           s9, -87(s4)
                  addi         s7, a5, -1143
                  lb           a5, -87(s4)
                  lbu          t5, -87(s4)
                  sb           a1, -221(s4)
                  lb           a1, -221(s4)
                  sb           s1, 26(s4)
                  lbu          s0, -147(s4)
                  lbu          t5, -147(s4)
                  lbu          gp, -147(s4)
                  lb           s2, -147(s4) #end riscv_load_store_hazard_instr_stream_0
                  blt          s10, a6, 19f
                  slt          t1, sp, s9
                  add          s4, a6, s7
                  slti         t6, s5, -843
                  auipc        a3, 365627
                  xor          s0, a4, s0
                  slt          s10, zero, s1
                  slt          t3, s4, a0
                  srl          s7, t1, tp
                  srai         ra, s3, 11
                  srai         s8, tp, 17
                  or           t4, a3, a7
                  and          s9, t1, a3
                  lui          t1, 778287
                  addi         a5, s9, -1599
                  sra          t3, a3, s6
                  bge          s9, zero, 35f
                  slt          t3, t4, sp
                  and          s4, s2, s6
19:               lui          s2, 658432
                  auipc        gp, 295099
                  ori          tp, tp, -519
                  bne          t3, a5, 27f
                  sltiu        zero, a1, 1595
                  sra          t4, ra, gp
                  lui          s2, 425796
                  bne          a5, s10, 45f
27:               or           tp, a3, gp
                  srli         a6, a2, 20
                  add          s4, a3, t3
                  ori          s8, a6, -764
                  blt          s4, a3, 34f
                  auipc        s1, 194
                  srai         a5, a4, 0
34:               andi         zero, s3, 1786
35:               bge          s10, s11, 47f
                  sltiu        s8, sp, -1586
                  and          a3, s11, t3
                  sll          s8, t2, t6
                  slti         s1, a5, -481
                  sltiu        a3, s6, -1981
                  blt          s1, t3, 61f
                  srl          s9, s7, a3
                  or           s7, a0, t4
                  srl          t3, s2, s10
45:               slt          t0, a6, sp
                  slt          t4, t2, s3
47:               sra          s0, s10, t4
                  nop
                  addi         s1, a3, 217
                  bge          s0, t6, 54f
                  addi         gp, a1, -1893
                  bge          a7, s0, 69f
                  bltu         zero, a2, 63f
54:               sll          s10, t1, tp
                  srli         t0, s11, 8
                  xori         a7, s0, -1931
                  ori          s7, s1, 8
                  sra          t4, a4, tp
                  sltiu        s10, s11, -2001
                  bne          s9, ra, 69f
61:               sub          gp, s2, t2
                  auipc        s4, 871638
63:               sltu         s5, a4, t2
                  slli         t3, a1, 25
                  auipc        s0, 967325
                  and          zero, s9, s5
                  andi         a7, a7, -363
                  srli         s4, a0, 8
69:               srli         sp, a1, 30
                  and          a2, t0, t5
                  auipc        s3, 943747
                  srai         s9, s11, 6
                  xori         a5, zero, -1803
                  xori         sp, s8, -613
                  sltu         t1, t5, t4
                  and          t4, a2, ra
                  and          s8, s9, s5
                  slti         t4, a1, -736
                  sra          a3, s8, t6
                  sltiu        a2, s1, 711
                  auipc        t0, 1012583
                  add          s1, zero, t4
                  xor          zero, a3, t3
                  sra          t3, a1, a3
                  addi         sp, zero, -350
                  bltu         s6, a6, 106f
                  nop
                  sltiu        s0, s2, -1802
                  sra          t4, s9, s9
                  slli         s10, t5, 26
                  sltiu        t0, gp, 674
                  add          t6, a6, s0
                  bne          t0, t4, 108f
                  lui          s10, 548462
                  sub          a6, a6, a2
                  srli         gp, a2, 21
                  blt          s5, s9, 113f
                  sltiu        a2, s10, -2041
                  addi         sp, t6, 1419
                  bge          s9, s9, 119f
                  or           a6, s3, s8
                  and          s9, s4, a7
                  sltiu        s4, s8, 1356
                  bne          a2, t3, 109f
                  bge          tp, s6, 116f
106:              add          a4, a2, s3
                  lui          t4, 836117
108:              bltu         s2, s2, 122f
109:              nop
                  sltu         a1, t1, a1
                  bltu         a2, tp, 127f
                  bne          s4, ra, 132f
113:              xori         s11, s10, -1030
                  sltiu        s10, a6, 899
                  slli         s3, t5, 1
116:              or           a3, a4, t4
                  sltu         s3, s11, s7
                  sra          s1, t6, t5
119:              slti         a6, t6, -72
                  sltiu        t4, s2, -154
                  andi         tp, a5, -322
122:              xori         s2, a3, -145
                  blt          zero, t0, 133f
                  sub          s5, s3, a0
                  and          s10, s6, t2
                  slli         s2, t0, 2
127:              bge          tp, a4, 146f
                  xor          t1, s5, tp
                  bgeu         sp, ra, 142f
                  bgeu         s1, a1, 131f
131:              slli         s9, a7, 4
132:              lui          s10, 584486
133:              andi         s10, t5, -352
                  sub          t1, sp, t6
                  sll          a5, s4, s7
                  and          s11, s10, ra
                  srl          t5, a6, s4
                  bne          s3, s9, 158f
                  and          s5, s9, ra
                  bltu         s6, s0, 156f
                  bge          s6, t3, 150f
142:              andi         s7, t1, -1456
                  auipc        s2, 923802
                  xor          a1, s6, a3
                  xori         a3, s7, 2043
146:              blt          s9, s0, 162f
                  sub          s0, s6, a1
                  srl          t0, sp, tp
                  add          s5, t4, t2
150:              bltu         ra, tp, 157f
                  ori          a3, a4, -914
                  nop
                  xor          a3, a7, s3
                  auipc        a1, 605093
                  sltiu        a1, s9, 1078
156:              bge          s4, a3, 164f
157:              sltu         s4, gp, t0
158:              ori          a3, a7, 224
                  lui          s10, 299856
                  xor          s3, a3, s8
                  or           a6, s9, a4
162:              andi         s8, s6, -871
                  slti         a7, a1, 235
164:              slt          t3, a1, t2
                  bne          s8, s10, 166f
166:              srl          s9, zero, s2
                  lw           ra, 4(a0)
                  sll          a3, s9, s10
                  sub          s2, a2, s8
                  slt          s3, t1, a6
                  srai         a6, s8, 9
                  add          t5, t0, zero
                  addi         a0, a0, 40
                  and          s2, s3, s0
                  ori          a1, s7, 236
                  srl          s1, t6, s0
273:              addi x3, x1, 1
273:              jalr x3, x3, 0
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x7, x10, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x14, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x14, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x14, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x14, x11, ecall_handler
                  li x11, 0x1
                  beq x14, x11, instr_fault_handler
                  li x11, 0x5
                  beq x14, x11, load_fault_handler
                  li x11, 0x7
                  beq x14, x11, store_fault_handler
                  li x11, 0xc
                  beq x14, x11, pt_fault_handler
                  li x11, 0xd
                  beq x14, x11, pt_fault_handler
                  li x11, 0xf
                  beq x14, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x10, x7, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x7, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x7, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x10, x7, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x10, x7, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x10, x7, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
