.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0xa75c0287
                  li x1, 0xfed455e5
                  li x2, 0x8
                  li x3, 0x6fa500c8
                  li x4, 0xce16eea6
                  li x5, 0x5
                  li x6, 0xe117c689
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xff9e6bd8
                  li x10, 0xfd42e3d3
                  li x11, 0x80000000
                  li x12, 0xf98ebce6
                  li x13, 0xe
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0xf15326e1
                  li x17, 0x98f55a81
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0xc3f001b4
                  li x21, 0xfd25481e
                  li x23, 0xf7115cfa
                  li x24, 0x0
                  li x25, 0xf85b6708
                  li x27, 0x80000000
                  li x28, 0xf2d7e79a
                  li x29, 0xc
                  li x30, 0xfa72db04
                  li x31, 0xfc6d2e31
                  la x26, user_stack_end
main:             la           t1, region_0+760 #start riscv_load_store_rand_instr_stream_0
                  nop
                  auipc        t3, 268228
                  srli         s8, s3, 4
                  slt          zero, a1, t1
                  srli         s8, s6, 4
                  lb           a1, 67(t1)
                  or           a1, s8, s9
                  add          zero, t1, ra
                  sw           s7, -48(t1)
                  andi         s3, s8, -1079
                  srl          t5, s7, t1
                  sll          s1, s10, s0
                  sb           s5, 247(t1)
                  lbu          t5, -191(t1)
                  sh           a4, 0(t1)
                  sltu         t6, t0, a6
                  slti         s7, s10, -1312
                  or           a5, s8, a1
                  lbu          zero, 51(t1)
                  lhu          t5, -154(t1)
                  xor          t0, a1, a5
                  lb           zero, -120(t1)
                  lb           a5, 138(t1)
                  slti         a3, a4, 1472
                  lb           a0, -23(t1) #end riscv_load_store_rand_instr_stream_0
                  slli         a4, t5, 7
                  nop
                  nop
                  bltu         a1, s7, 14f
                  srli         t1, a5, 29
                  la           t4, sub_1
                  sltiu        s2, s0, 643
                  nop
                  and          a5, t5, t3
                  and          t1, gp, ra
                  sra          zero, s5, ra
                  auipc        a5, 415614
                  addi         t4, t4, 961
                  slli         s5, ra, 26
                  sltu         s0, a7, s8
main_j1:          jalr         s1, t4, -960 #jump main -> sub_1
                  sub          s4, s7, t1
                  lui          sp, 204759
                  addi         s9, a6, 1217
                  sltu         s8, s8, t0
                  auipc        sp, 483023
                  lui          tp, 485823
                  bge          t4, sp, 23f
                  add          a4, t2, t5
                  bne          s9, t1, 19f
                  auipc        a3, 799496
14:               sll          s3, t2, t4
                  addi         a2, s5, -1322
                  or           s9, a0, a5
                  slti         s9, t4, -874
                  srl          t1, sp, s2
19:               nop
                  sub          s3, t2, a1
                  or           t3, s9, s6
                  ori          t5, a4, 244
23:               sll          t2, ra, a6
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           slt          s4, s9, sp
                  nop
                  ori          s2, a4, -693
                  add          s5, s10, s8
                  srli         t1, a7, 16
                  addi         s10, s10, -52
                  srai         tp, a6, 30
                  addi         s2, s1, 39
                  sw           s1, 4(s10)
                  xor          s9, a3, s4
                  la           s9, region_0+506 #start riscv_load_store_rand_instr_stream_2
                  lw           t3, -34(s9)
                  lb           t3, -35(s9)
                  lbu          s4, -22(s9)
                  sltiu        zero, zero, 938
                  sltu         s1, s7, a0
                  ori          a0, s9, -256
                  sb           t0, -31(s9)
                  xori         s8, s2, -1291
                  slli         t4, a5, 6
                  sh           s9, -46(s9)
                  lbu          s3, -42(s9)
                  and          a5, s9, zero
                  sb           t2, 11(s9)
                  lbu          s1, 3(s9)
                  slti         t2, s1, -825
                  lbu          s2, 46(s9)
                  sb           a7, 22(s9)
                  sltu         t4, t1, a1
                  lb           s5, 4(s9)
                  lhu          s1, -12(s9)
                  xor          a1, s6, s6
                  lb           a3, 40(s9)
                  ori          zero, a2, 38
                  auipc        t6, 664511
                  lb           a1, 40(s9)
                  sltiu        s7, t4, 1705
                  srai         s0, s3, 4
                  sb           s4, -7(s9)
                  sltu         s0, s10, t1
                  sb           s7, 37(s9)
                  lw           a0, 14(s9)
                  sb           s4, 19(s9)
                  lb           t4, -51(s9)
                  sub          zero, a0, t1
                  sb           t4, 1(s9)
                  lbu          t1, -45(s9)
                  lh           s0, 30(s9)
                  slli         s5, t1, 28
                  andi         tp, gp, -241
                  xor          t2, t0, tp
                  sb           s4, -59(s9) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1548 #start riscv_load_store_rand_instr_stream_12
                  lb           a2, -9(sp)
                  srli         a3, t0, 25
                  lb           a1, 6(sp)
                  lb           t5, 15(sp)
                  lb           s8, 16(sp)
                  slti         a0, s4, 401
                  lbu          s11, 4(sp)
                  lb           a3, -4(sp)
                  sb           s4, -16(sp)
                  lh           t6, 10(sp)
                  or           t2, s7, zero
                  lhu          t2, 12(sp)
                  sb           s0, 7(sp)
                  sh           t3, -4(sp)
                  sltu         a0, t4, s2
                  sra          s3, s2, a7
                  lw           a2, 16(sp)
                  lh           s3, -10(sp)
                  lh           a1, 16(sp)
                  and          s7, a4, s6
                  lbu          t4, -1(sp)
                  lb           s11, -15(sp)
                  sw           gp, 0(sp)
                  lw           a1, -12(sp)
                  sw           gp, -4(sp)
                  nop
                  sb           tp, -7(sp)
                  sb           s0, -4(sp)
                  lbu          t5, -4(sp)
                  sb           s4, -13(sp)
                  sll          s3, s6, a0
                  sb           s2, 6(sp)
                  or           t3, a6, a0
                  lbu          a0, 9(sp)
                  andi         t3, ra, -227
                  slt          s9, t6, a0
                  lbu          t0, 5(sp)
                  sra          a1, t3, a7
                  lb           s9, -13(sp) #end riscv_load_store_rand_instr_stream_12
                  la           t2, region_1+504 #start riscv_load_store_rand_instr_stream_20
                  lb           s4, 1377(t2)
                  sb           a1, -290(t2)
                  sb           t4, -101(t2)
                  sb           a7, 1017(t2)
                  or           t5, t6, s2
                  lb           t0, -126(t2)
                  srli         s8, s6, 26
                  ori          tp, zero, -1783
                  addi         s3, a6, -1847
                  xori         s5, t0, 1146
                  srl          t6, s2, a5
                  sh           s10, 930(t2)
                  and          s8, s11, s11
                  sll          s4, s8, a5
                  lbu          s11, -330(t2)
                  slli         s9, s6, 3
                  sh           a4, -356(t2)
                  sb           ra, -295(t2)
                  sltiu        s8, s1, 63
                  nop
                  sltiu        a0, a2, -840
                  sh           t4, 546(t2) #end riscv_load_store_rand_instr_stream_20
                  la           s5, region_0+869 #start riscv_load_store_rand_instr_stream_6
                  sb           a4, -1(s5)
                  lbu          t2, 34(s5)
                  srl          a0, s9, s1
                  srl          s7, a2, s4
                  lbu          a5, -22(s5)
                  nop
                  srl          a4, s10, a4
                  lbu          s3, 32(s5)
                  lbu          s1, 47(s5)
                  slli         t6, s3, 4
                  ori          t3, s5, 576
                  lui          a3, 495812
                  srli         s1, s10, 12
                  slti         t5, a4, 1941
                  nop
                  xor          t0, s10, s3
                  nop
                  lw           gp, -45(s5)
                  sb           t4, 51(s5)
                  lw           s9, 23(s5)
                  sra          t1, tp, t6
                  srl          s4, a2, s0
                  sb           s1, -4(s5)
                  or           gp, tp, ra
                  srli         a6, a0, 10
                  lh           a5, -63(s5)
                  slli         gp, a0, 25
                  sltiu        t3, a6, 1878
                  sh           zero, 49(s5) #end riscv_load_store_rand_instr_stream_6
                  la           t5, region_1+158 #start riscv_load_store_rand_instr_stream_5
                  lb           t3, 13(t5)
                  addi         tp, sp, 1173
                  srl          zero, t1, s10
                  sw           s9, -14(t5)
                  sb           a0, -4(t5)
                  andi         s11, a6, 1824
                  nop
                  slt          zero, t2, a6
                  sltiu        zero, t5, 1382
                  and          s11, s11, a4
                  sh           a4, -16(t5)
                  sll          t6, s10, a0
                  lb           s7, 9(t5)
                  lbu          a7, -2(t5)
                  lb           sp, -9(t5)
                  sb           s3, 0(t5)
                  andi         tp, t5, 322
                  sltiu        s3, s5, 1100
                  sll          s3, s1, a6
                  sra          gp, s11, s4
                  srli         s1, ra, 3
                  add          s11, s10, a6
                  sb           sp, 13(t5)
                  sra          t0, a0, s2
                  add          t1, s5, t5
                  lw           t2, 6(t5)
                  slli         a1, s3, 29
                  lh           t4, 16(t5)
                  lb           s3, -13(t5)
                  nop
                  srl          gp, t3, s11
                  and          a1, s10, a4
                  andi         zero, t6, -185
                  xor          a5, a6, s10
                  sh           zero, 10(t5)
                  sll          s8, s4, t3
                  add          a7, a1, a5
                  sltu         t6, a4, a4
                  nop
                  sb           a6, -5(t5)
                  or           sp, s1, s5
                  lbu          s8, 3(t5)
                  sw           t2, 14(t5)
                  sb           gp, 9(t5)
                  lw           s9, 2(t5) #end riscv_load_store_rand_instr_stream_5
                  la           t1, region_1+204 #start riscv_load_store_rand_instr_stream_4
                  lbu          a6, 20(t1)
                  lb           s5, -6(t1)
                  sra          a3, t3, s7
                  addi         t6, s11, -688
                  sb           s4, -41(t1)
                  addi         s8, sp, 273
                  auipc        t6, 392994
                  lb           t2, -19(t1)
                  ori          s3, a7, 2033
                  sb           s8, 15(t1)
                  lui          zero, 698907
                  sra          a0, zero, a1
                  lbu          t0, 38(t1)
                  slli         a5, t0, 3
                  sltu         s8, s4, s8
                  ori          s0, s10, -1213
                  lw           a3, -64(t1)
                  lb           t0, 22(t1)
                  nop
                  lui          s1, 845089
                  lbu          a6, -37(t1)
                  sltu         tp, s3, s10
                  lb           a7, -31(t1)
                  nop
                  lbu          s2, -61(t1)
                  sltiu        t0, s6, 82
                  sb           t4, -63(t1)
                  lb           t6, -8(t1)
                  slli         s11, gp, 1
                  sll          t2, a4, s4
                  add          s2, a5, a2
                  auipc        a1, 15629
                  sb           t5, 53(t1)
                  and          t2, t4, s6
                  nop
                  auipc        s5, 1007946
                  sh           a4, 26(t1)
                  sb           t3, -19(t1)
                  sb           t1, 62(t1)
                  lbu          s8, 20(t1)
                  lbu          t0, -49(t1)
                  ori          s3, s0, 1113
                  or           a6, t0, s3
                  xori         s7, ra, -657
                  nop
                  lb           a6, -34(t1)
                  nop
                  lb           s7, 28(t1) #end riscv_load_store_rand_instr_stream_4
                  la           t1, region_0+352 #start riscv_load_store_rand_instr_stream_19
                  sb           a6, 538(t1)
                  ori          gp, t2, -34
                  lb           s4, 775(t1)
                  lbu          t3, 1555(t1)
                  lhu          zero, 1604(t1)
                  lbu          s0, 1052(t1)
                  xori         a7, a5, -1329
                  lui          a7, 16162
                  ori          s9, a4, 220
                  lb           a5, 878(t1)
                  or           s8, a5, s9
                  slt          a7, s4, t1
                  lb           a4, -60(t1)
                  lbu          s5, 1313(t1)
                  sll          s3, s5, t4
                  sub          a1, s6, gp
                  srl          t5, s0, a7
                  xori         s9, t6, -1292
                  lhu          t2, 1270(t1)
                  lbu          s3, 697(t1)
                  and          t0, a5, s3
                  lb           a3, 1039(t1)
                  lhu          t2, -118(t1)
                  srai         sp, t5, 10
                  sltu         t4, t1, t6
                  lbu          a1, 612(t1)
                  sb           s3, 1445(t1)
                  lhu          a5, 670(t1)
                  xori         s9, tp, 1132
                  lw           a5, -336(t1)
                  ori          s0, tp, -1605
                  sltu         s4, s8, s8
                  lb           t3, 895(t1)
                  sb           t2, 1285(t1)
                  xor          s5, s4, sp
                  lw           t5, -244(t1)
                  slt          t0, tp, s6
                  slli         t5, s5, 23
                  andi         s7, s7, 1973
                  sb           sp, 664(t1)
                  lbu          a5, 1183(t1)
                  sra          s2, s8, ra
                  sb           t0, 57(t1)
                  slli         t0, tp, 22
                  lhu          s0, 610(t1)
                  lbu          gp, 1619(t1)
                  sh           s5, -166(t1)
                  sra          s3, t6, s11
                  lui          a7, 907971
                  lbu          a5, 953(t1) #end riscv_load_store_rand_instr_stream_19
                  la           sp, region_0+343 #start riscv_load_store_rand_instr_stream_17
                  sh           gp, -41(sp)
                  lhu          t6, -35(sp)
                  lh           t3, 7(sp)
                  lb           t4, -23(sp)
                  or           a2, s5, sp
                  sb           a2, -29(sp)
                  xor          gp, t4, a7
                  andi         t6, s3, -531
                  sub          s4, t6, s8
                  lw           s3, -59(sp)
                  sltu         s3, s4, s8
                  add          t5, t3, s2
                  and          t0, tp, a2
                  lbu          t1, 16(sp)
                  slt          s11, s10, ra
                  add          t5, gp, t3
                  slt          t3, a4, s3
                  or           a1, a7, a1
                  lb           t0, -57(sp)
                  slti         a6, s10, -1803
                  sw           s10, -7(sp)
                  lh           t6, 35(sp)
                  srli         t6, a7, 12
                  slt          tp, a4, t3
                  andi         s0, a1, 222
                  sltu         a4, s4, t0
                  sll          s7, t4, t2
                  srai         s11, s11, 24
                  lb           a3, 42(sp)
                  sltiu        t2, a5, -1045
                  lbu          t3, -63(sp)
                  sw           a1, 41(sp) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_0+1226 #start riscv_load_store_rand_instr_stream_15
                  lw           a3, -2(sp)
                  sh           a7, 14(sp)
                  sub          a4, a3, t0
                  sub          a1, a3, a0
                  sw           s5, 6(sp)
                  and          t1, s1, s2
                  slt          s7, s1, t5
                  nop
                  lbu          t1, -14(sp)
                  lui          s7, 826193
                  slti         t2, a0, -296
                  xor          t4, s6, t6
                  sb           t3, 14(sp)
                  sub          tp, a0, a4
                  addi         s7, t4, -687
                  sltiu        s7, s3, -2002
                  sw           a5, 14(sp)
                  sb           s5, -14(sp)
                  add          t6, s2, zero
                  lw           s0, 14(sp)
                  nop
                  ori          s4, s10, -1385
                  lb           a4, 3(sp)
                  lhu          zero, 2(sp)
                  sb           zero, -9(sp)
                  sb           t3, 3(sp)
                  srli         t1, t5, 27
                  srli         t0, s6, 1
                  lbu          a0, -3(sp)
                  lbu          a3, -7(sp)
                  sltu         t2, a4, zero
                  lw           a5, -2(sp)
                  lbu          gp, 10(sp) #end riscv_load_store_rand_instr_stream_15
                  la           a5, region_1+389 #start riscv_load_store_rand_instr_stream_14
                  slti         s3, sp, 1244
                  lbu          a3, 854(a5)
                  srai         a7, t6, 12
                  sh           a4, 1493(a5)
                  sltiu        t1, a1, -79
                  sub          s4, s7, t3
                  add          t0, s5, s3
                  srli         t2, t2, 0
                  sb           t1, 763(a5)
                  ori          s3, ra, 1447
                  lbu          s11, 172(a5)
                  lbu          a0, 324(a5)
                  lb           s9, 1530(a5)
                  lbu          a0, 1154(a5)
                  sra          t5, a6, s8
                  lb           s7, 1104(a5)
                  lhu          t1, 445(a5)
                  nop
                  srai         a0, t4, 18
                  lhu          a3, 243(a5)
                  sb           s8, 886(a5)
                  lb           tp, 42(a5)
                  lh           s5, 411(a5)
                  lbu          a1, 1342(a5) #end riscv_load_store_rand_instr_stream_14
                  la           a6, region_1+4 #start riscv_load_store_rand_instr_stream_1
                  srl          t2, s7, a0
                  sra          s8, sp, s1
                  sltiu        a7, s1, -1447
                  srli         s2, s3, 29
                  sh           ra, 1026(a6)
                  andi         a2, a0, -118
                  lbu          t0, 1659(a6)
                  srli         a1, s5, 2
                  lb           s3, 1188(a6)
                  slli         t3, s0, 10
                  ori          t2, a7, -272
                  srl          a2, t1, gp
                  slti         t2, s8, 1967
                  lh           t2, 380(a6)
                  lbu          t2, 1853(a6)
                  xori         a5, t0, -831
                  sb           a1, 1289(a6)
                  or           s8, t4, a6
                  lbu          t2, 1377(a6)
                  lb           a5, 1927(a6)
                  sb           a5, 1537(a6)
                  lb           a0, 437(a6)
                  sltu         s11, s10, ra
                  sub          a1, s8, s7
                  and          s7, s8, a7
                  sub          s11, s5, a0
                  nop
                  xori         t5, a1, 541
                  lw           s1, 580(a6)
                  lbu          tp, 451(a6)
                  lh           s4, 830(a6)
                  xori         s1, sp, 1811
                  sb           s7, 1000(a6)
                  sb           t4, 1137(a6)
                  or           s3, a3, s6
                  lb           a3, 1533(a6)
                  sb           a3, 744(a6)
                  slt          s5, t0, gp
                  srli         a3, s9, 6
                  lb           s9, 515(a6)
                  xori         s2, s4, -1589
                  sb           s3, 1372(a6)
                  srl          s1, a1, s4
                  sh           s8, 1072(a6)
                  nop
                  lb           a2, 1417(a6)
                  sb           t4, 534(a6)
                  sb           t0, 1005(a6)
                  srl          tp, a4, sp
                  lbu          a5, 1240(a6)
                  lh           s0, 980(a6)
                  andi         s7, t2, 318
                  sh           s8, 1674(a6)
                  nop
                  lbu          s2, 1457(a6)
                  lbu          a5, 1239(a6)
                  sll          a0, a5, a2
                  sb           t6, 26(a6) #end riscv_load_store_rand_instr_stream_1
                  la           t5, region_0+1388 #start riscv_load_store_rand_instr_stream_11
                  lbu          s7, 6(t5)
                  or           t6, ra, t2
                  slli         a3, tp, 29
                  sltiu        s5, s2, -384
                  lhu          s7, -58(t5)
                  sh           t3, -54(t5)
                  srli         a6, zero, 16
                  sub          a3, s7, gp
                  sh           t0, -12(t5)
                  xori         sp, t2, 1776
                  lbu          a3, -10(t5)
                  slt          a2, t3, t0
                  sw           s6, 0(t5)
                  lhu          zero, -58(t5)
                  lb           a3, 4(t5)
                  sltu         a2, sp, s11
                  lw           t3, -24(t5)
                  or           s1, t5, t6
                  slti         t1, s6, -1678
                  lui          gp, 897546
                  lh           s2, 50(t5)
                  sb           s3, 12(t5)
                  lui          s8, 248451
                  lhu          s2, -56(t5)
                  lb           t3, -19(t5)
                  slt          t3, a7, t4
                  sll          s2, a1, a1
                  srli         s0, s2, 10
                  lbu          a4, -55(t5)
                  and          gp, a2, t6
                  auipc        a2, 882509
                  sh           s5, -6(t5)
                  lb           t1, -15(t5)
                  lui          t4, 166714
                  sub          s8, a0, a4
                  ori          sp, tp, 1860
                  srl          t6, a5, sp
                  sra          t0, s11, t1
                  and          s1, s0, ra
                  lb           t1, 33(t5)
                  lbu          s1, -9(t5)
                  lb           a3, -42(t5)
                  lbu          tp, -56(t5) #end riscv_load_store_rand_instr_stream_11
                  lui          t3, 94301
                  bgeu         t4, t4, 8f
                  nop
                  slli         t5, sp, 13
                  bne          a2, a0, 20f
                  beq          a3, t2, 10f
                  bgeu         s0, a0, 23f
                  sltiu        t4, ra, -1365
8:                slt          s4, s7, s3
                  nop
10:               and          s8, s11, a4
                  xor          a4, t2, s9
                  bne          sp, s8, 15f
                  sll          s4, gp, t1
                  slt          tp, t3, tp
15:               lui          gp, 893336
                  sltiu        t3, t2, -1139
                  sltiu        s11, t3, 25
                  bne          tp, s5, 31f
                  blt          ra, a4, 38f
20:               bgeu         t5, s3, 33f
                  and          a3, s8, sp
                  slt          s2, s11, s10
23:               addi         a5, a2, -2008
                  xori         s3, tp, -1432
                  add          a7, s6, a4
                  or           s2, t0, a6
                  xor          s1, s7, tp
                  sra          s11, t0, s4
                  ori          s3, a3, -1268
                  bgeu         a3, t2, 40f
31:               sra          a1, a7, tp
                  srai         s7, t4, 18
33:               blt          s0, s10, 41f
                  bgeu         s9, s4, 50f
                  sltiu        zero, s3, -1113
                  add          t2, s6, sp
                  sltiu        a1, t0, -340
38:               xori         t1, t2, 575
                  xori         s7, s10, 126
40:               slti         t6, a0, -1784
41:               bne          t2, a2, 42f
42:               slti         t1, t0, -448
                  addi         a2, gp, -1705
                  auipc        s9, 736604
                  bne          gp, a7, 48f
                  nop
                  slt          tp, s9, s4
48:               beq          s3, s0, 50f
                  add          s1, s4, s0
50:               and          s11, s7, t5
                  add          sp, a0, t0
                  sltu         a7, s5, s4
                  blt          t4, a0, 55f
                  sltu         t5, t3, s1
55:               xori         t1, a1, -785
                  ori          s3, s6, -1269
                  slti         s3, a5, 1260
                  sub          a3, a1, zero
                  blt          t0, t0, 77f
                  slt          t4, s6, t2
                  slti         a6, ra, -2026
                  xori         t2, s4, -412
                  nop
                  bgeu         a4, s4, 74f
                  srli         sp, s2, 25
                  sll          tp, t0, s10
                  bgeu         a4, s4, 72f
                  blt          t0, a3, 88f
                  nop
                  andi         t1, t5, 989
                  nop
72:               slt          s7, s6, a6
                  and          a6, gp, s6
74:               sltiu        a4, s3, -942
                  and          a7, s1, s1
                  nop
77:               or           a0, zero, t5
                  add          a1, t6, t3
                  auipc        a3, 28024
                  sltu         tp, a7, tp
                  srai         s9, s10, 5
                  nop
                  slt          a3, a1, s6
                  bne          t0, s11, 104f
                  srai         s5, a7, 16
                  or           gp, a7, gp
                  sll          s8, a1, s4
88:               slli         a6, tp, 15
                  auipc        a4, 757773
                  srli         s2, a2, 29
                  add          t2, a2, s3
                  bgeu         gp, s1, 105f
                  blt          a1, t3, 108f
                  sltiu        s7, a7, 1252
                  add          s5, t0, t5
                  slti         a2, t5, -1340
                  sltiu        a2, a2, -1222
                  sra          s7, tp, s4
                  andi         s0, s6, 1244
                  andi         a3, s1, 1644
                  sra          s8, s2, s10
                  srli         a0, t2, 24
                  beq          a0, s3, 117f
104:              addi         s4, zero, 1282
105:              bge          s0, a6, 124f
                  blt          s9, t4, 116f
                  bgeu         s3, a4, 124f
108:              andi         s5, t3, -647
                  add          t1, t1, a1
                  sltu         t4, s2, s7
                  xor          t5, t0, a6
                  andi         s8, ra, -1919
                  sltiu        a6, s3, 1711
                  andi         t0, s1, 758
                  sltiu        a0, t6, 1216
116:              bge          a1, s6, 121f
117:              xor          s5, a0, gp
                  slt          a6, tp, a7
                  bgeu         ra, s11, 133f
                  sltiu        s1, t1, 1559
121:              slt          s4, s11, t2
                  lui          s2, 419764
                  bne          a0, s0, 130f
124:              addi         t6, t2, 981
                  sll          s4, t5, t0
                  srl          a2, a0, s1
                  andi         tp, s4, -897
                  beq          a4, s2, 147f
                  sll          s1, a4, t3
130:              srl          t0, s6, a4
                  blt          s5, s0, 151f
                  beq          t4, a7, 149f
133:              auipc        s8, 818319
                  addi         gp, t5, 1445
                  bgeu         s9, a2, 149f
                  lui          a4, 130472
                  blt          ra, a3, 147f
                  nop
                  blt          a4, a0, 158f
                  sltu         a4, s8, t5
                  xor          s4, a1, a0
                  bgeu         tp, s7, 155f
                  add          t4, zero, s0
                  nop
                  sll          zero, a7, t3
                  add          s1, t3, t6
147:              xori         t0, ra, 26
                  sub          t6, t4, s8
149:              bltu         s3, s10, 168f
                  srl          s4, s1, s6
151:              slt          gp, s10, s8
                  beq          a5, a2, 170f
                  sub          zero, a5, a4
                  auipc        t1, 145269
155:              sll          a3, a7, s3
                  srli         a4, a3, 0
                  srai         t4, s3, 29
158:              xor          a5, s10, t4
                  nop
                  and          tp, a5, t4
                  ori          s9, sp, 1978
                  sra          a6, a5, a2
                  auipc        t4, 1034893
                  xor          t0, s7, s6
                  srl          t4, s1, s5
                  nop
                  slti         a2, a4, -1299
168:              sltu         a4, t0, a0
                  bne          t6, a5, 174f
170:              nop
                  auipc        t0, 582310
                  srli         gp, s9, 1
                  srli         s0, tp, 6
174:              beq          a5, a4, 190f
                  sra          a6, a3, t2
                  srai         t0, a5, 1
                  or           gp, s4, s1
                  xori         sp, a0, -1689
                  add          s1, t2, t5
                  srli         s7, t1, 9
                  beq          s8, sp, 200f
                  srl          t1, a0, tp
                  xori         zero, t1, 1779
                  sra          s0, a5, s8
                  sltiu        s1, a1, -1429
                  sltu         s9, tp, t3
                  slli         tp, s11, 15
                  addi         a4, a2, -1832
                  srl          a7, s8, tp
190:              sra          a4, a5, sp
                  bgeu         a2, s8, 208f
                  srl          t5, t1, a0
                  srai         a3, s6, 31
                  lui          t3, 766024
                  and          a0, sp, a3
                  addi         tp, s5, -1032
                  andi         a0, ra, 1691
                  bltu         s5, a3, 199f
199:              xor          gp, a6, s1
200:              srl          s9, a1, tp
                  lui          a3, 135227
                  sra          a6, sp, a6
                  bne          ra, s3, 205f
                  bne          s8, s5, 218f
205:              and          t5, zero, s10
                  bge          s5, s0, 219f
                  xori         a2, t0, 412
208:              sltiu        a6, s2, 1257
                  or           t0, tp, a1
                  srai         t5, s10, 26
                  sltu         s8, a7, tp
                  bge          a1, a6, 222f
                  slt          t2, ra, a4
                  slt          a1, a3, zero
                  sll          t4, t3, s3
                  bltu         s9, s7, 218f
                  blt          s4, s4, 224f
218:              srl          t2, a5, t1
219:              srli         a6, a4, 29
                  sltiu        a4, s3, 791
                  add          t4, a7, s2
222:              ori          s8, ra, 833
                  andi         s2, t6, -1211
224:              xori         s11, a2, -983
                  sltu         a2, t0, ra
                  addi         s11, s2, -1863
                  auipc        t3, 284542
                  srai         s11, s0, 17
                  ori          sp, a3, -1749
                  sub          s11, t6, sp
                  sll          t5, t6, s3
                  slli         t0, a3, 1
                  srai         a3, s9, 20
                  blt          s2, a5, 237f
                  andi         t5, a6, -1064
                  srli         a7, s2, 7
237:              slt          s0, gp, gp
                  sub          s9, t4, gp
                  srai         t3, a7, 8
                  sll          s2, ra, a5
                  sll          a0, s6, s1
                  sra          a4, s1, t1
                  sltu         s7, s1, a4
                  sltu         s0, s11, t5
                  sub          a4, s4, s2
                  srl          a2, s5, a5
                  slt          s7, a2, t0
                  nop
                  slti         a6, tp, -1606
                  xor          s3, a2, s9
                  bgeu         s7, s11, 259f
                  xor          s3, a0, t6
                  bne          s10, s8, 256f
                  slt          s1, s8, s3
                  or           s3, t5, a6
256:              auipc        s7, 574580
                  ori          sp, t6, 644
                  blt          zero, s8, 273f
259:              or           a7, s2, s9
                  add          zero, a0, s5
                  or           t6, sp, a4
                  ori          s1, t2, 1236
                  andi         a1, s6, 1704
                  sub          t5, sp, gp
                  lui          t5, 929510
                  sltu         gp, s6, s7
                  lui          t4, 983878
                  bge          t5, s2, 275f
                  and          s11, s10, t0
                  andi         s7, t0, 2011
                  blt          tp, a0, 287f
                  blt          a5, gp, 282f
273:              srli         t4, gp, 9
                  blt          t2, t0, 294f
275:              and          a0, a3, a4
                  bltu         s2, sp, 289f
                  sub          a0, s0, a6
                  sub          s7, a3, s8
                  slti         a4, s10, 1858
                  srai         tp, t3, 22
                  beq          s0, t2, 286f
282:              slti         t0, tp, -1183
                  bltu         a7, s2, 288f
                  or           s7, s6, sp
                  slti         t2, s1, 463
286:              sub          t6, s5, t4
287:              auipc        s11, 799533
288:              slt          s9, s5, a1
289:              auipc        t0, 700105
                  bne          t1, sp, 292f
                  sll          s4, a7, t4
292:              auipc        s3, 639324
                  xori         s0, t6, -280
294:              blt          s7, sp, 311f
                  auipc        t5, 485189
                  auipc        t3, 29006
                  bltu         t3, a3, 317f
                  xori         s5, t1, 1722
                  sub          a0, gp, t2
                  andi         gp, s10, -699
                  sll          gp, s9, a1
                  add          s11, t5, a5
                  add          t6, t2, a4
                  bgeu         t6, a2, 311f
                  srli         a4, s2, 15
                  auipc        sp, 519842
                  ori          t5, a1, -1134
                  sltiu        t6, s2, -865
                  lui          s7, 122846
                  auipc        s9, 610491
311:              srai         sp, t6, 26
                  addi         t3, t0, 675
                  slti         t1, t4, -1984
                  sll          a2, ra, a2
                  or           tp, s11, s6
                  blt          t4, sp, 336f
317:              srli         t0, a7, 10
                  bgeu         gp, a5, 323f
                  sll          a7, a2, a0
                  sra          t6, s11, a2
                  addi         a1, a2, 1655
                  sub          s0, a4, s9
323:              slti         s11, t5, 751
                  blt          t0, t4, 327f
                  slt          t3, s1, s11
                  slli         s0, sp, 3
327:              addi         a2, a4, -1455
                  add          s1, t2, a5
                  sll          a3, s6, a0
                  lui          tp, 103898
                  addi         a7, s9, -1799
                  sra          a7, s7, sp
                  bge          a7, t2, 351f
                  add          t3, s2, s9
                  and          s4, a4, a6
336:              sltiu        t5, t2, 563
                  slli         t0, s7, 23
                  xori         sp, t1, -802
                  add          gp, t3, s6
                  or           a7, s0, s5
                  sltiu        t3, t4, 1251
                  lui          s5, 502025
                  bne          s6, t3, 345f
                  add          t3, s10, a6
345:              andi         s11, a1, -716
                  sra          s11, a7, s0
                  blt          t1, s7, 366f
                  sll          t5, sp, s3
                  bgeu         a4, t2, 368f
                  sll          s0, s5, s1
351:              srai         t6, t3, 24
                  andi         zero, t0, -1953
                  slli         a4, s5, 2
                  add          a5, sp, a5
                  nop
                  blt          t3, s2, 363f
                  srli         a3, t6, 18
                  addi         t1, s10, 647
                  sll          a5, a5, zero
                  lui          s3, 852541
                  addi         a3, t2, -1907
                  ori          sp, a7, 440
363:              slti         t0, t6, 1218
                  addi         t4, ra, 1477
                  slli         s3, t5, 23
366:              sub          t1, s6, a6
                  sltu         t0, a1, sp
368:              slli         t0, gp, 15
                  sltu         s9, s11, a1
                  or           a1, s9, a6
                  add          s5, a1, s3
                  sltiu        s11, a1, -430
                  slt          t5, t1, ra
                  add          t0, ra, s11
                  slli         a7, s11, 6
                  srai         s3, t3, 13
                  andi         s3, s8, -767
                  srl          a1, s4, s9
                  xori         t1, t1, 1813
                  slt          t0, s9, s6
                  sltu         sp, s9, a7
                  andi         s5, sp, -1771
                  srl          a5, s2, t0
                  sll          s2, ra, sp
                  auipc        s3, 70458
                  la           a2, region_0+843 #start riscv_load_store_rand_instr_stream_10
                  sll          a7, s3, t2
                  lh           a3, -35(a2)
                  lw           s7, -43(a2)
                  slt          s5, t2, a1
                  ori          t3, s8, -1018
                  xori         tp, s3, -270
                  sb           s7, 20(a2)
                  add          a6, t1, a4
                  sb           a3, -26(a2)
                  lb           t1, 24(a2)
                  sub          a4, a6, a6
                  and          a5, s2, s4
                  andi         s5, a4, 462
                  xori         s0, t6, -631
                  sb           a5, 20(a2)
                  lui          s0, 486768
                  slt          zero, s1, s4
                  slli         s5, s7, 20
                  sb           s3, -63(a2)
                  auipc        t5, 39405
                  ori          t4, tp, -516
                  sb           a5, 50(a2)
                  lui          t5, 501863
                  sh           s7, 55(a2)
                  sb           a5, -20(a2)
                  lbu          s7, -38(a2)
                  srl          t2, a7, a6
                  and          s1, s9, s9
                  slli         t0, gp, 29
                  lb           a4, -8(a2)
                  lhu          t5, 33(a2)
                  ori          a1, s10, -1077
                  sw           s4, 29(a2)
                  lh           gp, -43(a2)
                  lb           s1, -58(a2)
                  addi         zero, a1, 1716
                  and          s7, a0, s11
                  lb           s5, 48(a2)
                  xor          a0, a7, t6
                  sra          s9, s11, s6
                  or           a5, s9, ra
                  auipc        s7, 259418
                  sh           s6, 31(a2)
                  sw           t4, 61(a2) #end riscv_load_store_rand_instr_stream_10
                  slt          a4, s1, s8
                  slti         t4, a2, 1303
                  sll          t2, t2, s2
                  slti         a0, t3, 25
                  sra          t3, a5, t0
                  sub          a3, s9, a5
                  add          s7, a1, s0
                  sra          s7, a0, t3
                  lui          s0, 565285
                  auipc        zero, 596802
                  bltu         s1, t1, 410f
                  slti         sp, s9, -1159
                  sll          s3, t3, zero
                  auipc        tp, 145982
                  andi         t2, s7, -1442
                  srl          t2, tp, t3
                  auipc        sp, 504282
                  bgeu         a7, s0, 413f
                  sll          a5, a4, a6
                  xor          sp, a5, a6
                  beq          s9, t5, 420f
                  bge          zero, a1, 426f
                  sll          s1, gp, s2
                  xori         sp, t3, -1502
410:              add          zero, t5, s5
                  sra          sp, s4, t2
                  srli         a3, s8, 11
413:              addi         t1, t4, -127
                  srli         s3, t3, 22
                  bltu         t1, s3, 431f
                  ori          t2, a4, -1177
                  slti         s11, a0, -1507
                  sltiu        t2, a4, 1849
                  slt          a3, t6, gp
420:              andi         s0, t5, -2028
                  addi         a7, s5, 1616
                  bne          s6, t3, 435f
                  add          a1, s3, s2
                  or           t4, ra, zero
                  and          zero, t1, zero
426:              bge          s11, s1, 443f
                  ori          s3, s0, -126
                  auipc        s11, 643000
                  bltu         a4, a0, 439f
                  andi         zero, s4, -675
431:              blt          s10, s0, 432f
432:              slti         a3, s10, 289
                  ori          s2, t5, -705
                  ori          sp, a0, 19
435:              srai         s11, a7, 16
                  sra          t4, s10, a5
                  bgeu         a1, tp, 442f
                  srl          a2, t3, a7
439:              lui          sp, 316035
                  xori         a6, a3, 1692
                  blt          a2, t1, 444f
442:              add          a6, sp, tp
443:              sll          s5, t2, a1
444:              xor          tp, s9, a6
                  auipc        t5, 487464
                  xori         zero, t6, 372
                  bne          t5, s6, 460f
                  xor          s2, s9, ra
                  sltu         s11, sp, s3
                  sra          s11, s5, a4
                  srl          a2, t4, t1
                  slt          s4, s10, gp
                  sltu         t5, tp, s4
                  bge          s2, s7, 459f
                  sub          zero, a0, t5
                  lui          zero, 653697
                  add          t0, s7, a7
                  lui          s8, 708389
459:              blt          t1, sp, 472f
460:              slti         s8, t2, -1135
                  auipc        s9, 791563
                  sltiu        s3, s3, 1145
                  sll          s5, sp, t6
                  ori          s2, t0, -1213
                  blt          a7, a7, 481f
                  add          t0, a3, t6
                  xor          a3, sp, s11
                  addi         s1, gp, 1928
                  add          t3, t2, a3
                  slt          t4, tp, s1
                  and          a3, a2, gp
472:              slt          a7, s11, tp
                  sltu         a7, s9, a1
                  slt          s9, zero, a4
                  nop
                  sll          t4, a3, t5
                  lui          zero, 472284
                  nop
                  sra          s5, s6, t3
                  nop
481:              sub          s11, a3, a1
                  andi         t0, a1, 1177
                  xori         s3, t0, 1435
                  bltu         a0, s5, 492f
                  la           t4, region_0+1990 #start riscv_load_store_rand_instr_stream_0
                  lb           s9, -73(t4)
                  lb           a3, -245(t4)
                  lb           s8, -217(t4)
                  slti         s7, t3, -1339
                  lb           t6, -20(t4)
                  lbu          a7, -52(t4)
                  lw           s1, -198(t4)
                  sltu         a4, s10, s0
                  lbu          a5, -5(t4)
                  lbu          a5, -19(t4)
                  auipc        a3, 306687
                  lbu          tp, -37(t4)
                  addi         a0, t6, -528
                  lw           tp, -190(t4)
                  xori         t2, s11, 386
                  lb           s9, -226(t4)
                  xori         t2, s3, 1966
                  lbu          t3, 9(t4)
                  lhu          sp, -238(t4)
                  lbu          s2, -197(t4)
                  lb           s0, -34(t4)
                  and          gp, t1, a5
                  andi         t3, ra, 886
                  lui          a2, 655317
                  lh           s5, -154(t4)
                  sub          sp, s5, s0
                  lui          s11, 326175
                  lb           a1, -245(t4)
                  sh           a7, -20(t4)
                  lhu          s7, -212(t4)
                  sb           t0, -106(t4)
                  sh           t1, -104(t4)
                  srai         a4, a5, 11
                  lbu          a6, -93(t4)
                  sh           a1, -142(t4)
                  lhu          t6, -80(t4)
                  lui          s7, 309339
                  ori          sp, a7, 616
                  and          t5, a3, zero
                  slti         s0, tp, 410
                  and          t2, t5, tp
                  sltu         s11, s4, t5
                  xor          t6, s2, ra
                  and          s0, t5, t3
                  lbu          s0, -158(t4)
                  lbu          gp, -123(t4)
                  lui          s3, 358843
                  lbu          a4, -71(t4)
                  sh           t6, -170(t4) #end riscv_load_store_rand_instr_stream_0
                  beq          s4, s3, 495f
                  sltiu        a2, a1, 1224
                  sra          t0, s7, s9
                  and          a5, s6, s11
                  andi         gp, a2, 1100
                  sra          a2, s8, tp
                  xori         t1, t4, -155
492:              sub          s2, a6, s9
                  bgeu         a7, s2, 508f
                  sra          a3, t4, s9
495:              bge          s10, t1, 502f
                  andi         t5, t0, 300
                  lui          s0, 201637
                  lui          t5, 163530
                  auipc        a3, 593254
                  add          s1, s1, ra
                  sltiu        t0, a4, -1375
502:              lui          t0, 775471
                  srl          a3, s10, s10
                  slti         s0, a3, 992
                  srl          t5, a0, s5
                  xori         s8, s8, -474
                  sub          t1, zero, gp
508:              bge          t0, t4, 528f
                  xor          s1, t1, t6
                  sra          zero, a3, a7
                  sub          s1, t6, a5
                  sltiu        s8, a6, -358
                  bgeu         s6, s4, 523f
                  xori         s11, a3, 1783
                  xori         t5, a3, -918
                  ori          s1, a5, 514
                  sltu         s4, s4, t1
                  slt          s0, s10, s8
                  srli         gp, gp, 6
                  addi         t5, a6, -978
                  xori         t3, s1, 1991
                  bge          t5, t1, 536f
523:              and          t0, s11, zero
                  slli         zero, zero, 5
                  bltu         s11, sp, 538f
                  srl          sp, a7, s8
                  srli         a3, a2, 30
528:              bltu         t3, t5, 533f
                  and          s4, t2, s3
                  nop
                  srai         s11, s9, 6
                  xori         t3, t6, -699
533:              beq          a6, sp, 547f
                  bne          t5, a0, 553f
                  addi         a1, t5, -1542
536:              sra          t6, s6, s1
                  lui          t3, 602543
538:              bgeu         a7, sp, 548f
                  or           s4, tp, s9
                  ori          zero, t3, 469
                  srli         t3, gp, 31
                  slti         t1, s4, -501
                  auipc        a2, 695192
                  xori         a7, s2, -1244
                  and          a5, t6, s5
                  slt          t4, t6, t1
547:              bgeu         a2, s8, 565f
548:              lui          s2, 904109
                  add          gp, t3, s6
                  sll          s9, s1, sp
                  nop
                  sltu         t5, s6, a1
553:              lui          a5, 389308
                  sub          zero, s4, s6
                  sll          a3, sp, zero
                  slti         a6, s5, -1239
                  sub          s7, s6, s6
                  and          a1, s6, a4
                  xor          a1, t0, a4
                  srl          zero, a2, t4
                  ori          t3, a3, 1233
                  srai         gp, t0, 4
                  srl          s3, sp, s0
                  add          t2, zero, ra
565:              bgeu         a0, s11, 578f
                  bne          s4, s3, 582f
                  sltu         t4, t3, t0
                  xor          sp, a1, a1
                  andi         t4, t0, 509
                  ori          t4, tp, 1352
                  sltiu        a5, ra, 1102
                  xori         a6, s6, -262
                  sra          t6, s3, sp
                  srl          sp, a0, a4
                  sltu         a0, sp, s0
                  beq          t0, t2, 577f
577:              addi         s5, s0, -1977
578:              add          t3, zero, tp
                  srli         a1, a2, 30
                  ori          a7, s10, 1645
                  xor          zero, s10, t6
582:              sltu         t1, s1, a7
                  sltiu        a2, s9, -1855
                  xori         a0, t4, 127
                  blt          s8, tp, 604f
                  sub          s5, s10, s1
                  lui          a5, 952085
                  addi         t5, t5, -1860
                  ori          a4, tp, 237
                  xor          a4, s6, s3
                  nop
                  sra          s11, t5, a4
                  andi         t5, s4, 488
                  auipc        a6, 438486
                  sub          tp, a7, t1
                  bge          a3, s7, 613f
                  blt          s3, t0, 602f
                  ori          s0, t1, -1759
                  bgeu         s11, s8, 618f
                  auipc        a3, 983062
                  xori         t1, ra, 218
602:              nop
                  bltu         s9, t4, 605f
604:              and          t6, s9, s0
605:              sltu         s9, s4, t1
                  sll          s8, s1, zero
                  addi         s8, s5, -1467
                  sub          tp, t0, s8
                  blt          t4, s9, 622f
                  ori          a5, t3, -956
                  slt          t1, a5, tp
                  bge          s6, s2, 629f
613:              nop
                  sll          a3, t0, s8
                  ori          zero, a3, 880
                  xori         t5, a2, 504
                  srli         a1, a3, 29
618:              beq          ra, s3, 626f
                  andi         a0, a5, -22
                  slli         s3, t2, 18
                  lui          t4, 995949
622:              sll          s0, t4, t1
                  sltiu        a4, a6, 1922
                  beq          s6, s4, 644f
                  xor          s2, s1, s4
626:              slt          s9, s9, t5
                  beq          gp, t6, 643f
                  sll          s7, t6, t6
629:              auipc        a4, 115137
                  slt          a2, t3, t6
                  add          s2, s9, sp
                  sra          s2, a1, s10
                  blt          s0, a5, 643f
                  or           a6, a0, t1
                  slti         gp, t5, 455
                  sub          gp, a5, a1
                  slt          s2, s5, a0
                  add          s3, t0, a1
                  lui          t0, 809061
                  ori          s8, s7, 740
                  sra          s3, zero, a7
                  sub          s7, s3, t1
643:              slt          s4, s4, a5
644:              slt          s0, s3, s11
                  bge          zero, sp, 650f
                  bne          s6, t6, 649f
                  and          gp, s6, s0
                  or           s0, ra, t6
649:              sltu         zero, t6, gp
650:              srl          a5, t0, t1
                  addi         gp, t1, -1710
                  srli         a1, a0, 0
                  srl          t3, a2, t4
                  sra          zero, a7, s10
                  slt          a5, s11, s8
                  addi         t2, s4, -1244
                  xori         s3, t5, -1648
                  sub          s2, s5, t4
                  lui          a5, 499027
                  srl          s5, a7, tp
                  lui          s2, 1014429
                  srai         s4, s3, 28
                  slli         a0, a2, 14
                  xor          s4, s11, a5
                  sltiu        s3, a2, -1633
                  beq          s6, s0, 673f
                  xor          t6, s2, a6
                  srli         t6, a5, 15
                  add          a5, s9, a6
                  sll          t2, a2, tp
                  xori         s7, t4, 1860
                  bgeu         s3, t1, 687f
673:              bltu         t2, s1, 676f
                  sub          s0, t3, a1
                  srli         a2, s8, 6
676:              bltu         s8, a6, 678f
                  srl          t2, gp, a3
678:              addi         s2, t5, 1411
                  slti         sp, t1, 1694
                  xor          a5, s1, t1
                  nop
                  ori          gp, ra, 1433
                  slti         gp, t2, -1424
                  bltu         s10, a4, 694f
                  andi         s5, s8, 934
                  bge          t1, s11, 706f
687:              or           a6, s1, t1
                  bltu         a1, s0, 691f
                  nop
                  addi         tp, ra, 168
691:              sub          s3, a7, t5
                  sra          t6, s7, t4
                  srl          a4, s0, s10
694:              slt          t4, t3, tp
                  beq          t2, t0, 705f
                  add          s7, t6, s3
                  xor          t1, s6, s7
                  or           t4, s3, t4
                  srli         a5, t0, 1
                  xori         s1, s6, 702
                  addi         s3, t5, -1639
                  bne          s10, s3, 710f
                  slli         s2, s5, 8
                  bne          s8, s8, 720f
705:              beq          a1, s1, 724f
706:              bltu         s4, a7, 719f
                  xor          a3, s5, s0
                  sll          s5, a1, s5
                  nop
710:              bge          gp, a0, 715f
                  sub          t5, a2, sp
                  sltu         a2, zero, s1
                  slli         s5, t1, 25
                  beq          s4, a7, 728f
715:              lui          t5, 184604
                  slt          a0, t2, a2
                  bge          s2, s10, 722f
                  srli         a5, s4, 14
719:              andi         t2, t6, -98
720:              sltu         a2, t2, t1
                  xor          t6, t6, t6
722:              andi         s3, t3, 797
                  slti         a1, a0, 936
724:              addi         a1, s2, 346
                  ori          t4, s5, 1778
                  addi         zero, zero, 403
                  beq          tp, s6, 728f
728:              add          a2, gp, s10
                  addi         a2, s7, 586
                  sltiu        t1, t6, 4
                  bne          a7, ra, 750f
                  slt          s3, zero, t6
                  srai         tp, a0, 30
                  srai         t4, s9, 5
                  xori         s7, t3, -44
                  slti         a7, tp, -258
                  xor          a4, gp, a3
                  andi         sp, a1, -1470
                  sra          t0, s7, s9
                  bgeu         s5, s6, 745f
                  and          s2, a6, s3
                  or           zero, s3, sp
                  sltiu        t6, a1, -674
                  slti         t4, a2, -1173
745:              xori         gp, a6, -1413
                  srli         s1, a1, 26
                  ori          a3, s10, 1726
                  sltu         zero, t0, s4
                  xor          sp, a2, s10
750:              sll          s8, t2, s0
                  srai         sp, t5, 4
                  bltu         t1, s5, 759f
                  nop
                  sra          s3, s6, a7
                  slti         a4, a1, -696
                  lui          s2, 418520
                  addi         t0, s6, -530
                  sub          a3, a6, s5
759:              srai         s3, s11, 12
                  slti         s7, t4, 777
                  and          s2, a0, a1
                  sltiu        a5, a0, 534
                  sra          t3, s5, a6
                  bgeu         s4, t0, 771f
                  or           s3, sp, a7
                  srl          s1, tp, s3
                  and          a0, a6, gp
                  auipc        a0, 439704
                  addi         t0, t6, -774
                  addi         sp, t0, 1355
771:              sltu         t3, gp, a2
                  nop
                  or           s5, s10, gp
                  sra          a7, a1, a5
                  bltu         t0, s8, 791f
                  sltiu        s9, s0, -1577
                  nop
                  auipc        a2, 589854
                  sll          t5, s8, tp
                  lui          s9, 591027
                  srl          a0, s1, t4
                  blt          a4, t2, 784f
                  xori         a1, zero, -887
784:              srl          a6, a6, t3
                  sltu         s9, s5, t0
                  sra          s8, a0, s0
                  and          a7, ra, a6
                  bgeu         gp, a1, 803f
                  addi         a6, t5, -1011
                  nop
791:              srai         a6, s7, 31
                  xori         s1, a5, 1288
                  srl          gp, s3, t2
                  ori          s5, t2, -974
                  and          s8, t2, a4
                  or           s5, a3, s1
                  andi         t6, ra, 877
                  add          s9, t5, t6
                  bge          a0, s11, 801f
                  and          t2, t6, s6
801:              sltiu        t2, s3, -483
                  lui          tp, 958880
803:              sub          s2, t3, s3
                  nop
                  addi         a3, s0, -1189
                  slli         a6, zero, 30
                  srai         s11, t1, 11
                  slti         s11, s0, -458
                  srl          s8, t3, s1
                  sltiu        s5, t3, 1944
                  bgeu         gp, a1, 825f
                  srai         sp, t5, 17
                  sltiu        t6, s3, 1932
                  sll          a5, sp, s4
                  ori          a5, gp, -1779
                  or           s3, s0, s5
                  andi         a6, t5, -1799
                  and          t3, a4, s7
                  bltu         s11, t2, 832f
                  xor          gp, t0, s11
                  slli         a0, s9, 6
                  bltu         t3, gp, 840f
                  srai         t1, t1, 15
                  beq          ra, s4, 844f
825:              srai         a0, a5, 26
                  srai         s3, s3, 14
                  beq          s4, zero, 830f
                  srai         a3, a7, 2
                  xori         t5, a7, -1181
830:              srai         t2, a0, 30
                  bgeu         a3, s4, 850f
832:              slti         s11, s1, -77
                  bgeu         s7, a6, 843f
                  sltu         t1, s1, s10
                  xor          t2, s1, s3
                  srl          s0, s8, t2
                  andi         t0, a6, 513
                  sll          a2, a2, s3
                  srai         s9, s0, 6
840:              xori         t2, tp, -557
                  auipc        t4, 986381
                  auipc        a6, 52288
843:              srai         t5, s6, 24
844:              sltiu        t6, a1, 392
                  addi         t2, zero, -1755
                  blt          a0, zero, 863f
                  nop
                  sltiu        s7, tp, -1748
                  sll          a2, a0, sp
850:              bne          a7, s5, 863f
                  sltu         a3, s11, a0
                  auipc        t0, 812502
                  ori          s8, a1, 210
                  srai         a6, a0, 18
                  srli         t5, zero, 17
                  bgeu         s2, t6, 873f
                  sltiu        t5, s11, 1398
                  nop
                  bge          s3, s2, 864f
                  and          a1, s5, a1
                  xor          a7, s2, a3
                  ori          a3, s4, -1162
863:              bltu         a1, tp, 865f
864:              auipc        s4, 853812
865:              addi         s7, s2, 298
                  xor          gp, t1, a1
                  sub          a0, ra, s2
                  and          a5, s5, gp
                  sra          zero, a5, a7
                  xori         t2, a2, -1913
                  xor          a5, s5, ra
                  bltu         t6, s0, 891f
873:              srai         s2, s4, 16
                  srai         s1, a2, 0
                  nop
                  addi         a1, s4, 1589
                  sltiu        sp, a5, 527
                  and          t5, s1, s5
                  sltu         s3, a4, s11
                  and          gp, a6, s3
                  beq          s2, a5, 894f
                  add          s8, zero, a1
                  slli         s9, s2, 20
                  xor          a0, s5, s7
                  and          a7, t4, s11
                  or           s1, ra, t0
                  bne          t6, s0, 902f
                  add          t4, a7, s8
                  blt          a4, s8, 894f
                  xori         s8, s6, -808
891:              addi         a1, s0, -1259
                  blt          s2, a5, 912f
                  beq          a1, t5, 912f
894:              andi         s9, s9, -806
                  addi         a4, t0, -1669
                  srl          s11, s11, a2
                  xori         s11, s10, -315
                  or           tp, s2, s1
                  slti         s1, gp, -1091
                  xori         t3, t1, -155
                  srli         t0, a3, 27
902:              slli         tp, t4, 30
                  lui          a3, 205482
                  slli         t6, s9, 31
                  srl          a1, t3, a1
                  bne          a6, a1, 920f
                  srl          zero, t3, tp
                  sltu         s4, a7, s0
                  add          s4, t4, a3
                  srli         s8, t5, 13
                  bltu         s3, a2, 916f
912:              slti         a0, s10, 569
                  add          s0, t1, s1
                  addi         s2, a7, -917
                  slti         t1, s1, -1786
916:              lui          s1, 601797
                  srli         a5, s5, 27
                  beq          t1, s3, 936f
                  lui          t5, 974322
920:              nop
                  bgeu         zero, a2, 940f
                  srli         a6, s8, 3
                  slt          a5, t4, a1
                  bge          a0, t4, 927f
                  slti         s2, t2, -401
                  bge          t1, t5, 933f
927:              lui          gp, 578054
                  sltiu        s2, a3, -928
                  andi         s8, ra, 556
                  nop
                  bgeu         a4, ra, 947f
                  xori         t3, a5, 1743
933:              slli         t6, s1, 27
                  srai         t0, a6, 2
                  srli         s9, sp, 26
936:              nop
                  srai         s3, t3, 21
                  slti         zero, t4, -63
                  ori          t2, s8, -1790
940:              ori          a7, s5, -1986
                  add          sp, s11, a5
                  sub          a6, s7, s4
                  addi         a7, a5, 1240
                  slt          s4, s8, sp
                  xori         s9, a0, 1498
                  xori         t5, a6, -1162
947:              srl          a5, tp, a6
                  bne          ra, s6, 958f
                  lui          t0, 649064
                  auipc        a5, 981887
                  slti         t5, s1, 118
                  slli         t3, s9, 26
                  xori         t2, s6, 204
                  sub          t6, t4, t6
                  srai         s11, t4, 10
                  xori         s3, s10, 800
                  bge          s10, s8, 967f
958:              and          sp, a3, s0
                  bgeu         t2, s9, 972f
                  andi         s8, a2, 2001
                  addi         s4, tp, -1719
                  bne          s8, a7, 978f
                  auipc        t2, 979293
                  bgeu         t1, tp, 971f
                  sltu         s4, a4, s2
                  or           a5, a7, sp
967:              beq          s9, a6, 968f
968:              bge          a6, tp, 981f
                  addi         t6, s8, 1206
                  lui          a3, 732933
971:              srli         t6, t6, 23
972:              sub          t4, s8, a7
                  sra          s0, s10, a1
                  bge          t6, t2, 994f
                  or           sp, s8, s8
                  sltu         s9, s4, ra
                  sub          a0, t6, t2
978:              srai         s8, t5, 9
                  bne          t1, t6, 989f
                  addi         a6, s8, -409
981:              and          s1, a3, s11
                  lui          a7, 396501
                  sub          t5, s4, t1
                  slti         a5, t4, 1320
                  slti         t4, s9, 823
                  sra          a0, s9, t6
                  nop
                  and          a7, a3, t5
989:              beq          a0, s9, 992f
                  beq          t6, gp, 998f
                  auipc        s9, 143863
992:              sltiu        a5, ra, -1736
                  sll          gp, a4, t2
994:              ori          gp, t0, -874
                  sltu         t6, t2, s9
                  add          s0, t0, ra
                  sltiu        t4, a2, -146
998:              srli         t5, s5, 17
                  bge          t3, t6, 1013f
                  sub          a4, zero, tp
                  sltiu        a4, s6, 166
                  ori          s5, s7, 1370
                  ori          s1, a7, -1177
                  srai         a5, t5, 31
                  srai         a5, s7, 20
                  xor          a5, s1, t2
                  xor          s4, s5, t3
                  xor          t4, t3, t0
                  slt          s2, t1, s8
                  bgeu         a1, t0, 1027f
                  ori          a0, s0, 1710
                  addi         t2, a6, 1912
1013:             slli         s5, s6, 6
                  bne          a5, a1, 1031f
                  sub          s7, s8, t4
                  andi         a7, s1, 180
                  auipc        sp, 569692
                  lui          s3, 1010572
                  bltu         s2, a0, 1021f
                  lui          a5, 50148
1021:             sra          s9, gp, t4
                  xori         t3, t2, 843
                  sll          s9, ra, s5
                  slti         t1, gp, -1304
                  sra          a3, s9, s10
                  ori          s7, sp, -501
1027:             blt          s4, s0, 1044f
                  srai         s9, zero, 17
                  srai         sp, t5, 28
                  addi         gp, t6, -1819
1031:             srai         s8, t3, 19
                  beq          t5, s3, 1042f
                  slli         zero, s8, 19
                  bgeu         t5, s5, 1036f
                  bge          t4, t4, 1054f
1036:             slli         a5, t3, 19
                  or           s8, a5, a5
                  slti         s9, a0, -1644
                  addi         s11, ra, 83
                  ori          a6, t6, 745
                  or           s0, s3, a6
1042:             sltu         t4, s3, t3
                  sra          t2, a6, a6
1044:             and          zero, s4, s2
                  bltu         a3, s8, 1047f
                  sub          s5, a7, s11
1047:             slli         s9, a6, 27
                  slt          t3, t0, t1
                  andi         s7, s2, 516
                  xor          t0, t5, s10
                  add          s4, a5, a4
                  sltu         s2, tp, t2
                  srli         s5, s1, 11
1054:             sltu         s5, s5, a6
                  sll          t6, s9, s5
                  nop
                  slli         s11, s2, 28
                  blt          ra, a6, 1065f
                  auipc        zero, 178345
                  andi         a6, s0, 1548
                  auipc        s5, 533822
                  bge          a1, a7, 1065f
                  add          a4, sp, s9
                  add          a2, a6, s2
1065:             blt          s7, t2, 1068f
                  addi         s5, s0, -6
                  addi         s11, s8, 1830
1068:             sra          s2, a2, s0
                  sltiu        s9, a5, 807
                  lui          gp, 787849
                  srl          t3, s1, t2
                  ori          s4, s9, 216
                  ori          t4, sp, 144
                  bltu         gp, a4, 1094f
                  slli         t3, s2, 10
                  bge          a3, a1, 1089f
                  bgeu         t1, gp, 1082f
                  bne          a3, sp, 1096f
                  sub          s8, a6, a0
                  sub          a7, t5, t0
                  ori          s11, ra, -1315
1082:             sub          t2, s9, a0
                  sub          a6, s10, a7
                  and          t0, a3, s6
                  srli         a3, t1, 8
                  bgeu         a6, s4, 1096f
                  srai         s8, gp, 8
                  srai         a7, t3, 7
1089:             slti         t6, s10, -853
                  bgeu         s9, t4, 1091f
1091:             xori         a1, s9, 1235
                  bge          tp, t0, 1099f
                  xori         a5, t1, -2032
1094:             and          a4, a4, t2
                  or           t2, s4, a2
1096:             slt          t1, t4, a2
                  beq          s2, s3, 1112f
                  sub          s1, zero, t5
1099:             nop
                  xori         gp, s6, -880
                  beq          gp, s7, 1106f
                  ori          s2, s8, 1127
                  bne          t3, s0, 1111f
                  lui          s5, 841943
                  or           s5, s8, t4
1106:             addi         a4, ra, -865
                  srli         s7, s6, 19
                  sltu         s9, s3, gp
                  sltiu        s4, a0, 312
                  ori          t0, t2, -384
1111:             add          t4, t5, s5
1112:             bgeu         s11, gp, 1122f
                  bne          s11, t0, 1127f
                  beq          s4, a0, 1128f
                  auipc        s0, 355616
                  bltu         s4, a1, 1129f
                  andi         t1, a5, -1132
                  addi         s7, a2, -1860
                  lui          s0, 974360
                  xor          a3, s2, t6
                  slti         tp, t1, 1158
1122:             and          t0, a2, gp
                  lui          s8, 248670
                  andi         sp, tp, -1306
                  blt          a6, a4, 1130f
                  ori          a3, a0, 986
1127:             slt          a6, s9, t3
1128:             bge          a1, a4, 1145f
1129:             sll          s9, a0, t0
1130:             ori          t2, gp, -610
                  sub          s9, a0, t3
                  sll          a3, a2, a3
                  sll          t2, gp, a2
                  auipc        a6, 110338
                  ori          s7, tp, 301
                  add          a2, a0, t6
                  slli         a1, gp, 1
                  addi         a0, s7, -1459
                  and          gp, sp, a4
                  beq          s8, s10, 1159f
                  srl          sp, s4, s5
                  bltu         s0, zero, 1158f
                  blt          s8, s9, 1159f
                  beq          s1, s4, 1157f
1145:             addi         t1, s3, -1859
                  sltu         a4, s2, a7
                  andi         s3, t3, 102
                  add          s11, a1, t5
                  srai         zero, a2, 28
                  lui          s3, 114199
                  bgeu         a6, s4, 1171f
                  slt          s0, s10, s4
                  sltu         t6, a2, s3
                  sltu         t0, s2, s1
                  beq          s3, t1, 1174f
                  sll          zero, s5, a3
1157:             and          s4, s9, a5
1158:             bge          s4, a3, 1168f
1159:             addi         t3, t1, -151
                  beq          a2, s3, 1167f
                  ori          sp, s11, 811
                  and          s0, sp, a5
                  andi         a4, s6, -1555
                  srli         s0, gp, 5
                  nop
                  sll          gp, gp, a2
1167:             add          t0, tp, s7
1168:             addi         s2, a0, -1101
                  lui          a3, 202686
                  srai         t4, s3, 20
1171:             andi         zero, s9, -506
                  srli         a3, t1, 16
                  andi         zero, s0, 658
1174:             beq          a5, a7, 1187f
                  bgeu         t0, s8, 1177f
                  srli         t4, s5, 26
1177:             beq          a2, s4, 1194f
                  slti         s11, s7, 177
                  bgeu         a7, t3, 1192f
                  nop
                  beq          t6, t2, 1196f
                  addi         a4, t6, 874
                  and          s11, s10, t4
                  auipc        s5, 237006
                  blt          t3, a2, 1202f
                  lui          t6, 606972
1187:             srl          a6, a5, t5
                  sltiu        s4, t3, -1537
                  lui          t0, 228551
                  slti         t5, tp, 1087
                  bge          s4, t0, 1209f
1192:             srl          tp, t6, zero
                  srai         s5, t6, 5
1194:             bne          a3, gp, 1199f
                  bne          t1, s11, 1197f
1196:             bge          s10, zero, 1216f
1197:             sll          a5, gp, zero
                  bltu         s3, gp, 1203f
1199:             beq          ra, t3, 1212f
                  ori          zero, s7, -1080
                  sltu         s0, t2, a2
1202:             sra          t5, s3, a3
1203:             bge          s11, t3, 1222f
                  bltu         gp, s5, 1214f
                  bgeu         gp, t1, 1221f
                  slti         t0, s9, -2016
                  or           s4, t0, s2
                  beq          t5, t1, 1215f
1209:             srai         s11, s9, 13
                  lui          s0, 898301
                  bgeu         s9, t5, 1219f
1212:             slli         s5, s10, 24
                  blt          s11, t0, 1223f
1214:             xori         s3, a1, -796
1215:             slti         t2, a0, -1076
1216:             ori          s0, a5, -803
                  sub          tp, s11, s4
                  srl          s3, gp, s11
1219:             sll          s7, t6, s4
                  bge          s6, s10, 1234f
1221:             lui          t3, 254673
1222:             bgeu         a1, a7, 1225f
1223:             xor          s11, zero, a5
                  andi         a1, gp, 1395
1225:             bge          a3, s7, 1230f
                  la           sp, region_1+1601 #start riscv_load_store_rand_instr_stream_3
                  lb           s8, 202(sp)
                  sb           s0, 88(sp)
                  lbu          s4, 197(sp)
                  lb           t5, -32(sp)
                  lh           t1, 15(sp)
                  nop
                  auipc        a2, 1011655
                  andi         a3, s0, -1
                  sb           t1, 210(sp)
                  srl          a3, zero, s11
                  sb           a3, -84(sp)
                  srai         a0, t6, 25
                  lb           s2, -92(sp)
                  srai         s1, s4, 21
                  sb           s11, -16(sp)
                  nop
                  sh           s6, -231(sp)
                  addi         t2, t1, -318
                  slti         s3, s10, -1957
                  sb           s1, 208(sp)
                  lb           a7, 243(sp)
                  lbu          a7, -198(sp)
                  lw           a1, 23(sp)
                  lbu          s11, -128(sp)
                  and          a6, s4, s2
                  sh           s0, 11(sp)
                  sh           t4, 209(sp)
                  lb           a7, -18(sp)
                  lh           a0, -165(sp)
                  sb           s0, 55(sp) #end riscv_load_store_rand_instr_stream_3
                  sltu         s9, sp, a3
                  auipc        a7, 446118
                  bltu         s8, t4, 1247f
                  xori         s5, a7, 589
1230:             slt          t1, s4, t2
                  sra          a1, s10, s9
                  ori          a5, t0, -584
                  srai         s5, a6, 17
1234:             xor          a4, a2, sp
                  andi         s3, gp, -1909
                  sll          tp, t5, a7
                  ori          s1, a3, -103
                  nop
                  or           s0, s7, t4
                  srai         s4, s0, 29
                  auipc        s8, 737163
                  srli         s9, sp, 22
                  or           s2, a0, s10
                  lui          s3, 327767
                  lui          t1, 280112
                  beq          t5, s0, 1266f
1247:             sub          s2, s2, tp
                  bne          s2, a6, 1267f
                  srai         t2, s2, 9
                  bne          s10, a1, 1251f
1251:             srli         t3, t3, 13
                  nop
                  bgeu         t1, t0, 1269f
                  bltu         gp, a3, 1257f
                  slli         tp, a2, 26
                  addi         s1, s0, -1376
1257:             sra          t1, a3, ra
                  slt          t3, s4, sp
                  slti         s4, s9, 316
                  bne          s5, tp, 1274f
                  ori          s7, a6, -1050
                  and          a4, a5, s1
                  or           tp, s2, tp
                  andi         a5, s4, -1688
                  beq          sp, s6, 1268f
1266:             xor          t0, t6, a2
1267:             sra          zero, s9, s8
1268:             add          a2, t1, s7
1269:             blt          a2, s7, 1276f
                  add          s7, t2, sp
                  auipc        a2, 54648
                  bge          s6, s2, 1282f
                  xor          s9, a1, a0
1274:             slti         t0, s9, 788
                  bgeu         t5, a0, 1294f
1276:             xori         a7, t6, -1452
                  srai         t4, s10, 13
                  addi         s4, s9, 689
                  srli         s2, t1, 8
                  addi         gp, s2, 1031
                  sra          sp, s7, s10
1282:             xor          s8, gp, t1
                  bge          s9, a2, 1300f
                  sub          t5, s11, t2
                  ori          t2, t4, 1105
                  bne          sp, a5, 1291f
                  bge          tp, a5, 1303f
                  addi         s8, t0, 513
                  beq          t0, sp, 1307f
                  andi         gp, s9, 1677
1291:             slli         s0, t0, 19
                  andi         t2, s0, -1756
                  add          a3, a5, a5
1294:             slti         t1, a7, -75
                  sltiu        a0, a2, -1020
                  sra          a3, a6, a6
                  or           t6, a1, a0
                  bgeu         a6, t0, 1300f
                  slli         s0, t1, 26
1300:             lui          t2, 810337
                  add          s1, tp, s2
                  bge          t3, t4, 1321f
1303:             or           a4, t6, s11
                  bne          a0, s3, 1323f
                  bltu         a4, a0, 1318f
                  sub          t5, t3, tp
1307:             slti         s8, s2, 861
                  srl          gp, s9, a2
                  bge          zero, s10, 1322f
                  blt          t2, s1, 1311f
1311:             addi         a3, t3, 1371
                  slti         t5, s10, -123
                  sll          t3, sp, ra
                  addi         a3, s4, -1017
                  addi         s4, sp, -1735
                  srli         a2, t3, 5
                  ori          t2, s10, -980
1318:             sltu         s4, s5, s10
                  ori          s4, sp, -1466
                  xor          t3, gp, s4
1321:             sra          a7, t0, t4
1322:             auipc        s5, 989000
1323:             xori         s4, s8, 1896
                  srl          a1, ra, s9
                  and          sp, t0, s10
                  slti         t6, t5, -1132
                  nop
                  bne          tp, gp, 1338f
                  slt          s3, a2, s0
                  blt          s9, a3, 1340f
                  addi         t0, ra, 187
                  blt          a4, a6, 1352f
                  blt          a2, gp, 1349f
                  slt          t2, s3, s8
                  beq          gp, a5, 1337f
                  beq          t2, a1, 1344f
1337:             sltiu        t3, a2, 158
1338:             or           a0, t3, s9
                  sub          t5, ra, s7
1340:             sub          t5, t6, s4
                  ori          s2, s7, 966
                  addi         a4, t4, 1539
                  nop
1344:             add          s9, a0, s4
                  addi         s1, s8, 1363
                  bne          a5, a2, 1349f
                  lui          a1, 705702
                  and          t3, sp, a4
1349:             srl          zero, s7, t6
                  sltiu        t4, t6, 354
                  sll          t4, a6, a6
1352:             srli         zero, s3, 21
                  xor          sp, t3, s5
                  blt          s10, s7, 1368f
                  bne          ra, a6, 1360f
                  slli         a1, a1, 15
                  sra          t3, zero, gp
                  addi         tp, a7, 519
                  xori         s8, s7, 798
1360:             blt          s6, a6, 1374f
                  srl          s2, s6, a5
                  sltu         s0, t6, s7
                  and          a7, a3, t6
                  slli         t4, s7, 16
                  srli         zero, a5, 17
                  bge          s6, a2, 1373f
                  bgeu         t2, t6, 1387f
1368:             beq          a6, t2, 1373f
                  add          gp, tp, s5
                  sltu         a2, s4, a3
                  or           a7, s10, s2
                  srl          s3, gp, t5
1373:             sltu         s0, t1, s11
1374:             sltiu        zero, s8, -1266
                  sltu         t3, s2, t1
                  auipc        s8, 134463
                  bgeu         t4, t4, 1390f
                  bgeu         s6, s10, 1393f
                  xor          a4, t3, t5
                  sltu         s0, gp, gp
                  auipc        a6, 742093
                  srl          s1, s1, t2
                  andi         s3, a4, -1629
                  slt          s0, a1, s1
                  or           a6, s8, tp
                  sltu         s4, s11, s10
1387:             nop
                  bltu         a4, s6, 1405f
                  srl          s2, t2, a3
1390:             srai         s4, s8, 16
                  nop
                  beq          s3, s10, 1405f
1393:             andi         s4, a4, -345
                  slt          s3, a5, t6
                  blt          a1, a1, 1414f
                  nop
                  and          s8, t2, a3
                  srli         s2, s3, 7
                  ori          a1, s8, -1405
                  lui          a2, 610384
                  blt          s2, s4, 1421f
                  sltiu        t5, s1, -1660
                  and          gp, s3, t2
                  bne          t0, sp, 1420f
1405:             sra          t5, s8, t1
                  sltiu        s9, a6, -182
                  srli         t2, s7, 3
                  bne          s9, gp, 1426f
                  bge          sp, t6, 1425f
                  auipc        s2, 880451
                  bge          s3, a5, 1421f
                  andi         a2, t4, 350
                  ori          a0, t2, -110
1414:             sltu         t1, t0, ra
                  xor          tp, a0, s1
                  sra          t6, s9, t5
                  beq          sp, gp, 1420f
                  sll          a5, a1, t0
                  nop
1420:             srai         t5, s0, 1
1421:             nop
                  sra          s1, s8, t1
                  add          a7, t0, ra
                  srai         a7, s8, 7
1425:             xor          t5, t5, t6
1426:             or           s4, t6, t2
                  slt          a4, a6, s0
                  ori          s0, s9, -1921
                  srli         s9, a5, 1
                  nop
                  sra          t0, s1, s1
                  auipc        t6, 181882
                  bge          zero, s7, 1441f
                  bltu         s10, a5, 1454f
                  slt          s4, s7, t4
                  sltu         s9, a6, a7
                  blt          s7, t6, 1442f
                  addi         s11, t3, -857
                  srli         a3, a1, 11
                  srl          gp, sp, t2
1441:             beq          t2, t2, 1455f
1442:             xor          a0, t5, s6
                  sub          a7, s6, s9
                  bge          s2, a1, 1459f
                  sub          s2, sp, t4
                  slli         tp, s5, 30
                  slti         tp, s4, 1706
                  auipc        s3, 806696
                  sub          s7, s5, t3
                  nop
                  bltu         s1, tp, 1464f
                  la           a5, region_0+631 #start riscv_load_store_rand_instr_stream_9
                  sb           t2, 196(a5)
                  sltiu        a0, s5, -1805
                  lb           a3, -175(a5)
                  xori         a0, a2, 525
                  add          t2, a4, t3
                  and          sp, s8, t1
                  andi         a0, s5, 1470
                  lhu          zero, 207(a5)
                  lb           a2, 220(a5)
                  xor          a6, s11, s10
                  sltu         t4, sp, a2
                  sb           tp, 250(a5)
                  lui          s1, 479017
                  slti         s5, zero, -1483
                  add          t3, s9, gp
                  and          s5, zero, s6
                  sltiu        s3, s10, 562
                  or           s3, s1, s4
                  slt          a0, t3, gp
                  xor          s11, s6, t0
                  ori          t6, a7, 1347
                  and          s9, t6, s4
                  slli         gp, s7, 23
                  lbu          gp, 58(a5)
                  slti         sp, a3, 1034
                  sub          a0, a6, t3
                  lbu          t5, -79(a5)
                  srli         a1, a1, 3
                  ori          t6, t4, 100
                  slt          s8, s8, a7
                  xori         s11, tp, -1531
                  lbu          s3, -232(a5)
                  lbu          a6, -248(a5)
                  lb           zero, -12(a5)
                  sb           s8, -208(a5)
                  lh           s5, -139(a5)
                  ori          t4, s6, -1370
                  lbu          a6, -118(a5) #end riscv_load_store_rand_instr_stream_9
                  add          t4, s8, t2
                  sltu         tp, t6, a7
1454:             srl          s8, t5, t5
1455:             srai         s9, s1, 28
                  sub          a7, sp, t4
                  add          zero, t5, t0
                  nop
1459:             bne          t3, s6, 1462f
                  add          t2, s4, s11
                  srai         a0, s7, 23
1462:             xori         a1, sp, 1573
                  bgeu         sp, a6, 1476f
1464:             sltiu        s2, a5, -467
                  sltiu        a7, s3, -164
                  addi         a1, s0, -1706
                  blt          t6, a0, 1477f
                  bltu         t3, gp, 1470f
                  auipc        a4, 811770
1470:             xor          t6, a5, s9
                  ori          a2, t5, -1627
                  sltiu        s7, s2, -1061
                  sub          s2, s11, s5
                  srai         s2, a2, 16
                  andi         t0, t0, -567
1476:             slli         s8, ra, 3
1477:             nop
                  srl          t6, s7, a5
                  xor          a1, a7, s6
                  sltiu        t4, a7, -652
                  auipc        a2, 924111
                  sltiu        tp, t0, -496
                  blt          a4, s1, 1502f
                  beq          s6, s0, 1498f
                  xori         s7, a4, -1758
                  or           a6, t5, a2
                  slti         a6, s4, 2004
                  lui          tp, 470968
                  srai         a4, a4, 13
                  ori          s3, s4, -1206
                  sltu         s2, a0, t2
                  slt          t4, a1, t4
                  sltu         s0, s10, t0
                  sll          s11, s3, s0
                  addi         s9, gp, -1882
                  auipc        s5, 464257
                  add          t0, a4, s2
1498:             sra          a2, s3, sp
                  nop
                  bne          a2, t1, 1517f
                  sub          s7, t4, a5
1502:             sll          s2, t0, s8
                  bgeu         t4, t3, 1513f
                  slti         a5, t6, -114
                  beq          a5, ra, 1510f
                  xori         t5, t2, -1861
                  xor          s7, t4, s3
                  xori         tp, a0, -32
                  xor          s9, s6, t3
1510:             sltu         a4, a2, t5
                  beq          t4, s10, 1518f
                  srai         t5, tp, 1
1513:             or           t3, t0, t0
                  sll          t3, zero, t1
                  bne          a4, s4, 1532f
                  sra          s2, ra, t6
1517:             or           s1, s8, s1
1518:             slt          t2, s11, s7
                  ori          s9, t2, -1693
                  addi         s3, t4, 1034
                  or           gp, s4, ra
                  and          t6, t6, s2
                  slti         a7, a2, 360
                  xori         s5, tp, 1588
                  bgeu         a4, s0, 1532f
                  bne          s6, s6, 1528f
                  bge          s8, a7, 1546f
1528:             sll          tp, s1, a5
                  beq          s9, t2, 1530f
1530:             slti         sp, ra, -216
                  sltu         t5, s11, s11
1532:             slti         a3, s2, 438
                  or           s9, ra, a1
                  blt          a0, a0, 1539f
                  bgeu         s3, s5, 1538f
                  slli         a3, a2, 7
                  and          t1, s1, a6
1538:             slti         s8, s5, 585
1539:             andi         a6, t5, 1589
                  srli         zero, a1, 3
                  slt          t0, a1, a3
                  xori         t1, s11, -675
                  add          s0, gp, sp
                  sra          a6, s11, a6
                  bltu         t3, s7, 1558f
1546:             sra          sp, s7, s4
                  blt          t1, t6, 1561f
                  bltu         sp, a1, 1562f
                  bne          a5, s4, 1566f
                  xori         s4, a1, -1758
                  sltiu        a3, t2, 1792
                  bltu         t0, s10, 1562f
                  srli         s7, s8, 26
                  sltu         a1, t0, s1
                  beq          s10, s10, 1565f
                  andi         t3, s4, 870
                  srl          s5, s8, a5
1558:             add          a4, a0, s11
                  ori          tp, a6, -1729
                  beq          t1, a0, 1567f
1561:             sll          a0, t3, s5
1562:             sra          t4, s9, a5
                  ori          t2, s3, 1961
                  nop
1565:             or           s7, s2, t0
1566:             bltu         s9, a7, 1584f
1567:             srl          zero, t6, s9
                  bge          a0, t6, 1587f
                  beq          t6, s6, 1585f
                  sub          a3, t3, t2
                  bltu         s5, t3, 1590f
                  slt          s4, s1, t5
                  auipc        a4, 36495
                  addi         s5, t6, 143
                  and          s7, gp, a0
                  lui          s4, 145473
                  nop
                  lui          sp, 301697
                  bgeu         s8, a1, 1599f
                  ori          s9, t3, -1218
                  ori          a1, zero, 1809
                  nop
                  andi         s4, s9, 991
1584:             bltu         a5, a1, 1589f
1585:             auipc        t3, 630714
                  sra          s1, tp, a0
1587:             sra          s5, s2, s6
                  xori         gp, a1, 113
1589:             auipc        gp, 605743
1590:             srl          a4, ra, t4
                  bltu         s9, s5, 1604f
                  beq          tp, s4, 1611f
                  sub          s7, s0, a7
                  lui          a3, 913014
                  sub          a0, a2, t3
                  xor          a4, a6, s8
                  addi         s3, s8, -225
                  bge          sp, t0, 1611f
1599:             xori         s8, s9, 1030
                  sra          t0, ra, a4
                  auipc        sp, 892145
                  sltiu        a5, s9, -1635
                  addi         a2, s8, -1442
1604:             lui          t6, 276050
                  sltiu        s8, t4, 928
                  blt          s11, a3, 1623f
                  slt          a0, a4, s3
                  bgeu         s9, s3, 1610f
                  slti         t2, ra, 1109
1610:             slti         t4, a2, -682
1611:             lui          s11, 313564
                  add          t6, a4, a0
                  sll          s9, t3, tp
                  beq          s2, t6, 1615f
1615:             srli         s4, s4, 18
                  lui          t0, 757046
                  sub          t6, s4, s8
                  or           a7, s11, sp
                  bne          t2, s1, 1622f
                  and          s11, s2, gp
                  srl          gp, s9, s1
1622:             bne          t5, s2, 1642f
1623:             bge          t5, s7, 1639f
                  beq          t4, t0, 1629f
                  srai         a4, zero, 7
                  bne          sp, s3, 1633f
                  slt          a6, a1, s0
                  srl          t0, t3, s6
1629:             sra          a2, t4, t6
                  auipc        a0, 352019
                  slt          s11, a6, a4
                  ori          a7, s3, 1033
1633:             and          gp, a6, zero
                  auipc        t0, 952061
                  xori         s11, s1, -1814
                  ori          gp, tp, 416
                  addi         s1, s9, 1090
                  xor          tp, a5, a2
1639:             sra          s9, a7, a7
                  sltiu        a5, t3, -1342
                  bltu         a2, s3, 1651f
1642:             srl          s3, t3, a0
                  slli         t1, a3, 31
                  ori          t3, a0, 1335
                  add          a4, s8, t3
                  bgeu         a2, zero, 1648f
                  sltu         tp, ra, gp
1648:             srl          t5, s11, a1
                  lui          t4, 884992
                  bgeu         s5, a0, 1658f
1651:             addi         a4, a5, 1497
                  xor          t5, t2, s2
                  ori          gp, ra, -626
                  sll          a2, a3, s7
                  ori          t2, a7, -158
                  bltu         s5, s9, 1671f
                  bge          sp, s8, 1662f
1658:             slti         s0, a5, 1428
                  slti         t2, s8, 1327
                  sra          t2, s2, ra
                  sra          s4, s9, s6
1662:             add          s2, ra, a5
                  srai         a1, gp, 1
                  andi         a2, sp, -1066
                  sll          t0, a4, s11
                  add          sp, a2, t0
                  auipc        gp, 877240
                  srl          a7, s7, t0
                  blt          t2, zero, 1689f
                  bne          a4, a6, 1689f
1671:             bge          t3, a1, 1686f
                  sltu         a0, s4, t2
                  ori          t6, gp, 632
                  or           t6, s2, a4
                  nop
                  srl          t6, sp, ra
                  or           t4, s10, s10
                  sltiu        a4, zero, -627
                  srl          t2, a5, a4
                  andi         s11, zero, -1390
                  sub          t6, s6, s11
                  sll          t0, s11, a1
                  slli         a6, s10, 27
                  srl          a4, t0, a2
                  slti         t0, sp, -1739
1686:             xor          t4, zero, a4
                  xor          s9, s3, a7
                  bne          tp, t1, 1698f
1689:             sltu         sp, t2, a5
                  srli         s8, ra, 12
                  bne          t4, s10, 1699f
                  bgeu         t2, a7, 1705f
                  srli         a6, s10, 29
                  lui          t4, 864601
                  slti         a2, t6, -1585
                  addi         s7, s7, -328
                  andi         zero, gp, 1251
1698:             sll          t2, a6, tp
1699:             xori         a4, s7, -1417
                  srli         s4, a5, 6
                  andi         s7, a0, -1437
                  auipc        a1, 427741
                  srai         s8, s9, 25
                  beq          tp, s10, 1717f
1705:             sltiu        zero, sp, 760
                  bltu         a7, s4, 1713f
                  andi         t5, a7, 170
                  ori          gp, t5, -1486
                  bne          s5, s1, 1712f
                  bge          t3, s10, 1720f
                  add          t5, ra, s0
1712:             xori         s5, a2, -251
1713:             auipc        gp, 151550
                  sltiu        t5, s2, -94
                  srl          s8, t1, t6
                  bne          tp, s4, 1732f
1717:             sra          t2, t5, s9
                  ori          s11, s0, -1463
                  slli         t3, t5, 8
1720:             bge          a1, a6, 1730f
                  sll          a5, t2, s4
                  slli         a7, s1, 10
                  slt          a2, t6, a3
                  slli         a7, s8, 24
                  ori          t6, s4, -1558
                  bge          s4, a7, 1746f
                  lui          s2, 172664
                  xor          t1, t2, s5
                  andi         s0, tp, 469
1730:             ori          a3, a6, 859
                  slli         t5, t3, 20
1732:             bge          s8, t5, 1751f
                  ori          t3, s0, -1676
                  nop
                  srl          t3, gp, t3
                  xor          a0, t5, s8
                  beq          s2, s2, 1755f
                  slli         sp, tp, 25
                  or           s9, t2, a0
                  lui          s4, 848476
                  bltu         s4, a5, 1744f
                  or           a3, a7, t0
                  bltu         zero, t1, 1748f
1744:             slt          s11, s3, t3
                  sll          s9, s8, a1
1746:             srai         a7, t0, 29
                  sll          t0, s10, a7
1748:             xori         zero, s7, 1843
                  bgeu         t4, s9, 1751f
                  bge          s9, t4, 1751f
1751:             bltu         s7, s8, 1753f
                  slli         t5, s1, 29
1753:             bne          t4, gp, 1770f
                  and          a6, a2, s7
1755:             sltu         s7, s3, s3
                  or           a3, a0, a3
                  and          tp, a7, a5
                  slt          s4, zero, s1
                  bge          t4, a1, 1764f
                  sra          a7, t4, a3
                  blt          t6, t4, 1768f
                  nop
                  addi         s3, a6, 905
1764:             blt          s11, ra, 1781f
                  srli         t3, s9, 7
                  xor          s5, s3, t2
                  srli         a6, s0, 27
1768:             and          s2, s11, t4
                  slti         t4, a4, -1791
1770:             sltu         t4, a6, a2
                  sltu         s8, s10, a4
                  lui          t5, 41484
                  slli         a1, a0, 21
                  sub          gp, a3, s10
                  and          t4, s10, s10
                  bgeu         s9, s7, 1789f
                  andi         a1, a5, -1584
                  ori          s11, s7, 163
                  beq          zero, a4, 1798f
                  srl          tp, s8, ra
1781:             sltiu        t2, tp, -520
                  srai         s9, a7, 10
                  srai         s5, a4, 27
                  andi         s8, s5, -2031
                  sltu         s11, t4, gp
                  bgeu         a5, t5, 1802f
                  blt          a1, s3, 1792f
                  blt          ra, t5, 1802f
                  la           t3, region_0+1999 #start riscv_load_store_rand_instr_stream_13
                  xori         s11, s10, 1678
                  lh           s9, -1(t3)
                  srai         s3, s3, 13
                  srli         sp, s4, 31
                  sub          t2, t5, ra
                  sb           s9, -7(t3)
                  xori         a6, a3, -1170
                  sb           t2, -16(t3)
                  xori         t2, s9, 72
                  addi         a7, s5, -233
                  slt          s3, t1, t5
                  lui          gp, 353804
                  slt          t2, a5, a1
                  xori         gp, t1, -748
                  slt          zero, a2, a0
                  sb           a1, -7(t3)
                  sb           a1, -2(t3)
                  lbu          a1, -13(t3)
                  sltiu        a1, t3, 748
                  sltiu        a7, t4, -145
                  lui          t0, 303557
                  lbu          s11, -2(t3)
                  sub          s7, a1, s4
                  srli         s4, s8, 30
                  sb           a5, -12(t3)
                  nop
                  srli         a3, s5, 11
                  sll          s1, s3, s9
                  addi         t1, a2, 117
                  sra          a7, t4, t5
                  or           a7, tp, a6
                  slt          s2, a0, t2
                  andi         t2, s4, 280
                  srai         a0, sp, 18
                  ori          a5, t2, 480
                  slti         s0, a1, 97
                  slti         s3, s8, -1763
                  sltiu        s2, a3, 1130
                  lbu          s5, -13(t3)
                  sb           a3, -8(t3) #end riscv_load_store_rand_instr_stream_13
1789:             andi         s0, s10, 1658
                  add          t6, a0, a2
                  sltiu        t1, s4, -1162
1792:             auipc        a1, 1005883
                  nop
                  sra          t6, s10, s8
                  and          s0, a3, gp
                  bge          a5, gp, 1810f
                  bge          a6, s8, 1812f
1798:             bltu         t6, tp, 1818f
                  sra          s7, a7, a0
                  srl          a3, s11, zero
                  or           s8, a3, s10
1802:             lui          a6, 459809
                  slli         s0, a7, 7
                  ori          s3, s11, 1358
                  slli         s9, a7, 29
                  xor          a5, a3, s7
                  auipc        s2, 295253
                  andi         t6, s9, 900
                  sltu         t6, s6, s3
1810:             bgeu         t3, a5, 1829f
                  auipc        gp, 856424
1812:             sltiu        a5, s5, -214
                  sub          a1, s9, sp
                  addi         s2, t2, -1130
                  srai         t6, t6, 22
                  and          a1, t6, s2
                  slt          t3, a2, t4
1818:             add          a1, s6, a1
                  srli         t3, a2, 12
                  add          t6, a0, ra
                  and          a2, t5, s9
                  and          s2, s10, a4
                  xori         s0, s9, 859
                  srai         t5, s1, 29
                  xor          sp, s6, a3
                  sra          t1, s1, tp
                  srli         s3, s10, 2
                  bge          t4, a3, 1844f
1829:             beq          ra, ra, 1830f
1830:             lui          a3, 754651
                  xori         s9, t3, 924
                  bltu         t6, a7, 1835f
                  bltu         a6, t6, 1847f
                  srai         s9, t5, 16
1835:             blt          a3, t0, 1837f
                  xori         a3, s5, 276
1837:             sub          s3, t5, s1
                  sub          a2, sp, s8
                  sll          t1, s7, s10
                  nop
                  sub          t4, a3, s7
                  sra          t1, s4, gp
                  srl          a5, s3, s9
1844:             bltu         sp, a3, 1857f
                  slti         a7, tp, -225
                  auipc        tp, 675960
1847:             srli         t3, a6, 12
                  bne          t5, t0, 1853f
                  slti         t5, t3, 1246
                  blt          s4, gp, 1867f
                  sra          t2, s6, s6
                  srl          gp, s2, s3
1853:             andi         s11, t0, 1137
                  blt          t0, t0, 1857f
                  add          sp, t2, s11
                  sltu         s3, sp, sp
1857:             sub          t4, tp, s11
                  slli         s2, a5, 14
                  srl          a0, s10, t1
                  or           a6, s4, gp
                  auipc        t2, 158615
                  xor          a4, a1, a4
                  ori          t0, s10, 848
                  nop
                  auipc        t4, 532146
                  slti         s5, s7, -956
1867:             andi         a1, a5, -1975
                  sll          s0, t3, s7
                  lui          s0, 287998
                  and          a4, a2, s3
                  andi         t3, s4, 1624
                  bltu         s2, a1, 1889f
                  auipc        tp, 626926
                  beq          s8, a4, 1887f
                  sra          a2, ra, a6
                  sltu         gp, t5, s2
                  sltiu        a4, a2, -1456
                  ori          s7, sp, -2038
                  slt          t1, a5, a6
                  lui          t5, 181420
                  or           a7, t1, gp
                  sub          t0, sp, a3
                  addi         s5, s1, -1379
                  add          s4, a3, t0
                  slli         gp, t6, 15
                  addi         t2, sp, -1149
1887:             sltiu        sp, a1, 1386
                  addi         t5, zero, 1414
1889:             sltu         t3, sp, gp
                  slli         s0, a1, 4
                  andi         a5, s1, 895
                  slt          t1, t3, t3
                  slli         gp, t2, 14
                  ori          t0, t1, 812
                  sub          sp, t3, t5
                  addi         s5, s9, 309
                  slt          a2, t2, sp
                  sra          a3, a6, t4
                  sltiu        s3, s7, 1380
                  and          t4, s4, s10
                  beq          s0, a5, 1903f
                  sub          a4, s8, t2
1903:             slti         s9, s7, 55
                  xori         a7, tp, -888
                  slli         zero, a2, 22
                  xori         gp, a7, 322
                  bltu         s0, a1, 1921f
                  sub          t0, s10, a5
                  srli         s8, s5, 2
                  blt          a0, t6, 1929f
                  srl          s3, t0, a3
                  srl          a0, a5, a1
                  or           s3, t6, a5
                  add          s3, a7, a0
                  sll          s0, s4, s4
                  slli         s9, a7, 18
                  srl          sp, t2, s8
                  slt          s11, s5, a6
                  blt          sp, a2, 1937f
                  bltu         s11, s9, 1930f
1921:             sub          s2, s4, ra
                  xori         t2, s1, 1526
                  sra          a7, s11, t2
                  sll          gp, ra, s3
                  bgeu         a7, a2, 1933f
                  sll          a7, t2, s5
                  sub          t3, a2, t5
                  sll          a1, s4, s7
1929:             nop
1930:             xori         t0, s9, 65
                  addi         a1, gp, 589
                  srl          s9, s3, s5
1933:             sltiu        s2, s9, -278
                  slt          s1, sp, t2
                  bge          t1, s0, 1942f
                  srli         s11, a0, 14
1937:             beq          s3, s3, 1957f
                  add          s9, s6, zero
                  slli         a1, tp, 2
                  ori          t4, a6, -1979
                  add          s11, ra, s7
1942:             sll          a2, a2, ra
                  sra          a5, s11, t1
                  addi         t6, t2, -1709
                  xori         s1, s11, -1042
                  beq          s1, t6, 1956f
                  lui          s8, 948462
                  slli         a6, s8, 6
                  nop
                  srai         a2, a0, 29
                  slti         t2, sp, 1244
                  or           zero, s0, s7
                  slti         s5, a3, 1690
                  lui          t2, 1022794
                  sltu         t5, sp, s11
1956:             sub          t5, sp, t5
1957:             beq          s9, a5, 1970f
                  add          t1, a5, t5
                  srli         a1, a0, 30
                  srl          t4, a4, ra
                  blt          sp, s4, 1980f
                  slt          a0, s11, s7
                  la           s7, region_1+907 #start riscv_load_store_rand_instr_stream_16
                  sb           a7, -12(s7)
                  srai         s8, s11, 5
                  and          a1, a1, t6
                  lb           zero, 4(s7)
                  lb           a7, 0(s7)
                  sh           a1, -5(s7)
                  lb           s3, 16(s7)
                  sll          t0, s9, a6
                  srai         t6, t2, 10
                  lb           s11, 0(s7)
                  srl          s0, s2, s2
                  sra          sp, s2, a0
                  lb           a2, 12(s7)
                  add          tp, t5, s6
                  and          a1, sp, ra
                  sltu         s8, t2, s10
                  nop
                  lw           gp, 9(s7)
                  addi         t4, t3, -1774
                  ori          a3, gp, -506
                  lbu          tp, -7(s7)
                  slt          t3, t3, zero
                  lb           s0, -15(s7)
                  sll          tp, s1, s3
                  sll          t0, t6, a4
                  addi         a2, t0, 1383
                  sb           s8, 12(s7)
                  add          s5, gp, t6
                  lhu          gp, 11(s7)
                  lbu          s3, -9(s7)
                  sltu         s9, ra, a7
                  sltu         s11, zero, s6
                  lh           t1, -3(s7)
                  sb           a5, 10(s7)
                  sb           s2, 0(s7)
                  sb           t1, -12(s7) #end riscv_load_store_rand_instr_stream_16
                  sltu         s3, a2, s4
                  bge          s3, a5, 1974f
                  srli         s1, a5, 28
                  bne          a3, t2, 1973f
                  auipc        t3, 41634
                  sltiu        a2, t6, 1095
                  sub          a0, s6, ra
1970:             blt          s3, s6, 1986f
                  beq          t6, s0, 1976f
                  ori          sp, gp, 1510
1973:             add          zero, gp, s7
1974:             blt          s5, a6, 1979f
                  srl          s1, s2, a5
1976:             andi         t3, s5, 1153
                  andi         a7, s11, -1613
                  slt          tp, a1, a3
1979:             slti         s11, s2, 1642
1980:             slti         a1, t3, 1037
                  beq          s4, a5, 1997f
                  bge          s5, t0, 1998f
                  xori         t5, a4, -445
                  blt          zero, s0, 1991f
                  sltiu        a4, s3, -1863
1986:             slli         a7, s5, 6
                  add          t2, s5, a5
                  bgeu         a2, t2, 2007f
                  xori         t3, t3, 1143
                  srli         s7, a2, 4
1991:             srai         s2, a0, 7
                  sra          tp, s11, tp
                  bge          gp, s10, 2012f
                  sltiu        a1, s1, 1289
                  or           s5, s0, s7
                  lui          t2, 782610
1997:             sltiu        a5, t6, 1148
1998:             srai         s9, s9, 10
                  sll          s7, t4, s8
                  andi         t2, s10, -1959
                  srl          t6, a4, a6
                  slti         s5, a5, 1775
                  andi         a5, a1, 339
                  bne          gp, tp, 2012f
                  beq          t4, s9, 2008f
                  sra          gp, t3, t5
2007:             xori         s11, t2, -1424
2008:             ori          sp, s0, -1145
                  lui          a4, 447821
                  blt          t5, a5, 2011f
2011:             addi         a3, s0, 1400
2012:             slti         a0, s7, -1168
                  slt          s9, a0, t2
                  sltu         s7, s5, tp
                  addi         s5, t3, -279
                  add          t6, a3, t2
                  xor          t1, a7, t0
                  bge          t5, ra, 2021f
                  or           t4, s7, s5
                  andi         sp, s10, -994
2021:             addi         a2, a7, -669
                  xor          a1, s0, a7
                  sra          t2, s7, gp
                  srl          gp, s4, s1
                  lui          s2, 116468
                  and          a6, a6, s10
                  beq          a2, t4, 2029f
                  andi         a6, a5, 611
2029:             sll          a7, sp, t4
                  sll          s0, sp, t6
                  and          a4, ra, t2
                  nop
                  sub          s7, tp, t0
                  sll          s5, t1, s9
                  nop
                  add          a0, tp, t0
                  bgeu         s6, t6, 2055f
                  slti         s0, s10, 603
                  bltu         a4, t1, 2052f
                  bgeu         s6, s5, 2050f
                  bltu         s9, s11, 2060f
                  bgeu         s8, s0, 2052f
                  nop
                  blt          s10, t1, 2057f
                  srl          t5, s1, a0
                  bltu         t4, s10, 2061f
                  xori         t2, a7, -1016
                  nop
                  addi         s8, ra, 80
2050:             srai         a1, a4, 10
                  sltiu        t0, t6, -1027
2052:             slti         s0, s11, 953
                  andi         a5, gp, -1744
                  andi         t3, t3, 1185
2055:             slt          s9, t6, s4
                  sra          s5, t1, a7
2057:             and          a0, ra, s1
                  slti         s7, s4, 1773
                  slti         tp, t1, 1562
2060:             bgeu         a1, tp, 2080f
2061:             sra          a4, s8, a3
                  sll          gp, t6, s2
                  and          a1, sp, a3
                  and          s8, s5, s5
                  sll          s1, gp, t4
                  sub          t3, s0, s3
                  srl          a2, sp, zero
                  bgeu         a7, s5, 2085f
                  slti         s0, s11, 1271
                  bgeu         a7, sp, 2083f
                  andi         s7, t4, 1021
                  or           tp, t5, s9
                  sra          s1, s1, zero
                  sltiu        s11, t2, -1149
                  andi         a3, s5, 1795
                  blt          a4, a3, 2093f
                  auipc        t4, 63016
                  nop
                  sll          t4, s2, gp
2080:             auipc        a3, 604562
                  slt          t0, gp, tp
                  bltu         a3, s9, 2084f
2083:             bgeu         s3, s5, 2093f
2084:             and          s11, a1, s6
                  la           a5, region_1+1736 #start riscv_load_store_rand_instr_stream_7
                  xori         a0, gp, -395
                  xor          s9, a4, a0
                  ori          s3, s10, -1136
                  lbu          s0, -1525(a5)
                  slti         a0, t1, -440
                  sub          s7, a1, s3
                  lbu          a3, -849(a5)
                  lb           t2, -317(a5)
                  addi         s4, t1, -384
                  add          t6, s1, s1
                  and          a4, s2, s0
                  slti         s9, t5, -1106
                  lbu          gp, -852(a5)
                  slli         s4, s3, 28
                  slti         a0, t3, 1104
                  add          t0, a2, t2
                  xor          t1, ra, a5
                  sh           gp, -1732(a5)
                  lbu          s2, -51(a5)
                  srai         s2, t5, 2
                  slli         a2, s1, 3
                  sb           a4, -1204(a5)
                  sll          s2, s2, s0
                  sb           a2, 77(a5)
                  lb           t3, -870(a5)
                  sh           a7, -446(a5)
                  slli         a7, t5, 31
                  slti         t1, t2, -828
                  sra          a2, s11, t6
                  lb           a0, -1145(a5)
                  srl          a3, t1, a2
                  lb           s5, -1462(a5)
                  xori         a1, t6, 1080
                  add          sp, ra, ra
                  lbu          s0, 148(a5)
                  and          t4, a7, t3
                  sb           a6, -261(a5)
                  lh           s5, -632(a5)
                  sltiu        sp, ra, 1382
                  slti         s7, s1, 1969
                  addi         s7, t0, 1417
                  nop
                  and          s9, a2, t0
                  sub          a0, t2, s10
                  sb           s6, 5(a5) #end riscv_load_store_rand_instr_stream_7
2085:             bltu         t1, t1, 2099f
                  xori         t4, t0, 1416
                  bltu         t4, gp, 2107f
                  sltiu        s7, a6, 361
                  slt          zero, t3, t5
                  srl          s7, a4, s0
                  lui          t4, 818204
                  xor          s5, sp, s10
2093:             slt          a4, a0, s9
                  add          s11, t2, s1
                  bge          a1, s1, 2100f
                  sltiu        a2, s6, -1440
                  srli         a7, t5, 5
                  bltu         a1, zero, 2112f
2099:             sra          a2, s9, a6
2100:             or           t4, a7, s10
                  blt          t5, s1, 2108f
                  srl          t6, a0, t3
                  sltiu        a6, t6, -1186
                  bgeu         zero, a0, 2109f
                  lui          s5, 891936
                  slti         s9, a5, 1857
2107:             srl          a7, s4, a1
2108:             andi         a1, s7, 322
2109:             bltu         a4, s0, 2114f
                  bgeu         s5, a5, 2127f
                  lui          t6, 276684
2112:             andi         s0, t3, -1989
                  nop
2114:             sltu         sp, s9, t4
                  andi         t3, t5, 1688
                  auipc        s7, 362559
                  xori         s4, zero, -1091
                  lui          sp, 841226
                  bge          a5, a7, 2135f
                  sltiu        s11, t2, -1127
                  srai         t6, t5, 8
                  slli         s2, t0, 12
                  ori          sp, a0, -2006
                  nop
                  sltiu        a5, t3, 1570
                  blt          t4, s3, 2131f
2127:             bne          a5, t4, 2145f
                  sll          s2, t1, s11
                  bne          s2, t5, 2148f
                  ori          t3, zero, 1935
2131:             xor          t2, s1, a2
                  slt          t0, a3, s10
                  sltu         a4, s5, s5
                  blt          t4, a2, 2148f
2135:             bne          a5, s4, 2145f
                  slti         sp, t3, 1830
                  sra          a0, ra, a1
                  xor          a5, t1, s6
                  bne          tp, gp, 2154f
                  slti         a5, sp, 1229
                  sra          t0, s3, s2
                  or           a6, t2, tp
                  auipc        t0, 206114
                  nop
2145:             sltu         t6, t6, ra
                  bgeu         t6, a3, 2153f
                  srai         a6, s8, 7
2148:             ori          tp, a0, -1468
                  sltu         s4, s3, a6
                  ori          a0, t0, -207
                  blt          s0, a4, 2170f
                  slli         a0, s4, 5
2153:             auipc        a0, 130179
2154:             nop
                  blt          t0, s10, 2168f
                  ori          s3, s5, 392
                  auipc        gp, 692157
                  auipc        t0, 559189
                  andi         gp, s9, 1013
                  blt          zero, s0, 2177f
                  sra          t3, t0, s4
                  beq          s7, a6, 2165f
                  blt          s3, t5, 2183f
                  ori          t2, a1, -48
2165:             bne          a3, a3, 2178f
                  beq          t1, t6, 2168f
                  sltiu        zero, sp, 397
2168:             bge          tp, s3, 2175f
                  bltu         sp, a1, 2179f
2170:             or           s5, s7, s6
                  ori          s8, a0, -867
                  sub          s3, t3, s11
                  srli         s7, zero, 30
                  srli         s0, t0, 5
2175:             bge          t0, a6, 2180f
                  ori          t1, t4, -1529
2177:             slli         a0, t0, 26
2178:             andi         s5, a6, 647
2179:             addi         s8, s11, -1264
2180:             bgeu         s8, a0, 2182f
                  nop
2182:             bge          s3, s5, 2195f
2183:             bge          s10, s5, 2188f
                  sltu         s11, s2, tp
                  sltiu        s8, s4, -881
                  addi         t2, tp, -1225
                  srl          t1, s10, a3
2188:             srli         s2, t6, 6
                  sltu         t2, s11, a4
                  bge          a4, a1, 2209f
                  srli         t6, s5, 8
                  xor          s4, s10, t5
                  blt          s3, s2, 2196f
                  sub          s4, gp, a1
2195:             bltu         s8, s5, 2205f
2196:             sll          s3, a7, t5
                  blt          a3, s2, 2198f
2198:             lui          s2, 856692
                  beq          a2, s1, 2213f
                  xori         gp, gp, 1110
                  la           t4, region_0+485 #start riscv_load_store_rand_instr_stream_18
                  lw           s0, 1255(t4)
                  sb           sp, 400(t4)
                  sb           t4, 1499(t4)
                  lbu          s4, 1318(t4)
                  lbu          sp, -321(t4)
                  lbu          s7, 52(t4)
                  or           a5, tp, s10
                  lbu          t2, 974(t4)
                  sh           s3, 1483(t4)
                  xor          s1, s0, s11
                  lb           s7, 1112(t4)
                  and          a2, t1, t2
                  sll          s11, tp, a6
                  xor          s5, a0, s2
                  sb           a5, -292(t4)
                  sw           a6, 263(t4)
                  sub          sp, sp, s5
                  srli         a5, s9, 12
                  lbu          gp, 46(t4)
                  xori         t2, s10, -1651
                  or           t1, s10, tp
                  sub          t0, a1, a1
                  sh           s10, 947(t4)
                  sll          sp, t0, a0
                  lh           s8, 1095(t4)
                  sw           t2, 1023(t4)
                  lhu          s4, 1223(t4)
                  slli         s4, t1, 24
                  sb           t3, -239(t4)
                  sb           a3, 721(t4)
                  and          t2, t0, a1
                  sltiu        a2, a0, 977
                  sll          t5, a6, s4
                  and          t2, a3, s9
                  add          t2, s9, t0
                  xori         s4, s11, -906
                  lbu          a5, 451(t4)
                  sb           t6, 1428(t4)
                  sb           t3, 192(t4)
                  ori          s8, ra, 813
                  sltiu        t3, a4, -162
                  sb           a5, 1067(t4)
                  sltu         a0, s9, s8
                  lw           t3, 1007(t4) #end riscv_load_store_rand_instr_stream_18
                  slt          a0, t4, s4
                  xor          s0, t5, s8
                  sltu         s8, t2, zero
                  andi         a1, a7, -822
2205:             bgeu         a7, a5, 2213f
                  auipc        s5, 305425
                  sub          tp, s5, t2
                  add          zero, s1, s10
2209:             sltu         s11, s3, s0
                  ori          s11, s4, 267
                  lui          tp, 189880
                  slt          s8, t0, a6
2213:             slt          a0, t3, t2
                  bltu         t4, s1, 2230f
                  sra          a6, a7, s11
                  slti         s1, t2, 1285
                  sltu         s2, a3, a5
                  lui          gp, 277003
                  sra          s1, t4, t1
                  srl          t1, t3, s2
                  xor          s0, s0, sp
                  andi         a7, a7, 253
                  bge          s6, s2, 2243f
                  bge          s7, a3, 2237f
                  bltu         t4, t2, 2239f
                  add          s7, s0, s5
                  ori          t1, t1, 714
                  or           s4, s2, t4
                  slli         gp, s1, 11
2230:             and          tp, s10, s3
                  slti         t0, t3, 610
                  srai         s9, a0, 21
                  andi         zero, a4, 294
                  auipc        t2, 177975
                  sll          s8, s0, gp
                  slti         a5, a7, 1581
2237:             sra          s5, t5, a4
                  sll          a3, s3, t1
2239:             sltu         a5, a7, s6
                  srl          a4, a1, s11
                  slt          s7, s2, t2
                  beq          s1, a3, 2245f
2243:             bge          t3, a0, 2263f
                  sltiu        s3, t4, -1675
2245:             addi         s0, s1, 542
                  xori         s7, t1, -1117
                  sub          a5, s6, t5
                  sll          t2, t2, t3
                  sltu         s4, a4, t2
                  and          a4, a1, a3
                  bge          s11, t2, 2253f
                  beq          tp, s7, 2268f
2253:             add          s1, s7, t2
                  bltu         a6, ra, 2261f
                  bne          a4, s6, 2274f
                  xor          zero, a2, a0
                  sub          s7, t4, t1
                  bge          s1, s10, 2261f
                  andi         a1, sp, -1846
                  sra          s2, a7, a0
2261:             or           s0, s4, t3
                  nop
2263:             addi         s11, s5, -528
                  sltiu        a1, t0, 1312
                  slti         a6, s8, 1408
                  andi         t3, t3, 1275
                  sra          s4, t1, ra
2268:             srai         s1, t2, 19
                  beq          s6, t0, 2283f
                  nop
                  srl          a3, a1, a2
                  add          s1, zero, zero
                  bge          a7, ra, 2289f
2274:             slt          s9, t2, sp
                  add          t4, t0, t4
                  sltu         s7, a0, s2
                  sra          t5, s10, a1
                  sll          t2, s0, zero
                  srai         s3, t1, 24
                  slt          sp, s2, zero
                  sltu         tp, s7, a7
                  and          a5, s1, s0
2283:             sltiu        t2, s9, 1530
                  ori          t5, s8, -708
                  slli         t3, s9, 10
                  bltu         s8, s9, 2296f
                  xori         t6, a3, 681
                  sltu         sp, a7, a4
2289:             srli         s4, a0, 21
                  add          a0, s0, a3
                  bgeu         a0, s11, 2292f
2292:             add          s5, s7, zero
                  slli         gp, t3, 11
                  slt          s8, s8, sp
                  srl          t0, a7, t4
2296:             bgeu         s4, a1, 2309f
                  sltiu        s9, a5, -740
                  and          t6, s9, s9
                  srli         zero, a6, 21
                  bne          gp, a6, 2319f
                  lui          a7, 938991
                  bge          tp, s7, 2309f
                  auipc        zero, 436593
                  bltu         a0, s3, 2319f
                  bgeu         gp, t2, 2322f
                  andi         t5, ra, -673
                  srai         s1, s8, 29
                  bgeu         t5, a4, 2326f
2309:             addi         s0, s7, 1414
                  lui          zero, 907136
                  sub          s2, t0, ra
                  slli         a4, s6, 17
                  slt          s3, a5, s4
                  lui          s3, 791537
                  srai         t0, a0, 25
                  andi         t0, s2, -1020
                  addi         gp, s4, 619
                  srl          a5, gp, s7
2319:             or           gp, zero, tp
                  slli         t3, t1, 2
                  sltiu        t6, t4, 321
2322:             srai         t5, t3, 17
                  sltu         a6, zero, s4
                  srl          a0, t3, t1
                  bne          t2, tp, 2344f
2326:             sltiu        s11, s9, -205
                  sub          s2, a0, s0
                  nop
                  and          s5, a3, a7
                  srai         gp, a4, 24
                  slli         gp, a4, 31
                  slt          a3, s5, a6
                  auipc        t5, 921877
                  srl          t6, s0, s10
                  sltu         a3, s4, s9
                  nop
                  bne          s8, t1, 2350f
                  auipc        t4, 897928
                  sll          s5, s6, s11
                  slt          a0, s11, t1
                  nop
                  sltu         s1, s10, t6
                  bge          zero, a1, 2363f
2344:             blt          s11, s11, 2349f
                  sub          s5, sp, t0
                  srl          a4, zero, s8
                  blt          t3, a6, 2352f
                  xor          a6, a1, a3
2349:             addi         s7, sp, 243
2350:             andi         a5, s6, -1804
                  srai         s5, sp, 8
2352:             add          s3, s0, t4
                  slli         a1, s10, 27
                  bge          t2, a6, 2371f
                  srli         s5, t5, 15
                  blt          sp, s10, 2366f
                  blt          sp, a7, 2367f
                  auipc        a7, 66435
                  sra          s7, t6, s11
                  nop
                  nop
                  sltu         t0, t6, a0
2363:             auipc        s8, 838692
                  slt          s9, s9, t5
                  or           a5, a0, t6
2366:             or           s7, s9, a0
2367:             slli         s4, s9, 3
                  srai         t4, sp, 2
                  slli         a7, t3, 14
                  slt          a6, gp, t6
2371:             bge          a5, a1, 2376f
                  and          t1, t0, s9
                  bge          s8, t0, 2375f
                  xor          s4, a4, t1
2375:             bgeu         t4, a2, 2383f
2376:             srl          t1, a2, t6
                  sll          a7, a5, s0
                  bltu         s10, t5, 2398f
                  slt          a7, a1, zero
                  bltu         s6, s10, 2398f
                  srl          s9, s4, t4
                  sra          t0, s8, a6
2383:             bne          s6, t5, 2386f
                  add          s11, sp, sp
                  lui          a5, 458206
2386:             bltu         t0, a4, 2405f
                  beq          t0, t0, 2404f
                  or           s0, a7, a7
                  and          s8, s10, a3
                  slt          zero, a7, a1
                  slt          t3, s3, t6
                  lui          t1, 490714
                  add          s9, t2, s9
                  srl          zero, s8, zero
                  lui          a5, 607297
                  srli         tp, t6, 14
                  slli         s5, a0, 4
2398:             srli         t4, s7, 28
                  andi         a5, s6, -950
                  sltu         tp, a1, a2
                  bne          a3, t3, 2414f
                  andi         t5, t2, -101
                  slt          sp, s3, a4
2404:             nop
2405:             sub          s5, s7, s11
                  srli         a4, a3, 18
                  bltu         a0, s5, 2409f
                  slt          s3, tp, s8
2409:             addi         a1, t0, 1786
                  bgeu         s8, s9, 2420f
                  bgeu         zero, s5, 2428f
                  slti         s4, s4, 321
                  srli         t0, a2, 20
2414:             sltiu        s2, ra, 315
                  srli         s1, s4, 25
                  sub          s4, t2, t6
                  sltu         t6, zero, t6
                  bgeu         s11, s2, 2437f
                  bge          s3, t6, 2420f
2420:             slt          s0, s9, t0
                  bltu         s5, a4, 2436f
                  auipc        s5, 411533
                  sltu         a2, s2, a4
                  xor          a4, gp, t2
                  bltu         s1, a1, 2432f
                  slt          s0, a2, ra
                  sltu         s2, s9, t6
2428:             sltu         t4, a2, zero
                  nop
                  slti         a6, ra, -603
                  slt          s0, s1, s0
2432:             xor          t1, a1, t3
                  nop
                  add          t1, s6, a2
                  beq          s6, t6, 2440f
2436:             srli         a1, s5, 27
2437:             slti         t0, gp, 1678
                  lui          s5, 90989
                  ori          s1, t2, -1843
2440:             sltiu        t5, tp, -1406
                  auipc        s2, 840859
                  sra          sp, s3, a3
                  slli         s3, gp, 28
                  ori          zero, s3, -557
                  xori         a1, a3, -1756
                  slli         t2, gp, 13
                  sll          a4, a3, zero
                  srl          a6, tp, a7
                  sll          t4, a5, t4
                  add          t3, s8, s8
                  bge          s10, a7, 2465f
                  xori         t4, s4, -1904
                  sltu         a6, s7, s1
                  add          s7, a1, a5
                  bne          t1, t5, 2460f
                  xori         a3, s1, 1817
                  lui          t1, 16946
                  beq          t0, s3, 2474f
                  sub          t5, s10, a2
2460:             andi         tp, s6, 1424
                  srli         t0, s8, 0
                  sub          s5, ra, s10
                  or           a7, ra, ra
                  sltu         s0, a5, gp
2465:             sltu         t6, s0, a0
                  slt          t5, t6, t6
                  srli         a7, s7, 6
                  slti         t5, a6, -1764
                  bltu         t0, zero, 2483f
                  add          a1, s0, s5
                  sltiu        a2, ra, 411
                  add          s4, gp, a7
                  ori          s7, a1, -1424
2474:             or           tp, a1, a7
                  andi         s1, sp, 1162
                  auipc        s1, 975194
                  bgeu         t4, s1, 2490f
                  bgeu         a1, a4, 2498f
                  addi         s11, t2, -442
                  or           a7, s7, t4
                  blt          a6, a1, 2483f
                  slti         a7, tp, -446
2483:             and          a7, t5, t5
                  bne          a6, t1, 2491f
                  srai         a7, s2, 13
                  sltu         t0, s9, zero
                  slti         a5, t0, 1579
                  sll          s0, s5, a0
                  andi         t2, gp, -731
2490:             slti         s2, s7, 764
2491:             bne          t1, s8, 2510f
                  slti         tp, a0, -1996
                  slt          t5, a6, s4
                  sltu         s4, a7, s11
                  bgeu         t4, zero, 2498f
                  lui          sp, 731607
                  lui          a5, 955901
2498:             bgeu         s6, a4, 2511f
                  sltiu        tp, s3, -261
                  auipc        s5, 983784
                  nop
                  ori          s0, t3, -1708
                  sll          gp, a5, t0
                  addi         t3, s2, -1253
                  bltu         s4, a3, 2510f
                  and          s5, a3, tp
                  or           s5, t4, a4
                  bgeu         a3, s2, 2524f
                  xori         a5, s11, -1601
2510:             andi         zero, tp, 464
2511:             lui          a4, 1036157
                  beq          t1, ra, 2522f
                  beq          s9, s0, 2521f
                  sltu         s11, zero, a4
                  slt          s7, t5, s0
                  xori         sp, t4, -1977
                  bne          t6, a5, 2527f
                  bne          t1, s5, 2528f
                  bne          s10, gp, 2522f
                  blt          t2, a2, 2537f
2521:             blt          s6, s1, 2535f
2522:             sll          s11, a3, s1
                  sltiu        zero, t5, 783
2524:             srai         s2, a7, 15
                  xori         t0, a5, 226
                  or           s3, s11, s5
2527:             add          tp, s3, sp
2528:             sra          s3, s4, a4
                  sub          a2, ra, s6
                  beq          ra, t1, 2540f
                  xori         s3, ra, 1269
                  add          a2, zero, s9
                  sub          s11, s1, s10
                  srai         zero, s11, 3
2535:             srli         a2, s2, 13
                  ori          a0, a5, -432
2537:             xor          t4, a3, t2
                  slti         s9, s2, 76
                  srai         gp, s1, 11
2540:             and          zero, s0, t1
                  srli         s5, a1, 18
                  sltiu        tp, s2, -1784
                  nop
                  srai         a0, sp, 11
                  xor          t1, t3, t5
                  nop
                  bge          s0, s11, 2561f
                  sll          a7, s0, s10
                  srli         s8, t6, 18
                  xor          s1, s10, a2
                  sltu         a6, t0, a4
                  blt          s0, a3, 2562f
                  auipc        t3, 216452
                  auipc        sp, 819201
                  slt          t5, s1, zero
                  addi         a3, s7, -1738
                  ori          a5, s1, 72
                  sub          t2, a0, a1
                  auipc        a1, 852209
                  slti         a3, s3, 669
2561:             addi         a1, s0, -1872
2562:             srli         t2, ra, 0
                  bltu         t5, a4, 2576f
                  bne          a5, s4, 2584f
                  or           s9, t1, t5
                  la           t4, region_1+1001 #start riscv_load_store_rand_instr_stream_8
                  xor          s5, a0, s8
                  andi         a5, s4, -458
                  andi         t5, s6, 1068
                  sub          a7, s3, a5
                  sub          t0, s9, a0
                  sb           a7, 38(t4)
                  lw           s9, -53(t4)
                  lb           t2, 49(t4)
                  lb           a2, -29(t4)
                  lhu          tp, -63(t4)
                  sb           a7, 18(t4)
                  sb           t2, 60(t4)
                  slti         a0, ra, 1730
                  sb           t6, -4(t4)
                  xor          a6, s7, s11
                  slti         sp, s7, -318
                  lb           s2, -29(t4)
                  slli         s5, sp, 29
                  sltu         a5, s9, a3
                  or           a3, gp, tp
                  sb           s0, -16(t4)
                  lhu          a1, -19(t4)
                  sh           s9, 37(t4)
                  lbu          a0, 44(t4)
                  lh           a5, -11(t4)
                  lbu          a7, -22(t4) #end riscv_load_store_rand_instr_stream_8
                  beq          s0, ra, 2573f
                  sll          a7, s8, zero
                  nop
                  sltiu        a1, s1, -1935
                  srai         zero, s4, 11
                  beq          a5, a6, 2586f
                  slti         a7, t3, -1440
2573:             slti         s2, s10, -875
                  bgeu         t2, s11, 2590f
                  sltu         zero, t0, t3
2576:             and          s1, a0, a0
                  sra          sp, s4, s11
                  slti         t1, s6, 268
                  bge          s7, s3, 2595f
                  sra          t0, s2, s5
                  srai         t3, s6, 17
                  slli         a5, a6, 4
                  sltiu        a2, gp, -1010
2584:             bge          a7, s6, 2602f
                  sub          s11, t4, zero
2586:             sll          t5, s4, a0
                  sub          s7, s8, zero
                  slti         s11, a1, 1358
                  lui          a1, 206132
2590:             xor          s9, s3, s8
                  addi         s9, s9, -720
                  ori          s0, tp, 1985
                  srai         s8, s10, 27
                  bltu         t4, s7, 2597f
2595:             lui          s7, 637820
                  sltu         s1, t6, a1
2597:             srl          s7, s11, s3
                  sltiu        a4, gp, -1998
                  beq          a0, t5, 2619f
                  bge          a4, t0, 2605f
                  sub          a6, sp, s11
2602:             auipc        s0, 438843
                  blt          a0, a4, 2620f
                  auipc        t4, 156531
2605:             slt          zero, s3, s10
                  auipc        a2, 691156
                  sltiu        s11, s4, -1295
                  addi         s9, s9, -81
                  xori         a4, t6, 1306
                  srl          t3, s6, a2
                  srl          a3, t6, t5
                  srli         a5, s4, 5
                  srai         t6, s5, 24
                  sltiu        s8, s9, -1634
                  blt          s0, s9, 2617f
                  add          zero, t6, s4
2617:             slti         s7, s7, 1255
                  bltu         s6, s8, 2637f
2619:             xori         gp, t6, 925
2620:             auipc        s3, 910999
                  slli         s1, s4, 8
                  xor          s8, a3, t1
                  or           sp, a4, t2
                  beq          t2, t2, 2629f
                  nop
                  srli         a2, t5, 31
                  bne          gp, t5, 2640f
                  srai         s7, t4, 8
2629:             sub          s0, t5, s3
                  slt          sp, t1, a5
                  or           s0, s2, a3
                  slt          a3, tp, ra
                  srli         a6, s2, 25
                  lui          a1, 509499
                  and          sp, ra, gp
                  srl          t2, t2, t6
2637:             bltu         t4, t6, 2645f
                  and          s7, a7, t3
                  or           a5, t3, a0
2640:             sltiu        t3, a7, 1302
                  xori         a3, t5, 807
                  sll          t4, t0, s5
                  bne          a4, t3, 2650f
                  nop
2645:             andi         s11, s3, 1847
                  slli         s5, s7, 26
                  bge          t6, a3, 2650f
                  bgeu         s11, s9, 2650f
                  slti         a0, t5, -413
2650:             sltu         s1, s4, s5
                  slti         a4, a0, 634
                  srl          s5, s5, s0
                  lw           s1, 4(s10)
                  sll          a4, sp, t2
                  addi         s10, s10, 52
                  or           s9, s8, s7
                  sub          s9, s8, a5
                  slt          a0, s6, s10
                  xori         sp, t5, -1501
                  addi         a5, t3, -46
3508:             addi x11, x9, 1
3508:             jalr x11, x11, 0
sub_9:            and          t1, s7, t4
                  nop
                  bne          t6, s7, sub_9_stack_p
                  slli         s9, tp, 6
sub_9_stack_p:    addi         s10, s10, -24
                  xori         s7, s7, -1701
                  sw           s1, 4(s10)
                  xor          zero, s7, t5
                  and          a0, a2, s8
                  add          a7, a2, t5
                  bge          s8, s8, 8f
                  slli         a6, t5, 28
                  slt          t1, a6, sp
                  sra          t4, ra, s3
                  slt          t0, t2, a0
                  xori         s0, t4, 1969
8:                xor          t6, s0, s2
                  sra          s1, s10, a1
                  sltiu        s2, a7, -1456
                  sll          a4, sp, s9
                  sub          t3, a0, s6
                  nop
                  beq          s4, a0, 34f
                  slti         gp, a2, 727
                  beq          s1, s10, 33f
                  sltiu        a7, t3, 1511
                  sltiu        a0, a4, 1189
                  auipc        s2, 144467
                  bgeu         t0, s1, 32f
                  lui          s9, 325910
                  sltiu        t4, s11, 775
                  and          t5, a5, t1
                  nop
                  lui          s7, 330260
                  andi         t4, t4, 687
                  srli         s4, s3, 27
                  sltiu        t0, ra, 1667
                  xori         s2, t0, 179
                  sll          t2, a3, t5
                  beq          s0, t6, 36f
32:               slli         t1, s6, 28
33:               srli         s9, s6, 13
34:               sll          t4, a4, s11
                  lui          s2, 361433
36:               xor          s1, a0, a1
                  and          zero, tp, a1
                  srl          s8, gp, zero
                  slt          s9, s11, zero
                  bgeu         s3, t6, 60f
                  add          s5, t1, s5
                  srai         t0, a0, 16
                  or           s5, s0, sp
                  or           t1, zero, a2
                  bltu         s2, s4, 53f
                  xor          sp, t3, s10
                  bne          s5, s2, 48f
48:               srai         a0, a0, 2
                  slti         t0, t1, 262
                  srl          tp, sp, gp
                  sltiu        a0, s3, 1427
                  nop
53:               lui          s1, 940483
                  sltiu        t5, a7, -623
                  nop
                  srli         t6, t6, 7
                  bgeu         s1, s7, 75f
                  sll          t2, t6, tp
                  sltiu        t1, s2, 1621
60:               slli         t3, t1, 12
                  add          a0, s8, tp
                  bne          s6, tp, 68f
                  sub          a3, t1, s4
                  sltu         zero, a4, s6
                  sra          s11, a3, s2
                  xori         t2, s6, 525
                  xor          t6, t5, a4
68:               slli         a4, s4, 22
                  lui          s8, 73426
                  bltu         t2, a6, 81f
                  auipc        t3, 540555
                  andi         s11, a3, 665
                  auipc        a5, 448288
                  bltu         a5, a4, 76f
75:               andi         t1, a0, 198
76:               addi         zero, a0, 211
                  ori          sp, t2, 64
                  or           tp, s11, a2
                  srl          s1, a5, s9
                  srli         s3, t0, 18
81:               srli         s2, sp, 21
                  xori         s0, a4, -1377
                  srl          a1, t2, a7
                  xori         s2, s0, 518
                  xor          s0, s7, gp
                  beq          t2, gp, 106f
                  slt          s11, ra, s10
                  or           t6, tp, tp
                  lui          s11, 734162
                  bgeu         t6, gp, 102f
                  and          s5, gp, ra
                  sub          s2, ra, s0
                  add          a3, t5, t6
                  bne          t0, s3, 106f
                  bne          s0, zero, 100f
                  bne          s5, s6, 98f
                  blt          a2, t6, 110f
98:               and          t6, s9, s4
                  xor          s11, s5, a2
100:              beq          a5, t0, 110f
                  sll          s3, s5, s10
102:              bge          sp, a4, 110f
                  sra          s1, s2, a7
                  sub          t3, t1, s11
                  addi         a7, s8, 1859
106:              blt          a6, a2, 110f
                  xori         tp, a5, -132
                  srl          tp, gp, a5
                  bltu         s4, a5, 110f
110:              sltiu        a3, s4, 1668
                  lui          t5, 35322
                  lw           s1, 4(s10)
                  or           s11, t0, t5
                  sra          a6, zero, t1
                  slt          tp, t3, a3
                  add          a1, t4, s6
                  sll          a1, a1, s1
                  addi         s10, s10, 24
                  slli         s11, t0, 31
                  or           a3, a3, s0
                  or           t0, t1, a4
130:              addi x28, x9, 0
130:              jalr x28, x28, 0
sub_8:            srli         t1, a1, 16
                  sltiu        s2, a1, 327
                  addi         s10, s10, -40
                  add          s4, s7, s2
                  sll          zero, s7, s4
                  sra          gp, t3, a1
                  or           t0, s6, t4
                  sw           s1, 4(s10)
                  srai         tp, t0, 13
                  sub          t6, s2, a7
                  lui          a3, 999737
                  srai         a0, sp, 18
                  srli         s2, sp, 30
                  srli         a0, t3, 22
                  ori          a1, s3, -1535
                  la           s7, sub_10
                  srli         s2, sp, 5
                  addi         s7, s7, 686
                  sub          t0, gp, gp
                  ori          t2, s7, -786
                  sltiu        a5, s2, -324
sub_8_j11:        jalr         s1, s7, -685 #jump sub_8 -> sub_10
                  slli         s9, t6, 0
                  or           t6, a1, s11
                  sltiu        s3, s11, 301
                  bge          s10, s5, 9f
                  ori          t1, t2, -1689
                  add          t3, s6, s7
                  srai         s1, s3, 3
                  slti         t0, t4, 1239
                  sub          s7, gp, t5
9:                lui          t4, 58017
                  lui          gp, 224308
                  or           s3, s7, s4
                  add          s8, a4, s9
                  lw           s1, 4(s10)
                  slti         a7, t2, -1468
                  addi         s10, s10, 40
                  sub          gp, s2, tp
                  sll          s3, a7, t1
                  lui          zero, 958939
                  or           sp, s4, tp
42:               addi x30, x9, 0
42:               jalr x30, x30, 0
sub_2:            srl          t2, s7, s6
                  srli         t2, a6, 29
                  bge          s3, t4, sub_2_stack_p
                  sra          s11, s8, a2
                  andi         a4, s7, -920
                  srli         zero, s0, 30
sub_2_stack_p:    addi         s10, s10, -56
                  xori         a2, s8, -903
                  sw           s1, 4(s10)
                  sll          gp, s8, a4
                  or           s9, s9, s7
                  add          s4, a6, s1
                  bgeu         s6, s6, sub_2_j3 #branch to jump instr
                  and          zero, t6, ra
                  xori         a2, t2, 1975
                  sub          a6, s0, s5
                  sltu         a7, a5, a6
                  or           tp, a0, a6
                  sltu         a1, a2, s11
                  sltiu        s3, s0, -1073
sub_2_j3:         jal          s1, sub_3 #jump sub_2 -> sub_3
                  la           s9, region_1+1287 #start riscv_load_store_rand_instr_stream_0
                  sub          s5, a1, s4
                  srl          a1, t1, a7
                  auipc        a1, 604967
                  sb           sp, -2(s9)
                  sb           gp, -12(s9)
                  addi         a2, gp, 1646
                  xori         a6, sp, -1079
                  lbu          s7, 14(s9)
                  ori          t6, s1, 404
                  add          a6, zero, t2
                  xor          t6, s8, t0
                  xori         gp, s8, -524
                  lb           t4, 8(s9)
                  lbu          t1, 2(s9)
                  slti         a3, s10, 993
                  lui          t5, 1043611
                  addi         s4, a5, 706
                  srl          t1, tp, s3
                  lb           a7, 13(s9)
                  slli         a6, t5, 1
                  sh           t3, -15(s9)
                  sra          t1, t4, s4
                  lhu          t2, -7(s9)
                  xor          t1, tp, s4
                  slt          a6, zero, t5
                  or           a4, tp, s4
                  or           t4, s4, t1
                  lui          zero, 128414
                  or           s5, a7, t6
                  lbu          a5, -1(s9)
                  lhu          s4, 3(s9)
                  sub          s4, s7, t0
                  lhu          gp, 3(s9) #end riscv_load_store_rand_instr_stream_0
                  add          t1, a3, zero
                  bne          s7, s5, 21f
                  beq          s3, t4, 8f
                  sltiu        t1, gp, -243
                  slti         t4, t1, -1530
                  bge          a0, a0, 8f
                  slt          sp, t6, s9
                  auipc        t5, 237346
8:                xori         a3, s2, 514
                  addi         gp, a6, 1695
                  or           s5, s11, t1
                  xori         tp, s9, 1027
                  auipc        s7, 17714
                  xor          s4, s6, a4
                  bne          s10, zero, 30f
                  bltu         t4, s3, 17f
                  nop
17:               bltu         s8, a7, 32f
                  sltu         a6, ra, a2
                  nop
                  xor          a0, t0, t2
21:               slt          s3, s0, a4
                  srli         a0, t4, 1
                  slt          s5, a7, s4
                  sltu         a3, a4, t3
                  beq          t0, s0, 30f
                  add          s0, s2, a4
                  ori          t0, t4, 821
                  srl          s4, s4, s3
                  bgeu         t4, gp, 46f
30:               sltiu        a1, t6, 284
                  beq          s1, t3, 51f
32:               sub          t3, s4, a5
                  or           s11, ra, t4
                  sltiu        sp, ra, -98
                  andi         t6, s7, 1546
                  srli         t6, s7, 6
                  sra          a0, sp, tp
                  sltiu        a7, sp, 43
                  srli         s11, ra, 23
                  bgeu         s8, t2, 52f
                  slli         s7, gp, 23
                  beq          gp, s3, 59f
                  bgeu         s7, t5, 46f
                  sltiu        a6, tp, -1205
                  sra          s8, s10, gp
46:               sra          s7, s5, s8
                  ori          t2, s7, 463
                  lui          t5, 598991
                  sub          s0, t4, a0
                  beq          a5, s4, 56f
51:               bne          t3, sp, 59f
52:               ori          s5, s5, 1571
                  bge          a4, t6, 54f
54:               slli         s8, s10, 12
                  nop
56:               and          tp, s8, zero
                  nop
                  xor          a0, a5, a4
59:               bgeu         t3, a7, 65f
                  auipc        a5, 38992
                  ori          s8, s9, -1518
                  srli         s3, s6, 17
                  ori          s2, a2, -1440
                  xori         s4, a5, -67
65:               srl          a0, t3, gp
                  add          s5, s9, s5
                  blt          s3, a7, 74f
                  sltu         s8, s9, a6
                  addi         s7, s5, 169
                  ori          tp, a7, -952
                  and          a5, t5, t2
                  add          a5, a1, a3
                  srli         t2, ra, 19
74:               and          s5, s0, s8
                  bltu         s1, s8, 76f
76:               sll          a2, s6, s1
                  nop
                  srli         a6, s9, 23
                  xori         sp, a2, 1092
                  sll          a7, a3, ra
                  sltiu        s3, gp, -1527
                  addi         t4, a7, 2037
                  andi         a6, s10, -989
                  xor          t3, a6, s3
                  slti         s4, s8, -1025
                  sll          s4, s5, sp
                  srli         s5, s11, 2
                  beq          s8, tp, 93f
                  sltiu        gp, t4, -407
                  srl          sp, a4, t3
                  sltiu        t1, a2, 1005
                  ori          t1, s3, 1233
93:               bltu         gp, sp, 111f
                  sra          s9, a2, tp
                  bltu         tp, s3, 107f
                  bge          a6, s11, 102f
                  nop
                  xori         s1, a5, 1537
                  beq          s9, t2, 119f
                  addi         s9, t2, 1085
                  sltu         t3, s4, a5
102:              ori          s4, t6, -624
                  lui          a1, 381457
                  add          t1, s1, t6
                  xori         s2, s6, -1846
                  andi         s7, s6, -1484
107:              srli         s8, s0, 13
                  xor          t0, t5, s0
                  andi         a6, t1, 825
                  add          sp, s11, t6
111:              bltu         s5, s5, 127f
                  lui          t5, 316067
                  add          a6, s11, t1
                  slli         t3, s8, 27
                  or           a4, s1, a4
                  sra          s5, t3, tp
                  sra          tp, a2, ra
                  and          s7, gp, t0
119:              blt          t0, t3, 120f
120:              sltiu        sp, sp, -83
                  addi         s2, s5, -1095
                  sltu         t3, a4, a4
                  sltu         s11, s8, a6
                  slt          a4, s1, t2
                  bltu         a2, zero, 128f
                  sll          gp, a3, s4
127:              srli         s0, a2, 27
128:              lui          t2, 489490
                  lw           s1, 4(s10)
                  or           t1, sp, s9
                  lui          t3, 452355
                  addi         s10, s10, 56
                  sra          t5, s3, t4
                  slli         a7, s7, 11
190:              addi x20, x9, 1
190:              jalr x20, x20, 0
sub_1:            lui          a3, 42745
                  sra          a2, t6, t6
                  sub          zero, t4, a1
                  sltiu        gp, s1, -136
                  bge          s1, t4, sub_1_stack_p
                  or           a1, s2, zero
sub_1_stack_p:    addi         s10, s10, -52
                  sw           s1, 4(s10)
                  sltiu        s5, s6, -1097
                  add          tp, s10, sp
                  la           sp, region_1+1367 #start riscv_load_store_rand_instr_stream_0
                  lbu          gp, 12(sp)
                  ori          a6, t5, -1498
                  and          gp, s6, t6
                  lbu          s4, -4(sp)
                  srl          s1, s6, s2
                  srai         s2, s10, 23
                  sltu         a7, s11, s2
                  lui          s9, 885791
                  slli         t4, s11, 29
                  sltiu        s4, s9, -812
                  or           s11, t6, a7
                  and          a4, a7, t2
                  or           t6, gp, ra
                  slli         a7, tp, 5
                  sb           a0, -9(sp)
                  lbu          t6, 14(sp)
                  srli         t0, s0, 9
                  srli         a3, s0, 19
                  sub          a3, zero, sp
                  nop
                  sra          t0, t5, gp
                  sb           a7, -6(sp)
                  srai         s1, a6, 19
                  sb           s11, 1(sp)
                  lh           s7, -5(sp)
                  sra          t0, a6, s1
                  srl          a1, tp, s4
                  sll          t2, s9, a3
                  sltu         s3, t0, sp
                  add          a7, a6, tp
                  sb           s11, -8(sp)
                  sb           t0, -8(sp)
                  slt          a0, t6, t4
                  add          zero, a7, s6
                  sltu         s7, gp, s8
                  auipc        a1, 240898
                  xor          t1, a7, s0
                  add          t1, t6, s6
                  lb           tp, -2(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_1+1214 #start riscv_load_store_rand_instr_stream_1
                  srai         gp, a1, 13
                  slti         s7, s7, 1509
                  srl          t4, s4, s1
                  sltu         t3, a5, s10
                  lui          tp, 936409
                  lbu          a0, -20(s0)
                  lb           t0, -29(s0)
                  nop
                  sltu         a1, t2, a2
                  slt          a1, sp, s9
                  sh           t4, 12(s0)
                  nop
                  sub          t0, a5, gp
                  sb           gp, 61(s0)
                  sub          s8, t6, s7
                  sb           sp, -37(s0)
                  or           t1, tp, s2
                  slli         t2, a6, 13
                  xor          t1, a7, tp
                  xori         s9, t5, -817
                  xori         a4, a3, 791
                  lb           t3, 46(s0)
                  lb           s8, 46(s0)
                  and          s8, s8, t2
                  or           a4, a7, t4
                  srai         s11, s1, 27
                  xori         a0, s7, -1057
                  slti         s11, t1, -1270
                  xor          tp, a6, a2
                  lb           s5, -57(s0)
                  slti         s8, t4, -230
                  lui          a0, 286940
                  add          t4, ra, a6
                  auipc        t2, 558188
                  sltiu        s11, t1, -1590
                  nop
                  auipc        s11, 333153
                  lbu          s1, 55(s0)
                  lb           s3, 1(s0) #end riscv_load_store_rand_instr_stream_1
                  srai         t5, t0, 0
                  sra          t0, s3, s8
                  bne          a5, s0, 9f
                  bgeu         a5, a4, 10f
                  ori          sp, a5, -1039
                  beq          t2, t0, 18f
                  add          s3, t1, a2
                  and          tp, s2, t4
                  addi         t1, a0, 1779
9:                srl          s11, t6, t1
10:               sll          s0, t2, a4
                  lui          gp, 682615
                  bne          sp, s7, 31f
                  ori          tp, s7, 1894
                  slli         s8, tp, 14
                  srai         s2, ra, 15
                  ori          t4, zero, -1735
                  xori         s1, gp, -1110
18:               slt          tp, ra, sp
                  blt          zero, t5, 32f
                  la           tp, region_0+311 #start riscv_load_store_rand_instr_stream_3
                  sb           a1, 0(tp)
                  lb           s8, -12(tp)
                  sll          t0, ra, t6
                  and          s7, s1, s1
                  xor          s4, a4, s10
                  add          s0, s11, a0
                  and          s3, t2, t5
                  lh           t5, -9(tp)
                  nop
                  sb           s8, 2(tp)
                  sw           s4, 1(tp)
                  slt          t5, t6, a4
                  addi         s1, tp, 381
                  lb           a5, 5(tp)
                  lbu          a2, 3(tp)
                  lb           zero, 12(tp)
                  xor          s1, s2, s3
                  lui          a3, 294817
                  sw           zero, -15(tp)
                  lbu          t4, -10(tp)
                  lbu          s0, -8(tp)
                  and          sp, s7, s5
                  xori         t6, t2, 433
                  srl          s8, s6, a0
                  sb           t2, -15(tp)
                  sb           sp, -11(tp)
                  sw           t2, -7(tp)
                  sw           s5, 1(tp)
                  auipc        s3, 856073
                  and          a4, t6, t2
                  sh           a2, 7(tp)
                  lhu          t5, -9(tp)
                  sh           a4, -7(tp)
                  lh           s2, -13(tp)
                  lhu          s4, 11(tp)
                  sub          a1, a0, a7
                  lh           a7, 15(tp)
                  sb           t0, 8(tp)
                  andi         a4, a5, 1438
                  sltiu        a1, a7, -720
                  lbu          gp, 2(tp)
                  lbu          t5, -12(tp)
                  sb           gp, 10(tp)
                  lhu          a4, 13(tp)
                  sw           a6, 9(tp)
                  lbu          s11, 14(tp)
                  sub          t0, a4, s3
                  sb           a7, 12(tp)
                  sll          a6, s4, t5
                  slt          a5, a6, s0
                  slti         s11, s3, -27
                  lb           a7, -14(tp) #end riscv_load_store_rand_instr_stream_3
                  bne          a3, t1, 35f
                  sra          t4, a0, a5
                  beq          s1, sp, 32f
                  xor          s0, s8, s6
                  bne          s5, t6, 29f
                  add          a1, s4, tp
                  slt          s7, t1, t1
                  add          s5, a0, a3
                  srli         s4, gp, 11
29:               and          t3, t1, a7
                  srli         a7, a3, 14
31:               or           a0, s4, a2
32:               srai         a1, s6, 14
                  srl          gp, s7, s9
                  sub          s2, a5, a0
35:               bge          s6, t3, 39f
                  ori          s0, a3, -2020
                  sra          a0, s3, ra
                  add          t0, a5, t4
39:               srl          a0, tp, s2
                  xor          a5, a7, s3
                  xor          s9, s7, a5
                  srai         t6, s4, 31
                  bgeu         sp, s6, 54f
                  addi         s11, t5, -658
                  srl          s8, s2, zero
                  sra          zero, s2, a1
                  xor          t2, s5, ra
                  sub          s2, s6, t3
                  sra          s9, a0, t6
                  srai         t5, s2, 21
                  bne          t6, a0, 68f
                  beq          t6, t1, 62f
                  andi         zero, s5, -1421
54:               or           t3, a0, s11
                  srai         t6, zero, 1
                  auipc        t5, 14778
                  slli         zero, s9, 0
                  addi         a5, s11, -564
                  sra          s1, s6, a4
                  addi         s5, t3, -1836
                  bge          a1, s8, 77f
62:               or           a6, s10, s4
                  sra          zero, a7, s11
                  srli         s5, t2, 28
                  and          a0, t5, s2
                  or           zero, t2, s3
                  sll          sp, s1, t3
68:               slt          s2, s11, a4
                  add          a6, s0, ra
                  lui          gp, 871819
                  auipc        a1, 748114
                  srl          tp, s4, s2
                  srl          a7, s0, zero
                  and          s0, a7, ra
                  sltiu        s11, t5, -1247
                  bge          tp, s0, 81f
77:               and          a4, ra, a4
                  xori         t2, t6, -208
                  bltu         s11, s6, 95f
                  lui          s0, 56845
81:               auipc        s5, 1029554
                  slt          a0, t2, s11
                  andi         s3, a1, -1143
                  srai         t0, a4, 24
                  or           s8, a2, s5
                  auipc        s8, 517593
                  nop
                  and          t4, t4, a4
                  bgeu         a4, a7, 95f
                  bne          s0, tp, 104f
                  bgeu         s9, s11, 102f
                  andi         a5, a3, -382
                  beq          s11, t2, 97f
                  srl          s5, a0, a4
95:               ori          t1, s5, -2009
                  ori          s0, a1, 1932
97:               blt          s10, s2, 111f
                  xor          s3, a0, ra
                  nop
                  srli         t4, a7, 5
                  xor          a6, t5, s1
102:              andi         a4, s2, 1715
                  srai         s5, s1, 16
104:              lui          tp, 508930
                  xor          zero, a4, s9
                  blt          s1, s0, 115f
                  or           s3, s4, t0
                  sll          s5, s4, a1
                  bltu         s6, s3, 110f
110:              beq          a7, s10, 126f
111:              lui          sp, 219194
                  sll          t6, s1, t6
                  or           a5, t2, s8
                  and          s7, s4, t0
115:              beq          s6, a1, 135f
                  slli         t5, s3, 23
                  slti         t6, s5, 1673
                  bge          t6, s1, 124f
                  slt          s4, zero, s8
                  bgeu         a2, a4, 132f
                  sra          t5, s7, t3
                  and          a0, a2, s8
                  srli         s11, a1, 25
124:              auipc        zero, 905192
                  andi         s7, a1, 1783
126:              lui          s11, 323909
                  bne          gp, s7, 132f
                  slt          a7, gp, s0
                  lui          a4, 493934
                  slt          t3, s11, ra
                  sub          t1, s11, t6
132:              bgeu         s5, a4, 143f
                  add          s7, a0, s3
                  auipc        s7, 930322
135:              xor          s8, s8, a6
                  sra          t3, gp, a1
                  bgeu         a6, s8, 147f
                  sub          a3, t0, s4
                  lui          s9, 699014
                  slli         t1, t5, 20
                  srl          s3, a5, a0
                  nop
143:              bltu         ra, s5, 157f
                  lui          a0, 289229
                  srli         t5, s9, 19
                  lui          a2, 241164
147:              xor          t0, ra, zero
                  beq          t6, s11, 168f
                  bgeu         zero, a6, 166f
                  beq          s4, t1, 154f
                  lui          a7, 172013
                  xor          tp, s6, ra
                  slt          a4, tp, t4
154:              srai         tp, tp, 17
                  xori         t4, ra, 1989
                  srl          sp, s7, s11
157:              srai         a6, a0, 27
                  add          s11, s10, gp
                  addi         s11, s10, -679
                  xori         s5, zero, 1143
                  sra          a2, a3, s3
                  xor          zero, zero, a5
                  ori          tp, a4, 1868
                  ori          s1, t5, 285
                  lui          gp, 973698
166:              bge          ra, t0, 172f
                  add          a2, a2, a6
168:              nop
                  lui          s0, 762726
                  sra          a3, s5, s3
                  bgeu         t4, s2, 184f
172:              lui          s5, 483673
                  slli         s2, a1, 29
                  lui          t1, 563081
                  xori         sp, s2, -664
                  xor          a7, s7, s6
                  or           t0, s9, zero
                  xori         a7, ra, -350
                  lui          sp, 997833
                  nop
                  sub          a0, a0, zero
                  xori         t1, a3, 250
                  blt          s6, a7, 197f
184:              andi         a0, s3, 1498
                  xori         a0, s5, 1066
                  xori         a5, t1, -631
                  srli         t3, t1, 13
                  slti         a7, s2, 659
                  add          s2, a0, t6
                  nop
                  add          a2, ra, a4
                  and          t2, ra, s0
                  slti         a1, t5, -1256
                  auipc        a0, 943124
                  bltu         s5, t5, 214f
                  bltu         a2, a2, 200f
197:              srli         s3, s1, 1
                  sll          s3, a1, s2
                  and          t0, s11, s1
200:              xor          a4, t3, a4
                  beq          t6, t0, 208f
                  slti         t5, s9, -1875
                  sll          a7, t0, t4
                  xori         s0, s1, -682
                  srai         a5, s10, 4
                  bne          s7, s3, 216f
                  blt          t6, a0, 208f
208:              sltu         s0, t3, zero
                  andi         a7, t3, -259
                  xor          a6, s1, t5
                  srai         s1, a7, 23
                  bltu         a1, a1, 228f
                  slti         a4, t6, 1784
214:              nop
                  beq          a5, t2, 229f
216:              sra          t6, s5, s0
                  nop
                  or           s5, s5, s8
                  bgeu         t0, gp, 228f
                  bltu         s6, ra, 225f
                  lui          t5, 102694
                  xor          a3, tp, s4
                  bne          a7, a4, 238f
                  bgeu         a2, s7, 231f
225:              lui          sp, 143020
                  blt          ra, t4, 237f
                  xori         s3, a6, -375
228:              sltu         s9, s8, s11
229:              blt          t1, tp, 234f
                  bge          t3, s10, 240f
231:              auipc        s7, 978048
                  slt          t6, t4, a7
                  srai         t5, a3, 14
234:              srl          s5, s10, t2
                  andi         t3, a0, -1099
                  nop
237:              slli         a0, a3, 26
238:              sltiu        t1, s5, -1760
                  sra          t5, t5, a5
240:              sll          a2, a2, s6
                  xor          gp, s1, sp
                  bgeu         s11, s11, 258f
                  sra          s0, t2, s0
                  bgeu         a3, ra, 250f
                  xor          sp, s6, t1
                  bne          s10, s1, 262f
                  srli         a3, s9, 18
                  nop
                  sra          a4, a7, s2
250:              slti         a5, t2, 246
                  sra          a7, s4, a5
                  bge          s9, a5, 263f
                  bne          a6, sp, 266f
                  sltiu        a5, zero, -1140
                  sub          a4, s5, s11
                  sra          a1, s5, s3
                  blt          s8, s3, 269f
258:              sltu         s2, gp, a1
                  lui          s0, 530597
                  sltu         zero, a2, s6
                  and          t6, a0, s2
262:              and          zero, s6, s7
263:              sub          s9, a5, a0
                  bne          a7, a2, 278f
                  andi         s8, sp, 86
266:              andi         t5, s0, -1670
                  sra          zero, s7, s8
                  la           s5, region_1+207 #start riscv_load_store_rand_instr_stream_2
                  lhu          t2, 21(s5)
                  sb           a4, 1016(s5)
                  lh           t2, 473(s5)
                  sh           s7, 705(s5)
                  xori         s2, gp, -242
                  lbu          a3, 259(s5)
                  auipc        a6, 235972
                  lui          s1, 1028107
                  sh           t4, 709(s5)
                  lhu          a4, 499(s5)
                  sb           s3, 289(s5)
                  lw           t4, 1313(s5)
                  srli         s8, s10, 11
                  lh           s0, -199(s5)
                  andi         s2, a0, -562
                  andi         t4, tp, -1916
                  lh           a3, 805(s5)
                  lbu          t4, 642(s5)
                  lhu          a5, 1059(s5)
                  lhu          a0, 1369(s5)
                  lhu          a4, 139(s5)
                  lb           t4, 1061(s5)
                  addi         gp, s6, 1205
                  sb           a0, 1120(s5)
                  lbu          s3, 662(s5)
                  sb           a4, 663(s5)
                  andi         s11, t0, -1011
                  sb           a5, 132(s5)
                  sltiu        s3, a7, -1845
                  sltu         s4, a1, s0
                  xor          a2, a4, t4
                  lb           s3, -82(s5)
                  lb           a0, 259(s5)
                  sra          s9, t6, ra
                  lh           t3, 867(s5)
                  lbu          a5, 991(s5)
                  xor          s2, s3, ra
                  xori         s8, t4, -1422
                  xori         a2, s4, -1392
                  sub          t6, a3, s6
                  lb           t4, 1686(s5)
                  lbu          s3, 86(s5)
                  sb           ra, 1464(s5) #end riscv_load_store_rand_instr_stream_2
                  lui          a6, 285632
269:              auipc        s1, 76260
                  blt          s0, s7, 281f
                  sll          a0, ra, s0
                  addi         zero, a0, 1986
                  bne          tp, t2, 278f
                  auipc        sp, 140059
                  sll          s2, zero, s3
                  slli         t2, zero, 11
                  auipc        t5, 535440
278:              bgeu         s9, t0, 288f
                  srai         a2, t4, 4
                  srl          t6, s9, s7
281:              srli         a1, t4, 23
                  and          s8, a7, t0
                  andi         s4, a7, 1826
                  sll          s9, t2, t3
                  slti         a0, s9, -1688
                  sll          a2, a6, t6
                  sltiu        t6, t6, -1122
288:              lui          a5, 197360
                  bne          s11, a0, 300f
                  addi         t4, s1, 320
                  auipc        s2, 821215
                  sltu         t6, a1, gp
                  sra          s2, sp, t4
                  sltu         a2, a1, gp
                  xor          t0, s3, s9
                  and          s9, s3, t0
                  sub          s7, s8, t3
                  nop
                  slli         s0, s4, 22
300:              srl          s5, s6, a4
                  addi         s3, t5, -322
                  srai         s2, ra, 12
                  lui          s5, 593609
                  sltu         a7, s2, s4
                  andi         s3, a2, 1778
                  auipc        t3, 1020994
                  srli         tp, a6, 26
                  auipc        s4, 247416
                  sltiu        s5, s6, 1507
                  sltu         a7, s8, a0
                  add          s11, s11, a0
                  sll          zero, s8, s3
                  sltiu        s0, s6, 1786
                  bltu         s10, s2, 327f
                  lui          t6, 607864
                  slli         t0, a6, 31
                  andi         gp, a3, 510
                  and          s11, a1, gp
                  ori          t3, t2, -369
                  auipc        t5, 61989
                  slti         tp, ra, -970
                  bltu         s8, zero, 329f
                  add          a1, s6, t3
                  sll          sp, t5, gp
                  sra          t5, a1, a5
                  slt          s2, t3, a0
327:              nop
                  sltu         s11, a2, t4
329:              slt          s5, t4, tp
                  and          t6, t6, s4
                  addi         s0, t1, 1714
                  bne          s1, sp, 342f
                  bge          t4, s4, 352f
                  sra          gp, sp, a0
                  xor          t5, t5, t1
                  slt          a1, s10, s2
                  add          s3, a3, a4
                  bgeu         s8, zero, 348f
                  add          s9, a6, a2
                  srli         t1, s0, 3
                  or           t2, a5, ra
342:              bne          a1, tp, 358f
                  nop
                  slti         t5, t3, -1910
                  slti         a2, t3, -945
                  or           s5, s4, t2
                  sltiu        zero, sp, -550
348:              bge          t2, ra, 362f
                  srli         t6, t3, 4
                  addi         tp, s10, 1029
                  beq          s7, t0, 355f
352:              xori         s8, t4, -34
                  slli         s2, t0, 29
                  bgeu         a1, s1, 360f
355:              sltiu        s3, s6, -1238
                  lui          t2, 851929
                  lui          t2, 504264
358:              nop
                  sra          a4, ra, s11
360:              srl          s2, ra, tp
                  add          gp, t0, a6
362:              auipc        t4, 467544
                  add          a2, a4, t3
                  lui          a1, 596328
                  bge          s10, a3, 379f
                  andi         t3, a3, -1547
                  srli         a1, sp, 26
                  sltiu        gp, s3, -1457
                  andi         t4, tp, 65
                  or           s9, t6, s3
                  beq          ra, t1, 377f
                  slt          t0, a1, t2
                  srai         tp, s10, 17
                  sub          a3, a6, zero
                  andi         t6, s1, 408
                  sll          s2, tp, s5
377:              xori         t6, a7, -503
                  andi         s3, a1, -1537
379:              bne          a2, t6, 394f
                  sltu         a7, s11, tp
                  xori         sp, t4, -131
                  bltu         a6, s9, 393f
                  xori         s9, s1, -569
                  srl          tp, t1, s0
                  sra          s5, s2, tp
                  nop
                  bne          t2, s1, 401f
                  andi         t1, a7, 1270
                  auipc        gp, 124153
                  addi         a3, s8, 1868
                  bge          tp, t6, 392f
392:              bgeu         t1, a2, 405f
393:              slli         gp, ra, 23
394:              blt          s1, a7, 405f
                  sub          s7, s10, s9
                  sra          s8, s8, s4
                  bgeu         s0, tp, 413f
                  auipc        tp, 348323
                  srli         t6, s0, 7
                  auipc        a0, 605914
401:              sll          a1, zero, s9
                  beq          s2, tp, 411f
                  sll          a3, s7, s8
                  bne          a6, tp, 421f
405:              auipc        s11, 28112
                  bne          sp, t0, 413f
                  bge          sp, t1, 412f
                  xori         sp, t0, 877
                  ori          a0, s5, -1386
                  sra          s4, a1, s7
411:              sltu         a6, s4, gp
412:              xor          s9, s9, gp
413:              bne          t6, a1, 417f
                  xori         sp, s9, -1313
                  sub          a5, s5, s4
                  slt          a4, zero, tp
417:              beq          t3, zero, 422f
                  slt          t5, ra, t5
                  add          t2, t5, s0
                  lui          a4, 218728
421:              beq          s5, a3, 437f
422:              nop
                  addi         a6, sp, 193
                  srli         s1, t4, 8
                  blt          tp, s5, 435f
                  auipc        s8, 261972
                  sltu         s2, gp, s0
                  sltiu        s2, s6, 1672
                  srl          a7, tp, s11
                  bgeu         s5, s9, 435f
                  sra          s2, s3, s7
                  beq          t0, a1, 452f
                  andi         s1, t0, -1187
                  sltiu        tp, a7, 307
435:              bge          s9, s1, 447f
                  srl          sp, ra, s2
437:              srli         a6, s6, 25
                  sub          s1, a1, t2
                  and          gp, s4, s3
                  auipc        s9, 342122
                  srai         s0, s3, 29
                  sub          s8, s4, t2
sub_1_j2:         jal          s1, sub_2 #jump sub_1 -> sub_2
                  or           s3, s11, tp
                  slli         s4, t6, 21
                  auipc        t3, 629531
                  srl          s1, s3, s5
                  bltu         a2, t0, 452f
                  bgeu         t6, a7, 452f
                  andi         s2, zero, -1310
                  bgeu         s11, ra, 452f
                  sra          sp, s11, gp
447:              bltu         s2, zero, 461f
                  nop
                  andi         t0, t1, -1893
                  lui          s1, 529452
                  sll          t1, sp, s8
452:              and          s11, t5, t6
                  slti         s2, s6, -1623
                  srli         gp, s10, 28
                  addi         s4, a4, 1847
                  bne          a0, s6, 461f
                  srl          zero, s7, a0
                  sll          s11, a3, s10
                  slti         s3, zero, 1852
                  or           s3, a6, t0
461:              add          s5, a3, a6
                  xor          s7, a6, a5
                  or           a4, s4, s7
                  sltiu        s11, s4, 943
                  bltu         tp, s5, 478f
                  slt          a3, gp, a0
                  xor          a5, a4, t6
                  sub          s1, a4, t6
                  beq          a7, gp, 486f
                  srai         a5, gp, 1
                  srli         s11, a5, 27
                  srli         t0, t4, 9
                  or           zero, ra, t1
                  xori         gp, t4, -1814
                  bge          t6, s2, 482f
                  auipc        a5, 180594
                  sll          s4, s2, a0
478:              xor          gp, tp, ra
                  sub          a0, a6, gp
                  nop
                  addi         t4, t5, 650
482:              lui          a2, 377727
                  xori         s0, gp, 1131
                  slli         t6, ra, 16
                  and          a7, s0, s11
486:              srli         s0, s6, 6
                  add          t5, s10, t6
                  sltiu        a5, sp, -1264
                  sltu         t2, s11, t1
                  slli         s0, a4, 14
                  ori          t3, a0, 1956
                  auipc        s8, 193199
                  add          a6, t2, s9
                  slti         t2, s10, -942
                  andi         a4, s0, 1183
                  addi         s4, a4, -765
                  sltu         a1, a3, a5
                  slt          gp, s1, s9
                  srl          a1, s4, s0
                  bne          s9, t5, 520f
                  bne          t0, s9, 517f
                  sra          s11, s4, s11
                  blt          s11, t1, 515f
                  slti         t2, gp, 293
                  srai         gp, s0, 6
                  addi         a4, s2, -1514
                  xori         a2, a5, -1306
                  slti         a2, a7, -798
                  sltiu        s7, t2, -742
                  beq          t6, t5, 511f
511:              lui          a5, 640543
                  slti         a6, a6, -1029
                  xor          t4, sp, t5
                  sll          s7, s2, s8
515:              slli         a6, a0, 8
                  bltu         t5, a0, 530f
517:              sll          s5, a0, t5
                  bne          a0, t3, 529f
                  srl          t4, gp, s11
520:              bge          sp, t6, 533f
                  auipc        s4, 194945
                  lui          t4, 24957
                  sll          s3, a4, t1
                  sll          s5, t1, s1
                  add          a5, sp, t0
                  sra          s0, a5, s10
                  nop
                  srai         t5, a0, 17
529:              sltiu        a1, a5, -520
530:              sltiu        t6, s8, -431
                  bne          a6, s4, 535f
                  slli         s2, a0, 12
533:              sltiu        s5, s2, -1196
                  bge          s5, s5, 549f
535:              slli         t2, s1, 15
                  auipc        zero, 210215
                  xor          t4, t0, sp
                  ori          a1, t1, -1666
                  xori         a7, s3, -1008
                  andi         a5, s4, 1894
                  or           a5, s11, t4
                  srl          t4, s8, a1
                  add          a0, a4, s6
                  xori         sp, t5, -1686
                  bltu         t3, s3, 559f
                  srl          t3, s1, zero
                  ori          sp, s0, -452
                  slti         s4, s2, -450
549:              bne          s6, t2, 554f
                  nop
                  add          a3, a0, tp
                  auipc        a4, 178304
                  addi         s3, zero, -89
554:              sll          a0, a4, a0
                  beq          s2, t3, 560f
                  sltiu        a4, s3, 1036
                  ori          a0, ra, 1724
                  or           gp, tp, s3
559:              bge          s9, s6, 560f
560:              slt          a6, a7, t5
                  addi         s9, zero, 1388
                  srl          a1, s6, s9
                  slli         s3, s3, 22
                  nop
                  sub          t1, s8, s7
                  lw           s1, 4(s10)
                  addi         s10, s10, 52
                  slt          s3, s11, a1
                  andi         t2, a2, 1190
                  auipc        a1, 651785
                  sltiu        a4, s8, 1319
                  sll          t5, zero, t1
766:              addi x20, x9, 1
766:              jalr x20, x20, 0
sub_5:            ori          t4, s10, 570
                  addi         s10, s10, -16
                  add          s8, sp, gp
                  sw           s1, 4(s10)
                  sub          s7, s10, a0
                  add          t2, a0, a5
                  slti         s0, a6, -612
                  la           s2, region_1+1561 #start riscv_load_store_rand_instr_stream_7
                  sb           t5, 55(s2)
                  sb           s0, 10(s2)
                  sltu         t4, zero, s2
                  ori          a1, s6, 1509
                  srl          t1, s10, s8
                  sltu         a4, a7, s9
                  xor          a0, a3, s2
                  sb           t4, 25(s2)
                  xor          s9, s7, s7
                  sb           sp, -35(s2)
                  xori         s1, ra, -1342
                  lbu          s5, -11(s2)
                  srai         sp, s2, 9
                  slli         a7, tp, 30
                  or           zero, a3, t6
                  lb           a7, 64(s2)
                  xori         s1, s10, 1905
                  lbu          s1, -3(s2)
                  srai         tp, t4, 28
                  auipc        t6, 899456
                  lb           a6, 20(s2)
                  sub          a2, sp, t5
                  srl          s9, t1, ra
                  add          a2, a6, s1
                  nop
                  sh           t1, 23(s2)
                  sb           a7, 26(s2)
                  lbu          a3, 29(s2)
                  sub          s7, a1, s10
                  lbu          s9, 42(s2)
                  sh           t5, -35(s2)
                  sb           t4, -27(s2)
                  sb           s9, -30(s2)
                  sltu         a7, a0, s1
                  lb           s4, -34(s2)
                  slt          t1, a0, s4
                  lb           a6, 54(s2)
                  lb           t5, 61(s2)
                  lb           s7, -22(s2)
                  xor          a1, t2, ra
                  sra          s9, ra, a0
                  srl          a2, a6, s3
                  lb           s8, -56(s2)
                  lb           gp, 36(s2)
                  sb           a2, 29(s2)
                  lh           s8, 63(s2)
                  sub          s9, gp, a7
                  lbu          s3, 48(s2)
                  nop
                  lhu          t3, 43(s2)
                  slli         t0, s7, 2
                  sb           t0, -12(s2)
                  sltu         s0, s3, a6
                  lui          a6, 765001
                  lbu          a7, 57(s2) #end riscv_load_store_rand_instr_stream_7
                  la           t3, region_0+492 #start riscv_load_store_rand_instr_stream_8
                  lbu          t2, -140(t3)
                  lb           s7, 150(t3)
                  sb           s5, 57(t3)
                  sw           s7, 232(t3)
                  lbu          s8, 118(t3)
                  sb           s1, 227(t3)
                  and          gp, s3, s2
                  nop
                  sltiu        a4, t6, 428
                  sub          s11, s6, s3
                  andi         sp, a3, 955
                  sub          a4, a4, s9
                  lw           s8, 176(t3)
                  sw           t0, -196(t3)
                  addi         a4, a3, 1410
                  xori         t0, t1, -1033
                  sb           t3, -201(t3)
                  lbu          sp, -204(t3)
                  lb           a1, 143(t3)
                  lui          s8, 918313
                  lbu          s11, 173(t3)
                  and          a2, a3, gp
                  sb           t4, 75(t3)
                  lb           a0, -248(t3)
                  sw           t2, 20(t3)
                  lb           t2, 245(t3)
                  srli         t6, a5, 0
                  and          s5, s11, s7
                  srai         s11, a5, 16
                  sll          t0, ra, a2
                  lbu          a2, 94(t3)
                  lui          t1, 633429
                  and          t4, t3, s3
                  srli         s0, s6, 11
                  lb           s1, -157(t3)
                  lb           zero, 207(t3)
                  andi         sp, a1, -678
                  nop
                  and          a0, t3, tp
                  lbu          s8, 253(t3) #end riscv_load_store_rand_instr_stream_8
                  la           s9, region_0+663 #start riscv_load_store_rand_instr_stream_5
                  xori         tp, s2, -1276
                  lh           s8, -191(s9)
                  sub          t1, s5, s11
                  slti         a4, t3, 286
                  add          a4, a0, s11
                  lbu          a5, -47(s9)
                  lb           s0, -174(s9)
                  sb           a6, 82(s9)
                  sb           a2, -220(s9)
                  sh           s2, 241(s9)
                  addi         a5, t5, -642
                  or           s4, s8, t4
                  srli         a2, t1, 9
                  lh           a2, -185(s9)
                  xori         s8, s4, -1721
                  lh           a1, -71(s9)
                  sb           t4, 73(s9)
                  lb           a7, 156(s9)
                  auipc        t3, 735829
                  lui          t0, 300994
                  sb           s0, -197(s9)
                  lbu          t5, 117(s9)
                  lbu          a0, -255(s9)
                  lbu          s7, 50(s9)
                  lbu          t1, 45(s9)
                  add          a4, s6, s10
                  srli         t6, s1, 22
                  srli         s8, s8, 30
                  slti         s5, s7, -559
                  ori          a5, t3, 951
                  sb           zero, 166(s9)
                  lh           tp, 49(s9)
                  sb           zero, -110(s9)
                  sb           s7, 26(s9)
                  srl          s5, s2, t2
                  lb           a0, 224(s9)
                  xor          s8, a6, ra
                  lhu          s8, -147(s9)
                  sh           a5, 153(s9)
                  lbu          s8, 132(s9)
                  srli         gp, s10, 27
                  lh           t1, -203(s9) #end riscv_load_store_rand_instr_stream_5
                  la           a1, region_0+279 #start riscv_load_store_rand_instr_stream_4
                  lh           a4, -59(a1)
                  sh           s10, 61(a1)
                  lbu          s9, 6(a1)
                  sltu         s7, t0, t4
                  srli         s5, a4, 25
                  lbu          t3, 60(a1)
                  lbu          t4, -16(a1)
                  sb           a4, 62(a1)
                  lh           a3, -17(a1)
                  sb           a1, 4(a1)
                  addi         t5, a1, 1765
                  xori         a4, s11, -1754
                  lhu          s11, 27(a1)
                  nop
                  sh           a3, 37(a1)
                  sub          s1, t2, s2
                  sb           tp, -38(a1)
                  lw           s2, -11(a1)
                  lh           t2, -41(a1)
                  lbu          t2, -32(a1)
                  lb           a4, -10(a1)
                  lb           sp, -63(a1)
                  lbu          t6, -29(a1)
                  lb           s9, 52(a1)
                  lh           s7, -53(a1)
                  lb           t5, -47(a1)
                  slti         zero, t4, 816
                  lh           zero, -51(a1)
                  sb           t4, -30(a1)
                  andi         t6, s2, 999
                  sb           a2, 16(a1)
                  nop
                  sb           s11, -39(a1)
                  lb           t6, -2(a1)
                  sb           tp, -24(a1)
                  sra          s9, s2, s5
                  lbu          t6, -6(a1)
                  lb           a3, 56(a1) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1009 #start riscv_load_store_rand_instr_stream_0
                  lbu          s11, 30(sp)
                  lhu          s5, 7(sp)
                  lb           t3, -37(sp)
                  lui          t4, 348071
                  auipc        a1, 1037829
                  lb           s7, 46(sp)
                  srl          s0, s1, s0
                  lbu          s0, 64(sp)
                  xori         s2, t1, 1590
                  sb           sp, -20(sp)
                  sb           s9, 40(sp)
                  srl          a2, a5, s0
                  lbu          a1, -52(sp)
                  sb           a2, -42(sp)
                  auipc        s5, 185316
                  lbu          t3, 9(sp)
                  lui          s4, 483192
                  lb           t3, 18(sp)
                  xori         t0, s0, 1723
                  lb           t1, 41(sp)
                  lb           a4, -34(sp)
                  sltiu        a0, a5, 1561
                  sb           t4, 36(sp)
                  lhu          s5, 19(sp)
                  lw           s5, -49(sp)
                  sll          s9, a4, s11
                  slli         s3, t0, 9
                  sra          s8, a7, a0
                  slti         s9, s5, -669
                  xor          s9, a6, s2
                  nop
                  auipc        t0, 786082
                  addi         s0, s7, 1222
                  lbu          s5, -4(sp) #end riscv_load_store_rand_instr_stream_0
                  sub          tp, s11, t3
                  ori          a3, gp, -400
                  bltu         gp, s6, 13f
                  sra          s2, t0, a4
                  addi         a7, t4, -1620
                  or           t4, s0, a5
                  addi         a3, s11, 627
                  srai         t3, a4, 10
                  andi         a0, a6, 1045
                  sltiu        t4, a2, 327
                  srai         t6, t5, 2
                  slti         t0, ra, -1418
                  ori          s5, s8, 1034
13:               lui          zero, 141872
                  bgeu         s10, t6, 17f
                  sltu         a5, s2, gp
                  and          a1, a4, a1
17:               slti         s2, s1, -1714
                  or           gp, s9, s2
                  slli         t0, a3, 25
                  sub          a7, t5, t5
                  auipc        a1, 1021097
                  srli         a1, s6, 9
                  ori          sp, t2, 1763
                  bgeu         ra, t0, 40f
                  slti         s1, s7, 128
                  ori          t6, s1, 838
                  bge          zero, a4, 36f
                  slli         s5, s10, 29
                  add          t5, s9, gp
                  slt          t1, a6, s11
                  srl          gp, t3, s9
                  sra          a1, t1, a6
                  srai         tp, s10, 15
                  sll          s9, s4, t4
                  lui          s3, 361319
36:               srli         zero, t2, 5
                  sltiu        a3, t6, -1608
                  ori          a5, a1, -506
                  auipc        a5, 372371
40:               sltu         s1, t6, a3
                  add          s5, a2, a2
                  bgeu         t5, a5, 58f
                  sltu         a6, t6, s4
                  sltiu        t6, t2, -100
                  xori         tp, t2, -833
                  xor          s4, s10, sp
                  add          t0, t2, t1
                  bne          s11, a7, 66f
                  beq          gp, tp, 66f
                  and          t3, s3, s1
                  lui          s11, 792563
                  srli         a1, s8, 15
                  sub          s8, sp, t4
                  bltu         gp, t4, 58f
                  srai         t5, a3, 10
                  nop
                  bge          sp, a1, 59f
58:               xor          tp, a2, a4
59:               sll          t0, t3, s10
                  addi         t5, s10, 1207
                  and          t1, zero, s7
                  sltu         t3, s10, ra
                  addi         s7, s11, 148
                  sub          sp, s7, a2
                  sltiu        zero, s5, 1930
66:               slli         s5, s9, 22
                  auipc        a5, 532974
                  xori         a2, s1, 411
                  srai         t2, t3, 30
                  sub          t4, s6, t6
                  bge          a6, s10, 91f
                  slt          t2, s9, t4
                  auipc        s4, 814510
                  srai         t2, t2, 1
                  bltu         a5, s6, 78f
                  srai         t6, s6, 15
                  lui          t2, 677001
78:               xor          s9, a0, a4
                  xori         a3, s11, 404
                  bgeu         s2, a0, 89f
                  srli         a1, zero, 5
                  srl          t6, s8, tp
                  xor          t5, s1, tp
                  slt          t2, t5, t1
                  bge          s9, sp, 102f
                  sll          a6, s1, s2
                  sltiu        t1, t4, -1366
                  sub          s9, a1, s10
89:               ori          tp, s2, -1266
                  slt          tp, s8, t3
91:               sltiu        a4, s6, 1791
                  srli         t1, a3, 19
                  and          a2, a4, t3
                  andi         a7, a7, -40
                  sra          t6, t2, a1
                  srli         a6, s8, 15
                  add          a7, gp, s7
                  sltiu        t4, s5, 31
                  addi         t1, s4, -623
                  add          a1, a4, zero
                  or           a6, s0, s2
102:              slt          s1, zero, zero
                  slti         t4, s1, -1488
                  srli         a4, t3, 18
                  bge          a4, t5, 125f
                  slti         a2, a1, 802
                  add          s5, s5, a3
                  or           a5, s3, s8
                  srl          gp, t2, a5
                  sub          s3, a3, s4
                  sll          a2, s1, s6
                  auipc        a0, 349248
                  slti         t5, gp, -1220
                  add          t4, tp, t3
                  or           gp, a4, zero
                  srl          tp, t6, a1
                  sra          a5, sp, s6
                  bne          gp, ra, 119f
119:              srl          t5, t5, t1
                  slti         t0, gp, 1942
                  slti         s9, t5, 1165
                  sltu         s1, s8, s8
                  sra          t5, s6, s9
                  blt          s6, a6, 142f
125:              or           a4, a4, tp
                  nop
                  andi         a3, a7, 1342
                  sub          s0, t3, t4
                  addi         s7, t4, 904
                  sub          s4, t5, a7
                  srl          s11, gp, t6
                  or           t0, s0, s2
                  sltu         s3, tp, t4
                  sra          s8, a7, ra
                  srai         a4, t5, 4
                  bgeu         a1, t2, 142f
                  sra          s7, tp, t0
                  bge          s4, tp, 150f
                  beq          tp, zero, 140f
140:              slti         a4, s4, 886
                  nop
142:              bne          s6, s4, 158f
                  srli         zero, s9, 24
                  srl          t0, ra, s0
                  slli         a4, a0, 12
                  andi         a2, s8, -783
                  sll          t4, t4, a0
                  and          a5, s11, sp
                  bne          a0, a1, 157f
150:              lui          t6, 922754
                  xor          t3, s7, t2
                  sub          a7, a0, s4
                  and          t1, t6, s0
                  and          s2, a3, t1
                  nop
                  bltu         s4, t0, 164f
157:              add          s7, a3, a5
158:              sltu         a2, s6, s8
                  slti         t3, s5, 668
                  sltiu        a3, s0, -1062
                  sub          t5, gp, s0
                  or           s4, s0, s8
                  srai         t1, s11, 1
164:              bgeu         t3, s5, 172f
                  slti         s3, a1, -665
                  xor          gp, s5, a4
                  slti         a5, a3, 271
                  srai         a1, a3, 1
                  addi         sp, a6, 582
                  andi         t2, a4, -1933
                  bge          a2, s8, 179f
172:              blt          s2, t6, 185f
                  sltiu        t5, s8, -212
                  add          s0, s2, gp
                  nop
                  slti         t0, sp, 873
                  sltiu        gp, t1, -495
                  bne          a3, t5, 197f
179:              xori         a6, s11, -1604
                  slti         a3, t2, -1285
                  slli         a5, s0, 18
                  addi         t4, a0, 1354
                  bltu         s11, a6, 189f
                  ori          sp, a4, 451
185:              lui          s4, 750925
                  slt          t2, s4, s11
                  sra          sp, a1, s10
                  srli         s8, s0, 17
189:              srli         a6, t2, 30
                  srl          a1, s11, tp
                  sll          a2, t2, s6
                  bge          a1, t0, 208f
                  auipc        t0, 970182
                  sra          a7, a3, s3
                  srli         s2, t3, 22
                  srli         s5, s9, 0
197:              sra          a6, t1, a0
                  sltiu        s7, s2, -1064
                  slli         s9, a3, 31
                  slli         zero, a4, 25
                  sltu         t2, a3, t1
                  beq          s7, t6, 215f
                  nop
                  slt          a6, t1, s0
                  auipc        s1, 706347
                  beq          s9, ra, 225f
                  slli         t5, a2, 16
208:              sra          s2, s11, a0
                  addi         s9, zero, 766
                  addi         s9, s3, 1903
                  or           t1, a6, t2
                  slti         a1, a2, 1631
                  slt          s7, s10, sp
                  srai         s1, gp, 16
215:              auipc        s0, 157713
                  sltu         t3, a6, a0
                  sra          t0, s2, s0
                  sll          a0, a3, a1
                  sll          t4, s0, s1
                  srai         s2, tp, 4
                  ori          t4, a4, -597
                  bltu         tp, gp, 241f
                  bgeu         t2, a2, 243f
                  srl          a0, ra, a3
225:              add          zero, gp, zero
                  sll          s4, a0, a3
                  add          s0, t0, s6
                  lui          tp, 467969
                  bne          t3, s5, 242f
                  nop
                  blt          t3, t1, 237f
                  addi         t1, s2, 1684
                  lui          t1, 870816
                  and          a0, a6, a0
                  bne          t4, s5, 237f
                  bne          tp, s9, 253f
237:              auipc        t4, 366495
                  bltu         t1, s6, 246f
                  sub          a6, a4, t5
                  nop
241:              lui          gp, 299612
242:              nop
243:              and          s9, gp, s9
                  sltu         s1, t5, s5
                  sll          s2, s6, a5
246:              xor          a4, s8, a6
                  sltu         t1, s8, zero
                  or           a6, tp, tp
                  blt          s4, t6, 265f
                  bne          s7, t1, 253f
                  srai         sp, t1, 18
                  srli         s3, a0, 31
253:              nop
                  srli         sp, s0, 20
                  nop
                  slli         s0, zero, 22
                  bge          t1, s10, 277f
                  blt          s11, s9, 264f
                  xori         zero, t3, -1485
                  sltu         t4, s6, s1
                  and          a3, s3, a3
                  bltu         s5, t2, 278f
                  sltu         s5, s7, t4
264:              or           a4, a4, s9
265:              bne          a0, s4, 274f
                  sra          s4, s2, tp
                  or           a3, s9, t6
                  sub          a3, t1, s7
                  nop
                  andi         t4, a2, -744
                  ori          sp, t2, 416
                  auipc        a5, 801723
                  sra          t3, s5, a0
274:              lui          t0, 314815
                  lui          gp, 182582
                  srli         t0, s1, 0
277:              bgeu         ra, s7, 289f
278:              bne          s8, t4, 286f
                  auipc        a2, 723335
                  and          t6, s0, t6
                  sltu         s7, s11, a7
                  sltiu        a6, s4, 643
                  sltu         t1, t3, t5
                  auipc        s9, 498779
                  bne          t6, sp, 286f
286:              and          t1, s9, s4
                  srai         gp, s5, 1
                  slli         t5, a3, 23
289:              srli         tp, ra, 11
                  xor          tp, a7, ra
                  bgeu         s0, sp, 309f
                  and          gp, s1, s8
                  bne          a0, sp, 304f
                  or           a7, a6, gp
                  lui          gp, 880346
                  and          s5, a1, gp
                  slt          t1, s1, a0
                  nop
                  sll          s0, a2, a5
                  lui          a1, 977197
                  or           a3, t3, s10
                  bltu         zero, t3, 319f
                  andi         t4, t4, -1340
304:              sra          t4, t6, a4
                  slli         s7, s0, 27
                  sub          tp, t1, s2
                  bne          t2, a4, 308f
308:              srai         s1, a6, 9
309:              xori         s1, zero, 1678
                  sltu         a3, s10, s3
                  slt          s2, tp, s2
                  sltu         t4, a7, a3
                  nop
                  xor          s5, a6, t4
                  sltiu        s1, t5, 1182
                  addi         t6, t2, -622
                  slli         a4, s7, 25
                  or           t2, a6, s6
319:              slt          t5, t2, t3
                  srl          t6, a3, t4
                  or           t3, tp, tp
                  sll          a7, t6, tp
                  slt          s4, s9, s4
                  xor          t1, t4, s3
                  sltu         a3, sp, a3
                  srli         tp, t6, 7
                  bltu         t2, s3, 340f
                  sll          zero, a4, t2
                  sra          a5, s2, gp
                  ori          s11, s2, 1330
                  xor          a7, s3, sp
                  bne          a4, s5, 335f
                  andi         s9, a6, -1534
                  addi         zero, s0, 578
335:              sltu         tp, a5, s1
                  bne          a3, a1, 352f
                  sll          sp, a1, tp
                  bgeu         sp, zero, 354f
                  bgeu         s4, a5, 347f
340:              bne          sp, a0, 344f
                  bge          t3, t3, 349f
                  srli         s0, s10, 2
                  srli         s7, s7, 29
344:              srai         a2, t6, 10
                  sltu         a0, a1, zero
                  srl          a3, a4, a3
347:              slli         t0, a7, 15
                  sltiu        a5, s4, 521
349:              add          sp, s5, sp
                  sub          tp, a4, s11
                  blt          s7, a5, 370f
352:              bge          s2, ra, 361f
                  blt          a3, a3, 371f
354:              andi         zero, s3, 390
                  add          a0, t6, a5
                  ori          sp, sp, 1053
                  sltiu        s0, a1, -875
                  srli         s0, s0, 11
                  la           a0, region_1+1221 #start riscv_load_store_rand_instr_stream_2
                  sb           a1, 36(a0)
                  xori         a6, t0, 1767
                  andi         s1, sp, 1943
                  nop
                  sb           a4, 38(a0)
                  lb           a6, -29(a0)
                  sra          t2, s8, s10
                  add          a3, a4, a3
                  lb           a7, -53(a0)
                  slt          a4, a3, s11
                  srai         s5, t2, 21
                  srli         s1, s4, 4
                  addi         s1, a1, 1404
                  lbu          s4, 1(a0)
                  lb           a4, -42(a0)
                  and          s2, a5, s6
                  sb           a5, -46(a0)
                  sb           t2, 3(a0)
                  andi         a7, s2, 1057
                  lb           t3, -12(a0)
                  slti         t4, zero, -147
                  srl          a1, t0, a5
                  sb           a3, 60(a0)
                  sub          tp, a5, s11
                  lui          t4, 611884
                  lui          zero, 1039655
                  srai         a3, ra, 31
                  slli         a2, tp, 12
                  lbu          a2, 9(a0)
                  slt          zero, sp, s0
                  srl          a7, ra, a4
                  sb           s3, -60(a0)
                  sw           a2, -17(a0)
                  add          s4, s2, s1
                  lb           s8, -4(a0)
                  lb           a2, 6(a0) #end riscv_load_store_rand_instr_stream_2
                  srai         a5, zero, 16
                  ori          t3, s8, 1740
361:              bltu         ra, t5, 369f
                  addi         a3, t2, -223
                  slli         a1, s4, 1
                  slti         s11, a3, -140
                  andi         s1, s6, -1374
                  and          a1, s6, s4
                  nop
                  bne          s8, t6, 387f
369:              slti         a5, s6, -875
370:              blt          a7, s5, 388f
371:              slti         s0, s1, -113
                  sra          t3, s1, tp
                  bge          a0, ra, 379f
                  ori          t1, s6, 1788
                  or           a4, ra, t3
                  and          a7, t4, s2
                  slli         sp, s5, 9
                  or           s4, s8, ra
379:              lui          a5, 560990
                  bne          a5, s8, 396f
                  bgeu         s8, a7, 389f
                  blt          t4, t4, 390f
                  addi         s2, t4, -1835
                  sll          t0, zero, s8
                  bge          s5, a5, 388f
                  lui          tp, 145013
387:              slli         t5, a5, 5
388:              add          a4, gp, tp
389:              andi         t2, zero, -206
390:              nop
                  bne          s4, tp, 400f
                  sub          t0, t4, t4
                  slli         s5, s8, 10
                  and          s7, t2, s1
                  sltu         t2, s8, s0
396:              auipc        t5, 881484
                  sltiu        gp, s1, -100
                  slli         s11, s3, 29
                  slli         t2, zero, 14
400:              xor          s4, s0, t5
                  addi         s4, t3, 1688
                  xor          s3, s1, s5
                  nop
                  or           s11, a5, s5
                  andi         s0, a7, 2044
                  slti         gp, s4, -1092
                  addi         s3, a6, 169
                  sra          zero, s4, s5
                  addi         s11, zero, -1269
                  srl          t1, t5, gp
                  and          sp, s3, t5
                  ori          s7, s10, -682
                  srl          s1, t1, gp
                  andi         s0, t4, -746
                  slt          t4, t5, t4
                  xor          s5, a7, s9
                  slti         a5, a5, -252
                  srl          zero, sp, s9
                  sltiu        a6, zero, 1979
                  xori         s11, s6, 1095
                  srai         t3, sp, 30
                  addi         a1, a6, -1545
                  srai         zero, a5, 8
                  or           a1, t3, t3
                  slti         s7, a1, 1854
                  sra          t0, ra, t0
                  srai         s11, a4, 21
                  or           s4, s8, s11
                  bgeu         s0, s3, 445f
                  srl          a2, s5, t0
                  sub          s7, a0, s6
                  bgeu         s3, a7, 450f
                  slt          a4, a1, a2
                  sll          s2, s6, a6
                  sltu         t6, a1, t5
                  bltu         a0, a6, 456f
                  srai         a0, s1, 22
                  auipc        a5, 533902
                  addi         s0, s8, 743
                  sltiu        a4, s2, 1388
                  beq          s1, a4, 443f
                  bge          t3, ra, 448f
443:              sltiu        t1, t6, 716
                  srl          t6, a7, t4
445:              add          s0, gp, ra
                  srai         s5, a6, 14
                  slt          t5, a7, sp
448:              slt          t5, s3, t6
                  slli         s9, t4, 12
450:              srli         a2, s2, 15
                  beq          t2, t3, 462f
                  xori         a0, a2, -168
                  add          t1, sp, s8
                  srli         a7, a1, 28
                  srl          s5, a0, t2
456:              sltiu        s8, s0, -1722
                  addi         s7, a3, -1118
                  slli         a4, s10, 29
                  add          sp, t5, s9
                  srli         t0, a2, 8
                  or           s9, a3, ra
462:              addi         gp, t0, -2047
                  slti         t1, a6, -1302
                  slli         tp, t2, 20
                  sltu         a4, a0, s7
                  srl          t1, t1, t5
                  bge          a4, s11, 468f
468:              nop
                  ori          s2, t1, -208
                  addi         s9, a1, -1453
                  andi         t5, s5, 507
                  slli         s1, a0, 24
                  ori          a4, t0, -1595
                  sll          s2, a0, s0
                  srli         t0, t2, 11
                  nop
                  bltu         s11, t5, 497f
                  ori          s9, s4, -1537
                  bge          a3, a1, 487f
                  or           a2, a2, t4
                  lui          a6, 338786
                  sll          s11, s4, s5
                  lui          s11, 77615
                  bge          s3, t6, 500f
                  srli         a3, gp, 7
                  and          s7, t5, t5
487:              and          s1, sp, t6
                  lui          t2, 30824
                  slt          zero, s4, t4
                  add          s4, sp, s10
                  srli         a2, a6, 1
                  slti         a4, t0, 913
                  blt          a4, gp, 509f
                  xor          a4, a3, a1
                  bne          s11, t1, 499f
                  sub          a2, zero, s0
497:              slli         s3, sp, 23
                  srl          a7, tp, t0
499:              beq          s11, a5, 500f
500:              sltu         a3, a1, a1
                  bne          s11, t0, 510f
                  nop
                  srli         a2, s5, 6
                  or           t5, s10, tp
                  bge          s3, a2, 508f
                  ori          t0, a5, 1484
                  slli         a1, t6, 4
508:              sltu         t0, a7, a6
509:              lui          t6, 835807
510:              andi         a7, a3, -1064
                  lui          tp, 1009279
                  la           t0, region_0+1554 #start riscv_load_store_rand_instr_stream_6
                  lb           a5, -92(t0)
                  lbu          a4, -310(t0)
                  sw           s10, -230(t0)
                  lb           t1, -868(t0)
                  lb           t1, -1449(t0)
                  and          s0, t1, s1
                  lh           s8, -558(t0)
                  sll          a4, s7, t1
                  slti         gp, a4, 1762
                  sltiu        s9, a1, 1043
                  andi         sp, t0, -1115
                  sw           t5, -382(t0)
                  slli         sp, a4, 26
                  lh           s0, -834(t0)
                  xori         t6, a3, -1266
                  lbu          t4, -1041(t0)
                  sb           t3, -27(t0)
                  lbu          a3, -1349(t0)
                  and          tp, s1, zero
                  lh           a1, -1384(t0)
                  slli         a0, a1, 13
                  srai         a0, gp, 30
                  lb           s0, -675(t0)
                  sb           s11, 314(t0)
                  sra          s7, t0, t1
                  lhu          t6, -456(t0)
                  srl          a6, a5, t4
                  slti         gp, s11, -130
                  sra          sp, t1, ra
                  sb           s10, -41(t0)
                  srli         s1, a7, 24
                  lh           s1, -1184(t0)
                  sh           t5, 174(t0)
                  sb           t0, -1435(t0)
                  lbu          a2, -379(t0)
                  sb           t6, -220(t0)
                  nop
                  andi         t3, s8, 1882
                  lbu          a4, -1245(t0)
                  sh           t6, -980(t0)
                  lbu          sp, -163(t0)
                  sb           t1, -317(t0)
                  xori         a6, s0, -1300
                  lb           a6, -1325(t0) #end riscv_load_store_rand_instr_stream_6
                  and          s8, s1, a6
                  bne          s11, s2, 530f
                  slti         t4, sp, 1682
                  bne          a5, t5, 528f
                  srli         s3, a3, 5
                  andi         t0, a2, -978
                  bltu         s9, gp, 531f
                  bne          ra, t3, 538f
                  slli         t3, a1, 29
                  srl          sp, t1, t6
                  slti         t6, t5, -1803
                  srai         a1, t0, 21
                  addi         t2, s4, -572
                  and          s3, s6, t3
                  sll          gp, s9, t4
                  sra          a6, s0, s3
528:              srai         t3, a0, 30
                  sra          a1, gp, s5
530:              ori          s4, ra, 435
531:              slt          a1, s9, a1
                  bge          s11, a2, 549f
                  andi         t2, a3, -190
                  srli         a1, t6, 3
                  sub          s2, s0, a5
                  slli         s0, t1, 2
                  slli         t6, zero, 23
538:              or           zero, tp, s7
                  beq          s2, s1, 551f
                  slti         sp, t3, -619
                  nop
                  bltu         ra, a3, 560f
                  beq          t0, t0, 562f
                  xor          t5, s7, t4
                  sra          t6, s11, sp
                  andi         s9, s2, 1179
                  slt          a2, s6, a3
                  slt          t0, t6, a6
549:              nop
                  andi         t0, t0, -270
551:              sub          s3, s4, s3
                  add          s9, a5, a3
                  ori          s8, s10, -1718
                  beq          t4, sp, 558f
                  blt          s2, s2, 566f
                  slti         s8, zero, 1879
                  bgeu         t4, t5, 574f
558:              andi         s7, a7, 1998
                  slt          s8, s7, gp
560:              sltiu        t2, t3, -1223
                  ori          t3, a5, -1080
562:              bgeu         s3, s6, 582f
                  sll          s1, s6, a7
                  addi         a6, s10, -1915
                  ori          t4, a3, -56
566:              blt          a3, a2, 567f
567:              sra          s9, a7, zero
                  sltiu        t1, t4, 1724
                  beq          s0, ra, 582f
                  xori         t4, s0, -297
                  slt          t3, a7, ra
                  bgeu         s0, s3, 580f
                  slti         tp, zero, -1780
574:              and          t2, t6, tp
                  sra          s8, a1, t1
                  bge          sp, a2, 589f
                  add          t6, a5, t5
                  slt          tp, a4, s7
                  sll          t5, sp, s1
580:              nop
                  bge          zero, ra, 597f
582:              bltu         t3, a1, 584f
                  sra          t4, a1, a2
584:              add          gp, t5, zero
                  srl          a2, s5, s1
                  bne          t2, a6, 595f
                  nop
                  sltu         s7, s10, s7
589:              xori         t5, s5, 1240
                  ori          s4, a1, -777
                  srli         t2, t3, 14
                  andi         gp, a6, -1589
                  blt          s9, ra, 596f
                  ori          s4, t4, 1615
595:              slt          s2, s10, s4
596:              bgeu         t2, a0, 602f
597:              slli         t0, t6, 4
                  xori         s4, s2, -1711
                  beq          s4, s5, 618f
                  sltu         gp, zero, s2
                  sra          s8, ra, s0
602:              bltu         s3, s5, 610f
                  slli         a0, tp, 21
                  sra          sp, gp, sp
                  ori          a5, t4, -1042
                  sltu         s8, t1, t6
                  srl          gp, t3, a7
                  sra          t3, s11, t1
                  nop
610:              bge          s3, a7, 626f
                  srl          s0, s9, a6
                  srli         zero, s1, 0
                  andi         t0, t2, 413
                  srli         a2, s3, 9
                  andi         a5, s2, -558
                  srli         s5, a6, 8
                  auipc        s7, 58744
618:              slt          t4, s3, s1
                  slli         a7, tp, 13
                  blt          a6, sp, 626f
                  bge          s10, s8, 639f
                  sll          t2, t4, gp
                  or           s2, a6, s3
                  sll          s7, t6, a1
                  la           sp, region_0+44 #start riscv_load_store_rand_instr_stream_3
                  sra          a2, s6, t3
                  ori          s0, a1, -682
                  srai         s8, sp, 6
                  sw           a3, 400(sp)
                  sb           s11, 1305(sp)
                  and          s0, s2, s1
                  sll          s3, t0, s5
                  sltiu        t1, zero, 1556
                  lh           a7, 280(sp)
                  lbu          gp, 1657(sp)
                  sb           t2, 651(sp)
                  sw           gp, 1528(sp)
                  lbu          a1, 839(sp)
                  sb           a5, 1099(sp)
                  lui          a2, 514119
                  and          tp, a6, t1
                  slti         s4, t6, 1656
                  srl          a3, zero, sp
                  sb           s1, 1445(sp)
                  lb           a2, 1005(sp)
                  sb           zero, 943(sp)
                  lbu          a6, 1262(sp)
                  sh           s2, 602(sp)
                  andi         a6, s10, -1315
                  sw           s10, 852(sp)
                  sltiu        t5, t0, -242
                  sll          s8, a0, s11
                  nop
                  sw           s5, 720(sp)
                  lb           t5, 43(sp)
                  lbu          tp, 461(sp)
                  sub          s7, s8, a6
                  nop
                  ori          t6, t2, -1699
                  sltu         s7, sp, a4
                  lbu          tp, -41(sp)
                  sltu         a2, s1, gp
                  lui          a7, 769013
                  lb           gp, 1465(sp)
                  lbu          a2, 1842(sp)
                  sb           t3, 699(sp)
                  slti         t5, t0, -1627
                  xor          t5, s8, sp
                  lhu          a4, 682(sp)
                  add          t4, s10, t4
                  lh           a3, 828(sp)
                  lbu          zero, 871(sp)
                  sub          s3, gp, a0
                  lbu          t5, 68(sp)
                  lhu          s0, 296(sp)
                  lbu          t2, 247(sp)
                  lhu          s4, 632(sp)
                  sub          s11, a6, s5
                  lbu          a3, 51(sp) #end riscv_load_store_rand_instr_stream_3
                  bgeu         a1, t1, 642f
626:              bgeu         s5, gp, 629f
                  srl          s7, s10, s2
                  bltu         t6, tp, 644f
629:              sll          t5, s0, s11
                  srl          s11, t4, a0
                  slli         zero, t0, 6
                  bltu         s1, s4, 644f
                  blt          tp, a5, 649f
                  srl          t0, s9, a7
                  addi         s11, s10, 1200
                  beq          a2, t6, 645f
                  sltu         s11, tp, t6
                  bne          a0, t4, 658f
639:              sltiu        s5, t5, 648
                  srl          a3, s0, a2
                  sll          s9, sp, a7
642:              sra          t5, t6, s10
                  addi         t5, s1, -1660
644:              bne          s10, t2, 652f
645:              or           s7, a7, s10
                  nop
                  addi         a3, ra, -508
                  bltu         a7, a6, 649f
649:              auipc        gp, 973670
                  srli         zero, s0, 6
                  andi         s1, s0, -1892
652:              bltu         s11, a6, 660f
                  bgeu         s0, t3, 656f
                  add          a3, tp, s1
                  auipc        s1, 941133
656:              ori          a5, t3, 1213
                  sub          s8, a7, t1
658:              srli         a4, a1, 29
                  addi         t6, a0, 1655
660:              sltu         a4, s8, s1
                  bne          a4, s0, 669f
                  slt          s7, a5, t6
                  blt          a0, s7, 679f
                  srai         s7, s4, 14
                  nop
                  sub          t2, s4, sp
                  andi         a2, s5, 331
                  bge          a0, s9, 677f
669:              slti         a4, s2, 196
                  add          t4, s0, tp
                  srl          s0, s6, zero
                  sltu         a4, sp, t3
                  add          sp, t6, t6
                  and          s4, s3, t5
                  xor          a1, a1, sp
                  xor          a6, t1, t1
677:              lui          a7, 750092
                  bgeu         s4, a7, 684f
679:              slt          a0, s8, s2
                  bltu         a3, zero, 696f
                  or           t5, t6, t1
                  sub          s9, t0, ra
                  xor          s3, ra, a2
684:              add          a7, zero, s4
                  lui          s2, 479935
                  beq          s3, tp, 703f
                  add          t2, s4, t2
                  sra          s8, s9, t6
                  blt          s1, t6, 690f
690:              beq          a2, s3, 706f
                  beq          s0, s5, 711f
                  srai         s11, zero, 21
                  auipc        t5, 722380
                  ori          a7, t2, -1367
                  sltiu        a2, a7, 1091
696:              xori         a1, tp, -1829
                  bne          s4, s11, 710f
                  bne          a5, s5, 707f
                  sltiu        t3, s4, 1518
                  srl          s4, a1, s3
                  xor          s4, t1, s9
                  slli         s7, s10, 9
703:              bge          s7, t2, 721f
                  auipc        t0, 870298
                  andi         s1, s0, -783
706:              and          t5, a6, a5
707:              slti         a6, s0, -1191
                  xor          s8, tp, ra
                  or           s11, s2, s3
710:              srai         s7, s7, 0
711:              bltu         sp, tp, 727f
                  srli         t4, t5, 28
                  addi         t4, a0, 1213
                  addi         a2, t2, 478
                  or           zero, s9, s11
                  slti         s1, s7, -269
                  srl          a1, s10, s5
                  andi         a3, a7, -642
                  bne          s0, s0, 727f
                  lui          t2, 56327
721:              slt          gp, s10, sp
                  bne          ra, zero, 725f
                  and          sp, t2, t6
                  bge          s8, a4, 737f
725:              beq          s0, tp, 729f
                  sll          s0, t5, s8
727:              nop
                  sub          a2, a6, t6
729:              and          gp, t6, a1
                  nop
                  sltiu        a4, s1, -1867
                  nop
                  bgeu         s0, a3, 735f
                  bgeu         sp, s7, 754f
735:              sltu         s4, a7, zero
                  or           s0, a2, a0
737:              bne          a7, s4, 756f
                  beq          t4, t2, 750f
                  slt          s8, a1, a3
                  ori          zero, s11, -484
                  sltiu        s11, a1, 1413
                  andi         zero, tp, -1937
                  sltiu        t0, t5, -1086
                  ori          a2, s5, 407
                  nop
                  ori          t2, s9, 435
                  bge          sp, t6, 765f
                  sub          s0, a1, t4
                  beq          s5, tp, 757f
750:              nop
                  add          a4, sp, t1
                  sltiu        a4, a4, 596
                  add          tp, t0, s11
754:              auipc        a7, 267060
                  andi         t3, tp, 305
756:              slt          t5, t5, t6
757:              auipc        s9, 310364
                  andi         a7, t6, 1355
                  bge          t2, s5, 776f
                  addi         a0, s0, -1363
                  sub          tp, s6, t3
                  auipc        t3, 171118
                  sltiu        t0, a7, 375
                  sra          a4, a3, t1
765:              srl          s1, t6, s9
                  srai         a3, s2, 15
                  sltu         a1, tp, a1
                  lui          a3, 113922
                  slti         t5, s4, 541
                  bgeu         s7, a1, 781f
                  srai         s9, a6, 10
                  srli         s8, a2, 9
                  bge          a5, a7, 792f
                  sub          t5, s3, t3
                  xori         t1, t2, 964
776:              srai         t1, t4, 30
                  nop
                  bne          s11, s2, 779f
779:              slti         t5, s10, 1312
                  beq          s1, a6, 788f
781:              sub          tp, zero, ra
                  slti         gp, t6, 1569
                  nop
                  bltu         s10, tp, 790f
                  sltu         a0, a3, a0
                  xori         s5, t1, 1876
                  nop
788:              bgeu         s4, t5, 804f
                  srai         a1, a4, 11
790:              blt          a4, a6, 799f
                  xori         s0, ra, -1841
792:              nop
                  bge          a2, s6, 811f
                  sltiu        tp, gp, -1027
                  slti         t0, t3, -212
                  xori         t4, sp, -1506
                  add          t6, a6, s3
                  auipc        a2, 317223
799:              srai         s7, a0, 10
                  sub          s3, a3, ra
                  bltu         t6, t0, 803f
                  addi         a0, t4, -1694
803:              bltu         s10, s4, 811f
804:              slt          a5, t4, a2
                  srai         a7, t4, 16
                  sra          t1, a4, s5
                  xor          s11, t4, s1
                  beq          s0, s6, 811f
                  auipc        t6, 244773
                  addi         t6, s9, -979
811:              srai         t4, s10, 24
                  ori          t4, s5, 64
                  ori          a5, s6, -1990
                  srli         t1, tp, 8
                  sra          t0, s5, t6
                  bltu         s11, t2, 829f
                  xori         a1, s10, 427
                  xori         s4, a1, 1488
                  sltiu        t5, a2, -1569
                  sra          t2, s3, tp
                  addi         a1, a2, 1037
                  srai         a7, gp, 25
                  auipc        sp, 795183
                  bge          a5, a5, 825f
825:              andi         t4, s9, 658
                  slli         a4, a3, 2
                  bgeu         a1, s0, 844f
                  srl          t2, a0, a1
829:              srli         s9, s6, 28
                  andi         t6, t1, 587
                  bne          s3, sp, 837f
                  xor          t6, t2, a6
                  srli         s5, t2, 27
                  addi         s9, a4, -396
                  ori          gp, a7, 1046
                  sub          t1, s3, tp
837:              beq          s6, a5, 855f
                  beq          a6, s1, 857f
                  slt          a4, a1, t4
                  sll          s1, sp, t1
                  xori         t2, t0, -850
                  andi         a7, s5, 499
                  ori          sp, sp, 450
844:              sll          a7, t3, s0
                  ori          a2, t6, -908
                  srai         s9, zero, 1
                  bgeu         gp, a1, 855f
                  slli         t1, tp, 5
                  srl          a6, gp, a2
                  srai         tp, s7, 31
                  bge          tp, a4, 862f
                  andi         a6, t0, 850
                  xor          t3, t6, t4
                  ori          tp, t1, 1829
855:              srai         a7, t3, 13
                  bge          s4, tp, 876f
857:              blt          t5, s1, 861f
                  sll          s5, a7, a7
                  or           s9, a6, t3
                  bge          t5, t2, 868f
861:              ori          t3, s0, -1484
862:              sltu         sp, a4, s11
                  blt          s5, s11, 880f
                  bge          s8, t0, 867f
                  sra          a6, gp, t0
                  sra          sp, t6, a2
867:              or           a4, a5, t2
868:              bge          s9, a0, 884f
                  nop
                  srli         t2, s8, 17
                  xori         sp, a7, -862
                  xori         s5, s2, 1805
                  addi         s3, s11, -158
                  lui          s2, 817684
                  srli         a6, tp, 11
876:              sll          a2, s10, s2
                  auipc        a0, 628710
                  sra          s9, s5, ra
                  and          s4, s1, s1
880:              bgeu         s5, t1, 893f
                  srai         t2, a3, 4
                  addi         s8, a5, 1942
                  ori          a6, s11, 1920
                  add          a2, s6, tp
                  andi         s11, s5, -257
                  addi         s2, sp, 841
                  slli         s7, s1, 20
                  nop
                  srli         tp, a6, 26
                  addi         a7, s9, -646
sub_5_j9:         jal          s1, sub_10 #jump sub_5 -> sub_10
                  sltu         a2, s5, ra
                  bne          a3, sp, 883f
883:              srli         s3, a4, 5
884:              addi         s1, t0, -1727
                  sra          a2, a5, zero
                  lui          a5, 168175
                  sltiu        t2, s1, 445
                  andi         s4, s7, -1786
                  bgeu         a4, s0, 905f
                  xor          a4, s5, s1
                  srli         s8, sp, 2
                  nop
893:              sra          t3, a2, s8
                  nop
                  and          s7, s9, a2
                  add          s11, s1, s5
                  bne          s4, t5, 917f
                  slti         t0, s11, -625
                  sltu         s1, sp, t0
                  addi         s5, t3, 2041
                  lui          t6, 859666
                  add          a6, s11, a4
                  bge          t1, s1, 912f
                  sltiu        gp, a5, -778
905:              andi         s5, s11, -231
                  bne          t2, s9, 918f
                  xori         t4, s4, 1341
                  nop
                  sra          a4, a2, t6
                  xor          s3, tp, gp
                  beq          zero, t3, 930f
912:              sub          s9, s0, a4
                  and          s9, a3, s0
                  blt          s8, a5, 930f
                  ori          a3, a7, -1020
                  bltu         tp, s5, 922f
917:              addi         s11, s5, 1263
918:              auipc        a4, 916819
                  sltiu        t2, t0, -1827
                  blt          ra, t2, 928f
                  sub          s0, t4, sp
922:              srl          a6, a5, s1
                  addi         sp, a5, -54
                  beq          a2, tp, 940f
                  addi         a7, a4, 56
                  sltiu        t3, t6, -967
                  add          s11, a7, s2
928:              xor          t3, a1, a1
                  bne          s0, s1, 947f
930:              or           t1, t0, gp
                  slti         s8, s8, -1172
                  sltu         a1, s0, a0
                  andi         a2, t3, 971
                  srl          a2, t3, t5
                  addi         t1, s4, -1578
                  srli         s7, a5, 31
                  addi         s0, s3, 1838
                  andi         a6, t5, 285
                  srli         s0, gp, 16
940:              sll          t1, t0, t6
                  srai         s9, s9, 20
                  sra          a4, t5, sp
                  srli         t3, gp, 16
                  sra          a1, a2, t0
                  auipc        a1, 771522
                  bgeu         s1, s2, 959f
947:              xor          a0, s8, ra
                  ori          t6, s6, 278
                  slt          s8, a0, zero
                  andi         t0, s11, -945
                  bne          s4, gp, 960f
                  slli         tp, a3, 28
                  sra          sp, t4, s2
                  auipc        a0, 613422
                  bgeu         ra, a5, 975f
                  srai         a5, sp, 6
                  sll          tp, s10, s11
                  nop
959:              srai         t2, s4, 2
960:              xori         tp, s5, -177
                  bgeu         s9, a5, 962f
962:              srl          t6, t2, s5
                  lui          a5, 314079
                  bne          a3, s11, 983f
                  and          sp, a4, s5
                  xor          t6, s3, a0
                  sra          tp, s3, t6
                  sltu         a3, a3, t3
                  andi         gp, s6, 1204
                  slti         s9, t2, -1510
                  and          gp, s11, s4
                  and          a6, s10, t5
                  add          t1, t4, s5
                  bne          sp, tp, 982f
975:              addi         s8, t4, 1703
                  xor          a6, zero, t0
                  blt          s10, t1, 986f
                  slt          a6, t0, t6
                  addi         a1, s7, 1665
                  srli         t3, s5, 16
                  la           s4, region_1+438 #start riscv_load_store_rand_instr_stream_1
                  lhu          a0, 258(s4)
                  lb           a6, 1339(s4)
                  sll          a3, sp, s9
                  lhu          a7, 1332(s4)
                  and          a5, a7, s3
                  or           a3, a6, s6
                  sb           ra, -379(s4)
                  lbu          t0, -111(s4)
                  or           t2, s9, t6
                  sh           s0, -150(s4)
                  nop
                  slti         tp, s8, 1557
                  slti         gp, s6, 879
                  lb           a2, 288(s4)
                  nop
                  srai         t3, t3, 9
                  srl          a6, s0, ra
                  slli         gp, a7, 21
                  ori          t2, s3, 609
                  or           a1, s8, s2
                  lhu          sp, 874(s4)
                  add          s1, s3, s5
                  srai         s3, s6, 19
                  sb           t4, -310(s4)
                  sll          tp, a1, s0
                  sb           a1, 1140(s4)
                  nop
                  xori         s0, s6, -1271
                  xor          t2, s9, s2
                  sb           t0, 509(s4)
                  sra          a5, ra, ra
                  srl          t4, t4, a0
                  ori          s3, t3, -1457
                  lbu          zero, 40(s4)
                  sb           a6, 883(s4)
                  sra          a3, sp, s5
                  sh           s8, -14(s4)
                  srli         a3, s4, 27
                  lb           a2, 737(s4)
                  lbu          tp, 1239(s4)
                  lbu          a1, 509(s4)
                  lb           a5, -391(s4)
                  lhu          sp, -396(s4) #end riscv_load_store_rand_instr_stream_1
                  bltu         tp, s9, 1001f
982:              andi         zero, a2, -1330
983:              nop
                  andi         s4, tp, -469
                  slli         t1, s1, 1
986:              nop
                  slli         a6, gp, 11
                  slt          s1, s4, s8
                  bgeu         s6, t3, 995f
                  and          t4, a4, a2
                  sltiu        t3, s7, 128
                  slt          t6, a1, ra
                  andi         s3, s5, -143
                  xori         a4, gp, 1244
995:              and          s1, a6, t0
                  sub          a2, t6, a0
                  auipc        tp, 928399
                  addi         gp, s2, 557
                  nop
                  sltiu        gp, s0, 32
1001:             andi         s0, a4, -941
                  xor          sp, t2, a1
                  slt          t2, a6, s2
                  xori         a2, s6, -403
                  addi         zero, s8, 2039
                  bge          sp, a1, 1007f
1007:             xor          t4, a0, ra
                  or           gp, s8, s3
                  nop
                  sra          t1, t2, s4
                  xor          s3, s0, s11
                  bgeu         tp, ra, 1015f
                  sll          a5, s8, sp
                  or           s7, s10, t0
1015:             or           t5, s3, a0
                  bltu         a0, tp, 1032f
                  bne          t4, a0, 1029f
                  bgeu         s3, a0, 1031f
                  add          a7, s1, ra
                  xori         t6, ra, 966
                  slt          s3, t4, a0
                  bge          s5, s8, 1041f
                  bge          a1, a1, 1039f
                  sltu         s8, t1, t4
                  addi         a5, s5, 273
                  ori          t1, zero, -1573
                  srl          s9, t3, t5
                  add          t0, s7, s0
1029:             ori          t1, s6, 1996
                  add          t6, s5, t5
1031:             sltu         a1, s4, t2
1032:             auipc        s4, 100378
                  or           s3, s1, sp
                  bgeu         s3, t6, 1038f
                  blt          t4, a2, 1046f
                  sra          a2, s2, a6
                  blt          a7, a7, 1043f
1038:             bge          t4, t0, 1056f
1039:             ori          a1, tp, 1913
                  andi         a0, s6, 775
1041:             add          s7, s8, a2
                  srai         a0, a7, 3
1043:             slti         s1, s10, -1352
                  bne          a6, a1, 1061f
                  add          gp, s3, s1
1046:             beq          a3, s5, 1062f
                  ori          a0, a6, -1357
                  bgeu         t2, a3, 1056f
                  lui          t6, 158826
                  xor          t6, s7, a7
                  slti         sp, t1, 1775
                  sltiu        s0, a6, 860
                  sltu         a4, t4, s10
                  addi         a4, zero, 1736
                  xor          a7, s4, tp
1056:             xor          zero, a6, s6
                  sltiu        a3, s10, -335
                  lui          s4, 965901
                  sra          s9, a4, t3
                  beq          gp, t4, 1077f
1061:             bge          a0, a7, 1069f
1062:             and          a4, a6, s9
                  xori         t6, tp, -1588
                  srl          s0, s10, t0
                  add          s11, t6, s3
                  bge          s7, s11, 1069f
                  xor          s2, zero, s6
                  or           t5, s6, t1
1069:             slli         s4, a7, 3
                  bgeu         tp, s11, 1072f
                  sll          t3, tp, a3
1072:             lui          s9, 390126
                  bge          a4, sp, 1081f
                  srai         s9, s1, 1
                  srli         s7, a5, 14
                  beq          s5, s10, 1092f
1077:             xor          gp, t5, t5
                  bne          t4, a5, 1097f
                  auipc        s0, 228000
                  bgeu         s3, a0, 1096f
1081:             sra          a7, s10, tp
                  lui          a6, 470257
                  srl          sp, s9, s5
                  and          s9, s5, s9
                  blt          a7, s7, 1088f
                  bge          s7, s11, 1103f
                  ori          a0, s8, 799
1088:             add          t3, s0, a0
                  sltiu        gp, gp, 113
                  bgeu         sp, s6, 1093f
                  blt          gp, zero, 1095f
1092:             srli         s5, s10, 25
1093:             add          t6, a2, t0
                  addi         tp, s5, 454
1095:             sll          tp, a6, a7
1096:             srai         s9, a6, 9
1097:             bgeu         a0, a4, 1105f
                  or           a6, a6, sp
                  srli         s1, t5, 0
                  slt          a1, t1, a4
                  srl          t3, t2, a6
                  sra          a6, tp, ra
1103:             sub          a4, t3, s8
                  nop
1105:             sltu         t3, a4, s7
                  beq          t1, sp, 1123f
                  blt          s0, s3, 1126f
                  nop
                  addi         t1, s1, 402
                  and          a0, s4, s4
                  blt          s11, a0, 1124f
                  lui          a4, 951577
                  bge          a0, s6, 1124f
                  auipc        a7, 237837
                  bgeu         a5, s8, 1133f
                  sltiu        t5, s1, 1292
                  ori          a6, a5, -323
                  slli         zero, t6, 21
                  blt          t2, tp, 1128f
                  bge          s7, t2, 1121f
1121:             or           s11, tp, s9
                  add          zero, gp, a0
1123:             andi         s9, tp, 906
1124:             sll          t1, s4, t0
                  slti         a2, s6, -358
1126:             bgeu         t4, s0, 1139f
                  sra          s1, s8, s11
1128:             beq          s5, s7, 1143f
                  ori          s11, s6, 623
                  sll          t0, s1, s9
                  slti         a0, sp, -713
                  and          s9, sp, s1
1133:             and          t2, s5, s6
                  andi         a5, s0, 348
                  slti         a1, t4, 68
                  sltu         s7, t5, a7
                  addi         s7, a0, 934
                  sub          a2, sp, t0
1139:             or           a0, a5, tp
                  nop
                  auipc        t4, 426852
                  sra          s2, s1, a4
1143:             sub          s1, a2, a6
                  sub          s9, s5, s11
                  sra          t4, a3, s9
                  andi         s9, t3, 1034
                  and          a4, t1, s11
                  xor          a2, t5, a6
                  srl          t0, s5, s11
                  sll          zero, a0, t1
                  lw           s1, 4(s10)
                  sra          t1, a0, t5
                  addi         s10, s10, 16
                  addi         t0, a4, -1211
1568:             addi x3, x9, 1
1568:             jalr x3, x3, 0
sub_3:            blt          ra, s3, sub_3_stack_p
                  and          s7, a6, a2
                  sub          s5, tp, s5
sub_3_stack_p:    addi         s10, s10, -48
                  nop
                  or           zero, a3, ra
                  sub          t0, s7, s8
                  addi         s3, t2, 781
                  sw           s1, 4(s10)
                  ori          s4, a5, 20
                  srl          a2, s3, t1
                  slti         gp, a6, 1945
                  slti         s0, a7, -1084
                  sltiu        t5, t3, 2046
                  sltiu        s8, sp, 607
                  la           a0, sub_4
                  ori          a5, a3, -1985
                  addi         a0, a0, 202
                  sra          s5, s4, zero
                  srl          t5, s5, ra
                  bgeu         s0, t5, sub_3_j4 #branch to jump instr
                  andi         a6, s10, 678
sub_3_j4:         jalr         s1, a0, -201 #jump sub_3 -> sub_4
                  srli         s1, s1, 20
                  bltu         tp, s5, 13f
                  and          s7, a6, a2
                  bne          s5, s5, 17f
                  nop
                  nop
                  nop
                  andi         s1, s6, 953
                  slt          s8, s10, t6
                  bltu         a3, s11, 11f
                  bgeu         a1, gp, 26f
11:               slti         t3, t6, -2047
                  xori         s0, zero, 122
13:               xor          zero, t2, zero
                  srai         t1, s5, 31
                  addi         s4, s10, -2002
                  sll          t0, t4, t4
17:               ori          t0, a2, -335
                  srai         s0, t2, 15
                  blt          t3, t5, 28f
                  auipc        s5, 1007836
                  ori          s2, gp, -534
                  nop
                  bne          t6, a4, 33f
                  slt          s9, t5, ra
                  sra          t2, a1, s9
26:               sub          tp, t4, a4
                  xor          s1, gp, s10
28:               beq          sp, s10, 36f
                  nop
                  ori          s5, t4, 1967
                  slli         s8, s2, 27
                  xor          t0, t4, a2
33:               beq          ra, s8, 45f
                  slt          a3, a4, a1
                  slt          a7, a7, s5
36:               srl          s1, a7, s3
                  srai         s7, s1, 16
                  slt          s9, t1, t5
                  sra          zero, zero, t2
                  srli         t3, s10, 14
                  srl          a5, t4, s1
                  sll          s3, s1, a3
                  ori          zero, s3, -1668
                  sll          t4, s3, a6
45:               xor          t3, a5, a5
                  auipc        s5, 948782
                  srli         t4, a3, 24
                  sll          s8, ra, s9
                  blt          s8, a5, 51f
                  add          t2, a1, s6
51:               sltu         zero, ra, s5
                  srai         s11, a1, 19
                  srai         tp, a7, 21
                  slt          s0, sp, s6
                  add          s3, a1, sp
                  beq          a6, s6, 66f
                  bgeu         s11, t0, 58f
58:               srli         s4, tp, 24
                  andi         t2, s9, 190
                  bltu         a0, a4, 74f
                  or           a3, a1, gp
                  addi         s7, s3, -1312
                  xor          t2, a2, ra
                  srl          t3, s3, t1
                  sltiu        t5, s3, -802
66:               add          a2, s7, a0
                  slti         a5, t3, -1678
                  srl          s7, s3, s9
                  srl          s7, t2, s9
                  nop
                  srl          a5, a2, s6
                  sltu         zero, a5, s9
                  sll          t6, a0, gp
74:               or           s1, t5, a1
                  xor          a5, zero, t4
                  nop
                  slti         a5, a4, -808
                  sra          tp, a3, s9
                  lw           s1, 4(s10)
                  add          s7, t2, zero
                  slti         s5, s11, 78
                  addi         s10, s10, 48
                  srl          tp, tp, a0
107:              addi x24, x9, 0
107:              jalr x24, x24, 0
sub_6:            addi         a3, s3, -1802
                  srl          tp, s8, a2
                  srai         t3, s0, 19
                  sll          tp, s7, t1
                  blt          t0, a0, sub_6_stack_p
                  and          s9, t6, s1
                  sltiu        gp, zero, 1437
                  sll          zero, t5, a7
sub_6_stack_p:    addi         s10, s10, -40
                  srai         t0, tp, 21
                  sw           s1, 4(s10)
                  auipc        a1, 114149
                  slti         s2, s2, 1319
                  sub          s7, a1, s2
                  bltu         t3, a3, 4f
                  ori          a5, t1, 1982
                  sra          s8, t3, a2
4:                srli         t5, a5, 20
                  xori         s4, s9, 1989
                  lui          t2, 236584
                  beq          s0, a6, 10f
                  and          gp, s8, s2
                  slli         s1, t5, 22
10:               bgeu         a6, s0, 27f
                  sub          sp, t6, a4
                  bne          a1, a6, 16f
                  blt          s9, t6, 18f
                  addi         zero, zero, 1879
                  nop
16:               or           gp, t3, a0
                  bgeu         a4, s11, 24f
18:               or           a0, a0, s5
                  slti         sp, a5, 910
                  sra          s4, a2, gp
                  bltu         t3, gp, 37f
                  ori          s0, zero, 1957
                  slti         s5, t3, 1056
24:               beq          t0, t1, 43f
                  bge          t4, a0, 32f
                  sub          tp, a4, s1
27:               andi         a6, a3, 6
                  bne          a5, a5, 31f
                  ori          s7, t3, -1084
                  bgeu         a6, tp, 49f
31:               sltiu        s3, a6, -1275
32:               sub          s1, s4, a6
                  slti         gp, a7, 390
                  ori          s8, s4, 1351
                  bltu         t6, t1, 49f
                  srli         a1, t3, 24
37:               sub          t1, t1, sp
                  and          s1, s0, ra
                  slli         a6, s9, 12
                  bltu         s0, t4, 52f
                  sltu         sp, a4, s1
                  slt          s2, s5, t1
43:               add          t3, s11, s6
                  bne          s0, s2, 51f
                  slli         a2, s1, 7
                  or           s4, t1, a3
                  andi         tp, s8, -1756
                  add          a5, s6, t4
49:               slt          s1, s9, s5
                  addi         a3, t5, -1714
51:               slt          s2, tp, a0
52:               slt          sp, s6, a6
                  auipc        a7, 265742
                  xor          a0, a7, s10
                  blt          a3, s10, 60f
                  srli         t2, s9, 17
                  sltiu        t6, t5, -2033
                  srai         s3, a5, 25
                  sltiu        gp, gp, 112
60:               sub          s5, t1, t5
                  sltu         s3, s8, t6
                  sll          a7, t2, a6
                  srl          s2, s8, a0
                  sltu         s8, t4, s4
                  xor          a6, s9, a6
                  slt          sp, t2, s3
                  sra          gp, s8, a4
                  bltu         s7, s6, 80f
                  add          tp, s2, t6
                  addi         s4, s6, -1706
                  beq          a4, zero, 80f
                  add          t2, s9, t3
                  srli         s9, zero, 3
                  bgeu         a4, a2, 79f
                  add          a7, a0, a3
                  xori         a3, a7, 502
                  bgeu         sp, t4, 88f
                  addi         s11, s5, -255
79:               or           t0, a7, s2
80:               and          s7, s2, zero
                  nop
                  bge          t5, s2, 85f
                  sltu         t3, s1, a4
                  and          s7, zero, s3
85:               andi         tp, s2, -1847
                  auipc        t1, 524665
                  auipc        s4, 1011523
88:               or           t3, t1, a6
                  sltu         t5, a5, t0
                  sub          t4, a0, t1
                  and          t3, t1, sp
                  or           s5, a2, tp
                  ori          s7, s2, 1324
                  add          s3, s8, t2
                  beq          a3, a5, 109f
                  lui          a3, 276619
                  slti         a5, t4, -949
                  srli         a6, s5, 20
                  srl          s3, s7, s2
                  addi         a7, s6, 940
                  ori          t1, s8, -1126
                  bgeu         a3, s7, 109f
                  slti         s0, t6, 762
                  sltiu        s2, a4, 1228
                  beq          s5, s6, 109f
                  add          a5, t4, a4
                  addi         a2, s6, 1036
                  beq          s1, a3, 109f
109:              slti         sp, t3, -1724
                  slt          s4, t2, s8
                  lw           s1, 4(s10)
                  slt          gp, a3, t4
                  addi         s10, s10, 40
                  srai         a3, ra, 30
128:              addi x7, x9, 0
128:              jalr x7, x7, 0
sub_4:            addi         s10, s10, -40
                  sll          a1, t5, a3
                  slt          a4, s0, s8
                  and          t2, s7, s0
                  sw           s1, 4(s10)
                  sll          t1, zero, t4
                  lui          t6, 964470
                  srl          t3, s9, a7
                  xori         gp, t3, -1887
                  la           a1, sub_6
                  slti         a7, a6, -869
                  slt          t4, s0, a3
                  lui          s1, 18023
                  sra          t4, s0, t3
                  addi         a1, a1, -263
                  xori         t4, s10, -236
                  beq          a3, t2, sub_4_j5 #branch to jump instr
                  andi         a0, ra, -1702
                  auipc        s8, 135912
                  slli         a3, a5, 19
                  sub          s2, s11, s10
sub_4_j5:         jalr         s1, a1, 263 #jump sub_4 -> sub_6
                  ori          t2, t4, -1196
                  la           s9, sub_8
                  xor          s4, a0, a3
                  sll          s3, t2, a0
                  sltiu        s11, s7, 1502
                  addi         s9, s9, 649
                  srai         gp, s9, 11
                  ori          s4, gp, -394
sub_4_j6:         jalr         s1, s9, -648 #jump sub_4 -> sub_8
                  auipc        s8, 965571
                  srl          a2, t6, zero
                  lui          s3, 190518
                  la           sp, sub_7
                  add          a4, s8, t3
                  addi         sp, sp, 680
                  andi         a7, s9, -1582
                  add          a1, s6, a0
                  srai         t4, s2, 26
sub_4_j7:         jalr         s1, sp, -679 #jump sub_4 -> sub_7
                  sll          a6, s6, a4
                  srli         s8, a4, 27
                  srai         t1, t2, 18
                  slt          s8, t1, a1
                  sra          a7, a3, s6
                  add          t4, t5, a4
                  add          s1, a4, s7
                  ori          t1, s8, 1242
                  lui          gp, 585301
sub_4_j8:         jal          s1, sub_5 #jump sub_4 -> sub_5
                  xori         t5, tp, 185
                  addi         t4, gp, -755
                  andi         s9, t2, -1561
                  srai         t3, s3, 1
                  srl          t5, t0, t5
                  andi         s1, a6, -630
                  sll          a1, a7, a5
                  bne          t4, a5, 19f
                  nop
                  bge          a4, t3, 12f
                  ori          s9, s7, -330
                  xori         a6, sp, -773
12:               slti         a1, a2, -1331
                  bne          a3, s4, 19f
                  xori         t1, t1, 1343
                  beq          sp, sp, 17f
                  sltu         t3, t0, s1
17:               slt          s7, a0, ra
                  bne          a6, a3, 19f
19:               auipc        a1, 310054
                  xori         t5, a6, 181
                  sltiu        s2, s11, -1180
                  lw           s1, 4(s10)
                  addi         s10, s10, 40
                  xor          s7, s1, zero
                  sltiu        a4, a4, -2004
                  xor          tp, s2, a2
                  xori         s9, a7, -1376
                  ori          t6, t6, -835
                  sub          a3, a7, s8
                  lui          tp, 859368
82:               addi x11, x9, 0
82:               jalr x11, x11, 0
sub_7:            srai         sp, t0, 25
                  bgeu         s4, s2, sub_7_stack_p
                  slli         s0, gp, 17
                  slt          tp, s9, a5
sub_7_stack_p:    addi         s10, s10, -32
                  and          t1, s8, t1
                  sltu         a1, a7, s10
                  srai         t4, ra, 13
                  sll          t2, t0, s3
                  xor          t0, s3, s6
                  sw           s1, 4(s10)
                  auipc        t3, 55350
                  slli         t5, t3, 30
                  lui          t2, 957734
                  slti         zero, tp, 1465
                  sub          s0, t2, a4
                  srli         a2, a2, 8
                  add          a1, s7, zero
                  srl          s3, s4, a6
sub_7_j10:        jal          s1, sub_9 #jump sub_7 -> sub_9
                  la           s5, region_0+1814 #start riscv_load_store_rand_instr_stream_0
                  lb           s11, 3(s5)
                  lw           s0, 34(s5)
                  nop
                  auipc        t6, 528054
                  ori          t1, s9, -16
                  srai         s0, s8, 13
                  sub          zero, a1, t1
                  lbu          s9, -9(s5)
                  sltu         a2, a2, t2
                  sub          s2, t5, a3
                  srli         gp, s9, 10
                  auipc        a1, 813321
                  sb           s4, 182(s5)
                  lbu          a4, -181(s5)
                  lbu          t6, 153(s5)
                  andi         tp, a6, -1559
                  sub          t0, s0, t2
                  andi         a3, s4, -428
                  srl          s2, s2, t6
                  sb           a0, -179(s5)
                  sltu         s2, s1, t3
                  srl          t3, t0, s3
                  lui          s2, 911230
                  ori          s3, a6, -1596
                  lb           t6, 41(s5)
                  ori          s2, a5, 10
                  sb           s6, -5(s5)
                  sb           s6, -211(s5)
                  lbu          a0, -45(s5)
                  sw           s6, -114(s5)
                  slt          gp, s10, ra
                  sll          t0, t0, gp
                  lw           a5, 74(s5)
                  lh           t0, -196(s5)
                  xor          s1, a7, s1
                  sb           s11, -165(s5)
                  sb           s2, -195(s5) #end riscv_load_store_rand_instr_stream_0
                  bne          s4, t5, 11f
                  slli         a0, a7, 0
                  beq          t6, t2, 15f
                  bgeu         a1, zero, 4f
4:                srai         s11, t6, 8
                  xori         s8, ra, 1231
                  slli         a2, a5, 20
                  srli         a1, t3, 21
                  and          zero, t1, s1
                  slli         a7, s9, 9
                  ori          t3, s11, -81
11:               bltu         t5, a2, 19f
                  slti         s0, a2, -1072
                  bge          t3, s2, 19f
                  lui          a1, 269266
15:               slli         t4, s0, 7
                  bge          a0, t3, 34f
                  srli         sp, a7, 7
                  beq          s3, a5, 36f
19:               bgeu         a3, s1, 21f
                  add          t3, s1, s11
21:               srli         a7, zero, 30
                  bne          s6, sp, 26f
                  ori          t3, s5, 1923
                  addi         gp, s5, 796
                  slt          a7, t3, a4
26:               slt          a2, s4, tp
                  sub          s11, a6, s7
                  ori          zero, ra, 824
                  sltiu        s9, s1, 1135
                  andi         s2, s5, 95
                  xor          a5, t1, s11
                  or           t0, a5, s4
                  sub          s4, t5, s7
34:               sub          a2, tp, s0
                  sltu         s7, t2, s5
36:               addi         t1, s11, 1057
                  bne          t3, sp, 53f
                  bgeu         s11, s8, 40f
                  auipc        a2, 699603
40:               blt          t1, a2, 41f
41:               blt          a4, s8, 46f
                  sltu         s11, a7, sp
                  add          s8, s3, s5
                  or           tp, a5, t4
                  sll          a2, t2, a1
46:               xor          s5, a7, s0
                  sll          s9, sp, s5
                  and          s2, s3, s6
                  srli         s0, a0, 21
                  sub          t1, t5, tp
                  sltu         t6, a1, s7
                  lui          a2, 852903
53:               slt          t0, zero, s11
                  slli         a3, tp, 0
                  nop
                  sra          s4, gp, s10
                  srai         a7, gp, 30
                  auipc        a0, 120436
                  slti         s2, a1, -1006
                  sub          sp, gp, gp
                  srai         s5, a3, 8
                  sra          t4, s8, zero
                  bge          s1, s6, 74f
                  and          a3, sp, a3
                  srli         s2, tp, 19
                  auipc        a6, 965822
                  nop
                  bge          a6, s2, 74f
                  lui          s0, 324088
                  andi         s8, a0, -1199
                  slt          s3, a6, t5
                  or           t5, s1, a2
                  xori         a3, s0, 1346
74:               add          s9, s6, a7
                  xor          s2, a2, s10
                  bne          a1, zero, 96f
                  ori          t6, t4, 463
                  sub          a5, s0, s2
                  auipc        s5, 413544
                  bge          ra, a1, 90f
                  and          s0, sp, zero
                  bne          s3, a4, 94f
                  lui          a5, 443677
                  slt          s7, a6, s6
                  addi         sp, s6, 786
                  andi         t6, s2, 761
                  srl          t3, s10, s10
                  srli         a1, s11, 6
                  nop
90:               srli         s11, zero, 29
                  addi         a1, t1, 115
                  ori          s2, a4, -465
                  ori          s1, t1, -25
94:               addi         sp, a0, 1852
                  sltu         t3, t0, zero
96:               add          a2, t3, gp
                  bltu         a1, a4, 104f
                  bgeu         a2, t6, 106f
                  add          t5, s11, ra
                  sltiu        t2, s0, 1109
                  sltu         t0, s6, a3
                  or           s9, t6, a2
                  bltu         tp, s2, 115f
104:              addi         s7, t4, -2039
                  and          s11, t6, t1
106:              sltu         s7, t5, s0
                  srai         a1, s2, 27
                  bgeu         s6, t5, 123f
                  sltu         a2, a5, t6
                  sll          a4, s3, a2
                  slli         t5, s7, 7
                  bltu         s1, s7, 123f
                  sltiu        t2, s4, -669
                  srl          gp, a4, zero
115:              srli         s1, s3, 31
                  bne          s9, s3, 128f
                  addi         t6, a6, 419
                  bltu         a1, s1, 129f
                  srai         t5, a0, 6
                  srai         s7, zero, 31
                  bge          zero, a1, 126f
                  auipc        tp, 563573
123:              sltu         a7, sp, a2
                  and          t2, s7, a5
                  add          t1, s2, s5
126:              add          s1, s2, zero
                  auipc        s11, 221762
128:              lui          s8, 883130
129:              or           t5, t4, t2
                  xori         a6, a7, -1358
                  bne          s1, a0, 135f
                  lui          t5, 960115
                  sltiu        t6, t5, 580
                  blt          a2, s5, 139f
135:              bge          gp, zero, 155f
                  srli         a0, t1, 14
                  and          a4, s8, a6
                  bne          s6, t0, 150f
139:              srli         a1, t4, 9
                  ori          a1, t1, -990
                  sll          a6, tp, s0
                  bgeu         t2, a5, 153f
                  blt          s6, a5, 147f
                  xor          gp, s3, ra
                  blt          s2, gp, 151f
                  slt          s5, a7, gp
147:              srli         s7, s2, 14
                  xor          s1, ra, a0
                  bgeu         a4, tp, 151f
150:              xor          a0, a2, t6
151:              blt          a0, a4, 157f
                  sll          a6, t1, a0
153:              sll          t4, t6, s5
                  beq          s1, zero, 157f
155:              add          t4, a3, s3
                  xor          s4, t4, s11
157:              sltu         sp, s2, sp
                  lw           s1, 4(s10)
                  xori         sp, s6, 164
                  addi         s10, s10, 32
                  lui          s9, 814283
                  ori          sp, t3, 1105
                  sltiu        t2, t5, -1887
                  sub          gp, s2, s7
                  ori          tp, a2, -1633
224:              addi x30, x9, 1
224:              jalr x30, x30, 0
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
.word 0xf3694042, 0x39bf88e9, 0x4e123e28, 0xb4211948, 0x8ad5afc7, 0x69936b70, 0x5ab7e07e, 0xb5fe6cc9
.word 0x171438aa, 0x67a5b9ee, 0xcae16fe1, 0x29c75e04, 0x5ec36dfb, 0x5d119c5a, 0xfc36773e, 0xad33f7a7
.word 0x137a42b0, 0x31539bb2, 0xf8973ccf, 0xaf8b386f, 0x86971f6b, 0xf9345abc, 0xc2a17845, 0xe37adb72
.word 0xe85f6fa5, 0x3cf6376b, 0x4cce8012, 0x7733fc11, 0x177c1227, 0xc52920b1, 0x681879c9, 0x3ca43ae1
.word 0x3c9f87ad, 0x3050aad4, 0xedbb8bdf, 0xd54b8ffa, 0xbb6e01a9, 0xe95c9ffd, 0x39aff582, 0x23dbaf53
.word 0xbcabc058, 0xbdf001fb, 0x81d984b9, 0x9a978dc6, 0x0008c821, 0x79eb970a, 0x4f0cde8d, 0x311e832b
.word 0x7f84431b, 0x8f243e4c, 0x556f23b9, 0x57153281, 0xb8f6ea6e, 0x19ce6a62, 0x221848c5, 0x558623bf
.word 0x07d11cc8, 0x0e38e5ab, 0xfd79ddc5, 0x20359900, 0xfa0d5bf4, 0x779a1f4d, 0xa2631705, 0x4603a580
.word 0x89458e73, 0x1e67d118, 0x27a5480c, 0xbb55fe06, 0x427871a3, 0xfdfd0d44, 0xe776b4ce, 0x21dc9d87
.word 0xb1b280ce, 0x30c85fd6, 0x48996085, 0xd42f2314, 0x3a0597d2, 0xffe68478, 0x1cfc4c81, 0xadaad48c
.word 0x9eb08c93, 0x851c412a, 0xf1b131e9, 0x8bb73476, 0x07dc6f7f, 0xfafb7289, 0x4f11473b, 0x59818c0a
.word 0xb909225f, 0x099e3d1b, 0x4f9eebeb, 0xa0596960, 0xb9a87e63, 0xd0b62297, 0x86d1f5b1, 0x7c46b119
.word 0x12ea51ad, 0xee4614b9, 0xe15d0050, 0x0b506e44, 0x63485ba0, 0xf795e34b, 0xa4d2a345, 0x451f7bf4
.word 0x6c883e7a, 0xb1561aaa, 0x2d6141b1, 0x7664e3cd, 0x0fa3df4c, 0x3620808e, 0xc6e50f39, 0xf9e0ddf9
.word 0x2257b39e, 0xca15ffef, 0xbe2b944f, 0x79c056d3, 0xdf52c0f9, 0x381976c5, 0x633b5f9d, 0x0019f736
.word 0x089fc22b, 0x65e56da4, 0x3addd933, 0x56724117, 0x8d3e0ba5, 0x9cdc19e1, 0x00d4c104, 0x025eb38b
.word 0xd15e8b1b, 0x419f5e71, 0x58740bb3, 0x443deb4b, 0xa7c8f7ee, 0x2fa5ca54, 0xdfc529d2, 0xf45e42c7
.word 0x7bc204f4, 0xaa9db174, 0xc67e8674, 0xacad98be, 0x78ef4e64, 0x5b5be1c1, 0x0c8ebf1a, 0x990c02d1
.word 0xdd08f291, 0xdd01821f, 0x09b89d7d, 0x0b6a1712, 0x93158596, 0x0c14b350, 0xc5169f86, 0xb951c0c4
.word 0x6cef899c, 0x136d6fbf, 0x2bd9a1c5, 0x85709853, 0x01594cf5, 0x3c221cb0, 0xe30aed8b, 0x7a997561
.word 0x7514584c, 0x3d649b16, 0x16047043, 0x362ce9f7, 0x40c5928f, 0xb656eb7b, 0x5ee747f8, 0x399eb8de
.word 0x2cc02e27, 0x95c1ebad, 0xd2fbc50e, 0x617a9ede, 0xcfb6fdbc, 0x16cc402d, 0xb805defa, 0x75c7a68b
.word 0x5151bcca, 0x1adfb5e2, 0xa94dd945, 0x105e47d6, 0xf1ff9e64, 0x36bb5082, 0xf9943b75, 0x89877985
.word 0x1714a3fa, 0xedb9b1bf, 0x63522c40, 0x9625c93a, 0x079f5981, 0xc3677758, 0xdc3421ce, 0xcd4e51a2
.word 0x73929797, 0x0be4b427, 0x01505798, 0xc8ca8b7a, 0x4dd4e534, 0x507c5c75, 0x484f414f, 0xd181f51e
.word 0xd52b9e08, 0xf7bea4a8, 0x9e758865, 0x5991e412, 0x50fadc17, 0xe134951f, 0xdcb343a5, 0xa8ae3d60
.word 0x75c2cdf5, 0xbe488317, 0xc3ebb10a, 0x1114d5e5, 0x8ea2f4d7, 0x2ab0e6e7, 0x0010f32a, 0xc11a00e9
.word 0xae05090f, 0x1b1e663d, 0xa92ca817, 0x418a6c79, 0x135817b2, 0x36b60681, 0x3c7893e4, 0xb1e20ede
.word 0x673038b3, 0x7646dc2c, 0x5622bc4a, 0x4e37b62c, 0xc3d71ab2, 0x20bf300b, 0x10465b25, 0xf3a96796
.word 0xe1ce2f86, 0x9a1e0275, 0x9523c7f5, 0x7050bf21, 0x6113826c, 0xe88e52d0, 0x4948f70a, 0x0cd88815
.word 0x25c9862b, 0xa83ac9d6, 0x080e7018, 0x5c916258, 0xf1728d1c, 0x83a9e7db, 0xa1dde3ee, 0x60d53e89
.word 0x3eb5ed8c, 0xb3559a6f, 0x042e47aa, 0xcd814e72, 0xeb684e7a, 0x598ad445, 0xa62c17a0, 0x10cdeca0
.word 0x5c0a3995, 0x50fedab1, 0x7a8232d3, 0x285dcb44, 0x4854b05a, 0xbb8f7ff8, 0x95c387f3, 0x01dad5fd
.word 0x2fa4eba8, 0xec95f2aa, 0xd686b3c5, 0x1ce9ade2, 0xe2961e0f, 0x5b078645, 0x1dafb9d7, 0x1332a166
.word 0xefd2acfc, 0x39b68f12, 0xb24e07f8, 0xe2056cac, 0xd87c66b9, 0x27d2cc8a, 0x9ae843eb, 0x2fca4ed8
.word 0xfa789606, 0xffd97cfc, 0xa570e96b, 0x55059268, 0x4dde241f, 0xeabde6a1, 0x5e520366, 0xcf55eba5
.word 0x2899ed18, 0xa67c8517, 0x80e1015b, 0xdefc834e, 0xe8dd3e98, 0x65baff4c, 0xbadd2775, 0x95f70f1c
.word 0x7d6bdb8c, 0x4cda40d4, 0xf307243a, 0xfc04b483, 0xe637d405, 0x4b069a4f, 0x236f24b8, 0xfdc7ceef
.word 0xca66fb89, 0x8f1dc665, 0xd2f7f0f3, 0x6279f725, 0xfa5cfa64, 0x162116a6, 0xfb057aae, 0xfedb7842
.word 0x34bf95ce, 0xa93d8d94, 0x5c4b7033, 0x0ecdbc13, 0x4d23467a, 0x05d2ce9b, 0x757182ab, 0xd096e6e1
.word 0x3591cd1d, 0x5b85189d, 0xbdfdbc34, 0x468df52f, 0x6afc7376, 0x24b83d9b, 0x639c4810, 0xf2ce89ab
.word 0x5b4a8330, 0x3ce22e6e, 0x6b2570cd, 0xbe9975f4, 0x34006840, 0x18944df9, 0x9bffed2f, 0xe65ce083
.word 0xe185b9cb, 0x86f36825, 0xd3981177, 0xece53d24, 0xd7f61711, 0x1e6ff29d, 0xb7fe5b3d, 0x6732067b
.word 0x2f3a8afb, 0x76eefedc, 0x3e9cb812, 0x8862eb47, 0xf49217c8, 0xdea8a9ac, 0x4e728665, 0x44aa79af
.word 0xc1151117, 0x698c67d9, 0x930edea7, 0x9a8e0723, 0x8df404e5, 0x4b65c5cf, 0xdba47be4, 0x73086d4e
.word 0x743bba13, 0x3213f5d5, 0x8463ab85, 0xda3da9a1, 0x66e37597, 0x9c346f0d, 0xf7e4dfd6, 0x290709c1
.word 0xad6491d5, 0x0645eb13, 0xc777d0bd, 0xbcceae32, 0x65c5f1c5, 0x1e14e6ba, 0x364ee65a, 0x1c0ad9c9
.word 0x34c0fedb, 0x6fb83e4b, 0xacf032de, 0x2b0c9e61, 0x8a6eaa7d, 0x9e81b0b4, 0x56c8522d, 0x115c6b0c
.word 0x93aaef11, 0xa002cf8b, 0x1eb16700, 0x27189024, 0x66d6923f, 0xaf20b0ea, 0x97c33df4, 0xab6b2657
.word 0x1f08b42c, 0x91e1d534, 0x5382f640, 0xb927d00d, 0xf6c35121, 0x14805c3b, 0xa248f028, 0x5fa339ee
.word 0x8dd5f10f, 0xe274493b, 0x854b82c0, 0x4c4d87f9, 0xdd2089fd, 0xe76b82b4, 0x8562f056, 0xb5c55b9c
.word 0x08ce7171, 0xe18aecc8, 0x317c7f09, 0xf5a2b074, 0xbd880eb4, 0x92720e44, 0xa2e8200a, 0x108957c6
.word 0xdab19453, 0xced05818, 0xf14aa034, 0x4aa29c58, 0xcb66c610, 0x78094edf, 0x696cce11, 0x95ddf845
.word 0x7754167d, 0x9f09472f, 0x87e8f787, 0xa4fb1524, 0xecd9711d, 0x118a5580, 0xbb3a2fbd, 0x5ccc530c
.word 0x7c888569, 0xd26c56ae, 0x78da658e, 0x9bfe0c5c, 0x66d0a062, 0xc36967d3, 0x5817614d, 0x9070e16d
.word 0xdbd5fcfe, 0x27e43a22, 0xac81bb95, 0x1a8a83ef, 0x2f270cf1, 0x986044cd, 0xe8faca93, 0xfdc829bc
.word 0x6fb3e51e, 0x572dc258, 0x4a89c6f8, 0x96ff7338, 0xd91f92f0, 0x76f9bb35, 0xfc635b4c, 0x0277a307
.word 0xdff32bcb, 0x06d32c7d, 0x5a32c4b6, 0x8d80759e, 0xdad01d3e, 0xe35eaf72, 0xf92d0581, 0xd2ac2221
.word 0xd2a4bff5, 0x4f80cedc, 0xafdc8b30, 0x9e1e1854, 0x64c0c40b, 0xf5126de7, 0x13e8af24, 0x242530dc
.word 0xb9228927, 0x2803b16b, 0x79939407, 0x6fe148fa, 0xc1fe200d, 0x43a1b7a9, 0x75b34099, 0x8b3e988a
.word 0xe00455ef, 0x543beff3, 0xe9c5ec8d, 0x0b18e561, 0x4e4c0c76, 0x8d24bb88, 0x1637805d, 0x13ecde49
.word 0x42b95b7e, 0x077fc96c, 0xf2544b9c, 0x6f3dce22, 0xef1981ac, 0x7b4bfe0e, 0x6e049887, 0xe8d96b27
.word 0x83068d35, 0x74e118e8, 0x6328075f, 0x06c5ab9c
.section .region_1,"aw",@progbits;
region_1:
.word 0x6925f37e, 0x5af2d109, 0x18ffb36f, 0x4dacedc6, 0xce38c08a, 0x2deae759, 0xb4901751, 0x19dd86bf
.word 0x7a7e6294, 0x35978a32, 0xa99434e3, 0x86a372c6, 0x47990878, 0x0bddc931, 0xe75c2292, 0x334a6404
.word 0xa5c28d75, 0x87f59974, 0xa4353c6c, 0xf9e5097c, 0x4465a658, 0xb46c2f0f, 0x50b7d882, 0xbc5c6a2e
.word 0x65be1e02, 0x71abed11, 0xafc7cf75, 0x1ad3f120, 0x29b94400, 0x226da77d, 0xbf4385d5, 0x0f48fff1
.word 0x8e927164, 0xce465ccf, 0x05e4ee6e, 0x8416e6b0, 0xbc3c5da2, 0x3b557c42, 0x8f94d946, 0x5adde9dc
.word 0x1caafa05, 0x52516e93, 0x3dc25913, 0x1bf93694, 0x213729f3, 0x0fe1d5a5, 0x46448de7, 0xaa0685c4
.word 0x1baae2c9, 0xda9d8f4b, 0xd037325f, 0x520e6806, 0xfd034d7c, 0x9d67b597, 0x9c2590a5, 0x92f340fe
.word 0xfa75b22e, 0xde027fe1, 0x2acdb256, 0x481b175c, 0x31e5ee53, 0x94cb5a24, 0x8c5133c2, 0x138629d8
.word 0xc761f212, 0xa9bda013, 0x1d094e70, 0xa83614b0, 0x2102d21b, 0x01d27d47, 0x4b397dc6, 0x665ab528
.word 0xd1cb4809, 0xf6143b48, 0x9db557d9, 0x81902ce2, 0xb1d07624, 0xd4a70d04, 0x4bc76768, 0x69439eab
.word 0x85efcfc1, 0x464f5f86, 0x2c73f531, 0x64ab9bae, 0x971764a8, 0x3271e960, 0xa5dfd743, 0x082eb1a5
.word 0x3e3398b0, 0x5a44dd8f, 0x098697c3, 0x51d723a1, 0x59d2da58, 0x0291c613, 0x57939059, 0x022cf56c
.word 0x1e1a0d17, 0x2e808442, 0x011eccca, 0xa91630c6, 0x1fe6f64a, 0xa5147aee, 0xec784344, 0x5ad03ea5
.word 0x758e4a16, 0xce5b951c, 0x6c56d03f, 0x90dcd3c1, 0x7baf52b3, 0xb5744dec, 0x369973c4, 0xfe867bd1
.word 0x6b5d86a3, 0x9b433536, 0x53304db4, 0x6b8e91d3, 0xcccb27e6, 0x1890f053, 0x91694fa4, 0xa6f19673
.word 0x84f43097, 0x68509937, 0x85aa7fcc, 0x8324fe69, 0xb24c63a0, 0xbdc30742, 0x44ffdb11, 0xc5ab4f55
.word 0x7a8428c2, 0xfb799f3a, 0x4c06e508, 0xa4ff09f3, 0x7eafbd46, 0x7a188bca, 0x830276e9, 0x32ff9cf1
.word 0x9cad917a, 0xf8044ad8, 0xd8bdb25d, 0x2b7064f9, 0x2a59be18, 0x8f86a51b, 0x3415f4cf, 0xefb913fd
.word 0xd4bbc432, 0x518608bc, 0xe19f43dc, 0x86ee4777, 0xfc3215c6, 0x6dc35959, 0x692e9450, 0x80f023a1
.word 0x1139d437, 0x4238ccb2, 0xe30e71fe, 0x1ad8473c, 0xeacecebc, 0x4d8b15aa, 0x38cd2b2b, 0x665f32f1
.word 0x9b2517fa, 0x1248c89f, 0x08d2de40, 0xb04dcb93, 0x784453ba, 0xbea5ab58, 0x4cffbc92, 0xae2734a6
.word 0xd18c5fdf, 0x7992097f, 0xe8594e12, 0xd2084cd2, 0xcc7b1555, 0x8d77616d, 0xef5a6602, 0x9630f04e
.word 0xa8f5d506, 0x200ac757, 0x930dc803, 0x82e481ab, 0xce062a80, 0xcf319ca6, 0xfe531997, 0x1a84e1c1
.word 0x2e29924c, 0xfd55ce38, 0xbf242e0d, 0xbbeda3f2, 0x6060509a, 0x00fd4b21, 0xf1ca8676, 0xdc7c6c8e
.word 0xf4b5f670, 0xcab939ee, 0xc5ea14e5, 0xf636d986, 0x1dd0932c, 0x59a229d9, 0x0a99a379, 0x3da8ed6d
.word 0x68293e91, 0xdb4156f2, 0x0602a975, 0xba803009, 0x290b386e, 0xd9fdc5a5, 0x7bbe66d7, 0x66810053
.word 0xd7b77efb, 0x159a29e3, 0xb84f00b6, 0x0d0a9151, 0x51061f9d, 0x2c0a9882, 0x2119745d, 0xf9a89210
.word 0xa563d65b, 0xc62a7be4, 0xc28b5567, 0x8d1f082c, 0x025a7e93, 0xaff8c8f3, 0xe1251fce, 0xa7c85a3d
.word 0x28b459df, 0xd6ac04b6, 0xe21248be, 0x14617708, 0x05c54cba, 0x65f20bce, 0x2f073e8b, 0xf8c5996f
.word 0xec8fc9e5, 0x2751f610, 0x51c4eba9, 0x816b39fb, 0xbb9c72e8, 0xe3eee115, 0x6ce1526a, 0x9951d561
.word 0x2732d87d, 0x1872123b, 0x2ac56698, 0x0f8b0110, 0x077187f6, 0x3095f9c5, 0x5ea94bf0, 0x6d03e790
.word 0xca2709ea, 0xaa26eae5, 0x019dda93, 0x0af4484e, 0x4a8f9127, 0x9480564f, 0x1a03fedf, 0x29d22a92
.word 0x6ca2ed91, 0x65643cd0, 0xe6762da1, 0x97ebdb81, 0x722ab804, 0x11e3fb8f, 0xa4035364, 0x12113058
.word 0xb62489a5, 0xf0a81879, 0x5c5d95a5, 0x651d2eeb, 0x5c4fd862, 0xb59503d4, 0x36989017, 0xc62b2c97
.word 0x4629798c, 0x5bae68f4, 0xd4000c2a, 0x2c7109fc, 0x56f08014, 0xf9ff3ce1, 0x71571872, 0x1b3acf54
.word 0x66df266b, 0xbb3d6758, 0xfa8febd8, 0xa5d0056e, 0xaed04459, 0x2ac0b97c, 0x2879c004, 0x2d031b5a
.word 0x9b3284cc, 0x3b457ab4, 0xeed332ef, 0x3ab7ffd1, 0x9aea74b5, 0x5c43d3e3, 0xb7c82f19, 0xd2f71cd9
.word 0x401e38c3, 0xf82d72a9, 0xd18ec7c6, 0x94b4e296, 0x24d5b2f6, 0x2f6e1112, 0xee256366, 0xca7894d3
.word 0x2475e350, 0x79cc9426, 0x33ada998, 0xcb98bdb0, 0xe82d2055, 0x6ce35195, 0xad8300b7, 0x8a98f309
.word 0x0b2d2b67, 0x864125ab, 0xe695fb8a, 0xb9841806, 0x53d24d31, 0xa431f1cf, 0x685de015, 0x8aeff322
.word 0xd90a9b9c, 0x114e4a65, 0x0835a6f7, 0x4092328d, 0x3d0c46f6, 0x58cb0f3a, 0x0705eb94, 0xc683650f
.word 0xe66529c1, 0xb8590754, 0xd643be2e, 0x5197a78c, 0x110dfa3d, 0x44b90384, 0xf9a41f63, 0x7a192136
.word 0x797efa41, 0x963c57bc, 0x50c15f39, 0xb5bcc49c, 0x7ff98733, 0x167eea88, 0x607e609d, 0xa51c560d
.word 0x910fa428, 0x464f98d6, 0x66cc5499, 0xa6075a52, 0x4d98e1ae, 0xbf744fa2, 0x55591d37, 0x1840a202
.word 0xed906ef4, 0xeba96e45, 0xd54b72dc, 0xe772d889, 0x6e2fba80, 0xd5f4e567, 0x80666d09, 0x9e3d63ff
.word 0xff518ebb, 0x84edbb59, 0x3405831d, 0x80cccd80, 0xf14e87be, 0x402fc34f, 0x41d7b933, 0x95d2a777
.word 0x18882e32, 0xd252ff04, 0xbcd5faa6, 0xfedf8d02, 0xa34d38ef, 0x6d8342ba, 0x9f40863b, 0x346d6bb5
.word 0x2098490b, 0x763a8a30, 0xde130eec, 0x68f7d022, 0xb0ac7a63, 0x0567ca35, 0x0371eace, 0x675e63fd
.word 0x06269b23, 0x2277d922, 0x7145db53, 0x203275b4, 0x0b6f6b21, 0x767615d0, 0xeb3311ad, 0xfb4f003c
.word 0x9c5cd343, 0x3c97c4ed, 0xbc87dd8f, 0xd0a38e4b, 0xf20fe9fb, 0x46d23155, 0x17fb9f93, 0xc8461263
.word 0x8bbca739, 0x7498de3d, 0x492675ea, 0x640bad71, 0xe1563043, 0xe8b93c89, 0xedca995e, 0xda2f951d
.word 0x90cbec2a, 0x39873475, 0x2384a502, 0x7d739cfb, 0x143d11df, 0xae2abc71, 0xa96f4797, 0x29b5d6b9
.word 0x6890735d, 0x652d55c3, 0x178fbb4d, 0x3c7a424e, 0xcc2a8a11, 0x96de5b14, 0x6505abcc, 0xf8915dca
.word 0xe5ba0897, 0x7682b3a1, 0x883a8e0d, 0x0b578e6f, 0x23ad8185, 0x517745ee, 0x043a46dd, 0xe3ed6eae
.word 0x7fe33358, 0x6f366332, 0xa8f6b433, 0x602fe6b0, 0x7462dbc3, 0x2b4eb49e, 0xb7dc01cd, 0x5e3f63a6
.word 0xd743d099, 0xadce4eb2, 0x67dc8500, 0xceaae796, 0xe68fb34c, 0x1c588abf, 0x3d2ffe13, 0xa69a5ccc
.word 0x952fa7e1, 0xe3235930, 0x772d8175, 0x307bb582, 0xfd438bd4, 0xe408e078, 0x4c980ff8, 0xec96145e
.word 0x5323ddd7, 0x68bca22e, 0x95b8d116, 0x9d4cca86, 0x9404723c, 0x24f81095, 0xa8fc5627, 0xeaee142b
.word 0x5eab68c8, 0x304e2bba, 0x7d0c1c80, 0xed881406, 0xab0e378b, 0x330e640a, 0xaf649acb, 0xdf128b28
.word 0x7ac93122, 0xe913f17c, 0x91f4b020, 0xe9cc99d7, 0x88b8d33a, 0x023dd1e9, 0xf84f74db, 0x6bcbf479
.word 0x37410380, 0x3a0bb152, 0x65abdb10, 0x3f6c4554, 0xaec0f9f7, 0xad6dd583, 0xfca401ec, 0xcbe9878b
.word 0x45fd8da0, 0xcc9f0524, 0xa0e797f6, 0x5d2f5e4e, 0x0bb0cc21, 0x5362a543, 0x211920f5, 0xc8b4c65d
.word 0x8dec99e5, 0x504efd51, 0x77c5d2e2, 0x0bcbc32d
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x22, x26, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x25, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x25, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x25, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x25, x28, ecall_handler
                  li x28, 0x1
                  beq x25, x28, instr_fault_handler
                  li x28, 0x5
                  beq x25, x28, load_fault_handler
                  li x28, 0x7
                  beq x25, x28, store_fault_handler
                  li x28, 0xc
                  beq x25, x28, pt_fault_handler
                  li x28, 0xd
                  beq x25, x28, pt_fault_handler
                  li x28, 0xf
                  beq x25, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x26, x22, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x22, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x22, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x26, x22, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x26, x22, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x26, x22, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
