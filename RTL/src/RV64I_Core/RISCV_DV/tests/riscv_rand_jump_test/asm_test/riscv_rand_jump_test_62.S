.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0xf3492f57
                  li x1, 0x80000000
                  li x2, 0xf8916cc3
                  li x3, 0x192dd82d
                  li x4, 0x80000000
                  li x5, 0xf
                  li x6, 0x0
                  li x7, 0xff104908
                  li x8, 0xd
                  li x9, 0xd
                  li x10, 0x3724a630
                  li x12, 0xf27b8d8e
                  li x13, 0xf8f7095e
                  li x14, 0x0
                  li x15, 0xac309248
                  li x16, 0x3
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0xf
                  li x20, 0x467bf7ef
                  li x21, 0xa
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xfd890a2c
                  li x26, 0xa70e1e6d
                  li x27, 0xe180f3a7
                  li x28, 0x0
                  li x29, 0x6
                  li x31, 0x0
                  la x30, user_stack_end
main:             la           t6, sub_1
                  xor          a5, a2, sp
                  slti         s3, s3, -2008
                  addi         t6, t6, -53
                  andi         s2, s11, 1404
                  sltiu        a3, a4, 460
                  blt          s4, a4, main_j2 #branch to jump instr
                  srl          zero, t1, a6
                  andi         s0, s0, -1980
                  and          s9, a1, tp
                  sub          sp, ra, s5
main_j2:          jalr         t1, t6, 54 #jump main -> sub_1
                  la           t1, sub_2
                  sra          zero, s4, s1
                  srli         t3, t3, 31
                  xor          a5, a6, a6
                  sub          s7, s4, t4
                  slli         gp, s3, 6
                  addi         t1, t1, 243
                  add          a0, s2, s3
main_j3:          jalr         t1, t1, -243 #jump main -> sub_2
                  la           sp, region_0+1171 #start riscv_load_store_rand_instr_stream_0
                  lbu          t3, -13(sp)
                  xor          s5, s9, a5
                  sltu         s1, t0, a4
                  lui          s2, 338350
                  srai         a7, s9, 13
                  lhu          s8, -1(sp)
                  sb           t3, 4(sp)
                  xor          s6, ra, tp
                  sw           t2, -15(sp)
                  lw           a6, -3(sp)
                  addi         s11, s1, -538
                  sll          s0, a4, t0
                  and          s4, a6, s6
                  sltu         t4, gp, s2
                  lb           s11, 16(sp)
                  lbu          s2, -6(sp)
                  lui          t6, 23784
                  lb           a2, -1(sp)
                  slt          gp, s9, s2
                  slti         a6, s11, 534
                  add          gp, a6, ra
                  lb           gp, -2(sp)
                  srai         t0, s0, 28
                  sltiu        s8, zero, 4
                  srai         t0, s9, 20
                  lbu          t6, -9(sp)
                  xori         s11, s9, 1966
                  nop
                  lbu          t4, -12(sp)
                  add          a4, t5, t5
                  sh           a1, -13(sp)
                  sb           a4, 8(sp)
                  nop
                  sra          t0, a5, a4
                  sh           s4, -3(sp)
                  sll          tp, a4, a2
                  or           a4, s4, a2
                  lh           a6, -1(sp)
                  and          a7, s1, s9
                  lbu          s1, 15(sp) #end riscv_load_store_rand_instr_stream_0
                  lui          t3, 70412
                  sltu         gp, sp, a7
                  bge          t5, t6, 6f
                  and          gp, s1, a1
                  slli         s4, a1, 18
                  sra          a5, a5, t2
                  la           ra, sub_2
                  andi         s8, a1, -402
                  nop
                  addi         ra, ra, -972
                  slt          t1, t3, a7
                  sltu         zero, s8, s8
                  beq          t2, s10, main_j1 #branch to jump instr
                  sltiu        s5, t6, -464
                  xori         s9, tp, -986
                  slli         t3, ra, 27
main_j1:          jalr         t1, ra, 972 #jump main -> sub_2
6:                sub          ra, sp, s5
                  sltu         zero, s9, s0
                  sltiu        s6, s0, 741
                  srli         a3, sp, 6
                  xor          s11, sp, s7
                  xor          a4, a3, gp
                  srai         s9, t2, 2
                  slti         t1, a4, 1915
                  xori         a0, s4, -1405
                  slti         t4, s3, 791
                  slt          s7, s10, s1
                  sltu         a5, ra, gp
                  bgeu         s2, s4, 31f
                  beq          s1, t5, 27f
                  slli         s10, gp, 25
                  slti         zero, t1, 319
                  slli         tp, s4, 11
                  slli         ra, s5, 1
                  andi         gp, s9, 1007
                  sub          s7, s4, s0
                  andi         s6, a5, 957
27:               lui          s4, 1005965
                  sub          s3, gp, s3
                  or           a7, s2, s11
                  nop
31:               or           a0, s7, s1
                  slti         s2, a3, 770
                  andi         s5, ra, 64
                  srli         t1, t0, 19
                  auipc        a2, 90098
                  bge          t5, s0, 38f
                  and          a2, sp, a6
38:               sltiu        s4, t6, -1842
                  xori         tp, a2, -341
                  slli         s5, s7, 8
                  srli         t1, t4, 24
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_6:            addi         t5, t5, -48
                  nop
                  add          t0, t5, s2
                  sw           t1, 4(t5)
                  srli         ra, t4, 30
                  add          sp, s5, a5
                  sub          s6, s4, t1
                  auipc        s9, 903869
                  la           tp, region_1+563 #start riscv_load_store_rand_instr_stream_18
                  lh           s5, -165(tp)
                  nop
                  lh           s10, -185(tp)
                  srl          t4, t3, t0
                  nop
                  sw           ra, -151(tp)
                  ori          s2, ra, 1532
                  lbu          s8, 89(tp)
                  nop
                  srli         s3, s1, 26
                  sw           zero, -219(tp)
                  andi         zero, a6, -1423
                  nop
                  lbu          ra, -47(tp)
                  lw           a3, -131(tp)
                  sb           s4, -164(tp)
                  andi         a6, s8, -1004
                  srl          s11, ra, zero
                  lw           zero, 165(tp)
                  lb           a2, 42(tp)
                  lb           s0, -15(tp)
                  addi         zero, a6, 821
                  slti         s7, zero, 902
                  lb           s8, -252(tp)
                  addi         sp, s1, 265
                  srl          s4, a0, a4
                  sltu         s11, zero, s3
                  lb           t1, 198(tp)
                  sub          sp, a0, s9
                  sb           tp, -186(tp)
                  sh           s11, 161(tp)
                  xori         t3, s0, 1256
                  lb           sp, 121(tp)
                  auipc        t1, 997146
                  lh           s0, -55(tp)
                  addi         s11, t1, 1349
                  srli         a3, t3, 22
                  or           a5, zero, s6
                  and          t4, ra, a4
                  sb           s7, 140(tp)
                  xor          ra, t1, s1
                  sltiu        a4, t6, 261
                  addi         s2, s11, 1267
                  sb           zero, 224(tp)
                  sh           s3, 187(tp)
                  sb           s1, -85(tp)
                  addi         ra, a6, 480
                  lh           t3, -223(tp)
                  lh           a4, -221(tp)
                  lui          s1, 735623
                  srli         s9, a1, 0
                  lbu          sp, -128(tp) #end riscv_load_store_rand_instr_stream_18
                  la           s11, region_1+370 #start riscv_load_store_rand_instr_stream_0
                  sll          s8, a2, s7
                  lh           s9, -162(s11)
                  lbu          s8, -166(s11)
                  slti         s5, gp, -1825
                  xori         a6, s4, 1812
                  nop
                  lbu          zero, -5(s11)
                  sb           t5, -39(s11)
                  sb           t6, -249(s11)
                  addi         tp, a2, 197
                  lb           s1, -139(s11)
                  lhu          a2, -80(s11)
                  lbu          s3, -211(s11)
                  and          s10, a4, s6
                  lhu          s1, 232(s11)
                  lb           s2, 45(s11)
                  lh           t0, 226(s11)
                  slt          s10, t1, s1
                  addi         t1, a7, -500
                  sb           a7, 241(s11)
                  sh           s2, 170(s11)
                  srli         s5, s8, 5
                  lb           t6, 173(s11)
                  sw           s2, -70(s11)
                  sb           a7, -181(s11)
                  sub          a2, a6, a0
                  lbu          sp, -28(s11)
                  lb           s7, 251(s11)
                  lw           t3, -190(s11)
                  lbu          s2, -190(s11)
                  lb           s7, -72(s11)
                  lb           s2, 25(s11)
                  sb           a6, -241(s11)
                  sra          s0, s3, s1
                  lb           s0, -30(s11)
                  lw           s6, 46(s11)
                  sb           sp, -179(s11)
                  and          a7, s3, s11
                  sb           zero, 179(s11)
                  lb           s9, -193(s11) #end riscv_load_store_rand_instr_stream_0
                  la           s6, region_0+294 #start riscv_load_store_rand_instr_stream_16
                  sb           s0, -98(s6)
                  sh           s5, 42(s6)
                  sub          s11, s4, t0
                  lbu          a5, 201(s6)
                  lui          sp, 934121
                  sltu         sp, t4, zero
                  or           ra, a2, t2
                  lw           a6, -222(s6)
                  sltiu        s8, sp, -1258
                  srl          t4, t1, s4
                  xor          s3, a4, a2
                  slti         s1, s4, -449
                  sll          s2, s5, s11
                  slt          s4, s2, gp
                  srl          s9, gp, gp
                  lb           s11, -213(s6)
                  lb           a6, -231(s6)
                  sh           gp, 2(s6)
                  sltiu        a6, s9, 1173
                  or           s9, t0, s0
                  sll          s0, a3, s5
                  lw           s11, 114(s6)
                  lb           s8, -209(s6)
                  auipc        sp, 1005457
                  add          a0, s1, t1
                  lbu          a4, -12(s6)
                  add          s3, s2, a3
                  or           a2, s5, a7
                  lb           s1, 50(s6)
                  lbu          a3, 95(s6)
                  srli         a0, s6, 23
                  lbu          sp, 29(s6) #end riscv_load_store_rand_instr_stream_16
                  la           s4, region_0+608 #start riscv_load_store_rand_instr_stream_1
                  srai         ra, s3, 28
                  lh           a0, -126(s4)
                  nop
                  or           s8, t1, s5
                  sb           a2, 15(s4)
                  sb           s9, -25(s4)
                  srai         a4, t5, 14
                  xori         a5, t5, 50
                  addi         t1, tp, 557
                  sll          s1, s8, s7
                  auipc        t0, 86356
                  or           t4, a7, t0
                  slt          s3, s1, t1
                  sltiu        zero, s7, 934
                  sb           a1, -173(s4)
                  lui          a2, 735892
                  lh           s5, 242(s4)
                  sltiu        a0, a7, -1251
                  andi         a4, t1, -264
                  sh           s9, -100(s4)
                  sltiu        t3, t1, 1219
                  lbu          t6, 64(s4)
                  lbu          s7, -127(s4)
                  sra          s5, s4, a6
                  lb           a3, 90(s4)
                  sh           a4, -162(s4)
                  auipc        a4, 259256
                  srli         s2, s4, 4
                  slti         ra, a3, -1936
                  srl          a2, s10, s9
                  lbu          a3, -117(s4)
                  auipc        a0, 7287
                  ori          a4, t5, 567
                  lb           a5, 122(s4) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+685 #start riscv_load_store_rand_instr_stream_19
                  lhu          sp, 175(a0)
                  slti         s4, zero, 1019
                  lb           s1, 154(a0)
                  slt          s4, s3, zero
                  lbu          a2, 1148(a0)
                  sll          a5, t3, a0
                  lb           s5, 395(a0)
                  sb           zero, 548(a0)
                  lh           a4, 1059(a0)
                  lh           zero, 325(a0)
                  sub          t3, a7, a5
                  srl          t1, a4, t3
                  sb           t3, 246(a0)
                  lb           s4, 431(a0)
                  sb           s9, -193(a0)
                  sltiu        s11, s11, 1606
                  lbu          s1, 482(a0)
                  slt          a2, a6, s9
                  sb           s3, 1188(a0)
                  lui          gp, 968395
                  lhu          s5, -651(a0)
                  lhu          ra, 413(a0)
                  lhu          t3, 111(a0)
                  nop
                  sll          ra, a2, a7
                  sb           zero, -303(a0)
                  sw           s5, 271(a0)
                  sb           s2, 720(a0)
                  xor          zero, s1, a7
                  lbu          sp, 595(a0)
                  sub          s6, s6, s6
                  sb           t4, -398(a0)
                  lbu          t6, 653(a0)
                  lbu          s11, -408(a0)
                  nop
                  andi         s3, s10, 861
                  sh           gp, 403(a0)
                  add          s3, a4, s5
                  lhu          a2, 381(a0)
                  lb           s4, -157(a0)
                  lb           s2, 506(a0)
                  srli         ra, s5, 30
                  addi         s2, gp, 1383
                  sltu         a2, s5, s11
                  lb           a4, -259(a0)
                  lbu          a3, -93(a0) #end riscv_load_store_rand_instr_stream_19
                  la           s9, region_0+341 #start riscv_load_store_rand_instr_stream_10
                  sll          s11, s11, s4
                  srl          s6, s4, s5
                  ori          a2, ra, -577
                  xor          tp, t6, a3
                  slli         gp, s2, 20
                  ori          zero, t1, -1222
                  and          a5, t3, s11
                  lb           s4, 56(s9)
                  andi         zero, s5, 1098
                  sll          sp, a1, a6
                  lbu          s6, -58(s9)
                  sh           s0, 1(s9)
                  sh           t5, 7(s9)
                  lbu          tp, 26(s9)
                  sb           a7, -9(s9)
                  nop
                  sb           a7, -52(s9)
                  slti         a6, a4, 268
                  srai         a3, s4, 9
                  sb           sp, -31(s9)
                  addi         a4, a0, 1919
                  lh           s8, 39(s9)
                  lhu          s3, -11(s9)
                  sra          a4, s4, t6
                  lui          s8, 521407
                  slti         a5, t3, 2011
                  lbu          gp, -33(s9)
                  lw           s5, -5(s9)
                  slli         a2, s9, 8
                  lbu          a6, 21(s9) #end riscv_load_store_rand_instr_stream_10
                  la           t3, region_1+74 #start riscv_load_store_rand_instr_stream_13
                  slli         t6, zero, 6
                  sltiu        t1, s0, 1542
                  sb           t1, 12(t3)
                  lw           a3, -18(t3)
                  xor          a0, a4, s0
                  sb           t3, 235(t3)
                  sb           s9, -70(t3)
                  sltiu        zero, a2, 561
                  sll          a4, s0, s8
                  lbu          gp, 151(t3)
                  sb           t2, 131(t3)
                  sltiu        s7, t4, -1114
                  or           s6, t5, s4
                  srl          a4, zero, t1
                  xor          tp, s1, s3
                  or           t6, gp, tp
                  lb           t0, 100(t3)
                  andi         s2, a5, 747
                  sll          s2, t3, t1
                  lhu          zero, -56(t3)
                  sb           a6, 220(t3)
                  sb           t5, 97(t3)
                  xor          t1, s9, a4
                  and          t1, t3, sp
                  slli         s9, s5, 8
                  andi         s9, s2, 615
                  lb           t4, 173(t3)
                  lb           t1, -30(t3)
                  add          s6, t6, gp
                  lbu          s10, -39(t3)
                  and          s2, s3, s10
                  add          a2, s10, a1
                  sb           s7, -59(t3)
                  lb           s2, 170(t3)
                  add          t1, gp, a6
                  add          s9, t1, tp
                  auipc        s4, 555769
                  add          t4, s11, s8
                  xor          ra, t6, a7
                  xori         s7, t3, -1845
                  lbu          sp, 73(t3)
                  auipc        s5, 521527
                  sb           s7, 161(t3) #end riscv_load_store_rand_instr_stream_13
                  la           t1, region_0+992 #start riscv_load_store_rand_instr_stream_22
                  sw           t5, 4(t1)
                  lbu          a2, 3(t1)
                  slli         a6, s9, 13
                  lhu          t4, 6(t1)
                  xor          t6, t1, s9
                  lbu          s7, -13(t1)
                  slti         s5, zero, 1333
                  lbu          s11, 1(t1)
                  sra          a0, t1, s0
                  srli         s4, s11, 17
                  slt          a5, t3, t1
                  lb           s9, -3(t1)
                  sb           a6, 1(t1)
                  lhu          a3, 12(t1)
                  lhu          s8, -6(t1)
                  xori         t0, s0, 1494
                  sb           t4, -4(t1)
                  lb           s6, 8(t1)
                  nop
                  sra          a6, tp, sp
                  slti         s7, ra, 901
                  or           s10, t5, a6
                  ori          s8, s3, -1305
                  auipc        t0, 178181
                  lbu          s3, 12(t1)
                  lbu          a2, -11(t1)
                  sll          a2, s6, a3
                  sltu         s8, s5, a1
                  sb           s5, -9(t1)
                  sub          a0, t0, s2
                  add          t6, s4, ra
                  srai         t4, a7, 28
                  sb           s6, 6(t1)
                  addi         sp, s0, 1611
                  lbu          a0, 13(t1)
                  sltiu        s0, t3, -1372
                  lbu          t4, -9(t1)
                  lb           zero, 11(t1) #end riscv_load_store_rand_instr_stream_22
                  la           a0, region_0+81 #start riscv_load_store_rand_instr_stream_2
                  lhu          a7, 189(a0)
                  lbu          t6, 37(a0)
                  lbu          a7, 212(a0)
                  lb           a6, 46(a0)
                  auipc        s1, 60138
                  xor          sp, ra, s11
                  lb           a6, 22(a0)
                  slti         a7, a6, -190
                  sb           ra, 132(a0)
                  sb           a3, 56(a0)
                  sb           a6, 212(a0)
                  add          a5, s1, a2
                  lb           t3, -46(a0)
                  sh           sp, 253(a0)
                  sw           s0, 27(a0)
                  lh           a6, 211(a0)
                  lbu          t0, -52(a0)
                  sub          sp, a0, s1
                  auipc        ra, 225299
                  lb           s4, -16(a0)
                  lbu          sp, 198(a0)
                  lui          t1, 745185
                  sb           s6, -24(a0)
                  lhu          s4, 137(a0)
                  ori          s7, t0, -993
                  auipc        s1, 51899
                  lb           t0, 214(a0)
                  sb           a4, 26(a0)
                  lbu          zero, 122(a0)
                  sb           t5, 248(a0)
                  lb           t6, 191(a0)
                  srli         a3, s3, 9
                  lb           t1, 27(a0)
                  lh           s1, 185(a0)
                  sltu         s2, s11, tp
                  sb           a0, 102(a0)
                  sh           s2, 127(a0)
                  sh           t6, 121(a0)
                  sb           s1, 155(a0)
                  lw           s0, 123(a0)
                  lb           t3, 18(a0) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_1+35 #start riscv_load_store_rand_instr_stream_3
                  nop
                  sltu         ra, a4, s5
                  sb           s3, -6(s8)
                  lw           a4, -15(s8)
                  sll          s6, s6, s6
                  lb           s9, -4(s8)
                  sb           s6, -14(s8)
                  lb           s9, -16(s8)
                  sub          t4, s5, gp
                  slti         s6, a4, -1335
                  auipc        zero, 67457
                  sh           s6, -3(s8)
                  sw           a0, 1(s8)
                  add          s0, tp, a1
                  sltiu        zero, t4, 683
                  sb           gp, 3(s8)
                  auipc        t4, 874136
                  lb           a5, 10(s8)
                  lbu          s3, -9(s8)
                  sltu         t0, s4, gp
                  lb           sp, -13(s8)
                  sb           s7, 14(s8)
                  lui          s11, 554173
                  auipc        tp, 490193
                  lbu          s1, -8(s8)
                  lhu          a7, -9(s8)
                  sub          t6, s6, a0
                  add          s4, s4, ra
                  xori         a3, t4, 1974
                  srai         s11, t3, 29
                  sb           s10, 1(s8)
                  lbu          zero, 2(s8)
                  xor          s2, a7, s4
                  lhu          s6, 9(s8)
                  lbu          s9, 10(s8)
                  sb           sp, 4(s8)
                  sub          s5, a1, s7
                  lb           t3, -7(s8)
                  sb           s1, -6(s8)
                  sra          a2, a4, a5
                  lb           t4, -5(s8)
                  lh           t6, -11(s8)
                  ori          t4, t6, -1912
                  addi         s0, s1, 1004
                  auipc        a3, 454261
                  sra          sp, s4, s5
                  lbu          a0, 14(s8)
                  sb           s2, 10(s8)
                  slti         s9, sp, 1395
                  addi         a7, s9, -823
                  sh           a1, 13(s8)
                  lb           a4, 14(s8)
                  andi         a6, a2, -549
                  lw           a5, -7(s8)
                  sh           a0, -9(s8) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+243 #start riscv_load_store_rand_instr_stream_21
                  sub          s1, t2, s11
                  nop
                  sh           a0, -79(sp)
                  lh           s5, -179(sp)
                  lb           a6, 112(sp)
                  sb           a7, 12(sp)
                  lbu          s0, 250(sp)
                  lw           s4, -15(sp)
                  lb           t6, 48(sp)
                  lb           gp, 202(sp)
                  xori         a3, a3, -1326
                  sub          a0, s8, t3
                  xori         t4, a5, 1594
                  xori         t6, a6, -592
                  or           s11, t3, a6
                  slli         s2, a0, 4
                  sra          s7, t1, zero
                  lb           a2, 63(sp)
                  sll          zero, s6, t2
                  slti         s4, s11, -1512
                  sub          t3, a6, s8
                  sub          s7, s8, t0
                  sb           t3, -234(sp)
                  sltiu        a6, ra, 632
                  sub          s1, s6, s1
                  srli         s7, s1, 18
                  and          gp, a1, a6
                  lh           s9, 43(sp)
                  slt          t6, t6, gp
                  nop
                  lhu          s1, -9(sp)
                  srl          s4, t2, s10
                  andi         t0, s0, -1555
                  lb           a3, 16(sp)
                  or           s1, t5, tp
                  sltiu        t6, t6, -1473
                  srai         s2, a5, 22
                  sll          a5, t4, s8
                  xor          gp, tp, s4
                  srli         a0, t2, 23
                  lui          t1, 997268
                  lbu          t4, -88(sp)
                  xori         t3, zero, 970
                  lb           a3, 23(sp)
                  lb           ra, -152(sp) #end riscv_load_store_rand_instr_stream_21
                  la           s9, region_1+1788 #start riscv_load_store_rand_instr_stream_5
                  lhu          gp, -1294(s9)
                  sra          a4, s11, s8
                  lbu          zero, -1431(s9)
                  lh           tp, -1114(s9)
                  slli         s11, a1, 25
                  or           s11, ra, s0
                  slli         t4, s8, 9
                  srl          s4, t1, s1
                  sh           t3, -1518(s9)
                  sh           a0, -1172(s9)
                  srli         t3, a0, 4
                  lhu          s8, -1260(s9)
                  andi         t0, a5, 963
                  slti         a6, gp, 1780
                  lh           s2, -1338(s9)
                  lhu          zero, -1748(s9)
                  sb           s7, -1281(s9)
                  lb           t0, -1349(s9)
                  srai         t0, t6, 16
                  lbu          s0, -516(s9)
                  lb           s6, -857(s9)
                  sb           a4, -1443(s9)
                  slti         a6, a2, -860
                  sra          s8, s6, s0
                  sb           s8, -1126(s9)
                  lbu          gp, -1043(s9)
                  sb           s7, -789(s9)
                  sb           s4, -475(s9)
                  lb           s5, -1549(s9)
                  sb           tp, -1421(s9)
                  andi         a5, s5, 402
                  lh           t3, -404(s9)
                  lbu          a0, -782(s9)
                  sll          sp, s7, t4
                  srl          t3, a5, tp
                  lb           s0, -859(s9)
                  addi         a0, s1, 352
                  sb           t5, -1568(s9) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+186 #start riscv_load_store_rand_instr_stream_15
                  sh           zero, -152(sp)
                  srli         s8, ra, 16
                  xor          gp, zero, a0
                  sh           s5, -108(sp)
                  sub          t0, a3, a0
                  and          a0, s6, s8
                  slt          t4, t0, a0
                  lb           t4, -181(sp)
                  andi         s9, sp, -345
                  sb           a4, -25(sp)
                  or           t1, t6, t0
                  lbu          a0, 143(sp)
                  lw           a3, -178(sp)
                  sltiu        a0, t5, -578
                  add          s5, s5, t3
                  slt          s7, a0, s11
                  srai         ra, a0, 26
                  lhu          s7, 134(sp)
                  ori          s3, gp, -1167
                  lbu          t4, -127(sp)
                  lbu          t0, -181(sp)
                  lui          a3, 458942
                  slli         zero, s3, 20
                  lbu          s1, 19(sp)
                  lb           a2, -104(sp)
                  lb           s9, 176(sp)
                  lbu          t4, -165(sp)
                  slti         a0, s11, -386
                  slt          tp, s11, a6
                  auipc        zero, 634699
                  sb           a6, 85(sp)
                  sb           a7, -64(sp)
                  nop
                  sh           s5, 196(sp)
                  sb           ra, -132(sp)
                  lbu          a4, -95(sp)
                  sb           a0, 141(sp)
                  sb           s2, 8(sp)
                  sub          s7, s2, s4
                  ori          tp, a4, -1628
                  sb           t1, 97(sp)
                  or           s0, t0, a0
                  lbu          a4, -89(sp)
                  lhu          s7, -126(sp) #end riscv_load_store_rand_instr_stream_15
                  la           sp, region_0+1416 #start riscv_load_store_rand_instr_stream_6
                  lb           t4, -168(sp)
                  sub          s9, a0, a3
                  lhu          s4, -86(sp)
                  sb           a6, 113(sp)
                  slt          s0, s2, t5
                  srl          a6, gp, t6
                  sb           t5, 106(sp)
                  srl          t4, a7, zero
                  srl          t4, s8, tp
                  lb           s8, 51(sp)
                  srl          ra, t6, s10
                  lhu          s11, -72(sp)
                  xori         s7, a1, 1233
                  lb           s6, -49(sp)
                  lb           s4, 219(sp)
                  sb           t1, -37(sp)
                  sll          s1, a2, s3
                  xori         t1, t4, -1459
                  sb           s10, 47(sp)
                  auipc        s1, 111479
                  sh           s6, -236(sp)
                  lb           a7, 4(sp)
                  and          s8, t2, s10
                  sltu         s5, t6, t2
                  sb           ra, -41(sp)
                  sb           s1, 60(sp)
                  lbu          t3, -255(sp)
                  xori         s6, sp, 399
                  srai         a0, a4, 29
                  ori          s1, s2, 969
                  sh           a6, -108(sp)
                  lb           a5, 215(sp)
                  sltu         a7, t4, t1
                  lbu          a2, 236(sp)
                  sb           tp, -176(sp)
                  sb           t0, 74(sp)
                  srl          a2, t4, t4
                  sb           t5, -178(sp)
                  sra          a3, s4, t6
                  lw           t4, 188(sp)
                  xori         s10, sp, -584
                  sb           s11, 13(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a2, region_1+1299 #start riscv_load_store_rand_instr_stream_7
                  sub          a6, a0, zero
                  addi         t3, t5, 124
                  xor          a4, zero, a7
                  lb           s6, 64(a2)
                  srli         a6, s2, 21
                  addi         s3, t0, -595
                  lb           s8, 202(a2)
                  lbu          s6, 229(a2)
                  srl          s4, s8, tp
                  slt          s8, t0, s11
                  lbu          s0, -236(a2)
                  sra          s3, t6, t4
                  and          zero, zero, zero
                  add          ra, s10, a0
                  and          t4, a1, t3
                  or           s1, t1, sp
                  lbu          a5, -12(a2)
                  nop
                  lhu          zero, -193(a2)
                  and          s1, s3, tp
                  srl          a7, sp, s3
                  sub          s7, s11, sp
                  sub          a0, a7, s8
                  srli         s4, t6, 3
                  sll          sp, a7, s6
                  slt          t4, a7, s10
                  lb           s6, 164(a2)
                  lbu          t4, -232(a2)
                  addi         s3, s3, -846
                  slli         s8, s4, 25
                  lb           s1, -157(a2)
                  sra          s6, t2, t5
                  lh           t3, 45(a2)
                  ori          s6, a3, -2011
                  lbu          t0, -36(a2)
                  sb           a7, 88(a2)
                  lb           s10, 159(a2)
                  sb           a7, -44(a2)
                  lbu          ra, 24(a2)
                  lh           t3, 107(a2)
                  slti         a3, t1, -1026
                  slti         s4, s0, 1365
                  slt          s0, tp, a2
                  lhu          sp, 17(a2) #end riscv_load_store_rand_instr_stream_7
                  la           s4, region_0+1271 #start riscv_load_store_rand_instr_stream_11
                  xori         ra, a7, -182
                  or           s11, a1, s6
                  lhu          ra, -179(s4)
                  srli         s3, gp, 11
                  lbu          zero, -25(s4)
                  slli         ra, a6, 1
                  lbu          ra, -212(s4)
                  sb           s0, -230(s4)
                  addi         s6, s5, -1024
                  srl          a7, t4, t0
                  lui          s1, 51998
                  slt          s8, s0, a6
                  slti         a0, s2, -1263
                  ori          a4, s4, 343
                  sll          a4, a5, s7
                  sb           t5, -77(s4)
                  andi         a3, t0, 896
                  srli         tp, a3, 8
                  lb           gp, -178(s4)
                  auipc        s3, 916564
                  lb           s10, -40(s4)
                  sb           s2, 142(s4)
                  sra          a6, gp, s8
                  ori          t6, t3, -358
                  lb           a4, -219(s4)
                  lbu          s9, 236(s4)
                  xor          a4, t3, t5
                  sra          tp, zero, sp
                  sh           t5, 51(s4) #end riscv_load_store_rand_instr_stream_11
                  la           a5, region_1+1691 #start riscv_load_store_rand_instr_stream_9
                  slt          ra, s6, zero
                  sub          s10, a6, t6
                  sll          s2, a0, ra
                  lb           s6, 16(a5)
                  lbu          s1, -44(a5)
                  auipc        tp, 404790
                  or           a7, s10, s0
                  or           s0, a2, s6
                  srli         t4, a1, 20
                  sra          s1, sp, a3
                  sll          gp, sp, a7
                  sw           zero, 21(a5)
                  srli         t3, a5, 27
                  sra          s10, a2, s0
                  addi         zero, s3, 80
                  sub          t6, t2, s10
                  lbu          t3, -4(a5)
                  lb           a7, -6(a5)
                  nop
                  andi         t1, a5, 985
                  lw           s6, 53(a5)
                  ori          s4, a6, 21
                  slti         s9, s4, 100
                  lbu          t3, -62(a5)
                  slli         s10, s6, 21
                  lbu          s3, -13(a5)
                  add          a4, s2, s7
                  slti         a0, t1, -1557
                  lb           s8, -2(a5)
                  lbu          a6, -61(a5)
                  add          s7, s4, s2
                  sb           s7, 26(a5)
                  srl          t3, a1, t4
                  lhu          sp, -35(a5)
                  addi         s4, t3, 771
                  sh           s6, 19(a5) #end riscv_load_store_rand_instr_stream_9
                  la           s5, region_1+118 #start riscv_load_store_rand_instr_stream_8
                  lbu          s0, 63(s5)
                  sltu         s4, s8, a2
                  nop
                  lb           t1, 43(s5)
                  sb           a1, 221(s5)
                  lui          s3, 399091
                  ori          s3, t0, -752
                  xori         s3, s6, 1973
                  sb           s10, 59(s5)
                  lui          s0, 682971
                  auipc        s9, 201260
                  srl          s0, t0, s0
                  lhu          ra, 132(s5)
                  lh           s10, -24(s5)
                  slli         a0, a2, 6
                  sltu         s11, t6, s2
                  addi         s3, ra, 1493
                  srli         ra, s9, 6
                  sll          a2, s2, t2
                  xor          zero, s1, s3
                  xor          s8, a6, t1
                  xori         a0, a6, 1805
                  sb           a2, 171(s5)
                  srli         t3, zero, 26
                  sra          a0, s1, t1
                  lb           t3, -90(s5)
                  srai         s1, t3, 7
                  sb           s1, 132(s5)
                  sll          s9, s10, t2
                  lbu          tp, -69(s5) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+822 #start riscv_load_store_rand_instr_stream_12
                  slti         t4, s11, -1665
                  ori          s1, s1, -997
                  lb           t3, -400(sp)
                  sh           s5, -150(sp)
                  lhu          s3, 68(sp)
                  xor          a7, a5, a6
                  nop
                  slli         t6, a3, 25
                  sll          s2, zero, s9
                  lbu          t6, 921(sp)
                  lb           s2, -214(sp)
                  xor          s0, a0, t5
                  lb           zero, -596(sp)
                  lb           a2, -794(sp)
                  addi         t1, s6, -643
                  lbu          a0, -115(sp)
                  lbu          s7, -423(sp)
                  lb           s5, 208(sp)
                  srli         s9, s10, 26
                  add          a4, t6, s5
                  slti         ra, s4, 696
                  sh           s5, -668(sp)
                  srl          a3, s4, s5
                  lhu          a5, -22(sp)
                  addi         a5, s1, 556
                  lh           zero, 868(sp)
                  sra          s8, gp, s4
                  sb           t5, -671(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+949 #start riscv_load_store_rand_instr_stream_20
                  and          tp, s1, s5
                  lb           s9, 18(sp)
                  lbu          s10, -660(sp)
                  sb           s4, -341(sp)
                  lui          ra, 583720
                  srli         a4, s11, 13
                  lb           s4, -559(sp)
                  lbu          a0, 133(sp)
                  lb           t6, 344(sp)
                  sb           t6, 133(sp)
                  lbu          a5, 456(sp)
                  sltu         zero, a0, s6
                  add          t4, a0, a0
                  sw           s10, 199(sp)
                  sb           s8, 605(sp)
                  sh           a6, 73(sp)
                  sltu         s8, s8, s10
                  sra          a7, s5, s3
                  sb           s3, -512(sp)
                  sh           a2, -555(sp)
                  sra          s4, t3, t5
                  slt          t1, s5, tp
                  sw           s2, 263(sp)
                  lb           s8, -152(sp)
                  lui          s0, 364859
                  srl          t0, t4, s8
                  or           t0, sp, s6
                  sll          s5, t4, s2
                  lh           s8, 539(sp)
                  lw           s3, 635(sp)
                  lw           s8, 947(sp)
                  nop
                  lhu          t0, -841(sp)
                  lb           t1, 548(sp)
                  lbu          a3, -180(sp)
                  lb           t6, 121(sp)
                  lb           s10, -777(sp)
                  sra          t3, a1, t6
                  ori          s10, gp, 92
                  sb           t2, 154(sp)
                  srli         s8, a7, 14
                  sll          s2, t3, s5
                  sb           ra, -470(sp)
                  lhu          a3, 789(sp)
                  andi         a7, s8, 1467
                  or           s2, gp, s10
                  lbu          s11, 1012(sp)
                  nop
                  sb           a3, 868(sp)
                  lbu          s2, -554(sp)
                  sb           t6, -663(sp) #end riscv_load_store_rand_instr_stream_20
                  or           t1, a0, s10
                  blt          s11, s9, 2f
2:                bge          a4, t3, 13f
                  srai         t4, s9, 12
                  ori          t4, sp, -40
                  auipc        s1, 582196
                  xori         t6, a0, -2020
                  blt          s0, a1, 17f
                  beq          sp, s8, 25f
                  sll          t3, a1, zero
                  slti         sp, s3, -155
                  sll          s1, t3, a6
                  slt          a3, sp, s3
13:               blt          a7, s8, 26f
                  srai         s7, s8, 15
                  auipc        a5, 414277
                  sub          s3, a6, t4
17:               srli         gp, t6, 13
                  ori          t6, t4, -572
                  xori         a4, s10, 1279
                  slt          t6, s2, sp
                  sub          t1, t4, a4
                  sll          ra, a0, t0
                  ori          s10, t1, 281
                  slti         ra, s10, -465
25:               sltu         ra, ra, t2
26:               lui          ra, 830800
                  or           s11, t6, s7
                  sub          a3, s9, t1
                  and          t3, zero, a2
                  blt          t3, s11, 46f
                  bge          ra, a0, 33f
                  slti         a6, t3, 1269
33:               sra          zero, a4, sp
                  sub          s10, s8, a6
                  slti         s2, a7, 1097
                  srl          a0, s9, s1
                  or           s2, t6, a1
                  bne          s2, s1, 41f
                  slti         s1, s8, 1702
                  addi         gp, s0, -1863
41:               addi         t1, a1, 879
                  bgeu         s11, zero, 44f
                  sra          s6, s7, s1
44:               bge          s2, s2, 55f
                  slli         s5, t1, 22
46:               add          sp, s7, ra
                  bge          t1, t6, 49f
                  xori         s2, s9, 752
49:               bgeu         t5, s5, 60f
                  bltu         s4, sp, 65f
                  nop
                  sltu         a6, a1, tp
                  or           t6, s3, a6
                  bne          sp, a7, 55f
55:               or           zero, ra, ra
                  xori         a6, t0, 1313
                  sub          t6, t1, a6
                  and          a2, t6, gp
                  sltu         gp, t2, t2
60:               xor          t4, s10, a4
                  addi         t1, gp, 299
                  sltiu        zero, sp, 1624
                  srai         ra, s9, 10
                  xor          s10, a0, t0
65:               bgeu         t3, a6, 84f
                  auipc        t0, 958445
                  blt          a3, zero, 72f
                  beq          t1, a2, 87f
                  andi         s8, a4, -370
                  and          a6, a7, t1
                  auipc        a0, 630941
72:               slli         tp, t4, 11
                  auipc        s2, 711646
                  srl          a7, zero, s4
                  xori         t4, ra, -39
                  slti         s1, a5, 1377
                  ori          s10, t4, 676
                  sub          s2, s11, t5
                  and          a6, a4, a3
                  sub          a5, t4, t6
                  nop
                  ori          s6, s4, -733
                  lui          t0, 502335
84:               addi         zero, s5, 380
                  bgeu         a3, s5, 97f
                  beq          s4, a6, 88f
87:               auipc        t1, 45746
88:               andi         t3, tp, -785
                  and          s10, s10, s3
                  auipc        s3, 68250
                  bge          sp, ra, 102f
                  ori          s10, a7, -1691
                  auipc        sp, 44796
                  sltiu        t4, t1, 300
                  xori         s4, s8, -17
                  bltu         t4, s11, 100f
97:               sltu         s0, s9, a4
                  bgeu         tp, s1, 109f
                  bne          s7, s8, 108f
100:              bltu         t5, s3, 105f
                  auipc        a2, 377627
102:              lui          s10, 1005492
                  xor          s1, tp, s5
                  slli         t0, s5, 22
105:              ori          tp, ra, -1193
                  blt          sp, t0, 124f
                  lui          s2, 389265
108:              bne          a5, s7, 127f
109:              xori         a4, a5, 1979
                  bltu         a1, sp, 119f
                  bgeu         s5, s2, 115f
                  and          s2, s4, a3
                  auipc        s9, 161545
                  bltu         a4, s9, 120f
115:              add          s3, s9, a5
                  auipc        s0, 404536
                  nop
                  sra          zero, t5, sp
119:              blt          a5, a2, 120f
120:              sub          a4, ra, t1
                  auipc        s5, 897738
                  slt          a4, sp, zero
                  blt          a2, t0, 132f
124:              sra          a5, t3, a0
                  ori          ra, a3, -1635
                  blt          sp, a0, 142f
127:              sltiu        ra, s7, -576
                  srai         s6, t0, 15
                  srli         s11, t0, 12
                  or           s0, s3, s9
                  ori          a0, t3, -1576
132:              beq          a2, s10, 143f
                  addi         sp, a3, 287
                  srli         s7, s0, 10
                  srli         a2, s10, 11
                  blt          a5, t0, 141f
                  beq          t3, a1, 148f
                  slli         t0, ra, 17
                  bltu         a5, zero, 140f
140:              sra          a3, s6, t5
141:              srai         a4, s7, 5
142:              lui          s6, 305764
143:              bgeu         s9, gp, 156f
                  bgeu         sp, s7, 156f
                  or           a6, s7, s8
                  srai         s0, t6, 3
                  beq          s7, s10, 166f
148:              srai         ra, a5, 13
                  bne          t1, a2, 155f
                  andi         a2, a2, -1765
                  or           t4, ra, s3
                  slt          s4, a5, ra
                  andi         t3, tp, 999
                  auipc        tp, 208665
155:              sll          t4, t5, s4
156:              beq          s0, gp, 161f
                  lui          t3, 29812
                  slli         a7, a5, 4
                  sub          sp, s7, a5
                  blt          s7, a3, 164f
161:              sub          t1, s2, t3
                  bne          s3, s11, 181f
                  add          s11, s8, a5
164:              add          gp, ra, a0
                  lui          t1, 711975
166:              slti         s11, a6, -135
                  sll          s2, a3, zero
                  bgeu         tp, zero, 179f
                  lui          a2, 625674
                  addi         s4, s5, -1463
                  bgeu         s9, a6, 175f
                  sltu         s6, t5, s11
                  nop
                  addi         sp, a7, 466
175:              sra          gp, zero, a6
                  slti         t0, s11, -25
                  bne          t4, t5, 179f
                  srli         a4, s7, 4
179:              auipc        zero, 146875
                  sub          t3, tp, t0
181:              sra          sp, s8, sp
                  xor          gp, s1, s10
                  xor          sp, a1, s8
                  beq          t1, s7, 194f
                  bne          s3, a7, 196f
                  srai         s11, a4, 29
                  bge          t6, t4, 202f
                  bltu         t6, s1, 190f
                  sltiu        a7, t4, 1162
190:              auipc        a7, 241466
                  sra          s2, s4, a6
                  or           t0, zero, s4
                  nop
194:              bltu         tp, s11, 213f
                  bltu         t6, a4, 197f
196:              add          s6, gp, s7
197:              xori         s6, s10, 256
                  add          gp, t4, a7
                  xori         a5, t5, -200
                  sub          s1, s10, a3
                  slt          s1, s8, t3
202:              sra          t0, a5, a1
                  bgeu         ra, t6, 220f
                  sra          s3, s1, a4
                  sub          s2, t2, s6
                  sll          s3, a7, s4
                  ori          s9, s0, -659
                  and          t3, s8, a2
                  or           s8, s0, sp
                  sltu         s5, s7, gp
                  blt          t2, t0, 222f
                  andi         s3, gp, -1728
213:              srl          s8, s0, a5
                  andi         a2, s3, -28
                  srai         s7, s2, 26
                  nop
                  slt          a5, a4, s10
                  blt          t1, t5, 219f
219:              sra          t6, t4, t1
220:              and          t0, s5, t4
                  sltiu        t1, s0, 1664
222:              xor          a4, t4, s7
                  srl          a0, t3, gp
                  srai         a5, a1, 10
                  bge          s0, a4, 234f
                  slli         s2, a2, 14
                  xori         s1, sp, 605
                  nop
                  bltu         s3, s0, 231f
                  addi         a3, a2, -1493
231:              slti         a4, a3, -1678
                  slli         a3, t1, 15
                  bge          t6, a7, 251f
234:              or           s4, ra, a1
                  ori          t6, sp, -1707
                  sltu         s5, a6, a6
                  sub          a4, a3, s5
                  xori         a3, t3, 1964
                  slt          ra, t4, t5
                  add          t1, gp, a1
                  ori          a0, t2, 518
                  sltu         s1, a6, t0
                  xori         s3, t2, 2034
                  sll          s8, a4, ra
                  sltiu        ra, t5, -405
                  sub          s11, a5, t0
                  and          t1, s1, s0
                  srai         s9, s10, 23
                  slli         a4, ra, 13
                  add          a2, s4, s2
251:              auipc        t4, 1034760
                  blt          a5, gp, 253f
253:              lui          s1, 1038239
                  sltu         s7, a2, t2
                  beq          s3, t1, 258f
                  xori         s7, a5, -995
                  nop
258:              nop
                  la           s1, region_1+1247 #start riscv_load_store_rand_instr_stream_4
                  lh           t6, -61(s1)
                  xor          s5, s1, a0
                  sltu         s4, a3, s0
                  lbu          s0, -58(s1)
                  sb           ra, 0(s1)
                  lbu          a2, 158(s1)
                  ori          s3, s9, 1410
                  lbu          a7, 51(s1)
                  addi         t0, s7, 665
                  sub          t4, a2, s8
                  xori         s8, a2, 1185
                  and          t0, s2, s8
                  lbu          a4, -119(s1)
                  sra          a0, t3, a2
                  lb           a3, -184(s1)
                  xori         s3, sp, 1751
                  sltiu        zero, t3, -579
                  addi         s3, t6, 1788
                  lw           zero, -23(s1)
                  xori         s5, s11, -1929
                  lb           s3, -144(s1)
                  slt          s2, s0, s5
                  lb           ra, 188(s1)
                  lbu          s10, 28(s1)
                  sb           a4, 36(s1)
                  lbu          s10, 110(s1)
                  or           s8, s3, t5
                  nop
                  andi         a2, s4, -1363
                  sb           s10, 200(s1)
                  xori         s3, a2, 1519
                  auipc        t0, 106867
                  xor          a2, t6, s6
                  lui          s8, 136924
                  slli         zero, ra, 21
                  or           s11, tp, t0
                  or           s10, s4, s4
                  add          t0, ra, s3
                  lbu          t3, 130(s1)
                  lbu          s7, -74(s1)
                  auipc        t4, 91207
                  and          sp, a7, s4
                  lhu          t4, 231(s1)
                  sh           s11, -245(s1)
                  lh           a2, -93(s1) #end riscv_load_store_rand_instr_stream_4
                  sra          a6, s7, s7
                  srl          a4, a7, t4
                  sra          s10, a5, sp
                  sltiu        s11, zero, -1678
                  slt          tp, s6, a6
                  blt          s9, a6, 269f
                  sltu         ra, a5, s5
                  bne          sp, a3, 282f
                  add          a0, s2, t0
                  bne          ra, t0, 270f
269:              bgeu         a0, s0, 274f
270:              xor          s3, zero, a2
                  addi         a0, t2, -1387
                  sltiu        sp, s10, -1746
                  nop
274:              srli         gp, s11, 22
                  sltu         tp, t4, s6
                  bltu         s1, a2, 282f
                  slti         s0, t1, 825
                  add          t1, a6, a3
                  addi         t3, s1, 512
                  sll          zero, a1, zero
                  and          t0, a6, s6
282:              srai         t1, s3, 26
                  bge          zero, a3, 296f
                  bltu         s0, a6, 294f
                  or           s4, t6, t5
                  slti         a4, s0, 684
                  sub          tp, s3, s11
                  blt          a3, s7, 290f
                  nop
290:              srl          t0, ra, s2
                  srl          t1, s4, t2
                  bgeu         sp, sp, 311f
                  sltiu        s3, a1, -71
294:              nop
                  xori         s1, s2, -1297
296:              ori          t1, a7, -2002
                  xori         s8, s6, -1393
                  sll          s9, gp, gp
                  add          a2, a1, tp
                  bltu         a5, t6, 303f
                  bltu         t6, s6, 303f
                  bge          t3, s6, 311f
303:              sltu         a0, sp, s9
                  sra          a5, t0, a2
                  slli         gp, t2, 24
                  blt          s0, s7, 323f
                  or           s0, s7, s5
                  xori         s8, a0, 1038
                  or           a0, s2, s8
                  bltu         a7, s3, 321f
311:              or           gp, s4, a6
                  beq          s10, zero, 331f
                  sra          s1, a6, a2
                  bgeu         a3, a1, 316f
                  sub          gp, s4, s5
316:              slli         s8, s5, 16
                  bltu         s4, t1, 318f
318:              and          s6, gp, ra
                  bge          t4, s5, 328f
                  slt          s11, t1, zero
321:              ori          s11, s11, 21
                  auipc        sp, 955856
323:              add          s5, t3, t2
                  beq          t3, a0, 336f
                  xor          a7, s3, a1
                  srli         a6, t1, 25
                  add          t3, a1, t0
328:              srai         sp, s10, 29
                  blt          a6, a6, 340f
                  bgeu         s2, s3, 334f
331:              slti         t3, t6, 1144
                  addi         s8, s2, 758
                  slli         s5, tp, 21
334:              srli         t4, t6, 1
                  srli         s7, s1, 30
336:              bltu         t0, a6, 354f
                  sltu         t3, s10, s7
                  srli         a6, a6, 27
                  srl          s8, gp, s11
340:              sub          s5, tp, a5
                  sll          a6, t1, s1
                  or           s6, t3, a5
                  add          sp, s6, t5
                  bgeu         s8, gp, 355f
                  lui          a4, 11526
                  add          t3, a6, a4
                  sub          s0, t6, a0
                  srl          s0, ra, s7
                  addi         s2, a0, 1101
                  blt          t3, s2, 361f
                  add          s7, zero, a7
                  beq          t1, ra, 353f
353:              lui          a7, 377958
354:              lui          a6, 941022
355:              bgeu         tp, s0, 356f
356:              srli         s1, t6, 31
                  bltu         t5, s9, 361f
                  srli         s3, a1, 7
                  add          tp, s2, a3
                  addi         s5, s0, -1012
361:              addi         a5, a6, -993
                  blt          a1, ra, 373f
                  sub          a5, s4, s8
                  sll          a2, a1, s1
                  andi         s6, t1, 2020
                  blt          s0, s5, 381f
                  sub          tp, gp, zero
                  slti         s3, s1, 1672
                  sltiu        s3, s9, 63
                  ori          zero, a0, 1205
                  beq          s5, a7, 390f
                  xor          gp, t6, s3
373:              auipc        s2, 765691
                  addi         t1, s5, -1043
                  blt          a0, s9, 378f
                  or           a5, s2, a7
                  bgeu         s1, gp, 388f
378:              andi         gp, a3, 1959
                  auipc        a3, 613609
                  beq          s11, s1, 397f
381:              bge          a7, t0, 400f
                  bne          s11, t4, 386f
                  bltu         s5, s10, 384f
384:              and          sp, t3, s4
                  or           s11, s3, a6
386:              bgeu         s2, zero, 402f
                  beq          s1, s4, 389f
388:              or           zero, s1, a0
389:              sltu         a2, a2, a1
390:              and          a4, s8, a7
                  slti         t4, s9, 1711
                  sltiu        s2, a5, -385
                  auipc        sp, 854748
                  bgeu         a5, t5, 399f
                  slt          s2, s3, t1
                  or           s5, s4, t0
397:              beq          t6, ra, 410f
                  srl          a7, gp, s7
399:              add          a7, gp, s10
400:              srli         a5, t5, 31
                  add          s5, gp, s5
402:              sub          s8, s8, s2
                  srai         s2, s0, 26
                  srai         a0, s2, 13
                  bgeu         a4, s10, 407f
                  blt          tp, a2, 408f
407:              bltu         s9, t2, 419f
408:              lui          a4, 186393
                  bne          a4, tp, 420f
410:              sub          a7, s2, zero
                  addi         a4, t4, -517
                  ori          s9, zero, -817
                  slli         s4, a3, 14
                  blt          t6, s6, 432f
                  srai         sp, s4, 7
                  sltu         a4, s4, a5
                  bne          s8, s6, 421f
                  andi         a5, a5, 491
419:              slt          a0, t1, t1
420:              sub          s1, sp, sp
421:              srai         s9, t5, 25
                  addi         s1, sp, 1087
                  srai         t6, s1, 15
                  slt          sp, s8, a7
                  slti         s2, a1, 620
                  lui          a3, 765936
                  sltiu        s2, gp, 1773
                  sll          a3, t6, gp
                  sll          ra, t5, a5
                  bgeu         a6, zero, 449f
                  auipc        zero, 811752
432:              and          sp, s7, s11
                  slti         t0, gp, -669
                  sltiu        s8, t5, -1969
                  sltiu        s7, t3, 1165
                  ori          ra, s7, -843
                  ori          s2, a4, 1526
                  blt          a4, a0, 449f
                  srai         t0, s4, 0
                  or           s5, s6, t0
                  slt          a5, s0, s11
                  la           s1, region_0+1394 #start riscv_load_store_rand_instr_stream_14
                  lui          s0, 868489
                  addi         a6, s10, 1592
                  add          gp, s8, s1
                  lb           t6, 1(s1)
                  addi         a5, sp, -419
                  srli         ra, s7, 25
                  sh           a2, -46(s1)
                  lw           s10, 14(s1)
                  sb           a6, -21(s1)
                  srl          t3, a4, a5
                  lbu          s2, -28(s1)
                  ori          t3, a2, -1638
                  slti         a0, tp, -2
                  lui          t4, 535688
                  lui          t0, 410284
                  lh           t6, -32(s1)
                  sll          s8, zero, s4
                  lb           s8, 21(s1)
                  sb           a4, 20(s1)
                  srli         sp, a1, 13
                  ori          s4, t2, -1137
                  lbu          s7, 17(s1)
                  lbu          a5, 20(s1)
                  add          s8, s4, s4
                  xori         a6, s6, 1792
                  lb           s7, 51(s1)
                  ori          s2, s4, -683
                  add          s7, a7, gp
                  sra          s10, t0, s6
                  sll          t0, t2, a1
                  slt          s7, t4, t4
                  srl          s5, s2, s1
                  srl          s3, s10, a6
                  sub          t6, a0, t0
                  srai         t1, s1, 24
                  xor          s5, ra, a2
                  xori         a2, s10, 395
                  sb           t3, -30(s1)
                  sb           s3, -53(s1)
                  lbu          zero, -13(s1)
                  slli         t6, gp, 31
                  srli         a7, s7, 23
                  sb           a2, 22(s1)
                  sb           s6, -23(s1) #end riscv_load_store_rand_instr_stream_14
                  slt          s4, s7, s4
                  add          s5, s10, ra
                  bltu         s10, t1, 455f
                  nop
                  or           s7, a0, t4
                  sll          t6, t6, a1
                  sra          a3, a5, s2
449:              srl          a7, s0, s9
                  sub          a2, s7, s8
                  sltu         s8, ra, t5
                  srl          zero, a4, t2
                  lui          t4, 880011
                  sll          s10, ra, s4
455:              sltu         s3, s2, a2
                  andi         t4, a1, 30
                  auipc        a4, 998392
                  auipc        a5, 719594
                  slti         a2, a3, 384
                  sll          sp, s10, a5
                  sll          s2, s2, s1
                  bltu         s5, t4, 463f
463:              slti         s6, s1, 24
                  sra          a4, ra, a0
                  beq          a3, gp, 474f
                  sltu         zero, s1, zero
                  sub          s11, s8, zero
                  slt          a7, t2, t0
                  andi         a5, a7, -1199
                  slli         s11, tp, 9
                  sltu         t6, a1, s6
                  bltu         a0, ra, 483f
                  bgeu         a3, t3, 482f
474:              or           t4, s2, a4
                  sltu         a6, t0, s11
                  xor          s9, a2, t3
                  beq          s11, a0, 479f
                  andi         s8, a5, -1799
479:              nop
                  bne          t2, t0, 495f
                  blt          gp, t5, 482f
482:              bne          s6, a2, 492f
483:              blt          a7, s8, 502f
                  sll          zero, s0, sp
                  bge          s3, ra, 491f
                  addi         s1, a4, 1592
                  bge          t5, sp, 492f
                  nop
                  slt          s9, a2, t2
                  nop
491:              beq          s6, t5, 495f
492:              beq          s8, s8, 496f
                  or           tp, gp, a5
                  blt          a7, a2, 500f
495:              sll          t0, s11, sp
                  la           gp, region_1+168 #start riscv_load_store_rand_instr_stream_23
                  lb           sp, -34(gp)
                  addi         sp, a2, 250
                  or           tp, tp, s8
                  sb           a0, 45(gp)
                  lb           s8, -34(gp)
                  auipc        s3, 435564
                  andi         t6, t5, 1724
                  xor          s2, s6, t1
                  sub          s7, t5, t5
                  sh           a2, 32(gp)
                  lb           t0, 37(gp)
                  xori         t6, a4, -1864
                  sb           zero, 50(gp)
                  lb           a2, -33(gp)
                  xori         t6, t6, -279
                  srai         a7, t2, 6
                  lhu          s2, -12(gp)
                  xor          sp, a6, t1
                  lh           s6, 22(gp)
                  slt          a7, t5, a0
                  add          t3, s4, s1
                  sh           zero, -62(gp)
                  andi         ra, a1, 1646
                  lb           a4, -1(gp) #end riscv_load_store_rand_instr_stream_23
496:              srai         s2, t0, 31
                  sll          a4, t0, t1
                  blt          gp, s0, 513f
                  bgeu         t6, a6, 518f
500:              bne          s8, a5, 509f
                  or           s4, a7, t2
502:              srl          sp, a1, t2
                  sub          t0, t6, s5
                  and          a0, a6, a5
                  sltiu        s11, tp, -660
                  lui          a7, 463092
                  slli         s5, s3, 24
                  sltiu        s9, s0, -1743
509:              slli         ra, ra, 25
                  srai         s9, t0, 28
                  xor          s9, a2, a2
                  slt          s2, s1, t3
513:              srli         s2, t2, 18
                  srl          a5, t1, a3
                  slli         t0, t2, 17
                  srl          s6, a6, t5
                  slli         s5, t1, 27
518:              sltu         zero, sp, a0
                  add          tp, t3, sp
                  sltiu        a2, a2, 44
                  bgeu         s7, s7, 532f
                  xori         sp, gp, -1144
                  slt          a5, t1, t1
                  slli         t6, s1, 15
                  or           s1, a6, t1
                  sll          gp, a3, t4
                  bne          t1, gp, 544f
                  slt          sp, s6, a1
                  ori          t6, s0, -434
                  srl          zero, a2, s5
                  andi         t1, a2, 763
532:              addi         a3, s7, 1866
                  slti         zero, s7, 29
                  sltiu        zero, tp, 1228
                  bgeu         s6, zero, 537f
                  xori         s10, s0, -1628
537:              sltu         t1, zero, a2
                  xor          tp, t0, a2
                  sra          t1, t5, a0
                  bgeu         a0, tp, 551f
                  nop
                  beq          s4, s9, 544f
                  slt          s3, a6, s10
544:              blt          s11, t1, 545f
545:              or           s11, t3, a4
                  xori         tp, gp, 998
                  ori          s0, a1, -71
                  bne          a0, s3, 550f
                  or           zero, a5, a3
550:              andi         t1, s3, 81
551:              andi         a2, t2, 542
                  bge          s4, s2, 562f
                  bltu         t6, s11, 571f
                  sltu         a3, t6, sp
                  blt          s8, a0, 564f
                  lui          a0, 65728
                  xor          s3, gp, a4
                  slli         t3, t6, 22
                  slli         t3, t1, 23
                  and          a7, sp, sp
                  xori         t0, t2, 1162
562:              xori         tp, s6, 158
                  blt          s2, a0, 574f
564:              slt          t0, s9, s2
                  ori          s4, t0, -502
                  slt          s7, a6, t3
                  srai         zero, a7, 13
                  nop
                  auipc        s7, 943674
                  srai         s0, s8, 28
571:              lui          a3, 213612
                  bltu         t4, s10, 584f
                  sll          t1, ra, s10
574:              srai         s10, a4, 30
                  blt          t1, s9, 586f
                  nop
                  slti         a4, s0, -834
                  sltiu        t3, s6, -1683
                  slli         a0, s2, 17
                  srl          s6, a5, t6
                  and          s11, s11, s11
                  auipc        s3, 553044
                  nop
584:              slt          a5, t2, a2
                  srai         t3, a7, 2
586:              blt          s3, s9, 588f
                  addi         s10, s7, 2
588:              addi         s8, s7, -1809
                  xor          s3, a5, s6
                  sub          s3, a6, ra
                  srai         t3, a4, 18
                  slt          a7, gp, s4
                  srai         zero, s4, 19
                  sltu         s11, s9, s10
                  blt          a2, a7, 600f
                  sltu         t3, sp, tp
                  sll          a3, s4, s9
                  bne          s8, s9, 599f
599:              xor          a7, s7, s10
600:              nop
                  sltu         a4, a2, gp
                  sub          s11, t6, t5
                  bgeu         s2, a5, 606f
                  slli         s4, a5, 14
                  slt          s3, t1, t0
606:              sra          t0, t2, s8
                  sltu         t0, s0, a0
                  blt          s8, s6, 621f
                  andi         s0, t4, 1390
                  beq          ra, gp, 615f
                  xor          s0, a7, s8
                  slt          t4, s10, t0
                  slt          t3, a6, a5
                  and          s3, s9, sp
615:              ori          a5, ra, -863
                  slt          tp, t0, s9
                  sra          s2, s3, s3
                  xor          a3, t0, t4
                  sra          s5, s3, a7
                  and          a4, s3, s1
                  add          s8, a2, zero
                  or           a6, a6, t3
                  ori          a0, t4, 144
                  nop
                  sll          zero, a0, ra
                  beq          s6, s8, sub_6_j9 #branch to jump instr
                  or           s10, s8, a0
                  sltu         a3, s5, a2
sub_6_j9:         jal          t1, sub_8 #jump sub_6 -> sub_8
                  slli         sp, s1, 11
                  sltu         a6, s4, a6
                  srl          sp, t6, s11
621:              auipc        zero, 245984
                  slti         t4, s2, -931
                  sll          ra, s4, a0
                  srli         a3, a5, 30
                  lui          sp, 936668
                  addi         s9, t6, 456
                  bltu         s7, s11, 646f
                  slti         t6, ra, 97
                  addi         s8, t3, -125
                  slti         a3, a6, -1151
                  and          a4, t1, s8
                  andi         s3, t5, -661
                  or           s9, a0, a7
                  nop
                  bge          s8, t1, 654f
                  sll          sp, s2, s11
                  sltu         s7, zero, a6
                  srl          a3, a4, a6
                  and          s1, s1, t5
                  srli         ra, s0, 25
                  or           s5, ra, a3
                  andi         t1, ra, -1530
                  or           t3, s7, t5
                  ori          gp, a1, 803
                  bgeu         s5, t0, 661f
646:              beq          s5, t6, 657f
                  xori         s3, s9, -156
                  sltu         s1, s9, a1
                  xori         zero, sp, 2032
                  nop
                  bge          a7, a2, 652f
652:              sra          t3, t2, s1
                  sub          tp, t4, s5
654:              auipc        s6, 179346
                  or           s0, t1, tp
                  ori          s9, s5, -601
657:              srli         t6, a0, 17
                  sltiu        s8, s11, -1501
                  or           s9, s6, s11
                  ori          s0, a5, -361
661:              addi         s2, gp, 850
                  slt          s6, t6, a5
                  andi         s1, ra, 27
                  or           a2, s11, t0
                  xor          s3, t2, a2
                  sll          a6, s4, s5
                  bgeu         a0, s0, 672f
                  slt          a4, a3, tp
                  sltiu        s3, s10, 1810
                  bgeu         a4, a3, 671f
671:              addi         t6, a3, -1788
672:              sltiu        tp, s6, 113
                  andi         s10, a0, 1413
                  srli         a6, a3, 23
                  add          a5, s3, a6
                  slti         s4, t1, -480
                  ori          s7, t0, -908
                  ori          ra, s2, -1807
                  sltiu        ra, t0, 1660
                  srli         t4, sp, 5
                  lui          s0, 886352
                  blt          s2, a4, 691f
                  sll          s10, t0, s5
                  srai         s3, a5, 13
                  sltu         a0, t3, s8
                  bgeu         sp, a2, 688f
                  xori         tp, a0, 994
688:              nop
                  xori         a7, a7, -509
                  and          gp, a5, a0
691:              ori          s9, s8, 1810
                  nop
                  srli         s6, gp, 7
                  blt          t5, t6, 705f
                  nop
                  or           a0, t3, a0
                  sltiu        s2, t5, 1683
                  srai         a3, a5, 14
                  srli         t1, a4, 22
                  nop
                  bne          gp, a1, 714f
                  blt          t1, t3, 721f
                  sltu         a7, s6, a5
                  sltu         a6, a1, tp
705:              bltu         sp, t6, 709f
                  andi         s9, gp, -530
                  srl          s10, a2, t1
                  srai         a2, a5, 10
709:              xor          s7, s0, a5
                  slt          s7, a0, a3
                  slt          s9, t4, t1
                  ori          t0, a3, -140
                  beq          sp, t1, 716f
714:              sll          a0, s11, t5
                  or           sp, a5, a6
716:              bge          a6, t4, 727f
                  sltu         tp, a4, a1
                  beq          s2, ra, 730f
                  nop
                  slli         zero, s6, 24
721:              or           a4, a2, s7
                  add          tp, t3, a4
                  bne          a4, s8, 725f
                  beq          s0, s0, 742f
725:              xori         a0, t6, -1485
                  ori          s8, s5, 1128
727:              lui          a0, 757986
                  xor          a4, s9, t3
                  addi         s4, sp, 412
730:              nop
                  slli         a0, a2, 21
                  blt          tp, t1, 733f
733:              and          a6, s10, a6
                  srai         a0, s7, 1
                  ori          a4, s8, 1263
                  bge          t6, s7, 751f
                  sub          s2, ra, s9
                  and          zero, s2, s3
                  addi         a7, sp, 367
                  sub          t6, t2, s8
                  or           a3, s7, s3
742:              xori         s9, s6, 332
                  srli         s3, s0, 24
                  auipc        sp, 477557
                  nop
                  and          s0, t2, s9
                  xori         a3, zero, -1063
                  ori          s1, a3, 772
                  srai         zero, sp, 31
                  nop
751:              ori          zero, zero, 1405
                  add          s9, s2, s11
                  blt          s2, a7, 772f
                  slli         a2, s3, 25
                  auipc        gp, 419528
                  sra          t1, t4, a6
                  sra          s2, t4, a1
                  lui          a3, 611530
                  add          s11, s2, ra
                  andi         t0, t6, 2000
                  or           s11, s8, tp
                  srli         t1, t5, 21
                  auipc        a2, 229161
                  nop
                  sltu         a0, s3, s9
                  slli         a6, s8, 7
                  xori         ra, s6, -1433
                  lui          sp, 14356
                  blt          s0, a7, 773f
                  sltu         gp, s8, s7
                  xori         s0, s8, -683
772:              srai         s3, t3, 27
773:              ori          s5, s4, -606
                  nop
                  bltu         a6, s9, 791f
                  auipc        s1, 619450
                  sub          s0, a3, a4
                  bltu         zero, a4, 788f
                  bne          t2, tp, 798f
                  sll          s2, ra, t2
                  srai         a3, s11, 11
                  srli         t1, s4, 31
                  slt          zero, t6, s5
                  sll          a4, t2, s8
                  xor          s3, s0, t2
                  srli         t1, t6, 19
                  or           t4, gp, s8
788:              srl          tp, s11, s5
                  sltu         t6, a1, a0
                  nop
791:              andi         a4, s7, -599
                  andi         tp, a0, -10
                  sub          a3, s8, s0
                  sltiu        a5, a1, 1230
                  xori         s11, a1, 355
                  blt          a4, s6, 798f
                  bge          a1, t5, 808f
798:              bge          sp, a5, 804f
                  xor          s8, t0, a4
                  sltiu        s4, s8, 1899
                  sra          a7, s2, t4
                  bne          a5, s9, 807f
                  sll          s5, a4, zero
                  auipc        s11, 871870
                  srl          sp, s3, t1
                  la           s6, sub_8
                  slli         a0, ra, 0
                  lui          a5, 371339
                  auipc        s5, 72141
                  and          zero, s9, s2
                  sll          a3, t6, tp
                  add          gp, t5, a6
                  addi         s6, s6, -247
                  slti         s5, s0, 153
sub_6_j10:        jalr         t1, s6, 248 #jump sub_6 -> sub_8
804:              bne          s6, s4, 815f
                  and          s0, ra, s8
                  beq          s5, s8, 807f
807:              sub          a4, zero, s5
808:              srli         gp, a6, 7
                  and          s5, t2, a3
                  slt          s2, s7, a2
                  lui          sp, 829985
                  slli         s7, s5, 9
                  lui          a7, 72707
                  bltu         ra, a0, 816f
815:              blt          s6, s4, 824f
816:              bltu         s4, a2, 833f
                  add          s4, a7, s3
                  nop
                  bltu         s5, t4, 830f
                  sub          a0, s6, s9
                  bltu         s6, s0, 826f
                  sub          gp, s4, s0
                  bltu         a0, s0, 827f
824:              slli         s11, s1, 12
                  xori         t6, t4, 87
826:              blt          s5, a6, 830f
827:              bgeu         t2, t6, 840f
                  bltu         s4, gp, 830f
                  auipc        gp, 44426
830:              srl          s9, a3, s7
                  srli         s6, t1, 3
                  slli         a5, t6, 14
833:              nop
                  lui          s2, 646903
                  bge          a6, s9, 838f
                  xori         a6, s1, -1886
                  and          a6, s7, s2
838:              sll          s7, t6, zero
                  sltu         s2, t5, s5
840:              xor          s0, t5, t4
                  or           s1, s10, s3
                  andi         t3, s10, -1856
                  xor          t6, s10, sp
                  bge          sp, s9, 855f
                  slli         s1, t4, 27
                  slti         t6, a3, 106
                  andi         s6, a5, 578
                  srl          s6, s8, s2
                  srai         s7, t6, 10
                  sltu         s1, a0, ra
                  bge          t1, a4, 861f
                  sltu         sp, a5, s8
                  beq          t1, t5, 868f
                  add          t4, t4, a1
855:              slt          s8, t4, s8
                  auipc        s5, 958769
                  sra          tp, t0, t1
                  xori         s9, a1, 687
                  sll          a2, s0, s10
                  add          s3, t0, s10
861:              srai         tp, a3, 28
                  auipc        t6, 280597
                  slt          s11, a3, t0
                  srl          tp, a0, t1
                  bgeu         s2, s5, 866f
866:              srli         t0, sp, 19
                  sltu         t3, zero, s7
868:              and          a7, s7, a4
                  srl          a0, s9, t0
                  sub          sp, s4, a2
                  beq          tp, t4, 876f
                  slt          t0, a4, s5
                  add          a4, t0, s7
                  srli         s7, s6, 0
                  slli         gp, s0, 3
876:              slt          t3, s3, s5
                  xor          sp, a5, a7
                  slt          t0, sp, a0
                  andi         a3, s6, -230
                  addi         s10, t0, 185
                  beq          s0, t5, 890f
                  slt          t4, a7, a4
                  slt          s5, s4, a0
                  xor          s8, t0, s10
                  lui          a5, 783637
                  srai         s0, s2, 14
                  sltu         s0, a6, t6
                  sltu         s0, s4, s11
                  bltu         a1, s11, 900f
890:              xori         a3, s2, 1249
                  sltu         s6, sp, s9
                  auipc        s11, 139378
                  ori          s2, t3, -978
                  bge          a5, a7, 895f
895:              auipc        ra, 212495
                  andi         s2, a0, -1096
                  beq          t5, t1, 908f
                  nop
                  lui          t1, 262266
900:              sub          s10, s5, s9
                  slt          gp, t0, a6
                  slti         s5, t4, -450
                  bltu         s10, gp, 922f
                  slti         s6, s11, 140
                  sll          s8, s1, s7
                  nop
                  or           a7, s0, s5
908:              slt          a3, s3, s7
                  slti         gp, a2, 1344
                  bge          a0, s11, 927f
                  addi         s0, a4, 1080
                  blt          zero, s7, 914f
                  srl          s7, sp, a6
914:              nop
                  sub          a4, sp, ra
                  beq          t5, gp, 934f
                  nop
                  srai         t0, t3, 18
                  srai         t0, t2, 26
                  sra          a7, a2, s0
                  auipc        a0, 963381
922:              ori          s9, t6, 1404
                  slti         s6, a6, 456
                  sltiu        s0, t6, 1127
                  and          a3, t3, s4
                  bgeu         s10, a2, 937f
927:              srai         sp, gp, 15
                  auipc        s6, 767435
                  srl          s5, a1, zero
                  slt          t0, tp, s2
                  sra          t6, s1, a7
                  sub          t4, a1, a4
                  slt          gp, a2, t4
934:              or           a7, a7, zero
                  slt          a4, a1, sp
                  slti         t6, s1, 1350
937:              slli         s3, s6, 3
                  lui          s5, 108732
                  slli         s9, a1, 21
                  bne          s2, gp, 942f
                  bgeu         s5, s11, 953f
942:              bgeu         s8, s5, 953f
                  bltu         t3, a6, 944f
944:              ori          s1, t3, 1850
                  andi         tp, s3, -1162
                  and          t1, a1, t5
                  auipc        a0, 442758
                  and          s5, s1, t3
                  srl          s11, s9, s7
                  slt          s7, sp, ra
                  bne          zero, a3, 970f
                  slli         a2, zero, 22
953:              slti         sp, tp, -1383
                  add          gp, s1, a1
                  srli         a6, t3, 18
                  bge          s8, t5, 958f
                  xori         t3, gp, -849
958:              bgeu         t3, s2, 964f
                  auipc        tp, 300082
                  and          a7, a5, s2
                  auipc        s11, 598791
                  sub          s0, a6, s7
                  bge          a7, s9, 972f
964:              beq          t4, s4, 983f
                  slt          gp, a6, gp
                  slli         sp, t1, 11
                  bltu         sp, a1, 983f
                  nop
                  slli         t0, s4, 14
970:              bne          s4, t6, 981f
                  add          t1, t0, a5
972:              bgeu         sp, a0, 973f
973:              bgeu         ra, zero, 984f
                  ori          a5, ra, -1702
                  and          s8, s11, t3
                  bne          t6, a0, 977f
977:              blt          zero, a7, 979f
                  xori         a7, a1, 1858
979:              addi         s7, t4, -1332
                  nop
981:              srli         t4, a1, 4
                  bltu         s1, t3, 986f
983:              sltu         s7, gp, s6
984:              srli         s10, zero, 3
                  sll          s6, s11, a1
986:              nop
                  add          a6, t6, s6
                  slt          s10, t4, s10
                  sra          a6, ra, t0
                  sltu         t3, t4, s9
                  auipc        t1, 97538
                  slti         t3, a6, -316
                  xori         s8, s1, -358
                  slt          s7, t3, t3
                  lui          a5, 16150
                  srl          t0, s11, s6
                  or           t0, zero, s4
                  sub          a6, tp, sp
                  addi         t1, t2, -993
                  blt          s5, a6, 1009f
                  add          s5, t1, s4
                  sltiu        s5, sp, -1925
                  sll          a6, ra, sp
                  beq          s9, s7, 1007f
                  nop
                  bge          t1, s11, 1008f
1007:             andi         a6, s3, -684
1008:             auipc        s1, 431203
1009:             auipc        ra, 185048
                  bltu         a6, a0, 1019f
                  sltu         ra, a7, t5
                  auipc        s8, 1035424
                  addi         s7, ra, -1481
                  sub          s0, s1, t0
                  nop
                  and          t0, a3, s10
                  sub          s4, t3, a2
                  auipc        s3, 73856
1019:             nop
                  sra          s11, ra, t2
                  xori         a4, sp, -1156
                  and          t3, s8, s2
                  bgeu         t1, s3, 1034f
                  sra          s4, s8, s3
                  sub          a2, t1, gp
                  bgeu         t5, gp, 1043f
                  add          t4, s0, a7
                  srl          s3, a3, a6
                  bne          t5, a0, 1030f
1030:             auipc        a0, 427503
                  xori         a5, a7, -246
                  add          sp, s11, s6
                  beq          a5, s6, 1046f
1034:             sll          sp, s0, t1
                  and          s10, sp, t3
                  sll          s1, t6, sp
                  xori         t3, t6, -1832
                  srai         s10, a0, 17
                  xor          s2, s6, s1
                  srli         s9, s7, 13
                  auipc        t6, 68966
                  slt          a6, s9, s5
1043:             srai         s3, ra, 31
                  sltu         s5, s6, tp
                  andi         s10, zero, -1140
1046:             lui          s6, 247780
                  addi         a3, s6, -1698
                  bgeu         t2, a0, 1067f
                  add          s10, s6, s10
                  slt          a4, ra, s6
                  add          s10, s4, t3
                  auipc        s5, 793706
                  ori          t6, t3, -831
                  add          s0, a2, sp
                  srai         s9, zero, 29
                  or           t1, s10, ra
                  xor          s5, s0, zero
                  ori          s11, a1, 1092
                  or           a3, a2, a6
                  bgeu         a5, s1, 1065f
                  andi         s8, s8, 1182
                  bne          s10, a2, 1081f
                  xor          gp, s7, s11
                  srai         s11, ra, 28
1065:             add          a0, a4, zero
                  auipc        a2, 846661
1067:             addi         s0, s3, -1624
                  andi         a3, t4, 17
                  slli         s6, t3, 10
                  auipc        s11, 67880
                  andi         t4, a0, 304
                  slti         ra, gp, 778
                  srli         s0, a7, 20
                  auipc        s2, 551173
                  slt          t4, s5, sp
                  addi         t6, t4, 586
                  ori          s4, s5, -1776
                  bgeu         s4, s5, 1096f
                  addi         a5, a5, -123
                  or           s10, t0, a1
1081:             andi         s3, s2, 1729
                  or           tp, tp, gp
                  xori         s10, s9, -2015
                  addi         a0, s9, -161
                  lui          a5, 282620
                  srai         s10, s8, 29
                  srai         a4, tp, 8
                  sll          t3, s11, t1
                  ori          s6, ra, 1008
                  or           tp, s9, s5
                  bltu         t1, s6, 1106f
                  add          zero, a4, s3
                  slt          a5, a4, s7
                  slt          s11, a7, a2
                  or           t3, s11, s6
1096:             sltu         s11, a0, s7
                  slli         t6, a5, 27
                  slti         t0, s7, -1504
                  andi         s6, s5, 1175
                  slli         sp, t3, 4
                  srli         a4, gp, 13
                  bgeu         s5, sp, 1106f
                  sltiu        a2, t3, -1865
                  andi         s0, s10, -642
                  addi         t4, a4, 14
1106:             xor          a0, sp, t2
                  srl          t4, s5, s11
                  lui          t6, 734076
                  xori         s7, a4, 435
                  slt          a7, t2, s3
                  srl          a3, a3, a4
                  lui          t1, 731541
                  sltu         s10, a1, t0
                  srai         gp, s2, 24
                  srai         a6, s5, 23
                  srai         t0, sp, 30
                  bge          s5, s11, 1122f
                  sub          t6, a5, s5
                  sra          a6, s4, tp
                  andi         s11, s3, -1219
                  bne          s4, sp, 1127f
1122:             lui          t6, 170465
                  bltu         t6, t1, 1125f
                  srli         t3, a3, 27
1125:             auipc        zero, 1047200
                  auipc        gp, 784270
1127:             xor          tp, a5, a3
                  sra          s8, a7, a5
                  srl          s0, t5, s2
                  addi         s2, s4, 750
                  bge          s11, a3, 1143f
                  srl          s2, s9, a5
                  addi         t0, zero, 178
                  sltiu        s11, t2, 203
                  bne          zero, s11, 1145f
                  slli         sp, s7, 27
                  sra          t4, a0, s7
                  beq          a0, t3, 1149f
                  ori          s6, a6, 1497
                  xor          a4, s11, a4
                  add          zero, a0, ra
                  bne          s10, t1, 1153f
1143:             ori          s9, sp, -1305
                  ori          s11, a6, -861
1145:             ori          a4, t6, 1124
                  and          s9, t1, sp
                  lui          ra, 771174
                  bgeu         a1, s0, 1167f
1149:             bgeu         a2, gp, 1165f
                  beq          ra, a1, 1152f
                  slti         tp, s10, 422
1152:             bltu         s10, s5, 1154f
1153:             sll          s3, t1, a4
1154:             srai         a0, a2, 12
                  sra          a3, a6, a2
                  xor          tp, t4, s1
                  lui          s4, 826238
                  ori          s1, s9, -1663
                  sltu         s1, t2, s2
                  bge          s8, a5, 1178f
                  slti         a4, a3, 1102
                  xori         s0, ra, -27
                  bltu         gp, t4, 1172f
                  xor          s3, a3, t0
1165:             add          s4, zero, t3
                  andi         s9, t2, -235
1167:             sra          gp, s1, s2
                  bge          a1, s0, 1171f
                  addi         gp, a5, 856
                  srli         t3, a6, 21
1171:             srli         a7, t3, 30
1172:             slt          s1, t3, s0
                  srli         t6, zero, 15
                  bne          gp, t1, 1190f
                  srli         tp, gp, 15
                  slli         a0, s4, 23
                  sll          t0, s0, a1
1178:             sltiu        s0, s8, 699
                  auipc        s4, 569459
                  bgeu         sp, ra, 1189f
                  or           gp, a7, s6
                  beq          t2, s2, 1201f
                  srli         gp, s5, 17
                  srai         sp, t1, 15
                  slt          sp, ra, t5
                  slti         t3, t1, -1179
                  blt          t2, t2, 1198f
                  bne          s6, s5, 1190f
1189:             bne          s7, a3, 1190f
1190:             bltu         t6, a3, 1192f
                  blt          s11, a5, 1203f
1192:             or           ra, a4, s10
                  slti         a2, t5, 1247
                  auipc        s0, 211862
                  srai         s7, a4, 3
                  andi         zero, s5, -292
                  sltu         gp, t0, t0
1198:             bltu         a1, t6, 1199f
1199:             srl          s1, sp, t3
                  xor          a7, s1, s11
1201:             or           zero, a0, s0
                  srai         a3, s6, 4
1203:             srli         a6, s0, 1
                  xor          a0, t1, tp
                  sll          s6, a1, s10
                  beq          a5, a4, 1219f
                  srai         s1, a0, 27
                  auipc        s6, 562771
                  bge          a3, s2, 1228f
                  addi         ra, t5, 181
                  xori         t6, tp, -427
                  beq          s9, sp, 1223f
                  srli         s5, gp, 15
                  sra          s1, s7, s9
                  addi         s9, t2, 11
                  sra          s3, a2, t4
                  lui          a5, 145490
                  and          ra, t6, s11
1219:             sub          zero, t0, s7
                  sub          a2, a0, t2
                  beq          a0, s9, 1227f
                  slt          zero, tp, a1
1223:             srai         s2, t1, 19
                  slli         tp, s3, 12
                  add          a2, t1, tp
                  srai         t1, s5, 6
1227:             srai         t4, s2, 31
1228:             nop
                  sltu         s11, gp, s5
                  bgeu         ra, s5, 1249f
                  or           t1, zero, s7
                  addi         a6, a2, 1030
                  blt          t3, gp, 1238f
                  xori         s4, t3, 1609
                  and          a2, s7, s3
                  slt          s7, s11, s2
                  srl          s10, a0, s1
1238:             sltu         s7, zero, t5
                  slt          gp, t5, a0
                  add          s2, a5, s10
                  srl          t0, s8, t0
                  slli         s9, ra, 19
                  sra          s0, s5, ra
                  or           gp, t4, t3
                  add          a2, a7, s10
                  slt          s8, a1, s4
                  slt          t0, s4, s5
                  sltiu        a3, t1, -773
1249:             xori         t4, s3, 1051
                  xori         s3, s10, -108
                  srai         s1, a5, 27
                  ori          s7, a6, -1465
                  slti         s10, t2, 62
                  nop
                  xor          s2, s0, a2
                  slt          t4, sp, ra
                  bge          t6, zero, 1258f
1258:             add          t6, s8, t2
                  nop
                  auipc        s9, 322484
                  slt          a5, ra, s5
                  sra          s8, s10, t5
                  sub          sp, t3, a0
                  add          a6, tp, s9
                  srai         s11, tp, 20
                  addi         s9, t0, -1721
                  addi         a7, s8, -1329
                  andi         a5, s6, -955
                  blt          t2, t6, 1286f
                  add          a7, a3, a0
                  sub          gp, t4, a7
                  sltiu        s11, sp, 51
                  andi         a7, s4, -859
                  sll          t4, t0, sp
                  bltu         s2, s2, 1285f
                  beq          a5, s2, 1280f
                  slt          a6, a6, a1
                  slt          sp, s8, gp
                  xori         a6, s0, -1953
1280:             or           a4, a3, tp
                  add          t3, s7, tp
                  srai         s7, t5, 0
                  sltiu        s7, s2, 191
                  srl          a6, t4, s0
1285:             xori         a2, s7, -2045
1286:             blt          s7, s0, 1297f
                  xor          a7, s8, a7
                  bne          ra, t5, 1303f
                  bne          s7, s11, 1300f
                  srli         a6, a4, 11
                  bgeu         s4, t6, 1296f
                  sltiu        t4, t1, 1681
                  xori         a2, a5, 1323
                  addi         s5, t4, 1048
                  xori         a3, a2, -1210
1296:             nop
1297:             srl          a2, a0, s1
                  nop
                  sub          s2, s2, t3
1300:             sltu         a6, s3, a3
                  bne          s5, t6, 1303f
                  andi         s11, t5, 1371
1303:             blt          t6, a7, 1314f
                  bge          a5, sp, 1308f
                  slli         s1, t1, 20
                  add          t3, s7, a3
                  xori         s6, s7, -496
1308:             srl          a5, s10, t2
                  andi         zero, s3, -1951
                  sub          t3, s11, s10
                  bltu         a6, s10, 1313f
                  sltiu        s8, a6, 1639
1313:             and          s11, s7, gp
1314:             srl          t1, s1, a5
                  slli         t6, s0, 19
                  add          a4, t4, zero
                  slt          a0, t2, gp
                  nop
                  srai         s7, t3, 2
                  slt          s9, sp, t6
                  slt          a2, a5, t5
                  slli         s9, s7, 22
                  lui          s6, 630819
                  xor          tp, s8, a5
                  slti         t4, t5, 561
                  sltiu        sp, s1, -255
                  srai         zero, t0, 17
                  bne          s1, s7, 1344f
                  xori         s11, a4, 259
                  bgeu         tp, s0, 1335f
                  blt          s7, sp, 1337f
                  sltiu        s0, s8, -1549
                  sll          a2, t4, a0
                  slli         s5, a3, 17
1335:             ori          s8, t6, -620
                  bltu         a2, a0, 1337f
1337:             slli         a7, a3, 22
                  slli         s7, t1, 25
                  and          s10, t4, s11
                  addi         s4, a6, 1765
                  andi         s3, s5, -783
                  slti         s1, s8, 1508
                  ori          s8, t1, -679
1344:             bge          t1, t5, 1348f
                  srl          a6, t0, s7
                  andi         t1, t1, 1077
                  addi         zero, t1, 424
1348:             blt          a0, s5, 1366f
                  sub          tp, s7, s7
                  bge          t2, gp, 1352f
                  addi         a7, s9, -493
1352:             beq          s0, sp, 1361f
                  sra          a6, s11, a6
                  sub          s7, s0, s2
                  beq          t6, t6, 1356f
1356:             bge          a3, s4, 1358f
                  blt          t1, s3, 1368f
1358:             xori         s7, a1, -863
                  beq          s4, a6, 1370f
                  xor          s1, t5, s1
1361:             ori          s8, s0, 706
                  sll          s9, s3, s9
                  slli         zero, s4, 14
                  auipc        a7, 526035
                  slli         a4, s3, 24
1366:             bge          gp, t5, 1379f
                  bltu         s0, a2, 1377f
1368:             auipc        zero, 393781
                  sub          a5, t5, t2
1370:             auipc        sp, 680201
                  bne          a1, s0, 1372f
1372:             addi         t0, t2, 737
                  bgeu         s9, a1, 1392f
                  beq          s6, a2, 1386f
                  xor          s11, tp, t1
                  addi         ra, t4, 445
1377:             slli         t6, s8, 3
                  slli         a7, zero, 19
1379:             blt          s5, t6, 1383f
                  xori         tp, t1, -509
                  bne          s6, s10, 1400f
                  slt          s2, a0, a4
1383:             addi         a5, t0, -320
                  sltiu        t1, tp, -1955
                  and          a4, s6, t1
1386:             beq          a7, t2, 1405f
                  bge          s0, a6, 1398f
                  sll          t4, a5, t0
                  xor          s10, s11, s3
                  ori          a3, sp, 1085
                  add          sp, a2, s7
1392:             sub          s0, t0, s8
                  add          a7, tp, ra
                  bge          s7, t4, 1405f
                  andi         t4, s1, 1144
                  slti         s4, a3, -998
                  auipc        tp, 850314
1398:             slli         a0, a3, 24
                  blt          s3, a3, 1402f
1400:             xori         s11, t4, -164
                  beq          t6, s10, 1406f
1402:             sub          t0, t1, t2
                  ori          t3, s3, -283
                  srli         t0, a0, 3
1405:             sra          t4, gp, s9
1406:             bgeu         s4, s7, 1423f
                  andi         t1, s1, -1487
                  sub          a6, t3, s3
                  xor          a3, a1, a1
                  nop
                  sra          a6, t0, a0
                  andi         s0, s9, 410
                  xori         a6, s10, 294
                  sub          s3, t5, s7
                  bne          gp, a7, 1426f
                  xori         s2, a6, -1572
                  blt          s5, s2, 1419f
                  or           s11, s11, s11
1419:             beq          s3, t6, 1428f
                  slti         s7, ra, 357
                  blt          a4, s2, 1436f
                  bgeu         a3, s9, 1427f
1423:             sltu         zero, a6, a0
                  addi         a3, s5, 1176
                  bge          a6, s5, 1428f
1426:             srli         a6, a5, 28
1427:             blt          s0, sp, 1438f
1428:             ori          s10, a7, 1461
                  addi         t4, a6, 11
                  blt          t2, s7, 1431f
1431:             sltu         s2, a7, t1
                  srli         s1, a1, 15
                  slt          s7, s7, t6
                  xor          a6, s8, tp
                  slt          t1, s5, zero
1436:             bne          a2, t1, 1438f
                  sll          s1, a5, a1
1438:             sra          ra, zero, s6
                  bge          tp, t2, 1450f
                  slli         ra, t4, 21
                  bltu         s6, a0, 1452f
                  auipc        s4, 588546
                  beq          ra, t5, 1462f
                  andi         s3, s6, -1448
                  xor          s9, s5, a7
                  addi         a6, s0, -491
                  sra          s0, s2, a7
                  bltu         a3, s0, 1450f
                  slli         s0, s7, 20
1450:             bne          t0, s4, 1452f
                  auipc        a7, 448123
1452:             andi         s1, sp, 1201
                  bltu         ra, s7, 1463f
                  and          a5, a7, a6
                  auipc        t1, 629345
                  ori          s10, s11, 1215
                  bgeu         a7, gp, 1470f
                  xori         s5, s10, 1980
                  and          sp, a1, s9
                  bge          s9, s7, 1461f
1461:             sltu         s1, a3, s4
1462:             sub          s2, a1, s4
1463:             bltu         t4, t5, 1468f
                  andi         s2, t3, -436
                  beq          a6, a0, 1474f
                  nop
                  bge          a5, s4, 1479f
1468:             sub          tp, s6, s6
                  slli         sp, s11, 20
1470:             beq          s8, s7, 1489f
                  andi         s1, s8, 872
                  add          s0, a2, s7
                  lui          ra, 243320
1474:             lui          s2, 78857
                  bne          zero, s7, 1476f
1476:             add          s7, a1, a0
                  sub          a0, a6, t0
                  sll          gp, s0, t0
1479:             sra          s3, a7, a4
                  or           t4, t5, s6
                  bne          t2, t1, 1485f
                  bltu         t5, a3, 1486f
                  sll          t0, t0, s0
                  ori          s1, a6, -1550
1485:             or           s7, t3, s3
1486:             srl          a7, s4, s9
                  bltu         a5, s7, 1496f
                  sll          t1, t3, t0
1489:             ori          t3, a5, 1387
                  srl          a0, s10, sp
                  andi         s4, a4, -668
                  auipc        s6, 194246
                  bltu         s9, t0, 1508f
                  sll          t1, gp, s2
                  ori          s4, t6, 1556
1496:             blt          s11, t6, 1513f
                  slti         s1, a7, 1626
                  slti         t6, t4, 1845
                  andi         s8, s9, 378
                  slli         s3, s9, 21
                  bge          t5, s1, 1507f
                  blt          a7, s8, 1504f
                  and          t1, s10, a4
1504:             bltu         s10, t4, 1523f
                  srai         a2, s2, 16
                  and          a2, t0, a2
1507:             bltu         s11, s1, 1525f
1508:             srl          s5, t5, a0
                  bne          s2, sp, 1520f
                  srl          s10, s8, t5
                  slli         s2, t2, 7
                  sltu         a5, a2, s4
1513:             blt          s11, zero, 1529f
                  add          t0, s6, t2
                  add          a4, a1, tp
                  srli         a4, zero, 28
                  blt          ra, t1, 1528f
                  ori          a6, a5, 22
                  bne          t2, a5, 1521f
1520:             sltiu        a5, sp, 1956
1521:             xori         s11, a2, -498
                  lui          s2, 706942
1523:             srli         t0, s2, 13
                  nop
1525:             and          a5, t6, a2
                  slli         a5, a4, 28
                  ori          s0, s6, -1536
1528:             auipc        ra, 914478
1529:             nop
                  sra          s3, gp, a4
                  lui          a5, 382969
                  slti         s2, t2, 918
                  bge          zero, s0, 1549f
                  slli         sp, a6, 13
                  ori          a4, a3, -757
                  slli         a3, a2, 22
                  bgeu         a2, s3, 1543f
                  sll          a3, s11, s8
                  sltiu        s8, s1, -2035
                  sra          a4, s3, a2
                  or           s7, s7, s10
                  bltu         s2, a4, 1544f
1543:             bge          s8, t0, 1560f
1544:             slt          a3, a4, sp
                  sltiu        zero, t6, 60
                  nop
                  xori         ra, s1, -588
                  ori          s9, s1, -684
1549:             xori         a3, s6, -777
                  bge          a2, tp, 1565f
                  blt          a2, tp, 1570f
                  bge          a6, sp, 1553f
1553:             blt          gp, s9, 1555f
                  blt          a1, t1, 1558f
1555:             sub          t1, t1, s11
                  srai         s2, a0, 2
                  bltu         a1, t3, 1561f
1558:             sra          t6, s6, t3
                  add          zero, s4, s2
1560:             sub          s7, t1, s5
1561:             xor          a5, sp, s4
                  slli         s7, s11, 26
                  xor          t6, s11, s7
                  and          t4, s11, t6
1565:             bltu         t6, a1, 1570f
                  sltu         a4, a6, s1
                  sll          s0, s11, zero
                  blt          s11, a5, 1579f
                  sub          a7, a5, a4
1570:             sltiu        gp, s7, 1028
                  or           sp, s3, s1
                  sltiu        t6, a6, -1277
                  sub          t4, a2, gp
                  srl          s11, s6, s2
                  or           a4, a5, a5
                  bne          s10, t5, 1587f
                  andi         sp, t1, -1855
                  andi         t0, t2, -646
1579:             ori          t3, zero, 1837
                  beq          sp, a7, 1592f
                  and          a2, sp, t4
                  bge          s8, a0, 1587f
                  sub          a2, s8, a7
                  srli         s10, a5, 19
                  slti         s6, a2, -4
                  or           a3, tp, s4
1587:             auipc        a2, 232966
                  lui          a2, 925477
                  andi         s2, t0, 802
                  bne          s5, a1, 1601f
                  xor          s2, s4, s5
1592:             slt          ra, s5, a1
                  xori         t1, gp, -1604
                  nop
                  addi         s2, s10, 1616
                  srai         a4, s4, 29
                  xori         gp, a5, -602
                  srai         t3, s3, 0
                  xori         a4, t4, -907
                  sll          s9, a2, t1
1601:             andi         a6, t6, 390
                  sltu         t3, a0, s1
                  ori          s0, a2, 1169
                  bgeu         s1, a1, 1605f
1605:             bltu         a0, s2, 1624f
                  srl          s3, a7, zero
                  sll          s7, s11, t3
                  srai         s8, a1, 8
                  add          a4, s1, t3
                  nop
                  bne          t3, a4, 1622f
                  nop
                  srli         t4, a1, 9
                  slli         s11, t3, 2
                  sub          s9, a4, t3
                  sltu         a2, t2, t5
                  srai         s3, a0, 23
                  nop
                  srai         a3, s9, 30
                  xori         tp, tp, 1331
                  srli         s8, gp, 6
1622:             lui          s11, 190118
                  bge          a6, a1, 1641f
1624:             blt          a2, s6, 1633f
                  and          s6, s3, s0
                  srl          zero, a0, s6
                  blt          a6, a4, 1638f
                  sll          s10, t2, s2
                  xor          a7, a5, s11
                  bltu         t1, a5, 1649f
                  xori         a5, a1, -1748
                  slti         tp, s2, -1450
1633:             or           s4, t4, a0
                  auipc        t6, 1012938
                  ori          t4, a4, 1529
                  sll          s5, a6, t1
                  xori         t4, t6, -1235
1638:             slli         a3, s3, 6
                  nop
                  sra          s10, s1, t0
1641:             blt          s5, t4, 1642f
1642:             nop
                  slli         t3, t3, 25
                  nop
                  bltu         t0, t1, 1654f
                  srl          s3, s7, a4
                  slt          s4, a4, a4
                  or           gp, a0, s8
1649:             slt          a5, s11, t6
                  sra          a5, t0, a4
                  and          t1, s3, s8
                  sra          t3, s9, t6
                  srai         s4, t1, 30
1654:             ori          s11, s7, -1331
                  bltu         s3, a0, 1657f
                  sltiu        a2, a0, -274
1657:             xori         s5, sp, 252
                  xori         s1, t5, -1307
                  sltu         t0, s6, a2
                  xor          gp, s5, a3
                  bne          t4, s4, 1664f
                  andi         s10, a2, 922
                  srli         a4, s7, 30
1664:             slt          a6, tp, a7
                  bgeu         s0, s4, 1678f
                  bne          t5, s2, 1676f
                  xor          a7, a2, t2
                  sltiu        gp, s6, 707
                  addi         s9, t2, 1768
                  sll          s3, t1, a0
                  sll          s10, s8, sp
                  bne          s10, t2, 1685f
                  and          a4, s5, a1
                  srl          s9, s8, t5
                  nop
1676:             sra          s10, a7, a4
                  srai         s11, s0, 9
1678:             sub          a3, s11, a5
                  xor          a4, a4, a1
                  andi         tp, t4, 1215
                  add          s1, a3, tp
                  srl          a0, s5, s5
                  addi         zero, s3, -706
                  bgeu         s6, s0, 1686f
1685:             bgeu         sp, tp, 1688f
1686:             slt          a6, t4, s10
                  or           t3, t4, a5
1688:             srl          s4, tp, s0
                  slti         s9, t6, -1551
                  srl          s9, s1, tp
                  sll          a7, sp, s6
                  sra          tp, sp, s10
                  srl          s9, t6, s4
                  or           a4, gp, t3
                  ori          s3, a5, 211
                  ori          a6, a7, -1137
                  xori         s4, t5, -1713
                  sltiu        gp, s3, -28
                  sub          s1, s3, t6
                  add          s11, t1, a7
                  andi         s6, a5, -462
                  sub          t1, t4, t1
                  srai         s1, s5, 18
                  sub          a5, s2, t0
                  sltu         tp, a4, gp
                  beq          t4, s2, 1724f
                  slt          s10, a1, t0
                  srl          s11, s4, a3
                  sra          t6, s0, a2
                  add          a7, a3, s10
                  srli         a3, a5, 24
                  auipc        s0, 665814
                  and          a7, t6, t5
                  sltiu        s8, s4, -1301
                  xor          s7, a7, s10
                  auipc        s7, 700305
                  xor          s5, t6, a5
                  auipc        a0, 547771
                  bgeu         sp, s5, 1721f
                  sub          a4, zero, s1
1721:             lui          t6, 531026
                  xori         s7, tp, 1290
                  blt          t1, a2, 1734f
1724:             slt          s5, t6, a4
                  srl          sp, a4, s2
                  andi         a7, a6, -865
                  sltu         t1, t5, a6
                  and          a2, a4, s10
                  srl          tp, s3, a5
                  sll          s10, s7, s8
                  bltu         s2, s5, 1736f
                  bltu         sp, s8, 1733f
1733:             srli         a7, a3, 25
1734:             nop
                  sub          s4, a5, t6
1736:             bne          s1, t0, 1742f
                  beq          t5, s9, 1756f
                  sra          s1, a7, a6
                  sub          t6, s6, t1
                  ori          s2, tp, -38
                  srl          a2, s11, zero
1742:             srli         s8, gp, 12
                  bgeu         a3, s1, 1747f
                  add          tp, s9, a0
                  xor          s7, t5, s0
                  sub          s2, a6, a6
1747:             addi         t4, zero, -1816
                  addi         t0, t5, -810
                  sub          a6, ra, s0
                  bge          ra, s4, 1761f
                  bne          a0, s4, 1761f
                  andi         a7, a4, -1956
                  xori         a5, s6, -964
                  srai         t1, tp, 15
                  or           a4, a6, a1
1756:             bgeu         s3, s0, 1760f
                  bltu         gp, t3, 1759f
                  auipc        t0, 294282
1759:             ori          s8, s7, -1713
1760:             and          s10, t1, tp
1761:             bge          a3, a2, 1780f
                  slti         t3, t6, 1264
                  sra          sp, t0, a1
                  slt          t1, s6, t4
                  blt          s6, s7, 1766f
1766:             slt          a5, ra, a1
                  andi         s4, a1, 1545
                  nop
                  sltu         s6, s8, s6
                  srai         zero, t2, 20
                  sra          s1, a3, sp
                  sra          zero, ra, a3
                  slti         a2, a2, 737
                  srai         a0, s9, 27
                  and          s8, s1, t0
                  srl          s11, s8, t2
                  sub          t4, a4, t2
                  slt          s9, a1, a3
                  slti         t3, gp, 1016
1780:             bne          s3, s11, 1797f
                  sra          zero, t0, a6
                  srl          s6, sp, a7
                  or           s5, a3, a5
                  srl          s7, a6, a0
                  ori          s6, sp, 947
                  add          s8, sp, s1
                  bltu         s6, s3, 1796f
                  bge          ra, a6, 1804f
                  lui          a4, 895491
                  xori         sp, s8, -1590
                  ori          t1, s5, -326
                  beq          gp, t6, 1794f
                  sub          s2, sp, t3
1794:             bne          s8, a1, 1803f
                  auipc        a0, 146064
1796:             sltiu        s0, a4, 601
1797:             slti         a0, a0, -1017
                  slt          s6, s0, a6
                  addi         a7, s8, 1433
                  sra          a5, s2, s6
                  bltu         t6, a7, 1812f
                  addi         t4, t0, 1022
1803:             and          s1, a3, a2
1804:             sltu         zero, gp, t3
                  xori         t0, s3, -1752
                  srai         a2, a1, 8
                  add          a4, a4, s1
                  xori         s7, s8, -1880
                  xor          a0, a2, a4
                  slti         s0, a7, -172
                  srli         t6, a7, 10
1812:             bltu         a4, t6, 1824f
                  xor          s10, s6, a7
                  or           s11, a6, a5
                  andi         a7, a4, 1604
                  auipc        s4, 297225
                  lui          a5, 41229
                  xor          s6, t4, t3
                  xor          s0, t4, s11
                  xori         sp, a0, 43
                  bltu         ra, a0, 1832f
                  slt          s5, tp, t1
                  nop
1824:             bne          s4, t6, 1839f
                  srl          t3, a4, a4
                  beq          t0, t4, 1837f
                  sra          a7, ra, ra
                  srai         s9, s10, 5
                  slli         s7, s11, 17
                  sll          a6, a2, t2
                  lui          s0, 757929
1832:             srli         s9, a4, 2
                  beq          s9, s8, 1852f
                  bge          a5, t0, 1839f
                  slli         s7, s6, 11
                  ori          s7, a4, 1921
1837:             srli         t1, t2, 5
                  beq          t5, s8, 1839f
1839:             addi         sp, t1, -896
                  and          s7, tp, s1
                  add          s2, s6, zero
                  sra          t4, a4, ra
                  slli         t3, s7, 24
                  sltiu        t3, s10, 1701
                  sltiu        a3, s8, -695
                  ori          a0, s3, 339
                  and          ra, t0, a0
                  sltiu        s7, t3, -1881
                  slli         s8, s8, 27
                  auipc        zero, 560783
                  slli         s4, s11, 4
1852:             and          sp, a1, s9
                  blt          s7, s6, 1868f
                  xori         a4, gp, -998
                  sub          s5, s7, t4
                  ori          s8, s6, 304
                  nop
                  nop
                  lui          t3, 163112
                  srai         a5, s8, 30
                  blt          s6, t3, 1871f
                  add          s8, s8, t5
                  beq          gp, s10, 1864f
1864:             lui          a4, 469745
                  srai         tp, a2, 2
                  sltiu        t1, s11, 1308
                  blt          s10, a4, 1879f
1868:             add          a7, ra, t2
                  slli         a7, t0, 11
                  andi         s0, tp, -1749
1871:             bgeu         t3, s11, 1890f
                  slti         a6, s2, -164
                  auipc        t1, 244724
                  sltu         a4, t5, a1
                  sltiu        a6, a5, -1449
                  slt          a6, a1, a6
                  and          s4, t5, t0
                  auipc        a4, 795281
1879:             sltiu        a6, a4, -1636
                  sll          ra, s2, t4
                  sltiu        s0, s9, -976
                  sll          sp, s5, a3
                  addi         a0, gp, 913
                  beq          a2, s6, 1895f
                  sltiu        a7, s7, 73
                  lui          s7, 331907
                  bgeu         ra, s10, 1889f
                  bltu         s4, s8, 1899f
1889:             auipc        gp, 575212
1890:             xor          s5, a6, s9
                  xori         t0, s9, 803
                  add          s1, a0, a6
                  xor          t6, t3, s0
                  beq          a6, s10, 1910f
1895:             andi         a6, a6, -900
                  addi         a2, t3, 1352
                  srli         a7, ra, 12
                  bgeu         a1, a6, 1903f
1899:             sltu         t1, s11, s3
                  and          s11, a3, s4
                  xori         tp, s6, 1819
                  bgeu         sp, s5, 1915f
1903:             xor          a5, t2, s1
                  lui          t4, 663482
                  srli         gp, t6, 29
                  sltu         s6, t5, s9
                  slli         t4, a7, 13
                  nop
                  srl          a3, a2, s9
1910:             auipc        a2, 168302
                  srli         a4, s7, 1
                  andi         a4, a7, 285
                  sra          s8, sp, s11
                  add          s2, a5, t0
1915:             sltu         gp, a1, s2
                  sra          t0, a7, s5
                  sll          s7, a7, s9
                  srai         s3, gp, 9
                  nop
                  auipc        s11, 814809
                  bgeu         s7, s6, 1923f
                  or           s7, t0, s7
1923:             ori          s9, t6, -95
                  auipc        s8, 925519
                  sll          t3, s10, s2
                  addi         a3, t1, 1119
                  la           t4, sub_7
                  addi         t3, a2, 1025
                  xori         zero, t0, 1364
                  slt          zero, sp, s9
                  addi         t4, t4, 296
                  slli         s2, a7, 19
                  sltiu        t1, t3, 1910
                  nop
                  bltu         ra, s0, sub_6_j11 #branch to jump instr
                  slli         a4, s11, 18
                  addi         a5, s4, 1634
                  and          a2, gp, a3
sub_6_j11:        jalr         t1, t4, -295 #jump sub_6 -> sub_7
                  and          s5, t5, a4
                  and          t4, t1, s0
                  xori         s11, a1, 723
                  xor          tp, a5, s7
                  nop
                  srli         a2, a2, 21
                  xori         t4, t5, -438
                  xor          s6, s2, a1
                  or           t4, a5, s5
                  slli         zero, s1, 5
                  and          t0, tp, gp
                  ori          s7, t0, 28
                  bgeu         s10, s5, 1956f
                  add          t0, s0, tp
                  andi         s3, sp, 789
                  xori         s1, a2, 64
                  bgeu         s5, s4, 1961f
                  blt          a5, t1, 1954f
                  bgeu         gp, s1, 1946f
                  slt          s2, sp, s11
1946:             sub          s10, s1, s0
                  bne          t4, t4, 1956f
                  bgeu         t0, t3, 1959f
                  bge          s6, t6, 1952f
                  sub          sp, s4, sp
                  xori         s0, s9, -1223
1952:             bne          s1, tp, 1969f
                  sub          s3, s1, tp
1954:             ori          a7, s1, -529
                  sltu         t0, tp, s7
1956:             bgeu         a3, s8, 1960f
                  sll          s10, a2, t3
                  slli         tp, ra, 5
1959:             bgeu         t6, s4, 1970f
1960:             bgeu         s6, s7, 1969f
1961:             or           gp, s0, s6
                  andi         t3, ra, -1777
                  xori         s8, s6, 1305
                  sltu         s10, t5, t1
                  srli         a3, t5, 22
                  blt          s2, s3, 1985f
                  nop
                  slti         gp, t6, -1483
1969:             add          s11, s7, a5
1970:             sltu         t3, s11, gp
                  sll          s8, gp, s10
                  bltu         a1, t5, 1973f
1973:             and          s1, a6, a5
                  xor          a6, s8, t5
                  or           t6, ra, t0
                  slti         a5, s11, -1571
                  lui          s4, 801178
                  andi         s5, gp, -141
                  sltiu        a5, t5, 535
                  sub          s9, s11, t5
                  bge          s3, ra, 1983f
                  srai         s6, a4, 3
1983:             srai         zero, t5, 0
                  sra          t0, tp, a0
1985:             blt          t0, ra, 1990f
                  slt          a6, t4, t3
                  srai         a3, s1, 27
                  srl          a7, s10, t0
                  andi         t1, a2, 1455
1990:             bltu         s0, s6, 1994f
                  bne          t0, s11, 1992f
1992:             sra          a0, gp, s11
                  beq          s11, s9, 1999f
1994:             beq          tp, s7, 2007f
                  auipc        s9, 361758
                  addi         sp, a4, -1567
                  nop
                  nop
1999:             bne          t2, a1, 2000f
2000:             sltiu        a7, s11, 317
                  srl          s4, sp, a5
                  add          a3, a3, ra
                  lui          a7, 1030291
                  srai         a0, a1, 30
                  xori         s4, s5, -380
                  bne          a5, s9, 2011f
2007:             slti         tp, s11, 1358
                  sltu         s4, a4, s4
                  srai         a7, s4, 13
                  auipc        t0, 881982
2011:             and          s6, s7, s1
                  slli         ra, t6, 10
                  slli         s11, s0, 30
                  sltiu        a3, t5, -357
                  add          zero, sp, s7
                  srl          a5, s11, a5
                  bltu         s7, s9, 2021f
                  bge          a0, s8, 2030f
                  add          a0, t5, sp
                  bgeu         a4, zero, 2031f
2021:             sltiu        a7, s0, 207
                  sll          s1, t5, zero
                  slti         a3, s10, 1197
                  srl          sp, t0, a3
                  sltu         t1, s4, s10
                  srli         s3, t1, 19
                  xor          s3, s5, a0
                  or           a4, zero, t2
                  bge          tp, s2, 2031f
2030:             srai         s0, s5, 12
2031:             sltiu        s9, s3, 1699
                  blt          a1, gp, 2043f
                  or           t4, gp, t2
                  xori         gp, s0, -331
                  blt          a2, s7, 2036f
2036:             ori          s5, a2, 1976
                  bne          sp, t4, 2040f
                  sll          s1, t0, s6
                  beq          s2, a4, 2054f
2040:             bge          a0, zero, 2042f
                  sub          s3, sp, tp
2042:             sra          s2, s4, t0
2043:             add          s7, s1, s7
                  srl          ra, tp, t2
                  sltu         a2, a4, s8
                  sltu         s1, a1, a2
                  srl          s10, a6, a7
                  or           s3, s3, ra
                  add          s8, a0, zero
                  nop
                  sub          s1, gp, t0
                  xor          s0, a7, s2
                  slli         t6, a0, 26
2054:             and          s1, a4, t1
                  nop
                  beq          t6, sp, 2073f
                  nop
                  ori          t1, gp, -446
                  auipc        t0, 892187
                  lui          s1, 506255
                  auipc        a3, 259519
                  addi         s9, a1, 1733
                  bge          a1, s10, 2069f
                  add          gp, s6, t3
                  beq          a3, ra, 2074f
                  srli         t3, s1, 27
                  ori          a7, tp, 306
                  srli         s10, s1, 14
2069:             bge          sp, s1, 2079f
                  bltu         s11, t2, 2072f
                  beq          s0, s4, 2090f
2072:             bne          a5, s5, 2088f
2073:             sll          t0, t1, s2
2074:             srai         ra, zero, 12
                  addi         s3, t5, -320
                  lui          tp, 312796
                  srl          s10, s3, sp
                  auipc        a6, 512403
2079:             bltu         gp, ra, 2090f
                  lui          gp, 448651
                  slli         a7, s4, 24
                  andi         sp, t6, -1161
                  srai         zero, s0, 27
                  sltu         s5, sp, t3
                  sll          s6, t6, s11
                  beq          ra, tp, 2105f
                  slli         a6, s0, 17
2088:             andi         t3, s11, -1069
                  bgeu         a5, a0, 2107f
2090:             ori          zero, a6, -357
                  sub          t3, t3, s11
                  ori          t4, s8, -1042
                  sltu         s4, a3, a6
                  xori         t3, gp, 1097
                  sra          s5, ra, tp
                  bltu         t3, s4, 2115f
                  add          s6, a6, s1
                  sll          s3, a1, gp
                  srai         a6, t1, 16
                  srai         t0, a5, 17
                  auipc        t3, 205410
                  addi         s10, s3, -65
                  srl          s3, a1, t6
                  sub          s6, t6, t6
2105:             bltu         t2, a4, 2116f
                  nop
2107:             add          s1, a3, t6
                  slti         t6, a6, 1571
                  sra          s10, s6, zero
                  xori         tp, a4, -1658
                  beq          s9, s4, 2113f
                  bgeu         s7, s3, 2116f
2113:             slli         s1, a7, 9
                  auipc        t3, 312414
2115:             or           s3, t6, zero
2116:             sltiu        sp, gp, 1282
                  xori         s8, a1, -1333
                  sltu         t1, sp, s3
                  bge          t1, s1, 2128f
                  slli         a2, t5, 23
                  sub          a6, s9, t4
                  blt          tp, a6, 2133f
                  bgeu         s0, t5, 2124f
2124:             andi         tp, t0, 1336
                  add          zero, s4, a5
                  slli         a7, ra, 19
                  xor          a4, t2, s0
2128:             sltiu        gp, s1, -798
                  beq          tp, s4, 2134f
                  bltu         s4, a7, 2132f
                  slti         s3, a3, 1746
2132:             andi         t1, t0, -1684
2133:             beq          s11, a6, 2144f
2134:             srli         a6, s7, 27
                  bne          ra, s9, 2141f
                  auipc        s4, 446533
                  slli         tp, t4, 22
                  srai         s0, s9, 20
                  slt          s9, gp, a5
                  addi         s4, ra, -1042
2141:             xori         s0, a5, -155
                  xor          a4, gp, sp
                  bge          s2, t6, 2161f
2144:             or           s7, a5, s5
                  bltu         a2, t1, 2146f
2146:             auipc        a6, 265689
                  bne          s9, t6, 2158f
                  nop
                  sub          a7, s6, a5
                  add          a2, gp, a4
                  srli         a3, ra, 30
                  sll          t4, t1, s10
                  or           a7, t2, a6
                  srl          a4, s11, a5
                  auipc        s9, 67927
                  nop
                  bltu         a3, a1, 2159f
2158:             sltu         s6, t5, t3
2159:             sll          s1, t3, s9
                  la           s1, region_0+520 #start riscv_load_store_rand_instr_stream_17
                  lb           gp, 623(s1)
                  lb           a0, 1142(s1)
                  lb           s3, 351(s1)
                  auipc        t3, 625248
                  sb           s5, 1115(s1)
                  sh           s9, 990(s1)
                  or           t0, a1, a1
                  lb           a2, 737(s1)
                  sra          s2, zero, s7
                  sltiu        t0, s10, -18
                  sb           a5, 1394(s1)
                  lb           sp, -196(s1)
                  sra          sp, s10, s5
                  sb           s11, 1332(s1)
                  sh           t4, 1074(s1)
                  lbu          s3, 903(s1)
                  lb           a2, 162(s1)
                  lb           a2, -227(s1)
                  slt          a2, gp, s4
                  srai         a4, a0, 25
                  lbu          a2, 585(s1)
                  sltu         sp, a0, s9
                  lhu          t3, 714(s1)
                  ori          t3, tp, -1333
                  srl          a6, s2, a3
                  sltu         t1, a6, ra
                  lw           t6, 52(s1)
                  sh           s11, 900(s1)
                  sb           s3, 813(s1)
                  sb           s9, 599(s1)
                  lbu          a7, -54(s1)
                  lh           s6, -168(s1)
                  sll          s5, t5, zero
                  auipc        t4, 1048277
                  lb           a2, -66(s1)
                  lbu          s6, 1309(s1)
                  sb           t6, 125(s1)
                  lh           s7, 1054(s1)
                  sb           t1, 1115(s1)
                  auipc        a0, 737829
                  lui          ra, 193938
                  sll          gp, s4, zero
                  or           s11, t6, s6
                  srai         sp, t0, 19
                  sll          s9, ra, s6
                  lb           a4, 1193(s1)
                  lb           s10, 13(s1)
                  srai         s9, s2, 23
                  lb           t1, 1063(s1) #end riscv_load_store_rand_instr_stream_17
                  bne          t2, s1, 2163f
2161:             sltiu        a2, gp, 1988
                  nop
2163:             sltiu        s10, ra, 809
                  slti         s10, a1, 852
                  bge          t5, t6, 2180f
                  lui          zero, 497650
                  blt          s5, s5, 2176f
                  or           s1, s2, a0
                  and          s0, s9, a3
                  sltiu        a5, a2, -360
                  slli         t4, s9, 17
                  slli         s5, zero, 22
                  xor          gp, s3, s7
                  beq          a0, ra, 2187f
                  sub          t6, s11, tp
2176:             sltiu        zero, a4, -1656
                  xori         a6, s11, 127
                  srl          s3, a2, tp
                  xori         a5, zero, 993
2180:             sra          s1, a1, s2
                  slti         s2, s6, 907
                  blt          s5, ra, 2187f
                  bgeu         s11, s0, 2193f
                  auipc        t0, 741429
                  nop
                  bge          s4, a3, 2195f
2187:             slt          t1, a7, zero
                  srl          s9, a0, a5
                  slt          s0, a6, t2
                  srai         a0, a0, 15
                  beq          s10, a4, 2193f
                  ori          tp, a0, -1659
2193:             srli         s6, a4, 19
                  sltiu        tp, t1, 1213
2195:             add          s7, a0, s10
                  nop
                  addi         a0, s8, 76
                  blt          s9, a0, 2199f
2199:             slti         s10, s3, 951
                  slli         s9, a7, 29
                  nop
                  srai         s3, a5, 12
                  xori         s3, t2, 99
                  addi         zero, a7, -1792
                  nop
                  beq          a2, s7, 2210f
                  slli         tp, t0, 16
                  nop
                  sub          a3, t2, t2
2210:             ori          s9, s1, -1722
                  nop
                  sltiu        s10, t2, 1761
                  and          a2, s7, s5
                  bne          gp, s9, 2219f
                  or           s7, a4, gp
                  sll          s5, s6, a6
                  bltu         a5, s0, 2229f
                  nop
2219:             ori          a0, s1, -843
                  sltu         a4, t5, zero
                  sll          t1, a3, s10
                  slti         s2, gp, 1564
                  addi         s10, a3, 1683
                  slli         t4, s8, 29
                  sltu         s4, t3, s9
                  slti         a3, a7, 39
                  srl          tp, zero, a1
                  auipc        s10, 1039187
2229:             sltu         s1, zero, s8
                  sltiu        a4, t4, 604
                  lui          s8, 458276
                  xori         a7, sp, 1551
                  auipc        a5, 952353
                  srai         t4, a7, 19
                  slli         s7, a0, 3
                  sltiu        s0, a3, -1104
                  sltiu        a6, t6, -1975
                  nop
                  bgeu         t6, s2, 2250f
                  sra          s7, a7, a3
                  andi         s5, t3, 767
                  sltu         a3, s2, s2
                  bne          s3, t4, 2262f
                  bne          s8, a0, 2263f
                  addi         s8, s3, 1317
                  lui          t3, 314851
                  sub          s8, s5, a0
                  srli         s9, a6, 4
                  blt          s10, s1, 2250f
2250:             srai         zero, s2, 1
                  xori         a3, t5, 485
                  slli         s4, t3, 22
                  srl          tp, t1, t1
                  nop
                  slti         a0, t1, 1372
                  sub          a3, a0, a4
                  blt          ra, s9, 2261f
                  bgeu         s10, gp, 2269f
                  beq          s11, t3, 2275f
                  ori          t1, gp, 313
2261:             xor          s6, a3, s8
2262:             or           t3, s3, t3
2263:             ori          a4, t6, 272
                  add          s3, a3, s8
                  addi         t6, s6, -1282
                  add          ra, t1, t0
                  beq          a6, t6, 2269f
                  auipc        s9, 298243
2269:             add          t3, sp, s8
                  xor          s8, ra, sp
                  sll          a5, s7, zero
                  and          a6, a2, sp
                  blt          t6, s5, 2292f
                  or           s1, a0, ra
2275:             and          s3, s6, t2
                  xor          a3, a2, s3
                  bge          zero, a4, 2294f
                  bltu         a6, s1, 2289f
                  slt          s2, s6, a5
                  xor          s3, t6, sp
                  bge          a2, a1, 2294f
                  auipc        t3, 551402
                  blt          a1, ra, 2301f
                  sltiu        tp, sp, 1282
                  lui          a7, 508395
                  slti         a2, t2, 93
                  bge          a7, a5, 2306f
                  bge          s2, a3, 2298f
2289:             bge          s6, tp, 2292f
                  addi         t0, s1, -569
                  srli         s2, s11, 25
2292:             slti         t6, s2, -627
                  blt          a4, s2, 2299f
2294:             bne          s7, a7, 2310f
                  sub          a7, t2, s4
                  bne          t4, s3, 2297f
2297:             addi         sp, s2, -509
2298:             bge          s4, s7, 2310f
2299:             sltiu        ra, s3, -780
                  srl          s1, a5, t3
2301:             sll          s0, gp, tp
                  ori          s6, t5, -1465
                  slli         s9, a5, 19
                  xor          a6, a3, s7
                  sra          a5, a5, s0
2306:             srai         s2, sp, 20
                  slti         t1, t3, -862
                  andi         a2, s6, -1262
                  sltu         a2, ra, s4
2310:             slli         s0, t0, 2
                  slti         zero, t2, 1257
                  slli         s11, a7, 26
                  bgeu         a6, gp, 2315f
                  slli         a3, tp, 16
2315:             lui          a0, 120077
                  srai         a3, a1, 5
                  andi         a5, s10, 1683
                  sltiu        t0, a6, 1996
                  sra          a0, a0, s2
                  bne          a4, a5, 2321f
2321:             beq          t5, a7, 2332f
                  xori         t4, s9, 1870
                  and          ra, s8, t1
                  sltu         s0, s11, tp
                  bne          s7, s0, 2342f
                  xori         tp, s2, -836
                  or           a7, a4, s9
                  andi         s8, a1, -445
                  sltiu        t6, a7, -746
                  or           sp, zero, s6
                  blt          t4, a5, 2335f
2332:             blt          s7, t6, 2341f
                  lui          a0, 859768
                  blt          s10, t0, 2345f
2335:             nop
                  sll          s1, s10, a3
                  add          s6, s7, a3
                  addi         t0, a4, -1513
                  sra          s6, s11, a7
                  nop
2341:             addi         s3, a4, 1776
2342:             sra          zero, ra, s1
                  bgeu         t2, s0, 2358f
                  bgeu         s2, a6, 2346f
2345:             lui          a7, 329200
2346:             sra          s0, s5, s10
                  sra          ra, s4, s3
                  beq          s4, a3, 2359f
                  slli         t1, s8, 10
                  blt          t1, s9, 2369f
                  bge          a5, s3, 2353f
                  auipc        t6, 862501
2353:             sra          s3, s6, a6
                  bgeu         s1, a4, 2365f
                  bge          zero, a2, 2357f
                  nop
2357:             addi         a6, s9, -1682
2358:             blt          a6, t0, 2367f
2359:             and          t1, t4, a3
                  sra          s2, gp, s3
                  slli         a2, t4, 10
                  srli         t4, sp, 16
                  ori          t6, t4, 344
                  bge          s2, a5, 2375f
2365:             ori          a5, s11, -1618
                  sll          a4, s6, sp
2367:             and          a0, s1, t4
                  sra          a3, gp, t5
2369:             bne          a5, s6, 2370f
2370:             srli         s9, t1, 11
                  slti         s0, s6, -1232
                  xori         ra, t4, 1477
                  sltiu        a7, s1, 1255
                  srli         a3, s6, 20
2375:             ori          s7, a3, 760
                  sra          tp, a1, t3
                  srl          a4, s2, a6
                  andi         s7, s1, -726
                  bne          sp, t4, 2384f
                  ori          s5, tp, -1878
                  bltu         zero, sp, 2386f
                  xor          s10, a7, s9
                  xor          zero, t1, t1
2384:             beq          a5, s2, 2388f
                  andi         t3, t2, -1946
2386:             nop
                  blt          a2, s0, 2406f
2388:             sltiu        zero, s3, -1036
                  nop
                  bltu         a2, ra, 2392f
                  ori          zero, s5, 254
2392:             srl          a7, s2, a1
                  sltu         s10, gp, s3
                  sll          s3, s10, t0
                  slt          s7, s4, zero
                  xori         s11, s7, -426
                  beq          a0, s3, 2408f
                  and          s5, t5, ra
                  slli         sp, gp, 16
                  andi         s7, a0, -963
                  sll          a3, a7, ra
                  slti         s8, s0, 588
                  xor          tp, t1, s3
                  add          s8, a3, t3
                  bgeu         s10, zero, 2410f
2406:             nop
                  add          s9, s5, s11
2408:             slli         a4, s7, 31
                  bge          s0, tp, 2425f
2410:             sltu         sp, gp, s10
                  blt          s11, s9, 2422f
                  auipc        s2, 239547
                  bne          s0, zero, 2423f
                  sra          s8, s11, s9
                  srli         s5, sp, 22
                  xor          t6, t1, s4
                  sub          a5, gp, ra
                  add          a3, a7, a5
                  bgeu         a7, zero, 2420f
2420:             xor          ra, a7, gp
                  slt          t1, s7, gp
2422:             slli         t1, s3, 11
2423:             bltu         s3, gp, 2442f
                  srl          s8, t3, a7
2425:             blt          t3, s4, 2438f
                  sra          sp, s0, a1
                  sra          s7, a6, s2
                  srai         s5, a7, 6
                  srli         t4, t0, 15
                  and          s0, s5, s9
                  sra          s2, s10, s4
                  auipc        a6, 667968
                  srl          t0, tp, ra
                  sll          zero, t3, s10
                  sltiu        a5, a4, 18
                  srli         s7, t0, 13
                  sub          t3, a4, s8
2438:             or           ra, gp, s5
                  sltiu        sp, s6, 637
                  sltu         zero, sp, ra
                  ori          s9, t0, 1629
2442:             nop
                  sll          a2, gp, t2
                  sltu         s2, s0, s11
                  bge          s0, gp, 2454f
                  xori         gp, s6, -943
                  lui          a0, 119700
                  slti         a4, s9, 1287
                  and          s10, s7, a7
                  sra          s11, a6, tp
                  sra          tp, s1, s11
                  addi         s1, t4, 288
                  slt          tp, t4, a6
2454:             xor          t3, t3, a1
                  nop
                  and          t4, s8, a1
                  addi         a4, zero, 677
                  auipc        t1, 221020
                  bne          zero, s1, 2461f
                  andi         a0, t5, 1595
2461:             slli         s8, s8, 1
                  beq          s9, s7, 2466f
                  bgeu         s10, zero, 2480f
                  andi         s7, t3, -193
                  slti         t0, a4, -609
2466:             beq          sp, t0, 2485f
                  andi         s9, s2, -1713
                  or           a6, tp, s6
                  add          s5, s0, a5
                  addi         s2, s3, 1955
                  lui          s10, 1041517
                  sltu         t4, t3, a4
                  sra          t0, t3, t2
                  addi         a7, s2, -1243
                  ori          a7, s5, -489
                  bltu         t1, a3, 2487f
                  slt          ra, a1, s6
                  sub          sp, s6, ra
                  and          a0, ra, t5
2480:             nop
                  slli         t6, s3, 22
                  addi         s6, a4, 1463
                  slti         sp, ra, 1590
                  sra          a3, a2, t0
2485:             sltiu        sp, tp, 1437
                  sll          a0, s4, a4
2487:             sub          s1, a2, zero
                  slli         a7, s5, 7
                  or           s8, zero, s7
                  srai         t1, a7, 13
                  slli         tp, s5, 6
                  bltu         a3, s11, 2507f
                  or           gp, s11, a4
                  ori          s3, a3, 720
                  or           s1, s6, a0
                  sltu         zero, t1, s9
                  slt          s6, a3, ra
                  srli         gp, a6, 22
                  sltu         s4, t2, t0
                  auipc        t1, 876789
                  andi         s0, t6, 159
                  slt          a2, s6, t5
                  addi         s7, ra, 963
                  addi         tp, t0, -69
                  srai         s3, t2, 17
                  auipc        a4, 437101
2507:             ori          a5, zero, 38
                  nop
                  addi         s5, s4, 91
                  xori         ra, a2, -335
                  and          s11, s6, s1
                  srli         t0, a5, 2
                  bltu         s7, t1, 2524f
                  ori          s5, t2, 1963
                  addi         s1, a7, 721
                  or           t0, s2, a1
                  sltu         s0, a4, a2
                  ori          gp, t6, 91
                  nop
                  sra          sp, a4, t1
                  sub          ra, s6, s10
                  sra          s9, s5, s11
                  add          a4, s4, a5
2524:             ori          ra, t3, 1475
                  lui          t0, 138500
                  slt          s1, a1, a3
                  srai         s3, s11, 27
                  sub          s3, s2, s4
                  and          a2, s9, a3
                  auipc        s0, 141253
                  srai         s10, s5, 27
                  andi         s3, t1, 716
                  or           s2, t3, t5
                  srai         s8, tp, 17
                  sra          gp, a4, a0
                  beq          a2, gp, 2555f
                  xori         t1, tp, -643
                  sra          a6, s7, a1
                  and          s0, s4, sp
                  bgeu         a2, tp, 2549f
                  slti         s4, a1, 1371
                  xor          zero, tp, a4
                  beq          a6, s0, sub_6_j12 #branch to jump instr
                  sltu         t1, tp, s11
                  slti         gp, s8, -1487
                  xor          s5, ra, t5
                  lui          sp, 780934
                  srli         t3, s2, 10
                  ori          t3, t3, -1183
                  and          s1, s9, tp
                  sltu         ra, t2, s8
                  andi         a5, t5, 619
sub_6_j12:        jal          t1, sub_10 #jump sub_6 -> sub_10
                  beq          gp, s6, 2548f
                  xor          s10, s8, a3
                  and          s9, tp, gp
                  add          s5, s7, s6
                  add          s2, t6, t1
2548:             bltu         t0, a4, 2559f
2549:             slti         a4, s3, -860
                  xor          s8, ra, s10
                  bltu         ra, s5, 2553f
                  bgeu         t0, a3, 2553f
2553:             add          ra, t4, s10
                  slt          a5, t0, a6
2555:             auipc        a0, 377569
                  bge          t6, s0, 2568f
                  addi         s2, t3, 686
                  and          sp, sp, t3
2559:             bltu         ra, s10, 2561f
                  and          ra, s8, sp
2561:             ori          a2, s11, -1847
                  bne          a1, s10, 2565f
                  lui          s5, 781496
                  slli         s0, t1, 11
2565:             bgeu         a2, s9, 2571f
                  bne          a1, s11, 2584f
                  srai         s10, s10, 13
2568:             srl          sp, a4, a3
                  andi         s4, a4, 1194
                  beq          s2, zero, 2571f
2571:             blt          a2, t4, 2575f
                  blt          t6, gp, 2576f
                  auipc        gp, 1021261
                  sra          a0, t2, gp
2575:             xor          a2, sp, s4
2576:             bltu         a3, s6, 2585f
                  addi         s7, a7, 303
                  bltu         ra, ra, 2589f
                  slli         s1, a5, 13
                  xori         s0, s8, -1617
                  ori          s2, a6, 1065
                  bltu         s7, tp, 2584f
                  beq          s0, s8, 2584f
2584:             and          s7, a0, gp
2585:             xori         t3, t3, -355
                  add          a2, a1, a1
                  sltiu        a0, a5, 1202
                  srl          ra, a1, a0
2589:             lui          s11, 819831
                  nop
                  sll          s5, t3, t5
                  sll          a5, ra, a2
                  bltu         s4, t2, 2598f
                  or           s9, t2, t0
                  slt          tp, t0, a7
                  slt          a2, s3, s7
                  sll          a2, s3, a3
2598:             slt          s6, a1, t0
                  lui          s8, 540976
                  xor          a3, tp, s3
                  lui          sp, 562941
                  bltu         ra, s10, 2604f
                  sub          t4, gp, s5
2604:             blt          t2, a3, 2607f
                  addi         gp, zero, -1695
                  add          t3, t1, s10
2607:             slti         t6, s7, 1198
                  sub          s10, s3, t6
                  slti         t0, t3, 1576
                  slti         s1, ra, -1493
                  xor          s1, sp, s5
                  sll          s4, s0, s4
                  sub          t3, a4, gp
                  blt          a7, t2, 2616f
                  add          sp, s6, s2
2616:             bltu         s2, s10, 2627f
                  add          s3, ra, t6
                  lui          a4, 586229
                  srl          t3, a1, s9
                  sltu         s10, a2, zero
                  and          tp, ra, s1
                  bltu         tp, a1, 2631f
                  add          s9, t4, s0
                  bgeu         zero, a4, 2643f
                  blt          t1, a1, 2626f
2626:             sll          s2, t1, s10
2627:             addi         t0, a6, -1308
                  blt          a3, t5, 2639f
                  sltu         a2, s9, sp
                  xor          t6, t5, s8
2631:             blt          t5, t1, 2637f
                  slli         a0, ra, 27
                  ori          ra, s2, 180
                  slt          s7, s9, tp
                  sll          a7, s11, tp
                  sub          sp, t4, ra
2637:             xori         a3, t6, -958
                  or           sp, t4, s3
2639:             nop
                  beq          t6, a6, 2651f
                  sra          s10, t5, s4
                  sltiu        s5, a6, -538
2643:             sll          s10, t6, gp
                  add          zero, s9, s0
                  ori          s6, ra, -675
                  xori         a0, s4, -573
                  sltiu        zero, t1, 1495
                  bgeu         a2, s6, 2664f
                  slt          s1, a0, a2
                  xori         a2, s9, -1601
2651:             sub          s1, gp, a0
                  slt          a2, sp, s4
                  ori          s8, ra, 1450
                  sltiu        a0, t0, -283
                  nop
                  lui          a6, 767318
                  nop
                  ori          a3, s3, -1758
                  sltu         a7, s9, s10
                  srai         s2, ra, 19
                  bltu         a3, a6, 2674f
                  slli         s6, a6, 20
                  beq          a7, s0, 2678f
2664:             srl          a2, ra, a7
                  blt          a6, a7, 2670f
                  sltiu        s9, t3, -652
                  nop
                  andi         zero, t4, 329
                  sra          tp, a4, s7
2670:             slt          a4, zero, s11
                  sra          t3, a6, a7
                  sltu         a5, ra, s5
                  blt          t5, s6, 2684f
2674:             blt          sp, s4, 2693f
                  blt          t3, a5, 2677f
                  sll          a3, a6, sp
2677:             bltu         a2, a4, 2689f
2678:             lui          ra, 752070
                  sltu         s3, a4, t3
                  slli         a2, zero, 11
                  srli         a2, a7, 30
                  nop
                  ori          s7, t6, -770
2684:             bge          s9, s2, 2701f
                  srli         ra, s8, 10
                  sll          gp, a7, a2
                  sub          s2, t2, s5
                  or           s7, s10, a1
2689:             bne          a0, s4, 2693f
                  and          s6, s2, t0
                  auipc        a2, 593031
                  sub          a0, sp, a6
2693:             sub          s1, s0, a6
                  add          s0, s9, a4
                  ori          s6, tp, 1048
                  sub          tp, t3, a2
                  or           zero, s10, s7
                  sub          a3, s4, s1
                  ori          s1, s1, -1805
                  ori          s3, s6, 81
2701:             sra          a2, a6, s7
                  sltiu        s6, a5, -402
                  blt          ra, a5, 2704f
2704:             slli         zero, s9, 13
                  bgeu         a0, a4, 2724f
                  add          tp, t2, tp
                  xori         sp, s8, 925
                  nop
                  srl          s6, a4, s1
                  addi         a6, s8, -858
                  srai         ra, t1, 23
                  add          ra, a0, s11
                  sltiu        gp, s10, 25
                  blt          s9, s8, 2724f
                  blt          t2, s3, 2733f
                  srli         s2, s7, 9
                  slli         s8, s3, 13
                  slti         t1, a0, -1161
                  beq          a4, s3, 2734f
                  and          a3, gp, s7
                  or           gp, s0, t3
                  and          t4, s5, a4
                  slti         tp, s11, 1253
2724:             sub          t0, t1, sp
                  beq          s5, a7, 2736f
                  auipc        s5, 185093
                  sltu         s4, s8, t4
                  sltu         sp, t0, s0
                  bne          zero, a6, 2735f
                  srl          gp, s6, t2
                  addi         sp, a1, 999
                  add          s0, a6, a6
2733:             bge          a1, a4, 2744f
2734:             beq          t2, t2, 2752f
2735:             slt          t0, s8, s2
2736:             sltu         s1, t6, s11
                  sub          s6, gp, a1
                  addi         s5, s3, -965
                  nop
                  slt          a5, s7, t2
                  sltiu        ra, a0, -533
                  srli         a4, a2, 4
                  srai         t6, s10, 2
2744:             xori         s3, t3, -928
                  bgeu         tp, tp, 2749f
                  srai         s1, a3, 0
                  srai         s10, s7, 4
                  xor          zero, a0, a1
2749:             addi         t6, gp, -983
                  addi         s9, s7, 1942
                  srl          s10, a5, t6
2752:             ori          s4, gp, -1493
                  srai         s5, s11, 22
                  bge          s1, s4, 2773f
                  lui          a4, 415151
                  bge          sp, a2, 2760f
                  add          ra, s8, gp
                  and          t3, s9, s8
                  add          s8, a5, a7
2760:             and          s10, s5, sp
                  sltiu        s0, a3, -1243
                  bgeu         gp, sp, 2764f
                  sltiu        a2, s11, -514
2764:             sra          a5, a3, s3
                  sra          t3, a4, a4
                  auipc        t0, 547421
                  addi         t4, s8, 1788
                  bne          sp, sp, 2779f
                  bge          s9, s6, 2778f
                  srai         t6, s3, 15
                  sll          s10, s6, s6
                  beq          t6, a0, 2774f
2773:             ori          s3, tp, -939
2774:             slli         a4, a1, 17
                  add          a5, t0, a2
                  sub          s0, a1, s10
                  sltiu        a3, gp, -220
2778:             bne          t1, a3, 2794f
2779:             add          a0, t3, ra
                  xori         s3, a0, 1846
                  nop
                  xori         a0, t5, -1736
                  slli         s1, t2, 1
                  or           t3, t2, gp
                  addi         gp, a0, 1794
                  slt          a3, s3, s4
                  slt          t3, zero, a3
                  andi         a6, a1, -945
                  auipc        s1, 521763
                  bge          s8, s3, 2792f
                  srai         s11, a4, 1
2792:             sub          s0, s8, s4
                  auipc        s0, 1027124
2794:             beq          s5, a4, 2799f
                  sra          a5, a7, t0
                  srli         s7, a0, 17
                  or           a5, t6, a7
                  srli         t6, gp, 17
2799:             slti         ra, t2, 1367
                  bltu         t1, s3, 2802f
                  bge          s2, a0, 2814f
2802:             slti         t0, t3, -1089
                  sll          tp, a0, ra
                  lui          t4, 773061
                  sltiu        a6, s8, 1059
                  slli         a3, s1, 6
                  sltiu        zero, a7, -2039
                  beq          a2, zero, 2817f
                  auipc        a6, 336444
                  xori         t1, s9, 956
                  addi         s11, s2, -282
                  add          gp, s10, ra
                  bge          s10, a5, 2832f
2814:             sra          s0, a1, s0
                  sra          s3, t3, s0
                  nop
2817:             or           a3, tp, ra
                  srai         s11, s1, 3
                  xori         a6, s10, 1143
                  bgeu         a6, s2, 2831f
                  beq          a4, ra, 2822f
2822:             auipc        sp, 174824
                  sltiu        a3, s7, -1112
                  bgeu         s7, a4, 2843f
                  beq          a5, zero, 2826f
2826:             andi         s7, t2, 1603
                  sll          s4, a5, gp
                  srai         s9, t0, 30
                  bgeu         zero, a2, 2839f
                  slti         s7, s10, 1923
2831:             bne          s10, s1, 2842f
2832:             bgeu         t6, t6, 2835f
                  addi         s10, ra, 2038
                  slt          gp, sp, s3
2835:             srai         t4, s4, 30
                  blt          sp, s3, 2848f
                  sltiu        sp, a6, 1357
                  addi         zero, s1, -1440
2839:             ori          t1, t6, -324
                  bge          s4, a5, 2857f
                  sltiu        sp, s10, 345
2842:             addi         s0, s7, -1798
2843:             andi         s5, a4, -1515
                  bne          s11, tp, 2845f
2845:             andi         s11, t3, 297
                  add          s11, s8, tp
                  blt          ra, t2, 2852f
2848:             bgeu         tp, a3, 2866f
                  slti         a4, s10, 103
                  srli         s6, zero, 29
                  bltu         s2, tp, 2853f
2852:             or           t3, s11, a6
2853:             xori         s8, t6, 1473
                  ori          s1, a3, 551
                  or           s0, s9, s4
                  sll          ra, s4, a7
2857:             addi         t3, s1, -1558
                  sub          tp, a4, s10
                  srai         gp, a0, 19
                  addi         gp, a3, 1923
                  nop
                  xor          a3, tp, a4
                  xori         s5, t2, -846
                  auipc        tp, 734645
                  slti         a4, a6, -986
2866:             add          ra, s4, s8
                  beq          s1, t6, 2878f
                  bltu         a4, t2, 2887f
                  sub          s1, a3, t6
                  auipc        s9, 624457
                  or           s7, s11, s5
                  xor          a6, t1, sp
                  bltu         s7, s7, 2874f
2874:             sra          gp, s6, t5
                  auipc        t3, 528700
                  addi         s6, a5, 663
                  sra          a5, s2, s5
2878:             addi         tp, t1, -1353
                  auipc        t1, 852406
                  bge          sp, a5, 2891f
                  bgeu         a0, gp, 2898f
                  and          s11, a6, s9
                  bltu         tp, t6, 2896f
                  slt          t4, a0, a2
                  srl          s1, s3, a7
                  add          s8, s5, t4
2887:             sub          a2, t2, t6
                  srai         a7, a3, 14
                  bne          a6, s3, 2908f
                  or           a5, s9, s4
2891:             nop
                  beq          s1, sp, 2895f
                  auipc        s5, 584339
                  or           t3, t5, t0
2895:             lui          s9, 708196
2896:             srli         t3, a2, 16
                  nop
2898:             srl          s3, tp, ra
                  slt          a0, a2, s3
                  sltiu        s10, s8, -360
                  blt          s6, s5, 2912f
                  lui          s11, 892898
                  slli         s1, t6, 0
                  addi         a2, a0, -992
                  srai         gp, t4, 1
                  bge          s8, sp, 2917f
                  bltu         s0, s7, 2913f
2908:             add          t3, s6, t3
                  auipc        a3, 769404
                  and          tp, s6, a6
                  bne          s9, a4, 2921f
2912:             slli         s0, t6, 29
2913:             auipc        t3, 1033049
                  andi         a7, s9, 723
                  bltu         s8, s1, 2927f
                  sll          s1, tp, a6
2917:             srl          gp, s10, a1
                  lui          gp, 986810
                  xor          ra, a3, ra
                  add          s10, s5, a1
2921:             bgeu         s4, s3, 2940f
                  bltu         s5, zero, 2927f
                  sra          s7, sp, a1
                  xor          a6, s0, s1
                  srli         s0, t6, 10
                  sltu         t3, t4, tp
2927:             addi         s4, t6, -99
                  addi         s7, s2, -1921
                  bge          s10, s4, 2931f
                  sll          s9, s11, s3
2931:             bgeu         t2, s4, 2942f
                  sltu         zero, s9, t6
                  addi         s3, t4, -999
                  andi         gp, t2, -1700
                  srai         gp, t0, 8
                  bge          s9, a2, 2938f
                  srl          ra, zero, s7
2938:             bne          a3, a3, 2942f
                  or           s3, s8, a7
2940:             slli         a3, a4, 18
                  sub          s2, s0, t6
2942:             xori         s7, a2, 23
                  or           t4, a7, a1
                  sltu         a4, s7, a0
                  sltiu        a5, s7, -1760
                  xor          s8, a1, ra
                  andi         s10, t2, 260
                  sltu         s9, s8, t4
                  sltiu        s6, a1, 686
                  sltiu        s2, ra, 156
                  slli         s4, s5, 2
                  sra          s7, s0, s9
                  bltu         a4, s8, 2968f
                  bge          sp, s9, 2970f
                  xori         a4, s0, 474
                  sra          t1, t4, a3
                  blt          gp, tp, 2966f
                  bgeu         s1, t0, 2962f
                  sltiu        s11, s0, 1482
                  bltu         s7, s0, 2969f
                  nop
2962:             addi         s2, t2, 913
                  sltiu        s8, t4, 148
                  addi         t0, sp, -801
                  bltu         zero, s6, 2966f
2966:             sltu         a2, a0, s1
                  srl          t3, ra, a4
2968:             slti         s2, a3, 1644
2969:             lui          zero, 587756
2970:             andi         a5, s9, 977
                  and          a5, s5, a7
                  add          s7, a0, s5
                  sll          t6, t2, s8
                  sll          t6, s5, s3
                  andi         t1, t2, 2007
                  srl          s8, a7, a4
                  slt          s3, a5, t5
                  andi         s0, t0, 1759
                  blt          s11, s3, 2980f
2980:             xori         t1, t4, -1601
                  sra          s5, s4, s9
                  blt          s2, ra, 2984f
                  blt          t0, t5, 2988f
2984:             nop
                  beq          ra, s0, 2987f
                  slt          s1, tp, s6
2987:             bltu         s10, t4, 3006f
2988:             bne          t5, sp, 2989f
2989:             bge          s9, a4, 2990f
2990:             blt          a1, zero, 3009f
                  srli         s6, tp, 0
                  lui          a2, 760462
                  sub          a4, t4, t5
                  beq          a2, a4, 3005f
                  addi         t4, a6, 1573
                  bge          s2, a3, 2999f
                  ori          s6, s5, -1647
                  nop
2999:             add          zero, a1, t6
                  sra          s8, s3, s10
                  sub          t3, s7, s8
                  srl          s2, a5, t5
                  bge          s1, s9, 3020f
                  andi         sp, tp, -1461
3005:             blt          zero, t5, 3009f
3006:             slli         a0, ra, 15
                  or           a0, ra, s6
                  auipc        ra, 135011
3009:             xori         t0, a2, -1462
                  beq          t4, a1, 3012f
                  or           s6, s2, s9
3012:             sltu         s0, s8, s0
                  slt          s1, t0, t2
                  andi         a3, s9, 41
                  bltu         a2, s6, 3026f
                  srli         gp, a7, 27
                  srl          s11, a1, s7
                  andi         s11, a0, 757
                  sltiu        a4, s6, 141
3020:             auipc        t1, 945395
                  nop
                  slt          tp, sp, s6
                  sll          zero, s5, t2
                  bltu         s11, a0, 3042f
                  bgeu         s4, t2, 3036f
3026:             sll          zero, t6, ra
                  srai         s11, a7, 9
                  xor          s1, s9, a4
                  nop
                  srai         s7, t5, 25
                  srai         s10, t6, 18
                  slt          ra, a4, s10
                  slt          s1, t0, s0
                  auipc        s0, 1005119
                  or           t6, s10, a3
3036:             lui          gp, 687021
                  slli         s11, s6, 13
                  srai         s7, a6, 1
                  xori         s9, a3, -619
                  auipc        s5, 576572
                  slli         ra, s2, 25
3042:             sra          s8, s3, a3
                  bltu         a0, a6, 3058f
                  bne          s2, tp, 3055f
                  nop
                  slli         s8, s5, 21
                  or           s3, a5, s3
                  srl          s11, ra, a3
                  or           t3, s3, a0
                  nop
                  blt          s7, t5, 3059f
                  bne          s8, a7, 3059f
                  andi         t4, a1, 1836
                  srl          a4, ra, s2
3055:             bltu         s1, a7, 3059f
                  la           s1, sub_9
                  addi         s1, s1, -269
                  slli         tp, s3, 28
                  sub          sp, tp, a5
                  slli         zero, s3, 3
                  bne          s8, t5, sub_6_j13 #branch to jump instr
                  xori         a6, t6, -1551
                  slt          a4, t1, tp
sub_6_j13:        jalr         t1, s1, 270 #jump sub_6 -> sub_9
                  xori         s5, t5, -8
                  blt          t0, s6, 3059f
3058:             sltiu        a2, s8, -1914
3059:             sub          zero, t4, s5
                  auipc        s2, 1039968
                  nop
                  lw           t1, 4(t5)
                  slli         s7, s10, 13
                  addi         t5, t5, 48
                  auipc        s11, 1014691
                  and          s9, gp, t6
                  sltiu        s11, t0, -200
                  srli         ra, t5, 0
                  slti         s10, a5, -474
                  slti         zero, s3, -1530
                  and          s5, a7, s11
4122:             addi x24, x6, 0
4122:             jalr x24, x24, 0
sub_7:            sltiu        gp, s2, 1214
                  sltiu        a6, sp, -1183
                  slli         t4, s1, 16
                  addi         t5, t5, -8
                  slt          s3, t4, ra
                  sw           t1, 4(t5)
                  slli         a0, s3, 14
                  ori          s10, ra, 1116
                  srai         s7, a2, 7
                  xori         s1, t1, 356
                  srai         s3, s0, 28
                  lui          s3, 270734
                  xori         t3, s2, -91
                  sra          t0, t6, t2
                  xori         t0, s7, -1511
                  bne          s8, sp, 13f
                  auipc        t3, 873003
                  srai         a3, s10, 29
                  lui          s3, 917030
                  xor          t4, ra, s8
                  bgeu         tp, s1, 13f
                  slti         s2, t6, -1720
                  srli         t4, t1, 0
                  bne          s7, ra, 13f
                  xor          ra, s9, t4
13:               auipc        s0, 162663
                  lw           t1, 4(t5)
                  sltiu        s6, s7, -1696
                  slli         s9, t4, 13
                  sub          s7, t5, a5
                  nop
                  addi         t5, t5, 8
                  or           zero, a7, s9
33:               addi x20, x6, 0
33:               jalr x20, x20, 0
sub_3:            addi         t5, t5, -36
                  sll          s3, sp, t6
                  sw           t1, 4(t5)
                  slti         s6, sp, 1501
                  xori         a3, gp, -1674
                  add          s7, a4, a0
                  xori         s2, t4, -1239
                  slli         s10, s0, 12
                  xor          a6, a4, s4
                  sltiu        s3, s4, -1075
                  xor          t3, ra, s8
                  xor          s9, s1, s8
                  bltu         gp, a5, 11f
                  slli         s2, s3, 29
                  sll          s2, a7, t4
                  sub          a6, s3, gp
                  beq          a4, tp, 24f
                  bne          t3, a5, 21f
                  slti         s8, t3, -1236
                  sll          s5, s0, tp
11:               srli         t3, s3, 26
                  sltu         a6, s2, s3
                  srai         a2, s10, 7
                  and          s7, t5, s1
                  srai         tp, gp, 30
                  or           ra, t6, a5
                  xori         ra, a5, 1523
                  beq          t0, t4, 38f
                  auipc        s2, 352459
                  xor          s5, s3, a7
21:               blt          t0, t0, 40f
                  sra          a4, a0, a3
                  srai         a7, s11, 27
24:               beq          s0, s3, 37f
                  srli         s1, sp, 1
                  ori          t4, t3, -728
                  slt          a7, t5, t0
                  beq          t0, sp, 38f
                  and          ra, s7, s10
                  bltu         a4, s0, 42f
                  and          a3, t0, s6
                  sll          t1, s8, zero
                  bge          zero, a3, 40f
                  sltiu        gp, t5, 381
                  sub          s10, s8, s1
                  bne          t6, a5, 40f
37:               auipc        a0, 747887
38:               sll          s7, s7, a6
                  srl          tp, s2, t0
40:               or           s6, s1, s5
                  addi         t0, ra, 744
42:               sll          s2, a7, s8
                  ori          t1, s6, 574
                  slt          zero, s4, a1
                  srai         s11, t0, 3
                  beq          t4, a1, 49f
                  slt          s6, t5, a0
                  slti         s7, a2, -484
49:               auipc        s10, 345285
                  srli         s0, s9, 16
                  lui          ra, 520670
                  nop
                  slt          a2, s5, a3
                  slt          zero, a2, a2
                  nop
                  bgeu         s0, t3, 72f
                  sll          t0, a4, s8
                  slli         gp, s6, 28
                  sll          s2, s11, a7
                  xori         t4, s10, -1621
                  bgeu         s6, a0, 74f
                  add          t0, a5, t3
                  srai         a4, s0, 20
                  bge          gp, tp, 70f
                  sub          s10, s5, zero
                  srli         s8, s10, 9
                  nop
                  nop
                  nop
70:               and          a4, s0, a1
                  xori         zero, gp, 1482
72:               srli         s9, t1, 25
                  xor          t3, s8, t3
74:               addi         tp, a5, -572
                  sltiu        s10, s0, 25
                  slli         a4, s6, 20
                  add          s7, gp, tp
                  slt          a7, a5, a7
                  bltu         a3, a2, 80f
80:               or           s5, a0, t1
                  srl          zero, tp, s5
                  beq          t5, s8, 102f
                  nop
                  srai         t6, gp, 14
                  xori         s5, s5, 1409
                  slt          s11, s10, t6
                  sub          t0, gp, s4
                  slti         a2, gp, 1438
                  blt          s2, t1, 99f
                  xor          t0, s9, t5
                  bne          a2, s8, 110f
                  sll          s10, t4, t4
                  beq          s1, a1, 99f
                  lui          s7, 918703
                  nop
                  xori         tp, s3, -270
                  add          s8, s11, s11
                  addi         t3, s0, 1697
99:               xor          gp, ra, t4
                  sra          s5, a2, s5
                  add          t3, a1, s1
102:              beq          a1, s9, 111f
                  sll          a6, s7, tp
                  slti         s8, s0, 1302
                  xor          s4, a7, a1
                  slt          s1, a6, s6
                  add          zero, a4, s5
                  andi         t6, a5, 63
                  xori         s0, t4, -299
110:              srai         a3, s3, 1
111:              srl          t1, t3, a3
                  slt          s9, a3, s0
                  lui          s3, 231343
                  sll          gp, t5, tp
                  bgeu         tp, t1, 134f
                  bge          ra, a7, 135f
                  sltu         a6, gp, t2
                  and          t6, s4, tp
                  slli         ra, s6, 21
                  add          s1, s10, a5
                  slt          a5, t4, a6
                  ori          t4, s4, 260
                  sltu         a0, s0, s1
                  beq          t6, t4, 134f
                  bge          t1, s2, 144f
                  add          s3, s0, a2
                  blt          zero, t2, 130f
                  beq          a0, s8, 138f
                  or           a7, t1, a4
130:              beq          a5, t3, 133f
                  addi         s3, a3, -968
                  bne          gp, a6, 135f
133:              and          s10, sp, a4
134:              blt          s11, t5, 154f
135:              lui          s1, 500097
                  sra          a5, t6, a4
                  srl          s8, s5, s1
138:              xori         t0, t3, -168
                  xori         a7, t1, 1631
                  bltu         s1, s2, 149f
                  andi         s9, a0, 259
                  andi         s4, s9, -1183
                  sub          s4, a7, a3
144:              blt          a5, a4, 147f
                  andi         a5, a2, -1631
                  sub          t0, ra, a5
147:              srai         s3, a2, 15
                  la           s9, region_1+524 #start riscv_load_store_rand_instr_stream_0
                  srai         t3, t3, 4
                  sb           t4, -19(s9)
                  lhu          a2, -58(s9)
                  slti         tp, t6, 1417
                  lui          a7, 533656
                  sb           gp, 31(s9)
                  lbu          t0, 27(s9)
                  xor          s2, a5, s4
                  lb           s1, 19(s9)
                  addi         a6, t1, -1233
                  lb           a0, -64(s9)
                  lbu          s7, 25(s9)
                  sb           s6, 31(s9)
                  lh           ra, 40(s9)
                  sltiu        t3, a3, -1669
                  lbu          a3, -42(s9)
                  lbu          a0, -11(s9)
                  slt          s11, a7, s1
                  sltu         s8, a3, t6
                  sb           gp, 1(s9)
                  sub          s6, t1, s6
                  lb           s10, -54(s9)
                  sh           s11, 6(s9)
                  lb           t4, 25(s9)
                  nop
                  lw           t4, -28(s9)
                  sll          s2, t4, t2
                  ori          a5, s11, 1044
                  sh           ra, -4(s9)
                  sb           s11, -59(s9)
                  lbu          a4, 15(s9)
                  lbu          t4, 41(s9)
                  sb           a4, 26(s9)
                  sh           tp, 14(s9)
                  lb           t6, -47(s9)
                  lbu          gp, -63(s9)
                  slt          t3, t6, a5
                  sub          s0, t0, t5
                  sh           a5, 14(s9)
                  sb           s7, 10(s9)
                  srl          t4, gp, a7
                  lb           a6, -54(s9)
                  lb           a7, -39(s9)
                  srl          t4, a7, gp
                  lbu          a6, 21(s9)
                  lh           a7, 6(s9) #end riscv_load_store_rand_instr_stream_0
                  srli         s10, s2, 17
149:              lui          a7, 440722
                  add          a5, t5, s4
                  andi         t4, s10, 390
                  sltiu        gp, a7, -251
                  bne          ra, a5, 169f
154:              addi         t1, a5, 299
                  srl          s9, s6, a1
                  srai         sp, sp, 14
                  bltu         a0, s8, 174f
                  nop
                  lui          s11, 110030
                  ori          a4, s8, 291
                  xori         s3, s3, -766
                  sltu         s5, a2, zero
                  sltu         s4, t3, t5
                  slli         t4, s11, 9
                  sub          a6, s10, s2
                  bgeu         a0, t3, 169f
                  srai         t3, a6, 3
                  xor          t3, s9, a6
169:              bge          a6, a2, 175f
                  bge          sp, t2, 171f
171:              srl          s2, s4, s6
                  sltiu        t6, a1, -457
                  xori         s7, t0, 1432
174:              sra          t3, a0, a1
175:              slli         s6, a3, 2
                  ori          s9, t6, -121
                  lui          a0, 458523
                  slti         s0, a7, 1386
                  slli         a2, t3, 16
                  srli         s3, t4, 14
                  sltiu        ra, a4, -1816
                  lw           t1, 4(t5)
                  addi         t5, t5, 36
                  xor          s11, a3, s11
241:              addi x26, x6, 0
241:              jalr x26, x26, 0
sub_8:            blt          s9, a6, sub_8_stack_p
                  srli         a7, s9, 23
                  sra          a2, t4, a6
                  add          s9, a3, gp
sub_8_stack_p:    addi         t5, t5, -56
                  sub          s10, s10, t4
                  sw           t1, 4(t5)
                  lui          s5, 404246
                  slt          s10, s10, ra
                  sltiu        a7, t4, -1767
                  bne          t4, s6, 9f
                  srl          a2, s0, a6
                  ori          a2, t4, 886
                  bltu         s6, a1, 12f
                  addi         s8, s0, -1287
                  sll          gp, s5, s2
                  beq          a4, s2, 12f
9:                bgeu         s9, s7, 12f
                  ori          a0, a1, -744
                  auipc        s11, 887106
12:               auipc        s0, 849163
                  lw           t1, 4(t5)
                  and          s3, t4, t2
                  addi         t5, t5, 56
                  sub          t3, a0, s11
                  sltiu        s6, zero, 456
                  nop
                  srl          s1, sp, a5
                  auipc        zero, 46356
29:               addi x4, x6, 1
29:               jalr x4, x4, 0
sub_1:            auipc        s9, 439570
                  bgeu         t2, t3, sub_1_stack_p
                  addi         t4, s11, 1011
                  xor          s3, a6, s6
                  srli         s5, a2, 16
                  sub          t0, s11, s1
sub_1_stack_p:    addi         t5, t5, -8
                  sw           t1, 4(t5)
                  andi         t3, s4, 1454
                  and          s3, s3, t0
                  sltu         s2, a5, tp
                  srli         a6, s9, 3
                  srai         s9, a6, 5
                  xor          ra, s8, s11
                  sub          s5, a6, s11
                  srl          s3, a0, a5
                  sltu         t4, gp, s9
                  andi         sp, a5, -1894
                  bne          a3, t1, 17f
                  add          t4, a1, s7
                  srai         a4, s2, 13
                  bne          a2, a4, 19f
                  sltiu        s1, a7, 1527
                  sltiu        zero, tp, -1319
                  sll          s2, s4, t6
                  slli         gp, s4, 20
                  ori          s8, a1, -315
                  blt          s7, s9, 27f
                  sltu         s2, s9, s1
17:               blt          s6, ra, 20f
                  srli         gp, a5, 28
19:               xor          s0, a7, a4
20:               xori         a7, s8, -1689
                  blt          a5, a2, 34f
                  sltiu        s6, s8, 1205
                  xor          a6, tp, s10
                  auipc        s0, 749910
                  auipc        t1, 4619
                  bltu         s4, t6, 46f
27:               sltu         a0, ra, s1
                  sra          gp, s7, t4
                  lui          s1, 898923
                  add          s6, a3, s9
                  slt          tp, tp, s5
                  bltu         t5, t5, 44f
                  auipc        s5, 277877
34:               sub          t0, ra, tp
                  sltiu        a7, zero, 1108
                  slli         t4, t5, 13
                  nop
                  sltu         s8, s10, t3
                  xori         s6, s2, -375
                  lui          s5, 363704
                  xori         s2, t6, -1867
                  slti         s1, s3, -772
                  srli         t1, s6, 13
44:               and          t6, s1, t5
                  sltiu        a7, s0, 1487
46:               blt          t1, t3, 66f
                  slt          a0, a7, a6
                  lui          a3, 602851
                  beq          a6, s3, 55f
                  srai         s7, s6, 4
                  bgeu         a5, a2, 70f
                  auipc        s4, 408939
                  srai         s0, a7, 11
                  slti         s3, t3, -2001
55:               bltu         s6, s6, 66f
                  sltiu        a0, a3, 1474
                  slt          s8, t4, a6
                  xori         zero, a2, 819
                  bge          s4, s1, 63f
                  sub          ra, s5, s11
                  xori         s1, s11, 731
                  nop
63:               sltu         sp, s11, tp
                  bgeu         s8, a2, 65f
65:               bltu         s5, zero, 73f
66:               slli         t3, t6, 7
                  add          s10, a0, ra
                  sltiu        a0, s1, -1063
                  xor          gp, t3, t5
70:               auipc        t3, 901961
                  slti         s5, s11, 1943
                  slli         tp, s8, 12
73:               bgeu         s11, t5, 79f
                  slli         sp, s2, 20
                  xor          s8, a2, s1
                  blt          t5, a6, 83f
                  beq          a2, s4, 93f
                  or           t1, s8, s11
79:               bltu         s10, tp, 81f
                  xori         sp, s1, -1057
81:               sltiu        s1, a2, -263
                  srl          tp, s8, zero
83:               bgeu         tp, t2, 86f
                  xori         ra, t2, -205
                  bgeu         s9, s3, 88f
86:               sra          a3, sp, a0
                  add          s3, s11, s9
88:               addi         s2, gp, 1453
                  sra          sp, tp, t3
                  slli         s4, a0, 18
                  beq          tp, s5, 96f
                  nop
93:               sra          s11, s8, s3
                  bgeu         a1, s6, 96f
                  sltu         s4, t1, t6
96:               add          a3, t3, s0
                  add          s11, s5, s1
                  srli         zero, t0, 28
                  or           s4, a7, s9
                  sub          s3, s9, zero
                  andi         s2, a4, -706
                  nop
                  lw           t1, 4(t5)
                  xori         s0, s9, -1668
                  addi         t5, t5, 8
                  srl          s9, s10, a5
119:              addi x20, x6, 0
119:              jalr x20, x20, 0
sub_5:            andi         t6, s4, 1192
                  addi         t5, t5, -16
                  srli         s9, a4, 6
                  auipc        sp, 716787
                  sra          t4, s9, t6
                  sra          s11, a5, t2
                  srli         s3, s5, 6
                  sw           t1, 4(t5)
                  sra          a3, t3, a1
                  add          t6, s1, a4
                  la           sp, region_0+810 #start riscv_load_store_rand_instr_stream_1
                  lbu          s9, -5(sp)
                  sb           s10, 7(sp)
                  srl          s2, gp, a4
                  ori          s10, s1, 1638
                  sub          s8, tp, s0
                  lb           a4, 10(sp)
                  xori         s1, ra, 1557
                  and          a2, s11, s4
                  or           zero, s0, s3
                  lb           t4, 3(sp)
                  sltu         t1, t3, a5
                  sra          tp, t3, a2
                  slt          ra, t4, s7
                  lbu          a2, 7(sp)
                  sb           s5, 9(sp)
                  xori         t6, t3, -158
                  ori          ra, a1, -465
                  slli         t1, t3, 4
                  ori          s2, zero, -883
                  nop
                  lbu          s6, 3(sp)
                  sll          s9, s4, ra
                  add          ra, a0, s9
                  sb           s7, -15(sp)
                  sltiu        s4, s0, -810
                  srl          s5, ra, s4
                  sw           ra, 10(sp)
                  lh           s6, 16(sp)
                  sltu         ra, s0, s10
                  slli         s8, s6, 29
                  sra          s0, sp, s0
                  or           a4, gp, t1
                  lbu          s6, -10(sp)
                  sb           s11, -6(sp)
                  sub          s6, a3, t0
                  or           t1, s4, t2
                  lbu          s1, -7(sp)
                  sb           a3, -13(sp)
                  add          zero, s0, s7
                  lb           s6, 6(sp)
                  sb           a3, 14(sp) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_0+188 #start riscv_load_store_rand_instr_stream_0
                  addi         a6, ra, 1736
                  and          s10, t6, a6
                  srli         a7, a0, 5
                  add          s10, sp, t6
                  lw           a2, 16(tp)
                  sub          s0, gp, a1
                  slt          s11, a4, s8
                  lhu          s4, 2(tp)
                  xori         s11, tp, -1882
                  xori         t0, a2, 1893
                  slt          s1, s4, a1
                  lbu          a5, 15(tp)
                  slti         s1, t4, 911
                  srl          t6, a2, a7
                  and          a6, s6, a5
                  slli         a2, gp, 17
                  sh           sp, -8(tp)
                  lbu          a3, -5(tp)
                  lh           s11, -6(tp)
                  lbu          s1, 0(tp)
                  slli         a4, s4, 2
                  sh           s1, 0(tp)
                  sltiu        s0, tp, -1177
                  lb           t0, -13(tp)
                  auipc        s7, 36202
                  and          s4, s8, s6
                  auipc        s1, 825890
                  or           ra, a6, t4
                  slti         ra, t1, -1363
                  lb           s3, 11(tp) #end riscv_load_store_rand_instr_stream_0
                  or           sp, s8, s10
                  and          s4, t4, tp
                  xori         sp, a6, 1134
                  add          tp, ra, s10
                  xor          a4, t2, a5
                  ori          s4, ra, -680
                  bgeu         zero, t1, 16f
                  addi         a3, t5, 1327
                  sltu         s11, a6, tp
                  bge          t0, gp, 10f
10:               sub          s10, a4, a7
                  srl          gp, ra, s1
                  slli         s2, t6, 28
                  sra          s9, a7, a5
                  bltu         a3, t2, 23f
                  sll          s8, s10, t5
16:               slli         t6, gp, 8
                  bne          a2, t4, 28f
                  sltiu        a2, s9, 589
                  sra          t0, s10, a4
                  lui          t3, 135248
                  add          s1, s10, t6
                  bltu         ra, a4, 27f
23:               beq          a4, s7, 26f
                  or           a7, s8, ra
                  bltu         s9, a2, 30f
26:               or           t4, sp, a1
27:               auipc        s7, 809197
28:               nop
                  slli         t3, t5, 16
30:               slt          s1, a3, s6
                  srai         t4, t4, 30
                  or           s6, s3, a6
                  auipc        t3, 49422
                  lui          t6, 598190
                  sra          s10, a5, gp
                  bge          s9, sp, 56f
                  sll          s8, s5, t4
                  and          s10, a4, s7
                  or           a7, s7, s10
                  sltu         t1, t2, a0
                  blt          a1, a5, 55f
                  slli         zero, s0, 0
                  ori          zero, a7, 34
                  add          a6, t3, s4
                  srl          t3, s6, s7
                  ori          s8, t6, -1669
                  beq          s5, a6, 66f
                  blt          t4, a4, 49f
49:               srai         a7, s7, 14
                  bne          t6, t5, 52f
                  slti         s11, ra, 1997
52:               auipc        t1, 232262
                  lui          gp, 112035
                  auipc        a2, 268758
55:               bgeu         s1, a5, 74f
56:               sll          zero, s6, t1
                  sra          s8, ra, t0
                  xor          s2, s10, a7
                  or           s10, s0, s1
                  bltu         s0, a7, 67f
                  srli         t3, t4, 27
                  auipc        s7, 391662
                  srai         s1, s6, 16
                  beq          gp, s9, 80f
                  bge          s1, s8, 71f
66:               addi         a4, s7, 938
67:               bltu         a6, sp, 72f
                  xori         t3, s7, -553
                  srl          t3, a2, s6
                  sll          a7, a0, t5
71:               srai         a7, s2, 17
72:               and          tp, s5, tp
                  slti         a2, s10, -388
74:               xori         s8, tp, -1991
                  bge          s10, t4, 89f
                  or           s6, t2, tp
                  ori          a0, a3, -490
                  xori         sp, t4, -826
                  slli         a7, zero, 12
80:               blt          s9, s3, 86f
                  lui          s11, 799120
                  sub          s0, s5, t4
                  nop
                  bgeu         sp, s1, 99f
                  srai         s10, a7, 7
86:               beq          t3, s0, 90f
                  ori          tp, zero, 1512
                  or           a5, zero, s10
89:               auipc        a7, 991402
90:               sra          a5, s9, a6
                  slt          s2, s5, s10
                  lui          s3, 109259
                  auipc        t0, 881268
                  blt          s10, s5, 102f
                  sub          s1, t2, a3
                  sltiu        a2, s6, 1521
                  srai         a4, s6, 13
                  srai         s10, s10, 26
99:               sltu         ra, s2, s0
                  sltu         t0, t4, s2
                  sltiu        a0, a3, 977
102:              ori          ra, s10, -651
                  sltiu        tp, t0, 1221
                  add          s5, gp, s11
                  sub          tp, s3, s10
                  bltu         s0, a0, 115f
                  srl          s0, a6, gp
                  bne          a4, a2, 110f
                  xori         s9, a7, -595
110:              nop
                  and          a5, a5, a5
                  bge          s0, s2, 132f
                  bne          s2, zero, 116f
                  or           t6, t3, ra
115:              auipc        zero, 553525
116:              srli         t6, a7, 8
                  sra          a3, s8, a2
                  xori         s4, s1, -1709
                  addi         t3, s5, 1721
                  bne          gp, t5, 134f
                  bltu         s4, t4, 135f
                  slti         ra, t3, 1269
                  slti         s2, t2, -1988
                  slli         t4, s9, 3
                  bgeu         s4, s0, 139f
                  add          s4, s5, t4
                  sll          s4, a5, s3
                  blt          t5, t1, 139f
                  add          s3, sp, a7
                  xor          s11, t3, tp
                  slli         zero, a6, 12
132:              nop
                  sltiu        gp, s11, 756
134:              sltu         s7, a5, s8
135:              nop
                  sra          s2, tp, s8
                  blt          a1, s1, 141f
                  sltiu        t3, a5, 680
139:              slt          a0, a6, a5
                  slli         s6, ra, 10
141:              add          s1, t1, s9
                  lui          s10, 955938
                  slti         s4, s5, -669
                  and          tp, a7, ra
                  slti         t4, s0, 512
                  or           t4, s4, a0
                  beq          a5, s10, 163f
                  sll          s1, t2, a3
                  nop
                  andi         tp, a6, -1682
                  slt          s5, ra, a3
                  bgeu         gp, a1, 166f
                  lui          s1, 454763
                  sltu         t0, s9, s10
                  slt          s5, a0, s1
                  bge          t6, s7, 175f
                  or           tp, a1, s7
                  addi         s2, gp, 1484
                  blt          t1, s8, sub_5_j8 #branch to jump instr
                  ori          s11, a6, 919
                  slt          a7, s8, a0
                  slli         s2, t0, 7
                  sltiu        s3, a4, 422
sub_5_j8:         jal          t1, sub_6 #jump sub_5 -> sub_6
                  and          s3, s10, s0
                  sra          a4, s10, gp
                  sub          s2, a4, t2
                  srli         s5, a4, 21
                  bltu         a6, s10, 171f
163:              sll          a4, gp, a5
                  srli         s6, tp, 27
                  nop
166:              addi         s1, s6, -1418
                  or           tp, gp, sp
                  bne          s0, ra, 177f
                  xor          a0, t4, s5
                  slli         s3, s9, 21
171:              blt          t5, s8, 191f
                  bgeu         s10, a7, 174f
                  addi         s9, a7, -1890
174:              bltu         s5, a1, 179f
175:              sll          s2, s11, gp
                  or           t3, a0, s7
177:              andi         s11, s4, 30
                  bge          s6, s4, 192f
179:              andi         a4, sp, 136
                  andi         s10, s5, -984
                  bltu         s10, s3, 184f
                  slt          s4, zero, s7
                  bge          gp, t4, 193f
184:              sltu         t4, a0, s5
                  slti         s5, t1, -786
                  srai         s11, zero, 15
                  srl          tp, a6, s2
                  blt          t5, s0, 193f
                  srli         t6, a0, 1
                  sltiu        ra, gp, 958
191:              and          s8, a3, s8
192:              slt          a5, a2, s10
193:              bge          s8, t3, 196f
                  slli         a0, s10, 15
                  bltu         a7, s8, 196f
196:              blt          ra, s10, 203f
                  xor          a3, s6, a0
                  xor          s4, gp, t1
                  or           a5, t4, t5
                  or           s3, t0, a6
                  slli         ra, t1, 18
                  bltu         a5, sp, 216f
203:              slt          a2, t1, zero
                  srai         s5, s8, 31
                  nop
                  xori         a3, t2, 39
                  bge          zero, s1, 213f
                  srli         a0, s7, 13
                  bgeu         s9, s1, 215f
                  and          s9, t6, s1
                  beq          sp, a0, 213f
                  bgeu         t6, t5, 231f
213:              srl          tp, s7, s0
                  and          a4, gp, a6
215:              xori         t3, a7, 16
216:              andi         t6, s10, -1456
                  andi         t6, a2, 992
                  sltu         s3, s9, sp
                  lui          gp, 934036
                  sra          s8, t3, a0
                  lui          gp, 467418
                  addi         tp, t4, -1557
                  slli         a2, s6, 13
                  sltu         a0, t2, a0
                  or           a7, t2, t5
                  sra          s11, t4, t6
                  add          a5, s7, t0
                  srai         s1, s5, 5
                  beq          tp, s3, 243f
                  bgeu         t0, s9, 244f
231:              ori          s10, a6, 1306
                  beq          a2, a6, 243f
                  sra          ra, a5, zero
                  srai         s10, ra, 16
                  srli         s0, a7, 26
                  srl          s0, a4, t1
                  sltu         s5, s2, t6
                  beq          a4, s4, 246f
                  bne          s3, a0, 254f
                  bne          sp, a6, 260f
                  xor          s11, s9, a7
                  auipc        a7, 182036
243:              and          s5, a7, a0
244:              nop
                  or           s9, s1, s2
246:              sll          tp, a2, s10
                  sra          t0, a4, t1
                  sra          s3, s2, zero
                  and          a2, s11, t4
                  addi         s4, a1, 1910
                  blt          t2, zero, 252f
252:              and          tp, s7, a6
                  bne          t2, s2, 264f
254:              sltiu        s6, t0, 1340
                  srl          t3, s4, s1
                  srl          a5, s9, zero
                  ori          s2, a6, 1050
                  addi         ra, a2, -1707
                  add          t1, s0, t1
260:              and          s3, t2, tp
                  nop
                  slli         a3, t5, 5
                  bltu         s1, s4, 268f
264:              slti         s2, s9, -1309
                  srli         a5, t0, 28
                  srl          gp, s7, s2
                  add          s10, s2, s1
268:              sll          a5, zero, gp
                  xor          t0, sp, t5
                  andi         s2, t4, 1278
                  bgeu         a5, gp, 285f
                  auipc        s8, 464136
                  bne          t1, t3, 287f
                  andi         a5, t4, -1077
                  or           s10, a2, gp
                  and          gp, t3, gp
                  xor          s2, s4, s4
                  sltiu        s3, a4, -1514
                  bge          a2, t6, 283f
                  lui          s8, 532080
                  bne          ra, a4, 291f
                  xori         a2, s1, 1523
283:              and          s4, a6, a7
                  srl          a0, a7, s0
285:              and          s3, t6, a3
                  bltu         a7, s10, 300f
287:              sll          a6, s8, t4
                  beq          s5, s10, 297f
                  sll          a7, s7, t0
                  bgeu         s10, s0, 296f
291:              slt          t6, gp, s1
                  slt          s9, a6, t6
                  srli         a3, a3, 12
                  bltu         s9, s8, 308f
                  and          t1, s7, s7
296:              sll          t3, a5, t2
297:              beq          t0, a2, 298f
298:              slti         s5, gp, -1154
                  auipc        s4, 543756
300:              or           a3, ra, s3
                  bge          ra, zero, 306f
                  sra          zero, s5, s9
                  xor          s7, a3, a2
                  auipc        s5, 110929
                  blt          a2, tp, 319f
306:              auipc        a0, 888601
                  srli         s8, gp, 13
308:              lui          s6, 63213
                  sltu         a6, a2, a6
                  sra          s5, ra, s4
                  addi         s5, s10, 1768
                  srli         a2, ra, 20
                  bltu         gp, s6, 322f
                  sub          t4, ra, s6
                  xor          s11, s8, t4
                  auipc        t6, 801230
                  bge          zero, s11, 322f
                  bltu         s3, s7, 338f
319:              slt          t6, t2, s11
                  sra          t6, a5, s3
                  beq          s2, gp, 340f
322:              andi         s10, a1, -592
                  lui          a6, 1729
                  beq          s8, s3, 335f
                  sll          s8, s4, a4
                  xor          s6, s8, t5
                  addi         a3, a3, 1471
                  srl          tp, s7, sp
                  sltiu        a7, t0, 260
                  auipc        s0, 750247
                  xori         ra, a3, 141
                  srli         s9, zero, 15
                  slli         s6, t0, 19
                  sltiu        s9, s7, -1810
335:              sll          s10, t5, s3
                  srl          s10, s3, a4
                  ori          s4, s4, 518
338:              and          a2, s6, s0
                  bge          a1, a5, 350f
340:              bne          a1, s5, 348f
                  bgeu         s6, s4, 344f
                  sra          s5, a3, s0
                  nop
344:              srai         t4, a4, 7
                  slli         a4, sp, 3
                  srai         s2, zero, 7
                  nop
348:              bgeu         s6, s1, 351f
                  srl          gp, a4, s2
350:              ori          s9, a4, 1539
351:              sltu         s11, t5, s10
                  sll          s3, s8, a2
                  auipc        s10, 127917
                  lw           t1, 4(t5)
                  slli         s1, s5, 16
                  addi         t5, t5, 16
                  and          gp, t4, sp
448:              addi x25, x6, 1
448:              jalr x25, x25, 0
sub_9:            addi         t5, t5, -56
                  slli         t6, t4, 24
                  sltiu        s5, s7, 1341
                  sw           t1, 4(t5)
                  xor          s11, t1, sp
                  ori          s3, a2, -787
                  srli         s7, a5, 14
                  srai         t3, t6, 28
                  slt          gp, s6, tp
                  ori          s5, s4, 794
                  nop
                  ori          a0, gp, -271
                  sltiu        a2, t6, -1961
                  and          s5, a4, t5
                  add          s1, s8, zero
                  addi         a6, sp, 1174
                  sll          a6, s6, t5
                  addi         a7, s5, 565
                  lw           t1, 4(t5)
                  addi         t5, t5, 56
                  xor          gp, t3, s3
                  ori          a5, a1, -68
                  add          a3, s11, t2
                  add          s8, s10, s1
24:               addi x29, x6, 0
24:               jalr x29, x29, 0
sub_10:           addi         t5, t5, -40
                  or           ra, t1, a1
                  sw           t1, 4(t5)
                  and          tp, s6, a1
                  xori         t3, ra, -1870
                  sltiu        s6, a3, 1255
                  beq          s8, a3, 6f
                  auipc        a3, 1042414
                  or           a5, a0, s2
                  bgeu         a0, s0, 15f
                  nop
                  bltu         t3, s0, 11f
6:                add          s6, a5, s1
                  slli         t0, a7, 9
                  bgeu         a1, s8, 11f
                  slti         s4, t3, 680
                  and          a0, s0, t5
11:               bge          a1, a1, 27f
                  nop
                  add          sp, s7, a3
                  bgeu         a5, t6, 34f
15:               blt          a4, s2, 28f
                  sub          s10, t3, a0
                  lui          t4, 647806
                  add          s0, a5, s3
                  slti         s4, s5, 26
                  sra          s8, a2, t1
                  addi         t3, s8, 1260
                  sll          s1, sp, a3
                  bne          s1, s4, 30f
                  slti         s3, sp, -696
                  ori          t6, s4, 124
                  or           s4, s6, gp
27:               sra          a5, zero, gp
28:               sub          gp, s6, t1
                  bltu         s6, s0, 46f
30:               xor          s0, s9, s7
                  sra          s5, s8, a1
                  addi         s1, t2, -714
                  xor          s7, s10, t1
34:               or           zero, tp, s10
                  blt          s5, t0, 37f
                  xor          a4, a1, s3
37:               or           s7, s6, a2
                  blt          s3, t4, 58f
                  srl          a5, s4, a6
                  sra          t6, s3, s0
                  blt          s5, s1, 51f
                  srl          s2, t6, a3
                  bltu         a0, t5, 57f
                  sltu         a0, s7, s4
                  sra          t3, a2, a3
46:               slt          s4, a3, a0
                  bge          sp, s6, 59f
                  slli         s9, t6, 30
                  srli         a0, a4, 3
                  beq          s8, t3, 60f
51:               add          t1, s10, a2
                  bltu         ra, a7, 57f
                  slt          s7, t0, s4
                  or           t1, a2, a1
                  sltiu        a7, s6, -862
                  slt          a2, s10, a3
57:               ori          t3, s2, 374
58:               add          s3, t3, a1
59:               sub          tp, s8, s5
60:               bne          ra, a3, 79f
                  beq          a2, a2, 62f
62:               lui          t6, 609476
                  nop
                  srl          s4, sp, s5
                  and          a6, a4, a3
                  add          s0, s8, a3
                  bgeu         a4, sp, 78f
                  ori          t6, s7, -1600
                  la           sp, region_0+747 #start riscv_load_store_rand_instr_stream_0
                  sltu         a0, t4, zero
                  lb           s8, -242(sp)
                  slti         a6, s6, 1454
                  sltu         s6, gp, gp
                  addi         zero, a6, -276
                  addi         a2, s1, 1240
                  slt          t6, a7, s1
                  srli         s10, s7, 15
                  and          a4, s0, tp
                  sb           a2, -48(sp)
                  nop
                  lhu          s8, 169(sp)
                  xori         a2, s4, -782
                  sb           s3, 144(sp)
                  ori          s3, tp, -600
                  sra          a6, a5, t0
                  sll          t0, gp, tp
                  lhu          s0, -229(sp)
                  lh           s4, -101(sp)
                  add          ra, t0, a0
                  srl          a5, s9, s7
                  xori         t4, s10, -194
                  lw           s6, 25(sp)
                  sll          s10, s6, s11
                  srai         gp, gp, 30
                  andi         s7, a6, -549
                  xori         s5, s4, -476
                  lbu          t6, -7(sp)
                  sh           a0, 15(sp)
                  sltu         s7, zero, a3
                  sh           ra, 25(sp) #end riscv_load_store_rand_instr_stream_0
                  srli         t0, s2, 29
                  sra          s3, s2, a0
                  slti         t3, sp, -465
                  lui          a0, 296827
                  andi         a4, s0, -665
                  srli         t4, s2, 0
                  slt          t1, s7, a0
                  slli         a3, s3, 16
                  ori          s2, a0, -1928
78:               xori         s11, a3, -1731
79:               xori         gp, s8, 1123
                  sra          a6, a2, sp
                  srli         a3, s8, 6
                  blt          a7, a7, 90f
                  or           tp, sp, t2
                  xori         s11, t1, 2030
                  bge          s6, t0, 94f
                  bne          a0, tp, 87f
87:               sltiu        a2, s8, -13
                  and          a6, ra, a6
                  andi         s2, t5, -468
90:               srli         s3, gp, 6
                  sll          s7, t0, s10
                  srai         gp, a2, 5
                  bge          t2, a4, 113f
94:               addi         s1, zero, 1609
                  andi         s5, a2, 499
                  srli         t3, s3, 27
                  sll          a4, a7, gp
                  blt          s3, a6, 104f
                  srai         s3, t6, 24
                  slli         a4, s8, 31
                  srli         s4, a3, 17
                  sub          s5, a2, t5
                  addi         t1, a5, 483
104:              srl          s5, s0, a4
                  sub          s11, t2, a0
                  sltu         s5, zero, s9
                  auipc        s6, 825758
                  ori          t4, a5, 245
                  srai         a2, t1, 9
                  sra          s8, s5, s1
                  or           s11, t6, t0
                  lui          zero, 610627
113:              sra          t4, s1, ra
                  sltu         s11, a1, s10
                  sltiu        a5, a5, 1612
                  beq          t4, s10, 130f
                  or           a4, gp, s1
                  blt          sp, gp, 124f
                  slti         a6, a6, 724
                  sub          t4, s3, s7
                  bne          zero, s11, 131f
                  sltu         ra, s10, a4
                  srl          s6, a1, a6
124:              blt          s3, a2, 139f
                  nop
                  sub          s10, s9, t3
                  sltu         a5, s8, s11
                  sltiu        t0, ra, 78
                  nop
130:              andi         s4, sp, -407
131:              srl          a3, s0, s5
                  srai         s6, t6, 17
                  srli         s5, a3, 22
                  sra          s3, a3, a3
                  srai         t6, s4, 4
                  ori          s5, t2, -1478
                  bne          s10, s10, 154f
                  sub          s7, s6, s0
139:              nop
                  sll          sp, s7, tp
                  bge          t6, a3, 147f
                  or           s10, t2, t3
                  srli         sp, s4, 20
                  or           s6, s0, tp
                  slli         s7, a6, 3
                  sltu         t1, s7, t3
147:              nop
                  slli         s0, tp, 22
                  srai         s9, t0, 10
                  xori         a2, s8, 1902
                  bne          s5, s4, 156f
                  xori         a2, t0, 1412
                  andi         t1, s9, -1925
154:              lui          t1, 58031
                  bltu         t6, a6, 171f
156:              srl          t6, s6, t5
                  srli         a4, ra, 27
                  xori         s5, t5, -362
                  sub          a4, s10, sp
                  bgeu         s6, t1, 175f
                  sll          a3, a6, zero
                  and          s0, a0, s11
                  slt          sp, t6, s3
                  nop
                  sra          t6, a1, s0
                  bgeu         a6, a4, 180f
                  sub          s7, s10, a3
                  slti         s6, t0, 1556
                  bltu         t1, s8, 181f
                  sub          s3, s0, a0
171:              lui          a0, 872719
                  andi         s4, s3, -1748
                  sltu         t1, s7, a1
                  sll          t1, s8, s6
175:              sltiu        zero, s5, -280
                  sll          t0, t5, s8
                  and          s4, a6, s1
                  slt          a7, s9, t2
                  sra          t3, a4, a1
180:              bge          t1, s9, 189f
181:              andi         a7, sp, -347
                  add          s7, t5, a5
                  ori          tp, a0, -10
                  bge          t5, ra, 186f
                  blt          a5, tp, 195f
186:              slt          s4, a0, s7
                  nop
                  bgeu         s11, s1, 201f
189:              srl          a3, t3, s9
                  xori         a3, a1, 1515
                  xor          gp, t0, s7
                  slt          sp, s0, s4
                  sra          s2, a5, a6
                  bgeu         t4, s1, 211f
195:              ori          s6, a5, -576
                  srl          a4, t0, s10
                  bne          t4, zero, 216f
                  sra          s5, t2, zero
                  bne          t5, a5, 209f
                  srai         s8, s7, 26
201:              ori          s6, a1, 2047
                  slti         tp, a1, 1000
                  bne          a0, s8, 209f
                  nop
                  slt          a3, s0, a6
                  auipc        gp, 238534
                  sltiu        a4, a3, 1437
                  sltiu        ra, s5, -47
209:              or           s1, t4, a0
                  bgeu         t2, s6, 220f
211:              andi         a4, t1, 906
                  slti         a2, gp, 1404
                  slli         a5, s11, 10
                  beq          t1, s0, 220f
                  srai         s11, t3, 13
216:              sltiu        a5, s4, 1604
                  sra          gp, gp, s3
                  srai         s10, t2, 4
                  blt          s4, s0, 221f
220:              sub          t1, tp, s8
221:              slt          s3, t3, s9
                  lw           t1, 4(t5)
                  ori          a3, t3, -854
                  or           a4, s10, s7
                  srl          s7, s10, s6
                  lui          s1, 419596
                  addi         t5, t5, 40
                  addi         a4, ra, 1123
                  sra          s4, a6, t5
268:              addi x29, x6, 0
268:              jalr x29, x29, 0
sub_2:            sltiu        s8, t3, 1987
                  lui          s10, 401156
                  addi         s11, s5, -1148
                  addi         t5, t5, -32
                  sltiu        tp, a6, 1540
                  sw           t1, 4(t5)
                  slli         a7, gp, 17
                  xori         s8, s2, 1326
                  add          s11, t3, s11
                  srli         a0, t1, 27
                  xori         t3, zero, -1351
                  ori          a6, s6, -256
                  la           tp, sub_3
                  nop
                  slt          a4, a3, s10
                  addi         tp, tp, 695
                  sra          s4, s7, t4
                  lui          s10, 464930
sub_2_j7:         jalr         t1, tp, -695 #jump sub_2 -> sub_3
                  la           a6, region_0+102 #start riscv_load_store_rand_instr_stream_4
                  srai         t4, a2, 14
                  lbu          s9, 16(a6)
                  srli         gp, zero, 25
                  lb           gp, -15(a6)
                  lw           zero, 10(a6)
                  lbu          s11, -12(a6)
                  lui          s3, 597821
                  sub          sp, t6, t0
                  lhu          a7, 0(a6)
                  lb           t0, 11(a6)
                  andi         ra, zero, -1281
                  sra          s7, a2, a1
                  lbu          s0, -7(a6)
                  sh           t5, 4(a6)
                  lh           s4, 14(a6)
                  srl          s8, s0, s4
                  sltiu        t1, sp, -389
                  sh           a0, 6(a6)
                  xori         s4, s6, -189
                  lbu          s7, -3(a6)
                  sb           a7, -2(a6)
                  slt          a5, s5, a5
                  slti         s1, a6, -690
                  lb           tp, -13(a6)
                  lb           s1, 2(a6)
                  srli         s5, s7, 1
                  lbu          s11, 15(a6)
                  lbu          ra, -13(a6)
                  addi         gp, tp, 617
                  xori         s7, t5, -1321
                  sw           s3, -2(a6)
                  sh           gp, 10(a6)
                  lb           a5, 5(a6)
                  srai         s2, a4, 10
                  sltu         t3, s9, s7
                  lb           a2, 10(a6)
                  sb           a1, -4(a6)
                  lb           t4, 15(a6)
                  sw           a7, 10(a6)
                  lb           a7, 9(a6)
                  lh           s4, 6(a6)
                  slti         t3, t5, 1435
                  sb           t0, -5(a6)
                  lhu          s1, -8(a6)
                  andi         a7, a7, 1702
                  lbu          s1, 15(a6)
                  ori          t0, t5, 1702
                  sub          t1, s9, s2
                  xori         s2, t6, -785
                  lh           t1, -12(a6)
                  lhu          a3, 14(a6) #end riscv_load_store_rand_instr_stream_4
                  la           t3, region_1+214 #start riscv_load_store_rand_instr_stream_3
                  slt          a3, sp, t3
                  auipc        s8, 241282
                  sb           s7, 63(t3)
                  ori          a5, s8, -1489
                  add          s6, a3, s5
                  srl          t4, s8, s1
                  xori         t1, t3, -429
                  sb           t5, 19(t3)
                  xori         s2, s1, -1011
                  lb           s7, 253(t3)
                  lb           a6, 40(t3)
                  slt          s10, gp, a4
                  sb           s9, 187(t3)
                  addi         a7, s2, -977
                  sb           s1, 176(t3)
                  slt          ra, s0, t0
                  sll          s9, a6, a4
                  lh           ra, 236(t3)
                  lhu          s7, 190(t3)
                  sb           s3, 75(t3)
                  slli         a0, s10, 18
                  ori          s10, t2, -214
                  sh           t5, -118(t3)
                  auipc        t6, 358472
                  lb           s1, 255(t3)
                  lh           s5, -32(t3)
                  lh           ra, -194(t3)
                  xor          ra, a1, s8
                  srli         s11, a5, 14
                  and          s7, s0, t0
                  nop
                  lb           s6, -31(t3)
                  sh           tp, 164(t3)
                  lui          s7, 487664
                  sltu         a3, a2, a4
                  add          s1, a4, s5
                  slti         t0, s5, 1143
                  sb           s0, -127(t3)
                  sh           t3, 132(t3)
                  sb           a7, 231(t3)
                  or           a5, t5, s10
                  lw           s6, 106(t3) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_1+432 #start riscv_load_store_rand_instr_stream_0
                  lbu          gp, -67(s9)
                  ori          s10, ra, -736
                  and          a6, tp, s11
                  srli         s3, s5, 20
                  sltiu        s5, s5, 1164
                  xori         s1, s1, -1225
                  lui          t0, 519358
                  and          s7, t4, t2
                  sh           t5, -194(s9)
                  sub          sp, a7, t4
                  sub          sp, t2, t3
                  auipc        s4, 909326
                  sh           s3, -162(s9)
                  ori          s11, a3, 1408
                  lh           s7, 82(s9)
                  lbu          t6, 55(s9)
                  or           a5, t0, s3
                  lh           a7, 128(s9)
                  xor          ra, s11, zero
                  slt          a0, s0, t3
                  lui          ra, 644892
                  slt          a0, a3, s11
                  lbu          s11, -7(s9)
                  lb           s1, -251(s9)
                  sb           s9, -199(s9)
                  auipc        ra, 823525
                  xor          t6, s11, a7
                  andi         a4, s5, -603
                  sll          a4, zero, a1
                  and          a0, zero, a0
                  lb           gp, -53(s9)
                  srli         s11, t5, 5
                  slt          a6, gp, s6
                  andi         a3, sp, 319
                  sb           gp, -97(s9)
                  lbu          gp, -71(s9)
                  lhu          s8, 146(s9)
                  slt          a0, t4, s8
                  sll          s1, s4, a5
                  sltiu        s8, s5, 291
                  sltu         a3, zero, s7
                  lh           s0, -80(s9) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+741 #start riscv_load_store_rand_instr_stream_1
                  sll          t0, t6, s3
                  lb           s5, -14(sp)
                  slti         tp, s10, -148
                  sltiu        s6, s2, 1923
                  sb           t3, 2(sp)
                  lh           a3, 11(sp)
                  lbu          s5, 12(sp)
                  sb           a1, 12(sp)
                  slli         zero, s6, 0
                  lb           a2, 16(sp)
                  lb           s2, -14(sp)
                  sra          s11, a5, a4
                  xor          s2, a7, a7
                  srli         tp, a7, 27
                  xori         t6, a6, 73
                  slt          a3, tp, s3
                  srai         s6, s7, 29
                  addi         s0, a1, 1420
                  lb           s0, 14(sp)
                  lbu          s11, 3(sp)
                  sw           a3, -1(sp)
                  auipc        t1, 586278
                  sh           sp, 9(sp)
                  slt          s7, s5, a6
                  sw           s9, -1(sp)
                  lbu          t0, 8(sp)
                  nop
                  sub          s11, zero, a3
                  and          s8, t0, a0
                  lbu          s0, 0(sp)
                  sb           tp, -1(sp)
                  lbu          s6, -11(sp)
                  add          a6, s5, tp
                  sll          s4, a1, s7
                  lb           s5, -4(sp)
                  lhu          s3, -15(sp)
                  lhu          gp, -11(sp)
                  sb           t2, 6(sp)
                  sra          s1, a2, tp
                  lhu          s1, -7(sp)
                  sltu         t0, a5, s0
                  sltiu        a6, gp, -1635
                  lb           s8, 9(sp)
                  sltu         s4, a3, t1
                  sb           t4, -12(sp)
                  andi         s4, s1, -1626
                  lb           a5, 14(sp)
                  sb           s4, -9(sp)
                  slti         a7, a5, 886
                  lw           s0, -5(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_0+357 #start riscv_load_store_rand_instr_stream_2
                  sw           tp, 3(s4)
                  slti         zero, a5, 702
                  lui          sp, 761207
                  sltiu        a6, t3, 1982
                  lb           ra, -7(s4)
                  lb           s1, 10(s4)
                  lbu          a2, -4(s4)
                  sltiu        a3, s11, 26
                  sb           s5, -3(s4)
                  lb           s1, 10(s4)
                  lb           t3, 12(s4)
                  lui          tp, 469890
                  slti         ra, s11, 1028
                  xor          t4, s0, t2
                  sra          s6, a5, a6
                  lb           a5, -2(s4)
                  lhu          s6, 3(s4)
                  and          t6, s0, s1
                  nop
                  addi         s6, t3, -944
                  sltu         t4, s5, a7
                  sb           t1, -11(s4) #end riscv_load_store_rand_instr_stream_2
                  sltu         sp, s10, s0
                  add          ra, t1, t2
                  addi         gp, s6, -543
                  auipc        t4, 906218
                  slli         s0, a1, 28
                  blt          a5, s0, 10f
                  lui          t0, 880786
                  xor          a3, s8, t6
                  sltiu        a0, a1, -657
                  bge          tp, t4, 15f
10:               sltu         a2, a2, s9
                  lui          t3, 837235
                  lui          tp, 609936
                  add          s9, gp, s7
                  addi         tp, s0, 1742
15:               andi         a0, zero, -729
                  sub          s2, t4, a7
                  auipc        a0, 637908
                  xor          s7, sp, t4
                  bltu         a7, s0, 26f
                  and          ra, t5, a3
                  sltu         a7, a6, s5
                  ori          t1, s7, -39
                  sltu         s2, a3, t4
                  srli         s5, gp, 30
                  nop
26:               bge          s2, t4, 36f
                  srai         a0, t4, 27
                  addi         a3, a0, -1228
                  and          t6, s3, s3
                  sub          s3, s1, tp
                  slt          s7, s9, zero
                  nop
                  sub          tp, t1, a2
                  bge          a6, a3, 53f
                  nop
36:               xor          t0, t5, s3
                  slt          t0, tp, s10
                  blt          s8, a3, 43f
                  addi         s3, t3, 1800
                  bne          s5, s10, 47f
                  sltiu        s7, s7, -1626
                  slt          sp, a0, t5
43:               sltiu        s9, tp, 1343
                  sub          s2, zero, s8
                  srl          t4, s6, s3
                  sltiu        s2, sp, 1303
47:               bgeu         ra, s7, 55f
                  xor          s3, a5, t3
                  slt          a4, s2, s7
                  sra          s5, s6, s8
                  sltu         s0, t0, t5
                  bgeu         t1, s2, sub_2_j5 #branch to jump instr
                  sltu         s11, t4, t6
                  sll          tp, s11, s9
                  slt          a6, gp, a3
                  sub          a5, s9, s6
                  andi         a6, t4, 1115
                  slti         a0, t4, 1597
sub_2_j5:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  bgeu         t1, a6, 58f
                  srai         s2, s5, 21
                  auipc        s10, 844500
                  slti         a6, a2, -1193
53:               add          s5, ra, tp
                  sltiu        s7, a3, -510
55:               xor          a5, sp, gp
                  andi         s7, a1, -2014
                  sub          s0, s5, t5
58:               ori          s8, s4, -947
                  sltu         s1, s1, a6
                  slli         s7, a2, 9
                  xor          t1, s3, s3
                  lui          s2, 786815
                  bltu         sp, s9, 78f
                  beq          s0, s10, 75f
                  andi         s10, t1, 758
                  add          gp, zero, t5
                  andi         s3, s8, -741
                  bne          t0, gp, 86f
                  bne          sp, t0, 75f
                  xor          s6, a3, sp
                  xori         s4, t2, 1827
                  lui          a5, 144637
                  sll          s6, s2, s0
                  addi         zero, a5, -259
75:               sltiu        t3, sp, 1978
                  lui          zero, 476010
                  sltu         a6, s7, a2
78:               srli         s11, s5, 24
                  sra          a5, s0, ra
                  bltu         tp, s9, 91f
                  auipc        s11, 99686
                  blt          a0, s1, 83f
83:               sltu         s10, t3, s11
                  sub          t6, t6, a4
                  blt          zero, t3, 86f
86:               srli         s0, a1, 15
                  xor          t1, t6, s0
                  nop
                  lui          a5, 123604
                  sltiu        a4, s5, 424
91:               bgeu         a5, s0, 95f
                  srai         a3, a2, 21
                  and          s5, s11, s11
                  xor          s7, s9, sp
95:               and          s3, s3, t0
                  sltu         s5, a5, ra
                  lui          a0, 271329
                  slt          s5, s1, sp
                  addi         sp, a4, -816
                  xori         gp, s9, 1713
                  srli         s4, t1, 22
                  andi         a5, a5, 798
                  bgeu         s4, a2, 110f
                  addi         t3, a1, 198
                  srl          gp, s3, t1
                  bgeu         a6, a4, 110f
                  slt          s1, s10, a5
                  lui          zero, 531277
                  auipc        s2, 849241
110:              nop
                  sra          zero, zero, ra
                  sll          a2, tp, ra
                  bne          a6, zero, 122f
                  bge          a2, a0, 121f
                  add          s9, ra, t6
                  lui          s7, 437134
                  and          ra, gp, s2
                  beq          zero, zero, 124f
                  slti         t1, s4, 989
                  ori          s4, a4, 168
121:              slt          a6, a6, t2
122:              slt          a7, s0, s11
                  sra          a7, s7, a4
124:              xor          s1, s10, s3
                  addi         a0, a5, -1856
                  slli         zero, zero, 21
                  slt          sp, gp, s0
                  and          a4, t0, s6
                  addi         t4, s8, 672
                  bltu         sp, s7, 140f
                  bgeu         s11, s5, 144f
                  sltu         a6, s6, t6
                  srai         t3, s9, 12
                  srai         tp, t5, 25
                  and          t4, t3, a6
                  bge          t2, t4, 143f
                  ori          s5, s7, -905
                  add          a5, t4, a6
                  xori         a4, tp, -1785
140:              bgeu         s6, t2, 157f
                  sra          s5, t1, gp
                  auipc        t6, 242471
143:              sub          s8, s0, t4
144:              srai         zero, a7, 5
                  nop
                  srl          zero, a5, a3
                  sltiu        t4, s3, -718
                  bltu         t0, s9, 150f
                  slti         a7, a2, -1925
150:              srli         a4, t1, 22
                  slli         a6, t5, 15
                  auipc        a7, 80388
                  blt          s10, s8, 162f
                  blt          s7, tp, 157f
                  sltiu        a6, s10, 1416
                  bltu         t2, s11, 170f
157:              and          a5, s5, s9
                  beq          t5, t6, 168f
                  slt          a7, s8, a1
                  srli         t6, s10, 12
                  slt          t6, s6, s5
162:              and          t0, s1, s0
                  sub          gp, s1, t0
                  sra          t4, ra, gp
                  blt          s6, s10, 171f
                  slt          a3, s1, s9
                  beq          a2, a3, 185f
168:              addi         s8, tp, -1138
                  andi         a2, a7, -1759
170:              ori          a5, s7, -1343
171:              bge          t5, gp, 174f
                  sub          s3, a5, gp
                  addi         s4, ra, 890
                  sltu         s8, a1, t2
                  and          gp, t4, a0
                  srl          zero, tp, ra
                  ori          tp, sp, -58
                  xor          s2, a6, s7
                  add          a0, t5, a5
                  slti         a3, a1, -823
                  bgeu         a3, sp, sub_2_j4 #branch to jump instr
                  and          t4, tp, s6
sub_2_j4:         jal          t1, sub_5 #jump sub_2 -> sub_5
174:              srl          a4, s4, s6
                  and          a5, a3, a1
                  srai         t0, a1, 8
                  ori          a4, s6, 1271
                  add          s6, s5, s10
                  lui          t4, 466898
                  ori          s11, a4, -1133
                  sll          a3, gp, s2
                  xor          ra, s6, s3
                  xor          a4, gp, ra
                  sltu         a0, gp, zero
185:              addi         t6, s8, -222
                  nop
                  xor          a2, s1, a7
                  xori         a5, s5, -876
                  auipc        s3, 853051
                  or           tp, ra, s8
                  addi         a0, s6, -2042
                  xor          a4, t5, s7
                  sra          a2, s11, sp
                  srli         s6, tp, 23
                  andi         s4, t5, -1968
                  auipc        s1, 954462
                  lui          s4, 992179
                  sltu         s3, t4, t2
                  beq          t5, t3, 201f
                  nop
201:              slt          s6, t5, s1
                  and          t0, ra, t6
                  srli         zero, t5, 7
                  srai         s9, a1, 16
                  bgeu         a1, s8, 210f
                  sll          s5, a3, sp
                  srli         a5, s6, 28
                  andi         s11, t0, -922
                  srai         s2, s6, 5
210:              add          s3, sp, s11
                  blt          a5, s6, 216f
                  slt          s0, a1, s3
                  addi         s11, s7, -1109
                  beq          s6, s11, 215f
215:              slti         gp, t3, -1059
216:              slt          t4, gp, t1
                  auipc        s2, 764265
                  sltu         s10, s1, t6
                  srl          s2, t2, a5
                  sltu         gp, a1, sp
                  or           s9, gp, s7
                  beq          sp, t4, 228f
                  slt          s11, zero, a2
                  bgeu         a1, a1, 228f
                  and          a4, ra, a5
                  add          a6, s5, s1
                  addi         zero, t3, 877
228:              bgeu         ra, sp, 232f
                  sra          tp, s6, s4
                  addi         s1, s0, 171
                  bgeu         s5, sp, 238f
232:              blt          gp, a6, 240f
                  sltu         a3, s11, s2
                  bgeu         sp, s2, 251f
                  sltiu        t4, gp, -763
                  lui          s1, 282251
                  sra          s6, s0, s4
238:              bge          t1, gp, 245f
                  bltu         t6, sp, 246f
240:              blt          tp, ra, 247f
                  blt          ra, a3, 260f
                  blt          s3, a1, 251f
                  sltu         a5, sp, s4
                  auipc        tp, 875856
245:              sll          a4, a7, s11
246:              bne          t6, t2, 260f
247:              bge          t0, s11, 257f
                  bne          s10, a1, 257f
                  add          s5, s7, tp
                  or           sp, s8, a5
251:              sll          s3, t4, s3
                  beq          t4, t1, 263f
                  beq          s9, a0, 262f
                  slli         s7, s11, 25
                  add          s6, tp, tp
                  add          s1, a3, s3
257:              sub          a0, gp, t0
                  add          s2, t6, s9
                  blt          a0, s0, 272f
260:              auipc        a5, 1040669
                  srli         s10, a3, 1
262:              sub          t1, s5, t3
263:              lui          s6, 331485
                  srl          t4, s11, s0
                  sub          a4, ra, a3
                  srl          t6, s7, s2
                  slli         zero, s11, 11
                  slt          s10, t1, a2
                  sltu         s11, t5, a7
                  sll          s4, t6, a1
                  sltiu        t1, s6, 850
272:              srl          a4, t4, s3
                  slti         s4, s3, 324
                  sll          s0, a0, a4
                  xor          a4, s2, sp
                  bgeu         a4, a6, 277f
277:              srli         a7, s3, 26
                  bgeu         s6, a3, 284f
                  nop
                  xori         zero, s10, 1606
                  blt          s1, s4, 292f
                  sltiu        a3, t3, 921
                  sltiu        t1, t2, 1858
284:              beq          s1, t0, 291f
                  srai         s6, zero, 13
                  add          a6, a2, s0
                  sub          a2, a7, gp
                  beq          s8, s5, 303f
                  and          s11, s3, s6
                  xori         t1, zero, -1044
291:              srai         gp, t1, 2
292:              bne          t1, t6, 298f
                  xori         ra, s7, -3
                  addi         s4, t4, -1901
                  and          s11, s2, s0
                  srai         s0, ra, 1
                  beq          s7, s3, 308f
298:              andi         s6, t2, 498
                  sub          s10, s5, a1
                  beq          s10, s11, 307f
                  nop
                  slti         s10, s4, 1446
303:              slli         t6, s9, 30
                  or           s11, a1, a7
                  xori         s0, t4, -1493
                  bge          a1, t2, 312f
307:              slti         t6, s10, -1594
308:              ori          s9, a0, -1293
                  ori          s8, s11, -359
                  slti         zero, tp, 1555
                  sltiu        a3, t0, 798
312:              xor          sp, gp, s2
                  sll          ra, a3, gp
                  sltu         s1, t4, s11
                  sll          gp, a3, a5
                  auipc        t1, 1007117
                  xori         s6, zero, -1168
                  slt          tp, tp, a1
                  sra          s0, a4, s7
                  bgeu         s9, a4, 329f
                  ori          a4, sp, -379
                  slt          s7, t6, t2
                  xori         a2, a7, 1774
                  ori          s6, s10, -362
                  srai         a2, s5, 10
                  bltu         a4, s2, 329f
                  lui          a3, 51169
                  bgeu         s11, t2, 329f
329:              sub          sp, s1, a4
                  auipc        t4, 573835
                  slti         tp, t0, 149
                  sltu         t4, a2, s5
                  add          s9, s6, s9
                  slli         t0, a0, 22
                  sltu         t6, s5, s9
                  and          a0, s5, t5
                  srai         s5, s9, 27
                  slli         a5, t4, 29
                  ori          t1, a6, 1269
                  auipc        ra, 852584
                  beq          t6, a3, 354f
                  add          a5, gp, s4
                  bltu         s0, t6, 358f
                  srl          t3, a1, s5
                  beq          s0, a5, 362f
                  bltu         t3, t0, 357f
                  sltu         tp, a3, s4
                  sltu         s3, a1, s4
                  bne          s7, s4, 353f
                  andi         zero, a7, 1222
                  bne          s6, t0, 357f
                  lui          ra, 947161
353:              nop
354:              ori          a3, a3, 810
                  bge          tp, gp, 356f
356:              srl          s11, s5, s7
357:              blt          s3, t3, 361f
358:              srai         tp, ra, 20
                  xori         a3, s5, -407
                  addi         a2, a5, -1594
361:              lui          a3, 749667
362:              xori         sp, s9, 663
                  nop
                  lui          ra, 936813
                  bltu         t1, sp, 370f
                  srai         ra, s6, 25
                  bltu         s8, t1, 377f
                  srai         s4, s4, 28
                  slli         a7, s3, 10
370:              xori         s3, a3, 1129
                  srl          t4, t2, t0
                  and          s0, t5, s6
                  sltiu        s5, tp, 2040
                  slti         ra, a5, -1319
                  srai         s1, a4, 27
                  bne          s2, a0, 394f
377:              sltu         ra, sp, s9
                  bgeu         t2, s7, 397f
                  bltu         s2, s1, 381f
                  sra          t1, a5, s3
381:              blt          s11, a2, 390f
                  srli         t3, t6, 28
                  or           sp, zero, a7
                  addi         a5, t0, -1913
                  bgeu         s5, t1, 392f
                  addi         s3, s10, -466
                  bgeu         t2, a5, 396f
                  auipc        t6, 248547
                  blt          t1, a5, 394f
390:              addi         a3, zero, -91
                  add          s7, t4, tp
392:              sub          s9, a4, a2
                  srai         s1, a2, 15
394:              lui          a4, 200959
                  slli         s11, t1, 13
396:              sltu         s2, t5, a4
397:              slt          gp, s0, a6
                  add          s8, ra, s7
                  sll          s3, s6, a6
                  srli         a5, s10, 27
                  bgeu         a7, t2, 408f
                  ori          a7, t0, 1466
                  srli         t3, t2, 27
                  xori         s4, s2, 1049
                  slt          zero, s8, t4
                  slt          a2, gp, a7
                  bgeu         t5, tp, 421f
408:              slt          a2, t0, s6
                  beq          a4, s10, 416f
                  srl          s1, t3, a5
                  bgeu         a4, s7, 418f
                  add          t3, zero, s9
                  slli         t6, a2, 1
                  sra          t3, t2, gp
                  slli         a4, s10, 4
416:              sltu         s10, s9, a2
                  ori          s4, s7, -1453
418:              sltu         t4, s5, s10
                  srai         a5, s5, 12
                  beq          t6, t2, 428f
421:              srli         sp, s4, 12
                  beq          s5, sp, 432f
                  slti         s9, t2, 1725
                  bgeu         t3, t4, 431f
                  blt          s8, t2, 435f
                  andi         s0, tp, -1031
                  and          s10, t0, sp
428:              bne          a7, a2, 432f
                  beq          s2, s7, 435f
                  addi         t0, tp, -1825
431:              sltu         s7, ra, s4
432:              bltu         s2, s10, 439f
                  addi         a4, s3, 499
                  slt          gp, s1, gp
435:              or           s5, s4, a2
                  slti         s2, s10, 558
                  slt          s3, zero, a6
                  xori         s7, t5, -1844
439:              ori          s11, a0, -75
                  bltu         tp, s8, 449f
                  blt          a0, s4, 459f
                  bne          a4, s7, 453f
                  nop
                  sll          s4, a1, gp
                  srai         zero, ra, 9
                  bge          s4, s3, 455f
                  beq          a1, s10, 456f
                  slt          a5, t1, a2
449:              lui          t1, 168195
                  sltu         s11, tp, t6
                  beq          a5, tp, 453f
                  and          a2, a0, t5
453:              sltiu        s7, sp, -1125
                  srli         zero, sp, 1
455:              slt          s8, a3, s3
456:              sra          s0, a3, zero
                  sltiu        s5, t6, -1107
                  and          s6, t4, ra
459:              addi         s5, a5, 976
                  and          s8, zero, a3
                  nop
                  ori          a5, s10, 1088
                  sra          s10, a4, s9
                  auipc        a6, 241020
                  and          zero, s1, tp
                  auipc        gp, 1006061
                  xori         s4, t1, 1706
                  beq          s0, a5, 469f
469:              slli         a5, s7, 20
                  sltu         s0, a4, a0
                  and          zero, a6, a7
                  sltiu        s1, t6, 691
                  ori          a4, tp, 1377
                  auipc        sp, 710618
                  bltu         t3, s6, 478f
                  srai         t4, s6, 12
                  bltu         t6, s6, 487f
478:              bge          sp, a0, 492f
                  lui          s2, 405895
                  sltu         s4, a7, a1
                  add          a5, zero, t1
                  add          a0, s6, t0
                  addi         s10, s1, -1245
                  bltu         s10, zero, 489f
                  andi         s11, t4, -1395
                  lui          s1, 261799
                  sltiu        s11, t3, 1815
                  and          gp, s3, t0
                  nop
                  nop
                  blt          s7, s1, sub_2_j6 #branch to jump instr
                  and          s3, a6, a6
                  srli         s0, s1, 1
                  add          a5, a6, a6
                  srli         zero, t6, 9
                  xori         sp, a4, -1229
sub_2_j6:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  andi         s11, s3, -146
487:              add          a5, s7, s3
                  auipc        a3, 491340
489:              lui          a2, 557586
                  slt          s9, a1, zero
                  xor          a0, t6, s6
492:              slli         s11, a3, 24
                  sltu         s0, t3, t6
                  bne          t4, t4, 513f
                  nop
                  sll          s11, s9, a6
                  ori          a6, a4, -1758
                  auipc        a6, 785268
                  slti         a3, s9, 1511
                  blt          a6, a4, 501f
501:              srl          t3, a2, t3
                  andi         s2, s9, 1449
                  nop
                  add          t0, tp, a3
                  srli         s4, s1, 22
                  sub          a4, gp, s10
                  bltu         a3, t3, 513f
                  andi         s2, t1, 1382
                  slti         t0, s11, 387
                  srli         sp, a3, 7
                  bltu         t5, zero, 518f
                  xor          t0, s5, zero
513:              nop
                  bgeu         ra, t5, 531f
                  bltu         s5, s4, 528f
                  xori         a0, s0, 640
                  addi         s0, s9, 1323
518:              bge          a4, zero, 524f
                  beq          s2, a3, 526f
                  bne          s7, a1, 535f
                  bne          a7, s9, 532f
                  andi         a4, s8, 485
                  add          s7, zero, s3
524:              add          s6, t4, ra
                  auipc        gp, 8342
526:              slli         ra, s1, 0
                  ori          s2, t3, -1555
528:              bne          zero, t0, 535f
                  srl          a2, s9, ra
                  addi         a7, s4, -1351
531:              auipc        s0, 453215
532:              xor          s5, sp, s5
                  xor          s9, a5, s5
                  addi         a7, t3, 190
535:              bge          a5, sp, 539f
                  sra          s11, s4, s8
                  sll          a0, zero, a0
                  and          s1, a0, zero
539:              srli         s8, s6, 3
                  andi         s7, s2, 1729
                  ori          ra, t3, -1547
                  andi         a6, s4, 652
                  xori         s11, a6, 719
                  bge          s1, a2, 552f
                  auipc        s0, 940568
                  sub          s1, tp, s6
                  nop
                  srli         t3, t0, 5
                  and          ra, s1, a5
                  blt          a7, t6, 555f
                  sub          s11, t2, a2
552:              srai         t0, t6, 6
                  sll          s1, s1, gp
                  andi         a2, ra, -1170
555:              srl          s4, s9, a3
                  xori         t1, t3, 1345
                  add          s6, a1, t0
                  slli         a2, a7, 0
                  andi         s8, s10, -1411
                  srl          a6, s8, zero
                  xor          zero, a4, a2
                  slli         s3, sp, 31
                  beq          gp, s11, 565f
                  slti         s0, s2, 473
565:              sra          sp, s2, t4
                  bne          a0, s8, 567f
567:              sub          s5, zero, s10
                  srli         s6, s9, 3
                  slli         s11, s5, 28
                  xori         s8, a7, 1946
                  sll          s9, s1, s1
                  or           gp, s8, a1
                  add          s7, t4, s5
                  or           a6, tp, t3
                  slti         t3, tp, -727
                  sll          s0, tp, s6
                  srli         a5, zero, 14
                  ori          a5, a0, -1331
                  auipc        t3, 685803
                  sra          s9, a0, s5
                  ori          t3, s10, 1512
                  auipc        s2, 412945
                  bne          tp, a6, 587f
                  slti         a0, t2, 521
                  sll          ra, s6, s0
                  slti         t6, zero, -238
587:              sub          tp, s4, a4
                  bgeu         a2, t5, 596f
                  xori         gp, a1, 1966
                  bgeu         a1, t0, 600f
                  slli         a2, s8, 30
                  sltu         s5, tp, s2
                  sltiu        a2, s10, -657
                  xori         sp, s10, -1524
                  slt          s2, t2, t6
596:              beq          s0, s2, 601f
                  slli         s5, zero, 14
                  beq          a6, s3, 611f
                  slt          zero, s11, t6
600:              bge          s10, t0, 617f
601:              xor          t6, a3, ra
                  srai         a4, t2, 15
                  xor          s7, ra, s2
                  slt          a4, t0, t1
                  beq          a4, s6, 614f
                  andi         s0, s11, -320
                  bne          s8, tp, 613f
                  srai         a0, s4, 6
                  srli         t4, t5, 5
                  blt          sp, a7, 617f
611:              or           s9, t1, gp
                  or           s5, gp, s4
613:              slli         s2, s3, 18
614:              auipc        sp, 689922
                  sub          s7, a7, s11
                  andi         ra, sp, 1878
617:              sltiu        ra, s7, -120
                  addi         s5, a3, 506
                  ori          t6, s1, -1098
                  slti         s11, s4, -1385
                  bltu         t1, s2, 629f
                  bgeu         t4, a6, 629f
                  sltiu        a5, a0, 884
                  sll          ra, s5, t1
                  srli         s10, a3, 15
                  slti         t1, a4, 1817
                  bne          a3, t5, 629f
                  add          a2, a5, sp
629:              slt          sp, t5, s0
                  slti         a3, a0, -1733
                  lw           t1, 4(t5)
                  sltu         s4, sp, a3
                  srai         a5, a0, 25
                  addi         t5, t5, 32
                  srl          sp, s6, s5
                  xori         s5, a7, 1476
901:              addi x14, x6, 1
901:              jalr x14, x14, 0
sub_4:            nop
                  bgeu         a5, a7, sub_4_stack_p
sub_4_stack_p:    addi         t5, t5, -60
                  sw           t1, 4(t5)
                  addi         gp, s9, -1312
                  slt          gp, a0, a7
                  srli         s3, s8, 11
                  la           ra, region_0+1728 #start riscv_load_store_rand_instr_stream_1
                  ori          t0, t1, -140
                  sw           s8, -16(ra)
                  sltu         gp, t4, zero
                  sra          a7, s10, t5
                  srl          s4, s11, a2
                  sb           t3, -2(ra)
                  auipc        sp, 271124
                  sra          s11, t1, t0
                  slti         a2, a6, 853
                  sub          a3, a7, t1
                  xori         a3, t4, -1550
                  lhu          s9, -14(ra)
                  or           s1, gp, a2
                  lh           zero, -8(ra)
                  sw           a5, -8(ra)
                  nop
                  auipc        s4, 633807
                  sb           s3, -2(ra)
                  addi         t0, sp, 1786
                  slti         s8, a5, -1117
                  lh           t1, 8(ra)
                  addi         tp, s5, -1941
                  sra          a7, s9, gp
                  lw           a0, 0(ra)
                  lh           gp, -10(ra)
                  xor          s5, a7, s2
                  add          t4, sp, a0
                  xor          s3, s5, s5
                  or           s5, a2, tp
                  sb           t0, 0(ra)
                  nop
                  lbu          a2, 3(ra) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+1324 #start riscv_load_store_rand_instr_stream_2
                  lh           s2, -188(s6)
                  lb           t0, 169(s6)
                  sltu         tp, t5, t2
                  lbu          a3, -145(s6)
                  lui          gp, 366166
                  sb           a4, -7(s6)
                  sll          s5, tp, s9
                  lb           a3, 48(s6)
                  sltu         s0, t2, s5
                  lbu          s0, -176(s6)
                  sb           s8, -195(s6)
                  srai         a6, s1, 27
                  lb           a2, 133(s6)
                  srl          t6, a0, s7
                  lbu          s10, -171(s6)
                  sltiu        s0, s5, 1829
                  lb           zero, -183(s6)
                  lhu          s10, 42(s6)
                  lhu          a0, -180(s6)
                  sh           s6, -186(s6)
                  sb           s2, -23(s6)
                  sltiu        a3, s10, -1988
                  xori         s2, tp, 1293
                  ori          t3, s1, -1610
                  add          t3, a0, a3
                  and          tp, t2, tp
                  sll          a0, t4, t0
                  lhu          s0, 130(s6)
                  sb           s5, -153(s6)
                  and          s3, a6, s10
                  srai         s9, a6, 18
                  sb           a7, 61(s6)
                  lbu          a2, -93(s6)
                  lb           a6, 151(s6)
                  sb           s11, 161(s6)
                  sub          s1, s4, a2
                  srli         s8, sp, 12
                  nop
                  lb           s1, 201(s6)
                  sra          s5, tp, s8
                  xori         gp, a3, -935
                  sb           s8, -140(s6)
                  add          sp, a2, t0
                  sra          s4, s8, s1
                  lui          s5, 297436
                  lbu          tp, -19(s6)
                  xori         a4, t5, 938
                  nop
                  lb           s2, -3(s6)
                  lb           a5, -251(s6)
                  lh           ra, -86(s6) #end riscv_load_store_rand_instr_stream_2
                  addi         t0, s0, 708
                  bge          t3, s8, 13f
                  blt          a5, a3, 10f
                  xori         a2, tp, -1418
                  bltu         s10, tp, 16f
                  blt          a3, s5, 18f
                  bltu         s9, a4, 20f
                  sltiu        a4, s9, 882
                  bltu         s10, sp, 10f
                  bltu         a5, ra, 18f
10:               blt          a4, sp, 24f
                  ori          gp, ra, -489
                  beq          a1, a6, 15f
13:               sltiu        ra, a5, 721
                  andi         a0, ra, 1398
15:               beq          gp, a5, 26f
16:               or           t1, a7, s5
                  lui          t4, 126240
18:               xori         a2, a4, 1773
                  sub          a5, s6, s5
20:               xor          a4, sp, t0
                  sltu         t0, t4, t2
                  xori         a7, sp, -548
                  sra          a4, a1, s11
24:               slti         t0, s3, -1452
                  andi         tp, a0, 1775
26:               addi         s2, t5, -252
                  srli         tp, t5, 7
                  srl          s9, s9, a4
                  sll          s11, t5, t1
                  beq          gp, a4, 35f
                  ori          s8, t2, 1589
                  srai         t1, a7, 22
                  or           a2, s10, t3
                  slt          s9, s0, t4
35:               slt          s2, sp, s10
                  xor          a4, a1, tp
                  sll          a2, s5, s6
                  bge          sp, s0, 54f
                  beq          s7, t1, 52f
                  blt          s5, a1, 47f
                  bne          s10, a3, 43f
                  srli         s7, a6, 10
43:               slti         s10, tp, -1317
                  andi         t6, t2, -686
                  add          a4, s3, s11
                  auipc        zero, 99942
47:               addi         t0, s6, 1898
                  xor          s3, s1, a3
                  srai         s1, a3, 18
                  bltu         t4, t5, 54f
                  ori          t6, t3, -1003
52:               addi         sp, s6, 1699
                  and          a0, a5, a7
54:               andi         s0, a0, 1656
                  auipc        s0, 641623
                  bne          sp, s7, 61f
                  sub          s4, t6, zero
                  nop
                  slli         s7, a3, 20
                  bge          t3, s4, 77f
61:               bne          s10, a0, 67f
                  slt          a4, t5, s10
                  bgeu         t1, ra, 80f
                  auipc        tp, 424677
                  blt          a5, gp, 85f
                  sra          gp, s4, t4
67:               bltu         a1, s10, 74f
                  addi         zero, t1, 1538
                  andi         t3, t4, -1536
                  srl          s0, t1, s8
                  bge          s10, s7, 90f
                  sll          a4, t6, t3
                  bgeu         s3, gp, 81f
74:               srli         s5, ra, 8
                  slti         a0, s4, 804
                  andi         a3, s10, 1774
77:               xor          s8, t2, a1
                  srli         s10, s0, 23
                  beq          t5, ra, 87f
80:               sltu         s5, a2, zero
81:               sltu         a7, s10, s11
                  andi         a6, s10, -2021
                  srli         s0, t1, 11
                  and          tp, s1, t1
85:               bne          t5, s7, 92f
                  slli         a6, s11, 19
87:               nop
                  slti         s2, tp, 273
                  auipc        s4, 956192
90:               srl          a2, t5, s3
                  sra          t3, t3, s1
92:               sra          gp, s2, t2
                  bltu         t6, a0, 108f
                  slti         s1, s4, 710
                  srai         s10, s6, 3
                  xori         tp, a4, -352
                  bgeu         a6, tp, 114f
                  and          s2, s9, a6
                  or           s10, s5, t1
                  xori         s4, ra, 1466
                  or           a5, s6, sp
                  sltiu        a3, s11, -1592
                  beq          tp, a6, 114f
                  slti         a7, zero, -1796
                  auipc        sp, 129478
                  slt          s6, a3, t4
                  xori         s4, s11, -1063
108:              nop
                  srl          s9, tp, a0
                  xor          sp, s6, s0
                  ori          t0, s6, -339
                  slti         a0, t0, 140
                  andi         s9, a4, -283
114:              nop
                  and          s9, a1, s4
                  auipc        t6, 858705
                  sltu         a7, s2, s0
                  sub          s3, s8, t2
                  bgeu         s11, s10, 138f
                  or           s8, s4, s3
                  srai         s0, s10, 27
                  beq          a1, s10, 127f
                  sltu         t1, s1, a6
                  srl          s1, s7, a2
                  ori          s11, tp, 840
                  ori          s0, t6, 30
127:              blt          s3, s2, 147f
                  bltu         a2, a2, 142f
                  andi         sp, s8, 287
                  sll          a7, s3, s0
                  sra          t6, a2, t3
                  sub          a2, s2, a3
                  bgeu         s6, s4, 141f
                  nop
                  sltiu        s11, a4, 987
                  sub          gp, a7, s4
                  slt          t3, tp, s0
138:              xor          t6, t1, t5
                  andi         t6, zero, 943
                  srl          a6, t4, a3
141:              sll          t1, t4, sp
142:              sub          s3, sp, a4
                  auipc        s7, 8460
                  sra          s4, t1, a4
                  blt          sp, s1, 148f
                  slt          a6, zero, s8
147:              bgeu         s3, a4, 160f
148:              andi         s2, gp, -1386
                  xori         sp, zero, 501
                  sra          s6, a2, sp
                  sub          s6, s1, s11
                  lui          s9, 56862
                  bgeu         a0, a1, 161f
                  srli         gp, s7, 26
                  lui          s9, 545669
                  sra          s1, s5, s1
                  nop
                  lui          zero, 970939
                  srli         a6, t5, 2
160:              sll          a7, s3, s3
161:              and          s6, t6, tp
                  blt          a7, a7, 177f
                  xor          s9, t3, t3
                  blt          tp, sp, 175f
                  andi         sp, ra, 229
                  slt          tp, t1, s10
                  blt          s4, s9, 169f
                  andi         s8, tp, -398
169:              sll          sp, a5, s5
                  andi         a4, a3, -1827
                  slt          a3, a3, t2
                  bge          s11, t3, 179f
                  addi         t3, a0, -280
                  slt          t0, a2, t0
175:              or           a5, s4, t0
                  blt          t0, a1, 183f
177:              sra          s4, s1, a3
                  beq          s7, gp, 189f
179:              srai         sp, a5, 9
                  or           a5, tp, a3
                  bge          s3, t6, 194f
                  srli         t6, t2, 11
183:              sltiu        s7, t6, -1493
                  xori         t3, s6, -1323
                  sub          s5, t3, a1
                  xor          s1, a7, a6
                  srl          t4, a5, s8
                  addi         gp, s5, -1902
189:              srai         tp, s1, 4
                  srai         s8, t4, 31
                  lui          sp, 85322
                  addi         a2, a1, -1731
                  srl          s9, s7, a7
194:              sltiu        s0, s6, 1964
                  bgeu         s1, s10, 199f
                  and          a4, s4, a2
                  sub          s5, a0, a7
                  bgeu         s6, s2, 215f
199:              xori         s0, s10, 1142
                  srl          s3, t3, s10
                  xor          s5, t2, zero
                  bgeu         s8, s2, 209f
                  sltiu        s7, s2, 500
                  blt          s1, t5, 213f
                  sub          a5, a0, s6
                  nop
                  bltu         a3, t0, 224f
                  sll          a6, t4, a6
209:              xori         a4, s11, -1032
                  bgeu         s11, s9, 215f
                  sltu         a7, a2, s9
                  slt          a0, s9, a0
213:              bge          tp, t3, 215f
                  slt          s8, s0, s7
215:              sll          s1, a3, t6
                  nop
                  sll          s4, t0, t6
                  lui          s11, 378872
                  addi         a5, sp, 1868
                  andi         tp, t3, -1956
                  la           s11, region_1+1944 #start riscv_load_store_rand_instr_stream_0
                  sb           t6, 9(s11)
                  lhu          t4, -14(s11)
                  slti         s7, t1, -1454
                  lh           tp, -4(s11)
                  sb           t0, -7(s11)
                  lb           s8, -14(s11)
                  lhu          t3, -2(s11)
                  lb           s6, 6(s11)
                  lb           a2, -5(s11)
                  sb           gp, 9(s11)
                  lh           a5, -14(s11)
                  sw           a1, 8(s11)
                  auipc        a2, 555135
                  andi         a2, s9, -1402
                  auipc        s4, 508455
                  srl          a0, sp, s7
                  lui          a3, 123395
                  lbu          a3, -9(s11)
                  lb           s7, -3(s11)
                  slti         t6, s7, 1679
                  sltu         s3, t6, s8
                  lb           t4, 3(s11)
                  lbu          a3, 1(s11)
                  lui          s2, 740428
                  lb           a7, -9(s11)
                  lbu          a0, -7(s11)
                  lw           s3, -16(s11)
                  lw           sp, 12(s11)
                  lb           zero, 1(s11)
                  lbu          tp, -15(s11)
                  xor          s9, a3, t6
                  lb           gp, -15(s11)
                  lw           s5, 0(s11)
                  ori          s7, t4, 609
                  slli         t0, s10, 15
                  sll          s3, t2, t6
                  lb           s5, -5(s11)
                  lb           t6, 11(s11)
                  sltiu        s0, s3, -952
                  lbu          s9, 5(s11)
                  lb           sp, 14(s11) #end riscv_load_store_rand_instr_stream_0
                  xori         tp, s10, 510
                  bgeu         s0, a4, 241f
                  xori         a6, s10, -654
224:              bge          s6, t6, 236f
                  sra          a2, tp, s8
                  blt          s6, t2, 232f
                  add          t4, s5, gp
                  add          a5, tp, tp
                  srai         s1, t3, 19
                  sll          s0, s8, a7
                  xori         a7, s9, 532
232:              or           s5, t3, a0
                  and          t4, s8, zero
                  sra          s2, t5, t2
                  bgeu         t5, a6, 251f
236:              srai         t4, s0, 26
                  sltu         ra, a6, t2
                  nop
                  bgeu         a6, s11, 251f
                  srl          a6, t3, a5
241:              sltu         t0, s7, a7
                  auipc        a5, 427541
                  and          s10, zero, t2
                  sltu         t6, a6, t6
                  srli         s9, a1, 6
                  bne          s7, s9, 263f
                  nop
                  or           zero, a0, tp
                  bne          t6, t2, 268f
                  bge          a1, s6, 264f
251:              beq          s9, t2, 259f
                  blt          t1, a7, 271f
                  bltu         t5, a2, 268f
                  slti         t6, t3, -1161
                  bne          t2, zero, 258f
                  blt          a6, gp, 260f
                  slt          t6, t4, s1
258:              srli         s0, t2, 16
259:              bne          s4, s1, 279f
260:              bge          ra, a5, 267f
                  and          s1, a2, t1
                  ori          sp, a1, -1722
263:              bne          sp, a3, 265f
264:              bgeu         sp, t2, 272f
265:              and          a7, ra, t6
                  or           s2, t1, a6
267:              bne          s5, s7, 280f
268:              beq          s8, a7, 285f
                  slt          t3, tp, s6
                  bne          a7, ra, 278f
271:              bge          tp, t1, 288f
272:              slli         s6, t6, 21
                  srl          s0, t1, t0
                  sub          t0, t1, s8
                  xori         a7, s7, -399
                  bltu         s6, t2, 283f
                  add          tp, sp, t0
278:              slti         s3, a1, 1723
279:              xori         zero, t6, 1176
280:              blt          s6, s8, 293f
                  sltu         t3, s6, t3
                  auipc        s7, 649232
283:              srl          a5, s2, sp
                  srai         a6, a4, 15
285:              bltu         a0, s4, 296f
                  srai         t6, s1, 3
                  addi         tp, a2, -459
288:              add          a5, a4, t6
                  bge          a3, s1, 301f
                  blt          a4, s5, 295f
                  or           s6, s7, tp
                  bltu         s4, a0, 294f
293:              sub          s11, s2, s1
294:              bne          s0, s9, 308f
295:              bne          t6, a3, 309f
296:              and          a4, s11, s11
                  sll          s1, tp, a3
                  nop
                  beq          t2, s4, 316f
                  sll          a7, s0, a0
301:              beq          a7, s11, 312f
                  sltu         tp, a2, a7
                  srai         s3, a4, 5
                  blt          a6, a2, 309f
                  blt          a3, a4, 312f
                  xor          sp, s4, a7
                  sra          s8, t5, s2
308:              srl          s7, s5, s0
309:              add          s4, a4, s3
                  sltu         s3, s3, a2
                  slli         a0, t2, 1
312:              bge          a1, s6, 321f
                  bne          t1, zero, 321f
                  bgeu         s11, t5, 333f
                  bgeu         t4, gp, 331f
316:              slt          a4, sp, s7
                  and          t3, s6, t5
                  slli         s11, a6, 14
                  sltu         s8, t6, s8
                  add          a6, gp, gp
321:              sra          a2, s8, s4
                  xor          s3, s9, gp
                  blt          s3, s9, 329f
                  slli         t6, t3, 14
                  xor          s3, t3, s5
                  sra          zero, ra, s9
                  slt          s11, t2, a1
                  nop
329:              sltiu        s9, a3, -272
                  bltu         s4, gp, 342f
331:              auipc        s2, 800240
                  andi         t0, a1, 212
333:              sll          a2, a0, a5
                  auipc        s10, 21364
                  or           t4, a4, s7
                  auipc        a6, 159950
                  beq          a6, s4, 339f
                  xori         s4, zero, 593
339:              xori         s4, a2, 1671
                  bltu         s11, zero, 360f
                  srli         t4, s8, 23
342:              auipc        s7, 577943
                  beq          s1, s8, 352f
                  slli         sp, a5, 21
                  lui          s2, 462972
                  bge          zero, s6, 354f
                  add          s8, zero, a7
                  blt          gp, t4, 360f
                  bgeu         t5, a0, 366f
                  addi         a6, a5, -518
                  sltiu        tp, t2, 584
352:              sltiu        t4, s4, 1048
                  sltu         a5, s7, t1
354:              and          s8, s4, s8
                  bltu         a2, s9, 366f
                  bltu         a6, s3, 358f
                  xor          s5, a7, a7
358:              and          s4, a4, s11
                  or           s0, s3, s11
360:              addi         a7, s4, -149
                  bge          s2, gp, 365f
                  and          a6, s8, s5
                  srai         zero, s3, 8
                  or           a6, a5, zero
365:              auipc        s2, 1018774
366:              beq          s10, t0, 373f
                  add          s6, t3, a4
                  slti         tp, ra, -776
                  xor          s2, t3, s1
                  andi         s11, t5, 1637
                  nop
                  sltu         s11, s1, s9
373:              beq          t6, a4, 380f
                  bne          gp, tp, 380f
                  auipc        t1, 361843
                  slli         a3, s1, 3
                  srl          a3, a3, t0
                  sub          s8, a3, sp
                  bgeu         s0, s1, 380f
380:              sltiu        t3, s4, 1643
                  lw           t1, 4(t5)
                  addi         t5, t5, 60
                  andi         a5, a1, -1891
                  ori          s10, t5, -1687
                  sltiu        s10, t0, -1839
                  auipc        s8, 873923
                  auipc        a2, 385969
                  or           a7, a6, a3
                  addi         ra, s11, 1737
                  sltiu        t3, s11, -1883
                  slti         tp, s0, 255
                  sub          t3, s1, s7
527:              addi x27, x6, 0
527:              jalr x27, x27, 0
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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  add x11, x30, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x2, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x2, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x2, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x2, x22, ecall_handler
                  li x22, 0x1
                  beq x2, x22, instr_fault_handler
                  li x22, 0x5
                  beq x2, x22, load_fault_handler
                  li x22, 0x7
                  beq x2, x22, store_fault_handler
                  li x22, 0xc
                  beq x2, x22, pt_fault_handler
                  li x22, 0xd
                  beq x2, x22, pt_fault_handler
                  li x22, 0xf
                  beq x2, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x30, x11, zero
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
                  add x30, x11, zero
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
                  add x30, x11, zero
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
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x30, x11, zero
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
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x30, x11, zero
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
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x30, x11, zero
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
