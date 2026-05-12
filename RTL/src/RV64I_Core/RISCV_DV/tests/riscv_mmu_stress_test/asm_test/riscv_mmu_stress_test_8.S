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
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
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
                  li x0, 0x550537e9
                  li x1, 0xdeb38ddc
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x6
                  li x5, 0x6c849fac
                  li x6, 0x80000000
                  li x7, 0xca25535a
                  li x8, 0xf470d5b2
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xff45cd52
                  li x12, 0x0
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xf436d722
                  li x17, 0xd50c17df
                  li x18, 0x80000000
                  li x19, 0xf32d718b
                  li x20, 0x3
                  li x21, 0x0
                  li x22, 0xfd2c4e09
                  li x23, 0x2
                  li x24, 0x0
                  li x25, 0x1
                  li x26, 0x1
                  li x28, 0xf193c93c
                  li x29, 0xecb22203
                  li x30, 0x0
                  li x31, 0xfcf51fd6
                  la x13, user_stack_end
main:             la           sp, region_1+1555 #start riscv_load_store_rand_instr_stream_1
                  ori          s0, ra, -326
                  sb           t5, 9(sp)
                  lb           t6, -4(sp)
                  lb           s4, 10(sp)
                  xori         t0, t5, 222
                  lbu          s9, 8(sp)
                  lb           t1, -9(sp)
                  lb           s8, 4(sp)
                  sltiu        a0, gp, -1260
                  sltu         zero, ra, s0
                  auipc        a0, 322437
                  sb           a3, 2(sp)
                  sll          t4, a6, a7
                  addi         a1, zero, 1641
                  lhu          gp, -11(sp)
                  sltu         s8, s8, sp
                  sb           a4, -10(sp)
                  sh           a1, 5(sp)
                  xor          s9, a6, s5
                  lh           s1, 9(sp)
                  lbu          t4, 0(sp)
                  sw           a0, -15(sp)
                  lb           s0, 12(sp)
                  srl          a6, s9, s8
                  srli         a4, t3, 4
                  lbu          s0, 12(sp)
                  sltiu        a2, a6, -429
                  sb           s6, 13(sp)
                  lbu          ra, -12(sp)
                  lbu          s8, -6(sp)
                  xori         s0, t1, -1109
                  lh           s4, -3(sp)
                  nop
                  slt          ra, s7, a5
                  xor          t4, s7, t1
                  lbu          a4, -1(sp)
                  lb           a2, -6(sp)
                  auipc        s8, 477769
                  srl          t1, s11, t0
                  sra          a4, s5, tp
                  sb           a0, 0(sp)
                  sltiu        s3, a5, 1184
                  slli         a1, t5, 6
                  or           a4, s2, gp
                  sb           sp, -16(sp)
                  slti         a4, a2, -945
                  lb           gp, -6(sp)
                  sb           ra, -6(sp)
                  sb           gp, 12(sp)
                  sb           a3, -2(sp)
                  nop
                  lh           a1, -9(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1647 #start riscv_load_store_rand_instr_stream_3
                  lb           s4, -438(sp)
                  sb           a6, -1256(sp)
                  addi         s9, t1, 104
                  sll          t6, a6, s5
                  auipc        s8, 344631
                  slli         t1, t4, 2
                  lh           s9, -579(sp)
                  add          t2, a6, s4
                  sltu         s10, t4, a6
                  sw           s0, -975(sp)
                  lh           a6, -561(sp)
                  sw           gp, -1103(sp)
                  and          s0, t6, a4
                  sra          s6, t4, s9
                  srl          a2, a4, s6
                  sb           t0, -154(sp)
                  xori         s0, s4, -1127
                  lb           s7, 246(sp)
                  addi         s3, t2, 204
                  slt          a0, t5, s2
                  slli         s2, s6, 9
                  lb           a0, -1461(sp)
                  sb           t1, -338(sp)
                  lbu          t6, -540(sp)
                  lbu          t2, -130(sp)
                  add          s2, a7, a3
                  srli         ra, s7, 17
                  lb           s6, -918(sp)
                  ori          t1, s6, -675
                  and          s5, a3, t0
                  lbu          s10, -787(sp)
                  slli         a6, t3, 8
                  xori         a5, t2, -483
                  lui          zero, 88401
                  sub          a5, sp, s1
                  lbu          t0, -1027(sp)
                  sra          a1, t3, s5
                  sll          ra, a1, gp
                  lb           s5, -1241(sp)
                  sltiu        s1, s11, -250
                  lb           s0, -696(sp)
                  lb           s1, -788(sp)
                  slli         s8, a5, 5
                  nop
                  or           a4, s2, t2
                  or           a5, s9, s8
                  lhu          a5, -1039(sp)
                  addi         zero, s9, -1980
                  lb           a2, -102(sp)
                  lbu          a2, 134(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_0+1507 #start riscv_load_store_rand_instr_stream_7
                  lb           t2, -126(a4)
                  sll          t5, s6, s0
                  sub          t0, t1, s4
                  lbu          a2, -69(a4)
                  lbu          gp, 74(a4)
                  sltiu        s9, a7, -721
                  lb           a0, -30(a4)
                  add          s8, s9, a4
                  nop
                  add          s4, sp, s3
                  and          sp, s2, t0
                  xori         t4, t0, -1235
                  lbu          ra, -120(a4)
                  sll          a5, zero, zero
                  sb           a0, -152(a4)
                  srl          s5, t0, a2
                  lbu          ra, 192(a4)
                  lb           sp, -201(a4)
                  slti         s6, a3, -329
                  srl          ra, s9, t5
                  xor          ra, ra, s7
                  lbu          a7, 254(a4)
                  sh           s5, -241(a4)
                  sll          t6, s6, a3
                  addi         s1, s5, -642
                  lui          s5, 897666
                  sb           t4, -21(a4)
                  lb           s0, -73(a4)
                  sub          t4, t1, s7
                  lb           s2, 240(a4)
                  sw           s2, -91(a4)
                  lb           zero, 34(a4)
                  sb           gp, -26(a4)
                  lbu          s3, -226(a4)
                  sltu         ra, s7, t4
                  sw           t3, 37(a4)
                  sb           a7, 156(a4)
                  srai         s9, tp, 4
                  lbu          a1, 139(a4)
                  sb           ra, 139(a4)
                  lb           a6, -138(a4) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1380 #start riscv_load_store_rand_instr_stream_5
                  sub          t5, tp, a3
                  slti         tp, a5, 1981
                  lhu          s6, 250(sp)
                  srai         s3, a4, 16
                  srli         t6, s6, 11
                  lb           a1, -1005(sp)
                  sll          zero, s8, a1
                  lb           s8, -1263(sp)
                  lb           t0, -93(sp)
                  and          a2, a6, t1
                  lb           a5, -1247(sp)
                  lw           s8, -1008(sp)
                  nop
                  sb           s11, -789(sp)
                  lbu          a5, 285(sp)
                  slli         a1, s1, 4
                  lbu          t0, 66(sp)
                  nop
                  nop
                  lbu          t1, -1147(sp)
                  auipc        ra, 575583
                  lb           t1, -931(sp)
                  xori         a4, a1, -645
                  sh           s8, 212(sp)
                  srl          s8, a5, s0
                  xori         s9, ra, -1069
                  slli         t0, a4, 16
                  add          s9, t4, zero
                  add          s4, t2, s2
                  and          s9, t2, t0
                  srli         a1, s5, 9
                  add          a5, t3, a4
                  sw           tp, -1072(sp)
                  sb           a3, 229(sp)
                  sltiu        s4, t0, 391
                  sh           s2, -1302(sp)
                  sb           s8, -689(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1182 #start riscv_load_store_rand_instr_stream_6
                  lhu          t5, 4(sp)
                  lui          gp, 180145
                  lb           s2, 16(sp)
                  lb           a4, -15(sp)
                  lbu          a1, 2(sp)
                  sh           t4, 6(sp)
                  xor          a4, t0, a7
                  lui          zero, 876371
                  ori          s8, sp, 1287
                  add          a5, gp, tp
                  srli         a7, t0, 4
                  sh           a0, 6(sp)
                  add          s6, a3, a2
                  xor          gp, s0, a6
                  sb           s11, -4(sp)
                  sb           s10, -9(sp)
                  srli         s2, s4, 6
                  and          s8, s0, s2
                  srli         s5, zero, 17
                  slli         a4, t1, 7
                  sll          s1, s2, a0
                  lbu          s5, 9(sp)
                  sb           ra, 2(sp)
                  sb           s0, 12(sp)
                  sb           s2, -3(sp)
                  sll          s7, sp, a3
                  lh           t6, 12(sp)
                  lhu          s10, 0(sp)
                  lb           s7, 3(sp)
                  lui          a1, 519386
                  lb           s1, -4(sp)
                  lui          zero, 619253
                  lhu          tp, -4(sp)
                  sh           s7, -12(sp) #end riscv_load_store_rand_instr_stream_6
                  la           t4, region_1+663 #start riscv_load_store_hazard_instr_stream_3
                  lb           s1, -14(t4)
                  lbu          s7, -14(t4)
                  slli         zero, ra, 3
                  sb           s9, -2(t4)
                  lbu          sp, -10(t4)
                  lb           s9, -10(t4)
                  lb           a5, -10(t4)
                  lbu          s3, -12(t4)
                  slti         sp, a3, 1832
                  slt          s9, s9, a3
                  sb           s2, -12(t4)
                  slt          a5, a1, a5
                  sb           a6, -11(t4)
                  srai         s3, sp, 27
                  nop
                  lhu          s7, -11(t4) #end riscv_load_store_hazard_instr_stream_3
                  la           s4, region_0+1315 #start riscv_load_store_hazard_instr_stream_7
                  lb           a4, -48(s4)
                  lb           s1, -48(s4)
                  sw           gp, -899(s4)
                  sb           tp, -962(s4)
                  lw           t2, -1087(s4)
                  sltu         t4, a1, gp
                  srl          zero, t3, a3
                  lb           t4, -451(s4)
                  lh           a6, 315(s4)
                  sb           s0, -132(s4)
                  xori         sp, a7, -1032
                  sltiu        s10, a3, -296
                  lb           a2, 179(s4)
                  lhu          s9, 335(s4)
                  srl          s3, t1, s7
                  sb           ra, -650(s4)
                  lb           s8, -650(s4) #end riscv_load_store_hazard_instr_stream_7
                  la           s0, region_1+851 #start riscv_load_store_hazard_instr_stream_5
                  sw           gp, 5(s0)
                  lbu          s5, -14(s0)
                  slti         t6, t6, -1493
                  lbu          s2, -6(s0)
                  sb           t4, -12(s0)
                  lbu          s1, 0(s0)
                  sub          ra, s4, t1
                  sb           s1, 4(s0)
                  sb           ra, 4(s0)
                  sw           tp, -11(s0)
                  sb           s6, -12(s0)
                  lb           a7, 3(s0)
                  lbu          t2, -16(s0)
                  xori         a2, s8, 1142
                  lb           a5, -16(s0)
                  lbu          gp, -10(s0)
                  lbu          t5, -10(s0)
                  sll          a4, t2, s9
                  lb           s1, -10(s0) #end riscv_load_store_hazard_instr_stream_5
                  la           tp, region_1+1962 #start riscv_load_store_hazard_instr_stream_4
                  sh           s6, -1946(tp)
                  sw           a3, -1946(tp)
                  sb           a4, -617(tp)
                  slli         s7, s6, 6
                  lhu          a2, -816(tp)
                  sb           t2, -816(tp)
                  sb           s5, -767(tp)
                  sb           s7, -1410(tp)
                  sb           s6, -1309(tp)
                  lbu          gp, -412(tp)
                  lh           a1, -412(tp)
                  lb           a5, -905(tp)
                  lbu          a4, -397(tp) #end riscv_load_store_hazard_instr_stream_4
                  la           s3, region_1+307 #start load_store_instr_stream_1
                  lbu          t4, -305(s3)
                  la           s0, region_1+1002 #start load_store_instr_stream_2
                  la           a0, region_1+1992 #start load_store_instr_stream_0
                  lb           t5, 87(s3)
                  lbu          sp, 11(s0)
                  lbu          s9, -1527(a0)
                  lhu          gp, -39(s3)
                  lb           s8, -693(a0)
                  lw           t2, -215(s3)
                  sb           a3, 1687(s3)
                  lh           s1, -1082(a0)
                  sb           s7, -1191(a0)
                  lbu          zero, -1497(a0)
                  sb           t5, 16(s0)
                  lbu          a1, 9(s0)
                  sb           a2, 7(s0)
                  sb           t3, 13(s0)
                  lbu          t2, -306(s3)
                  lbu          t1, 11(s0)
                  lbu          s9, 990(s3)
                  sb           zero, -1657(a0)
                  lh           t1, 14(s0)
                  sw           s10, 2(s0)
                  lh           a1, 507(s3) #end load_store_instr_stream_1
                  sb           t1, 2(s0) #end load_store_instr_stream_2
                  lb           a4, -1747(a0)
                  lb           a6, -83(a0) #end load_store_instr_stream_0
                  la           s0, region_1+477 #start load_store_instr_stream_1
                  la           s6, region_1+1908 #start load_store_instr_stream_2
                  la           a4, region_1+167 #start load_store_instr_stream_0
                  sb           a1, -29(a4)
                  lbu          a5, -172(s6)
                  lbu          t0, -226(s0)
                  lb           s2, -212(s6)
                  sb           t4, 241(s0)
                  lb           a2, 14(s6)
                  lb           s3, 85(s6)
                  sb           s7, -167(s0)
                  sb           s10, -34(a4)
                  sh           s11, -242(s6)
                  sw           s0, 247(s0)
                  sb           t2, 5(a4)
                  lb           a6, 10(a4)
                  lhu          sp, 21(a4)
                  lb           t2, -121(s6)
                  lhu          t4, -253(s0) #end load_store_instr_stream_1
                  sh           s9, 88(s6)
                  lbu          t5, 1(s6)
                  lb           s3, -127(s6) #end load_store_instr_stream_2
                  lw           s5, -15(a4) #end load_store_instr_stream_0
                  la           s1, region_0+1090 #start riscv_load_store_rand_instr_stream_4
                  lw           t5, 50(s1)
                  ori          s2, t6, 274
                  lh           s5, 24(s1)
                  lbu          t0, 25(s1)
                  lbu          t5, 7(s1)
                  lb           s0, -39(s1)
                  lui          s10, 18704
                  sb           t3, 31(s1)
                  lbu          s5, 10(s1)
                  sh           a1, 40(s1)
                  lbu          t6, -21(s1)
                  sb           t2, 5(s1)
                  srli         zero, s5, 23
                  lbu          t1, -51(s1)
                  sb           s9, -31(s1)
                  lhu          s9, -58(s1)
                  sb           s10, -2(s1)
                  sub          t5, a6, tp
                  slli         a4, s2, 10
                  lbu          t4, 61(s1)
                  srli         a2, a7, 28
                  add          t2, s11, a1
                  slti         s6, s11, -1920
                  srli         a1, ra, 10
                  sb           s5, 19(s1)
                  lw           s6, -46(s1)
                  sb           s10, -5(s1)
                  srli         zero, a3, 24
                  sb           s11, 7(s1) #end riscv_load_store_rand_instr_stream_4
                  la           s5, region_1+62 #start riscv_load_store_hazard_instr_stream_6
                  sw           ra, 1234(s5)
                  sb           ra, 327(s5)
                  nop
                  lw           s9, 138(s5)
                  sw           a2, 138(s5)
                  srli         a7, a0, 8
                  sltu         t1, s2, s5
                  lw           gp, 138(s5)
                  sb           s11, 138(s5)
                  sb           a1, 117(s5)
                  ori          t1, s8, -1184
                  slli         t2, a2, 15
                  lb           s2, 447(s5)
                  lhu          a1, 582(s5)
                  sb           t5, 1859(s5)
                  sh           s0, 384(s5)
                  sb           gp, 384(s5)
                  lh           a7, 1736(s5)
                  sb           zero, 1311(s5)
                  lb           t6, 1311(s5)
                  sb           t1, 1776(s5)
                  lbu          sp, 89(s5)
                  andi         s0, t3, 512
                  sb           t0, 23(s5)
                  lb           zero, 771(s5)
                  and          s8, gp, a4
                  lb           a1, 1215(s5) #end riscv_load_store_hazard_instr_stream_6
                  la           a0, region_0+1881 #start riscv_load_store_hazard_instr_stream_0
                  srli         t0, t0, 28
                  lhu          s2, -57(a0)
                  lh           t1, -57(a0)
                  lbu          a7, -57(a0)
                  lbu          t6, -57(a0)
                  lhu          s1, -57(a0)
                  lb           s1, -57(a0)
                  lhu          ra, -57(a0)
                  sh           a3, -57(a0)
                  lh           a1, -57(a0)
                  sh           s9, -57(a0)
                  lh           a7, -63(a0)
                  sll          s8, a0, s1
                  lb           tp, -63(a0)
                  lb           a4, -63(a0)
                  lb           t0, -63(a0) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+1501 #start riscv_load_store_hazard_instr_stream_2
                  lb           a4, 125(s8)
                  sh           gp, -135(s8)
                  lb           s4, -1053(s8)
                  sb           s6, -1053(s8)
                  sb           a4, -1053(s8)
                  lw           s2, -1053(s8)
                  lb           sp, -1178(s8)
                  xor          a0, t2, s3
                  lb           t4, -1178(s8)
                  sb           s9, -1178(s8)
                  sb           ra, -1178(s8)
                  xor          t5, t0, a2
                  lui          a5, 411206
                  lb           s10, -704(s8)
                  lbu          t0, -704(s8)
                  lb           ra, -704(s8)
                  slt          s2, a0, a1
                  add          tp, tp, zero
                  nop
                  lbu          s0, -704(s8)
                  lbu          s5, -1005(s8)
                  lbu          s7, -1005(s8)
                  sra          a6, s10, sp
                  lb           t6, 368(s8)
                  lh           ra, -1163(s8) #end riscv_load_store_hazard_instr_stream_2
                  la           t6, region_0+791 #start riscv_load_store_hazard_instr_stream_1
                  sh           a1, -7(t6)
                  sb           a5, 14(t6)
                  lbu          gp, 14(t6)
                  lbu          t4, 13(t6)
                  and          t1, ra, zero
                  lh           s1, 1(t6)
                  or           a4, tp, a6
                  lbu          a4, -12(t6)
                  lb           s2, 11(t6)
                  lhu          a7, 11(t6)
                  lb           gp, 11(t6)
                  sll          a1, s5, a4
                  sh           s10, 11(t6)
                  lb           t5, -12(t6)
                  lb           a5, -12(t6)
                  lb           a6, -12(t6)
                  or           s3, t5, t1
                  lh           a6, -5(t6)
                  lbu          a6, -5(t6) #end riscv_load_store_hazard_instr_stream_1
                  la           t6, region_0+860 #start load_store_instr_stream_2
                  la           a1, region_0+1966 #start load_store_instr_stream_1
                  la           t2, region_0+512 #start load_store_instr_stream_0
                  lb           sp, 435(t2)
                  lb           s5, 2(a1)
                  sb           a0, -111(t6)
                  lbu          s8, -241(t6)
                  sb           a6, 5(t6)
                  lb           a5, -271(t2)
                  sb           s11, 13(a1)
                  lb           a5, 157(t6)
                  sb           a6, 77(t2)
                  lb           s2, 229(t6)
                  lhu          s9, 0(a1)
                  lb           s1, 6(a1)
                  lb           s6, 156(t2)
                  lb           s4, -3(a1) #end load_store_instr_stream_1
                  sb           gp, -149(t6) #end load_store_instr_stream_2
                  lb           s2, -459(t2) #end load_store_instr_stream_0
                  la           sp, region_0+1731 #start riscv_load_store_rand_instr_stream_2
                  sra          s5, tp, t0
                  lh           s5, -101(sp)
                  lbu          a0, -187(sp)
                  sb           s9, -700(sp)
                  lbu          ra, 115(sp)
                  lbu          t6, -942(sp)
                  lbu          s5, -1266(sp)
                  srli         s3, zero, 8
                  lh           a4, -797(sp)
                  lb           s4, -1429(sp)
                  slt          t2, t3, a0
                  sub          s7, a6, s1
                  lhu          a1, -1575(sp)
                  and          s9, s5, t6
                  lbu          t1, 171(sp)
                  sh           t1, -731(sp)
                  lbu          a1, -76(sp)
                  lbu          s4, -942(sp)
                  sra          s4, s8, gp
                  sb           a2, 83(sp)
                  sh           t4, 125(sp)
                  sb           t3, -428(sp)
                  sh           s11, -1507(sp)
                  srai         s7, s9, 3
                  lbu          s1, -535(sp)
                  lbu          tp, -1373(sp)
                  lbu          s0, -34(sp)
                  sltiu        tp, s6, 123
                  sb           t1, 190(sp)
                  sltu         s1, s0, zero
                  lb           s10, -538(sp)
                  lbu          ra, -1461(sp)
                  sub          s10, s2, t6
                  lb           a0, -865(sp)
                  lb           a5, -1004(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_1+980 #start riscv_load_store_rand_instr_stream_0
                  sb           a3, -218(a4)
                  lh           s8, 50(a4)
                  sra          sp, t1, s9
                  add          zero, a1, a2
                  sh           t3, 204(a4)
                  lbu          s0, 119(a4)
                  sub          t0, t5, a3
                  lb           t6, 203(a4)
                  nop
                  lbu          s10, -177(a4)
                  lw           s8, 80(a4)
                  add          s7, s5, zero
                  lui          t1, 780205
                  lb           s7, -134(a4)
                  auipc        s9, 266285
                  sltu         ra, a3, s11
                  lb           s4, 202(a4)
                  xori         s4, s10, 1640
                  slli         s1, gp, 2
                  lb           t4, -240(a4)
                  add          t4, s2, s3
                  sw           t4, -172(a4)
                  sb           sp, 205(a4)
                  lbu          s1, -2(a4) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_1+691 #start load_store_instr_stream_0
                  la           s5, region_1+1439 #start load_store_instr_stream_1
                  la           s0, region_1+996 #start load_store_instr_stream_4
                  la           s1, region_1+1398 #start load_store_instr_stream_3
                  lh           a6, -5(s5)
                  lbu          s9, -34(t0)
                  lh           tp, 628(s0)
                  sh           t2, 9(s5)
                  lbu          ra, 661(s0)
                  la           sp, region_1+611 #start load_store_instr_stream_2
                  sb           t1, 5(s5)
                  lb           tp, -40(t0)
                  lb           a2, 0(s5)
                  lb           t5, -350(sp)
                  lb           a0, 12(s5)
                  lh           t1, -904(s1)
                  lb           tp, 741(s0)
                  sb           s7, 486(sp)
                  lb           s9, -12(t0)
                  lbu          s6, 13(s5)
                  lhu          s9, 400(s0)
                  lb           t6, 902(sp)
                  sb           s3, 64(t0)
                  lb           s4, -1137(s1)
                  lbu          s8, 1039(sp)
                  lw           a7, -524(s0)
                  sb           a4, -409(s1)
                  lbu          t1, 8(s5)
                  sb           s10, 809(s0)
                  lb           gp, -429(sp)
                  lhu          s8, 389(sp)
                  sw           s3, -1386(s1)
                  lbu          s10, -48(t0)
                  sh           s3, 1349(sp)
                  lb           gp, -37(t0)
                  lb           a4, 149(s1)
                  lb           t1, -148(s0)
                  lh           s2, -47(t0)
                  lh           tp, -9(t0)
                  lb           s7, -1(s5) #end load_store_instr_stream_1
                  lb           s3, -729(s1) #end load_store_instr_stream_3
                  lb           a5, -59(t0)
                  lbu          s3, -31(s0) #end load_store_instr_stream_4
                  sb           a2, 1153(sp) #end load_store_instr_stream_2
                  lbu          s4, -12(t0) #end load_store_instr_stream_0
                  nop
                  bne          a3, t0, 14f
                  sll          t0, a0, t0
                  sltu         gp, s10, t1
                  bne          s5, zero, 7f
                  andi         a5, t0, 1242
                  nop
7:                slti         tp, sp, -1881
                  addi         s2, ra, 116
                  auipc        a1, 390771
                  slt          a1, t1, a5
                  andi         s3, ra, 411
                  lui          tp, 21625
                  sll          a2, t3, s5
14:               sra          t4, s7, t4
                  nop
                  xor          s0, s10, a5
                  nop
                  blt          s11, s6, 38f
                  beq          s9, a3, 30f
                  beq          a7, s0, 35f
                  sra          zero, a1, a5
                  sll          s5, s6, t5
                  beq          sp, ra, 41f
                  bltu         gp, gp, 32f
                  addi         t2, a2, 98
                  sll          s3, gp, t3
                  add          s10, s4, gp
                  bltu         a1, t1, 40f
                  addi         s7, gp, -450
30:               sltiu        s10, t5, -750
                  sltu         s1, a4, s11
32:               xori         t4, a5, 1794
                  or           t0, a4, sp
                  bgeu         a5, t0, 46f
35:               andi         s3, s5, -614
                  bge          s9, tp, 44f
                  xori         tp, a5, 999
38:               auipc        s2, 400276
                  beq          s11, t0, 42f
40:               add          s7, s7, s1
41:               slli         ra, a2, 7
42:               auipc        zero, 1017133
                  nop
44:               sub          t6, s11, sp
                  bge          a6, tp, 53f
46:               bne          s6, tp, 47f
47:               slti         gp, t6, 1739
                  addi         zero, zero, -1032
                  la           a1, region_0+369 #start load_store_instr_stream_0
                  la           s10, region_0+1478 #start load_store_instr_stream_1
                  sb           s10, -4(a1)
                  lbu          s0, -37(a1)
                  la           t1, region_0+1544 #start load_store_instr_stream_2
                  lbu          a4, -18(a1)
                  sb           a2, 24(a1)
                  lb           t4, -16(t1)
                  sw           s6, 20(t1)
                  lbu          s7, -29(s10)
                  sb           s6, 29(s10)
                  lhu          s8, -43(a1)
                  sb           t5, 22(t1)
                  sb           t4, -7(s10)
                  lbu          s5, 23(a1)
                  lbu          ra, -56(s10)
                  sh           t2, 2(t1)
                  lbu          s1, -63(a1)
                  sb           s11, -61(t1)
                  sh           a5, -50(s10)
                  lbu          a4, -55(s10) #end load_store_instr_stream_1
                  lh           tp, -56(t1)
                  lbu          tp, -21(t1)
                  lb           s6, 37(t1)
                  sb           s8, 46(t1) #end load_store_instr_stream_2
                  lw           a2, 55(a1) #end load_store_instr_stream_0
                  blt          t3, gp, 57f
                  bgeu         a5, t2, 57f
                  beq          s4, zero, 70f
                  or           ra, s8, a7
53:               bltu         t3, a3, 71f
                  or           s7, ra, s6
                  beq          t3, s8, 57f
                  lui          t2, 668933
57:               andi         a2, a7, 1683
                  andi         t0, gp, -551
                  sll          gp, t4, a5
                  addi         t5, s0, -1847
                  bgeu         t6, s0, 69f
                  sll          s1, a4, t5
                  or           s7, s3, s4
                  bge          s6, s8, 68f
                  bne          s7, t4, 78f
                  or           s9, s10, a5
                  sltiu        zero, a6, -167
68:               slti         t4, t6, 1760
69:               lui          s10, 1015559
70:               auipc        a1, 845447
71:               srai         s1, s1, 21
                  sltu         zero, t0, tp
                  slt          s0, s5, s2
                  srl          ra, a7, s5
                  and          t1, sp, tp
                  beq          s10, a3, 83f
                  blt          a5, s6, 80f
78:               xori         a0, s8, 772
                  bgeu         t4, s1, 99f
80:               sltu         s9, s3, a2
                  sra          s5, s3, t6
                  or           a0, s0, s3
83:               beq          s3, zero, 86f
                  slt          ra, s11, t5
                  sltiu        a0, s11, 1163
86:               blt          s9, a3, 100f
                  ori          a1, tp, 1800
                  beq          s1, t5, 91f
                  sltu         a4, a3, a4
                  bne          ra, t3, 93f
91:               nop
                  addi         s9, sp, -1724
93:               slti         s10, tp, -465
                  slti         s4, a0, -1622
                  slti         s1, s2, -655
                  xor          t1, s10, t0
                  sra          s3, gp, a6
                  slti         s7, a3, 1321
99:               blt          ra, a2, 117f
100:              bgeu         ra, s3, 113f
                  srl          s0, t1, s4
                  slti         t0, t6, -704
                  nop
                  add          a5, s4, s2
                  bltu         t6, s6, 108f
                  slli         s3, sp, 22
                  addi         s4, a6, 291
108:              bge          t2, t1, 121f
                  srl          a1, t3, t4
                  sltu         s2, s11, s4
                  srli         a1, t3, 18
                  slli         a5, s9, 15
113:              sub          ra, a5, a3
                  nop
                  xori         a4, t6, -976
                  slt          s6, t5, s6
117:              srli         sp, a1, 13
                  sltu         gp, s11, a0
                  srl          s3, gp, t3
                  xori         a1, s5, 572
121:              slli         s5, t5, 28
                  xori         a0, ra, 1009
                  sltiu        s8, tp, -973
                  addi         a0, s0, -104
                  sll          s10, t2, a4
                  srai         a2, s3, 28
                  ori          s10, t5, 1850
                  sra          a0, s8, s10
                  nop
                  slti         t6, s7, 1994
                  xor          s9, s8, s1
                  sltiu        t0, a2, 1551
                  nop
                  bne          s9, a5, 142f
                  sra          s10, t3, a5
                  ori          tp, s10, -1077
                  bne          sp, a1, 151f
                  addi         a1, a6, -419
                  sltu         s1, s8, s10
                  sltu         a1, t2, a5
                  addi         t5, a4, 17
142:              bge          s3, s5, 154f
                  bgeu         s9, sp, 151f
                  slt          s5, s1, t1
                  sltiu        s0, zero, -56
                  sub          t6, s3, t0
                  bltu         a0, a6, 154f
                  andi         s4, a6, 1166
                  nop
                  srl          zero, a1, s11
151:              bge          t4, a3, 166f
                  sltu         a4, s4, t2
                  add          a4, a1, zero
154:              xori         s2, s9, 15
                  sll          a2, s9, s2
                  srai         a6, s11, 12
                  slt          s2, zero, s3
                  xori         a7, s9, 819
                  sra          s4, t3, a6
                  blt          s11, s10, 173f
                  xori         s4, s5, -133
                  blt          t1, tp, 180f
                  xori         gp, t6, -170
                  xor          s6, s9, a0
                  sltu         s9, sp, t2
166:              and          a0, t0, t3
                  auipc        s9, 738334
                  beq          tp, a1, 172f
                  srli         a5, t1, 31
                  srli         tp, s0, 1
                  sltiu        s1, t0, -1023
172:              lui          sp, 676701
173:              bltu         s3, gp, 191f
                  addi         t4, a1, 1476
                  srl          t4, zero, a1
                  srai         s6, t5, 23
                  bge          a2, a3, 180f
                  xor          t0, s9, s2
                  sll          a7, s6, t4
180:              addi         t4, t6, -1591
                  sltu         zero, t2, s8
                  nop
                  bne          t0, t2, 186f
                  sltiu        s1, gp, -544
                  lui          t0, 673556
186:              slti         s0, s9, 688
                  and          s6, t0, s9
                  sll          t2, a6, a5
                  bltu         t1, s7, 192f
                  slti         t4, a6, -1833
191:              bltu         a2, a5, 210f
192:              or           s4, s8, a1
                  bne          s0, a6, 200f
                  auipc        a7, 879779
                  bge          s1, a4, 198f
                  sltu         a7, s9, sp
                  addi         t0, t2, -1723
198:              or           tp, gp, a0
                  sltu         s6, s9, s7
200:              sra          a1, s8, tp
                  sll          t2, t5, s1
                  andi         s1, tp, 46
                  add          tp, gp, t2
                  ori          sp, s5, 1066
                  blt          s5, s4, 217f
                  and          s7, tp, s11
                  srai         t5, s8, 31
                  bgeu         s2, t4, 226f
                  sltiu        s3, a0, 1381
210:              addi         t0, a5, 1416
                  bltu         s3, s10, 219f
                  xor          a1, s8, t1
                  ori          s8, t0, -177
                  slti         tp, a0, -2019
                  xori         a2, s6, 1789
                  bgeu         a4, s4, 224f
217:              xori         tp, s6, 396
                  srai         s3, a5, 4
219:              auipc        s7, 236617
                  slti         zero, t1, 767
                  blt          a2, t3, 224f
                  and          a6, t5, s3
                  slti         a0, a7, -1636
224:              and          s0, a1, t6
                  xor          t0, a1, a0
226:              bge          t3, zero, 228f
                  lui          a4, 44735
228:              srli         s0, a1, 18
                  bgeu         s6, t1, 249f
                  add          s3, s10, s5
                  add          s5, s10, a6
                  nop
                  sra          t1, s3, s10
                  add          t2, zero, t0
                  xori         s3, a2, -1754
                  sltiu        t2, s1, -280
                  la           s9, sub_1
                  lui          s5, 421633
                  addi         s9, s9, -930
                  sltu         gp, tp, t6
                  lui          gp, 360411
                  sll          t2, s3, a3
                  sra          a2, s2, t4
                  andi         sp, ra, -604
main_j1:          jalr         t1, s9, 930 #jump main -> sub_1
                  ori          s1, s6, 800
                  slli         s6, s7, 16
                  sltiu        a0, s0, -2000
                  bne          t5, s2, 241f
241:              srai         s10, t2, 26
                  xori         ra, a7, -777
                  add          t4, s7, a2
                  ori          sp, a3, -742
                  sra          a1, t2, s1
                  srai         gp, t6, 13
                  srl          ra, a0, s7
                  nop
249:              srl          s0, s5, a2
                  bne          tp, s11, 270f
                  srai         s10, s1, 21
                  auipc        t2, 165293
                  auipc        s4, 23536
                  blt          s4, s11, 262f
                  auipc        t0, 1010799
                  srl          a2, s11, gp
                  auipc        t0, 621779
                  slli         s9, t5, 15
                  srl          a5, s3, a1
                  sltu         s8, a7, s7
                  blt          a6, zero, 274f
262:              bge          s0, a4, 273f
                  or           s8, tp, a7
                  auipc        a0, 41074
                  addi         s0, t6, -816
                  slli         a5, a6, 11
                  slti         a4, t4, 1820
                  slti         s0, tp, 429
                  xori         s8, s0, -1446
270:              bge          a1, s8, 273f
                  addi         t5, t1, -249
                  sll          s6, s8, t2
273:              sltiu        s1, s7, 1811
274:              nop
                  bge          t0, s4, 283f
                  addi         s4, a3, -1912
                  xor          s6, t5, t6
                  slt          s3, a1, a0
                  ori          s10, a2, -1547
                  slti         tp, t3, 1416
                  and          s9, t5, s10
                  nop
283:              blt          t3, s9, 296f
                  sll          t4, a7, s5
                  slt          s10, t4, s0
                  sll          s5, t3, s5
                  andi         gp, s1, -1470
                  sub          s9, t3, s5
                  and          a5, s6, s1
                  and          s3, s1, s10
                  slli         sp, sp, 9
                  bne          s4, t1, 296f
                  xori         s5, s4, 319
                  add          a1, s8, a7
                  andi         a4, s0, -1594
296:              blt          s5, s11, 304f
                  bge          t2, s11, 315f
                  bltu         t3, s5, 301f
                  sltu         t1, tp, a2
                  addi         t4, a5, -669
301:              sll          sp, a7, t3
                  srl          s8, s9, zero
                  bge          s9, s3, 315f
304:              ori          s10, a1, -1608
                  srli         s2, a2, 16
                  auipc        s5, 997412
                  bne          ra, sp, 325f
                  blt          a5, a2, 321f
                  andi         t4, s5, -65
                  xori         a5, a2, 1695
                  addi         t5, tp, -1221
                  or           a1, s7, s8
                  bltu         t3, s9, 321f
                  sub          a2, s3, zero
315:              ori          s8, a2, 1025
                  and          a1, t4, s4
                  sll          s6, a0, ra
                  or           s7, s2, ra
                  xori         ra, s5, -1835
                  sra          sp, s2, ra
321:              ori          tp, a4, -1620
                  addi         t4, gp, -1315
                  beq          a1, sp, 330f
                  add          a0, tp, zero
                  la           t1, region_1+914 #start load_store_instr_stream_1
                  lbu          zero, 15(t1)
                  la           s10, region_1+271 #start load_store_instr_stream_2
                  sb           gp, -13(t1)
                  la           a1, region_1+875 #start load_store_instr_stream_3
                  sb           s8, -3(s10)
                  sb           a6, 254(a1)
                  lhu          a7, -16(t1)
                  lb           s2, 8(t1)
                  sb           a7, 106(a1)
                  lb           a5, -4(s10)
                  la           a0, region_1+340 #start load_store_instr_stream_0
                  lb           t0, -4(t1)
                  lbu          a2, 16(s10)
                  lhu          s9, 15(s10)
                  sb           s2, -410(a1)
                  lh           s4, -16(t1)
                  sw           t2, 6(t1)
                  lb           a2, 12(s10)
                  sb           a1, 1220(a0)
                  lb           a7, 11(t1)
                  sb           tp, 511(a1)
                  sh           t0, 1550(a0)
                  lh           zero, -163(a1)
                  lb           s3, 226(a1)
                  lh           t6, 8(t1) #end load_store_instr_stream_1
                  sh           a5, 945(a1)
                  lb           s9, 0(s10)
                  lb           tp, 886(a1)
                  lhu          gp, -15(s10)
                  lb           s7, 59(a0)
                  sw           gp, -15(s10)
                  lw           s9, -7(s10)
                  lb           s4, 42(a0)
                  sb           s5, 518(a1) #end load_store_instr_stream_3
                  lbu          gp, -11(s10) #end load_store_instr_stream_2
                  sb           s0, -84(a0) #end load_store_instr_stream_0
325:              blt          s4, t5, 328f
                  add          t0, tp, a4
                  blt          s6, zero, 340f
328:              sub          zero, s7, t0
                  nop
330:              xor          t1, s4, gp
                  blt          a6, t3, 338f
                  add          s8, t6, s1
                  ori          gp, ra, 656
                  sra          s6, t3, s11
                  beq          s10, a6, 355f
                  sra          a7, ra, gp
                  slt          tp, t2, sp
338:              andi         s7, zero, 1684
                  or           a5, gp, zero
340:              sra          s7, ra, a2
                  sub          a0, s7, a3
                  and          t6, sp, a0
                  bgeu         t2, t0, 346f
                  blt          s0, s10, 347f
                  and          t5, a2, a4
346:              andi         s8, tp, -613
347:              lui          s4, 952004
                  srl          t4, s2, ra
                  addi         a7, s11, 1728
                  srl          s9, s10, zero
                  srl          tp, t4, s11
                  slt          ra, s1, a1
                  add          sp, a5, t1
                  srai         s2, a0, 31
355:              bne          t1, a0, 370f
                  lui          t5, 822635
                  bltu         sp, a4, 365f
                  xor          s4, s8, s4
                  or           s6, a4, t1
                  bltu         zero, ra, 374f
                  slt          s8, s0, s9
                  andi         s2, t3, -1716
                  addi         a2, s11, -542
                  andi         s0, a6, -2041
365:              bgeu         s5, s0, 373f
                  bgeu         zero, s0, 378f
                  auipc        tp, 297813
                  sra          gp, t2, a5
                  addi         zero, t1, 1882
370:              slti         s9, a7, -1411
                  sra          a5, s6, a7
                  ori          sp, s4, -658
373:              sra          zero, gp, s5
374:              slt          s6, a5, s1
                  bne          s1, a4, 378f
                  bne          s7, a2, 377f
377:              blt          t6, t1, 388f
378:              or           t1, t3, a0
                  sub          t2, zero, t6
                  add          s7, s4, t3
                  sll          tp, a7, zero
                  srl          a2, a5, s4
                  sll          s1, a2, a1
                  xor          a1, t3, s3
                  sra          s1, ra, s8
                  xor          s7, t3, tp
                  xor          s3, a7, a1
388:              srli         t4, s2, 30
                  nop
                  bge          t2, s1, 409f
                  bltu         s4, zero, 411f
                  add          t2, t2, s4
                  srai         zero, a5, 18
                  srl          s8, a1, t5
                  sltu         s8, s5, a0
                  slt          t6, sp, a5
                  auipc        s0, 1034482
                  sra          a1, t3, t6
                  or           t2, t2, a6
                  or           s9, tp, s10
                  xor          s0, s8, t5
                  or           sp, tp, a5
                  and          gp, a5, s6
                  srai         gp, s8, 12
                  bge          s0, t1, 407f
                  blt          t5, t6, 424f
407:              sub          t5, s9, ra
                  srai         gp, a0, 18
409:              sltiu        a5, a6, 144
                  nop
411:              slli         tp, zero, 3
                  and          a6, gp, t5
                  ori          ra, s7, 745
                  bltu         s4, a6, 432f
                  nop
                  auipc        s10, 747256
                  xori         a7, a2, -273
                  lui          a1, 439433
                  bge          tp, sp, 431f
                  add          a7, zero, a1
                  xori         a1, s11, 1909
                  add          zero, sp, t4
                  srai         s1, a3, 18
424:              bne          a6, a0, 437f
                  srli         gp, s10, 18
                  bne          sp, t4, 429f
                  srli         t1, t6, 20
                  xor          tp, s2, t6
429:              srai         s8, t0, 27
                  sra          s5, a7, t6
431:              add          a1, t5, s3
432:              sll          a5, s6, t3
                  slt          s10, s2, a6
                  bge          t0, t3, 449f
                  sltu         s7, a0, a0
                  slt          s6, a6, s8
437:              lui          sp, 944913
                  beq          a6, a1, 456f
                  sll          a6, t3, a0
                  srli         sp, s10, 7
                  sub          s4, a0, a7
                  srai         tp, gp, 12
                  slt          t2, s0, a7
                  slt          a2, s7, s7
                  sra          s6, s0, sp
                  nop
                  bgeu         a7, t4, 467f
                  addi         zero, t3, -406
449:              slli         t6, t5, 12
                  ori          s3, a0, 345
                  andi         ra, s4, -1153
                  slli         t6, ra, 5
                  sltiu        s1, t3, -822
                  xori         a2, a2, 872
                  beq          s9, a6, 458f
456:              sra          gp, t5, a1
                  srai         a0, zero, 24
458:              sra          s2, a6, a3
                  and          a7, a6, a3
                  slti         s0, t1, -1084
                  bgeu         s7, a0, 469f
                  sra          s4, s10, s6
                  bltu         s0, t6, 466f
                  or           t1, t1, a0
                  bltu         t1, a3, 473f
466:              auipc        t2, 672199
467:              srai         a6, zero, 4
                  or           gp, a3, s2
469:              nop
                  srai         a0, t3, 11
                  and          s4, s0, s1
                  andi         a6, s5, 911
473:              sub          a7, a3, s2
                  srai         s1, t1, 1
                  bgeu         s5, t2, 493f
                  xori         zero, ra, 456
                  xor          t1, s1, s8
                  andi         a1, s0, -75
                  add          a5, a1, s7
                  ori          t2, sp, 428
                  sltiu        tp, t2, -2041
                  and          t0, s4, s1
                  sra          t0, ra, a6
                  ori          s1, t4, -1876
                  or           s0, a5, t4
                  srl          sp, a7, t2
                  srli         t6, a6, 1
                  slli         s3, s8, 4
                  slti         a4, s10, -66
                  beq          a3, s1, 509f
                  blt          s3, s6, 503f
                  srl          s4, zero, a6
493:              srli         t0, a1, 19
                  slt          a5, a5, s8
                  sra          t0, t3, a6
                  sra          s1, s5, sp
                  srli         t4, t1, 28
                  srli         a6, t5, 28
                  addi         s8, t2, -1837
                  or           s2, s4, s6
                  sra          t4, t0, t6
                  srl          s8, a1, s0
503:              slli         a2, a0, 8
                  sll          a7, s3, s9
                  or           s3, s11, sp
                  slt          a7, s7, s6
                  slti         t0, a5, 259
                  nop
509:              or           ra, gp, zero
                  slti         tp, s9, 1854
                  auipc        a6, 1009156
                  srl          a4, s5, s6
                  nop
                  srli         t1, t5, 22
                  srli         s0, t0, 4
                  and          s1, s1, t6
                  bgeu         a5, t4, 530f
                  srai         t1, a5, 19
                  slli         tp, zero, 14
                  srl          s5, a3, a4
                  addi         a5, t3, -520
                  xori         s0, ra, -648
                  srli         s6, s8, 4
                  bge          sp, a0, 526f
                  blt          s11, s7, 533f
526:              slt          t5, gp, t4
                  sub          s2, a0, sp
                  sltu         t1, t4, zero
                  sltu         s10, s7, t3
530:              bltu         a0, s10, 543f
                  or           a7, t5, zero
                  srai         s6, a1, 17
533:              srli         s4, s9, 7
                  addi         s9, a1, -393
                  srl          a0, s8, a5
                  ori          sp, t0, -1748
                  xor          a0, s3, t5
                  sub          s8, a0, s8
                  bne          s10, s11, 546f
                  blt          a1, s1, 548f
                  xor          zero, a4, sp
                  addi         s8, s1, -1354
543:              nop
                  slti         s0, a4, -130
                  lui          t4, 866231
546:              nop
                  xori         a7, s3, 1392
548:              xor          s9, a5, s3
                  nop
                  auipc        t1, 337673
                  sra          s5, a2, tp
                  sltu         ra, a3, gp
                  srai         t2, s3, 28
                  srl          s8, a0, sp
                  addi         t2, s11, 460
                  slt          s2, t4, t3
                  sll          s9, s6, a5
                  andi         s0, s11, -933
                  sra          t5, s0, t1
                  andi         s5, t5, 742
                  sra          gp, gp, ra
                  sll          s8, sp, a6
                  add          a0, s5, a2
                  addi         a1, s10, -1342
                  sub          s1, a2, a2
                  beq          s0, zero, 577f
                  sra          s8, ra, t5
                  bge          t0, s0, 575f
                  srl          t6, s9, t3
                  slt          ra, s6, t5
                  blt          s3, s0, 585f
                  slt          a5, t4, a7
                  sltu         s6, t1, t3
                  blt          s7, t1, 575f
575:              bltu         s2, s1, 578f
                  sll          s6, a6, ra
577:              nop
578:              nop
                  xori         a5, t1, -1796
                  srl          a4, t5, a5
                  auipc        s3, 918158
                  slli         sp, s3, 17
                  add          s4, s1, s2
                  xor          s8, s10, ra
585:              sra          t5, s2, t1
                  srli         s9, sp, 24
                  sra          ra, tp, tp
                  slt          t2, a0, s11
                  srli         tp, t4, 30
                  lui          a7, 80006
                  auipc        s2, 814308
                  or           s1, t6, s11
                  and          s6, s1, s10
                  ori          t2, s11, -1542
                  bgeu         a1, s3, 598f
                  andi         t6, s11, 2000
                  slli         a5, a0, 24
598:              sltiu        s7, s7, -398
                  slti         ra, t6, -415
                  xor          gp, a6, ra
                  slti         ra, a3, -631
                  slt          s0, s0, ra
                  xor          tp, t0, gp
                  sltu         s10, t2, tp
                  auipc        s0, 1011738
                  ori          a5, s1, -1799
                  beq          a0, ra, 611f
                  beq          s0, s0, 616f
                  srai         s2, a1, 24
                  lui          t1, 515109
611:              auipc        s6, 460296
                  add          s6, sp, s6
                  add          s8, s0, s10
                  add          t6, a0, a1
                  and          t4, s10, sp
616:              sltu         a2, a0, a1
                  srai         t2, s0, 0
                  blt          s11, t5, 638f
                  nop
                  ori          t4, t3, 161
                  bltu         zero, s6, 624f
                  blt          t0, ra, 625f
                  nop
624:              or           s1, s2, zero
625:              bltu         t0, t4, 637f
                  sltiu        s0, s6, 713
                  auipc        a1, 853997
                  ori          ra, t0, -1500
                  sub          s4, t3, a2
                  xori         s9, s5, 1121
                  srli         s10, a0, 2
                  slt          s7, s11, tp
                  and          a6, a3, s6
                  or           t1, s11, a6
                  sra          s0, gp, zero
                  or           s0, t6, t1
637:              blt          s4, s7, 652f
638:              bne          s3, s6, 650f
                  andi         s0, t6, -1098
                  or           s5, s4, t5
                  nop
                  bltu         s6, s7, 645f
                  sra          sp, t0, t5
                  slti         ra, a4, -41
645:              slli         t0, s0, 27
                  add          tp, gp, ra
                  addi         s3, a3, -837
                  beq          a5, s10, 656f
                  srai         s2, t0, 28
650:              addi         s4, s11, -1154
                  sra          gp, s6, t0
652:              sltu         s3, a2, t0
                  slti         a7, s7, 365
                  and          a4, s4, s5
                  slti         a1, s1, -893
656:              add          a7, sp, a2
                  blt          s8, t3, 676f
                  slt          t6, s10, a5
                  ori          a1, s10, 1417
                  sltiu        ra, s1, -450
                  srl          a1, a3, s0
                  bne          s5, a1, 675f
                  lui          sp, 229089
                  bgeu         a7, s4, 672f
                  bne          s9, s6, 683f
                  and          s8, a4, s4
                  srl          t0, a1, t4
                  blt          sp, t4, 686f
                  auipc        s7, 564288
                  and          tp, s9, t5
                  and          s10, gp, s5
672:              xori         t5, s3, -74
                  sll          t0, t4, a4
                  slt          t0, a5, tp
675:              sltiu        zero, ra, 1642
676:              srli         t1, s6, 8
                  and          t1, s8, s6
                  blt          s1, a6, 691f
                  auipc        t6, 680176
                  sra          a5, s11, a4
                  sltiu        a6, a1, -1368
                  sub          s10, s1, s4
683:              ori          a6, t3, 601
                  sra          a6, a6, t0
                  nop
686:              andi         sp, s9, -1647
                  sll          a5, a4, s1
                  add          a6, t6, s0
                  bgeu         s9, a0, 700f
                  blt          s11, t0, 693f
691:              slt          s3, s0, s0
                  sra          a0, t6, s0
693:              xori         t6, s5, 1951
                  slt          a2, a4, t1
                  slt          s0, t4, a4
                  blt          sp, s9, 703f
                  nop
                  sltu         t4, s7, t4
                  xor          ra, tp, t1
700:              or           s1, t3, s10
                  auipc        s0, 927313
                  sltu         sp, t5, s3
703:              srai         t0, t6, 14
                  sltu         s2, s2, t5
                  slti         t6, s11, -1495
                  sltiu        s0, a0, -114
                  add          s6, s7, ra
                  add          t4, s7, t3
                  bne          gp, zero, 713f
                  auipc        t1, 142707
                  lui          a5, 869276
                  sra          t0, t1, zero
713:              xor          a2, s8, s5
                  slli         t5, a5, 5
                  addi         t4, a5, 1360
                  bne          s11, t1, 724f
                  andi         s3, s9, -425
                  lui          t5, 458992
                  srl          s6, s5, t1
                  sltiu        s5, t2, 918
                  xor          t2, s7, t5
                  srai         t6, s10, 11
                  srai         a0, s3, 10
724:              auipc        s7, 726262
                  srl          t2, t4, t1
                  sltiu        tp, a0, 1022
                  srai         s5, t4, 29
                  srl          t1, s5, s7
                  auipc        s1, 577932
                  bne          t6, s1, 733f
                  xor          t2, s0, t5
                  lui          t5, 48767
733:              bge          a0, t4, 753f
                  ori          s6, t3, 1658
                  xor          t0, s6, a2
                  and          a1, a0, a5
                  srai         s2, sp, 25
                  bgeu         zero, t5, 741f
                  bne          gp, t5, 757f
                  bge          s2, tp, 753f
741:              srl          s5, s3, a5
                  blt          a0, t4, 756f
                  srai         s4, tp, 13
                  bge          s9, s11, 751f
                  bltu         a7, t3, 753f
                  slti         s9, s0, -1917
                  or           s0, t0, s10
                  sra          a5, gp, t5
                  xor          s7, gp, sp
                  slli         s9, t4, 16
751:              add          zero, a0, a0
                  nop
753:              xori         a7, t6, 1174
                  slt          a4, s0, s8
                  andi         a2, s11, -540
756:              auipc        t5, 339686
757:              lui          s1, 660787
                  add          a6, s3, a2
                  andi         s9, s8, 424
                  sltiu        s5, s11, 1823
                  andi         a2, a0, -790
                  slli         gp, s4, 5
                  xori         tp, s1, 1020
                  bltu         a1, s8, 784f
                  beq          t4, t0, 766f
766:              beq          s3, ra, 774f
                  lui          a1, 762705
                  srai         s10, t5, 24
                  ori          s9, a7, 1945
                  srli         s1, a0, 6
                  add          s4, a1, s9
                  bne          a3, t6, 775f
                  addi         s2, t4, 676
774:              srai         s8, s10, 3
775:              bltu         s5, s11, 777f
                  bne          tp, a2, 784f
777:              beq          s1, a2, 784f
                  srai         s10, t0, 12
                  sll          t4, a6, s5
                  bltu         t5, a0, 781f
781:              and          t4, sp, t2
                  bgeu         gp, t5, 790f
                  sub          t6, a5, a0
784:              srli         ra, s7, 25
                  ori          t4, zero, 35
                  slti         s0, a4, 1201
                  sra          t5, gp, s8
                  auipc        a0, 829500
                  auipc        s6, 383423
790:              lui          a0, 1044559
                  xori         zero, s3, -1642
                  slt          s2, a7, t6
                  bge          a1, sp, 796f
                  add          t5, t5, t4
                  bne          t1, s4, 803f
796:              nop
                  slt          s3, a5, s0
                  sltiu        s7, tp, 990
                  la           t6, region_1+165 #start load_store_instr_stream_0
                  la           a2, region_1+728 #start load_store_instr_stream_4
                  la           tp, region_1+416 #start load_store_instr_stream_3
                  la           s5, region_1+1389 #start load_store_instr_stream_1
                  la           t0, region_1+662 #start load_store_instr_stream_2
                  sb           tp, 1699(t6)
                  lh           a0, 148(a2)
                  lhu          t1, -1(s5)
                  lbu          a7, 7(s5)
                  lb           gp, -17(t0)
                  lh           t5, 12(tp)
                  lb           a6, 649(t6)
                  lhu          s3, 30(t0)
                  sb           t0, 56(t0)
                  lb           a7, -9(tp)
                  sb           s5, 562(t6)
                  lbu          s2, 16(tp)
                  lbu          a0, 12(s5)
                  sb           a7, 908(t6)
                  lb           t2, 21(t0)
                  sb           a7, -53(a2)
                  lb           t4, -15(s5)
                  lbu          s10, -6(tp)
                  lh           a0, -122(a2)
                  sb           s1, -13(tp)
                  lh           a4, 2(a2)
                  lbu          a4, -141(a2)
                  lbu          t1, 36(t0) #end load_store_instr_stream_2
                  sb           t5, 9(tp)
                  lb           t5, 541(t6)
                  lb           a5, 7(tp) #end load_store_instr_stream_3
                  sb           s1, 1426(t6)
                  sh           s6, -1(s5)
                  sw           a2, -1(s5)
                  lh           s8, -14(a2) #end load_store_instr_stream_4
                  lb           s4, 66(t6)
                  lbu          s1, -7(s5)
                  lb           a0, 4(s5)
                  lh           t1, 799(t6)
                  lh           s9, 1(s5) #end load_store_instr_stream_1
                  lbu          a0, 258(t6) #end load_store_instr_stream_0
                  bltu         t2, s5, 812f
                  xori         a1, t5, -1910
                  and          s0, a1, t3
                  bge          s9, s7, 813f
                  la           t6, region_1+223 #start load_store_instr_stream_3
                  la           gp, region_1+1037 #start load_store_instr_stream_0
                  la           s0, region_1+1537 #start load_store_instr_stream_2
                  sb           t6, -220(gp)
                  la           a0, region_1+1428 #start load_store_instr_stream_1
                  la           t5, region_1+1894 #start load_store_instr_stream_4
                  lbu          ra, -10(a0)
                  sw           t1, 915(gp)
                  lbu          s1, 16(a0)
                  lb           s2, 242(gp)
                  sb           s3, 14(t5)
                  lbu          s8, -140(t6)
                  sb           s6, 8(a0)
                  lb           a7, -46(t6)
                  lbu          t2, 2(gp)
                  lbu          t0, 9(a0)
                  lb           s8, -327(gp)
                  lh           s4, 117(s0)
                  lb           s2, -118(s0)
                  lw           a1, 175(s0)
                  sh           a3, 241(s0)
                  sw           zero, 4(a0)
                  lh           t1, 209(t6)
                  sh           a0, -171(s0)
                  lb           t2, 1(a0)
                  lbu          a2, 11(t5)
                  lb           tp, 68(s0)
                  sb           a3, 126(gp)
                  lb           ra, 59(s0)
                  lw           t2, 191(s0) #end load_store_instr_stream_2
                  sb           s5, 3(t5)
                  lhu          s8, 199(t6)
                  sw           s8, -14(t5)
                  sb           a2, 9(a0)
                  lbu          s7, 221(t6)
                  lbu          a2, -389(gp)
                  lbu          a6, 14(t6)
                  lh           s2, -16(a0)
                  sb           a2, -508(gp)
                  lb           ra, 15(a0)
                  lb           t1, -48(gp)
                  sh           a7, -4(t5)
                  sh           a5, 6(a0) #end load_store_instr_stream_1
                  lb           ra, 196(t6) #end load_store_instr_stream_3
                  sb           t5, 9(t5) #end load_store_instr_stream_4
                  lb           sp, 582(gp) #end load_store_instr_stream_0
803:              sltiu        s6, zero, -92
                  blt          s6, a0, 824f
                  slt          s7, t4, s5
                  slti         t0, t4, 1910
                  bne          t1, a4, 819f
                  addi         a2, sp, -1416
                  slli         s8, a6, 25
                  sll          zero, s5, t0
                  bge          ra, s1, 819f
812:              sra          s4, t6, t4
813:              bne          s9, a5, 816f
                  slt          t5, tp, s9
                  bge          s6, s9, 818f
816:              bgeu         a2, s5, 824f
                  sll          s9, s1, s11
818:              slti         t4, a3, -193
819:              nop
                  sltiu        s5, a5, -1110
                  slt          s4, s8, s9
                  sltiu        gp, a3, -1170
                  sll          a4, sp, t5
824:              sltu         t5, a5, a7
                  slt          sp, a1, s0
                  srai         a2, t3, 5
                  bne          ra, t1, 830f
                  sltu         zero, t1, gp
                  or           s1, s1, s10
830:              beq          t4, gp, 843f
                  or           s0, a5, t3
                  ori          a4, s5, -1152
                  srai         s5, t3, 12
                  beq          gp, t0, 841f
                  lui          a7, 46367
                  or           s0, s9, s7
                  or           s10, s8, a3
                  srai         a2, gp, 7
                  auipc        tp, 877933
                  srl          t2, s11, a6
841:              beq          s10, a5, 844f
                  slti         a4, s10, 214
843:              bgeu         a3, s8, 844f
844:              add          ra, t2, tp
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            blt          a5, gp, sub_1_stack_p
                  andi         a1, gp, -23
                  xor          a4, a4, s1
sub_1_stack_p:    addi         a3, a3, -48
                  sw           t1, 4(a3)
                  or           gp, sp, ra
                  sll          s8, tp, s9
                  andi         s7, t0, 1803
                  xori         a7, a5, 1832
                  sltiu        a1, t1, -492
                  slli         ra, a7, 29
                  add          s10, a3, s11
                  beq          s5, t1, sub_1_j2 #branch to jump instr
                  sll          s3, t0, a6
                  sra          a0, tp, t4
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sltu         s1, a4, s1
                  add          t2, s6, s7
                  beq          s6, t3, 12f
                  srai         s3, s9, 11
                  ori          ra, ra, 1935
                  slli         s4, t3, 9
                  srli         t6, s3, 9
                  ori          s6, t2, -546
                  bltu         t0, s8, 25f
                  nop
                  lui          a5, 465473
                  srai         s0, s7, 20
12:               bltu         t1, a1, 28f
                  auipc        zero, 771156
                  srl          a6, zero, zero
                  lui          t1, 1047618
                  bge          t5, zero, 25f
                  bltu         s9, s9, 29f
                  nop
                  sll          t0, s2, a0
                  bge          a3, a5, 38f
                  ori          zero, t3, -571
                  sub          t2, s4, s8
                  ori          s3, a3, -1707
                  bne          gp, s3, 33f
25:               slli         t1, a0, 4
                  auipc        t2, 749579
                  sra          t5, ra, s9
28:               add          a5, s4, s9
29:               andi         s5, t2, -845
                  addi         t4, a6, 272
                  nop
                  and          s2, a1, s7
33:               beq          s8, s2, 43f
                  bltu         s3, a0, 38f
                  slli         s5, t5, 22
                  sra          tp, t4, s10
                  or           s0, a2, sp
38:               srai         t2, t2, 17
                  ori          s1, s7, 660
                  sra          a5, s5, s4
                  sltiu        gp, tp, 1780
                  or           s10, s5, a4
43:               slli         a2, s7, 17
                  lui          s9, 237162
                  xori         s9, t6, -1114
                  srli         a1, t5, 28
                  xori         tp, s3, -448
                  lw           t1, 4(a3)
                  xori         a6, s5, -454
                  srai         s7, s5, 23
                  slli         ra, s0, 0
                  srli         a2, t3, 25
                  addi         a3, a3, 48
                  xor          s9, t1, s5
                  sra          gp, s11, s7
72:               addi x6, x6, 1
72:               jalr x6, x6, 0
sub_2:            sltiu        a2, tp, 450
                  bgeu         a7, s3, sub_2_stack_p
sub_2_stack_p:    addi         a3, a3, -56
                  and          tp, ra, a4
                  lui          gp, 470382
                  slti         sp, t0, 798
                  srl          t6, a5, gp
                  sw           t1, 4(a3)
                  srl          a2, s7, s11
                  sll          a4, s3, t1
                  sra          t2, zero, t5
                  la           s8, region_1+1434 #start riscv_load_store_hazard_instr_stream_0
                  lb           s0, -628(s8)
                  addi         s2, gp, -1965
                  sb           a0, -628(s8)
                  sb           t3, 232(s8)
                  lh           a7, 232(s8)
                  sltiu        sp, s3, 145
                  xor          a2, t1, a0
                  lbu          s9, 232(s8)
                  lh           t2, -442(s8)
                  addi         s10, zero, -1715
                  lbu          s2, -442(s8)
                  lw           a1, -442(s8)
                  sb           t0, -442(s8)
                  lb           s0, 167(s8)
                  sb           a1, 103(s8)
                  sb           s3, 103(s8)
                  sll          s4, s10, s7
                  lbu          s3, 103(s8)
                  lbu          t1, 103(s8)
                  sb           s10, 103(s8)
                  srai         t4, s8, 18
                  add          s10, t6, a2
                  sw           t0, -690(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1839 #start riscv_load_store_rand_instr_stream_0
                  nop
                  auipc        a6, 156826
                  srl          s4, t6, s9
                  lb           s6, -707(sp)
                  sb           s10, -1610(sp)
                  andi         t1, s8, -1916
                  andi         s1, a6, -808
                  lui          s4, 529336
                  lbu          s5, -1247(sp)
                  andi         a1, a1, -465
                  lbu          t0, -54(sp)
                  lhu          t1, -543(sp)
                  sb           a0, -1124(sp)
                  or           s1, a7, s6
                  and          a0, s10, t0
                  sb           t6, -204(sp)
                  srai         t4, t1, 0
                  lb           a6, -552(sp)
                  lh           s4, -87(sp)
                  sb           s3, 90(sp)
                  sb           t3, -21(sp)
                  lbu          s1, -62(sp)
                  sh           t3, -255(sp)
                  lbu          t0, -469(sp)
                  lui          a4, 616283
                  lbu          t1, -833(sp)
                  sb           s9, -494(sp)
                  sltu         zero, t3, s10
                  xor          gp, s8, s11
                  srl          ra, sp, s9
                  srai         tp, s2, 10
                  sltu         s5, s11, t5
                  srl          t4, s3, s4
                  lbu          s8, -588(sp) #end riscv_load_store_rand_instr_stream_0
                  addi         a2, gp, 460
                  srl          zero, a6, s3
                  sltu         a1, t0, s7
                  andi         a2, a1, 1470
                  andi         s7, a6, 72
                  slti         sp, s2, -724
                  add          a1, s5, s8
                  srl          a5, a2, t5
                  blt          t5, ra, 19f
                  or           s10, t5, t5
                  sltu         t0, s5, a7
                  bgeu         s8, a1, 31f
                  add          a5, s4, sp
                  xor          ra, s11, ra
                  sub          t1, s8, tp
                  addi         gp, a0, 267
                  nop
                  sub          tp, sp, a4
                  bltu         s4, t0, 31f
19:               slt          a6, s1, t3
                  auipc        t5, 101889
                  beq          a0, a6, 39f
                  ori          a2, s0, 1529
                  addi         t6, a1, 862
                  slli         s0, s0, 23
                  andi         ra, a4, -1283
                  beq          s9, a2, 39f
                  auipc        s0, 152028
                  slli         a5, a6, 5
                  bge          ra, a1, 36f
                  lui          t6, 394529
31:               lui          a0, 624214
                  or           a0, a5, sp
                  blt          s6, a3, 49f
                  srl          gp, gp, s11
                  auipc        s7, 986461
36:               bne          s9, s4, 53f
                  addi         zero, t1, 37
                  bge          t1, a3, 47f
39:               slli         s10, a3, 14
                  sra          t6, s4, t6
                  blt          t4, t3, 54f
                  bltu         t0, t0, 58f
                  sltu         s1, a6, a6
                  blt          a0, t0, 50f
                  xor          a6, s0, a1
                  sll          tp, s9, gp
47:               sub          t6, t1, t4
                  sll          t0, s7, s0
49:               bge          s6, a4, 55f
50:               slt          t1, a1, s11
                  blt          s0, t3, 53f
                  sra          s4, t5, s11
53:               lui          t2, 268521
54:               sra          t4, a6, sp
55:               andi         sp, a7, -1287
                  and          a1, a1, a1
                  la           s6, region_1+297 #start load_store_instr_stream_1
                  la           t4, region_1+1619 #start load_store_instr_stream_0
                  sw           s10, 1695(s6)
                  sw           s7, -1551(t4)
                  sh           t2, 465(s6)
                  lb           ra, 383(s6)
                  lb           t2, -1473(t4)
                  lbu          t5, -212(s6)
                  lbu          s0, 1242(s6)
                  sh           t1, -199(s6)
                  sh           s8, 359(t4)
                  sw           s1, 1047(s6)
                  sb           a7, -1502(t4)
                  lb           a5, 1529(s6)
                  sb           a6, -218(t4)
                  sb           t5, 66(t4)
                  lhu          a5, -277(s6) #end load_store_instr_stream_1
                  lb           s8, -1389(t4) #end load_store_instr_stream_0
                  or           t5, s5, s2
58:               addi         s9, s1, -1097
                  slli         s5, sp, 14
                  bge          t6, t1, 78f
                  slli         sp, s7, 1
                  srl          a4, zero, sp
                  bgeu         s8, s3, 75f
                  sll          t0, gp, s0
                  srl          tp, t6, sp
                  blt          s7, ra, 82f
                  bne          s11, zero, 86f
                  and          sp, tp, s3
                  and          s5, t2, s3
                  addi         a7, s9, -1033
                  sltu         s9, zero, t0
                  slti         a1, s10, -879
                  bne          ra, a6, 75f
                  srli         t4, a1, 21
75:               lui          s6, 566753
                  srl          s3, t1, s3
                  add          ra, a5, a4
78:               beq          a5, t3, 93f
                  xori         t6, s1, 852
                  bgeu         s6, s9, 82f
                  bge          t1, a7, 89f
82:               add          t1, gp, gp
                  add          s1, gp, ra
                  andi         s3, zero, -445
                  sub          sp, a2, a4
86:               xori         t6, a7, -1168
                  bge          s11, s6, 101f
                  or           a1, s8, a1
89:               sll          s5, s2, s11
                  srai         a7, sp, 10
                  srai         s8, gp, 9
                  bltu         a3, s5, 95f
93:               srl          t6, s7, s11
                  srl          a6, s5, s4
95:               beq          s2, s7, 104f
                  bne          t1, a3, 100f
                  sub          s10, s5, s4
                  add          a2, gp, s2
                  slti         s0, s11, 630
100:              srli         t5, s1, 26
101:              srl          t4, s0, t4
                  sra          t5, a7, s0
                  srl          t6, s9, sp
104:              bgeu         t5, s9, 107f
                  ori          s8, zero, 894
                  or           tp, s7, s9
107:              or           a1, s0, s7
                  lw           t1, 4(a3)
                  addi         a3, a3, 56
                  slli         a4, s3, 15
                  auipc        s8, 714756
                  lui          s6, 985517
201:              addi x20, x6, 0
201:              jalr x20, x20, 0
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x27, x13, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x20, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x20, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x20, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x20, x30, ecall_handler
                  li x30, 0x1
                  beq x20, x30, instr_fault_handler
                  li x30, 0x5
                  beq x20, x30, load_fault_handler
                  li x30, 0x7
                  beq x20, x30, store_fault_handler
                  li x30, 0xc
                  beq x20, x30, pt_fault_handler
                  li x30, 0xd
                  beq x20, x30, pt_fault_handler
                  li x30, 0xf
                  beq x20, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

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
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x13, x27, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x27, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x27, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x13, x27, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x13, x27, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x13, x27, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
