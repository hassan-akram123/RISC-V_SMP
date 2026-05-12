.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x77e6c9af
                  li x2, 0xb9981e7f
                  li x3, 0x0
                  li x4, 0xe
                  li x5, 0x0
                  li x6, 0xff5e5e48
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x5
                  li x10, 0x7f02654f
                  li x11, 0xf035ab64
                  li x13, 0x6738d4c7
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x1
                  li x19, 0xa
                  li x20, 0xf
                  li x21, 0xd
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xffdbe332
                  li x25, 0x80000000
                  li x26, 0x7
                  li x27, 0x80000000
                  li x29, 0xf2c3a667
                  li x30, 0x1
                  li x31, 0x1d80436d
                  la x12, user_stack_end
main:             sub          s1, s1, s9
                  sll          gp, a1, s11
                  la           t6, sub_2
                  addi         t6, t6, 834
                  ori          zero, a5, 1083
                  srai         a4, s4, 0
                  bgeu         t3, s0, main_j3 #branch to jump instr
                  slti         a0, s3, -429
main_j3:          jalr         t5, t6, -834 #jump main -> sub_2
                  la           ra, region_0+1969 #start riscv_load_store_rand_instr_stream_0
                  sb           sp, -1459(ra)
                  lbu          a5, -1374(ra)
                  sh           a7, -1609(ra)
                  lbu          a7, -1542(ra)
                  lh           s7, -115(ra)
                  sra          t2, s8, sp
                  lui          s3, 14444
                  lhu          t4, -69(ra)
                  sw           a7, -153(ra)
                  lb           s9, -944(ra)
                  lbu          a6, -1239(ra)
                  slt          s11, a3, t2
                  lhu          a7, -1067(ra)
                  add          a0, s2, s3
                  lh           gp, -199(ra)
                  lb           t5, -96(ra)
                  add          s7, s0, s7
                  sh           s4, -1859(ra)
                  sb           s1, -703(ra)
                  lbu          t5, -87(ra)
                  xori         s6, t3, 1021
                  lb           a5, -276(ra)
                  sll          a7, t0, a5
                  srl          a0, s11, s0
                  lbu          s7, -638(ra)
                  slli         s1, s0, 19
                  auipc        s2, 975769
                  sra          a3, s2, gp
                  andi         a0, ra, -651
                  slli         s6, s0, 20
                  lbu          a7, -1093(ra)
                  slt          t1, s8, tp
                  xori         s10, t1, -592
                  lhu          gp, -449(ra)
                  lb           s9, -999(ra)
                  srl          a0, s7, t6
                  xor          s6, a4, a2
                  lb           s4, -1652(ra)
                  srai         s10, s8, 30
                  and          s9, a6, gp
                  lb           s9, -1316(ra) #end riscv_load_store_rand_instr_stream_0
                  sub          s3, s8, t1
                  bltu         s1, s4, 16f
                  slt          a4, s7, tp
                  and          t5, sp, s11
                  bge          a4, t4, 18f
                  slli         tp, gp, 10
                  bne          s3, s8, 17f
                  or           s4, a1, s11
                  xori         t2, a6, 431
                  lui          s0, 447148
                  auipc        a4, 66028
                  srl          ra, s5, s9
                  srai         t2, s0, 15
                  and          t6, s7, t1
                  srai         a3, s4, 20
                  srl          a5, s6, t5
16:               srli         t5, a2, 18
17:               or           ra, t6, a7
18:               srl          s11, gp, s5
                  auipc        s11, 500186
                  sra          s11, tp, t5
                  sltiu        t4, a3, 1291
                  nop
                  bge          s4, s6, 34f
                  srl          a6, s3, s10
                  auipc        t6, 1039975
                  sll          s10, s1, s11
                  bgeu         s4, a1, 30f
                  slt          s2, ra, gp
                  xor          s9, s9, s11
30:               bge          s3, t4, 36f
                  slti         a1, s0, 1335
                  lui          s3, 304987
                  or           tp, t0, s11
34:               sra          s11, a7, a6
                  bne          a0, s10, 55f
36:               slli         t0, s10, 28
                  sra          s11, s2, t0
                  blt          gp, t0, 47f
                  sltu         sp, s5, s0
                  bge          s2, t6, 44f
                  srl          s0, a5, s5
                  srl          a4, t0, a5
                  sra          s3, tp, s9
44:               addi         s7, a5, -1989
                  lui          a7, 469709
                  nop
47:               slt          s11, s4, t6
                  srli         a7, zero, 7
                  blt          s9, ra, 63f
                  andi         s0, s11, 1510
                  srli         t0, t5, 8
                  andi         a3, a3, -316
                  sltiu        s1, ra, -1502
                  sll          s3, a3, a6
55:               sub          a4, a2, t3
                  or           t6, t6, t0
                  addi         s11, sp, -2012
                  srai         t1, a5, 24
                  sra          t5, tp, t2
                  sra          a5, t4, t4
                  bne          s0, a0, 70f
                  ori          a3, t1, 650
63:               sltu         s11, t0, a2
                  sub          t0, t0, s5
                  ori          s6, s7, 1864
                  slt          s2, t6, t5
                  slti         t1, s11, -1838
                  or           s8, t4, zero
                  bge          s4, s9, 72f
70:               lui          s6, 42789
                  sltiu        tp, s9, 96
72:               bne          s7, t5, 81f
                  sra          s8, s6, t0
                  blt          sp, a5, 79f
                  sll          a1, t0, zero
                  bgeu         zero, tp, 83f
                  sll          a4, t3, s6
                  bne          a0, t0, 95f
79:               slti         t0, s7, 1398
                  ori          a6, s5, -338
81:               srl          s9, a7, a5
                  or           t4, a0, s5
83:               slli         s11, s0, 16
                  sub          s9, t1, t1
                  xor          s9, s0, s7
                  xori         zero, s4, -1537
                  xor          s4, s8, t1
                  lui          s7, 692283
                  xori         s8, s8, 332
                  slti         s11, s0, -509
                  xor          s6, a6, a2
                  andi         a1, ra, 315
                  and          s0, t0, s11
                  srl          s7, zero, s0
95:               srl          a4, t2, s1
                  bltu         t4, s9, 99f
                  slt          t1, a7, s2
                  lui          s3, 85297
99:               or           t0, a0, t1
                  and          a4, zero, s8
                  auipc        a4, 901527
                  add          a6, tp, s10
                  srai         s0, s2, 2
                  slt          t6, t5, tp
                  lui          s1, 664667
                  and          a7, s0, s5
                  sub          s9, t0, s9
                  srai         s4, s7, 19
                  sltu         s7, a1, s4
                  bge          s10, gp, 121f
                  srl          s10, s5, zero
                  sra          s3, a4, gp
                  srai         s2, zero, 4
                  lui          a5, 896691
                  xor          a7, tp, t1
                  addi         zero, a5, -1170
                  slt          s4, a0, t2
                  srai         t5, t6, 11
                  sltu         t1, a0, t5
                  sub          sp, zero, s10
121:              slti         t5, s10, -494
                  blt          a4, t0, 125f
                  andi         t2, s2, -1890
                  lui          sp, 63251
                  la           s3, sub_1
                  ori          s2, s1, 770
                  addi         s3, s3, 299
                  andi         t2, a7, 1307
                  nop
                  add          t5, a1, s8
                  lui          a5, 868560
main_j2:          jalr         t5, s3, -299 #jump main -> sub_1
                  sltu         t2, t0, a4
125:              srai         s0, tp, 20
                  xori         tp, s5, 1247
                  bgeu         t3, t1, 134f
                  nop
                  ori          s11, t6, 1332
                  or           tp, s5, s2
                  slti         a6, t0, -1178
                  or           gp, t3, ra
                  blt          s4, ra, 142f
134:              bgeu         sp, s10, 145f
                  blt          s0, a7, 140f
                  xor          t1, zero, a2
                  bge          s0, s9, 144f
                  nop
                  bgeu         t2, s3, 140f
140:              srli         a5, s8, 21
                  nop
                  sra          t6, t3, a3
                  xori         s6, t5, 1533
                  xori         s3, s2, 439
                  sra          a5, t1, sp
                  la           s1, sub_1
                  nop
                  nop
                  addi         s1, s1, -225
                  srl          t6, s2, s0
main_j1:          jalr         t5, s1, 225 #jump main -> sub_1
                  lui          a1, 305726
142:              blt          t4, t3, 150f
                  ori          t5, sp, -1575
144:              srl          a4, a1, t3
145:              srli         s8, a4, 6
                  srai         s0, t5, 17
                  srl          a5, s9, s6
                  add          s11, s5, s7
                  bge          a2, zero, 150f
150:              auipc        s4, 220997
                  addi         a5, s8, 1562
                  or           s10, s5, a6
                  sra          s7, s5, s9
                  srl          s7, t1, s1
                  slt          t4, s6, zero
                  sltu         tp, t2, a2
                  sra          s9, s10, s2
                  sra          t6, a5, s6
                  beq          t6, ra, 163f
                  addi         t4, tp, -1472
                  ori          s11, t3, -886
                  lui          a4, 189033
163:              sltu         s11, t4, t6
                  slli         s2, gp, 26
                  slt          a1, t4, t5
                  andi         s9, s2, -38
                  auipc        t4, 797897
                  srl          tp, a2, a3
                  blt          t4, t6, 172f
                  nop
                  blt          s8, s0, 172f
172:              sub          s2, sp, a1
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           addi         a2, a2, -24
                  sw           t5, 4(a2)
                  sra          s4, t1, t1
                  sra          t1, t5, s10
                  slt          ra, a0, s7
                  slti         gp, a1, -1187
                  ori          t0, s2, -212
                  sub          gp, s7, a0
                  addi         gp, sp, 1776
                  sll          gp, t2, a6
                  nop
                  la           gp, region_0+916 #start riscv_load_store_rand_instr_stream_14
                  sb           sp, -49(gp)
                  sb           s5, 57(gp)
                  sub          sp, t4, a4
                  lh           t5, -46(gp)
                  lbu          t4, 51(gp)
                  addi         s7, a3, -746
                  ori          s11, gp, -1159
                  nop
                  slt          s2, s10, t3
                  sb           s3, -63(gp)
                  lh           t0, -50(gp)
                  slti         a7, sp, 1993
                  lbu          a4, 60(gp)
                  lbu          a3, 9(gp)
                  lb           t0, 9(gp)
                  sb           s1, 38(gp)
                  xori         s0, s5, -776
                  lh           a4, 40(gp)
                  ori          a5, t0, 612
                  nop
                  sh           s11, -38(gp)
                  sb           sp, 6(gp)
                  sb           zero, -29(gp)
                  sh           t4, 48(gp)
                  lbu          t2, 10(gp)
                  lbu          a3, -61(gp)
                  srli         a5, a2, 17
                  xori         s10, t6, 1805
                  lbu          t0, 57(gp)
                  lb           s7, -7(gp)
                  addi         t0, s2, 1046
                  lb           tp, -4(gp)
                  lb           t1, -43(gp)
                  lbu          ra, 11(gp)
                  add          t6, sp, s4
                  lui          sp, 465384
                  slt          a1, a5, a4
                  lhu          a3, 28(gp)
                  lbu          s0, -45(gp)
                  andi         s11, a4, 161
                  slti         tp, s4, 342
                  lb           sp, 35(gp)
                  and          a3, a7, s4
                  lh           s9, 8(gp)
                  nop
                  srl          s2, t0, ra
                  lb           s2, 13(gp) #end riscv_load_store_rand_instr_stream_14
                  la           s0, region_1+1629 #start riscv_load_store_rand_instr_stream_16
                  xori         zero, s0, -979
                  sb           ra, -8(s0)
                  lhu          a5, -13(s0)
                  auipc        a3, 669134
                  sb           s11, -10(s0)
                  lb           t1, -16(s0)
                  slti         a5, zero, 669
                  add          a0, s3, a1
                  sb           s11, 8(s0)
                  slt          t0, sp, a0
                  sltiu        s9, a7, -108
                  lb           t5, 1(s0)
                  lui          t6, 308884
                  lb           zero, -8(s0)
                  auipc        s9, 964083
                  sll          a3, t6, ra
                  and          s3, s8, zero
                  addi         zero, a1, 540
                  lb           s6, 8(s0)
                  lbu          a1, 4(s0)
                  or           a6, s3, s5
                  or           a0, s5, t6
                  add          gp, s8, t4
                  andi         a4, s6, 354
                  lb           s2, 0(s0)
                  ori          a6, s9, 446
                  or           a3, sp, t4
                  slli         s10, a5, 5
                  sll          a7, t6, s3
                  srli         zero, gp, 7
                  addi         a4, ra, 1024
                  srai         s9, t1, 26
                  andi         s1, t4, -1427
                  nop
                  srl          a1, a7, t3
                  auipc        s3, 559035
                  sb           t1, -6(s0) #end riscv_load_store_rand_instr_stream_16
                  la           sp, region_0+1113 #start riscv_load_store_rand_instr_stream_12
                  srli         t0, t1, 6
                  lb           a5, 201(sp)
                  srli         t0, a0, 22
                  xori         a3, s8, -427
                  lb           t2, -164(sp)
                  sh           s11, 81(sp)
                  sw           a6, 219(sp)
                  sb           gp, -64(sp)
                  srl          s4, s8, s3
                  lb           t0, 81(sp)
                  sub          s10, ra, gp
                  andi         s1, zero, 1648
                  sb           s0, -164(sp)
                  auipc        s11, 224621
                  lb           s11, 34(sp)
                  lbu          t6, -114(sp)
                  and          t0, s9, s8
                  sltu         t0, a6, s4
                  lb           t5, -190(sp)
                  slt          s6, s7, t0
                  xori         s7, s4, 826
                  xor          s9, t4, a0
                  lbu          a1, -249(sp)
                  lb           ra, 66(sp)
                  lui          s2, 746153
                  srli         a3, s4, 0
                  lh           a5, 103(sp)
                  lhu          s11, 103(sp)
                  ori          a6, a7, -1038
                  srl          t5, a6, a1
                  sra          s3, s4, a4
                  lh           zero, 5(sp)
                  sb           tp, 90(sp)
                  sll          t1, t0, a5
                  srl          a3, t5, s2
                  lbu          a3, 53(sp)
                  auipc        s1, 379733
                  sb           t5, -172(sp)
                  lhu          t0, -223(sp)
                  sb           sp, -157(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_0+957 #start riscv_load_store_rand_instr_stream_5
                  add          s7, t1, s7
                  lb           s1, 6(sp)
                  ori          a7, s5, -43
                  slt          gp, zero, a4
                  slt          t0, a4, tp
                  sb           a6, -1(sp)
                  sub          s9, s3, sp
                  slli         s0, gp, 21
                  sub          s1, s11, gp
                  sh           s2, 5(sp)
                  sb           tp, 4(sp)
                  xori         a3, a0, 883
                  srli         t1, s8, 3
                  sb           sp, 14(sp)
                  srai         s2, a5, 13
                  xor          s2, a1, s11
                  addi         zero, zero, 1647
                  lui          s1, 510395
                  sra          a5, t3, a0
                  sb           s9, 0(sp)
                  addi         s10, t0, -1970
                  srli         gp, s7, 28
                  lb           s2, 6(sp)
                  lb           a0, 4(sp)
                  auipc        a7, 381968
                  slli         s7, tp, 5
                  and          a5, a2, s6
                  and          s4, gp, a7
                  lb           s0, 6(sp)
                  slt          a6, s1, s4
                  srli         t6, s1, 18
                  nop
                  sll          a5, s5, s0
                  or           a7, zero, a5
                  sh           tp, 9(sp)
                  and          s4, s0, t5
                  or           tp, s0, s11
                  sll          a0, a1, t3
                  sb           a3, -6(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s4, region_0+1951 #start riscv_load_store_rand_instr_stream_0
                  and          a1, s4, t0
                  sw           t5, -127(s4)
                  lbu          ra, -60(s4)
                  lb           gp, -49(s4)
                  sb           t3, -113(s4)
                  srai         s11, a6, 3
                  lb           a4, 37(s4)
                  and          ra, s7, s0
                  sb           ra, -210(s4)
                  slti         s6, t0, 834
                  andi         s10, s3, -599
                  lui          t1, 587003
                  lb           s2, 2(s4)
                  lb           t4, -173(s4)
                  srai         tp, s9, 4
                  sw           a4, -59(s4)
                  auipc        s8, 20518
                  sb           s11, -142(s4)
                  lh           a0, -63(s4)
                  xori         a5, s9, 1196
                  lui          t6, 241367
                  addi         a3, s3, -1461
                  srai         a3, a0, 21
                  andi         t4, t2, -752
                  sb           tp, -252(s4)
                  srli         a6, s0, 1
                  sll          s9, a5, s5
                  lui          s7, 904331
                  sub          s10, s2, s8
                  ori          sp, s8, 112
                  sltu         s8, s9, s8
                  srl          t0, gp, t4
                  srai         s2, a6, 14
                  srai         a3, a4, 18
                  sb           t2, -202(s4)
                  lb           s11, -28(s4)
                  srai         s1, t4, 21
                  slt          t1, s10, s9
                  srli         s9, t1, 21
                  sb           s4, 24(s4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1728 #start riscv_load_store_rand_instr_stream_13
                  sub          t1, a3, s4
                  and          zero, s5, t5
                  lbu          a0, -1274(sp)
                  srl          ra, s3, t3
                  xor          a6, s7, t5
                  sltu         s1, s11, s11
                  ori          t1, s7, -195
                  slt          tp, s4, ra
                  sh           s6, -114(sp)
                  ori          a4, s6, -1956
                  lbu          tp, -1679(sp)
                  auipc        a7, 898933
                  srli         a1, s6, 13
                  add          s0, a5, a0
                  sltiu        s10, s8, 407
                  and          a7, sp, sp
                  slti         s9, gp, 1997
                  sw           a1, -1696(sp)
                  sh           a1, -1554(sp)
                  lbu          a6, -1313(sp)
                  ori          a5, s1, -1164
                  lh           t1, -1144(sp)
                  and          t4, t4, t6
                  ori          a3, s11, -85
                  or           a3, a6, a5
                  add          t6, a5, a4
                  lbu          s4, -867(sp)
                  lbu          s7, 196(sp)
                  sra          a7, s5, a4
                  sb           s7, 153(sp)
                  lhu          zero, -1440(sp)
                  sh           a3, -554(sp)
                  srai         t0, a2, 11
                  srl          t5, s4, s2
                  sb           s0, 23(sp)
                  ori          tp, s10, -496
                  lw           a0, -816(sp)
                  slli         a3, t0, 5
                  lui          s0, 844540
                  lb           s7, -825(sp) #end riscv_load_store_rand_instr_stream_13
                  la           t0, region_1+1646 #start riscv_load_store_rand_instr_stream_6
                  xori         t4, t5, -205
                  add          s7, s0, s7
                  sw           ra, 10(t0)
                  lb           s4, -245(t0)
                  srli         a1, s8, 7
                  and          ra, gp, a2
                  sra          s1, zero, t2
                  lb           t6, -199(t0)
                  sb           a1, 75(t0)
                  sh           ra, -176(t0)
                  lw           s3, 70(t0)
                  sh           s10, -214(t0)
                  lhu          a1, -100(t0)
                  or           t5, zero, a6
                  lb           t5, -98(t0)
                  lui          tp, 815467
                  lui          zero, 527216
                  lb           a0, 43(t0)
                  srli         t5, a3, 26
                  lh           s9, 42(t0)
                  sltiu        a5, a2, 1535
                  lh           s4, 236(t0)
                  addi         gp, s0, -969
                  lbu          s8, -231(t0)
                  sb           s10, -188(t0)
                  lh           a5, -160(t0)
                  sra          a7, s2, t4
                  sb           s10, 1(t0) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_0+1806 #start riscv_load_store_rand_instr_stream_3
                  lb           ra, 45(t6)
                  srai         a3, a2, 28
                  sra          a7, s3, tp
                  lb           s1, -200(t6)
                  lbu          gp, 185(t6)
                  add          s0, a1, a5
                  nop
                  slli         t4, t2, 11
                  nop
                  lbu          s11, 9(t6)
                  slt          a4, s2, tp
                  lb           a4, 187(t6)
                  srl          s2, a2, a6
                  sw           s1, -146(t6)
                  srli         s8, s8, 31
                  lb           a0, -198(t6)
                  lb           s10, 146(t6)
                  sh           s7, -90(t6)
                  sb           a5, -79(t6)
                  sb           s11, -32(t6)
                  lbu          sp, -230(t6)
                  slti         t1, a1, 1199
                  lhu          s0, 72(t6)
                  lbu          t0, -27(t6)
                  lb           zero, 159(t6)
                  sb           tp, 37(t6)
                  lb           zero, 15(t6)
                  lb           t4, -177(t6)
                  lhu          tp, 42(t6)
                  lh           a3, 166(t6) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1694 #start riscv_load_store_rand_instr_stream_7
                  slt          a4, ra, a5
                  srai         t5, s11, 16
                  lb           t2, 27(sp)
                  andi         s0, t0, 2037
                  lhu          s4, 42(sp)
                  sltiu        ra, ra, -1962
                  srai         a0, s6, 8
                  andi         a4, zero, -1530
                  lhu          a3, -44(sp)
                  sb           a5, -45(sp)
                  xori         s4, t4, -133
                  addi         s10, s4, -1153
                  sb           s9, -64(sp)
                  sh           t5, -46(sp)
                  addi         s2, a3, 739
                  lbu          t2, 52(sp)
                  sb           t5, -35(sp)
                  sra          s4, t2, s4
                  lbu          a5, -42(sp)
                  sltiu        s7, s4, 1381
                  lb           a7, -31(sp)
                  sb           a7, -49(sp)
                  sub          ra, s8, s8
                  auipc        a4, 1046068
                  lb           a5, -31(sp)
                  sh           t5, -10(sp)
                  lhu          tp, 20(sp)
                  xor          ra, s7, ra
                  sb           s2, -20(sp)
                  lb           t4, 3(sp)
                  lb           s2, -9(sp)
                  lbu          a6, 12(sp)
                  lhu          s2, -12(sp)
                  lbu          tp, 32(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+237 #start riscv_load_store_rand_instr_stream_17
                  sh           a6, -31(sp)
                  lb           a5, 246(sp)
                  sb           t3, -175(sp)
                  lbu          t0, 127(sp)
                  lbu          s7, 0(sp)
                  lhu          s2, -33(sp)
                  lb           s8, 147(sp)
                  lb           s10, -96(sp)
                  lb           tp, 69(sp)
                  sub          a1, a5, s6
                  sra          s6, a1, t2
                  slt          a1, a4, zero
                  lb           a3, -166(sp)
                  lb           s7, 234(sp)
                  or           s3, a6, a1
                  lbu          t5, 157(sp)
                  lh           s4, 125(sp)
                  lb           s6, 226(sp)
                  srli         tp, s0, 3
                  sb           a4, 4(sp)
                  xori         a6, t2, 1053
                  srli         a5, a1, 22
                  lb           s11, 97(sp)
                  lbu          s9, 130(sp)
                  lb           a7, 60(sp)
                  sb           s0, -158(sp)
                  and          t1, ra, a7
                  lbu          a6, -210(sp)
                  auipc        s3, 519011
                  lb           s9, -24(sp)
                  xori         t4, s8, 1157
                  lbu          s8, -108(sp)
                  lbu          a0, -74(sp)
                  lw           gp, 111(sp)
                  lbu          s7, 140(sp)
                  srli         t2, s8, 3
                  lbu          s4, 107(sp)
                  sh           t2, 29(sp) #end riscv_load_store_rand_instr_stream_17
                  la           s1, region_0+1603 #start riscv_load_store_rand_instr_stream_9
                  sra          zero, s4, t4
                  sb           ra, 5(s1)
                  lh           s0, -29(s1)
                  sb           t2, -32(s1)
                  lui          s0, 221198
                  lbu          s8, 0(s1)
                  xor          s4, s9, a3
                  lhu          tp, 43(s1)
                  lb           sp, -16(s1)
                  lhu          s4, 9(s1)
                  lbu          t4, -17(s1)
                  or           s7, a3, a5
                  andi         a6, t1, 1327
                  lhu          gp, 31(s1)
                  lhu          tp, 13(s1)
                  ori          a6, s1, 1616
                  lbu          a3, -48(s1)
                  lh           a5, -49(s1)
                  add          s7, s6, a1
                  add          sp, a5, s2
                  lh           a0, 25(s1)
                  slli         sp, a0, 0
                  lbu          gp, 50(s1)
                  lb           tp, 55(s1)
                  addi         a7, t3, -133
                  add          s8, s3, t3
                  lbu          a5, -36(s1)
                  lb           s7, -15(s1)
                  add          t5, s3, s1
                  ori          t4, s8, 1014
                  lbu          a7, 10(s1)
                  sb           s9, 13(s1)
                  sw           a1, 49(s1)
                  lbu          a7, -38(s1)
                  sh           s10, -59(s1)
                  sb           s11, 20(s1)
                  sltu         s10, t4, ra
                  slli         s0, t1, 14
                  lbu          a7, -45(s1)
                  slt          s6, sp, t2
                  srai         t6, t2, 24
                  lh           s4, -5(s1)
                  slt          t5, a2, t1
                  auipc        s4, 166425
                  addi         gp, s8, 1703
                  andi         a0, zero, 1296
                  ori          s7, t1, -1330
                  slli         t4, t2, 8
                  lb           zero, -24(s1)
                  nop
                  lbu          s3, 16(s1)
                  ori          s6, s6, -331
                  lbu          gp, 43(s1) #end riscv_load_store_rand_instr_stream_9
                  la           tp, region_1+839 #start riscv_load_store_rand_instr_stream_15
                  srl          s8, a5, a4
                  srl          t2, s0, s0
                  and          zero, s7, s6
                  andi         s1, a5, -2010
                  andi         a0, s7, -1648
                  sll          s4, s3, s10
                  ori          t5, s9, 977
                  slli         a5, s10, 28
                  srai         s0, s5, 17
                  sb           t6, 98(tp)
                  sub          a1, s4, s6
                  lui          s9, 606095
                  sw           gp, -515(tp)
                  sw           t4, 413(tp)
                  srli         a7, t2, 12
                  auipc        s8, 832881
                  xori         a1, t4, 1612
                  xor          sp, s8, sp
                  lbu          s4, 76(tp)
                  lbu          t0, -252(tp)
                  xor          a1, s7, t6
                  or           s9, s6, ra
                  lb           a1, 613(tp)
                  sb           tp, -630(tp)
                  slli         s1, t6, 25
                  sub          a3, s10, sp
                  sll          a1, zero, a2
                  lh           a5, 145(tp)
                  xori         t1, sp, -1589
                  addi         s0, t4, 1624
                  sb           t0, 320(tp)
                  sb           s9, -671(tp)
                  srl          sp, a0, a2
                  sh           s4, -581(tp)
                  and          s7, s8, s5
                  lui          s1, 32229
                  sltu         s0, s2, zero
                  lh           sp, 997(tp)
                  lbu          a5, -400(tp)
                  sh           s11, -335(tp)
                  lbu          a0, 782(tp)
                  sltiu        a4, a3, -393
                  andi         s6, s9, -1089
                  lbu          t2, -462(tp)
                  xori         s2, s5, 22
                  lb           s7, -406(tp)
                  sh           ra, -517(tp) #end riscv_load_store_rand_instr_stream_15
                  la           s10, region_0+716 #start riscv_load_store_rand_instr_stream_8
                  lb           tp, -47(s10)
                  lhu          a5, 38(s10)
                  ori          a3, zero, -1951
                  slli         t4, a0, 2
                  nop
                  sb           s7, -25(s10)
                  xori         s2, t4, 1608
                  srli         s3, s5, 19
                  sub          s1, a1, s6
                  ori          t2, t1, 1896
                  sw           a2, -32(s10)
                  sll          t5, s11, t6
                  slti         sp, t5, 596
                  auipc        tp, 359580
                  lb           s6, 9(s10)
                  sub          s7, t4, sp
                  sra          s4, s2, a0
                  lbu          s7, -3(s10)
                  sb           ra, -3(s10)
                  sltu         s6, t1, zero
                  andi         t5, s6, -578
                  lhu          a0, -50(s10)
                  slti         tp, sp, 1856
                  lh           a5, 2(s10)
                  ori          t4, a0, -1976
                  sub          zero, a6, s5
                  slt          t2, s0, s2
                  lh           a0, 10(s10)
                  sb           s4, 39(s10)
                  lbu          s9, -4(s10)
                  lui          s11, 620770
                  lbu          s2, 61(s10)
                  slti         t5, a7, -657
                  add          s11, t6, tp
                  slti         a6, t6, -1356
                  lui          a5, 33083
                  srai         t6, a1, 18
                  sb           t6, -16(s10)
                  lbu          s8, 5(s10)
                  srl          s6, tp, a6
                  add          s6, s7, s2
                  sb           s4, 15(s10)
                  sb           zero, -18(s10)
                  lbu          s6, -53(s10)
                  sb           a1, 15(s10) #end riscv_load_store_rand_instr_stream_8
                  blt          t3, a3, 6f
                  bge          t2, s11, 14f
                  blt          s4, s10, 20f
                  bltu         a1, t1, 7f
                  bne          a2, s1, 9f
                  nop
6:                and          a4, s4, s5
7:                nop
                  srai         s1, s5, 4
9:                lui          t0, 519763
                  slli         s4, zero, 12
                  bne          s4, a4, 13f
                  add          a1, s1, s8
13:               addi         s10, t4, -2014
14:               srl          s7, gp, s3
                  xor          gp, s11, s11
                  sub          a1, t0, a7
                  or           ra, a2, ra
                  srli         t5, s1, 8
                  bltu         s11, s3, 22f
20:               beq          a7, t2, 40f
                  sll          a0, s8, sp
22:               add          t4, s1, t6
                  add          t1, t6, zero
                  sltiu        a1, a4, 1232
                  xori         s2, s11, -1044
                  sll          t1, sp, t2
                  sltiu        a0, s7, 2014
                  bne          s0, a4, 46f
                  srl          a3, a2, ra
                  xor          t0, a6, s1
                  sltu         gp, t4, s10
                  sub          t6, a1, s4
                  xori         t4, zero, 201
                  or           t6, t6, a7
                  srl          t6, a2, s8
                  sub          t2, s0, a4
                  and          s8, s7, a3
                  auipc        s4, 44156
                  blt          t4, t0, 45f
40:               auipc        s11, 735493
                  bltu         s3, s9, 45f
                  andi         sp, s4, 1294
                  beq          a5, a5, 60f
                  srai         t5, s1, 6
45:               bltu         s6, s2, 55f
46:               bge          s0, a0, 48f
                  xori         s8, a7, 413
48:               add          s1, ra, t3
                  add          tp, t0, t5
                  sub          s7, t3, t6
                  bne          t0, s7, 68f
                  blt          t2, s6, 54f
                  sltu         a7, s6, s5
54:               andi         zero, s8, -1166
55:               slti         s2, a1, -1745
                  ori          a4, a6, 172
                  sll          t6, s11, t1
                  beq          s8, sp, 76f
                  sra          a0, gp, t2
60:               andi         tp, s4, -409
                  lui          s0, 786069
                  auipc        tp, 554422
                  sra          s10, a4, s3
                  sltiu        s9, a3, 7
                  slti         zero, t2, -1182
                  andi         a3, s11, -770
                  lui          a5, 719619
68:               auipc        t0, 15416
                  addi         gp, s11, 1321
                  add          tp, t6, t0
                  ori          gp, tp, -1442
                  slli         tp, a6, 9
                  andi         s10, gp, 112
                  sltu         a6, s0, t0
                  addi         s10, s1, 948
76:               sltiu        s8, a1, -591
                  sra          s8, s5, t2
                  sra          sp, a1, s6
                  blt          t0, s0, 86f
                  nop
                  bne          a3, s10, 100f
                  slli         s3, t6, 18
                  srl          a3, zero, s10
                  slli         sp, sp, 29
                  sltiu        a5, a4, 1001
86:               slli         t6, t0, 21
                  xori         t1, s10, -864
                  lui          a3, 535418
                  nop
                  bne          s8, a6, 97f
                  xor          a7, gp, t1
                  srai         t6, t4, 8
                  sub          s11, ra, s6
                  srl          zero, tp, s3
                  slt          t0, t0, a0
                  or           t6, a0, zero
97:               bne          s5, zero, 112f
                  add          ra, tp, s1
                  ori          s3, s11, 977
100:              andi         t6, s3, -1556
                  and          ra, t2, s6
                  sub          s10, t1, sp
                  addi         s11, s9, 8
                  nop
                  sll          s11, zero, gp
                  slli         s3, s3, 31
                  bne          a3, tp, 119f
                  sra          a3, t0, s4
                  sltu         t5, gp, t2
                  bne          s8, s8, 127f
                  lui          s6, 629193
112:              blt          sp, t3, 120f
                  srl          t0, zero, gp
                  sub          s0, a6, s5
                  beq          s11, zero, 134f
                  addi         a6, a1, -1762
                  nop
                  blt          s11, a3, 124f
119:              slli         t4, t2, 28
120:              addi         sp, sp, 1980
                  bltu         s4, t4, 123f
                  andi         s1, s3, 2
123:              lui          a0, 287676
124:              bne          t5, s9, 134f
                  lui          a0, 879991
                  blt          a6, s1, 128f
127:              auipc        a3, 283337
128:              or           a3, a3, ra
                  srl          a6, s1, t5
                  bne          sp, t2, 141f
                  srli         a6, t3, 11
                  xori         tp, s7, -1067
                  slti         gp, s10, 443
134:              srli         s7, s8, 0
                  srli         a5, a5, 28
                  bgeu         s3, tp, 138f
                  srl          s1, a0, s6
138:              bltu         t4, sp, 153f
                  srli         t4, t3, 28
                  bge          zero, ra, 150f
141:              bne          tp, a2, 149f
                  slti         a3, a6, 1669
                  sltiu        t1, a7, -1968
                  ori          a7, a0, 1885
                  ori          s8, ra, -2044
                  bgeu         s6, gp, 148f
                  beq          a5, s1, 151f
148:              ori          tp, a1, 1621
149:              nop
150:              sll          t0, s0, t0
151:              or           s10, s2, a0
                  lui          a4, 301186
153:              sra          s3, s10, t1
                  srl          t2, t2, sp
                  andi         sp, s1, -2028
                  slti         s4, s7, -192
                  addi         t6, sp, 968
                  beq          a4, s8, 178f
                  beq          a6, s3, 165f
                  auipc        t0, 159867
                  srl          t2, t6, t0
                  sll          s6, a2, t5
                  or           s10, t1, a3
                  lui          t6, 783901
165:              auipc        s7, 446462
                  slli         s1, a2, 16
                  add          a1, s3, s9
                  sra          ra, a0, s6
                  srl          t1, gp, a5
                  slti         s6, s11, -1780
                  slti         a0, a2, -433
                  sltiu        s4, t0, -1990
                  sll          a4, gp, s0
                  nop
                  beq          s8, s9, 179f
                  slt          t6, tp, a1
                  sll          t0, a4, s6
178:              sltiu        zero, a7, 378
179:              srai         s2, ra, 30
                  andi         a4, t0, -891
                  srai         a3, a0, 5
                  xori         t5, t4, -1372
                  sltu         a6, ra, t0
                  bltu         s9, t0, 194f
                  beq          s1, s8, 187f
                  addi         s11, a4, -62
187:              bgeu         ra, ra, 190f
                  bge          s8, a6, 195f
                  sll          a1, a5, s10
190:              bgeu         sp, s4, 207f
                  and          s4, t1, s0
                  addi         s8, t6, -1936
                  xori         s4, ra, -226
194:              nop
195:              and          a7, t2, zero
                  auipc        t2, 942962
                  addi         t5, tp, 1432
                  bne          s7, t6, 217f
                  slt          s11, s7, t0
                  sltu         s9, s0, t2
                  bne          t6, tp, 219f
                  bgeu         gp, t5, 219f
                  xor          a1, tp, t2
                  lui          s0, 455379
                  nop
                  add          zero, a4, a6
207:              lui          s7, 767131
                  srai         s11, s3, 17
                  andi         a4, s0, 1698
                  ori          s2, a1, -1302
                  or           a7, s5, ra
                  slti         t6, t1, -998
                  lui          a4, 332416
                  bne          s2, a5, 216f
                  auipc        a1, 282342
216:              sltu         t5, s2, s0
217:              nop
                  xori         s4, s4, -710
219:              sub          s3, s5, s5
                  bne          a7, s4, 222f
                  la           s1, region_0+1538 #start riscv_load_store_rand_instr_stream_2
                  nop
                  sb           s6, 0(s1)
                  xori         s11, s6, -1399
                  lbu          s7, -34(s1)
                  lh           t6, 0(s1)
                  xor          a0, t6, s4
                  xor          t1, a3, s11
                  slti         s0, a1, 780
                  lbu          a0, 43(s1)
                  lui          s4, 206929
                  lb           s0, 59(s1)
                  sb           s5, -47(s1)
                  lb           t4, 24(s1)
                  sb           t4, -39(s1)
                  andi         a3, a3, -387
                  sltiu        t5, t3, -580
                  lw           s3, 30(s1)
                  lbu          tp, -58(s1)
                  andi         s8, t5, -1147
                  sb           s11, -41(s1)
                  lbu          t4, -29(s1)
                  lhu          t4, -38(s1)
                  srai         sp, t3, 29
                  lbu          t4, 23(s1)
                  sb           t6, 41(s1)
                  auipc        s3, 308354
                  sb           zero, -6(s1)
                  lbu          s9, 25(s1)
                  lb           t6, 25(s1)
                  lb           a4, 53(s1)
                  sb           s1, -5(s1)
                  sb           s6, -20(s1)
                  lbu          zero, 13(s1)
                  sb           s2, -35(s1)
                  sub          zero, s8, a5
                  lbu          s2, -31(s1)
                  sb           t2, 21(s1) #end riscv_load_store_rand_instr_stream_2
                  sra          a5, s4, s6
222:              and          a4, s0, gp
                  nop
                  or           t2, ra, a1
                  lui          ra, 801735
                  srl          t4, t3, a2
                  srai         s0, s5, 20
                  bltu         s9, t3, 239f
                  sra          s3, sp, a6
                  nop
                  sltiu        s9, a6, -1273
                  addi         a0, s11, 1769
                  beq          a2, s7, 251f
                  beq          a4, t6, 252f
                  sltu         a0, a0, sp
                  blt          a1, t4, 248f
                  nop
                  srli         s7, a1, 14
239:              slli         a7, t5, 20
                  lui          s1, 522767
                  bne          tp, t2, 247f
                  lui          a6, 976841
                  bge          s9, gp, 260f
                  bgeu         s7, sp, 250f
                  srli         t2, sp, 21
                  bne          t5, a6, 251f
247:              andi         a3, s11, -1952
248:              sll          s10, ra, sp
                  sub          s3, s0, t0
250:              bge          s0, s0, 269f
251:              sll          t5, a4, s3
252:              bne          sp, t6, 259f
                  sltiu        zero, s2, -666
                  bltu         s10, s4, 267f
                  sll          s6, s11, s6
                  andi         ra, gp, 192
                  ori          t6, a4, -231
                  slt          s2, a2, t0
259:              ori          gp, t3, 145
260:              slli         s9, a3, 11
                  slti         t5, s6, 675
                  bne          t4, s10, 281f
                  slli         t4, s2, 0
                  sltiu        sp, s2, -130
                  sra          a5, a0, sp
                  ori          zero, ra, 227
267:              lui          a3, 456195
                  bne          a7, a0, 274f
269:              bgeu         s4, s7, 271f
                  xori         t4, t2, -1019
271:              xor          gp, a1, s3
                  or           gp, tp, t1
                  beq          s3, zero, 283f
274:              sub          a6, t6, zero
                  sltu         s9, a2, s1
                  bne          s11, t6, 294f
                  sltiu        ra, a3, 1144
                  andi         zero, t4, -354
                  slti         s10, s1, 649
                  bgeu         ra, s9, 286f
281:              ori          t2, s0, 827
                  beq          a5, gp, 300f
283:              sltiu        sp, t2, 1361
                  xori         a6, a5, 703
                  or           s6, t6, a1
286:              lui          s9, 791701
                  srli         s10, t3, 24
                  xori         ra, t1, -352
                  slli         tp, a5, 17
                  add          t1, t3, s10
                  nop
                  bge          s8, a2, 294f
                  sltu         s0, a0, s9
294:              sra          gp, s4, ra
                  srli         t2, a5, 3
                  xor          a7, s11, a0
                  ori          t6, t2, -1792
                  lui          s6, 695320
                  andi         gp, a2, -1737
300:              sub          t4, s0, s8
                  andi         s8, t1, -1658
                  andi         s2, a2, 1407
                  ori          a0, a2, 532
                  sltiu        a5, t4, -1305
                  or           ra, a5, s0
                  nop
                  slli         s9, s11, 19
                  add          t5, t6, s4
                  sltiu        zero, s2, 477
                  lui          sp, 403776
                  lui          ra, 643273
                  sll          gp, t4, s5
                  lui          a6, 31526
                  sra          a3, s11, t2
                  sltiu        ra, t1, -203
                  nop
                  ori          a7, s0, 253
                  ori          sp, s10, 656
                  addi         gp, s1, -452
                  srl          gp, a0, s8
                  blt          a1, a2, 328f
                  addi         s7, t0, 1867
                  xori         tp, s9, -1067
                  xori         a4, t5, 95
                  sll          s4, s10, tp
                  lui          a3, 58670
                  auipc        a7, 751737
328:              andi         t5, a4, -938
                  bne          s6, a0, 340f
                  auipc        s7, 35596
                  sub          s3, t6, s8
                  lui          s4, 398045
                  sltiu        t4, zero, 1369
                  blt          t6, s10, 342f
                  bne          s7, zero, 350f
                  nop
                  bltu         a1, t0, 342f
                  ori          a0, s4, 1052
                  auipc        s6, 796428
340:              xor          a7, a1, tp
                  and          tp, zero, a7
342:              add          ra, t4, s9
                  bne          a6, t2, 346f
                  srai         a4, a1, 21
                  bgeu         s5, t5, 347f
346:              auipc        a5, 303312
347:              xori         s4, a2, -979
                  blt          t2, a2, 358f
                  xori         gp, t1, -1230
350:              srai         a0, a7, 8
                  bne          t3, s9, 370f
                  bne          a0, a0, 359f
                  sub          ra, t5, zero
                  xor          sp, gp, s5
                  sll          s9, s0, t2
                  add          s4, s4, a0
                  or           t2, s4, sp
358:              xor          t1, s3, t2
359:              sltu         s2, s11, a5
                  bgeu         s2, t2, 364f
                  bne          a7, ra, 378f
                  bgeu         s8, t5, 368f
                  blt          t0, t6, 376f
364:              nop
                  srl          s4, tp, s11
                  srai         s11, a3, 13
                  srli         t0, a3, 3
368:              bge          s8, s1, 372f
                  bgeu         a0, s11, 386f
370:              bne          a1, s9, 388f
                  srli         gp, a4, 13
372:              bne          s0, s11, 384f
                  auipc        t2, 468110
                  bgeu         s4, t6, 376f
                  blt          s5, a5, 377f
376:              srl          a4, t3, t4
377:              slti         t1, a4, 1820
378:              slti         a6, s3, -1845
                  sltiu        t2, ra, 128
                  xor          t6, a2, t4
                  sub          a6, a0, s6
                  andi         s1, tp, 1724
                  blt          s4, zero, 403f
384:              bgeu         s6, t6, 401f
                  or           s1, t2, tp
386:              addi         a7, zero, -366
                  xori         tp, s1, -1966
388:              sll          t6, s4, zero
                  sra          s9, t3, t0
                  sltu         s11, s7, s8
                  auipc        s11, 328724
                  auipc        a3, 638461
                  xori         s0, a3, 788
                  andi         s11, zero, -63
                  srl          t4, s9, ra
                  beq          tp, s2, 398f
                  bge          t5, a0, 401f
398:              and          a0, t5, t2
                  bltu         a3, s6, 406f
                  blt          gp, t4, 417f
401:              sra          zero, s0, t2
                  bge          t5, s11, 420f
403:              lui          s0, 878946
                  sll          s6, s11, s8
                  srai         a0, a2, 19
406:              lui          s8, 234283
                  slli         a7, t0, 10
                  bltu         a6, a2, 415f
                  lui          t1, 1008798
                  bne          ra, s5, 416f
                  auipc        a5, 177047
                  sltiu        zero, ra, 1608
                  sra          s9, ra, s9
                  andi         t5, gp, 1564
415:              blt          gp, s7, 426f
416:              srai         s0, a1, 19
417:              bgeu         a2, gp, 422f
                  auipc        t4, 536598
                  srli         s10, ra, 1
420:              addi         sp, t0, -46
                  sub          t4, s1, s9
422:              andi         a0, s5, -254
                  beq          s9, a7, 425f
                  auipc        s11, 557664
425:              sltu         t2, t1, t4
426:              srli         t2, s0, 6
                  sub          sp, a2, a5
                  srl          a5, tp, s0
                  xori         s11, s9, 1780
                  beq          a3, t6, 443f
                  sltu         a1, s5, a0
                  bne          t2, s9, 435f
                  andi         a4, a4, -1746
                  auipc        s0, 351521
435:              srli         ra, ra, 26
                  auipc        s9, 193899
                  addi         ra, s4, 606
                  or           a0, s5, a6
                  srl          t4, a4, s7
                  sltu         t0, s10, a2
                  or           s0, zero, ra
                  beq          zero, s11, 452f
443:              sltiu        t0, t0, -513
                  sltiu        t1, ra, 2
                  slli         a5, gp, 17
                  blt          a2, a0, 465f
                  lui          s9, 19306
                  bltu         gp, s4, 454f
                  sltu         gp, s1, t1
                  bne          ra, a2, 462f
                  slt          s0, a0, t6
452:              andi         a1, s1, 244
                  bge          s3, s1, 461f
454:              srli         s7, a3, 14
                  bge          tp, a7, 473f
                  bne          s3, t4, 473f
                  sltiu        a1, s1, -1043
                  slti         t0, t2, 1694
                  or           a5, a2, s7
                  sub          s6, t2, a5
461:              sltu         t6, a6, s0
462:              andi         ra, t3, -333
                  slli         tp, t4, 13
                  bne          s4, s8, 468f
465:              sub          a4, a7, t4
                  sub          gp, t3, s3
                  bge          t1, a5, 487f
468:              lui          t5, 873981
                  srl          a4, s11, s1
                  sub          s8, s3, t5
                  ori          s4, s11, -801
                  or           s0, a1, s8
473:              xori         a4, gp, -665
                  and          s0, gp, a6
                  and          s9, s7, s1
                  beq          s9, s0, 478f
                  slli         t1, s0, 14
478:              bne          s1, t2, 497f
                  beq          s10, tp, 481f
                  sltu         a6, t0, t3
481:              bne          t5, s7, 499f
                  xori         a7, s0, -178
                  slt          t6, s0, a0
                  nop
                  add          a5, a5, a4
                  srl          s9, s11, s2
487:              slt          a4, s7, sp
                  srl          a6, s0, gp
                  srl          tp, sp, a5
                  sra          t0, t5, t4
                  addi         a1, sp, -1454
                  bgeu         a6, zero, 509f
                  nop
                  bge          t2, sp, 509f
                  xor          a6, s6, t3
                  sll          zero, s9, s0
497:              auipc        s8, 716770
                  xori         s7, s11, -659
499:              slti         s0, t1, -433
                  xori         s1, s3, -1285
                  bgeu         s0, t6, 503f
                  add          s2, s5, t1
503:              sltu         gp, t5, s8
                  sra          a5, t0, s11
                  blt          a1, t5, 511f
                  srl          s10, a6, s3
                  add          t4, s9, a5
                  xor          s6, tp, a6
509:              srli         s9, s2, 31
                  ori          t2, s0, 227
511:              beq          s7, s1, 521f
                  slli         ra, s8, 24
                  bltu         a0, ra, 518f
                  blt          a6, ra, 520f
                  xor          s2, a0, s8
                  bgeu         t6, a0, 529f
                  sub          s7, t6, sp
518:              sll          s2, ra, t4
                  auipc        gp, 716444
520:              sltiu        a1, s4, -724
521:              lui          s4, 133978
                  sltiu        gp, tp, -1800
                  beq          t4, a1, 529f
                  sll          t2, s3, zero
                  bgeu         gp, s3, 527f
                  addi         zero, s6, -1532
527:              blt          s2, s9, 539f
                  or           s1, t4, a1
529:              or           t2, a5, s4
                  xori         gp, t3, -96
                  srli         s4, t6, 16
                  slti         a1, s11, -1729
                  xori         ra, s1, 1594
                  slli         s2, s10, 6
                  bge          t6, t0, 537f
                  and          s7, tp, a0
537:              sll          a1, sp, a3
                  srli         s2, a0, 10
539:              bgeu         a5, gp, 559f
                  lui          t1, 574271
                  ori          s2, a0, 1868
                  and          s6, t1, s2
                  addi         t4, zero, 1765
                  bge          s10, s11, 550f
                  sltiu        a1, a0, -1241
                  nop
                  sltiu        s10, tp, 1291
                  sll          t2, s3, t5
                  xor          s10, s1, a3
550:              srl          s0, zero, a0
                  add          a5, s2, s5
                  sll          a3, s4, a2
                  add          a3, s2, s10
                  nop
                  slt          s3, s8, s7
                  sra          s11, s3, t5
                  xor          s7, s0, s7
                  srl          a6, s6, gp
559:              bge          s0, s11, 577f
                  xor          a3, a0, a4
                  sub          t4, a5, a6
                  sra          s10, t6, s3
                  srai         s10, s10, 31
                  andi         s6, a7, -371
                  nop
                  lui          ra, 983899
                  addi         s8, a3, -1349
                  and          s0, s8, sp
                  add          s2, s11, s9
                  srai         s6, t1, 26
                  slli         s4, s10, 22
                  slt          s3, ra, s1
                  andi         s3, s2, 551
                  addi         s4, t4, -640
                  addi         t0, t5, 190
                  slti         t5, a6, -949
577:              xor          a0, s1, s6
                  slti         a0, a7, 1208
                  slt          t6, sp, a5
                  ori          a1, a2, 411
                  sltu         s8, a3, s8
                  or           t6, s4, a4
                  xor          t6, s8, a2
                  xor          t1, s8, a7
                  xori         t4, s2, 241
                  slt          s2, gp, sp
                  srai         t0, s4, 3
                  srl          a5, t2, s2
                  bltu         a5, s11, 596f
                  ori          s9, s7, 232
                  addi         t6, sp, -1768
                  andi         s11, zero, -161
                  bne          t2, a2, 600f
                  sub          a0, zero, s9
                  bne          t3, s3, 597f
596:              add          t6, a3, s4
597:              slli         ra, t6, 26
                  sltu         s7, s0, t1
                  auipc        s1, 699794
600:              xor          t2, a7, s7
                  xor          sp, gp, s7
                  sra          s10, t6, t2
                  lui          t4, 457710
                  sll          t0, t4, s2
                  ori          ra, a2, 629
                  slt          gp, a1, zero
                  nop
                  lui          s2, 13151
                  bne          ra, s8, 627f
                  ori          ra, a0, 267
                  andi         s0, t6, -1976
                  or           s3, s3, zero
                  andi         t1, s3, -1574
                  xori         a0, a1, -594
                  auipc        t0, 390811
                  slt          zero, sp, t6
                  sltu         s0, a0, a4
                  bgeu         t3, a5, 620f
                  sltiu        s4, s6, -1277
620:              sltiu        t6, s2, -579
                  slli         s1, t5, 14
                  bgeu         t2, a3, 639f
                  srl          a1, s7, s6
                  add          ra, t6, a3
                  lui          s1, 650530
                  lui          gp, 109529
627:              bge          s8, s2, 642f
                  blt          a3, s0, 638f
                  sltu         a3, t4, sp
                  auipc        s4, 113313
                  and          t5, s5, t0
                  lui          t5, 572026
                  beq          a0, a7, 637f
                  xor          s7, s8, t4
                  add          sp, ra, s4
                  sll          s1, a6, t0
637:              ori          s4, a5, 904
638:              bge          t3, s2, 646f
639:              addi         s10, s9, -1146
                  or           s9, t1, t1
                  auipc        sp, 277017
642:              srli         ra, t6, 13
                  beq          t5, t0, 647f
                  lui          a7, 386186
                  or           s8, s11, t1
646:              sltu         s10, t1, a7
647:              bne          s10, a1, 664f
                  xor          t5, s8, s1
                  andi         s7, s2, 1112
                  sra          t4, t6, s5
                  lui          sp, 796283
                  andi         s8, a7, 1241
                  ori          s8, a2, -1254
                  slt          t0, s10, s1
                  andi         a3, t6, -1582
                  srl          t0, s3, t5
                  nop
                  bge          a5, t6, 660f
                  sltu         sp, gp, a3
660:              lui          a4, 253168
                  or           a5, s11, s2
                  or           s11, a3, a3
                  bge          t3, a1, 682f
664:              beq          gp, t1, 675f
                  bltu         s6, s11, 668f
                  lui          s3, 720271
                  sll          s3, a4, a6
668:              sltiu        s10, a1, -446
                  slli         a0, s10, 4
                  nop
                  bgeu         s4, s10, 690f
                  bge          s4, s5, 682f
                  sltu         tp, tp, t2
                  nop
675:              sltu         s10, a2, a5
                  sub          t6, s8, tp
                  add          a1, s9, s1
                  beq          t2, a1, 696f
                  slti         a5, ra, -1459
                  sltiu        s4, t6, 1252
                  sltu         s7, s3, t0
682:              xori         t4, t2, -1637
                  bltu         sp, s2, 700f
                  beq          zero, t2, 690f
                  xor          s7, ra, s1
                  beq          s10, a7, 696f
                  lui          a6, 505996
                  sra          t5, a4, a4
                  bne          gp, s6, 696f
690:              bgeu         a1, s8, 697f
                  nop
                  lui          s3, 475731
                  sltiu        s3, t2, -286
                  lui          s10, 502986
                  xor          a7, s2, a0
696:              slti         t6, sp, 1414
697:              slt          t2, a6, a4
                  and          zero, a7, ra
                  andi         t2, a3, 944
700:              addi         gp, t1, 520
                  ori          s0, s10, -632
                  auipc        a3, 349224
                  srli         ra, s8, 4
                  srl          tp, zero, s10
                  lui          t6, 107527
                  blt          s3, s3, 724f
                  sltiu        sp, s1, 1105
                  slli         a0, gp, 1
                  andi         t4, gp, 448
                  srl          a4, a3, s5
                  sll          tp, s0, s3
                  blt          a5, t5, 714f
                  lui          sp, 417067
714:              sltiu        s4, a3, -988
                  nop
                  nop
                  addi         a6, a6, 270
                  slti         t5, a4, 895
                  bge          a0, t0, 721f
                  slli         s3, s9, 22
721:              addi         t0, a3, 1956
                  bgeu         a4, s6, 739f
                  addi         t6, s10, 888
724:              or           a1, t3, a6
                  srai         a3, t0, 13
                  sll          a4, s2, ra
                  andi         t5, t1, 860
                  sltu         t5, sp, s3
                  xor          s8, s4, a1
                  sll          a6, t4, s2
                  blt          ra, t0, 743f
                  srai         t0, s2, 7
                  bne          s7, a4, 753f
                  and          s7, s4, zero
                  bltu         s7, s6, 753f
                  sltiu        t5, t4, 1038
                  srl          s2, s2, a4
                  srai         s1, a3, 0
739:              sll          a7, t4, t0
                  sub          a0, t5, t0
                  lui          s4, 100233
                  slli         a1, tp, 29
743:              auipc        s11, 518449
                  sltiu        s3, s5, 462
                  beq          t4, a1, 763f
                  add          t4, s3, a7
                  sll          a5, tp, s7
                  sll          t0, s9, s9
                  nop
                  nop
                  beq          zero, t6, 761f
                  xori         t0, s11, 49
753:              srli         a6, t0, 29
                  bgeu         a2, s1, 767f
                  auipc        s1, 628652
                  add          s4, s4, a7
                  addi         ra, t2, 496
                  srli         t5, ra, 1
                  andi         a1, tp, -1490
                  andi         s7, a0, 1594
761:              auipc        tp, 72714
                  slli         a4, s9, 16
763:              xor          s10, s5, t5
                  sltu         a7, ra, a5
                  sltu         t2, s8, tp
                  srai         s7, tp, 18
767:              andi         t0, s5, 452
                  srai         s1, s8, 24
                  slt          ra, s11, a3
                  srli         s4, a6, 10
                  bgeu         s10, s10, 775f
                  srai         a6, s8, 31
                  la           s11, region_0+1448 #start riscv_load_store_rand_instr_stream_4
                  auipc        a7, 713236
                  sh           a7, -36(s11)
                  sltu         a5, sp, s4
                  lh           a0, -50(s11)
                  slt          sp, a4, s4
                  lbu          s1, 191(s11)
                  sb           t1, -147(s11)
                  lbu          t0, -77(s11)
                  lbu          s10, 205(s11)
                  xori         a0, ra, 879
                  lb           s7, 212(s11)
                  sb           gp, -228(s11)
                  lbu          a3, -5(s11)
                  lbu          a5, -227(s11)
                  lb           s4, -224(s11)
                  lhu          s2, 32(s11)
                  sb           s2, -57(s11)
                  andi         a1, a0, 1096
                  lb           s2, 175(s11)
                  or           s8, a0, s8
                  lb           a3, -68(s11)
                  sb           zero, 136(s11)
                  sh           t4, 20(s11)
                  lh           a0, 106(s11)
                  lb           t1, -24(s11)
                  srl          s7, t6, s9
                  and          t6, a6, s5
                  srai         s0, s2, 9
                  lbu          s4, -197(s11)
                  sb           s3, 202(s11)
                  srli         s9, sp, 15
                  sb           t3, -91(s11)
                  lh           s10, -166(s11)
                  lbu          s1, -120(s11)
                  sw           s9, 164(s11)
                  lbu          s3, 233(s11)
                  slt          t1, gp, a7
                  sh           s2, -152(s11)
                  sll          s3, a3, s10
                  sb           zero, -130(s11)
                  srai         s4, s7, 22
                  lw           s4, -116(s11) #end riscv_load_store_rand_instr_stream_4
                  srli         a3, sp, 1
                  beq          a1, s0, 778f
775:              bne          gp, t4, 792f
                  slti         a3, s4, -1339
                  slti         a0, t1, -851
778:              bltu         a0, t4, 780f
                  lui          a0, 302523
780:              and          a5, s0, t0
                  andi         t5, sp, -57
                  sub          gp, s1, s9
                  auipc        tp, 699636
                  bgeu         t1, tp, 790f
                  srli         s6, s3, 3
                  slt          s2, t2, s10
                  lui          a1, 243885
                  sltu         t0, t0, s11
                  xor          s4, a2, a7
790:              and          a0, s8, t0
                  srl          t0, ra, s7
792:              sub          s4, gp, t4
                  add          a5, a7, a3
                  nop
                  ori          a6, a4, 1913
                  addi         s4, ra, 495
                  auipc        a5, 208544
                  sltiu        gp, a3, 209
                  add          s4, s6, s9
                  lui          a6, 979360
                  lui          a3, 301317
                  auipc        a6, 152171
                  bgeu         sp, t3, 820f
                  nop
                  blt          s6, s10, 811f
                  srai         sp, tp, 12
                  andi         sp, ra, -1563
                  srai         ra, a5, 0
                  srl          s8, t4, s10
                  srl          a1, t1, s8
811:              srli         s1, a4, 19
                  srli         s6, s5, 10
                  srl          zero, s11, s2
                  addi         tp, zero, 331
                  srl          tp, t5, s6
                  xori         zero, s8, -1501
                  sra          ra, a2, tp
                  xor          t1, t1, ra
                  srli         a1, t4, 5
820:              bge          s5, s10, 839f
                  addi         a5, s7, 62
                  slli         a7, s10, 4
                  xori         s4, s8, -979
                  auipc        gp, 180753
                  bgeu         s2, a0, 836f
                  add          s8, a2, s4
                  andi         s6, s6, -425
                  srl          t2, s9, s6
                  andi         a5, s8, -648
                  srai         s0, a0, 10
                  bge          t3, s6, 834f
                  addi         s3, t3, 75
                  sltu         s0, zero, a2
834:              blt          t0, a2, 839f
                  addi         a5, t1, 1501
836:              and          a4, t2, t3
                  srai         s3, s6, 16
                  sub          s10, gp, a6
839:              slti         s9, s0, 834
                  sra          s6, s2, s0
                  andi         a5, s8, -1958
                  srl          a4, s4, s0
                  slti         a0, s10, -1746
                  sltu         a5, zero, s4
                  srli         tp, s9, 19
                  ori          sp, s3, 1247
                  sub          s4, t0, t0
                  sra          a5, t2, s8
                  srl          s0, sp, a0
                  srli         zero, s10, 0
                  sra          s3, s4, s7
                  xor          t1, t6, a5
                  addi         a3, s9, 1871
                  nop
                  addi         t1, gp, -331
                  xor          gp, t0, s9
                  andi         gp, t1, 926
                  blt          t2, a2, 860f
                  add          s4, s7, gp
860:              bgeu         s9, s1, 879f
                  lui          a4, 714221
                  bgeu         t0, s1, 864f
                  slti         s11, a5, -956
864:              ori          t4, t2, -2012
                  or           s8, s2, s5
                  blt          s8, s9, 874f
                  auipc        s8, 749508
                  sltiu        a5, t6, 1081
                  and          s1, t4, s6
                  sub          a7, t5, t3
                  bltu         a7, s11, 886f
                  sub          a7, s9, a5
                  or           s0, s11, s5
874:              sra          s7, a1, t3
                  bne          s1, ra, 893f
                  sra          s2, a3, s5
                  slli         t5, ra, 16
                  sltiu        t5, t2, 63
879:              blt          a7, ra, 885f
                  lui          tp, 737883
                  slti         zero, a7, -1014
                  xori         zero, s6, -377
                  sra          t6, a5, gp
                  xori         gp, t3, -940
885:              sltiu        s11, s11, 1470
886:              bgeu         ra, t1, 905f
                  srli         sp, a3, 27
                  bgeu         t1, a2, 895f
                  sra          t0, s7, t1
                  xor          s11, a0, s8
                  bltu         s3, t2, 895f
                  sra          s10, s9, s8
893:              bge          s11, a7, 895f
                  srli         a7, a3, 14
895:              sll          a0, s0, s2
                  andi         t2, tp, 294
                  slti         a5, s10, -650
                  blt          t1, s5, 915f
                  add          s11, t1, t1
                  xori         a3, s2, -1039
                  or           zero, s5, a7
                  xori         t0, s9, 570
                  xori         a6, a1, 812
                  addi         a5, s0, 1706
905:              nop
                  xori         a4, s3, -1554
                  andi         s10, s10, -268
                  xori         a4, t6, 1522
                  or           t1, gp, sp
                  lui          zero, 808377
                  andi         ra, s11, 1718
                  slti         sp, a3, -872
                  lui          s9, 291338
                  xor          s1, t2, t1
915:              auipc        t1, 405451
                  and          t4, t4, t4
                  xori         sp, a4, 959
                  andi         zero, s1, 1416
                  srl          t5, t6, s11
                  and          a6, s2, s9
                  blt          a0, s10, 931f
                  beq          s3, ra, 934f
                  srl          s10, s10, a4
                  sll          t6, s2, t1
                  srl          s11, zero, tp
                  srai         s6, s8, 5
                  srl          sp, s2, gp
                  auipc        t4, 773782
                  auipc        a3, 797996
                  sll          s8, s8, s11
931:              sra          sp, s8, s5
                  bne          t5, a1, 942f
                  slti         a0, zero, 1067
934:              auipc        t0, 44565
                  and          a1, s2, gp
                  andi         s7, a6, -630
                  beq          zero, t2, 957f
                  sub          s8, a3, t1
                  sltu         s1, sp, s4
                  ori          a3, tp, -1982
                  sra          s9, t1, tp
942:              slt          a0, t4, s6
                  sra          tp, t0, t4
                  slli         a4, s2, 5
                  srl          s8, s6, s9
                  srli         t6, ra, 8
                  bgeu         s2, s8, 958f
                  lui          a5, 1035468
                  sltiu        zero, a3, -219
                  bge          s2, t3, 957f
                  slti         t0, a2, 1655
                  srli         t4, a3, 4
                  sub          t4, a1, gp
                  srli         t2, s9, 7
                  or           s7, zero, s1
                  lui          a3, 505120
957:              sra          a6, s2, gp
958:              sub          s8, s5, s10
                  srai         s6, t6, 19
                  nop
                  bltu         s7, a5, 964f
                  blt          t3, zero, 966f
                  or           a7, zero, t4
964:              xor          s8, a6, zero
                  slli         s3, a3, 31
966:              slti         s9, t0, 1429
                  slli         s3, s6, 20
                  nop
                  srai         a0, zero, 21
                  beq          s3, s7, 976f
                  bltu         a4, t2, 986f
                  xor          s7, s4, a7
                  srli         s0, gp, 16
                  sltiu        a1, s10, 735
                  addi         t5, t0, 788
976:              sltiu        t4, gp, 765
                  add          tp, s4, t6
                  slt          a4, gp, t3
                  slti         a5, t3, 1358
                  srl          zero, a4, t1
                  blt          s5, gp, 983f
                  and          tp, t5, zero
983:              blt          s4, ra, 985f
                  bge          a6, t3, 1002f
985:              and          s0, a6, tp
986:              ori          gp, s6, -1513
                  addi         a0, t6, 1974
                  sltiu        a0, s3, 1677
                  auipc        t1, 609725
                  bne          a1, a6, 998f
                  srai         t6, ra, 11
                  lui          ra, 300844
                  sub          s3, a5, s10
                  srai         a4, tp, 17
                  blt          t2, s1, 1014f
                  add          a7, a5, s8
                  srli         a4, s9, 22
998:              lui          a5, 331058
                  sub          a6, a1, ra
                  auipc        s11, 397400
                  add          a6, a7, s10
1002:             xori         a6, a5, -1360
                  sltiu        a1, t3, 952
                  bgeu         t4, t3, 1021f
                  sltiu        t2, t1, -1755
                  sltiu        a4, t4, -1444
                  bgeu         s5, a5, 1024f
                  sltu         t0, s8, zero
                  slli         s8, s8, 26
                  bne          a1, a3, 1015f
                  nop
                  slli         t5, a5, 11
                  bne          s10, t1, 1031f
1014:             or           t0, s3, s5
1015:             ori          a0, ra, -667
                  beq          s6, s11, 1029f
                  sltiu        a5, a5, -852
                  or           t6, s9, a0
                  beq          t0, a7, 1025f
                  blt          t1, t1, 1022f
1021:             addi         gp, sp, 204
1022:             or           s7, s4, zero
                  xori         zero, s7, 463
1024:             slt          t4, tp, t1
1025:             slt          s1, t4, a0
                  xori         a7, s3, 1670
                  addi         t5, zero, -1718
                  bltu         t5, sp, 1030f
1029:             slli         s10, tp, 30
1030:             sra          tp, tp, a7
1031:             andi         s10, s5, 1886
                  sltu         s2, s1, s6
                  addi         gp, s9, -308
                  srl          zero, t1, a5
                  ori          t0, s5, 1486
                  bne          zero, gp, 1042f
                  slti         s2, t6, 1438
                  bge          s9, s11, 1044f
                  auipc        s9, 63716
                  sra          a6, t4, a5
                  bne          t2, s4, 1048f
1042:             slli         gp, a0, 8
                  addi         t0, t5, -800
1044:             beq          s4, s3, 1047f
                  blt          a7, a6, 1047f
                  bgeu         s3, s11, 1063f
1047:             bge          s8, s3, 1055f
1048:             sltu         zero, a5, t2
                  slt          s1, sp, s6
                  addi         s0, s6, -1444
                  bne          s8, gp, 1063f
                  and          tp, s6, s9
                  bgeu         s1, s9, 1055f
                  slt          s11, sp, a6
1055:             srli         s2, t4, 21
                  and          a5, t5, t4
                  addi         s9, t3, 989
                  sub          s10, sp, s6
                  sub          t4, zero, s5
                  add          a3, ra, t3
                  add          zero, zero, a5
                  ori          s8, s11, -204
1063:             ori          a5, s9, 1660
                  sra          gp, tp, a0
                  slli         sp, s0, 12
                  andi         t1, a2, 1365
                  srl          s2, s1, s6
                  andi         zero, s1, 794
                  blt          gp, a1, 1073f
                  slli         t5, s2, 19
                  sub          s1, s9, s5
                  add          s2, a6, t3
1073:             and          t0, t5, s1
                  sra          s6, a7, s5
                  bgeu         a6, s6, 1090f
                  xor          s8, t0, t2
                  slti         s2, s1, -845
                  or           t5, s4, s4
                  add          t1, a4, s2
                  ori          s8, t0, -940
                  bge          a2, s4, 1092f
                  sll          a1, a7, a6
                  or           t6, t5, s5
                  srl          s4, s9, s7
                  srli         a0, a3, 22
                  and          s8, a3, t1
                  sub          s6, s9, t0
                  bgeu         s8, s10, 1107f
                  xori         t2, sp, 715
1090:             bgeu         t0, s0, 1108f
                  sltiu        sp, s11, 731
1092:             slli         a0, sp, 21
                  bne          a4, s4, 1103f
                  srli         t6, a4, 22
                  sltiu        s3, s3, 1165
                  xor          ra, zero, s6
                  blt          t2, t2, 1104f
                  srl          t1, t6, s1
                  bge          s0, t3, 1117f
                  lui          tp, 249568
                  srl          s0, a6, a7
                  srai         t4, s3, 28
1103:             slti         t5, s1, -1711
1104:             sll          a0, t1, a3
                  and          t5, a4, tp
                  auipc        s10, 495372
1107:             sltu         s7, s4, s8
1108:             and          t6, s11, s0
                  xor          s6, a5, zero
                  slti         t0, t4, 411
                  andi         s10, s10, 1442
                  xor          s4, t5, s0
                  srl          s8, a5, s11
                  ori          s0, t1, 643
                  slti         tp, a1, 478
                  bge          s7, t5, 1118f
1117:             srai         s3, s7, 27
1118:             sltu         s8, a3, zero
                  addi         tp, ra, 1044
                  auipc        s6, 176387
                  nop
                  sltu         sp, a5, s8
                  bgeu         s0, s5, 1127f
                  srai         s1, a4, 20
                  srli         s1, s5, 23
                  sra          t1, t2, t3
1127:             beq          a7, a2, 1144f
                  addi         s11, t6, -229
                  or           tp, ra, t1
                  bgeu         t0, s9, 1135f
                  blt          t3, s3, 1150f
                  or           a0, a5, gp
                  bne          a2, a2, 1146f
                  auipc        t0, 25772
1135:             slli         gp, t5, 20
                  srli         s8, s7, 6
                  or           s9, a4, t2
                  and          s8, s1, a6
                  srai         s2, ra, 3
                  sltu         a5, gp, sp
                  sub          a5, t4, s7
                  sltu         a6, t2, a7
                  and          s6, t4, s9
1144:             xor          ra, t3, t1
                  sub          t0, t3, ra
1146:             srli         t4, a5, 4
                  nop
                  bge          a1, s1, 1165f
                  add          a3, t4, a0
1150:             auipc        a1, 146972
                  slt          a3, a1, t0
                  srli         t0, a5, 12
                  blt          zero, s6, 1163f
                  nop
                  add          s2, a7, t4
                  sltu         zero, a3, s4
                  and          s1, s7, a5
                  addi         s3, s5, -589
                  bge          tp, t2, 1179f
                  bltu         s9, tp, 1178f
                  srai         s1, t5, 3
                  srl          zero, t6, s4
1163:             nop
                  bne          s7, s0, 1170f
1165:             sltu         s2, s0, a3
                  bne          a0, s7, 1168f
                  xori         a5, s5, -1081
1168:             or           a1, s10, s6
                  beq          s3, t3, 1171f
1170:             slt          s3, a6, t6
1171:             bge          a2, s11, 1175f
                  and          t2, s11, s4
                  sub          sp, t2, s11
                  bgeu         s4, sp, 1192f
1175:             addi         sp, s6, -1745
                  srli         s1, gp, 7
                  srai         t5, s10, 11
1178:             and          s2, s2, a7
1179:             auipc        s6, 267209
                  andi         t0, a7, 427
                  slli         s2, zero, 21
                  sltiu        s6, s2, -478
                  srli         s8, s6, 18
                  beq          tp, s8, 1201f
                  ori          a0, s3, -1291
                  srai         s1, t6, 26
                  slti         s1, s5, -489
                  slli         gp, t5, 27
                  bltu         a1, s4, 1204f
                  srli         a6, t2, 31
                  sra          a6, sp, s10
1192:             and          s3, s4, a5
                  or           s1, a1, t6
                  andi         s6, s8, 576
                  bgeu         s11, a5, 1202f
                  ori          t5, t3, 1051
                  bge          s10, a0, 1199f
                  sltiu        gp, a2, 1115
1199:             xori         a3, s9, -1120
                  srl          s10, s5, t3
1201:             lui          a5, 27432
1202:             slt          s11, s4, a3
                  srl          t2, s3, sp
1204:             srl          t2, s9, s6
                  bne          s2, s1, 1213f
                  blt          s10, ra, 1223f
                  slt          a4, s7, a2
                  bltu         s8, s0, 1221f
                  auipc        s3, 386959
                  bgeu         a2, t3, 1229f
                  srli         a3, s2, 15
                  slti         a0, s5, -649
1213:             lui          s4, 227960
                  lui          s8, 982964
                  nop
                  nop
                  add          s9, a4, t4
                  blt          a6, s7, 1225f
                  bltu         zero, t1, 1236f
                  xor          s6, s7, gp
1221:             slli         s10, sp, 28
                  and          a7, a5, a1
1223:             bltu         a7, s8, 1225f
                  srli         s10, a6, 30
1225:             sub          zero, a4, a6
                  sltu         zero, a3, a0
                  slti         s8, s11, 389
                  lui          t1, 134587
1229:             bge          a0, t6, 1239f
                  sltu         t1, s5, s11
                  lui          s0, 126812
                  slti         t0, t4, 636
                  xor          t0, s11, s6
                  blt          a2, ra, 1239f
                  slli         t2, a1, 24
1236:             sltiu        a6, t3, -838
                  sltiu        t2, sp, -514
                  xor          s8, s4, a4
1239:             lui          s4, 1033908
                  bltu         s3, s1, 1246f
                  auipc        s2, 256217
                  blt          t2, s10, 1245f
                  slti         s1, a1, -1882
                  srai         sp, gp, 11
1245:             lui          s2, 848370
1246:             add          s1, s11, a1
                  blt          s9, ra, 1266f
                  addi         s8, s4, 496
                  andi         zero, a5, -669
                  xor          s1, s1, a1
                  blt          t0, a0, 1253f
                  srli         s7, s0, 2
1253:             addi         t0, t3, 175
                  sltiu        t4, s1, -332
                  srl          a3, s6, t2
                  ori          s0, s6, 1171
                  srai         a3, s8, 21
                  nop
                  sub          a3, t0, a4
                  and          s6, gp, a6
                  blt          a6, s6, 1281f
                  lui          s0, 602922
                  sub          ra, ra, a7
                  nop
                  bne          ra, t0, 1271f
1266:             srai         a5, t1, 10
                  xori         a3, s9, 1715
                  sub          s9, s5, s0
                  slt          a7, s6, a6
                  addi         t4, s6, -859
1271:             slti         s0, a7, 202
                  beq          s3, s8, 1278f
                  slt          s8, s10, zero
                  bne          t2, s0, 1285f
                  bne          tp, ra, 1293f
                  sub          s7, s8, t0
                  sra          t6, s7, s9
1278:             bgeu         s6, s3, 1282f
                  srl          t1, t4, zero
                  beq          t4, s11, 1292f
1281:             add          s0, zero, tp
1282:             slti         gp, s0, -1228
                  addi         s8, s1, 1176
                  auipc        s4, 877099
1285:             sra          s8, t5, a0
                  sll          a0, ra, t6
                  xor          s4, t3, s8
                  slt          tp, a4, zero
                  bne          ra, s9, 1291f
                  or           s1, t4, gp
1291:             ori          s11, a7, 1871
1292:             nop
1293:             bge          s10, a4, 1295f
                  beq          s10, s0, 1312f
1295:             andi         s10, zero, 1200
                  sltu         gp, a6, zero
                  xori         s11, s2, -1880
                  sra          s7, s2, t6
                  srl          t5, t6, zero
                  addi         t0, a5, -1014
                  srli         s1, s1, 7
                  lui          t4, 83983
                  add          s11, a4, a3
                  srai         s2, s11, 17
                  andi         s8, t4, 200
                  bge          t2, a6, 1316f
                  srai         s3, s9, 28
                  sra          s9, t6, t6
                  ori          s8, a2, 746
                  bltu         t5, t2, 1316f
                  lui          s9, 479577
1312:             blt          sp, s1, 1314f
                  xori         s9, s1, -1126
1314:             sltiu        t1, s2, 1465
                  slli         t0, s3, 31
1316:             sub          t4, a7, s6
                  addi         s1, gp, -1205
                  nop
                  bne          s9, a5, 1339f
                  sltiu        zero, zero, -725
                  bgeu         zero, s4, 1327f
                  xor          t5, a4, tp
                  xori         s8, a1, -410
                  slti         s9, s5, -717
                  sra          s10, a4, a5
                  bne          s3, s2, 1332f
1327:             sll          a3, gp, s3
                  srli         tp, s5, 18
                  andi         s2, a4, -918
                  bltu         a7, s3, 1349f
                  beq          gp, a5, 1341f
1332:             blt          s11, a2, 1344f
                  srai         sp, s2, 23
                  xor          sp, a1, a7
                  srl          zero, a7, s11
                  bltu         s3, s5, 1344f
                  bgeu         s3, a0, 1339f
                  srl          s3, a6, s5
1339:             blt          t2, t0, 1341f
                  srl          s7, s11, s1
1341:             and          s1, a7, a5
                  ori          s11, t1, -720
                  andi         gp, t0, -1159
1344:             xor          a1, s5, t1
                  srai         s8, t5, 0
                  xor          t0, s3, t0
                  and          a5, s9, s9
                  ori          a0, s1, -217
1349:             bne          t1, t1, 1351f
                  sltu         tp, s10, ra
1351:             srli         t1, t5, 24
                  sltiu        s11, t1, 1703
                  bltu         t3, s5, 1370f
                  addi         a0, zero, 448
                  and          zero, tp, t5
                  srli         s1, t6, 31
                  addi         a7, t5, 1217
                  xor          zero, s8, s0
                  slli         s0, ra, 20
                  bge          a4, a4, 1379f
                  sub          t4, s8, s10
                  andi         s11, s9, 1539
                  or           s3, a1, s0
                  bge          t3, a7, 1371f
                  bne          t0, t4, 1375f
                  bge          a3, t5, 1371f
                  andi         a6, a5, -1601
                  srl          s3, a1, s1
                  slt          t2, s2, t6
1370:             ori          t2, a2, -902
1371:             srai         ra, tp, 30
                  bge          t4, s9, 1387f
                  slti         t4, t2, -598
                  sltu         s3, a2, s1
1375:             add          a7, t2, s4
                  addi         a1, t3, 529
                  andi         s1, gp, -871
                  ori          t2, a1, 614
1379:             addi         a4, ra, 613
                  sll          a7, zero, a5
                  xori         sp, t1, 106
                  auipc        a0, 77449
                  or           a1, t4, t3
                  bne          a1, a2, 1401f
                  lui          sp, 702228
                  srai         s4, a4, 9
1387:             beq          s11, s7, 1394f
                  blt          s11, a1, 1406f
                  bge          s4, s0, 1407f
                  sltiu        a5, t2, 354
                  sltiu        s9, ra, -163
                  bge          s8, s10, 1396f
                  ori          s4, t5, -1187
1394:             and          sp, a4, gp
                  slli         a1, a0, 26
1396:             srl          ra, t1, t1
                  bltu         a2, t6, 1401f
                  bgeu         a4, a3, 1411f
                  ori          t0, t4, -72
                  lui          s7, 605302
1401:             sra          a1, a7, s0
                  slti         s10, sp, -898
                  andi         t0, t1, -1258
                  srai         s10, s2, 14
                  or           a1, a1, sp
1406:             xor          t0, t1, s5
1407:             xor          s1, t2, a7
                  or           t2, s6, gp
                  bge          gp, a1, 1420f
                  add          t2, a2, sp
1411:             beq          s9, s11, 1428f
                  srl          t6, gp, s3
                  slli         a3, s10, 24
                  or           t0, t5, tp
                  sltiu        a0, a2, -1121
                  srl          a0, t4, s9
                  nop
                  addi         t1, t1, -961
                  sltu         s9, s5, a4
1420:             lui          a5, 738168
                  slti         zero, gp, 1543
                  sltu         s3, t0, s10
                  sra          a0, s11, s6
                  nop
                  bltu         s3, tp, 1428f
                  bge          a0, s7, 1444f
                  slli         s7, t3, 15
1428:             srl          t5, tp, sp
                  and          s2, t5, t2
                  slt          zero, s4, s5
                  slt          ra, t2, zero
                  beq          s11, s3, 1434f
                  srl          tp, s11, t2
1434:             slt          t0, s3, s8
                  srl          a7, t6, a1
                  andi         s1, a7, -1917
                  slt          s4, gp, tp
                  bgeu         a6, s8, 1442f
                  nop
                  slli         s6, t1, 16
                  sll          ra, a6, a4
1442:             slt          t5, a2, t5
                  andi         zero, t4, 965
1444:             slti         s3, s7, -1083
                  slli         a7, t3, 8
                  ori          s2, t2, -1103
                  sub          a7, s1, t0
                  auipc        a5, 4592
                  srl          s8, t0, s9
                  srai         a5, s6, 25
                  sltu         a1, s7, a6
                  or           s7, t5, s9
                  slli         zero, s6, 1
                  srli         a0, ra, 0
                  and          a4, tp, s6
                  srl          tp, s1, zero
                  slti         s4, s4, -1180
                  sltiu        a1, zero, -540
                  lui          a7, 499506
                  andi         t0, a5, 123
                  sltiu        t5, a4, 165
                  sltiu        s1, s7, -959
                  srl          a4, t6, t1
                  bltu         t3, s3, 1482f
                  blt          s4, a0, 1482f
                  and          s8, s11, a2
                  slt          a4, sp, a5
                  bgeu         t4, s2, 1481f
                  add          t1, s6, s7
                  xori         s3, t0, 748
                  ori          t1, t6, 1022
                  nop
                  slli         t4, s2, 19
                  or           t0, s7, a0
                  srai         a1, t6, 31
                  or           a6, sp, t6
                  sra          s8, a4, s0
                  sub          s0, s5, zero
                  slti         s6, t2, 1022
                  auipc        t0, 694751
1481:             and          sp, a6, tp
1482:             sltu         sp, a6, ra
                  andi         a5, s1, -1008
                  addi         gp, s4, 658
                  andi         ra, a2, 86
                  bltu         s0, a0, 1491f
                  addi         t0, tp, 1571
                  lui          t6, 294088
                  xor          t2, s10, s5
                  addi         s10, a1, 627
1491:             srli         s4, tp, 6
                  sltiu        t2, zero, 1460
                  or           s2, t2, gp
                  or           s9, t0, s0
                  xor          a0, ra, s6
                  bltu         ra, a7, 1513f
                  add          a5, s3, s11
                  srl          s8, s9, gp
                  sltu         tp, s6, t0
                  sltu         tp, t0, t6
                  xor          a7, a1, gp
                  bltu         s0, ra, 1509f
                  sll          ra, s10, s8
                  sltu         zero, s10, sp
                  bltu         t2, zero, 1507f
                  srai         t5, s4, 17
1507:             and          a7, tp, s8
                  auipc        a1, 206592
1509:             sll          t2, a1, a1
                  slti         t4, zero, 12
                  xori         zero, a2, 1702
                  sub          s11, tp, zero
1513:             andi         t1, a4, -815
                  beq          gp, t2, 1516f
                  beq          t6, a0, 1527f
1516:             slli         s7, t4, 14
                  slt          s3, gp, t6
                  blt          s11, t1, 1522f
                  addi         ra, a6, -1447
                  slti         s11, s1, -488
                  nop
1522:             bltu         a0, t1, 1533f
                  sra          sp, s3, t1
                  sub          s8, s7, s6
                  sll          a6, s2, s4
                  sub          tp, sp, a0
1527:             bne          t6, gp, 1545f
                  addi         s11, t2, 1116
                  slt          s11, s0, s5
                  auipc        t4, 1001380
                  bltu         t1, gp, 1539f
                  nop
1533:             bge          t3, s2, 1536f
                  add          a6, t1, t4
                  srai         ra, s6, 19
1536:             lui          sp, 671746
                  and          s9, s10, s4
                  sltu         t6, a6, t0
1539:             bge          t0, s11, 1556f
                  bgeu         s10, s11, 1542f
                  add          s3, a7, s2
1542:             sltu         gp, s0, s7
                  xori         s9, s5, -958
                  slti         a6, s7, 1213
1545:             srli         sp, a0, 7
                  sltiu        a7, s4, -1675
                  beq          a7, t6, 1567f
                  and          tp, s10, gp
                  xor          s10, s2, a4
                  slli         s7, a3, 2
                  sub          a1, s10, s5
                  xori         a5, tp, 688
                  srl          s3, sp, s2
                  sra          a6, s0, ra
                  andi         t4, a5, 1173
1556:             sltu         a6, t2, s5
                  beq          s11, t0, 1563f
                  slt          a7, s10, gp
                  sltu         t4, a0, s2
                  lui          tp, 987400
                  slt          zero, t6, s4
                  ori          s9, t4, 1872
1563:             bltu         t6, t5, 1565f
                  and          ra, sp, sp
1565:             or           a4, tp, a6
                  add          t5, a6, s2
1567:             slti         s7, s11, 2018
                  xor          s8, a4, t0
                  srli         s8, a6, 27
                  or           tp, zero, a0
                  lui          s9, 125398
                  andi         s10, t0, 948
                  slt          a3, a1, s11
                  sub          tp, a2, t3
                  srai         a3, a1, 25
                  slli         t4, a1, 10
                  bne          s6, s1, 1596f
                  sltiu        a6, t3, -1005
                  beq          s8, t3, 1589f
                  or           a0, s5, s5
                  sll          s7, gp, t0
                  bge          s9, s9, 1588f
                  bgeu         a0, t5, 1601f
                  sra          s10, gp, gp
                  sub          zero, s3, tp
                  srai         a6, t4, 8
                  xor          a3, s2, t6
1588:             sltu         t4, s11, s11
1589:             srli         a7, s8, 7
                  sub          s1, t5, t5
                  sub          t2, t2, t6
                  bltu         s0, s3, 1598f
                  nop
                  auipc        t6, 964157
                  srl          t4, gp, s0
1596:             and          tp, s1, a7
                  sltu         s2, t4, gp
1598:             srl          t0, s9, s3
                  nop
                  or           a5, s9, a0
1601:             xor          a5, s6, a1
                  beq          s1, s3, 1612f
                  sub          s8, s11, t4
                  ori          s0, a7, 149
                  srai         s11, sp, 10
                  lui          a5, 975137
                  slti         zero, s4, 1104
                  xor          a5, ra, s6
                  and          t5, s1, t5
                  xor          t0, s11, a3
                  xor          s0, t0, t4
1612:             bge          sp, sp, 1627f
                  bne          a2, zero, 1632f
                  bge          sp, a0, 1616f
                  slli         sp, s7, 16
1616:             sll          a5, s8, s5
                  beq          s0, s0, 1624f
                  bne          s10, s2, 1628f
                  blt          a6, a4, 1625f
                  and          s2, a1, t4
                  sra          t4, t0, sp
                  xori         s6, s10, -799
                  nop
1624:             sub          ra, a2, s11
1625:             addi         t1, a4, -837
                  and          t1, gp, s9
1627:             srl          gp, a5, t5
1628:             add          a0, s11, a3
                  bgeu         s1, s2, 1647f
                  xor          t0, t3, t4
                  srli         s2, s3, 3
1632:             lui          s11, 287451
                  slt          s4, t1, t1
                  sll          a5, a3, a3
                  addi         a6, t1, 275
                  addi         s9, s9, -1655
                  srai         s9, s5, 24
                  lui          s0, 59606
                  or           s4, s10, a6
                  srai         s10, t4, 1
                  bne          t6, a3, 1651f
                  sll          a3, t5, sp
                  slt          t4, t1, s11
                  beq          s4, s4, 1650f
                  andi         s6, s2, -197
                  sltu         t4, a1, t1
1647:             sra          a4, s2, a4
                  bltu         gp, a2, 1652f
                  sra          s8, t2, a1
1650:             ori          s0, a7, 724
1651:             lui          sp, 432442
1652:             add          t5, s7, s1
                  sra          zero, a2, s1
                  srli         sp, s9, 10
                  sra          s7, a0, gp
                  bgeu         t5, a6, 1667f
                  slti         s4, gp, -914
                  sltiu        s10, a7, -1522
                  bltu         s5, s7, 1671f
                  bge          s11, s6, 1668f
                  add          s1, s2, s1
                  sltiu        s3, a5, -894
                  bltu         s10, a2, 1665f
                  sra          s1, s8, sp
1665:             and          a4, t1, a2
                  blt          s4, a7, 1668f
1667:             xori         a1, s6, 1241
1668:             xori         a1, tp, -1767
                  lui          s8, 677150
                  nop
1671:             slt          s2, sp, a2
                  sll          s3, a2, t6
                  nop
                  or           ra, s4, s8
                  bne          s6, a6, 1681f
                  lui          t6, 974410
                  srai         s6, t5, 10
                  ori          s8, a0, 44
                  slt          a4, a1, s11
                  nop
1681:             andi         ra, s1, -1252
                  sltu         tp, a2, t4
                  ori          a1, zero, -1624
                  and          sp, t1, s8
                  srl          t2, zero, s4
                  slt          a6, s9, s0
                  sltu         s6, s11, t0
                  sra          a4, tp, zero
                  srl          gp, s11, t3
                  slti         tp, a6, -1692
                  sub          t4, a4, ra
                  slti         a1, s0, 857
                  auipc        s3, 196200
                  xori         tp, t4, -615
                  auipc        a0, 798816
                  slli         s2, t5, 7
                  sltiu        sp, a1, -320
                  auipc        s7, 436563
                  slti         a4, sp, 335
                  slt          s3, a2, t2
                  srli         s3, s2, 26
                  sub          t5, t0, t3
                  bltu         tp, a5, 1716f
                  bgeu         t1, s9, 1719f
                  nop
                  andi         a5, s8, 819
                  nop
                  add          ra, s10, sp
                  or           s3, zero, a0
                  lui          a1, 270646
                  andi         a4, a7, -642
                  sub          t6, s9, a0
                  srl          ra, s4, a1
                  bltu         a6, t2, 1717f
                  srai         s10, a1, 17
1716:             add          tp, s10, sp
1717:             bltu         t6, t0, 1719f
                  andi         a0, a0, 443
1719:             nop
                  sub          a7, a5, tp
                  beq          tp, a5, 1728f
                  sub          gp, a0, s6
                  xor          gp, a6, t0
                  addi         a0, zero, 723
                  addi         t6, t4, -1248
                  xori         s9, s2, -2046
                  beq          t5, s0, 1729f
1728:             bne          t3, t5, 1733f
1729:             xori         t6, s2, 534
                  slli         t0, zero, 19
                  xor          t0, s3, s1
                  srai         s2, s4, 22
1733:             addi         s10, s2, 772
                  slt          s2, a2, s8
                  slti         a6, t5, -171
                  or           s9, s9, s3
                  nop
                  bgeu         s2, s4, 1757f
                  sltiu        a3, a6, -882
                  sub          s4, s0, t4
                  sltiu        s0, s9, -20
                  blt          t6, a3, 1759f
                  and          t0, a1, a4
                  sub          s1, s1, a3
                  sll          s0, a5, s6
                  addi         tp, s1, 714
                  xor          a0, s6, a6
                  bgeu         s0, t6, 1750f
                  bgeu         s2, ra, 1767f
1750:             blt          s6, s8, 1767f
                  bge          t4, s11, 1768f
                  lui          tp, 13550
                  or           s4, s2, a3
                  and          t4, t0, a2
                  blt          t1, s4, 1762f
                  bltu         t3, zero, 1776f
1757:             sra          s3, s4, a2
                  add          s4, t5, a3
1759:             srl          t6, s11, s7
                  xori         ra, s0, 1317
                  srai         s7, s11, 21
1762:             ori          t2, a4, 6
                  add          s1, t4, a4
                  sub          s7, t6, t6
                  add          s4, t2, a0
                  xor          t6, s4, s1
1767:             beq          a2, s9, 1785f
1768:             ori          s6, a3, 1888
                  or           t6, s9, s6
                  addi         tp, s1, -1968
                  bgeu         s6, s11, 1790f
                  bltu         t6, s6, 1776f
                  slti         a3, s5, -823
                  srl          a0, sp, s3
                  xori         s0, s4, 1410
1776:             sub          a7, a7, a2
                  ori          a6, t0, 1235
                  nop
                  srli         s8, a3, 6
                  beq          s9, s3, 1798f
                  sltu         s10, a3, s11
                  sll          a4, s6, a6
                  lui          a5, 434454
                  srai         s3, a7, 14
1785:             ori          a0, s3, 321
                  sltiu        a3, s1, 566
                  or           t5, s9, a2
                  sltu         t2, s3, a5
                  auipc        zero, 488871
1790:             sub          s7, sp, s1
                  sltiu        a6, a0, 1569
                  slli         a7, s8, 17
                  bne          gp, t3, 1813f
                  slti         tp, a2, 805
                  sltiu        s10, ra, -1992
                  srl          a4, s6, s3
                  sltiu        t0, s4, -9
1798:             slt          s2, a2, a4
                  srl          ra, t1, a5
                  sra          zero, zero, t2
                  blt          a2, s4, 1803f
                  bltu         a1, t4, 1821f
1803:             beq          a5, t5, 1821f
                  sltu         ra, a7, s7
                  srli         a6, s0, 14
                  bgeu         a7, tp, 1814f
                  sltiu        sp, a5, 1194
                  lui          s7, 1036784
                  blt          s10, tp, 1822f
                  auipc        t4, 711529
                  sra          s0, a3, a4
                  slli         t2, s3, 10
1813:             srl          s4, s7, sp
1814:             bltu         sp, ra, 1826f
                  slt          s2, a1, sp
                  slli         a3, a5, 28
                  sltiu        a4, ra, -1196
                  bltu         s3, s8, 1835f
                  slti         a7, a1, 1187
                  xor          a6, zero, a4
1821:             auipc        a6, 215815
1822:             srai         gp, s11, 7
                  andi         t4, s2, 420
                  bge          zero, a6, 1826f
                  sra          gp, tp, tp
1826:             auipc        s1, 110353
                  or           t1, t3, t0
                  auipc        tp, 91871
                  or           s1, t3, gp
                  addi         s2, s8, 704
                  xor          s1, t2, a7
                  srl          t6, s10, t2
                  sub          a3, a2, a7
                  slti         sp, s6, 1449
1835:             add          t2, t6, s1
                  and          zero, s9, s9
                  bgeu         a1, s9, 1856f
                  auipc        gp, 186843
                  bne          t0, a2, 1849f
                  bge          a5, t0, 1843f
                  add          s1, a2, s7
                  slti         a4, s9, -885
1843:             slt          s4, a1, s2
                  bne          s4, s7, 1859f
                  xor          t4, s3, t5
                  or           a7, t1, a6
                  blt          s9, a7, 1854f
                  blt          ra, a1, 1850f
1849:             bgeu         s11, a7, 1854f
1850:             srl          a1, a6, t0
                  xori         zero, t5, 986
                  sub          a3, s9, s9
                  srl          s4, ra, a0
1854:             slli         a3, a0, 7
                  bgeu         a4, s11, 1866f
1856:             xor          s6, t5, a7
                  lui          a5, 686674
                  sltiu        zero, zero, -1714
1859:             addi         t6, t3, -667
                  addi         s1, s6, -1654
                  bne          s11, s11, 1865f
                  xor          s9, ra, s7
                  slti         t1, a3, 378
                  bne          s5, s9, 1870f
1865:             nop
1866:             xor          s7, s2, t1
                  lui          s10, 891752
                  auipc        gp, 687887
                  bgeu         s0, t1, 1879f
1870:             xor          gp, a3, a0
                  beq          a1, s8, 1877f
                  xor          tp, s9, t3
                  auipc        s1, 358155
                  xor          s4, a1, t3
                  slti         s2, t5, -699
                  sltiu        gp, ra, -951
1877:             srai         t2, s11, 1
                  bne          t2, tp, 1882f
1879:             auipc        t4, 640022
                  srai         s6, a1, 31
                  andi         t2, a1, -63
1882:             bge          t0, t3, 1889f
                  slli         s3, s8, 29
                  sltu         tp, t3, t0
                  sltu         a0, a0, s8
                  srl          s8, gp, s0
                  add          a1, a1, t2
                  sltiu        s1, s0, -1773
1889:             bne          t4, s7, 1895f
                  sll          s7, a2, t1
                  add          t2, zero, s4
                  srai         s9, a5, 8
                  bge          t6, sp, 1895f
                  xor          s10, s10, ra
1895:             srli         t0, t4, 1
                  bltu         a4, tp, 1913f
                  andi         s6, s2, -522
                  sll          a7, a3, s2
                  slli         s9, a0, 22
                  bne          a5, s2, 1902f
                  srai         s1, s10, 30
1902:             nop
                  or           s8, a3, zero
                  auipc        s10, 606702
                  addi         t6, t6, 1887
                  sltiu        s3, a1, -1607
                  slt          a6, t1, sp
                  bltu         s7, a2, 1925f
                  ori          a6, a4, -1118
                  slt          s4, s7, s6
                  sub          t0, a7, a4
                  sub          s3, t1, a1
1913:             and          s7, s3, s1
                  srli         s1, a5, 15
                  sra          s1, t5, s1
                  addi         a0, t3, 601
                  bge          s4, t2, 1935f
                  srl          a4, t6, ra
                  xor          s9, a6, t6
                  and          s1, a4, t1
                  and          a7, a2, t5
                  add          ra, zero, t3
                  slli         t4, a4, 7
                  add          ra, t0, s3
1925:             ori          t0, t3, 1611
                  srl          s3, a1, t0
                  beq          a0, tp, 1946f
                  lui          s1, 892619
                  sltu         t1, a7, t0
                  bne          a2, t3, 1942f
                  and          gp, t2, a6
                  bge          t4, t4, 1950f
                  la           s9, region_1+519 #start riscv_load_store_rand_instr_stream_11
                  or           s11, s9, s9
                  slti         s3, s0, 597
                  lb           a0, 1150(s9)
                  lbu          a5, 600(s9)
                  or           s11, ra, s5
                  sltu         a3, t1, t5
                  sra          a3, t2, a3
                  lb           a1, 1251(s9)
                  sra          t4, s8, s11
                  sb           s4, -350(s9)
                  sb           a6, 186(s9)
                  nop
                  lbu          s10, 946(s9)
                  lb           s10, 1149(s9)
                  srl          ra, t1, s10
                  lhu          ra, 1143(s9)
                  add          gp, t2, a5
                  sll          s4, a1, s5
                  xori         tp, gp, 123
                  and          ra, sp, s6
                  lbu          t4, 1041(s9)
                  sb           gp, 848(s9)
                  sltu         s1, t3, t3
                  andi         s2, s11, 1821
                  lbu          t5, 286(s9)
                  lbu          s3, 490(s9)
                  ori          a4, t1, 1422
                  sb           t4, 328(s9)
                  lh           a5, -67(s9)
                  sb           s9, 1469(s9)
                  slt          s0, s11, gp
                  ori          s6, ra, 1002
                  lhu          s10, 1211(s9)
                  lh           a4, 337(s9)
                  slti         s6, a4, 1329
                  sb           gp, -292(s9)
                  lbu          a1, 38(s9)
                  sll          s7, t5, s0
                  sll          t4, t2, zero
                  sltu         s0, t2, s6
                  andi         s10, s0, -1922
                  slt          s4, s7, sp
                  lb           t6, -234(s9) #end riscv_load_store_rand_instr_stream_11
                  xori         s8, a1, -1008
                  sltiu        s1, t3, 1974
1935:             sltiu        s9, t5, 372
                  blt          tp, a5, 1951f
                  lui          t5, 402481
                  addi         s8, a7, 250
                  xori         a7, s9, -1397
                  sra          a0, s2, a7
                  add          s0, s1, gp
1942:             sub          t0, s5, sp
                  xor          s8, t6, t1
                  beq          a4, t0, 1950f
                  srli         t5, s4, 24
1946:             bge          s9, t4, 1949f
                  lui          s1, 109681
                  lui          s8, 63416
1949:             or           s10, t2, t3
1950:             xor          t5, t6, a3
1951:             bge          ra, a0, 1964f
                  ori          a0, s8, -1239
                  bgeu         s11, s10, 1958f
                  slli         s2, t0, 13
                  xor          t6, s0, a0
                  or           a1, s7, s11
                  beq          t5, a0, 1959f
1958:             and          t1, a5, gp
1959:             bltu         a5, a3, 1961f
                  xori         s6, s2, -1763
1961:             blt          s8, a2, 1979f
                  sub          s4, t0, a3
                  ori          s9, a1, 1265
1964:             or           t2, sp, s11
                  and          a4, s3, t6
                  sra          s6, s11, s10
                  srai         ra, ra, 10
                  srl          sp, zero, t0
                  blt          s9, a7, 1973f
                  and          a0, s10, s7
                  blt          a1, s3, 1981f
                  sra          s4, t6, t4
1973:             ori          s7, t4, 1231
                  sra          sp, s9, a2
                  beq          t3, s0, 1992f
                  bge          gp, t0, 1978f
                  srl          s7, s10, a0
1978:             lui          a7, 61485
1979:             sll          s7, s9, t2
                  auipc        t4, 321464
1981:             srli         s11, t1, 31
                  bge          a0, tp, 2001f
                  ori          a7, ra, -969
                  and          ra, s6, a7
                  srl          s6, t0, t4
                  slt          a1, s6, s9
                  blt          ra, a7, 1998f
                  slli         zero, a2, 17
                  sltiu        s11, sp, -645
                  xori         sp, s10, 1330
                  slti         gp, s3, -1298
1992:             sltiu        t4, a6, 718
                  or           s9, zero, s3
                  xor          s8, s5, t1
                  ori          s3, s9, 56
                  ori          t2, a6, 925
                  srai         t5, gp, 12
1998:             xori         s3, t0, -1932
                  slli         s9, zero, 13
                  xori         s6, t2, 1633
2001:             xor          a1, s3, t0
                  bge          gp, t4, 2009f
                  sltiu        tp, t6, -1305
                  slli         a0, a6, 12
                  beq          s7, zero, 2022f
                  addi         s1, s1, 1759
                  srl          gp, t0, a4
                  sll          s4, ra, s6
2009:             blt          a4, a0, 2026f
                  sra          a3, t6, s8
                  sltu         s10, a0, a0
                  ori          a3, a2, -1497
                  add          t1, t4, a0
                  srli         s8, t4, 19
                  sra          t1, s5, s2
                  ori          gp, t6, -1441
                  sub          gp, s5, sp
                  bltu         s7, s5, 2024f
                  bltu         s7, a7, 2029f
                  srli         s3, t2, 16
                  and          s11, s5, t4
2022:             andi         tp, a7, -36
                  sub          s9, sp, zero
2024:             sltiu        t0, s3, -758
                  sra          zero, a5, a2
2026:             xori         s9, a6, 1022
                  slti         s6, s4, 1152
                  auipc        a3, 932736
2029:             bgeu         s2, t2, 2035f
                  beq          s3, t4, 2037f
                  ori          t5, s10, 1388
                  sra          a7, a7, t0
                  nop
                  bne          t4, t0, 2042f
2035:             bltu         s7, a2, 2037f
                  nop
2037:             bltu         sp, a0, 2041f
                  sll          s3, t2, t3
                  bne          s4, a4, 2041f
                  srli         a1, a3, 7
2041:             sltiu        s9, t2, 129
2042:             bge          a5, s5, 2062f
                  xori         s10, t6, 1229
                  add          t0, t5, zero
                  bltu         zero, a4, 2063f
                  sltu         s10, a5, s6
                  sra          t1, tp, s6
                  sra          sp, s3, t1
                  nop
                  xori         a5, s2, 994
                  xor          a7, a5, t4
                  and          s4, a7, a0
                  srli         t6, a7, 21
                  bgeu         a5, a1, 2067f
                  beq          s8, a0, 2061f
                  bne          s3, s5, 2066f
                  sub          s0, s3, s8
                  srl          s7, s5, a1
                  srli         s1, s11, 4
                  blt          t6, s11, 2070f
2061:             slli         s11, a3, 0
2062:             and          ra, s3, s8
2063:             slli         s8, s11, 10
                  slli         sp, t0, 0
                  ori          t1, t4, 1791
2066:             add          s2, ra, s3
2067:             srai         ra, a7, 29
                  beq          sp, t0, 2086f
                  blt          s7, s7, 2076f
2070:             srai         t0, s10, 22
                  andi         t2, a6, -519
                  sltiu        t4, t6, -1199
                  nop
                  blt          s9, t0, 2077f
                  blt          s9, a3, 2081f
2076:             slti         s10, a5, -690
2077:             xori         zero, t5, 584
                  sltiu        a5, sp, -1307
                  sll          s8, t2, a1
                  blt          t3, a5, 2097f
2081:             srl          a6, a4, s7
                  sra          s1, a5, s4
                  srl          t5, a0, t6
                  lui          a0, 473578
                  blt          a4, sp, 2089f
2086:             srli         t5, s9, 3
                  sltu         a6, s5, a5
                  nop
2089:             bltu         ra, t6, 2107f
                  bne          a7, a1, 2092f
                  blt          s5, a3, 2093f
2092:             sub          s10, a6, s5
2093:             or           a5, a4, s2
                  nop
                  xor          t6, a5, s6
                  xori         t6, s7, -902
2097:             sltu         s2, s5, s4
                  bltu         a6, ra, 2109f
                  beq          s0, s11, 2106f
                  srai         s4, s11, 1
                  nop
                  bltu         s11, ra, 2120f
                  bltu         s4, zero, 2105f
                  bgeu         s8, t4, 2110f
2105:             or           s4, a5, a3
2106:             xor          a7, sp, s0
2107:             sll          tp, gp, a7
                  add          ra, t3, s4
2109:             slli         sp, t3, 16
2110:             bgeu         s10, t2, 2112f
                  slli         t6, t2, 5
2112:             blt          tp, s7, 2116f
                  sltu         s6, a7, t1
                  bltu         s3, s3, 2131f
                  sltu         zero, s5, s6
2116:             and          s6, s11, s5
                  xori         s3, t5, 1650
                  bne          t0, t4, 2130f
                  slti         s9, t6, 1368
2120:             nop
                  bgeu         s2, t4, 2140f
                  lui          s0, 50052
                  sll          s7, t4, s0
                  ori          t5, a0, 632
                  bge          gp, t5, 2145f
                  bne          t5, t4, 2131f
                  or           gp, s6, a1
                  or           a1, s8, s10
                  add          zero, t6, s11
2130:             ori          gp, t1, -436
2131:             sltu         s4, gp, s2
                  bne          t4, s10, 2149f
                  xor          s10, s5, s8
                  add          gp, s6, t4
                  addi         tp, t2, 316
                  blt          a3, s8, 2151f
                  srl          s1, a4, s1
                  sltu         ra, t3, t3
                  bgeu         a6, s5, 2147f
2140:             addi         ra, s8, 360
                  blt          a1, a2, 2143f
                  xori         s0, s5, 464
2143:             srai         s3, s3, 15
                  addi         a4, zero, 644
2145:             addi         t0, s2, 553
                  add          t2, t5, sp
2147:             andi         s7, a1, -510
                  nop
2149:             addi         t5, a7, -1585
                  auipc        s6, 494918
2151:             sll          s2, s1, tp
                  xor          s8, a5, a3
                  andi         gp, t4, -1374
                  add          ra, t6, a4
                  blt          s6, s11, 2174f
                  sra          s11, a4, t0
                  beq          tp, a1, 2163f
                  beq          s2, t2, 2175f
                  xor          gp, s0, s6
                  blt          a1, sp, 2167f
                  lui          s8, 629910
                  srl          t4, a5, a0
2163:             xor          a6, t3, a6
                  la           t2, region_0+1669 #start riscv_load_store_rand_instr_stream_1
                  sb           t6, 84(t2)
                  slli         sp, t2, 28
                  lb           tp, 44(t2)
                  auipc        a4, 870789
                  srl          s2, t3, sp
                  srai         t6, t0, 26
                  add          t0, s4, s8
                  sb           s8, 150(t2)
                  sw           a4, -149(t2)
                  sra          a6, a5, a6
                  xor          gp, t5, a0
                  addi         s3, a2, 1202
                  slti         a4, s0, 236
                  lb           a7, 225(t2)
                  lhu          s10, -187(t2)
                  sw           t4, -253(t2)
                  add          ra, a2, sp
                  and          s8, t1, t6
                  srai         a0, s9, 18
                  nop
                  add          a1, s3, gp
                  auipc        gp, 23977
                  sra          a3, a3, s2
                  sb           s10, -213(t2)
                  or           zero, s1, s10
                  sltu         s1, a7, t3
                  xori         s2, t4, 151
                  lb           a6, -126(t2)
                  lhu          s0, 31(t2)
                  ori          a5, s8, -816
                  sb           t0, -240(t2)
                  lh           s7, 239(t2)
                  xori         s2, a4, -37
                  ori          t6, a4, 273
                  lw           s9, -117(t2)
                  lui          s8, 1023118
                  sra          s2, gp, a7
                  sra          t1, a5, s1
                  sb           ra, 102(t2)
                  lb           s0, 78(t2)
                  sra          s9, s8, t4
                  lui          zero, 865866
                  ori          a4, t2, 1899
                  xor          zero, s11, a6
                  slti         t1, s0, 273
                  lbu          s4, -4(t2) #end riscv_load_store_rand_instr_stream_1
                  srli         a7, a6, 30
                  slt          s7, a5, s0
                  or           s4, s10, a1
2167:             nop
                  slli         a1, tp, 1
                  lui          t4, 667793
                  srai         a0, ra, 14
                  slli         s2, s11, 0
                  addi         a4, a6, 1990
                  or           s2, s2, s1
2174:             and          s4, s8, s3
2175:             auipc        a7, 126513
                  or           zero, sp, s4
                  add          a0, a0, t6
                  sltiu        gp, a3, 1740
                  srli         s1, s0, 21
                  sltiu        s11, ra, 1734
                  bge          a4, s10, 2183f
                  bge          t6, t4, 2200f
2183:             add          a4, t3, a7
                  or           s8, a5, s11
                  or           zero, s4, sp
                  add          s6, s2, a0
                  sub          t4, t6, zero
                  bne          s3, a3, 2196f
                  sra          zero, s11, s11
                  slt          s9, t0, s1
                  srl          a7, s6, zero
                  xor          s2, tp, s9
                  sltiu        a1, s3, -860
                  andi         a0, s6, 1303
                  bgeu         s0, t3, 2199f
2196:             auipc        t4, 140122
                  ori          t6, t2, 966
                  srl          t4, s2, s5
2199:             add          t4, t0, t3
2200:             or           t2, s9, sp
                  la           a5, region_1+1202 #start riscv_load_store_rand_instr_stream_10
                  nop
                  and          a6, sp, s9
                  and          a0, t4, a3
                  slli         a0, t1, 21
                  andi         ra, s10, -1584
                  ori          a1, t4, -331
                  lbu          t2, -11(a5)
                  sw           ra, -2(a5)
                  lb           t4, 9(a5)
                  slti         s0, ra, 1068
                  sb           a7, 39(a5)
                  lbu          s6, 33(a5)
                  sub          s4, zero, t1
                  lb           s7, -35(a5)
                  slti         a4, a3, -258
                  xori         s1, s11, 133
                  slt          s1, a3, s11
                  xor          t0, s6, t0
                  andi         tp, s8, 1481
                  srl          s7, t3, a2
                  sb           t5, 31(a5)
                  slt          a4, a2, a5
                  slti         t4, a0, 641
                  sb           s1, -63(a5)
                  lui          s3, 709103
                  srli         a4, s10, 19
                  lh           t6, 22(a5)
                  slt          a7, ra, t0
                  sb           t1, -15(a5)
                  auipc        s9, 539617
                  xori         a3, a2, 1628
                  lbu          s4, 47(a5)
                  slti         s3, s0, 132
                  auipc        tp, 144379
                  lh           a0, -64(a5) #end riscv_load_store_rand_instr_stream_10
                  bne          s1, zero, 2203f
                  lui          s6, 1029604
2203:             bgeu         t2, sp, 2221f
                  srai         tp, a5, 10
                  lui          a1, 586574
                  slti         s10, s6, 1877
                  sltiu        a5, s2, 310
                  nop
                  blt          a1, a1, 2226f
                  bne          s6, a7, 2229f
                  bgeu         s10, sp, 2224f
                  sub          a0, s9, ra
                  sltiu        s7, a6, 1448
                  auipc        tp, 756100
                  xor          a4, sp, s7
                  slli         gp, a0, 28
                  blt          t6, t6, 2235f
                  slli         s9, s7, 5
                  sll          s2, s7, sp
                  lui          s6, 391171
2221:             lui          s6, 988512
                  srai         t2, zero, 3
                  sub          a4, a4, t6
2224:             addi         sp, tp, -1692
                  srli         ra, a0, 28
2226:             bltu         a6, s1, 2228f
                  slti         t2, s0, 198
2228:             sub          s3, s6, a4
2229:             sub          s2, a2, t6
                  sra          a5, a4, s2
                  sll          ra, sp, t1
                  lui          zero, 190502
                  auipc        t4, 659995
                  blt          t6, s5, 2238f
2235:             sll          s0, gp, t2
                  and          s8, s9, a5
                  blt          a7, s11, 2247f
2238:             xori         a1, s7, -867
                  beq          s6, s7, 2254f
                  srai         a4, s6, 27
                  sll          s6, t2, s0
                  xor          zero, s8, s2
                  addi         s8, s10, 1416
                  bge          s9, s11, 2255f
                  sra          t1, t3, t0
                  sltiu        gp, t3, -707
2247:             bge          zero, a5, 2259f
                  beq          s5, a4, 2250f
                  or           t0, s6, s8
2250:             blt          t4, a3, 2269f
                  slli         s4, a6, 1
                  andi         a6, s11, 1216
                  slli         t1, t6, 25
2254:             slt          a4, s11, a5
2255:             srai         tp, a4, 29
                  lui          ra, 982812
                  add          s4, gp, s9
                  andi         ra, s0, -929
2259:             srl          a3, s10, s7
                  auipc        s1, 215440
                  sltiu        t4, a2, 482
                  andi         a6, t4, 1597
                  and          t5, s9, a6
                  and          s1, zero, a7
                  sll          a1, a4, t6
                  lui          a0, 75447
                  bgeu         t6, s9, 2277f
                  slli         a5, tp, 20
2269:             or           s1, s0, a0
                  slt          a6, s10, a6
                  auipc        gp, 865263
                  addi         t2, a3, -1910
                  beq          s0, s0, 2277f
                  nop
                  sltiu        a1, s7, -1995
                  bge          a0, t3, 2277f
2277:             slt          a1, s7, zero
                  addi         s4, a4, 1424
                  sub          ra, s7, s9
                  lw           t5, 4(a2)
                  sub          tp, a4, t1
                  srai         t6, gp, 9
                  xori         a4, t2, -1118
                  srl          t1, t2, a5
                  addi         a2, a2, 24
                  sub          s10, a7, tp
3037:             addi x27, x30, 0
3037:             jalr x27, x27, 0
sub_6:            srli         s6, s3, 13
                  sltiu        tp, t6, -1153
                  addi         a2, a2, -24
                  xori         t6, t3, -1967
                  sra          zero, t2, s6
                  srli         tp, a0, 30
                  xor          sp, a4, a3
                  sw           t5, 4(a2)
                  addi         t4, t1, 1694
                  xori         zero, s5, -997
                  slli         s3, s2, 1
                  lui          s6, 134472
                  auipc        s3, 165781
                  xor          s6, s0, a5
                  and          s8, t2, a0
                  and          t5, s1, s3
                  sll          t1, s1, ra
                  andi         tp, a4, -1993
sub_6_j10:        jal          t5, sub_8 #jump sub_6 -> sub_8
                  slli         t2, zero, 3
                  addi         a5, a0, 1764
                  lui          gp, 702217
                  sub          zero, t1, s6
                  beq          s8, s6, sub_6_j11 #branch to jump instr
                  slti         s3, a7, 1939
sub_6_j11:        jal          t5, sub_8 #jump sub_6 -> sub_8
                  slt          gp, a6, a6
                  andi         s2, t5, 167
                  sltiu        s4, zero, -609
                  sub          s9, s10, a5
                  sra          zero, a6, gp
                  sll          s0, a7, s8
                  add          gp, a7, a5
sub_6_j12:        jal          t5, sub_7 #jump sub_6 -> sub_7
                  la           s0, region_1+1164 #start riscv_load_store_rand_instr_stream_0
                  xor          t2, a3, t3
                  lb           s3, -1(s0)
                  lh           zero, -48(s0)
                  sll          a4, sp, s3
                  sw           ra, -12(s0)
                  lb           tp, -13(s0)
                  sb           a6, -25(s0)
                  sh           s2, -24(s0)
                  add          a5, s3, s10
                  and          t5, gp, gp
                  sb           zero, -44(s0)
                  lb           a0, -9(s0)
                  sh           s3, 12(s0)
                  andi         s10, a0, 1096
                  slti         s1, gp, -888
                  lh           tp, -42(s0)
                  lhu          a3, 14(s0)
                  sh           t5, 48(s0)
                  lb           s8, 27(s0)
                  lbu          a3, -36(s0)
                  slti         a3, s4, -1974
                  sh           s7, 30(s0)
                  add          s1, s8, t2
                  lb           sp, 4(s0)
                  sub          t4, s9, t1
                  sb           tp, 42(s0)
                  slli         t0, ra, 23
                  sh           a2, 60(s0)
                  sb           a6, -7(s0)
                  lbu          a3, 44(s0) #end riscv_load_store_rand_instr_stream_0
                  add          t5, t2, s0
                  sub          a1, sp, sp
                  blt          t3, a3, 19f
                  and          tp, a3, tp
                  srai         s1, t1, 22
                  blt          a4, s6, 6f
6:                bltu         s1, a5, 24f
                  srai         gp, s8, 25
                  sll          s3, s5, sp
                  srai         t2, t3, 16
                  add          t1, sp, s7
                  sll          a4, s5, s6
                  bltu         s8, a1, 19f
                  andi         s2, zero, 1317
                  sub          t5, s3, s1
                  sll          a0, s1, sp
                  xori         t0, a6, 1691
                  sltu         s10, t6, t4
                  slt          s1, s8, a6
19:               slt          s3, t1, t6
                  sltiu        zero, s10, 1829
                  add          a6, a0, a5
                  addi         t2, a7, -729
                  and          t2, t1, a0
24:               sltiu        a3, s6, -558
                  srai         s4, s11, 16
                  andi         t6, a7, 1914
                  sub          t0, sp, t6
                  srai         s1, t3, 29
                  beq          a7, a7, 49f
                  bge          s3, a7, 46f
                  and          s11, s2, s3
                  or           sp, s2, a2
                  xori         a3, s8, 1533
                  andi         t5, t3, -1946
                  auipc        gp, 65980
                  andi         tp, s0, -1427
                  or           a0, s11, s9
                  srli         t2, a3, 13
                  bltu         s7, t1, 43f
                  srli         s6, s11, 22
                  bltu         t5, gp, 46f
                  sltu         s6, s2, tp
43:               sub          sp, s1, a5
                  srli         t6, s0, 6
                  bltu         zero, s1, 64f
46:               beq          a4, t6, 48f
                  xori         s0, tp, -1760
48:               bltu         a7, s0, 58f
49:               srl          tp, s11, sp
                  bne          a7, t3, 65f
                  sub          a6, s2, s11
                  and          s10, a3, a0
                  sltu         ra, a3, t4
                  nop
                  bltu         s2, s3, 63f
                  ori          s9, s6, -1799
                  beq          a2, a5, 63f
58:               sltiu        ra, s0, -1079
                  sra          tp, s9, s7
                  bge          t4, s5, 61f
61:               srli         s6, s10, 4
                  beq          ra, tp, 69f
63:               xori         s3, ra, -1736
64:               sltu         s11, t6, a2
65:               bge          s11, t5, 82f
                  sltu         a7, s9, s6
                  bge          s6, a3, 83f
                  sltiu        zero, s4, 558
69:               addi         a3, t3, -738
                  or           s7, s0, s8
                  lui          s8, 219414
                  sub          zero, a6, s9
                  sub          a6, s2, a2
                  srl          a0, s6, a4
                  ori          a3, zero, -779
                  srl          t6, s3, s1
                  or           s7, a0, s5
                  sll          a4, tp, s10
                  xori         s6, s8, -942
                  nop
                  and          s1, t0, s0
82:               andi         s9, t2, -788
83:               xor          sp, t4, a6
                  bne          a7, s11, 91f
                  sltu         s2, a4, s11
                  lui          s7, 504183
                  bne          sp, s7, 99f
                  srl          sp, s10, s11
                  slli         s7, s2, 4
                  auipc        t1, 998870
91:               sltiu        zero, t2, -538
                  sll          s2, s5, a6
                  and          s0, s0, a6
                  bne          s10, s11, 97f
                  nop
                  or           t5, t4, a7
97:               sltu         a6, s2, s3
                  srai         s2, s9, 1
99:               add          a0, s0, zero
                  srai         t6, s3, 30
                  sll          t1, s6, s3
                  addi         t5, s8, 1138
                  slli         a1, s10, 7
                  srli         s2, a0, 15
                  andi         s0, t3, 1400
                  srli         t5, s0, 18
                  srai         t6, t1, 20
                  slli         tp, a4, 16
                  and          s7, s1, t6
                  beq          s11, t2, 123f
                  ori          a6, s7, -1021
                  or           a3, a0, s11
                  add          a0, gp, a1
                  xor          tp, s7, t1
                  auipc        tp, 764087
                  addi         t6, s1, -407
                  sll          gp, zero, a7
                  add          t4, a6, tp
                  ori          t5, s5, 1719
                  xori         t2, t2, 434
                  andi         s2, ra, 865
                  srli         tp, s4, 14
123:              sub          zero, s10, t5
                  xori         tp, a1, 651
                  ori          s3, ra, -2001
                  and          t5, s8, sp
                  xori         gp, s1, -1982
                  beq          a5, a1, 132f
                  slti         a6, a1, -29
                  xori         gp, s5, 49
                  bgeu         s2, ra, 139f
132:              bge          t3, t5, 137f
                  andi         a6, s11, -1743
                  sltiu        ra, t2, -1784
                  andi         t1, tp, 189
                  srl          s11, ra, s4
137:              srai         s8, t0, 29
                  beq          a1, zero, 154f
139:              xori         s2, a1, 559
                  sltu         t5, a3, a0
                  lui          t6, 1038208
                  srli         s8, s6, 15
                  beq          s0, a1, 146f
                  blt          s8, s10, 158f
                  srli         a7, a2, 31
146:              bge          gp, t0, 158f
                  auipc        t0, 325142
                  addi         s6, s2, 575
                  ori          s2, s8, -878
                  lui          a4, 221449
                  sll          s8, sp, t2
                  sra          t0, t6, t6
                  add          s6, a6, sp
154:              auipc        s0, 384162
                  bne          t5, zero, 158f
                  xori         tp, a4, -300
                  and          t1, t2, t2
158:              lui          s7, 411215
                  lw           t5, 4(a2)
                  xor          s11, t3, s5
                  xor          s6, zero, s1
                  sub          s4, a7, s5
                  addi         a2, a2, 24
                  xor          t0, a7, t6
                  srai         a1, t6, 9
                  addi         sp, s3, -1288
232:              addi x9, x30, 0
232:              jalr x9, x9, 0
sub_2:            bgeu         s11, a6, sub_2_stack_p
                  add          t1, tp, ra
                  sub          sp, tp, a6
sub_2_stack_p:    addi         a2, a2, -48
                  sw           t5, 4(a2)
                  addi         s11, ra, 1316
                  la           a7, region_0+246 #start riscv_load_store_rand_instr_stream_2
                  lh           s4, 34(a7)
                  sll          s2, a2, t2
                  lb           ra, -75(a7)
                  lui          tp, 504568
                  sb           s7, 137(a7)
                  add          t6, t2, a1
                  add          s4, s8, s8
                  srli         a5, s3, 30
                  lw           a5, 58(a7)
                  sb           s5, -47(a7)
                  lh           s8, -130(a7)
                  lb           a1, 157(a7)
                  srai         s8, gp, 6
                  xor          a6, s8, s5
                  lb           t5, 15(a7)
                  add          a6, s9, s10
                  sb           s9, 114(a7)
                  sltu         a1, s4, gp
                  sltu         t2, a1, a6
                  lh           t1, -64(a7)
                  nop
                  sh           a5, -98(a7)
                  add          t6, gp, a6
                  ori          s4, s6, -200
                  lui          t4, 1913
                  lb           s10, -208(a7)
                  lbu          gp, 127(a7)
                  sra          sp, s6, t4
                  lbu          t6, 188(a7)
                  xori         sp, t3, -1386
                  sll          sp, s1, t2
                  lb           s1, -46(a7)
                  xori         tp, t4, -486
                  lbu          a5, 133(a7)
                  sb           tp, -29(a7)
                  and          s0, tp, s2
                  lb           s3, 251(a7)
                  lb           a3, -173(a7)
                  lb           s7, 67(a7)
                  lh           s4, 30(a7)
                  sb           a4, 222(a7)
                  lb           s7, 12(a7)
                  lbu          s0, 195(a7) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+562 #start riscv_load_store_rand_instr_stream_0
                  lui          t5, 496101
                  auipc        a4, 447892
                  lh           a1, 8(sp)
                  lh           a6, 12(sp)
                  lhu          t5, -2(sp)
                  lhu          s11, 4(sp)
                  xori         a1, s9, 1831
                  or           s8, a6, a4
                  slt          a0, zero, gp
                  lbu          a6, 2(sp)
                  lui          s8, 713244
                  xor          a6, t5, s10
                  xor          t5, sp, t6
                  sb           a4, 1(sp)
                  lh           t0, 16(sp)
                  lb           t0, -9(sp)
                  lbu          a1, 4(sp)
                  slt          zero, s9, s1
                  srli         t2, a7, 4
                  lbu          a6, 8(sp)
                  ori          a5, t0, 1531
                  sll          s6, a3, s4
                  or           t6, gp, s5
                  lb           s4, 3(sp) #end riscv_load_store_rand_instr_stream_0
                  bge          t4, s9, 20f
                  sra          s10, t3, a0
                  andi         s6, s0, -924
                  sub          t4, a7, tp
                  beq          a1, s6, 9f
                  andi         sp, s6, -1922
                  sub          t6, s0, a7
                  or           tp, tp, s3
                  slti         s9, s6, 1528
9:                nop
                  beq          sp, t0, 24f
                  sltu         a4, s8, ra
                  xor          s10, a3, s2
                  srli         s4, t5, 7
                  blt          tp, a6, 20f
                  slt          a6, s4, a5
                  ori          s8, s7, -970
                  ori          s10, a0, 654
                  sll          s7, a3, t3
                  slli         a1, ra, 8
20:               srl          sp, s7, a0
                  or           s10, s3, a0
                  sub          a0, a5, t1
                  xor          a5, s1, tp
24:               sltu         s11, t5, s7
                  sltu         ra, s7, t5
                  sll          s2, s11, s3
                  bge          a2, t2, 43f
                  bge          gp, t0, 41f
                  slt          a6, zero, t2
                  sub          t1, a5, t6
                  slti         a3, ra, 210
                  xor          s9, a1, t3
                  bgeu         s3, ra, 39f
                  sra          t6, s7, s5
                  nop
                  bltu         a7, s9, 40f
                  srl          s8, s5, s5
                  slli         s8, a2, 0
39:               bne          t5, a0, 50f
40:               bge          tp, t3, 54f
41:               srl          a5, a7, a3
                  slt          s8, a0, a3
43:               nop
                  slt          s2, s1, a2
                  sltu         a7, s0, s5
                  slli         a6, a4, 9
                  bne          a6, s8, 63f
                  slt          a1, s8, s1
                  lui          t4, 274061
50:               slli         a4, a6, 23
                  sltiu        gp, a5, 850
                  bltu         s0, s1, 65f
                  sll          t2, t0, a3
54:               ori          a5, s1, 182
                  lui          t0, 1045875
                  bgeu         t3, s4, 65f
                  srl          ra, s7, t5
                  srl          s8, t1, s9
                  srl          a3, ra, s6
                  srli         t1, t2, 6
                  slli         sp, s0, 3
                  sltiu        s4, t5, -403
63:               add          gp, s6, t0
                  srl          a3, t6, t0
65:               beq          s0, t0, 69f
                  bne          t5, s6, 81f
                  slli         s10, t3, 0
                  sub          a3, s6, t1
69:               blt          s1, t2, 82f
                  lui          s10, 1030250
                  sll          ra, a3, s5
                  and          a1, t5, s11
                  blt          s2, t2, 78f
                  bge          s11, a4, 86f
                  sltu         a1, s9, s8
                  sltiu        s3, gp, -255
                  and          s2, s11, a3
78:               beq          s5, s4, 85f
                  sra          s2, s1, a4
                  bgeu         s9, gp, 82f
81:               sltu         t0, s6, t2
82:               slli         a6, s10, 2
                  srai         t0, s4, 14
                  srli         s0, s11, 17
85:               srli         s8, a0, 5
86:               auipc        t6, 516103
                  bne          s6, a4, 96f
                  blt          s7, t6, 106f
                  lui          s4, 780452
                  ori          s9, a1, 427
                  bge          s10, s5, 95f
                  bne          t5, tp, 101f
                  or           a0, s0, a3
                  blt          a6, a7, 95f
95:               blt          t3, s8, 100f
96:               xor          t4, a0, s6
                  nop
                  sll          s3, s8, s10
                  slt          t2, t2, t0
100:              ori          s3, t5, -1650
101:              sll          s2, t2, ra
                  sub          s0, a1, s11
                  sub          tp, zero, s8
                  blt          s4, a4, 111f
                  and          s3, t6, t3
106:              bge          s0, s8, 125f
                  sltiu        zero, s7, -35
                  srai         t5, s2, 20
                  add          a7, tp, a7
                  or           gp, s8, s2
111:              bgeu         a5, s3, 116f
                  sra          tp, s7, ra
                  bltu         t6, zero, 125f
                  xor          a4, tp, s7
                  xor          t0, t4, s7
116:              ori          sp, s7, -456
                  nop
                  slti         s0, tp, 1654
                  bltu         s8, s7, 126f
                  beq          tp, a0, 135f
                  sltiu        t1, s1, 898
                  srai         s0, t0, 15
                  sra          s1, sp, s3
                  xor          t1, zero, t1
125:              srl          a7, gp, s5
126:              xor          t1, a2, t1
                  blt          a4, a0, 134f
                  sub          a7, s4, a1
                  bltu         s6, t0, 134f
                  srai         a6, sp, 19
                  beq          gp, t5, 135f
                  sra          s4, t6, s6
                  sub          s11, a2, s7
134:              andi         t1, s8, -974
135:              srai         s6, a2, 15
                  srai         a6, a6, 24
                  sltiu        s7, ra, 1187
                  nop
                  andi         zero, s2, -338
                  bne          a5, t5, 144f
                  srli         a4, s5, 1
                  sll          tp, a1, t2
                  or           a0, a1, a3
144:              bne          s10, zero, 156f
                  add          t6, s9, s0
                  sra          a4, t3, s8
                  bne          a2, a1, 151f
                  beq          t1, a1, 161f
                  sltu         a1, t3, s5
                  andi         s10, a2, -1534
                  la           s8, region_0+966 #start riscv_load_store_rand_instr_stream_3
                  lbu          a6, 7(s8)
                  lui          t4, 827304
                  add          s0, s3, a7
                  slti         a5, s1, 1560
                  lbu          s11, 5(s8)
                  sub          t4, a0, t6
                  lb           a7, -13(s8)
                  lbu          a7, -9(s8)
                  lb           t0, -1(s8)
                  sb           s0, -13(s8)
                  sb           a6, -13(s8)
                  sb           ra, 6(s8)
                  lbu          s9, 7(s8)
                  slti         sp, s9, 1594
                  slli         s7, t0, 22
                  nop
                  lw           zero, 2(s8)
                  sb           t2, -15(s8)
                  sltu         a6, s7, tp
                  sh           s1, -4(s8)
                  sltu         ra, s4, s1
                  auipc        a5, 385960
                  add          a1, t4, tp
                  lw           s3, 14(s8)
                  sb           a0, -9(s8) #end riscv_load_store_rand_instr_stream_3
151:              blt          s7, a7, 156f
                  xor          a6, a6, t5
                  and          s4, gp, a1
                  and          a7, s1, s8
                  andi         zero, s8, 257
156:              bgeu         sp, a0, 165f
                  add          s2, a2, s2
                  bgeu         sp, s3, 171f
                  ori          t4, gp, 361
                  nop
161:              srli         a4, s5, 6
                  sra          s1, a4, s5
                  bne          s2, s5, 164f
164:              or           tp, tp, t6
165:              lui          a4, 673495
                  blt          t1, s11, 179f
                  sltiu        s11, a5, 2046
                  sub          s10, a5, a6
                  and          tp, gp, s5
                  lui          gp, 249098
171:              slt          a7, t5, s10
                  blt          a0, s1, 184f
                  addi         s10, t4, 1878
                  auipc        sp, 781263
                  srai         a0, s7, 16
                  sltu         t4, zero, a1
                  auipc        s4, 452620
                  add          gp, s11, tp
179:              addi         s2, s0, -1320
                  srai         s8, a3, 7
                  srli         a1, s3, 22
                  bge          t3, sp, 191f
                  blt          s0, a0, 203f
184:              sltu         t5, a7, t1
                  bne          a1, a1, 203f
                  xori         s4, a2, 51
                  addi         s10, ra, 2004
                  lui          s0, 513151
                  nop
                  andi         s6, gp, -371
191:              auipc        a7, 471944
                  nop
                  slti         s3, s9, 1438
                  slt          tp, t3, s11
                  andi         s10, t2, -171
                  sll          a7, s3, s11
                  auipc        s6, 25339
                  blt          s6, s1, 200f
                  slti         sp, zero, -1297
200:              srl          a3, s5, t1
                  xor          a5, a0, gp
                  beq          a6, a3, 218f
203:              bltu         s10, a7, 217f
                  sub          s7, s9, s1
                  srai         s10, s9, 30
                  srai         s1, s10, 30
                  sltu         ra, a2, s8
                  blt          s11, a3, 213f
                  sra          t0, s7, t3
                  srai         t4, t6, 13
                  auipc        s11, 438051
                  srai         s4, s0, 30
213:              srli         a6, t4, 0
                  xor          t1, a4, s10
                  or           s2, a4, s7
                  addi         a0, s6, 811
217:              sub          sp, t3, s11
218:              slt          a0, s5, t6
                  slt          s8, t0, t4
                  addi         s8, a6, 1999
                  xor          s3, t3, zero
                  auipc        s9, 642433
                  and          a1, s9, a5
                  add          s3, t6, s5
                  add          t6, t5, s10
                  and          gp, t0, a7
                  auipc        a7, 493878
                  sll          t1, s7, a3
                  ori          s8, a3, -775
                  xor          a4, a4, s7
                  bltu         s6, t3, 247f
                  slti         a4, t3, 2039
                  auipc        a7, 463579
                  lui          a1, 483749
                  xori         t4, s8, 1121
                  andi         a1, a1, 59
                  bne          t6, t4, 243f
                  addi         a0, a7, 589
                  sltu         s3, a3, ra
                  sra          a5, t0, t2
                  srli         t0, ra, 30
                  auipc        s4, 458698
243:              andi         s11, s2, 1351
                  and          s0, t6, a1
                  sra          s3, s2, s7
                  xori         t4, s1, 1379
247:              lui          t5, 579306
                  auipc        t6, 313933
                  auipc        a5, 779792
                  or           a7, s10, a2
                  bgeu         t3, a6, 260f
                  sra          s10, s11, s9
                  bne          s9, s1, 259f
                  auipc        tp, 403141
                  sltiu        s4, ra, -1779
                  srai         t4, a3, 1
                  nop
                  xor          a5, s8, t2
259:              bne          s1, s4, 278f
260:              srl          s6, zero, s4
                  addi         a6, s5, -481
                  bne          a6, t0, 267f
                  bgeu         ra, t6, 277f
                  add          s7, zero, ra
                  sub          t4, s2, s5
                  slti         t2, a2, 409
267:              blt          a4, a4, 278f
                  slt          s11, t3, s1
                  xor          t4, t4, sp
                  bgeu         s11, a2, 284f
                  srai         tp, s10, 30
                  andi         t5, t0, -2003
                  bge          s11, s1, 277f
                  sub          s2, s5, ra
                  bltu         s3, ra, 279f
                  nop
277:              slt          gp, s0, a7
278:              add          s11, s8, t0
279:              nop
                  srl          t4, a7, t3
                  slt          t4, a5, tp
                  slt          s7, s10, sp
                  slt          t0, sp, t1
284:              lui          a0, 738222
                  ori          zero, a0, -1502
                  xor          t0, a2, ra
                  bne          s2, s0, 305f
                  bge          zero, a1, 292f
                  or           a4, t1, a6
                  ori          t4, t2, -946
                  slli         s7, s10, 16
292:              addi         t0, s3, -1309
                  bne          t1, s3, 299f
                  slli         a0, s1, 7
                  ori          s10, a3, 763
                  sra          zero, a0, ra
                  nop
                  slti         a0, a6, 1930
299:              and          s2, s8, t3
                  or           zero, ra, ra
                  sll          t2, s0, a4
                  blt          s4, t5, 313f
                  srl          t6, t3, a3
                  sub          a5, t5, a7
305:              lui          t6, 660615
                  add          s3, sp, s2
                  slli         a6, s6, 10
                  bgeu         s7, t4, 317f
                  bge          s3, s5, 321f
                  srai         a0, s10, 5
                  and          s10, gp, t4
                  sltu         a6, s4, a0
313:              addi         s1, t5, -1938
                  srai         s8, t3, 28
                  beq          a6, s6, 320f
                  addi         s10, s10, 72
317:              xori         t6, s2, 1691
                  or           t1, s0, s10
                  sll          tp, s6, a6
320:              addi         a1, t6, 1488
321:              srli         t6, a0, 16
                  blt          tp, a4, 324f
                  bne          s1, a4, 330f
324:              sltu         a0, a6, t2
                  andi         tp, s9, 860
                  add          sp, t2, t6
                  xori         t6, t2, 1165
                  bne          s0, s10, 337f
                  slli         a3, s0, 5
330:              slli         gp, t6, 16
                  slli         ra, s3, 16
                  srai         a0, t1, 23
                  blt          a1, a4, 345f
                  add          t1, s0, s5
                  sub          tp, s6, s0
                  blt          s5, t5, 349f
337:              beq          t1, a4, 357f
                  slt          s4, sp, s8
                  andi         a1, t2, 1363
                  sub          a0, s9, t6
                  sltu         s8, t4, s0
                  beq          a2, sp, 343f
343:              srai         s8, tp, 26
                  slt          s0, s5, t6
345:              xori         s11, t6, -1009
                  and          s6, s7, a0
                  sltu         s10, t3, t3
                  beq          a1, s7, 357f
349:              lui          s7, 334719
                  bge          t2, t3, 365f
                  slti         s0, s11, 334
                  sra          s7, a7, s8
                  sll          a4, a6, tp
                  bltu         s1, t0, 359f
                  blt          a4, a3, 361f
                  lui          s7, 680898
357:              srai         gp, s7, 19
                  xor          a3, t3, a0
359:              bge          t3, t5, 364f
                  add          t5, s5, s8
361:              xor          t1, t6, s1
                  bge          t1, s11, 367f
                  sltu         zero, s0, t1
364:              sub          a6, a1, a0
365:              auipc        t6, 433514
                  addi         ra, s10, -386
367:              addi         gp, s9, 410
                  blt          s7, t5, 387f
                  sra          s0, sp, t3
                  sra          t5, s7, a7
                  sll          a5, s3, a6
                  srli         zero, t1, 25
                  srai         t0, a4, 13
                  xori         tp, t5, -1048
                  xori         ra, a1, -1473
                  addi         s11, t5, 396
                  bne          sp, zero, 391f
                  sltiu        a3, t4, -1054
                  slli         s11, s2, 1
                  sra          ra, s7, a7
                  bltu         t2, s1, 397f
                  sub          a5, s1, zero
                  add          a7, s4, sp
                  add          s3, s11, s11
                  srli         t2, a3, 11
                  bltu         t3, t1, 402f
387:              sra          t0, a5, s8
                  sub          zero, s4, t4
                  nop
                  srli         t1, a5, 23
391:              srli         s7, t3, 31
                  auipc        s2, 542444
                  slti         a4, s7, -197
                  bgeu         a5, s3, 407f
                  slti         a0, s4, -918
                  bne          tp, t1, 403f
397:              bge          t6, s7, 410f
                  and          a4, s6, t6
                  addi         sp, gp, -2018
                  slli         s3, s4, 3
                  xori         s0, ra, -1473
402:              slli         zero, t0, 9
403:              sub          s9, s11, zero
                  slti         a3, s11, 1054
                  slt          t2, t1, a7
                  srli         s1, s11, 25
407:              sra          t6, t5, s8
                  sll          a7, s2, s10
                  xor          a0, s4, zero
410:              blt          a1, sp, 415f
                  addi         t2, s7, 773
                  bge          s2, s9, 419f
                  nop
                  lui          t6, 966621
415:              srl          s6, t3, a0
                  slli         s1, s8, 19
                  xor          s6, s9, s1
                  sub          t5, a7, s5
419:              auipc        gp, 665127
                  bgeu         s2, s4, 425f
                  or           s8, t1, a3
                  srai         a1, t6, 18
                  nop
                  bgeu         a0, s8, 433f
425:              sltiu        s3, t4, -1963
                  srli         t0, t5, 3
                  andi         t4, s9, 1929
                  bne          s1, s1, 435f
                  beq          zero, s0, 448f
                  addi         s3, s9, 929
                  or           a7, a7, s9
                  andi         s0, tp, 254
433:              sltu         s6, a5, s10
                  add          t4, tp, s9
435:              bgeu         t2, a1, 449f
                  lui          a1, 937836
                  bne          t1, s2, 438f
438:              blt          s5, sp, 447f
                  srl          s8, s5, s10
                  slt          a6, t1, t6
                  srai         s4, sp, 11
                  beq          a3, t5, 455f
                  srai         a7, sp, 30
                  add          s6, t0, a7
                  srl          a3, a2, s2
                  auipc        t5, 748324
447:              and          a5, t6, a6
448:              lui          ra, 241396
449:              srai         s4, s7, 27
                  sltiu        a7, t1, 1458
                  slt          a5, s11, a5
                  srl          gp, gp, s7
                  nop
                  or           s1, s9, a0
455:              sll          a7, s11, s11
                  bne          t1, t2, 471f
                  slli         t1, s4, 14
                  slt          a0, s10, s9
                  auipc        s8, 582238
                  srl          s7, a0, s7
                  ori          s9, a5, 1682
                  xori         s3, s11, -1808
                  bltu         t6, s10, 467f
                  srli         t4, s0, 31
                  beq          s2, s11, 476f
                  blt          t2, s3, 471f
467:              slti         s4, s2, 316
                  srli         s4, s4, 10
                  bgeu         s2, a4, 473f
                  xori         a6, zero, 286
471:              bge          sp, s9, 487f
                  bge          t4, s4, 478f
473:              sll          t1, s11, a3
                  la           sp, region_0+425 #start riscv_load_store_rand_instr_stream_1
                  srli         a5, t4, 21
                  sh           ra, 117(sp)
                  sw           s7, 31(sp)
                  lui          t2, 516942
                  slt          t4, s0, t1
                  slti         ra, t3, 1308
                  lb           s11, -192(sp)
                  sh           t1, 7(sp)
                  and          t1, ra, s2
                  add          s2, s3, s1
                  sltiu        s4, s6, -1168
                  sb           s11, -200(sp)
                  lhu          gp, -183(sp)
                  and          t6, t1, s1
                  sb           a1, -246(sp)
                  ori          a0, t0, 310
                  sb           t5, 4(sp)
                  xor          a3, s3, sp
                  srl          a4, a5, s6
                  lhu          zero, 63(sp)
                  sb           a1, 85(sp)
                  srli         t2, sp, 17
                  lbu          zero, -148(sp)
                  lhu          s4, 215(sp) #end riscv_load_store_rand_instr_stream_1
                  sltiu        t1, zero, -497
                  nop
476:              slli         a6, t0, 31
                  nop
478:              slti         a6, s7, 7
                  slti         s10, a0, -99
                  add          s0, s10, a5
                  slti         ra, tp, -1617
                  srai         a1, a5, 22
                  slli         t5, s3, 10
                  bne          sp, s4, 497f
                  add          s11, a0, s7
                  slli         a4, t0, 29
487:              srli         s4, s8, 24
                  xor          s10, t5, s3
                  andi         t1, t5, 725
                  beq          t2, a2, 494f
                  bltu         ra, a0, 504f
                  andi         s7, t6, 820
                  srai         s0, t3, 0
494:              addi         s8, sp, 1452
                  blt          a1, s0, 501f
                  ori          ra, s1, 1206
497:              slti         s1, a7, 251
                  or           a1, a6, a4
                  ori          s6, s1, 442
                  bltu         s2, s7, 514f
501:              xor          t0, a0, gp
                  xor          s8, s10, s8
                  slti         sp, a0, -1693
504:              bne          t5, s9, 513f
                  srl          a5, t1, t6
                  xori         t1, t6, 761
                  sltiu        t4, s6, 675
                  lui          s3, 990392
                  sltiu        s0, a6, -489
                  xor          a3, a6, s1
                  bne          a4, s0, 524f
                  ori          s1, s10, 1321
513:              srl          s1, a2, sp
514:              andi         gp, s7, -594
                  bge          a3, t6, 520f
                  xori         gp, ra, 1715
                  sll          a5, s7, s2
                  srli         t0, t3, 14
                  slt          a3, t0, t1
520:              bltu         a3, t1, 522f
                  sltiu        s0, s9, 1181
522:              sub          a1, gp, a3
                  slti         s11, ra, 674
524:              sub          a4, s2, s0
                  sub          t4, s10, a0
                  slti         a3, ra, -1481
                  slti         s10, s2, 921
                  addi         s9, tp, 1793
                  lw           t5, 4(a2)
                  sltiu        s9, t3, 1276
                  add          a3, a2, s11
                  xori         s10, t4, 1886
                  ori          a5, t0, -1660
                  addi         a2, a2, 48
                  srli         a0, s5, 17
                  slti         t4, a7, 1940
663:              addi x7, x30, 0
663:              jalr x7, x7, 0
sub_9:            slli         s4, s2, 28
                  xor          a3, s10, t4
                  ori          a5, t3, 587
                  addi         a2, a2, -32
                  ori          t0, t5, -820
                  srai         tp, a6, 18
                  xor          t1, t4, gp
                  sw           t5, 4(a2)
                  or           s3, t1, s7
                  la           s11, sub_10
                  nop
                  sltu         a3, s6, zero
                  addi         s11, s11, 922
                  addi         s0, t2, 1747
                  bltu         s0, a5, sub_9_j16 #branch to jump instr
                  xori         s10, s5, -659
                  xori         s4, a0, -382
                  and          gp, s4, s4
                  slli         tp, t2, 10
sub_9_j16:        jalr         t5, s11, -921 #jump sub_9 -> sub_10
                  la           t6, region_0+596 #start riscv_load_store_rand_instr_stream_0
                  sb           t5, 53(t6)
                  sra          t1, a0, tp
                  lbu          a5, 55(t6)
                  sll          s6, a2, a4
                  srli         t5, s4, 26
                  lh           ra, 34(t6)
                  sb           a6, 39(t6)
                  srli         t1, zero, 30
                  lui          s9, 1009062
                  sh           s10, -38(t6)
                  xori         s11, a4, 1499
                  slt          a4, t2, a4
                  lb           tp, 23(t6)
                  srl          a6, s0, ra
                  slli         s8, t5, 20
                  slt          s8, gp, s10
                  sra          s8, s11, t0
                  slli         a7, s8, 27
                  srli         a4, a6, 0
                  slt          s3, s5, t6
                  sltiu        a5, t6, -2007
                  lbu          t5, 51(t6)
                  nop
                  or           a0, a5, t3
                  sltu         s2, s4, a0
                  slli         t1, zero, 17
                  lui          s11, 999481
                  sb           t5, -13(t6)
                  lb           s2, 39(t6)
                  nop
                  sltu         s4, a1, s5
                  xori         t1, a1, 207
                  sw           gp, 8(t6)
                  lb           t4, 22(t6)
                  sh           t6, -4(t6)
                  sra          ra, s11, t4
                  or           t2, s3, s4
                  xori         s4, a6, -1634
                  sra          a7, a1, s8
                  lbu          s3, -45(t6)
                  sltiu        s4, a2, -1841
                  or           gp, s4, s10
                  lb           a3, -35(t6) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_1+513 #start riscv_load_store_rand_instr_stream_1
                  sw           a7, -57(gp)
                  xor          t2, gp, a5
                  lb           s10, 1033(gp)
                  addi         t1, t1, 1312
                  sb           s3, 1372(gp)
                  sw           s6, 1307(gp)
                  xor          s6, s1, s1
                  lh           a7, 403(gp)
                  sb           a0, 1428(gp)
                  sb           zero, 70(gp)
                  sll          a3, s0, t3
                  sltiu        t0, t2, -1408
                  lbu          s2, 687(gp)
                  sh           t2, 999(gp)
                  lhu          a5, 1241(gp)
                  lbu          s11, 1274(gp)
                  sb           ra, -312(gp)
                  lhu          s9, -127(gp)
                  sw           ra, -357(gp)
                  add          zero, s9, sp
                  lhu          a6, 209(gp)
                  lbu          a3, -413(gp)
                  sh           a3, 601(gp)
                  xor          a7, zero, t4
                  sub          a0, s5, ra
                  ori          s1, s9, -1497
                  lui          a7, 370507
                  lb           s8, 411(gp)
                  sb           s11, 1086(gp)
                  sltu         tp, s8, s1
                  lbu          a0, 282(gp)
                  lbu          ra, 288(gp)
                  auipc        a6, 348832
                  lb           zero, 898(gp)
                  lh           s0, 437(gp)
                  sb           s7, -247(gp)
                  lbu          a3, 1268(gp)
                  sb           s8, 848(gp) #end riscv_load_store_rand_instr_stream_1
                  sra          s2, s6, s10
                  slt          sp, sp, s2
                  sll          t1, s7, s1
                  sra          t6, zero, s6
                  sltu         a4, s3, a6
                  sltu         a7, zero, a7
                  sll          a0, a1, a5
                  srai         t4, t0, 17
                  srl          t6, t4, a7
                  nop
                  xor          t6, s4, s11
                  blt          sp, t5, 27f
                  slt          a0, s6, s5
                  beq          a7, s9, 18f
                  sll          s6, a7, zero
                  xor          gp, s4, s9
                  bge          t2, a1, 29f
                  sltu         a3, a6, s6
18:               bge          s9, zero, 27f
                  bltu         t1, s11, 33f
                  bltu         zero, tp, 34f
                  bne          ra, ra, 29f
                  sra          a3, zero, a3
                  and          t6, s3, t5
                  or           s0, s4, s11
                  bgeu         t2, t4, 29f
                  or           a4, s5, s4
27:               sltu         tp, t6, s1
                  sltiu        s6, t4, 948
29:               srli         a6, s7, 15
                  slti         s8, t2, 846
                  add          zero, a6, ra
                  bgeu         gp, a5, 34f
33:               slti         s8, s3, -2028
34:               bne          t1, s2, 53f
                  add          a4, s8, a0
                  andi         t2, s3, -1869
                  bne          sp, s9, 44f
                  srli         s6, t3, 23
                  blt          s6, t4, 55f
                  blt          sp, s3, 43f
                  sra          s2, a0, s11
                  bgeu         s10, s1, 60f
43:               slt          t4, a1, s7
44:               sltiu        s2, a7, 235
                  sub          ra, s9, s9
                  bne          t2, t4, 60f
                  sltiu        s3, s7, -107
                  addi         s3, s10, -199
                  or           t2, a4, t2
                  xor          s9, zero, a7
                  ori          t1, s7, 512
                  sll          s3, s6, a5
53:               sltu         a1, a4, a2
                  bge          s9, s3, 67f
55:               slti         s3, s11, 1926
                  slt          s0, a4, a1
                  blt          tp, s11, 67f
                  xori         a5, s7, 575
                  srli         a3, a6, 7
60:               slli         a4, s10, 30
                  auipc        gp, 1044410
                  srai         gp, a7, 22
                  bltu         s0, t2, 69f
                  or           t5, sp, s7
                  xori         t2, ra, -1321
                  xor          s1, t2, a6
67:               andi         s11, s3, 339
                  slt          s0, tp, t5
69:               slti         a6, a4, 345
                  xor          s2, tp, s7
                  sub          t6, zero, sp
                  and          s4, a4, t2
                  blt          ra, t1, 88f
                  addi         t5, t2, -290
                  slt          ra, a2, s10
                  and          t6, a0, a0
                  andi         a6, s10, -320
                  nop
                  slli         s6, a3, 18
                  add          sp, a0, s11
                  sltu         s8, t3, s4
                  slti         a0, s3, -1378
                  slli         s6, s3, 25
                  srai         tp, a0, 17
                  auipc        sp, 519154
                  andi         s3, zero, 154
                  blt          t0, t5, 99f
88:               lui          a1, 878021
                  bltu         a1, s2, 106f
                  bge          a4, s9, 91f
91:               blt          t1, t2, 106f
                  addi         t5, a0, 1920
                  xor          s10, a6, s7
                  slli         ra, s10, 3
                  srl          s10, a3, t0
                  sll          s9, zero, a2
                  xor          zero, t0, a1
                  srl          s9, zero, a7
99:               xor          a1, a3, s10
                  nop
                  srli         sp, a6, 19
                  or           t0, s7, tp
                  sra          t4, s11, s10
                  sub          zero, t3, t2
                  xor          t0, gp, s10
106:              sltu         sp, s9, s7
                  srl          a5, t4, a6
                  srai         t6, a3, 28
                  srli         tp, a0, 21
                  nop
                  bne          s3, s4, 119f
                  blt          s9, a6, 117f
                  beq          s2, a0, 126f
                  addi         a3, t2, 1601
                  xor          t0, s0, t1
                  sltu         t4, t6, s7
117:              or           t1, t2, s11
                  or           gp, t6, t6
119:              bgeu         sp, a5, 128f
                  bne          a4, s4, 135f
                  auipc        s3, 739062
                  add          t6, gp, tp
                  addi         a5, s1, -134
                  blt          s3, zero, 128f
                  bne          t1, sp, 137f
126:              sltiu        s11, s9, 1540
                  blt          s8, s0, 130f
128:              sub          a3, t3, s3
                  sll          s1, a4, s3
130:              slt          s1, t4, tp
                  bge          a7, s10, 140f
                  srli         s9, a3, 28
                  blt          s8, s1, 148f
                  bltu         s3, a0, 149f
135:              auipc        a0, 643054
                  sltu         a4, gp, zero
137:              sub          a6, zero, a2
                  add          sp, s11, a3
                  blt          t1, s11, 157f
140:              srai         a5, a7, 18
                  srli         gp, a6, 21
                  andi         s11, s4, 421
                  bge          t5, s0, 150f
                  slti         t0, a7, 13
                  bge          a3, s0, 161f
                  slli         t0, a3, 8
                  beq          a1, t4, 156f
148:              srl          t5, s2, s2
149:              slt          sp, s6, t1
150:              srai         a6, a6, 14
                  lui          a1, 989545
                  ori          s7, s3, 1078
                  sltiu        s6, s2, 1778
                  auipc        s11, 576722
                  add          sp, a1, s10
156:              sll          gp, s0, s2
157:              slti         s1, ra, 599
                  bltu         s4, t1, 171f
                  slti         s4, s1, -1490
                  sll          t2, t0, ra
161:              sltiu        s7, s5, -1440
                  bltu         s0, s7, 163f
163:              bge          s2, gp, 173f
                  bne          s7, a2, 169f
                  srl          s11, s7, ra
                  blt          zero, s2, 170f
                  sll          s7, a1, ra
                  sub          a6, t5, zero
169:              andi         s2, a4, 1634
170:              slti         s7, s8, -1186
171:              sra          sp, a7, s11
                  sltu         a4, s6, a3
173:              addi         s10, t2, 2033
                  sll          t4, t4, s2
                  nop
                  ori          t5, a5, -1867
                  and          zero, a0, a4
                  srli         t0, a2, 17
                  srl          s2, s5, s0
                  nop
                  sll          a0, t6, gp
                  sltiu        t4, s5, 1792
                  lui          t1, 932139
                  srai         s7, a5, 24
                  blt          a4, a0, 199f
                  slti         a7, a0, -1319
                  xor          s2, t5, s9
                  or           gp, t2, s5
                  blt          ra, s11, 201f
                  bgeu         t2, a1, 198f
                  nop
                  srl          a4, s11, t6
                  beq          s8, a2, 208f
                  blt          a1, s10, 198f
                  sll          ra, s6, t1
                  sltiu        ra, s6, -1018
                  nop
198:              slt          sp, s5, a4
199:              srai         a4, s8, 13
                  add          a5, a6, t1
201:              slt          s6, t4, a2
                  sra          s6, s8, s0
                  srli         s2, ra, 1
                  or           t0, s9, a0
                  and          s3, s7, s1
                  srl          t5, a3, s2
                  slli         a1, t1, 7
208:              slli         zero, zero, 22
                  add          t5, s1, s10
                  bge          s1, t2, 229f
                  addi         a4, s2, -1196
                  srai         s8, zero, 7
                  slli         s4, ra, 21
                  beq          s4, a0, 227f
                  slli         t5, s8, 26
                  and          s6, s2, a6
                  bltu         t4, zero, 231f
                  slt          t6, a0, s9
                  add          s6, s5, zero
                  srai         s1, a7, 24
                  or           sp, s0, t5
                  srai         a3, a5, 12
                  bltu         ra, s7, 239f
                  and          a1, s4, gp
                  xori         s3, t0, -2009
                  srli         s8, s0, 17
227:              lui          a0, 653429
                  slti         s3, t3, -1009
229:              bne          a4, ra, 237f
                  bltu         a4, t4, 242f
231:              bltu         t2, s4, 233f
                  bgeu         s8, s9, 249f
233:              xor          ra, s9, a0
                  bne          s0, ra, 240f
                  xori         t0, s7, -1135
                  andi         a4, s7, 764
237:              slti         a0, a2, -141
                  slli         s2, s1, 13
239:              sll          zero, a6, zero
240:              ori          s9, s9, 187
                  add          s0, a5, s10
242:              bgeu         a3, a7, 247f
                  lui          s2, 1043150
                  sll          t4, s3, ra
                  xori         ra, sp, -1341
                  srl          s3, s7, s10
247:              srl          t6, a4, a4
                  bne          t3, a4, 261f
249:              and          ra, tp, s1
                  ori          a1, gp, 868
                  sltiu        s0, a7, -464
                  slt          ra, s1, a6
                  srai         s10, s2, 14
                  sltiu        s2, s9, 1535
                  srl          t6, t2, t0
                  bltu         a1, t0, 261f
                  bltu         s11, a1, 261f
                  slti         a7, t3, 2024
                  srli         a1, t0, 7
                  slt          a5, t4, s4
                  sub          t0, s2, t0
                  blt          a5, t0, sub_9_j15 #branch to jump instr
                  add          s11, s11, ra
                  sub          s3, a5, a2
                  add          s8, t2, t1
                  slli         t2, s8, 21
sub_9_j15:        jal          t5, sub_10 #jump sub_9 -> sub_10
                  add          s8, s1, a5
                  blt          t3, s11, 261f
261:              nop
                  lw           t5, 4(a2)
                  xori         t0, sp, 469
                  srl          zero, gp, s4
                  xor          a6, t1, t6
                  srli         a0, gp, 24
                  addi         a2, a2, 32
                  sub          s3, s8, t1
381:              addi x20, x30, 0
381:              jalr x20, x20, 0
sub_5:            bne          t0, s10, sub_5_stack_p
sub_5_stack_p:    addi         a2, a2, -56
                  add          zero, a0, t2
                  sw           t5, 4(a2)
                  srai         s6, s9, 14
                  sll          s8, s3, t4
                  srli         s3, s4, 30
                  lui          tp, 1040216
                  srai         ra, a1, 10
                  slli         zero, a2, 25
                  auipc        a6, 914790
                  xor          s7, t5, tp
                  sltu         tp, a1, s5
                  addi         t4, s5, 984
                  sll          a4, s6, s5
                  la           s2, sub_6
                  sra          s9, s6, t2
                  addi         s2, s2, -265
                  xori         t5, a7, 681
                  beq          t4, a2, sub_5_j8 #branch to jump instr
                  andi         t5, tp, 1275
sub_5_j8:         jalr         t5, s2, 266 #jump sub_5 -> sub_6
                  la           a1, sub_6
                  xori         a5, t1, -1192
                  slti         s11, a3, 336
                  srli         a7, sp, 8
                  add          t1, t5, ra
                  and          ra, a1, a3
                  slti         t5, s10, -1587
                  andi         s11, s6, 708
                  addi         a1, a1, -847
                  addi         t4, s7, 1188
                  sltiu        a6, s1, -1355
                  xori         t0, s11, -2028
sub_5_j9:         jalr         t5, a1, 848 #jump sub_5 -> sub_6
                  slli         s7, s11, 31
                  add          sp, sp, t0
                  xori         zero, a7, -1775
                  sltu         s8, s1, s3
                  ori          t4, s11, 993
                  sltiu        s3, s2, -543
                  nop
                  sll          a6, ra, s11
                  bge          sp, t4, 14f
                  lui          s11, 463757
                  bltu         s5, s6, 21f
                  bge          gp, s9, 21f
                  sra          zero, s5, s1
                  bgeu         s0, t1, 16f
14:               nop
                  andi         gp, t2, 1013
16:               ori          s4, s7, -427
                  srli         s8, t6, 19
                  andi         s4, a5, 1404
                  sll          a4, a7, t4
                  srai         t5, a1, 23
21:               bge          t1, a4, 23f
                  sra          s4, s11, gp
23:               add          s6, s6, s11
                  auipc        zero, 584312
                  sra          s9, s0, zero
                  slli         t2, t6, 26
                  lw           t5, 4(a2)
                  nop
                  and          ra, s8, ra
                  slli         gp, t3, 7
                  addi         a2, a2, 56
                  srl          sp, s1, s7
                  slt          s9, a4, sp
69:               addi x29, x30, 1
69:               jalr x29, x29, 0
sub_4:            and          s9, t6, t6
                  addi         a2, a2, -36
                  ori          gp, t0, 1526
                  xori         a6, ra, -235
                  sltu         a0, a6, s1
                  xori         s3, a2, 956
                  slli         s1, t4, 5
                  srai         s1, a4, 29
                  andi         a6, s9, 909
                  sw           t5, 4(a2)
                  srl          s6, t1, t5
                  sll          ra, s2, s2
                  la           s2, region_1+1467 #start riscv_load_store_rand_instr_stream_1
                  sh           sp, 155(s2)
                  sb           a6, 61(s2)
                  slli         t0, zero, 9
                  sb           s6, -62(s2)
                  lb           s8, -230(s2)
                  lhu          s3, -199(s2)
                  sb           s3, 214(s2)
                  sra          sp, a4, s11
                  or           t1, sp, t0
                  andi         s9, t6, -125
                  lbu          sp, -209(s2)
                  lh           ra, 25(s2)
                  lb           a7, -172(s2)
                  sb           t6, -78(s2)
                  addi         tp, s5, -223
                  auipc        s8, 533085
                  lh           t6, -189(s2)
                  lw           zero, 177(s2)
                  lui          a5, 338724
                  sb           a3, 133(s2)
                  ori          t1, sp, -363
                  srai         t1, gp, 24
                  srl          s0, t2, s11
                  andi         gp, t2, 1328
                  sh           s8, 179(s2)
                  sb           ra, -55(s2)
                  ori          a5, s8, -509
                  sh           a3, -181(s2)
                  lbu          s3, 232(s2)
                  srli         s8, sp, 15
                  sltu         sp, t6, s5
                  sll          s7, s5, sp
                  lbu          sp, -240(s2)
                  lbu          s11, -149(s2)
                  lbu          t0, -10(s2)
                  lbu          ra, 76(s2)
                  sltu         a5, t0, t1
                  lhu          a0, -1(s2)
                  sra          s3, t1, a6
                  sub          t1, t5, s1
                  andi         zero, t3, 1141
                  lbu          s6, -59(s2) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+620 #start riscv_load_store_rand_instr_stream_2
                  srli         tp, a7, 26
                  sb           tp, 22(sp)
                  auipc        a4, 335109
                  sb           a6, -43(sp)
                  lui          s6, 273390
                  lbu          a6, -16(sp)
                  sb           t5, 17(sp)
                  or           s1, s3, s9
                  lhu          s4, 34(sp)
                  or           t1, s9, a0
                  lb           s6, 14(sp)
                  sub          gp, s4, s4
                  add          t0, s3, s9
                  lh           s10, -2(sp)
                  lbu          a5, 8(sp)
                  lui          s3, 415947
                  sll          t6, t3, ra
                  ori          zero, t4, -955
                  sltiu        gp, sp, -564
                  lb           s2, -24(sp)
                  slt          gp, s1, gp
                  sh           s0, 0(sp)
                  sh           gp, 30(sp)
                  slli         s0, a1, 5
                  sh           s6, 36(sp)
                  and          s6, s4, s11
                  lui          ra, 886802
                  slli         s1, s7, 0
                  lhu          a5, -48(sp)
                  sh           gp, 56(sp)
                  add          a1, a2, a6
                  slli         t6, a5, 8
                  srl          t5, a4, gp
                  auipc        s4, 568468
                  lbu          t4, -2(sp)
                  slli         s4, a1, 21
                  sb           a2, 61(sp)
                  ori          t2, s2, 226
                  sb           t2, 35(sp)
                  sb           t4, 7(sp)
                  lbu          a4, -52(sp)
                  nop
                  lh           s10, -14(sp) #end riscv_load_store_rand_instr_stream_2
                  la           tp, region_0+747 #start riscv_load_store_rand_instr_stream_0
                  andi         a1, s7, 741
                  srli         t2, s1, 2
                  sb           a7, -66(tp)
                  addi         sp, t0, 1328
                  sh           sp, -165(tp)
                  lb           t5, 251(tp)
                  xor          s8, s11, a2
                  or           zero, t4, s11
                  lbu          a5, 21(tp)
                  sub          t4, t0, s9
                  lbu          s1, -160(tp)
                  lbu          a1, -3(tp)
                  lbu          s9, 169(tp)
                  sb           s6, -19(tp)
                  sub          s11, a4, a6
                  slti         a4, t6, 1784
                  sb           t3, 254(tp)
                  lb           t1, 218(tp)
                  srli         a7, ra, 28
                  sb           sp, -142(tp)
                  sub          a7, a7, t5
                  sb           s6, -102(tp)
                  sh           s3, 47(tp)
                  addi         s9, zero, -1544
                  sra          a7, s9, zero
                  lb           ra, 146(tp)
                  sub          gp, t1, s8
                  lbu          s3, -66(tp)
                  lhu          t2, -99(tp)
                  sb           t4, -102(tp)
                  addi         s10, t0, -173
                  lhu          t1, -213(tp)
                  lb           s2, -73(tp)
                  sb           t6, -186(tp)
                  slti         s10, s11, -1994
                  lb           s9, -47(tp)
                  lbu          s0, -136(tp)
                  sll          a3, s9, sp
                  sb           s7, 256(tp) #end riscv_load_store_rand_instr_stream_0
                  bge          s8, s2, 17f
                  bge          s10, s0, 16f
                  andi         t2, t4, -1771
                  srl          a5, a5, a2
                  nop
                  nop
                  bgeu         zero, a1, 19f
                  xori         s2, s6, -394
                  sltiu        a0, sp, 924
                  nop
                  xor          s10, s6, a2
                  slli         t5, s6, 21
                  add          a1, t4, t1
                  srli         s4, s11, 6
                  srai         a3, t6, 10
                  sll          a0, a0, s0
16:               or           s7, s9, s0
17:               slti         s11, a2, 1480
                  and          gp, a5, s10
19:               auipc        zero, 175848
                  andi         t5, s7, -553
                  sub          a4, tp, s7
                  slt          s11, s0, t5
                  xori         sp, t5, 1947
                  sub          s3, gp, s8
                  sra          a0, t5, t0
                  lui          t1, 910134
                  sub          s6, t0, s2
                  sub          s11, zero, a5
                  bgeu         s10, zero, 41f
                  bge          a4, t5, 34f
                  beq          s6, tp, 42f
                  sra          sp, ra, t4
                  srl          a0, t3, s8
34:               andi         zero, s4, 94
                  srl          s8, s0, s5
                  srai         ra, ra, 14
                  or           s7, s11, a7
                  add          s2, t6, a5
                  sltu         s6, t3, t6
                  sltiu        a7, a7, 904
41:               sltiu        s4, s9, 439
42:               addi         t0, s3, 1951
                  beq          a5, sp, 52f
                  bge          s6, s6, 46f
                  andi         t0, s9, -844
46:               or           a7, t5, a3
                  nop
                  srai         s4, a4, 29
                  bltu         tp, zero, 61f
                  bne          s2, a2, 68f
                  xor          s8, t4, a4
52:               or           sp, s6, a0
                  sltiu        t0, ra, 618
                  bltu         a4, s1, 55f
55:               or           t1, a1, a1
                  sll          s9, a2, gp
                  auipc        s8, 307348
                  andi         a7, s7, -1677
                  bge          s9, gp, 60f
60:               sltu         a1, a5, ra
61:               xor          a3, zero, t0
                  add          zero, t5, t4
                  srai         s2, s11, 5
                  slti         a4, ra, -880
                  ori          t2, t6, 1339
                  add          tp, tp, a0
                  slti         s6, zero, 297
68:               bltu         s8, s7, 75f
                  bne          s11, a4, 81f
                  blt          s7, s10, 75f
                  addi         s3, t2, 1828
                  bne          t0, s3, 91f
                  srai         sp, t4, 7
                  srl          a4, ra, s9
75:               slli         t1, s5, 31
                  or           s3, s1, s4
                  and          t6, a5, s9
                  slli         s0, t3, 20
                  blt          s11, ra, 93f
                  srl          t2, a6, a4
81:               bne          s10, t0, 86f
                  bge          t1, tp, 101f
                  addi         s6, s5, 361
                  nop
                  beq          a4, s10, 87f
86:               blt          s10, s2, 87f
87:               sub          s10, gp, t0
                  bgeu         t3, t3, 108f
                  sltu         ra, sp, t3
                  xori         t1, s8, 1348
91:               sra          s6, t2, s6
                  srli         s7, a6, 7
93:               and          a6, t0, a0
                  nop
                  beq          a3, s6, 99f
                  andi         s11, ra, -2020
                  ori          t4, s7, -1727
                  xor          a5, s6, ra
99:               slli         s8, t3, 17
                  andi         s4, s5, -393
101:              slt          a0, a6, s5
                  beq          a6, s2, 108f
                  beq          a4, s6, 118f
                  addi         sp, a2, 650
                  slti         ra, s2, 609
                  andi         a5, s11, -573
                  and          a3, s6, t0
108:              sltu         t4, a3, s11
                  srli         t1, ra, 26
                  or           ra, a2, s2
                  or           a7, ra, a3
                  sra          s10, s9, ra
                  xori         s1, s4, -1493
                  sltu         s7, t1, a5
                  auipc        t1, 773681
                  sub          t6, t3, ra
                  bne          t6, s10, 119f
118:              bne          a5, t5, 137f
119:              nop
                  bgeu         sp, t5, 122f
                  beq          s6, s11, 133f
122:              beq          tp, t1, 135f
                  beq          t6, ra, 125f
                  nop
125:              sub          tp, gp, t0
                  slli         a3, t3, 10
                  srli         s0, s5, 3
                  srai         s11, ra, 16
                  lui          t5, 1002599
                  slti         s8, gp, -986
                  bgeu         s6, a4, 146f
                  nop
133:              bltu         sp, s0, 138f
                  add          s1, t0, s3
135:              sll          zero, t6, s2
                  sltu         t5, a4, s4
137:              addi         t6, t5, 1629
138:              sll          t1, a0, ra
                  bltu         t0, t1, 146f
                  add          s0, gp, s4
                  addi         t5, ra, -1526
                  xori         t6, s7, 947
                  nop
                  xori         t4, s5, -144
                  sub          a0, a4, t4
146:              addi         t5, gp, -1073
                  sub          s0, s11, s3
                  sll          a4, a1, a0
                  sltiu        s11, s1, -1219
                  sra          s3, s4, tp
                  add          t5, s3, gp
                  bne          ra, s11, 157f
                  bltu         a1, a7, 172f
                  bge          ra, a6, 167f
                  slti         s1, s2, -1825
                  sltu         t6, a7, s7
157:              and          a4, sp, s8
                  bltu         zero, s7, 172f
                  sub          s11, s9, s9
                  srl          t5, s4, t1
                  sll          tp, a1, a4
                  slli         s1, a0, 13
                  add          t0, t0, a6
                  xor          s2, a0, a1
                  ori          gp, a0, 760
                  bge          t5, s4, 168f
167:              sra          t1, t6, t2
168:              sll          t2, t4, zero
                  xor          s4, s1, ra
                  bgeu         s9, s2, 182f
                  bge          s3, t3, 186f
172:              srl          tp, s1, s5
                  beq          s11, sp, 174f
174:              bltu         t4, a4, 176f
                  slt          t5, a1, t5
176:              srl          a7, a2, s5
                  addi         s10, a6, 1990
                  and          ra, a3, a5
                  addi         t4, s7, -1447
                  bgeu         a2, a1, 200f
                  beq          t3, sp, 183f
182:              blt          s8, s2, 186f
183:              srli         a4, t4, 18
                  slt          s11, t6, t4
                  bge          s10, t3, 198f
186:              sra          s9, t6, sp
                  ori          s6, s8, -591
                  sltu         ra, ra, a6
                  bge          t6, s3, 208f
                  nop
                  auipc        a1, 972610
                  slti         tp, ra, -1705
                  bne          s9, t5, 211f
                  slli         tp, a3, 0
                  and          sp, a3, a6
                  bne          ra, a7, 200f
                  addi         tp, sp, -1561
198:              beq          zero, a0, 215f
                  sub          a7, tp, a2
200:              ori          s3, zero, -1838
                  xori         t5, s9, -1406
                  srai         ra, t3, 15
                  sltiu        ra, s11, -1842
                  sltiu        t2, s9, -488
                  add          s11, t0, a6
                  sll          a1, a7, s4
                  slt          a1, a4, a7
208:              sltu         sp, gp, s10
                  sub          a4, zero, s10
                  srai         a1, t0, 7
211:              srli         s4, s9, 8
                  ori          gp, s0, -325
                  blt          s11, s11, 219f
                  srl          a7, s7, a4
215:              srai         t0, s9, 7
                  sltiu        gp, a6, -1173
                  add          s10, t5, t4
                  sll          t2, s8, a7
219:              or           s7, a2, t5
                  or           tp, s0, s1
                  addi         a1, a4, 1223
                  sub          t5, s11, t6
                  bgeu         s5, s1, 234f
                  sltiu        a6, a5, -889
                  auipc        s2, 1014785
                  srai         t2, t1, 15
                  srai         a5, a0, 26
                  srl          a0, s0, t4
                  andi         zero, a1, 377
                  bgeu         t4, s6, 249f
                  addi         t0, a7, -766
                  srl          s10, a3, s6
                  and          s7, a7, a5
234:              sll          t1, a3, t2
                  xor          s8, a4, gp
                  sltiu        s8, a2, -1734
                  sltu         s2, s4, s11
                  slli         gp, s0, 30
                  sltu         s11, a2, tp
                  sub          s6, t5, t0
                  sltiu        s4, t5, 1446
                  srli         s0, t2, 8
                  sltu         a0, s8, s0
                  bltu         a1, gp, 256f
                  blt          s5, s1, 257f
                  bltu         zero, t3, 247f
247:              andi         s1, t4, 1440
                  and          t6, a4, s5
249:              srl          a3, t6, a5
                  srl          a7, t3, s8
                  srli         s8, s8, 21
                  sub          s9, t2, s1
                  add          t6, a2, t1
                  addi         a7, s6, -805
                  lui          a7, 425633
256:              or           a1, a3, gp
257:              bgeu         t1, s5, 258f
258:              sub          ra, t0, s1
                  ori          a1, s1, -311
                  srai         t2, t2, 3
                  blt          t6, s11, 270f
                  bltu         s9, s9, 274f
                  srli         t0, s3, 29
                  sub          zero, zero, s8
                  ori          sp, a7, 1467
                  ori          s7, s7, -1428
                  ori          a1, t6, 933
                  bgeu         s6, t1, 287f
                  bgeu         s8, t4, 288f
270:              srl          ra, s8, ra
                  nop
                  addi         t6, a0, -1410
                  xori         sp, s10, 499
274:              bne          t6, a6, 275f
275:              bne          s10, s11, 292f
                  sltiu        s0, s7, -1525
                  ori          a5, sp, 1962
                  bge          s3, t5, 296f
                  slli         a0, a6, 6
                  blt          t4, s9, 295f
                  bne          s7, a1, 283f
                  addi         s11, s5, -36
283:              ori          s6, t3, 1987
                  lui          s4, 189275
                  auipc        a0, 308146
                  bgeu         s6, a4, 298f
287:              addi         s1, gp, 307
288:              sltu         s8, tp, tp
                  lui          s0, 554133
                  srai         gp, s0, 20
                  lui          a4, 460735
292:              lui          s7, 13262
                  blt          s10, t6, 295f
                  beq          s0, s2, 306f
295:              blt          gp, zero, 315f
296:              slli         s11, a1, 21
                  sltiu        s9, t5, -163
298:              nop
                  auipc        a1, 257914
                  srai         s11, s11, 18
                  blt          s11, s7, 320f
                  add          sp, a5, t6
                  beq          a0, t6, 318f
                  blt          a3, sp, 305f
305:              ori          a5, s2, 1417
306:              add          t2, s10, a4
                  xor          t5, a2, s6
                  or           t4, s1, s8
                  bge          a6, t4, 316f
                  or           t1, zero, a3
                  bltu         sp, s6, 316f
                  sltu         t4, a2, a6
                  srl          t1, a6, s10
                  srl          t4, zero, a5
315:              srl          s3, t0, t6
316:              bge          s2, sp, 330f
                  andi         s0, a6, 1034
318:              ori          a1, tp, -223
                  ori          tp, s11, 864
320:              beq          t1, a0, 325f
                  nop
                  sltu         t4, a0, s8
                  and          t4, t4, a6
                  srai         a6, a3, 21
325:              slti         a4, t1, 583
                  srl          s4, a2, s5
                  bne          zero, s10, 328f
328:              slt          a4, s8, s6
                  sra          sp, a1, s10
330:              auipc        s8, 92462
                  nop
                  sltiu        a7, t1, -1953
                  sltiu        s1, zero, 1742
                  addi         s4, s1, 921
                  srai         a0, a4, 10
                  srl          a7, s11, s4
                  nop
                  bge          a6, s3, 350f
                  xor          s7, s6, gp
                  sll          t5, t1, s9
                  bne          s1, sp, 343f
                  addi         t4, s11, -920
343:              auipc        ra, 827360
                  srl          s8, t3, s0
                  andi         s2, a1, 123
                  sll          a3, s3, zero
                  xori         t4, s1, 443
                  bltu         sp, s2, 360f
                  srli         t6, ra, 15
350:              or           s10, ra, s1
                  sltiu        t6, s10, -2004
                  blt          s1, t6, 361f
                  auipc        t5, 1015285
                  sub          a1, s11, s11
                  bgeu         a2, a4, 359f
                  ori          t1, s11, -1179
                  slli         s10, s1, 10
                  slt          s10, s5, s10
359:              bgeu         t2, ra, 372f
360:              bltu         s2, a0, 362f
361:              bltu         s4, a3, 372f
362:              srli         s2, s8, 3
                  sub          sp, a0, t3
                  sra          s9, t2, ra
                  andi         t2, s0, 1517
                  sltiu        t5, s0, -1423
                  srli         s1, s0, 22
                  lui          a0, 264700
                  srai         s3, s7, 7
                  lui          sp, 518781
                  bltu         s10, a3, 377f
372:              or           a4, s11, a6
                  sub          tp, zero, s10
                  slti         a5, s6, 1931
                  sltu         s8, s1, s5
                  slti         s7, t5, -54
377:              sub          a0, t0, a1
                  bgeu         s11, a4, 382f
                  and          a6, s2, a2
                  andi         gp, a3, 1705
                  sll          ra, sp, a0
382:              slt          s9, t1, a3
                  sra          t4, t3, a2
                  xor          s3, s2, s1
                  addi         gp, s9, 1843
                  ori          gp, s11, 460
                  srli         t5, zero, 10
                  or           gp, a4, a6
                  srl          s6, a2, t5
                  slli         tp, t6, 19
                  andi         zero, a6, 1612
                  sub          s2, s1, s5
                  slli         a0, s9, 19
                  sra          s1, s2, ra
                  slti         s4, s2, -516
                  beq          a1, tp, 409f
                  srl          a0, s10, s10
                  bltu         gp, a7, 407f
                  srai         s8, zero, 8
                  add          s1, t0, zero
                  slli         s0, zero, 30
                  srl          ra, a3, a1
                  bne          zero, s0, 404f
404:              slti         a0, sp, 1101
                  addi         t4, s1, 865
                  nop
407:              sltu         sp, t0, a0
                  addi         gp, t1, -1389
409:              lui          s1, 875662
                  sra          t0, a2, t0
                  xor          a0, t4, s8
                  srl          s7, t6, gp
                  auipc        t5, 291299
                  sltiu        a3, ra, 1788
                  bge          ra, a7, 420f
                  slt          t1, t6, a6
                  slt          t5, t3, s11
                  or           s9, a1, a2
                  add          a4, t3, t0
420:              beq          t2, a7, 439f
                  slti         t4, tp, 668
                  bne          zero, t2, 442f
                  lui          s6, 921868
                  sra          s4, t0, s5
                  nop
                  sra          gp, t1, s9
                  sub          a3, s4, t3
                  auipc        s1, 1048201
                  srai         a1, s10, 22
                  slti         s3, zero, -407
                  xori         t5, a3, -1181
                  bgeu         t5, s7, 436f
                  bne          s4, t0, 434f
434:              sra          a4, s8, s4
                  nop
436:              sra          zero, tp, t6
                  nop
                  slt          s1, s4, s5
439:              srai         s1, t0, 16
                  bltu         t0, t6, 444f
                  beq          tp, t4, 459f
442:              or           a6, s6, t0
                  srli         s2, s4, 2
444:              andi         s11, tp, -1986
                  sra          s8, tp, t3
                  sll          t1, ra, t0
                  bltu         a3, s1, 459f
                  bge          s6, a3, 450f
                  sltiu        a3, s0, -225
450:              sub          s9, t2, a7
                  or           a7, t5, t4
                  nop
                  sltu         a0, s8, a6
                  auipc        s9, 575609
                  and          sp, sp, s9
                  srai         sp, t0, 9
                  and          a6, s0, t0
                  and          a3, t5, s3
459:              xori         t5, t1, 1565
                  sll          s0, sp, gp
                  sltiu        ra, tp, 1964
                  srli         a7, s6, 11
                  srl          s4, s8, s1
                  lw           t5, 4(a2)
                  xori         s10, a7, -836
                  add          s7, t6, s8
                  add          s6, t5, t2
                  slti         s10, t3, -485
                  addi         a2, a2, 36
                  sltu         a7, zero, s4
                  lui          t1, 181390
611:              addi x8, x30, 1
611:              jalr x8, x8, 0
sub_1:            bne          a5, a3, sub_1_stack_p
                  add          s2, a7, s2
                  sra          s0, t2, ra
                  and          s0, s9, t3
                  ori          s1, s2, 1961
sub_1_stack_p:    addi         a2, a2, -16
                  slti         s7, a3, 849
                  srai         s10, s9, 29
                  sw           t5, 4(a2)
                  slli         s4, s7, 9
                  srai         a0, s9, 30
                  srli         t4, a4, 23
                  sltiu        s0, s5, 1220
                  srli         s2, tp, 9
                  andi         s6, s8, 2038
                  slt          gp, a4, a5
                  srli         s9, ra, 9
                  or           zero, s0, s7
                  slti         tp, a0, -1072
                  beq          t5, s3, sub_1_j4 #branch to jump instr
                  sll          a4, a2, a6
                  sltu         t4, s8, a5
sub_1_j4:         jal          t5, sub_3 #jump sub_1 -> sub_3
                  la           s3, sub_3
                  xor          t0, t0, s4
                  addi         s3, s3, -204
                  srl          a6, s3, sp
                  sub          t2, s0, a2
                  srai         a5, a6, 31
                  sll          a3, s9, s0
sub_1_j5:         jalr         t5, s3, 205 #jump sub_1 -> sub_3
                  bge          a4, s1, 9f
                  and          t4, s11, t6
                  bltu         t3, gp, 9f
                  slt          a5, a1, s1
                  or           a3, s10, t6
                  blt          sp, t3, 9f
                  xori         ra, tp, -715
                  sltiu        a3, t6, -568
                  slli         t4, s1, 17
9:                sra          zero, s1, s4
                  sll          gp, s0, a2
                  xori         t5, t1, -1014
                  addi         a0, s10, -1980
                  slti         s11, s8, 960
                  srli         s8, s7, 13
                  lw           t5, 4(a2)
                  srai         s11, a3, 18
                  or           s4, t4, a1
                  sub          a0, s8, a5
                  xori         s11, s7, -1656
                  srl          sp, s0, t3
                  sltiu        s9, a6, -1893
                  addi         a2, a2, 16
                  srl          ra, s5, s3
                  slli         a5, tp, 25
56:               addi x10, x30, 0
56:               jalr x10, x10, 0
sub_7:            srai         s3, t3, 3
                  slt          s2, t3, t2
                  nop
                  add          t1, s10, t3
                  addi         a2, a2, -8
                  nop
                  sw           t5, 4(a2)
                  ori          gp, s7, -884
                  xor          s7, t4, t2
                  ori          a6, t5, 485
                  add          s11, s6, a0
                  and          s4, gp, s2
                  srli         s7, a1, 0
                  la           a6, sub_9
                  slli         s2, s6, 0
                  slt          sp, a2, s1
                  addi         a6, a6, 164
                  sltiu        s10, s2, 2024
                  and          a1, a4, a2
                  nop
sub_7_j13:        jalr         t5, a6, -163 #jump sub_7 -> sub_9
                  la           a7, region_0+122 #start riscv_load_store_rand_instr_stream_0
                  andi         s3, a5, 1737
                  lw           s9, -58(a7)
                  lb           a4, -15(a7)
                  lui          s7, 845227
                  sb           s3, 35(a7)
                  sltu         s10, a5, a2
                  sll          s3, a2, s7
                  lhu          s0, 50(a7)
                  lb           a1, -39(a7)
                  lui          s11, 507864
                  lhu          s3, -22(a7)
                  lbu          s7, 22(a7)
                  andi         zero, a7, 632
                  sb           a3, 45(a7)
                  sw           t4, -46(a7)
                  srai         t5, t1, 5
                  lhu          ra, 34(a7)
                  auipc        t6, 232031
                  lb           tp, -1(a7)
                  sb           sp, 55(a7)
                  lb           t1, -49(a7)
                  and          t4, gp, t5
                  lbu          s9, -40(a7)
                  srai         gp, s3, 12
                  xor          t1, s0, a0
                  lbu          s0, 0(a7)
                  or           s3, a0, tp
                  sra          s3, t2, s4
                  sh           a0, 8(a7)
                  sb           tp, -18(a7)
                  lb           zero, -19(a7)
                  addi         a0, t4, 1737
                  lb           gp, -37(a7)
                  lb           t0, -39(a7)
                  sltiu        s4, t4, -1893
                  sltu         zero, t4, s2
                  lb           a0, -36(a7)
                  lb           s2, -21(a7)
                  sub          zero, t0, s6
                  or           t2, zero, s10
                  srai         tp, a1, 13
                  sw           tp, -42(a7)
                  lb           a4, -25(a7)
                  lb           a6, 57(a7)
                  srai         zero, s9, 22
                  lw           s4, 46(a7)
                  lbu          a0, -52(a7)
                  sb           t5, -34(a7)
                  xor          tp, t6, a0
                  lw           a1, 6(a7)
                  addi         s2, s8, 1838
                  slt          s3, tp, ra
                  ori          s3, t2, -265
                  andi         s4, sp, -1248
                  sb           tp, -58(a7) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_1+1105 #start riscv_load_store_rand_instr_stream_1
                  sll          s0, t5, s7
                  lbu          s10, -2(t0)
                  sb           s5, 16(t0)
                  sb           s8, -58(t0)
                  lbu          tp, -22(t0)
                  lui          a5, 845035
                  add          s11, a3, t6
                  sh           a1, 15(t0)
                  sb           s2, 47(t0)
                  sb           a3, 15(t0)
                  slti         zero, a4, 2044
                  lbu          a3, 0(t0)
                  nop
                  srl          a4, s11, a7
                  lbu          t4, 56(t0)
                  sb           s7, -19(t0)
                  nop
                  xor          a6, s5, s4
                  lbu          t2, -60(t0)
                  auipc        t4, 699796
                  sb           t1, 58(t0)
                  sub          s0, s6, s4
                  srli         a1, s6, 27
                  nop
                  sb           s2, -12(t0)
                  lui          s4, 487218
                  lb           s10, -11(t0) #end riscv_load_store_rand_instr_stream_1
                  sub          s6, s5, a2
                  srai         a5, t6, 12
                  bne          t2, t4, 21f
                  add          s10, gp, a4
                  and          s3, tp, a4
                  nop
                  addi         a3, a6, -703
                  slli         tp, t5, 13
                  sll          a1, s1, t6
                  nop
                  add          tp, a7, gp
                  sub          t1, gp, s4
                  srli         tp, gp, 28
                  add          t1, tp, gp
                  bge          s2, a2, 32f
                  andi         a0, a6, -615
                  nop
                  andi         s7, s9, 1689
                  or           gp, a5, t0
                  slt          gp, t1, sp
                  add          s8, s0, s10
21:               srai         t5, zero, 2
                  srli         s4, s10, 26
                  or           t5, t5, a6
                  srli         s6, s7, 23
                  xor          s3, s3, t6
                  xor          s8, a5, s2
                  and          a0, a7, t0
                  andi         s8, s4, -122
                  sltiu        s11, t3, 1695
                  slli         t5, s8, 8
                  xor          a6, a3, s3
32:               slt          a4, zero, t2
                  sub          a0, s9, t5
                  sub          s0, t0, sp
                  srl          t6, t2, ra
                  bgeu         s11, a7, 49f
                  beq          a0, sp, 43f
                  or           ra, a0, t6
                  add          s2, a7, a7
                  beq          a3, t2, 46f
                  bgeu         s5, a7, 43f
                  srli         s3, gp, 7
43:               or           tp, a6, s6
                  sll          tp, ra, zero
                  andi         t4, s0, 556
46:               lui          t1, 858287
                  slt          s2, a7, t3
                  lui          ra, 553856
49:               sltu         s8, s1, t5
                  sll          s1, s6, a5
                  sll          tp, s3, s8
                  nop
                  sll          s3, s9, t3
                  bgeu         t1, s11, 74f
                  slli         s6, gp, 19
                  sub          t0, t3, a0
                  lui          s11, 571412
                  nop
                  nop
                  slli         s1, s11, 13
                  auipc        ra, 946989
                  beq          s3, s9, 76f
                  xori         t2, s11, -228
                  slt          s7, s8, a5
                  xor          t1, t1, s4
                  srai         s9, gp, 0
                  auipc        t1, 520204
                  sub          a4, gp, a5
                  bge          s6, sp, 89f
                  andi         t4, s1, 413
                  bge          t3, s0, 73f
                  and          s11, a3, a3
73:               lui          s11, 235716
74:               slli         s6, a0, 15
                  srl          a0, s3, a1
76:               slli         s9, a4, 15
                  and          a5, s9, sp
                  srli         a5, t1, 20
                  sltiu        s4, t6, -444
                  beq          t1, tp, 81f
81:               nop
                  bne          a7, zero, 95f
                  srl          sp, gp, t1
                  andi         tp, t4, -940
                  and          a7, a3, a3
                  auipc        a6, 567076
                  sll          s6, t6, a4
                  bge          a1, tp, 90f
89:               srl          t0, s2, a4
90:               lui          tp, 246098
                  beq          s7, s2, 92f
92:               beq          s8, s8, 101f
                  slti         s9, ra, 263
                  srli         t2, t4, 24
95:               bgeu         s10, t4, 98f
                  slti         a4, s5, 569
                  slli         s2, a6, 17
98:               xor          s9, s4, t4
                  srli         a3, a3, 11
                  nop
101:              sll          s9, s9, gp
                  srl          a0, s3, s2
                  bgeu         t1, t4, 110f
                  and          s1, a7, t2
                  xor          s8, a6, t1
                  ori          a6, gp, -497
                  nop
                  srli         a6, s5, 4
                  add          t5, t4, s2
110:              xori         s9, t4, 1152
                  bgeu         a0, s1, 116f
                  srai         s11, s4, 6
                  beq          zero, s1, 120f
                  xori         s3, t4, 322
                  slli         a3, tp, 16
116:              bltu         t4, t2, 125f
                  slti         s4, a2, 255
                  ori          ra, t5, -765
                  addi         tp, tp, -1977
120:              beq          a6, tp, 134f
                  sltiu        a0, s0, 791
                  or           s0, t1, s10
                  sltu         a5, s5, s7
                  slli         t5, a2, 0
125:              bne          t5, tp, 142f
                  lui          a6, 9639
                  blt          s4, sp, 143f
                  slti         a7, a0, 1570
                  addi         a3, t6, 1819
                  sra          s10, s0, ra
                  beq          a7, zero, 147f
                  nop
                  srli         sp, a1, 6
134:              bne          s11, s1, 152f
                  and          a4, s5, s6
                  slti         a7, t2, 631
                  sub          t0, s7, t0
                  sra          a7, t3, s6
                  xor          a1, s2, t4
                  add          s4, sp, a6
                  slt          a5, zero, t6
142:              sltu         tp, sp, s10
143:              bltu         a7, t6, 154f
                  or           s9, sp, ra
                  xori         t6, s1, 1439
                  bgeu         t3, tp, 150f
147:              beq          s0, t6, 167f
                  xori         a5, s9, 1659
                  bgeu         t1, s2, 154f
150:              bne          s4, t4, 168f
                  lui          gp, 441024
152:              andi         ra, a2, 449
                  or           tp, zero, a6
154:              sub          s9, s4, gp
                  bne          a4, s1, 164f
                  srai         t5, a1, 18
                  sll          s9, t1, t6
                  sub          t5, a7, a3
                  auipc        s7, 742644
                  bge          s0, s7, 167f
                  and          s0, s7, a0
                  xori         a0, a7, -47
                  blt          s5, t6, 177f
164:              nop
                  slt          ra, sp, s3
                  slli         s9, t2, 26
167:              sra          t5, t5, s9
168:              and          s4, s0, s2
                  srl          s10, tp, a6
                  addi         s9, ra, -833
                  sltu         t6, s2, t0
                  ori          gp, s8, -1277
                  add          a1, s3, t5
                  bge          a2, t3, 175f
175:              add          s2, gp, a2
                  sra          s4, a0, t4
177:              bgeu         s8, t5, 179f
                  slt          a0, sp, s5
179:              sltu         a0, s7, a2
                  or           t6, s5, s3
                  addi         s4, a6, 1420
                  bge          s5, t6, 198f
                  addi         s1, s11, -1663
                  srli         s9, s1, 2
                  sra          a5, s3, s2
                  bge          t6, t1, 202f
                  bgeu         a3, s6, 192f
                  auipc        t4, 884280
                  bge          a2, s4, 196f
                  sub          ra, sp, a0
                  and          t6, s0, a3
192:              bgeu         s4, sp, 198f
                  beq          t0, sp, 199f
                  ori          s7, t5, -1348
                  slti         a6, zero, -1684
196:              xor          a5, t2, ra
                  xori         s6, t1, 1588
198:              beq          a1, gp, 199f
199:              auipc        t1, 61227
                  auipc        tp, 844454
                  sll          sp, t2, s11
202:              xor          s0, a4, a1
                  nop
                  sltu         a6, s6, a2
                  xori         sp, s0, 1786
                  addi         t5, t2, -440
                  or           s10, s0, s0
                  and          t1, a0, a4
                  sub          s1, s4, tp
                  and          s3, t4, s10
                  xor          s8, t6, s6
                  xor          a6, s6, t1
                  xor          s2, a3, a2
                  slti         t4, t0, 9
                  srai         s4, a4, 10
                  lui          tp, 494586
                  bne          t4, a5, 235f
                  slti         tp, s3, -1555
                  sltu         t6, s1, t6
                  xor          s6, t2, s3
                  sll          s7, s0, t0
                  bgeu         t4, t6, 241f
                  or           s4, a0, s6
                  sll          s9, s2, s0
                  slt          ra, zero, tp
                  slli         s3, s0, 11
                  srai         s1, s4, 8
                  slli         gp, t5, 28
                  ori          s9, gp, -95
                  blt          t5, s10, 250f
                  srl          s1, s6, s8
                  addi         a6, s5, -1557
                  bltu         t6, t6, 242f
                  or           s6, s9, gp
235:              blt          s6, a5, 248f
                  nop
                  sltiu        t2, s4, -115
                  andi         gp, a3, 864
                  srli         s7, t0, 0
                  and          sp, t4, t4
241:              xori         a6, ra, 454
242:              sltu         t5, zero, t6
                  blt          s3, s2, 260f
                  slt          t4, s6, a2
                  addi         s6, s7, -1571
                  and          s2, s2, sp
                  sltiu        t2, t6, -1668
248:              slt          t4, s0, tp
                  sltiu        t2, t1, 1486
250:              xor          a0, s3, a6
                  add          t0, s1, s10
                  sll          a0, t6, s9
                  sll          a3, t0, s2
                  slti         a0, s9, -1787
                  addi         ra, a0, -51
                  sub          gp, s4, s1
                  xor          a3, a2, s3
                  sll          ra, t1, zero
                  slli         s8, s1, 20
260:              sltiu        s6, s11, -466
                  srli         s11, t3, 31
                  sra          s10, s0, a5
                  bge          tp, a6, 265f
                  or           ra, t1, t1
265:              or           a5, s3, t1
                  sub          a7, a3, ra
                  sltiu        a4, s5, 1825
                  sltiu        a3, t3, -777
                  slli         s6, s9, 8
                  sub          s11, t2, zero
                  srl          s9, t2, s6
                  srai         s10, s11, 9
                  or           a1, s0, a1
                  addi         sp, a0, 484
                  and          t0, s11, t5
                  srl          t5, t1, t1
                  addi         s0, a3, -1598
                  slli         s4, s0, 18
                  add          s1, t5, s2
                  sltiu        a1, a1, -1799
                  xor          s10, a0, a7
                  slt          gp, t1, t0
                  blt          tp, s4, 285f
                  xori         a7, s4, 1987
285:              slt          t5, t0, t4
                  andi         s8, s8, -520
                  blt          a5, sp, 290f
                  and          a5, zero, t3
                  auipc        s10, 294569
290:              sra          a5, s2, s7
                  or           a1, s8, a4
                  bgeu         t0, s0, 305f
                  and          a0, s9, s11
                  srl          s0, s2, a1
                  lui          ra, 179798
                  sra          a1, s4, ra
                  auipc        s4, 321382
                  bgeu         s10, t0, 318f
                  srl          s3, a2, ra
                  beq          a0, t5, 314f
                  bltu         s4, a0, 312f
                  bge          s9, s0, 322f
                  beq          t6, t6, 308f
                  addi         s2, t4, -1107
305:              sltu         t2, s3, a1
                  ori          s7, a0, 650
                  sra          zero, t2, t2
308:              or           t0, s6, t5
                  srli         s1, a7, 11
                  ori          a7, t2, -572
                  slti         s2, a6, -215
312:              auipc        sp, 993960
                  addi         s11, a2, 603
314:              srai         s10, t6, 17
                  auipc        s7, 713459
                  xor          ra, t3, s0
                  blt          sp, a1, 326f
318:              auipc        ra, 951126
                  srl          a5, ra, t5
                  slli         a6, tp, 21
                  ori          s11, t0, -348
322:              srli         t6, t5, 7
                  srl          t6, t6, s7
                  addi         a7, a7, -570
                  blt          s1, t0, 326f
326:              nop
                  lw           t5, 4(a2)
                  slti         a3, a4, -1415
                  srai         a7, s10, 2
                  nop
                  addi         a2, a2, 8
                  add          a3, s10, a5
                  andi         a7, s0, 1002
439:              addi x11, x30, 1
439:              jalr x11, x11, 0
sub_8:            addi         a2, a2, -20
                  sw           t5, 4(a2)
                  sltiu        t4, t2, 1249
                  sub          s0, sp, ra
                  srli         ra, t5, 9
                  xori         s11, t3, -1557
                  ori          s2, a2, 383
                  add          gp, s7, t1
                  and          s4, t6, t5
                  sltiu        t1, a1, -371
                  nop
                  sll          a0, gp, t0
                  and          ra, a1, t4
                  add          s1, s8, a0
                  sltiu        a0, s7, -1580
                  la           a3, sub_9
                  sltu         t2, s8, s11
                  addi         s0, t2, -894
                  addi         a3, a3, 184
                  slti         t0, s9, -1163
sub_8_j14:        jalr         t5, a3, -183 #jump sub_8 -> sub_9
                  la           s3, region_1+720 #start riscv_load_store_rand_instr_stream_0
                  slti         s1, t3, 1172
                  sub          s9, s11, tp
                  lui          s1, 417056
                  and          s10, s6, gp
                  andi         a6, s10, 1898
                  and          a0, a0, s4
                  andi         s11, a2, -1720
                  lbu          s8, -43(s3)
                  sh           s0, -56(s3)
                  slli         t6, ra, 27
                  lb           t1, 24(s3)
                  sltiu        s0, zero, -67
                  or           t2, gp, t2
                  lbu          s1, -59(s3)
                  slli         t4, t6, 4
                  sub          t5, zero, a2
                  srai         t5, s2, 31
                  xor          s1, a1, ra
                  lb           sp, -49(s3)
                  and          t2, s8, a1
                  lbu          a4, 21(s3)
                  or           s4, s3, t3
                  lhu          gp, 22(s3)
                  and          a4, a0, gp
                  xor          a1, a3, s4
                  addi         t0, s7, -1680
                  slli         sp, t1, 26
                  sltu         t6, s2, tp
                  lbu          t2, 32(s3)
                  sb           s8, 32(s3)
                  sub          s9, s3, t1
                  sub          a4, a2, sp
                  lbu          t4, -42(s3) #end riscv_load_store_rand_instr_stream_0
                  slli         sp, tp, 5
                  srl          a0, s9, t5
                  slli         s10, tp, 22
                  sll          s7, s8, sp
                  nop
                  sltu         s11, gp, s8
                  xori         t1, tp, -1101
                  sltu         t1, sp, tp
                  or           s7, ra, t2
                  srl          s11, a6, a5
                  or           t1, sp, a2
                  beq          t6, t1, 27f
                  bne          t4, a0, 27f
                  auipc        s8, 834033
                  srai         a1, a2, 25
                  ori          zero, sp, -1000
                  srli         a0, ra, 26
                  andi         t6, t0, 1657
                  add          tp, t0, t0
                  blt          tp, a6, 21f
                  srli         s2, a5, 27
21:               addi         a3, a7, 507
                  bne          s1, s6, 39f
                  auipc        t1, 958503
                  xori         t2, t1, -1856
                  slti         s0, s4, 1700
                  lui          a0, 755393
27:               addi         a1, a6, -1222
                  andi         ra, s6, -660
                  xori         s6, a5, -1840
                  sub          t1, a0, a6
                  bgeu         a0, t5, 37f
                  bge          t2, a5, 38f
                  slt          s11, s10, a7
                  nop
                  xor          s10, t4, a4
                  slti         s7, ra, -869
37:               xori         a1, a0, 2017
38:               srl          s11, a2, s1
39:               auipc        s8, 700679
                  lui          s7, 438644
                  bne          a0, sp, 51f
                  xor          a0, t6, s1
                  slti         a6, gp, 1158
                  slti         t6, gp, -1681
                  sub          s10, t6, s6
                  andi         zero, s8, 328
                  sltu         t2, t5, s4
                  srli         s9, t5, 30
                  or           t5, a7, s1
                  sltu         ra, a5, s5
51:               bltu         a2, s6, 55f
                  sll          t2, s4, a0
                  sltiu        a6, s2, -1024
                  sra          t0, s3, t0
55:               sltu         s6, s9, s2
                  auipc        a1, 467049
                  beq          a1, t6, 74f
                  sltiu        a7, s3, 1174
                  sll          a4, a1, t4
                  slt          t4, t6, s5
                  bge          s8, a7, 69f
                  beq          a7, a5, 64f
                  sltu         a1, s9, s5
64:               bge          t4, s11, 68f
                  bne          s4, a0, 80f
                  bne          t4, s1, 86f
                  bge          t3, s4, 86f
68:               bgeu         t5, a5, 88f
69:               sll          s9, s9, t4
                  and          s7, t2, s0
                  sltu         tp, t1, t3
                  sltu         t0, tp, a7
                  sltiu        a6, a7, -309
74:               srl          s10, a4, a5
                  xor          a6, a3, a0
                  slti         a0, s7, -1402
                  srl          a6, s6, s4
                  sll          s7, s8, a3
                  beq          ra, s1, 87f
80:               srai         t4, s1, 12
                  xori         sp, s10, -1699
                  bltu         s7, s10, 99f
                  sltiu        gp, s2, 358
                  andi         ra, ra, 1580
                  bge          s7, a5, 90f
86:               andi         a4, t1, 783
87:               sltu         s3, t2, s3
88:               slt          a6, a5, sp
                  xori         t5, t6, 461
90:               blt          s5, t2, 108f
                  beq          s3, zero, 101f
                  bltu         a0, a3, 107f
                  slt          s8, ra, t6
                  sltiu        s2, t4, 1
                  sltu         a5, s5, s2
                  bgeu         s6, s1, 108f
                  addi         gp, a3, -862
                  beq          gp, sp, 100f
99:               andi         s7, a6, -1931
100:              bltu         a7, s0, 117f
101:              slt          t1, t0, s4
                  and          a1, t5, a5
                  andi         s11, a3, 1420
                  andi         t5, t2, 1588
                  srl          t0, zero, a5
                  bne          s2, t0, 123f
107:              beq          tp, tp, 124f
108:              sra          a3, a1, gp
                  bge          t5, sp, 114f
                  ori          zero, s7, 2020
                  srl          s1, a5, a5
                  beq          s4, t3, 123f
                  andi         s10, s3, 611
114:              bgeu         s5, gp, 124f
                  addi         a6, gp, 460
                  bne          s0, a4, 126f
117:              srl          s6, t5, t0
                  sltiu        t4, t0, -602
                  slli         a1, s4, 9
                  slli         zero, t5, 7
                  sll          gp, s6, zero
                  nop
123:              sll          tp, ra, t2
124:              bne          a4, a6, 132f
                  add          s11, s6, s4
126:              nop
                  srli         t5, tp, 31
                  xori         gp, s1, -356
                  beq          a3, s11, 135f
                  bgeu         t5, t0, 145f
                  bge          s4, s2, 142f
132:              sltiu        s10, t1, -203
                  ori          s3, s5, -36
                  sltu         a4, s10, t0
135:              bltu         s9, s7, 139f
                  xori         zero, a5, -1253
                  lui          a5, 37043
                  slli         s11, t3, 19
139:              or           s11, s3, s4
                  srai         zero, s4, 8
                  or           zero, s10, s4
142:              sub          zero, t3, a7
                  srl          s2, s2, a6
                  slt          t6, a3, s11
145:              lui          sp, 79510
                  sll          s9, a5, t4
                  auipc        s3, 294121
                  ori          t0, s8, -565
                  srl          s1, t5, sp
                  bge          s3, s10, 165f
                  and          s3, a3, a1
                  blt          a3, a4, 162f
                  andi         gp, a3, -321
                  slti         s6, sp, -413
                  auipc        sp, 379815
                  auipc        a5, 786773
                  ori          a7, a2, -888
                  beq          gp, a3, 163f
                  nop
                  and          a6, s3, ra
                  bne          ra, s1, 163f
162:              sub          a7, s3, t0
163:              blt          t6, a3, 175f
                  xor          s0, a2, a1
165:              srai         s6, s5, 10
                  lui          sp, 200673
                  ori          a0, a6, -491
                  add          t5, t3, gp
                  xori         s6, a0, 1595
                  and          t5, tp, gp
                  sub          s0, s9, s9
                  beq          s6, s4, 189f
                  or           gp, a1, t3
                  ori          s2, a4, -1677
175:              xori         a6, s9, 693
                  bge          s10, t1, 193f
                  lui          a5, 877022
                  sltiu        t4, a7, 1594
                  and          t2, a1, s11
                  andi         s6, t1, -904
                  srai         s8, a1, 1
                  sltu         s0, s4, t1
                  add          s1, a0, s3
                  ori          t0, t2, 1386
                  blt          s9, s6, 190f
                  addi         sp, s4, -744
                  ori          ra, s9, -1732
                  xor          t5, t6, sp
189:              andi         a3, ra, 261
190:              slli         a3, s8, 10
                  addi         s4, s7, 560
                  and          s7, a5, s2
193:              bne          zero, t3, 208f
                  srl          t5, s4, t5
                  srli         zero, s10, 1
                  srli         s10, t6, 1
                  sll          tp, a5, s7
                  slli         zero, a0, 7
                  sll          tp, t0, s0
                  bne          a4, s9, 208f
                  srli         s10, s3, 3
                  srli         t5, a1, 26
                  bgeu         t1, s0, 209f
                  and          t0, sp, t6
                  sll          gp, a2, gp
                  srl          t5, a0, t2
                  ori          s3, s1, 1713
208:              sra          a1, t2, a0
209:              sltu         s11, tp, sp
                  sra          ra, ra, s11
                  ori          t2, a0, 1750
                  beq          a0, s10, 223f
                  xor          s11, zero, s9
                  slli         s1, s10, 2
                  bne          s7, t4, 223f
                  blt          s1, a3, 223f
                  beq          a3, s0, 223f
                  slli         a6, t0, 26
                  srli         s3, s1, 23
                  and          s0, s10, a0
                  nop
                  sltiu        a0, a1, -340
223:              lui          t0, 165722
                  lw           t5, 4(a2)
                  addi         a2, a2, 20
                  slli         sp, t4, 20
                  xor          a7, gp, t3
                  slt          s6, s11, s6
                  sltiu        gp, s11, 464
                  slt          a3, ra, s9
286:              addi x14, x30, 0
286:              jalr x14, x14, 0
sub_3:            srai         s3, s11, 2
                  sra          s1, s3, gp
                  add          s7, s0, gp
                  addi         a2, a2, -44
                  ori          s11, a3, -1668
                  sltu         a5, a2, s1
                  sll          a6, t5, s11
                  and          t4, s7, a5
                  sw           t5, 4(a2)
                  slti         sp, ra, 543
                  or           s8, t0, t5
                  nop
                  sltiu        tp, s7, -457
                  slti         s3, t5, 1728
                  bne          s11, s11, sub_3_j7 #branch to jump instr
                  add          s10, t4, s0
                  sra          s0, a5, a5
                  sltiu        tp, zero, 124
sub_3_j7:         jal          t5, sub_4 #jump sub_3 -> sub_4
                  la           sp, region_1+1970 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sb           a0, -155(sp)
                  sw           tp, -1522(sp)
                  lbu          a7, -175(sp)
                  or           s1, s9, t3
                  srli         s4, tp, 24
                  lh           s2, -1062(sp)
                  sh           tp, -240(sp)
                  lbu          t2, -759(sp)
                  sltu         s3, a2, sp
                  lbu          a4, -1833(sp)
                  lb           t2, -863(sp)
                  sb           s6, -527(sp)
                  lbu          a7, -371(sp)
                  sra          s11, a5, t1
                  sb           s1, -1047(sp)
                  sb           gp, -731(sp)
                  add          s8, gp, s2
                  lbu          s3, -1570(sp)
                  lb           a7, -1559(sp)
                  lbu          a4, -1550(sp)
                  lb           s4, -865(sp)
                  sll          s3, t5, ra
                  lbu          t5, -1345(sp)
                  sltu         s9, t2, t2
                  ori          t2, sp, -1256
                  sb           s1, -747(sp)
                  srl          s0, s11, a3
                  sltiu        gp, s9, -782
                  sh           s9, -224(sp)
                  lhu          s10, -808(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+1115 #start riscv_load_store_rand_instr_stream_3
                  slli         zero, s2, 2
                  xor          t5, t0, s7
                  or           a1, sp, a5
                  auipc        t5, 383359
                  add          a5, s0, t2
                  sb           a5, -8(s6)
                  slt          tp, ra, t1
                  lbu          t0, -28(s6)
                  sltiu        s8, t3, 1790
                  sb           gp, 623(s6)
                  sltu         t6, a0, sp
                  lbu          s2, 744(s6)
                  lb           tp, 248(s6)
                  lbu          zero, 878(s6)
                  lh           s9, -915(s6)
                  sb           s3, -911(s6)
                  lb           s3, -330(s6)
                  srli         a5, sp, 19
                  srai         a6, a3, 23
                  lb           a5, -72(s6) #end riscv_load_store_rand_instr_stream_3
                  slli         s10, s4, 27
                  xori         t5, a5, 1169
                  bltu         ra, a3, 8f
                  bne          t4, s0, 10f
                  and          sp, t3, t5
                  slti         a5, s5, 320
                  addi         s10, zero, 672
                  or           s9, s5, t4
8:                srai         t0, a4, 31
                  sll          s7, a0, t1
10:               slt          s8, s3, s1
                  sub          s7, s8, a3
                  beq          a2, a4, 28f
                  srl          s1, t3, s10
                  srl          s7, a5, s9
                  sra          a3, gp, a3
                  or           s2, s3, a6
                  xori         s10, a7, 854
                  beq          ra, a7, 19f
19:               srli         s11, t3, 13
                  or           t5, s9, t3
                  add          a1, s3, a1
                  and          s9, ra, t1
                  srli         t1, t6, 10
                  sltiu        a3, s9, -882
                  andi         s8, s7, 1339
                  slli         a1, a2, 14
                  bne          a7, s7, 38f
28:               andi         s10, s11, 1442
                  or           t2, t0, t3
                  slt          a5, t3, s2
                  bgeu         s2, tp, 37f
                  sub          s8, sp, t6
                  bltu         a7, s7, 38f
                  lui          s1, 148312
                  xor          a0, ra, s7
                  srli         s2, a6, 27
37:               slli         s6, t5, 25
38:               srli         t1, t6, 6
                  slli         a0, zero, 4
                  nop
                  sltu         s10, s6, s10
                  bne          a1, s9, 59f
                  xor          s11, a5, s6
                  and          t1, a4, a3
                  auipc        s4, 255184
                  xori         sp, t6, -399
                  sltiu        t4, s2, 514
                  slti         t0, s3, -1709
                  xori         ra, t1, -1654
                  bne          a4, s4, 64f
                  xor          t2, a0, s0
                  bltu         t0, t3, 63f
                  addi         t1, a5, 102
                  bge          a2, s2, 61f
                  srl          t0, a0, t4
                  and          s2, gp, t6
                  ori          t5, s2, -1897
                  andi         s3, ra, -1281
59:               srai         s9, s7, 6
                  xori         s4, a3, -1
61:               bgeu         s7, a4, 65f
                  srli         a3, a2, 7
63:               lui          s11, 539265
64:               and          s1, gp, ra
65:               lui          a4, 383430
                  srai         tp, t4, 15
                  add          a6, s6, t5
                  lui          s9, 389062
                  sltiu        a4, a3, -1472
                  and          a4, a3, s2
                  bltu         s1, zero, 72f
72:               xori         t0, s6, -632
                  blt          a0, s5, 88f
                  lui          s9, 185740
                  sll          a6, s7, a7
                  xori         s3, gp, -419
                  sll          t0, t1, sp
                  sltiu        tp, sp, 1715
                  sra          s8, s7, s7
                  slt          a3, a0, t0
                  slt          s11, s10, zero
                  slti         a4, t2, 772
                  srli         s8, t0, 5
                  xori         tp, a1, -126
                  and          t0, a3, s2
                  sra          a1, a1, s10
                  srl          a0, ra, gp
88:               lui          a7, 710780
                  blt          s8, t2, 97f
                  or           s9, a4, t2
                  sub          a5, t0, a6
                  beq          ra, t1, 104f
                  srl          t6, s9, s10
                  sltu         s4, s10, t2
                  bge          zero, gp, 97f
                  xori         gp, a1, 662
97:               srai         t2, t3, 31
                  blt          t5, t3, 107f
                  bgeu         a0, a0, 113f
                  sll          s8, s5, s6
                  slt          s4, s7, a2
                  sltu         zero, a3, gp
                  slli         s7, t1, 28
104:              slti         a6, a5, -1007
                  sra          t0, t2, a2
                  beq          s6, ra, 112f
107:              blt          s3, t0, 116f
                  sltiu        gp, t3, 1374
                  and          s1, s8, a0
                  add          s11, t1, s3
                  xori         gp, s6, -1567
112:              bltu         ra, a6, 116f
113:              lui          ra, 558156
                  sll          t6, s1, a6
                  bne          a2, s1, 124f
116:              sra          s3, t2, a2
                  bne          s0, s1, 127f
                  or           sp, s6, a7
                  sll          a1, ra, a5
                  srl          t6, a0, t1
                  auipc        t1, 300280
                  srl          s4, s0, s11
                  slt          s0, a6, zero
124:              add          t0, t1, t4
                  slt          t1, t2, s2
                  xori         t5, a0, -857
127:              sub          s2, s2, t6
                  slt          a0, s4, sp
                  srai         a3, s11, 26
                  xor          tp, t0, t1
                  blt          t0, a2, 140f
                  sra          t2, a0, s3
                  blt          s11, a1, 138f
                  sltu         gp, a0, s4
                  sra          t1, s3, a7
                  bge          s10, t1, 147f
                  andi         a4, a4, 375
138:              slti         gp, zero, 1440
                  xori         s11, t2, -531
140:              and          s11, s11, s4
                  or           tp, a0, a6
                  beq          s6, s8, 149f
                  slti         a1, s2, 946
                  ori          a1, s9, 997
                  blt          t6, s11, 150f
                  andi         t0, a3, -683
147:              nop
                  bgeu         t5, t3, 162f
149:              sub          t4, s6, a0
150:              add          zero, s9, s5
                  bgeu         zero, t2, 156f
                  and          t2, a2, t2
                  nop
                  andi         zero, s1, -1007
                  xor          s0, a5, t2
156:              srl          t0, a3, s8
                  addi         s9, t4, -1236
                  bltu         s0, s10, 167f
                  blt          s7, ra, 167f
                  ori          s0, s1, -632
                  blt          s3, t1, 175f
162:              bge          t0, a3, 176f
                  beq          ra, s7, 174f
                  slli         ra, s10, 18
                  la           t2, sub_5
                  xori         a3, s2, -587
                  xori         a1, a5, 719
                  sltu         a6, t1, t5
                  auipc        s8, 344990
                  addi         t2, t2, -541
                  lui          a3, 814840
                  and          a3, zero, s8
sub_3_j6:         jalr         t5, t2, 542 #jump sub_3 -> sub_5
                  la           s11, region_0+1013 #start riscv_load_store_rand_instr_stream_0
                  lbu          a5, -912(s11)
                  sb           a5, 446(s11)
                  sltiu        a1, a0, -947
                  lb           gp, -320(s11)
                  lbu          a0, 659(s11)
                  lb           s6, 543(s11)
                  lbu          t6, -489(s11)
                  nop
                  lb           t1, 218(s11)
                  lb           t6, 690(s11)
                  or           zero, a4, t1
                  or           t0, ra, s10
                  andi         a5, sp, -374
                  lhu          s7, -935(s11)
                  lb           sp, 865(s11)
                  lb           a0, 908(s11)
                  xori         a7, s6, -1938
                  lbu          ra, -32(s11)
                  lbu          s6, 743(s11)
                  lb           a7, -408(s11)
                  slti         t2, a7, -456
                  lbu          s4, -702(s11)
                  sb           zero, -514(s11)
                  slti         gp, s9, -243
                  sb           t5, 664(s11)
                  lb           s7, 92(s11)
                  lbu          gp, 374(s11)
                  and          a6, t3, s7
                  auipc        t2, 97879
                  lb           t6, 105(s11)
                  slti         s0, t4, -1597
                  lbu          sp, -518(s11)
                  lb           t6, 56(s11)
                  slt          a6, a0, a0
                  lbu          s3, 518(s11)
                  ori          s7, t2, 1554
                  sra          s3, s7, s11
                  xor          t2, s5, s10
                  lw           a6, 555(s11)
                  lui          t5, 384658
                  sb           s7, 745(s11)
                  sltiu        t0, t4, -2035
                  sw           t0, 55(s11)
                  lb           t1, 248(s11)
                  lbu          ra, -708(s11)
                  lhu          s2, -267(s11) #end riscv_load_store_rand_instr_stream_0
                  xori         s11, zero, 1941
                  bgeu         t6, s7, 177f
                  xor          a6, tp, s5
167:              or           s7, a2, s8
                  andi         tp, t3, 1030
                  bgeu         t5, tp, 183f
                  sra          s0, a2, ra
                  slli         t1, ra, 16
                  sll          s7, t0, s7
                  slli         t4, t6, 30
174:              sltu         ra, s3, s3
175:              xori         gp, t5, 559
176:              andi         a0, t0, -583
177:              bge          a2, a6, 183f
                  sltiu        tp, a5, 1464
                  srl          a3, gp, zero
                  sltiu        a3, a4, 1445
                  and          a4, s6, ra
                  auipc        s11, 167329
183:              xori         s1, tp, 613
                  and          a6, a7, s1
                  srai         s0, t1, 25
                  sltiu        sp, t4, -1423
                  srai         a7, a7, 18
                  xori         a7, s9, -274
                  bne          s0, t5, 196f
                  bltu         a7, s0, 192f
                  srai         s7, s8, 21
192:              auipc        s4, 795909
                  slli         a1, a0, 9
                  xori         s2, a1, 572
                  bgeu         s1, sp, 201f
196:              slt          s0, a4, s5
                  lui          a7, 238873
                  xori         a3, s3, -1773
                  auipc        t0, 258366
                  add          s9, a1, a0
201:              sub          s4, zero, s6
                  bltu         s0, t0, 209f
                  or           a0, t5, a1
                  bne          t5, s4, 205f
205:              sltu         a6, t1, tp
                  sll          s3, t4, a2
                  bge          s5, a7, 223f
                  srl          a5, s5, t4
209:              lui          a4, 155132
                  andi         a3, s7, -561
                  xori         t6, s10, 1955
                  sub          s6, a3, s7
                  xori         s2, s11, -496
                  lui          zero, 910681
                  sltu         s6, s11, a1
                  srl          a1, s2, t3
                  bne          a1, s10, 221f
                  xori         ra, t4, -1369
                  bltu         a0, tp, 226f
                  and          t5, tp, t0
221:              sll          s0, s11, s1
                  sll          a5, sp, t0
223:              slli         s0, a1, 11
                  xor          s7, t2, gp
                  addi         a0, t5, -2033
226:              sll          a5, s11, t4
                  sra          s2, ra, a0
                  bne          t0, a5, 237f
                  srli         a4, s9, 30
                  bge          a2, gp, 235f
                  sll          s0, s10, s1
                  srli         a0, t0, 3
                  andi         s4, s1, -1101
                  auipc        t4, 587506
235:              andi         a7, s3, 672
                  add          s2, t3, s8
237:              sub          a0, s0, t4
                  andi         zero, a7, -520
                  srl          t2, s5, tp
                  slti         a5, t6, 314
                  sll          sp, tp, s11
                  bgeu         t6, t4, 257f
                  sltiu        s1, a3, -1943
                  and          s0, s4, a4
                  blt          s3, s7, 249f
                  auipc        t6, 418880
                  srl          t0, zero, t3
                  sra          s7, gp, t6
249:              lui          t5, 1020551
                  addi         zero, a2, 1849
                  bge          t0, s4, 256f
                  sltiu        ra, s7, 1792
                  ori          t2, ra, -1374
                  nop
                  sltu         a6, a4, t6
256:              lui          s3, 83062
257:              auipc        gp, 469555
                  slli         t2, t3, 22
                  or           a1, t5, s10
                  srai         a4, t5, 2
                  slli         gp, a1, 7
                  slli         s2, s5, 10
                  sltiu        s2, s2, 820
                  xori         s1, s2, 70
                  bltu         a2, a4, 275f
                  sltiu        a6, s7, 817
                  ori          s10, sp, -768
                  lui          gp, 691965
                  sra          a6, ra, t0
                  ori          a4, gp, -580
                  addi         s7, t4, -458
                  xori         s1, a4, -205
                  bltu         t6, t6, 282f
                  bge          s0, ra, 280f
275:              srl          s4, t1, zero
                  or           zero, s3, s9
                  bge          a2, t1, 288f
                  lui          a5, 694573
                  bltu         a6, a1, 288f
280:              slt          a5, a2, t0
                  srai         t4, s9, 2
282:              srli         s10, a7, 5
                  blt          a0, s2, 284f
284:              andi         s9, s5, -7
                  sra          s4, a1, a5
                  bltu         s11, a2, 303f
                  srl          t0, s10, s4
288:              blt          a5, s2, 299f
                  srai         a0, a6, 17
                  auipc        a7, 712955
                  blt          gp, s10, 298f
                  add          s10, a6, t0
                  bgeu         a0, t3, 295f
                  srai         zero, t2, 15
295:              sra          ra, s7, s2
                  srai         a7, a1, 25
                  bne          s10, a6, 306f
298:              addi         tp, t3, -945
299:              and          a6, a3, sp
                  beq          s1, a6, 304f
                  and          s6, s7, gp
                  and          t0, s4, s11
303:              or           s3, t3, a0
304:              slti         s1, t1, 94
                  or           s10, s11, a0
306:              lui          s8, 464905
                  sltiu        sp, t5, -127
                  srai         s7, s0, 17
                  slti         a4, t3, -1767
                  andi         s7, a0, 922
                  slt          sp, t2, a1
                  slli         s3, t3, 17
                  sub          s9, s10, s8
                  and          ra, s1, gp
                  blt          a5, zero, 321f
                  srai         sp, a2, 24
                  nop
                  and          tp, t3, t5
                  xori         s9, gp, 154
                  srli         a3, t6, 4
321:              bge          tp, s4, 330f
                  blt          s9, a4, 327f
                  and          a5, a3, gp
                  ori          t0, s5, 696
                  andi         gp, t6, -142
                  bge          t2, s6, 332f
327:              add          tp, t6, t3
                  slli         a1, s6, 1
                  sll          sp, s2, zero
330:              srai         t4, t5, 28
                  xor          zero, s7, t0
332:              ori          t6, s9, 1174
                  srai         a6, tp, 6
                  srai         s11, a7, 11
                  sltu         s6, t5, a6
                  blt          s6, a5, 352f
                  srai         sp, zero, 2
                  slti         s8, s4, 1670
                  sll          s8, a1, a2
                  andi         a0, t5, -1287
                  xor          t4, a3, a7
                  add          s0, t5, ra
                  auipc        a3, 1021538
                  sra          s1, a3, a4
                  sltu         s0, s0, a2
                  sub          s0, t1, a6
                  bge          s1, s5, 358f
                  and          s2, tp, s5
                  ori          t5, a7, 1883
                  add          a1, zero, ra
                  srl          s1, t6, s2
352:              ori          s0, a4, 1634
                  xori         t6, t0, 703
                  bge          s5, s4, 362f
                  bge          s6, sp, 366f
                  add          s7, t2, s7
                  srai         sp, s0, 15
358:              add          sp, t2, ra
                  slt          t5, a7, ra
                  srl          s6, t0, s4
                  xor          s1, s11, t4
362:              bge          a0, s0, 376f
                  slti         t2, s4, -1282
                  sub          a7, a4, s7
                  xori         a6, s3, -291
366:              sll          tp, a3, s8
                  and          t1, a7, a1
                  beq          a0, s5, 375f
                  xori         t0, t5, 1186
                  ori          t5, tp, -918
                  or           s9, sp, tp
                  nop
                  blt          t6, a6, 382f
                  bge          a4, a2, 391f
375:              nop
376:              sll          t0, t5, t6
                  bne          tp, s8, 386f
                  bge          gp, s4, 383f
                  bge          t0, s8, 393f
                  and          a1, s3, a7
                  bge          t6, t5, 396f
382:              slli         s8, ra, 28
383:              andi         s7, a1, 1427
                  andi         s7, s8, -1520
                  andi         a7, t1, 919
386:              slli         ra, a0, 0
                  bne          a4, t2, 401f
                  bne          t2, s1, 394f
                  bne          s9, s6, 396f
                  srli         t6, zero, 11
391:              slti         s3, a1, -1662
                  addi         a5, s2, 1990
393:              xori         t0, t4, -1135
394:              sub          tp, a1, a3
                  blt          a6, s2, 399f
396:              srli         a3, t1, 10
                  and          a0, s5, s4
                  nop
399:              addi         tp, s4, 1420
                  add          zero, t0, a4
401:              blt          a0, t5, 402f
402:              xor          tp, t4, s9
                  bge          a7, a6, 408f
                  srl          a4, s10, s9
                  slti         ra, a1, 386
                  blt          gp, ra, 417f
                  ori          s9, ra, -96
408:              and          zero, a0, s10
                  bltu         t2, t5, 410f
410:              or           a1, t3, s4
                  slti         t1, sp, -1618
                  sra          a5, a6, t2
                  slt          t2, t2, t5
                  ori          t1, s2, -1797
                  bge          t0, a2, 425f
                  slli         s9, ra, 19
417:              xor          ra, s1, a2
                  srli         t4, t5, 18
                  slli         s3, s10, 16
                  bgeu         ra, t2, 432f
                  addi         t5, sp, -5
                  lui          gp, 664516
                  srl          s6, a2, s4
                  beq          s5, a7, 436f
425:              andi         t0, s4, -1090
                  srai         s4, zero, 23
                  slti         s6, s1, -827
                  andi         s1, a7, 733
                  bne          s9, s1, 443f
                  sltiu        s7, t6, -552
                  sub          t1, t3, s10
432:              slli         a6, s7, 21
                  sra          s9, s8, s8
                  bltu         s8, s4, 445f
                  andi         t1, a4, 471
436:              slli         t5, a5, 2
                  srli         t1, a5, 19
                  blt          t6, s7, 443f
                  sltiu        s7, t6, 1543
                  slti         a3, s0, -1681
                  or           s7, t2, a4
                  slti         s7, t1, -1765
443:              bgeu         s11, s7, 452f
                  sub          t5, s11, gp
445:              bge          t5, s1, 454f
                  auipc        s9, 69388
                  sltu         t5, zero, t6
                  xor          a7, t4, s10
                  xor          s0, a0, a0
                  slli         s2, s2, 0
                  sltiu        t5, t4, -1681
452:              and          a3, ra, s7
                  bgeu         zero, t6, 459f
454:              sra          s7, t5, t5
                  nop
                  xor          a6, ra, t3
                  srl          t6, a2, a5
                  add          s10, t2, t4
459:              lui          s10, 507030
                  beq          s6, ra, 477f
                  xori         t5, a6, 446
                  bgeu         gp, s6, 466f
                  xor          t1, a0, a1
                  bne          t6, t0, 479f
                  srl          t4, s0, s5
466:              beq          s1, a2, 471f
                  sll          s1, s2, t3
                  xor          tp, gp, tp
                  sltu         t0, s5, s9
                  srli         s2, s7, 15
471:              bgeu         s3, t1, 482f
                  xor          s3, s3, sp
                  ori          s1, sp, 561
                  bge          s5, a5, 478f
                  slt          s3, tp, ra
                  xori         a6, a7, -1671
477:              bltu         t4, s0, 482f
478:              blt          zero, s3, 479f
479:              sltu         s9, a6, s9
                  blt          s8, a3, 482f
                  xori         a4, a1, -1661
482:              or           s4, a1, t4
                  xor          a7, a4, zero
                  bgeu         s9, t5, 498f
                  slti         t0, s8, 816
                  srl          s8, t4, t5
                  sll          a0, sp, s5
                  or           t4, t2, s4
                  bne          s1, gp, 490f
490:              beq          ra, t4, 498f
                  sltiu        gp, s5, -759
                  xor          t1, a1, s10
                  srl          s2, ra, a6
                  nop
                  sub          s3, s3, t4
                  slti         t4, s9, -1898
                  sltiu        s1, s5, 318
498:              sltu         a7, gp, s5
                  add          t0, tp, a2
                  srl          s9, t3, s0
                  and          a0, t6, t5
                  andi         sp, t0, -1550
                  srai         a1, s10, 0
                  bge          s4, a2, 518f
                  ori          a0, a7, 1341
                  or           s10, a5, t6
                  slti         s10, a6, 636
                  lui          s0, 40089
                  beq          gp, s3, 525f
                  bge          s9, t5, 519f
                  srl          t0, a6, s3
                  beq          ra, s1, 519f
                  or           s3, a5, a6
                  and          s7, s8, t1
                  or           s8, a0, s0
                  auipc        s2, 558235
                  and          zero, s1, t1
518:              blt          s3, sp, 525f
519:              srli         ra, t2, 21
                  la           t0, region_0+954 #start riscv_load_store_rand_instr_stream_2
                  sltu         a5, s5, s8
                  or           a3, s0, a0
                  sb           a6, 228(t0)
                  sb           t5, -58(t0)
                  lhu          s1, -142(t0)
                  sh           a7, -12(t0)
                  lbu          sp, 89(t0)
                  lb           s4, 77(t0)
                  xor          sp, zero, s11
                  slli         a0, t4, 12
                  lh           a5, 16(t0)
                  sb           s1, -51(t0)
                  lbu          s4, 170(t0)
                  addi         s0, a4, 1194
                  and          t5, t1, t1
                  lbu          a4, -88(t0)
                  lbu          t2, -252(t0)
                  sltiu        ra, a2, -1685
                  sra          s6, s5, s8
                  add          t6, zero, s6
                  lbu          a1, -57(t0)
                  srl          a4, s7, a0
                  xor          s3, s6, a7
                  xor          s8, a4, a6
                  sb           t0, -202(t0)
                  lui          a5, 259530
                  sb           s4, 77(t0)
                  nop
                  srl          a1, a3, s2
                  sltu         s10, s7, s10
                  xori         t4, s11, -1264
                  lhu          t6, -230(t0)
                  lbu          gp, -16(t0)
                  sh           gp, -210(t0)
                  auipc        s4, 595427
                  auipc        t1, 855641
                  nop
                  sub          s0, a5, a0
                  lhu          s3, 224(t0)
                  lh           tp, 4(t0) #end riscv_load_store_rand_instr_stream_2
                  slli         sp, s1, 4
                  auipc        t6, 516466
                  addi         s6, tp, 110
                  srli         s2, a6, 27
                  xori         tp, a0, 509
525:              bne          s4, s8, 532f
                  bltu         a7, s9, 532f
                  sra          s11, t4, t4
                  bne          s10, s11, 534f
                  slti         s0, s11, 766
                  srai         t2, a1, 21
                  and          t6, s8, t6
532:              and          s9, s11, t5
                  sll          s4, s10, t3
534:              lui          s0, 33367
                  addi         t4, t0, -1498
                  bge          a7, s7, 545f
                  ori          t6, s4, -1671
                  bne          t1, a5, 548f
                  srl          t6, t5, t5
                  and          gp, s0, a6
                  and          s7, s1, gp
                  and          t4, a6, a7
                  auipc        s9, 231063
                  sltu         s8, s3, t2
545:              bge          a3, s4, 551f
                  add          a0, a6, t5
                  sll          s7, t0, a1
548:              slt          s10, t2, a5
                  addi         s10, t5, -879
                  blt          s10, s10, 551f
551:              addi         a1, s7, -1131
                  lw           t5, 4(a2)
                  xor          a3, t3, a3
                  addi         a2, a2, 44
                  nop
                  sll          t4, t4, s6
                  lui          t2, 763481
                  or           t1, a4, s5
                  ori          a6, t6, -44
                  srl          s2, a5, s7
731:              addi x19, x30, 0
731:              jalr x19, x19, 0
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
.word 0x82897fee, 0x70ba2459, 0x3e174834, 0xb12216b9, 0x12515bb1, 0x02440aaf, 0x8ae5ab6f, 0xf19b936a
.word 0x68fdfbec, 0xa88071a4, 0xd13b7f3a, 0xb98ebbd8, 0x05e900fc, 0x1aa842b0, 0x56ef4bce, 0x9594bf83
.word 0x269c3416, 0x290177d8, 0x2a86a7f8, 0xe4637b64, 0xe590c6cc, 0x9372b67f, 0xabc0c8ee, 0x5b51a461
.word 0xdc58901c, 0x6ef47643, 0xd82de0dc, 0x3b5b1e0b, 0xef2cec05, 0x9a48dc3b, 0x0d313aee, 0x7a3c5fcf
.word 0xb3ea36ce, 0x31c6fa7b, 0x6938550b, 0xfe8d41f2, 0xf3af8628, 0x07697e9b, 0xcaec821a, 0xaf9b8efe
.word 0xf4634f3a, 0x3581c8e7, 0x16c5562d, 0x40cdf9f1, 0x9fed06f0, 0xdfbbd4fb, 0x8ce5f817, 0x08b4d92e
.word 0x5b2826d9, 0xa4f9e049, 0x8e33ce30, 0xb845a2f4, 0x2fe57829, 0xb9704d92, 0x133efc84, 0x6d16e842
.word 0xe63644bb, 0xca7df6d2, 0xa7594334, 0xb024d6c5, 0xbefe910a, 0xf360d204, 0x11ed7594, 0xa7985920
.word 0x1faeede4, 0x58a773e9, 0xa0fa44ff, 0xe48d5ff8, 0x52ec1433, 0x7ec7ea2d, 0x6ac112bd, 0x16082815
.word 0x0bedd83d, 0x1e51e21c, 0x3093921f, 0x7b2f472f, 0x0c51fc50, 0xa6d90ecf, 0xb8d2e260, 0xed1dfede
.word 0x1284349c, 0x7ffed41b, 0x68e0719b, 0x533d0a55, 0x5399a048, 0x044e7c6f, 0x08706bf4, 0x31a1c59a
.word 0xbeb57319, 0x3f6d47d7, 0xd51711d9, 0xffd226ee, 0xde7e5e9d, 0x1995e5b4, 0x479b2660, 0xb6415e3a
.word 0xee42cc52, 0x4cf15cc8, 0x2bf1d0ae, 0x02544a57, 0x3a0abae1, 0xd296f500, 0x9e5d6f78, 0x5b2dd9fa
.word 0x13f71b4e, 0x3eb1a869, 0x58239019, 0xf20fe733, 0x36c532e5, 0xcc607ae2, 0xdf484740, 0x0321155f
.word 0x7e7b372c, 0x51ddcda9, 0xddf8d963, 0x42fd4e5a, 0xc5dba59c, 0x4fcc792c, 0xdcb61529, 0x0cb0439e
.word 0xb05fb556, 0x76cc71a9, 0x515c507b, 0x10a01b14, 0xdaf08c2c, 0x1e147b7d, 0xb44cfcfe, 0x5e56c480
.word 0x31493eaa, 0x9c506f06, 0x830fa2eb, 0xc2117024, 0x7f99dfb5, 0x8bc09e63, 0x6d474433, 0x438f9f74
.word 0x4bc5db88, 0x7ffc2796, 0x8fca7beb, 0x463ca6c8, 0xf6073496, 0x10199e1c, 0x14756193, 0xd65efec2
.word 0x771027d9, 0x45c6866d, 0x105352ff, 0xb15d4f78, 0xf4fc41d2, 0x095fc583, 0x88e0004d, 0xb107f226
.word 0x1fb6c7dd, 0x76063759, 0x1e808340, 0x782e6bf5, 0x35fd6c29, 0x212c18e0, 0x4ef44411, 0xa1005ace
.word 0xa0e305c5, 0x04522719, 0xeecca141, 0xeb979bf4, 0x9c6f7d2e, 0x02a78a08, 0xcf33d0bd, 0xd13cc593
.word 0x813e16f0, 0x0cb953f9, 0x8c9fab46, 0x7a82867f, 0x782f9f04, 0xa82813e4, 0x11c178ae, 0xa7566306
.word 0xc75fb88b, 0x468782f1, 0xdd3d9332, 0x417d2eb5, 0xa0a049a4, 0x919aaa48, 0x6d1454ed, 0x41e4eb6a
.word 0xc0054dd5, 0x4bc27479, 0x11bd1bff, 0x8638b42c, 0xcd9486fa, 0xa10d5077, 0x26c16f2c, 0x42d5f53b
.word 0x1ce2b2e8, 0x020decd4, 0x894b75d8, 0x8465370f, 0x27fd7c89, 0xd6c95007, 0x4ba51127, 0xea438606
.word 0xaeeef65a, 0xd34a6529, 0x69e5296c, 0x1fb55212, 0x5f9f7fe1, 0xbe608d70, 0x0b10f79a, 0x9e235665
.word 0x3800dbbb, 0xdf787d3e, 0x6b417011, 0xe9d34349, 0x2c1a3725, 0xf3d34f4f, 0xa5356aa0, 0x5b18fc71
.word 0x626f9abe, 0xce67192d, 0xd3e1b5cf, 0xe9419bfe, 0x4f1c0b99, 0xc3e31148, 0x83895cfc, 0x3347acc2
.word 0x0d46aeb2, 0x058afef1, 0xaa4500f6, 0x34443efb, 0x6f88da79, 0x7d27859b, 0x40541cbb, 0xe25e8452
.word 0xfcfd5ce6, 0xed87255f, 0x6b1059e8, 0x2a72636f, 0x1c0654e4, 0x157931f5, 0x825d9c74, 0xba90dd1d
.word 0x07e5611c, 0x9be60f7b, 0x9c171ef2, 0x46a614ee, 0x2ea11ac0, 0x94af1cc8, 0xafe79760, 0xdccb8458
.word 0xeac7c1ab, 0x11d727d3, 0x05b59078, 0xa41ea27b, 0x6ead1eaa, 0x86c6e5aa, 0x9d155f90, 0x868877ed
.word 0x069bb872, 0x2e914e46, 0xab00b6e6, 0x8bbd54c6, 0x6ddb2adc, 0x97476680, 0xe5988583, 0xc62787eb
.word 0xaa983627, 0xb0413511, 0x5073faeb, 0x8b8292d3, 0xf671a4e8, 0xc83b0f4b, 0xc224028b, 0xe38ccdc0
.word 0x6157d13f, 0x89c28408, 0x428c9a91, 0x06a02e33, 0x48939d53, 0x48973004, 0xdb8196da, 0x5dc266c7
.word 0x4af30239, 0xe1651265, 0xeaecd33a, 0x1105b162, 0x2b1f585e, 0x8efb6973, 0x13b7ee72, 0x106e5040
.word 0xf53bd27e, 0x5e0498fc, 0x27d7bb3a, 0x6334e49b, 0x751bc7b5, 0x7c3f625a, 0xfc88eb25, 0x2ef62dea
.word 0x4c078264, 0x42a1acfe, 0xdfea87b4, 0x9480de6d, 0x4256d978, 0x6234dc70, 0x142bfa90, 0xcc1182a3
.word 0x74676bc6, 0x03a6eeaf, 0xde794432, 0x42d223ba, 0x79970626, 0xdb4bf2ea, 0x8b39776f, 0x57640773
.word 0xc1807639, 0x7b102416, 0xcf1a16bc, 0x6123a9b0, 0xaea0b417, 0x20fbcd71, 0x4bf0821a, 0xcfbd0a1e
.word 0xf89e1826, 0x0aa68c21, 0xb1bda8f0, 0xfda6546d, 0x9a28fd3d, 0xf3d1567d, 0xfbce1ee4, 0xc8c8c683
.word 0xc5a558a4, 0xf35bb46b, 0x4db51027, 0x37749307, 0xe2b40c3c, 0x761b5733, 0x3df8f7ee, 0xdf910d68
.word 0x5f1ca2f2, 0x7ae13b90, 0xa1afb68e, 0x74aa8ff8, 0x3d6db64f, 0x9ba59260, 0x99540d3a, 0x5a931ea2
.word 0x0ef93fd6, 0xf7ae3c07, 0xc2eb3ef6, 0x8dc51884, 0x680b2679, 0x1b790871, 0xc0ae4cdf, 0xa71772e1
.word 0x25659285, 0x0892eb43, 0x51d334db, 0xebb0c0f4, 0x3b4aa033, 0xaf145bff, 0x4108d55d, 0xf2203b74
.word 0xc33e0f46, 0x0de2d525, 0x9d94bfe6, 0x56c8949a, 0x80233fcb, 0x87bc5905, 0xd1ff7d78, 0xf8a02538
.word 0xeba56082, 0x7d4760eb, 0x6cdd8868, 0xc340298b, 0xa447d644, 0x1b779afc, 0xc632ea7b, 0x1830e0e1
.word 0xd108b63d, 0x5b0d0ae0, 0xc48328f8, 0x27426666, 0xb4e17c9e, 0xef447083, 0xa9fcb3d0, 0xf1a3f7c0
.word 0xaccb7e51, 0xcabb7e2b, 0x9642b092, 0x25c2a8e2, 0xade83601, 0x5c4a8b50, 0xa4e457cc, 0xb3c8ab71
.word 0xf0da9438, 0x27b875bf, 0xe58a9804, 0x67e600d3, 0xf7a7dfe8, 0x2714c508, 0x1c260355, 0xd1872a09
.word 0x5f3112bb, 0xd0350189, 0xb6a46207, 0x0b3088bc, 0x29f31ffd, 0x1b48aed1, 0xefe6e4c0, 0x404146cc
.word 0xc9d5143f, 0xbdea6762, 0xc3895f77, 0xa326b11c, 0xee9a546f, 0xee5bfe02, 0xaabde52f, 0xe890389f
.word 0xa5184f39, 0xfe7a5c4a, 0xf5f9de00, 0xbe7714be, 0x5aa34eca, 0x1de74070, 0x930bc89b, 0x0a04c1a7
.word 0x29c1e28b, 0xb7ea4891, 0x7ed339a6, 0x7c812411, 0x2c7ea691, 0x9f5bb13f, 0xfc9e182d, 0x361e79d0
.word 0x4b9145fa, 0x96bf90f8, 0x2af517de, 0x490bc682, 0x2a343709, 0x62302c69, 0xfd5b1091, 0xd34bf512
.word 0x98172509, 0x4f3d0c6d, 0x3f0838b3, 0x617b7594, 0x71c9a304, 0x3c1a15a6, 0x987bd895, 0x83f5a55e
.word 0x10a51678, 0x20a93a47, 0xdfbbd506, 0xacda4dec, 0xa2c31020, 0x6085accf, 0xc030a612, 0xf23c31c1
.word 0x27a7fc6b, 0xc3bba301, 0xce17e013, 0x4f284527, 0x404a4e90, 0xdf4751db, 0x86b91e44, 0x61a56e39
.word 0x16d6c336, 0x591306d9, 0xc6f4f282, 0x6e7c54e2, 0xe5fce0ca, 0x30d402cf, 0xe3ae830c, 0x15f4e6f2
.word 0x65a9614a, 0xaaf9ac58, 0xd55d85dc, 0x9e20732b, 0x5f446f77, 0xc2a3dd53, 0x23e3e11d, 0x8fcd7157
.word 0x5668a40e, 0xccef9184, 0xd3fe974a, 0xacd583ac, 0x52098a85, 0xea43a893, 0x379e3d51, 0x44c9bd4e
.word 0xb18cb8c5, 0xb60b993f, 0xd1a0c89d, 0xcc031977, 0x0f1c5241, 0x6ce5e627, 0xa50a95f3, 0xf3c59a6b
.word 0x1734d7f2, 0x9eb7d4f6, 0xa9d8fb38, 0xf8434b2d
.section .region_1,"aw",@progbits;
region_1:
.word 0x0fa8d384, 0x616426ab, 0x1e6cec95, 0x2eb0cb51, 0xc5bd1a2e, 0x6a510326, 0x4021e8d6, 0x700a64a7
.word 0xdbe4ce2c, 0x4cef857e, 0xa5b09618, 0x3ebfa1e2, 0xdcbff3dd, 0xe6173b1d, 0xf0798156, 0x8034f6ad
.word 0x8cb0feaa, 0xac3c9735, 0xe90df1b1, 0xf3349af5, 0x307bd2dc, 0x1b90079a, 0x98571e4f, 0x12550216
.word 0xf5900d13, 0x8ef029b4, 0xcf464fc2, 0x854a55e0, 0x3da0f87b, 0xed15ef85, 0x0a06aaac, 0xba264391
.word 0xc37f1201, 0x7173188d, 0x829a7736, 0x621d1233, 0x9f2108a8, 0xc32f902d, 0xf176c521, 0xd5799625
.word 0x8f8fd51b, 0xc17f78b3, 0x813abbed, 0x0dfb465f, 0xd99c9eac, 0xe9744ba5, 0x3a349a32, 0x577612c2
.word 0x235d9a25, 0x21fde4a1, 0x1fbf20bc, 0x1d6ee460, 0x1f41436f, 0x0aea20fb, 0xed6d13be, 0xc606bca7
.word 0x87f799db, 0x1cb7b45a, 0xce2e079f, 0x7401a4bd, 0x209ef8d2, 0xfa65e71a, 0x347920be, 0x1e157e47
.word 0x99fa887b, 0xcadd6df1, 0x8b9a6a7f, 0x501920ab, 0x9b5f9f12, 0x4304e7d3, 0x0fa9f222, 0x1e41c2e5
.word 0xc54df629, 0x1602c4c5, 0xbc074d9e, 0xbbabc330, 0x850c012d, 0xd5cbdb0b, 0x124ed58f, 0x165db53f
.word 0x9ee4b43f, 0x53d174f8, 0x992c238e, 0x74d9d0e7, 0xf3aebc48, 0x32bbf005, 0x202c4ef7, 0x9db18ed6
.word 0x33b1047e, 0xe89ca85f, 0x1a11d132, 0xd2e48d31, 0x855626bd, 0xf884ece5, 0x1c7a6fd2, 0xf4f50a2a
.word 0x06772c4e, 0xe98e808b, 0x811b4a75, 0x35d7cb46, 0xf92230b7, 0xd5e404e8, 0xe078689a, 0xfa590577
.word 0x2d6f90bb, 0x2e7c819e, 0xe2332dff, 0x74ce220e, 0x4389ab8e, 0x1179397f, 0xbba66583, 0xc8da3c86
.word 0x63692c5c, 0x800eea32, 0x53992b0b, 0x6b4825cb, 0x79c84832, 0x6ef47db9, 0x9ff626d6, 0xc9a85976
.word 0xa96ab48c, 0xa3d9724d, 0x89f4a527, 0x73e895cf, 0xd6e2aa0f, 0xe6a63fbb, 0xee6bcb3e, 0xf4e91ee9
.word 0xb346dd0d, 0x7a54644f, 0x48aaf467, 0xe6382e4e, 0xbfbc4807, 0x1edae623, 0x300688c0, 0xfc37f01b
.word 0x21e8beb4, 0x169e9325, 0x8bc0de07, 0x7e17dd4e, 0xa373e6bd, 0x5285f25d, 0x73dbb28d, 0xc5c41a2f
.word 0xdcac83fc, 0x6844dd9a, 0x07667909, 0x850cddc8, 0x5fb5a1b9, 0x70fe02dd, 0x293fff0c, 0x660975c5
.word 0xfb73b2d6, 0x26c45f4b, 0xa5b7f931, 0x75e89a77, 0x19b16d85, 0xb9989c40, 0x5aa00a81, 0x28712973
.word 0x52d99e40, 0xd1412ec0, 0x942ebd35, 0x50fd461b, 0x5e5dd94d, 0xb31a1136, 0xb96c90d2, 0x3c431b75
.word 0x46737727, 0xd8b8c298, 0x467bd7bd, 0x0b677662, 0xfa6a19eb, 0x67998586, 0x6ebc3628, 0x14b92132
.word 0xfab5db3c, 0xa0352f6e, 0x87e887a1, 0xc52ce5e8, 0xb8480843, 0x67fa8517, 0x648e465b, 0x23ed6d4d
.word 0xed8c9e57, 0xfba430a4, 0x0d13d4a3, 0xab8e1cb1, 0xba424d2c, 0xe8e328c0, 0xf76ec73f, 0x32abe210
.word 0x5a28d4ed, 0xd36fce37, 0x612037c7, 0x7b81cb3d, 0x3293bc0a, 0xf89676a6, 0x3f24cd35, 0xd628b417
.word 0xb1b02b29, 0x56be6a58, 0xd1f72950, 0x9b8b3afd, 0x0d3e6c67, 0x79cfb76f, 0x8913fc2d, 0xf19c0817
.word 0x31fda71b, 0xe0aadd0a, 0xb179915e, 0x5aff0ee6, 0xd0fd6805, 0xbd872fff, 0xa7d10aa7, 0x20d17751
.word 0x267d1a5b, 0x5c5b6c21, 0x36f06d93, 0xf1a9f22e, 0xc27ea507, 0x73575b81, 0x6270f70e, 0x49146ce7
.word 0x1a1a2d9f, 0x9607d9e2, 0xa2929682, 0x736ef5d3, 0xb7ffec8d, 0x77feb8b4, 0x6a546e7b, 0x014e1f62
.word 0xb736ca38, 0xa18470a6, 0xe8efa324, 0x0367c827, 0x19989e87, 0x549589ba, 0xd4ed2601, 0x4e59aa71
.word 0xd71f21a1, 0x07331203, 0x23f883c9, 0x87d920ad, 0xe62e0810, 0x9eb2aded, 0xc147aadf, 0x9eed716e
.word 0x8f3a39f9, 0x9db06869, 0x0028cc24, 0x6aedc73f, 0x03e8b607, 0xfeb89e56, 0x8d81918d, 0x1f8a94d0
.word 0x30d18475, 0x92637991, 0xd01cb174, 0x2de88802, 0xee688d90, 0x2c9254d4, 0x0586c28b, 0x00d4bec8
.word 0x873a18dc, 0x3bf1310c, 0x4d8d954c, 0x1b685b65, 0x722b72b4, 0x0b659bea, 0x5f8f05ef, 0x20d3ec9a
.word 0x2e338932, 0x0030c189, 0x2ecff41a, 0xe091fec4, 0x634398e8, 0x084585a9, 0x9f54bb35, 0xb4541462
.word 0x2a588f96, 0xdeddfa10, 0x7f3718d7, 0xd9c1fee3, 0x55724e82, 0xa3fa2f8c, 0x953cefc5, 0xd35758c0
.word 0xc315605a, 0x91713e1a, 0x51918839, 0x895a8673, 0x22ef3344, 0x69e375db, 0xed62019f, 0x96b1450a
.word 0x4d634a73, 0x838a335b, 0x8575162e, 0xfadd96dc, 0x8ee16ee8, 0x14b5cedd, 0xa2f83edf, 0xaa1a7545
.word 0x72e899cb, 0x680215c8, 0x3a2d9855, 0x7058cef6, 0xb625a987, 0x1616734d, 0x9dc4330b, 0x3f008d80
.word 0x0d9f10bb, 0x0a4a9c5a, 0xbbb6db3d, 0x6e2608a7, 0x832aa6a1, 0xe460e14e, 0x8d046485, 0x71f8fbfd
.word 0x395f3526, 0xbf480cd2, 0x68f67a29, 0x1cadaa34, 0x837b667f, 0xef307657, 0x11417e5f, 0xbd5730bf
.word 0x6cbac8df, 0x4b8862f1, 0x5fbb0217, 0x34687bf7, 0x70f2e961, 0x6dcd1fce, 0x446ec192, 0x4f05d0eb
.word 0x2035953e, 0x0ff0a9aa, 0x1954a920, 0x8b782f45, 0x7516cf6c, 0x02b8872b, 0x9f7e4b62, 0xa34a1895
.word 0xc483d26a, 0x2ec0bc73, 0x4fc81fc9, 0xcc1a629e, 0x4ed319a2, 0x8c008c0f, 0xac2c48e3, 0xe4e3e3b1
.word 0x821b04d9, 0xd216a542, 0x7d8fe111, 0x099d9fa2, 0x0e9a1606, 0x88f31b3a, 0xf8e59e40, 0x3f32813b
.word 0x37da5950, 0xacb12b6a, 0xd182cb16, 0x3c90560d, 0xf9fdfa20, 0xdbfcb2c8, 0x36fb05cc, 0x4da5ad42
.word 0x996997b4, 0x9fb13c73, 0x462a7f67, 0x3065c08f, 0x8f28aba6, 0x6a05ca2e, 0xeef8e2e3, 0x6c4ac593
.word 0x4068a42d, 0x7ae8a525, 0x74754b80, 0x99a013de, 0xecfc0db8, 0x94c1d2e2, 0x13e9d564, 0x98fbfc1f
.word 0x52ceddcd, 0xb1922479, 0x17e533c8, 0xd7fe282d, 0x0cf3177e, 0x8bed4399, 0x65579d38, 0xba9d86b1
.word 0x5649be14, 0x8c316e9f, 0x05880778, 0x16040630, 0xf8db8b24, 0x4c47d0bd, 0xd009fbde, 0xe19f5a99
.word 0x66898f1e, 0x45d5529c, 0x67d1bee7, 0xc3bfa8cf, 0x715c6514, 0xca3ef499, 0x8e42a667, 0x08524392
.word 0x027c28b3, 0xc8469ed9, 0x1112772d, 0xfb0ea544, 0x808aa53f, 0x1947eb4e, 0x19000599, 0x3a318ce7
.word 0x0599b190, 0x771f4595, 0xecbf05ad, 0x451afcfe, 0xb26a3412, 0xd6399d47, 0x62897a0a, 0x82a6a28b
.word 0xb0c6df80, 0x4eb2e517, 0x25cf219e, 0x17db070f, 0xf81d092c, 0x5c7415c3, 0x912ee7ac, 0xead09bd4
.word 0x541788ba, 0x99438a46, 0xcff645a0, 0x73112818, 0x218ab142, 0x742816d9, 0x76a46dda, 0xa6a241c7
.word 0x52a1923b, 0x95536729, 0x24372dea, 0x147ca197, 0xbc802973, 0xfdfffce8, 0x6ad1d12f, 0x699bc137
.word 0xc6039559, 0x949749b8, 0x2073897c, 0xb09b9a55, 0xf8d199b1, 0xdba45ef1, 0x3a239bc8, 0xe53a840f
.word 0xb8a5bc0e, 0x9daeb1d5, 0xc7b3217d, 0xfa57cb99, 0x068d9154, 0xc0e2f517, 0xf193b9bc, 0x9e1790d4
.word 0xc14c638e, 0xdf40c801, 0x078e29b3, 0x60d30766, 0xdfc3e19c, 0xc434cae9, 0x33a14f72, 0xc98eeb50
.word 0x225f251c, 0xd6b43ee4, 0x9a2124ef, 0x5da7c111, 0xd60645d6, 0x83939c21, 0x922adc81, 0x73d0bcfa
.word 0x70f2f1cb, 0x223bf28c, 0x48fee9c3, 0x8a0798aa, 0xa0270dea, 0xdc9b9b27, 0x7a692ebb, 0x42726b21
.word 0xc6216dfb, 0x86880269, 0x005ca0e6, 0xca5ccc5b, 0x4a4ea9b2, 0xf11ecc9e, 0xb8e976ac, 0x62c5c89e
.word 0x1f7b8804, 0x714516ac, 0xa53f2335, 0x1f16c641
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x23, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x23, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x23, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x23, x13, ecall_handler
                  li x13, 0x1
                  beq x23, x13, instr_fault_handler
                  li x13, 0x5
                  beq x23, x13, load_fault_handler
                  li x13, 0x7
                  beq x23, x13, store_fault_handler
                  li x13, 0xc
                  beq x23, x13, pt_fault_handler
                  li x13, 0xd
                  beq x23, x13, pt_fault_handler
                  li x13, 0xf
                  beq x23, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
