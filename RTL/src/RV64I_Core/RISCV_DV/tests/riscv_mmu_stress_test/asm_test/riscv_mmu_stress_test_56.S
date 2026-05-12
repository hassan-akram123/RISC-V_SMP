.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 1
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xf14ef4d4
                  li x1, 0xe
                  li x2, 0xb
                  li x3, 0xd
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x8, 0x9
                  li x9, 0xd
                  li x10, 0xe
                  li x11, 0x0
                  li x13, 0x80000000
                  li x14, 0xafd728a2
                  li x15, 0xe
                  li x16, 0x80000000
                  li x17, 0x8
                  li x18, 0x0
                  li x19, 0x82760385
                  li x20, 0x6
                  li x21, 0x80000000
                  li x22, 0xfbf12d27
                  li x23, 0x28a1e67c
                  li x24, 0xf9f96261
                  li x25, 0x5
                  li x26, 0x80000000
                  li x27, 0x4b993300
                  li x28, 0xd2ed262c
                  li x29, 0x0
                  li x30, 0x45ddccce
                  li x31, 0x80000000
                  la x12, user_stack_end
main:             la           a6, region_0+1296 #start riscv_load_store_hazard_instr_stream_2
                  sb           t4, 378(a6)
                  or           tp, gp, t0
                  xori         a5, t2, -1423
                  sb           t5, 378(a6)
                  lb           a0, 378(a6)
                  sh           sp, 378(a6)
                  lb           s8, 378(a6)
                  lhu          a4, 378(a6)
                  lh           sp, 378(a6)
                  xor          t6, t6, ra
                  and          t0, a0, t1
                  sub          a0, s7, a6
                  lbu          t3, 378(a6)
                  lh           s4, 378(a6)
                  lh           gp, 378(a6)
                  sb           s6, -54(a6)
                  lb           a0, -54(a6)
                  slt          ra, t4, gp
                  lbu          t0, -287(a6)
                  sb           a6, -287(a6)
                  lbu          a1, -287(a6)
                  lb           s7, -287(a6)
                  lb           a7, -287(a6) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1639 #start riscv_load_store_rand_instr_stream_1
                  or           gp, t0, s7
                  or           s11, s1, t3
                  and          s0, s10, s5
                  sll          s4, a6, ra
                  srai         s8, ra, 27
                  addi         t4, s10, 1986
                  sb           t3, 52(sp)
                  addi         a1, s9, -822
                  slt          t3, a0, a4
                  lb           a5, 170(sp)
                  xor          a4, s4, s2
                  sll          s1, a1, s4
                  and          s8, s6, a2
                  lbu          t1, 195(sp)
                  lw           s7, -79(sp)
                  sb           t1, -236(sp)
                  sb           s11, 209(sp)
                  sh           t6, -69(sp)
                  or           t1, s10, ra
                  sll          a3, a2, a5
                  lbu          a6, -247(sp)
                  xor          s4, a1, t3
                  lui          zero, 215156
                  nop
                  sltu         zero, a3, s3
                  ori          s3, s11, -114
                  lbu          a3, 231(sp)
                  or           t4, ra, s7
                  auipc        a3, 835181
                  sll          t0, a7, tp
                  srli         s0, t4, 20
                  auipc        a6, 353931
                  andi         s10, s10, 39
                  and          a4, s1, s0
                  or           ra, s2, t4
                  lh           a4, -127(sp) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_1+1425 #start load_store_instr_stream_1
                  la           s4, region_1+1042 #start load_store_instr_stream_0
                  lb           s8, -24(s4)
                  lhu          zero, 54(s4)
                  lw           s1, 14(s4)
                  lhu          s7, -157(gp)
                  sb           a5, 146(gp)
                  lbu          a5, 38(gp)
                  lbu          s6, 246(gp)
                  lb           s0, -217(gp)
                  lbu          s3, -25(s4)
                  lbu          sp, 204(gp)
                  lbu          t1, 110(gp)
                  sb           gp, -214(gp)
                  lb           zero, -30(s4)
                  sb           s3, 197(gp) #end load_store_instr_stream_1
                  sb           s9, -29(s4) #end load_store_instr_stream_0
                  la           t6, region_0+905 #start riscv_load_store_rand_instr_stream_3
                  srai         s8, s0, 16
                  sb           gp, 52(t6)
                  andi         s8, s3, 1045
                  lb           a1, 51(t6)
                  lh           t1, -37(t6)
                  add          s8, a1, s10
                  lbu          s6, 202(t6)
                  xor          a4, s7, a0
                  sb           zero, 228(t6)
                  srl          t0, a7, a1
                  or           t4, ra, tp
                  sub          s1, ra, a0
                  lhu          s3, -11(t6)
                  lb           a3, -192(t6)
                  lbu          t5, -161(t6)
                  lui          s0, 943090
                  lb           s6, 169(t6)
                  lh           t0, -179(t6)
                  lhu          s10, 45(t6)
                  lbu          a4, -228(t6)
                  lb           a4, 213(t6)
                  sb           s2, -56(t6)
                  xor          gp, a2, a2
                  lb           s3, 129(t6)
                  auipc        s7, 193859
                  lb           a4, -196(t6)
                  lb           t4, 178(t6)
                  lb           s10, 252(t6)
                  lui          t3, 986215
                  lhu          a7, -199(t6)
                  sltu         s8, s1, s2
                  srli         s5, sp, 11
                  sb           s3, -44(t6)
                  nop
                  lh           s2, -11(t6)
                  lb           t5, -106(t6)
                  and          s3, s10, s5
                  and          a1, a6, t4
                  lb           t3, 220(t6)
                  lui          a7, 951826
                  lbu          a1, -126(t6)
                  slti         s11, t2, -672
                  ori          a1, s8, -826
                  sra          a0, sp, t2
                  ori          s7, t5, 1122
                  lb           s7, -244(t6)
                  sll          t3, a4, s9
                  xori         a4, t2, 554
                  lbu          a1, -247(t6) #end riscv_load_store_rand_instr_stream_3
                  la           gp, region_0+556 #start riscv_load_store_hazard_instr_stream_0
                  sb           zero, -10(gp)
                  sub          t3, tp, a3
                  xori         t6, s1, 1658
                  sb           a2, 6(gp)
                  sb           gp, 6(gp)
                  sh           t1, 6(gp)
                  lbu          s5, 6(gp)
                  lh           t3, 6(gp)
                  slt          s5, t6, t1
                  lhu          s10, 6(gp)
                  sltiu        s6, s5, 353
                  sb           ra, 6(gp)
                  sb           t6, 6(gp)
                  sb           zero, 1(gp)
                  lbu          a1, 3(gp)
                  lb           t0, 3(gp)
                  lb           s8, 3(gp)
                  sb           s0, 3(gp)
                  sb           t5, 3(gp)
                  sb           sp, 3(gp)
                  lbu          a3, 3(gp)
                  sb           s8, 25(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_1+1709 #start load_store_instr_stream_3
                  la           a4, region_1+39 #start load_store_instr_stream_0
                  la           s0, region_1+1252 #start load_store_instr_stream_2
                  la           s8, region_1+1806 #start load_store_instr_stream_1
                  sb           s10, 55(s0)
                  lbu          s2, 4(s3)
                  lb           gp, -14(a4)
                  sh           sp, -42(s0)
                  lw           s1, -9(s3)
                  sb           s4, 29(s0)
                  lb           t4, -114(s8)
                  sb           t4, -4(s3)
                  lh           s10, -82(s8)
                  lhu          t5, 9(s3)
                  lb           a1, -59(s8)
                  sw           s3, 66(s8)
                  lh           zero, -72(s8)
                  sw           s7, -36(s0)
                  lbu          t1, 48(a4)
                  lhu          a5, -50(s0)
                  lb           t1, -65(s8) #end load_store_instr_stream_1
                  lb           sp, -1(s3)
                  lbu          a3, 29(s0)
                  sb           t6, 56(a4)
                  lw           s2, 16(s0) #end load_store_instr_stream_2
                  lbu          t0, -14(s3) #end load_store_instr_stream_3
                  lbu          a1, 30(a4)
                  lb           t1, 10(a4) #end load_store_instr_stream_0
                  la           t1, region_1+1365 #start riscv_load_store_hazard_instr_stream_3
                  sb           t2, 8(t1)
                  sb           s9, 8(t1)
                  slt          sp, s5, a5
                  ori          gp, s3, -1423
                  lb           a5, -23(t1)
                  andi         a6, t4, -572
                  lhu          a7, -23(t1)
                  lbu          s8, 16(t1)
                  auipc        t0, 653253
                  sb           s5, -54(t1)
                  lbu          gp, 34(t1)
                  sb           zero, 34(t1)
                  lbu          s5, 34(t1)
                  lbu          s3, 34(t1)
                  slt          s1, a4, t6
                  lb           t5, 34(t1)
                  sb           s10, 34(t1)
                  xori         gp, t2, 874
                  lbu          a4, 61(t1)
                  lb           zero, 10(t1)
                  sb           s0, 10(t1)
                  lb           s5, 10(t1)
                  sb           s4, 10(t1) #end riscv_load_store_hazard_instr_stream_3
                  la           s1, region_1+1473 #start riscv_load_store_hazard_instr_stream_1
                  lb           a3, -158(s1)
                  sw           zero, 111(s1)
                  and          s2, a6, a1
                  sltu         s4, t0, tp
                  nop
                  sh           gp, 111(s1)
                  addi         t0, tp, 1642
                  sb           s8, 111(s1)
                  sw           s2, 111(s1)
                  lbu          s3, -101(s1)
                  add          t6, gp, s8
                  sw           t5, -101(s1)
                  sw           a4, -101(s1)
                  sh           zero, -101(s1)
                  sb           s10, 213(s1)
                  slti         t6, t4, 288
                  lh           zero, 213(s1)
                  lb           a1, 213(s1)
                  sb           s10, 213(s1)
                  lbu          t4, 213(s1)
                  slli         t3, s8, 3
                  lh           tp, 213(s1) #end riscv_load_store_hazard_instr_stream_1
                  la           t3, region_1+1600 #start riscv_load_store_rand_instr_stream_0
                  lui          s8, 350318
                  sb           t0, -7(t3)
                  lb           s4, 4(t3)
                  lh           a7, -14(t3)
                  lb           s1, 6(t3)
                  sb           s7, -15(t3)
                  lw           gp, -8(t3)
                  and          s11, s4, t0
                  lb           s7, -7(t3)
                  ori          s10, s6, -2031
                  lbu          a5, 1(t3)
                  lbu          s4, 5(t3)
                  sll          gp, gp, t4
                  nop
                  add          a3, s3, s9
                  lb           t4, 11(t3)
                  lhu          s8, -14(t3)
                  lbu          s2, 5(t3)
                  sltiu        a3, s8, 418
                  slt          sp, ra, a4
                  srli         t4, s8, 1
                  sltu         s0, t1, s3
                  lbu          a0, 4(t3)
                  lbu          zero, 10(t3)
                  sll          a7, zero, ra
                  lb           a7, 2(t3)
                  slt          s8, a1, tp
                  lhu          s2, -14(t3)
                  lui          a5, 483765
                  lw           s0, 16(t3)
                  sb           ra, 7(t3)
                  srai         a3, s5, 18
                  lbu          s6, -3(t3)
                  slti         s2, tp, 1969
                  sh           s11, 2(t3) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+1608 #start load_store_instr_stream_2
                  la           t1, region_1+1979 #start load_store_instr_stream_0
                  lh           ra, -891(t1)
                  lbu          zero, -1133(t1)
                  sb           t1, -51(t5)
                  la           a0, region_1+1358 #start load_store_instr_stream_3
                  la           s1, region_1+398 #start load_store_instr_stream_1
                  lbu          s4, 33(a0)
                  sb           s10, -1220(t1)
                  sw           gp, -40(t5)
                  sb           t0, -19(s1)
                  lbu          t4, 4(a0)
                  lbu          t6, -1857(t1)
                  lhu          a7, 42(t5)
                  sb           t6, -575(t1)
                  lbu          s4, -1704(t1)
                  lbu          zero, -19(s1)
                  sb           a6, 0(s1)
                  lbu          s10, -1367(t1)
                  lbu          t3, 10(t5)
                  sh           t0, 56(s1)
                  lbu          s7, -40(a0)
                  lb           a4, 12(t5) #end load_store_instr_stream_2
                  sb           s9, 20(s1) #end load_store_instr_stream_1
                  sb           s5, -23(a0)
                  lbu          ra, -39(a0) #end load_store_instr_stream_3
                  lbu          ra, -1416(t1)
                  lbu          t4, -1202(t1) #end load_store_instr_stream_0
                  la           sp, region_0+1552 #start riscv_load_store_rand_instr_stream_2
                  lbu          t6, 299(sp)
                  sh           s8, -78(sp)
                  addi         a0, t6, 378
                  sb           t0, 51(sp)
                  lbu          t4, -1367(sp)
                  lb           s7, -1397(sp)
                  sb           t4, -981(sp)
                  sltiu        a1, t5, -866
                  lui          s10, 440226
                  lh           s0, -112(sp)
                  lbu          t0, 305(sp)
                  srli         gp, sp, 15
                  lbu          s8, -609(sp)
                  sb           gp, -1408(sp)
                  srai         ra, a4, 4
                  lbu          ra, 299(sp)
                  lbu          a3, 77(sp)
                  nop
                  lbu          a5, -1199(sp)
                  lhu          tp, -758(sp)
                  slti         t1, gp, 1631
                  sb           a6, -1345(sp)
                  xori         s8, a7, -2037
                  sltu         a6, s6, s4
                  lhu          t4, -1036(sp)
                  lb           t4, -1490(sp)
                  sub          s7, s0, a1
                  addi         a6, a0, 587
                  lbu          a5, -1441(sp)
                  sb           s5, -97(sp)
                  lw           a4, 144(sp)
                  sll          s3, t3, a6
                  lb           a4, -476(sp)
                  lb           a1, -36(sp)
                  lh           t4, 272(sp)
                  lb           gp, -1379(sp) #end riscv_load_store_rand_instr_stream_2
                  lui          sp, 406882
                  beq          s8, a1, 19f
                  xor          gp, a7, s7
                  bge          s9, a2, 18f
                  bne          a1, gp, 11f
                  sub          s6, t6, a4
                  srai         s7, t2, 23
                  sll          s11, a3, a2
                  and          s8, s2, s4
                  andi         s6, s4, -172
                  bgeu         s1, s7, 14f
11:               bge          s10, a6, 30f
                  sltu         s11, t6, a6
                  bltu         a2, s8, 23f
14:               bgeu         a5, a1, 19f
                  andi         s7, a1, 21
                  ori          t0, s10, -839
                  add          zero, s0, t4
18:               srli         a3, s9, 25
19:               slt          a1, t3, a5
                  blt          zero, t4, 21f
21:               add          t0, t0, a1
                  sra          s6, s4, a6
23:               slti         t5, gp, 1722
                  srl          s1, s3, tp
                  sra          gp, a6, s1
                  beq          a7, t0, 43f
                  slti         s4, gp, 169
                  addi         s7, t1, 530
                  or           gp, t0, a5
30:               addi         s0, s5, 1358
                  sll          zero, s6, s11
                  bgeu         a0, a1, 41f
                  slli         ra, ra, 22
                  sltiu        gp, t0, -62
                  add          t4, t3, sp
                  sub          t1, a6, t4
                  srl          t3, s10, a3
                  andi         s8, s4, 462
                  srli         t4, t3, 24
                  and          s8, sp, s11
41:               slti         s6, sp, 1020
                  nop
43:               srai         s5, s6, 20
                  srli         a1, s4, 19
                  srl          t3, a5, sp
                  bne          sp, s0, 59f
                  bne          a5, s5, 67f
                  sub          a3, t2, t0
                  sub          zero, t3, zero
                  lui          s5, 721636
                  blt          a5, a1, 69f
                  bgeu         ra, t6, 53f
53:               add          s6, s1, s6
                  srli         t4, a2, 12
                  addi         s4, s2, -487
                  slt          s10, a2, s4
                  slt          s3, a3, s5
                  sll          s8, s0, s5
59:               and          t0, s9, sp
                  and          s11, s0, zero
                  sltiu        t1, s3, -204
                  or           t1, s9, s7
                  slti         s10, a7, -957
                  sltiu        s4, t4, -676
                  sltiu        s10, t4, 1690
                  lui          s7, 850050
67:               ori          a1, t6, 1913
                  srai         a4, ra, 11
69:               sub          ra, t4, a5
                  sll          t0, s9, s6
                  sll          a4, t0, t2
                  srli         s11, ra, 4
                  sltu         s3, a4, ra
                  sra          t5, s3, t3
                  bltu         a7, s4, 90f
                  sltu         s5, s8, t0
                  srli         t4, t2, 10
                  xori         s4, s9, 2035
                  bgeu         s7, a4, 88f
                  xori         t4, a7, 1617
                  andi         s1, tp, -1183
                  sra          s4, s3, gp
                  slti         zero, t6, -2040
                  la           s5, sub_2
                  andi         s10, s3, -337
                  add          t1, t1, t5
                  addi         s5, s5, -317
                  beq          gp, a4, main_j2 #branch to jump instr
                  ori          s8, t4, -1644
                  sub          a3, t3, t6
                  sll          a7, t1, a3
                  or           s4, s10, a2
main_j2:          jalr         ra, s5, 318 #jump main -> sub_2
                  srai         ra, t5, 31
                  and          t5, s1, s3
                  bge          a7, a7, 88f
                  bne          s0, a2, 89f
88:               sll          zero, s5, s1
89:               and          s5, s6, a1
90:               slt          t4, sp, t3
                  slti         s6, zero, 385
                  sltu         a3, s2, t0
                  beq          a7, a7, 111f
                  xor          t1, s1, s1
                  ori          s5, s8, 615
                  andi         a6, s2, -636
                  bge          a0, s1, 98f
98:               slti         gp, a1, -1617
                  bne          s4, a4, 103f
                  bge          a0, s5, 107f
                  or           t6, a6, a4
                  bltu         zero, sp, 104f
103:              slti         s4, s3, 288
104:              sub          s8, s9, t2
                  blt          gp, a6, 114f
                  auipc        s8, 1266
107:              sltiu        s3, t5, 1825
                  srl          ra, a5, gp
                  andi         s4, a6, 646
                  xor          t0, s5, t1
111:              addi         a1, t5, 1215
                  srli         a6, a3, 12
                  sra          a0, s11, s9
114:              and          s0, sp, sp
                  bltu         t4, t0, 119f
                  slli         tp, a3, 17
                  bge          a7, gp, 132f
                  andi         t1, t1, 1940
119:              lui          s5, 735421
                  srai         ra, a6, 20
                  xor          s10, a1, ra
                  ori          a5, s6, 14
                  blt          s11, a3, 128f
                  bge          s2, a5, 134f
                  sra          s2, a3, s7
                  bne          a7, s1, 137f
                  sll          a6, a2, t5
128:              xori         s10, sp, 1292
                  and          t1, a7, a7
                  ori          s10, t1, -1064
                  or           t0, a7, t5
132:              and          sp, t6, t4
                  beq          s6, t5, 141f
134:              srai         tp, s9, 11
                  sub          a1, a6, ra
                  sltu         t6, t2, s2
137:              slti         s1, a5, 910
                  nop
                  ori          s11, t3, 233
                  xor          s5, sp, a0
141:              sub          t6, s11, a6
                  nop
                  sltu         a0, a2, s0
                  sub          t0, a2, t0
                  ori          t1, s0, 1104
                  bne          a3, s6, 148f
                  sltu         s10, t6, s3
148:              srl          s11, t0, s10
                  andi         t4, ra, 500
                  slli         s11, s6, 11
                  sub          t3, s9, s2
                  ori          a0, t2, 160
                  add          s2, a5, s4
                  sltiu        t4, t1, 1480
                  slli         ra, gp, 4
                  ori          a3, a4, 154
                  sub          a7, s2, a0
                  auipc        s11, 357054
                  sltu         s2, s3, s8
                  and          s2, s7, s0
                  add          sp, s2, s4
                  sltu         s4, t0, t1
                  addi         s8, t2, 1922
                  lui          s4, 719846
                  ori          t5, t4, 567
                  slli         s0, t2, 20
                  bne          t5, tp, 182f
                  beq          ra, s3, 183f
                  bne          sp, t6, 180f
                  sub          t4, a0, t1
                  xor          a0, s0, s6
                  slt          s8, s5, tp
                  srai         ra, t0, 28
                  and          a3, gp, a0
                  or           t6, t5, zero
                  slt          t6, s9, s4
                  bne          t3, t0, 194f
                  bge          gp, t2, 187f
                  beq          s0, s10, 188f
180:              slli         s1, s7, 26
                  lui          t4, 176975
182:              srli         a4, s11, 25
183:              bgeu         s4, a7, 203f
                  slli         s10, a3, 12
                  andi         s0, a1, 62
                  slli         s5, s4, 27
187:              lui          a3, 779408
188:              nop
                  srl          gp, s6, a5
                  xori         a0, a4, -1414
                  andi         s3, s0, 1
                  slt          s7, a5, t6
                  add          s4, a2, s5
194:              slti         t1, t2, 275
                  xor          sp, a7, t2
                  bgeu         a3, s8, 206f
                  srl          zero, s0, ra
                  sll          a5, s8, s2
                  nop
                  slt          tp, s1, a7
                  ori          t3, s1, -619
                  and          ra, t5, s2
203:              srai         ra, a0, 17
                  nop
                  srli         zero, ra, 0
206:              nop
                  bge          s2, a1, 212f
                  bne          s3, s4, 209f
209:              add          s3, s2, t4
                  blt          a5, s6, 228f
                  or           s1, t2, ra
212:              ori          a5, a1, 321
                  sltiu        t3, gp, -827
                  srli         t3, ra, 31
                  srl          zero, a6, s7
                  andi         a7, t1, -450
                  srl          a6, a6, a0
                  srl          zero, s7, s7
                  lui          ra, 611632
                  xor          a5, a6, tp
                  slti         tp, sp, -1620
                  slt          a3, a1, t6
                  srli         a6, s1, 2
                  andi         t0, s7, -635
                  addi         a4, s3, -1180
                  srai         s10, s3, 10
                  blt          s11, gp, 231f
228:              xori         a5, t6, -1442
                  add          t5, a5, a2
                  slli         s0, s2, 4
231:              sltiu        t4, sp, -793
                  nop
                  or           s10, ra, gp
                  slt          s6, t2, s0
                  beq          s6, s4, 237f
                  beq          t3, s5, 249f
237:              bne          t6, t5, 246f
                  ori          s2, s1, -71
                  bgeu         t1, a4, 247f
                  sltu         s0, s10, t0
                  slt          t6, a3, s4
                  bgeu         t5, a1, 243f
243:              bgeu         s5, a7, 247f
                  xori         s2, s5, -1710
                  slt          t5, zero, a6
246:              or           s2, a5, a6
247:              slli         t1, s6, 5
                  xor          a3, a6, a7
249:              xor          s3, a6, s4
                  and          a0, s7, t0
                  beq          s11, a3, 270f
                  xori         t6, s0, 1276
                  sra          sp, t4, s11
                  sltu         t3, a3, t1
                  or           s1, s9, t2
                  sub          a5, a3, a3
                  slt          s5, s9, s0
                  slti         t6, s7, 1833
                  srl          s4, t2, tp
                  srli         s4, sp, 27
                  add          s11, t1, a6
                  auipc        s11, 934793
                  sltu         zero, t3, a3
                  sub          a0, t4, t5
                  auipc        tp, 1247
                  add          a6, t3, s6
                  or           a7, zero, t4
                  add          t0, s7, t0
                  nop
270:              sltiu        s6, s9, 973
                  xor          s6, t6, t1
                  bltu         s5, s9, 279f
                  slli         t0, s6, 8
                  slt          s6, s0, s10
                  srai         a1, s4, 15
                  auipc        s4, 212977
                  or           s7, t6, tp
                  sltiu        t6, a7, -1439
279:              bge          s1, sp, 286f
                  srli         t0, a6, 12
                  nop
                  slli         tp, zero, 1
                  add          s6, ra, sp
                  sub          t5, a4, s1
                  andi         t4, t6, 1903
286:              sra          gp, a3, a1
                  beq          s6, s11, 305f
                  bltu         a6, ra, 298f
                  srli         s8, s3, 10
                  andi         s5, ra, 1894
                  xori         zero, s1, -929
                  and          s7, s6, t2
                  blt          s3, t2, 298f
                  slti         a5, s3, 650
                  bne          a5, s4, 310f
                  andi         t1, a7, -210
                  xor          s4, tp, t4
298:              bne          t1, s4, 300f
                  lui          tp, 942950
300:              beq          s4, a3, 304f
                  bltu         s7, sp, 319f
                  sll          a3, t0, t4
                  bge          a5, tp, 304f
304:              sll          gp, s1, zero
305:              slti         s6, t0, -215
                  srli         s2, s1, 30
                  andi         a1, a3, 1152
                  slti         a1, t4, -269
                  xori         s3, t1, 833
310:              xor          s2, s4, a0
                  slt          s1, tp, t1
                  sltu         s3, s3, s6
                  and          s4, t1, t2
                  ori          tp, s8, 444
                  sltu         a1, a0, a1
                  srl          t0, t2, a3
                  andi         s4, zero, -38
                  sll          s7, s0, t3
319:              blt          t3, s5, 328f
                  sub          s6, s3, a0
                  xori         s0, a3, 536
                  sra          gp, s4, sp
                  xori         s1, s7, -1252
                  xori         a5, t2, -228
                  or           ra, t5, zero
                  and          s3, s2, s11
                  slt          t3, gp, a5
328:              and          s1, s6, t6
                  slli         s11, a3, 9
                  ori          t3, a0, 1256
                  ori          a0, gp, 823
                  srai         s10, s2, 11
                  srai         s4, s1, 22
                  bne          t5, a4, 336f
                  bgeu         s7, t3, 339f
336:              and          sp, s7, s8
                  bltu         t5, s5, 355f
                  auipc        s1, 122167
339:              or           t4, t1, t2
                  sll          s3, a3, a3
                  or           s2, s3, a3
                  xor          s8, t2, a3
                  sra          a7, s10, gp
                  xori         gp, t1, -634
                  sltu         s0, s3, s5
                  add          a7, t6, t3
                  beq          s7, zero, 362f
                  xor          sp, s8, sp
                  sltiu        tp, a3, 1226
                  andi         s7, ra, 798
                  bgeu         s10, t4, 360f
                  bne          t0, gp, 353f
353:              bne          s11, t5, 368f
                  sll          a0, t0, a5
355:              bne          gp, tp, 357f
                  nop
357:              bge          s2, a1, 368f
                  xor          gp, a1, tp
                  ori          s5, s2, 1249
360:              bge          gp, s7, 369f
                  bltu         t0, t1, 362f
362:              srli         gp, zero, 3
                  sub          a1, t1, t4
                  xori         ra, s6, -911
                  bne          tp, t4, 385f
                  xor          t5, a1, s6
                  lui          s4, 954049
368:              or           zero, t4, t6
369:              srai         s2, a6, 9
                  srai         a5, t3, 20
                  ori          a4, s5, -930
                  auipc        s11, 181500
                  sub          s7, a3, s11
                  sll          a1, s7, a3
                  slt          t3, t3, sp
                  add          s6, s9, a1
                  ori          s4, t1, 944
                  or           s6, t4, ra
                  srai         s0, s8, 2
                  slti         s7, s1, 1124
                  auipc        t0, 982677
                  ori          t3, tp, 228
                  la           t4, region_1+802 #start load_store_instr_stream_2
                  lbu          t3, 384(t4)
                  la           s11, region_1+1693 #start load_store_instr_stream_3
                  la           s3, region_1+1642 #start load_store_instr_stream_1
                  lb           a6, 816(t4)
                  lbu          s10, -1489(s11)
                  sb           a5, 14(s3)
                  lb           t1, -248(s11)
                  la           ra, region_1+736 #start load_store_instr_stream_0
                  lbu          sp, -779(t4)
                  lbu          t3, 10(s3)
                  lb           s4, 7(ra)
                  lbu          t1, 544(t4)
                  sw           a6, -1101(s11)
                  lb           t0, -3(ra)
                  lh           t5, -8(s3)
                  lbu          tp, -2(s3)
                  lb           gp, -1(s3)
                  sb           s6, -13(ra)
                  lbu          a4, -1668(s11)
                  lhu          t5, 358(t4)
                  lhu          s0, 1124(t4) #end load_store_instr_stream_2
                  sb           sp, 13(s3)
                  lh           a4, -1333(s11) #end load_store_instr_stream_3
                  lh           s2, -8(s3) #end load_store_instr_stream_1
                  lb           t6, 13(ra)
                  lbu          gp, 3(ra) #end load_store_instr_stream_0
                  or           s1, zero, zero
                  or           s6, zero, s5
385:              xor          a0, s5, s7
                  la           a7, sub_1
                  add          gp, a1, a0
                  slli         s4, s6, 5
                  sltu         a6, ra, a6
                  sll          s7, a3, a3
                  and          a3, s4, s8
                  addi         a7, a7, -308
                  slt          s0, t5, a2
                  bltu         t4, a4, main_j1 #branch to jump instr
                  slt          s0, s11, s7
main_j1:          jalr         ra, a7, 309 #jump main -> sub_1
                  bge          a5, t6, 393f
                  slt          a0, gp, s5
                  auipc        s6, 551919
                  beq          ra, t4, 391f
                  andi         s1, t0, 1532
391:              bltu         t3, t5, 401f
                  ori          s5, a6, 317
393:              or           a1, t4, sp
                  and          a7, a5, a6
                  and          a7, s0, tp
                  auipc        ra, 1045082
                  and          a0, s11, a1
                  srl          t1, a4, a0
                  sub          s2, a3, gp
                  andi         a7, a4, 532
401:              bge          t1, s2, 405f
                  slt          a7, s9, gp
                  sub          ra, s1, t5
                  and          gp, a5, s7
405:              addi         s10, t2, -2035
                  sra          a5, a4, a3
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         a2, a2, -8
                  nop
                  sltu         s11, t2, s5
                  slli         a0, a0, 22
                  sltiu        a3, s8, 464
                  sw           ra, 4(a2)
                  auipc        s2, 280703
                  la           sp, region_0+1401 #start riscv_load_store_rand_instr_stream_0
                  lui          s1, 244607
                  sb           s0, 246(sp)
                  srai         t0, tp, 10
                  lh           t5, -1(sp)
                  xor          a4, s5, s6
                  and          a1, s2, s7
                  addi         a6, sp, 1731
                  sb           s11, 126(sp)
                  or           s7, t4, s6
                  lh           a0, -59(sp)
                  sb           a7, 41(sp)
                  lbu          s6, -63(sp)
                  lbu          s3, -110(sp)
                  sh           s7, -87(sp)
                  lhu          t0, -39(sp)
                  add          t4, a0, s10
                  lui          s5, 604996
                  slti         s6, s4, 1841
                  sb           a0, 190(sp)
                  slt          a0, a0, s0
                  lbu          s10, 138(sp)
                  ori          s6, t6, -1662
                  slti         t1, sp, 754
                  lb           a4, -81(sp)
                  sub          t0, t1, gp
                  srli         s8, s1, 3
                  sb           a5, -61(sp)
                  srli         s5, a2, 30
                  ori          s10, t2, -1334
                  sub          t4, t1, zero
                  lh           t4, 141(sp)
                  lbu          s11, 106(sp)
                  slti         s0, t3, -129
                  sb           t5, -178(sp)
                  lb           s3, 54(sp)
                  lbu          a0, 17(sp)
                  sw           s3, -137(sp)
                  lb           t5, -83(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1084 #start load_store_instr_stream_3
                  la           s8, region_1+538 #start load_store_instr_stream_4
                  la           s11, region_1+1917 #start load_store_instr_stream_1
                  sb           s0, -13(sp)
                  lw           gp, -417(s11)
                  lb           t6, -20(s11)
                  sh           a2, -931(s11)
                  la           ra, region_1+231 #start load_store_instr_stream_2
                  lb           gp, -8(s8)
                  lb           a4, -1585(s11)
                  la           t5, region_1+105 #start load_store_instr_stream_0
                  lb           s5, 4(ra)
                  lbu          s6, 39(sp)
                  lbu          t1, -5(sp)
                  sh           s7, 1031(t5)
                  sw           tp, 48(sp)
                  sb           ra, -9(s8)
                  sb           zero, -3(s8)
                  lb           a6, -6(ra)
                  sh           s0, -13(ra)
                  lh           a5, -17(s11)
                  lh           t3, -10(s8)
                  sb           a3, -1408(s11)
                  lb           zero, -1(ra)
                  sb           a1, -1312(s11)
                  sb           s2, 0(ra)
                  lbu          a7, -21(sp)
                  lb           s10, 142(t5)
                  lbu          t6, -9(ra)
                  lh           s4, -1707(s11)
                  lh           tp, -62(sp)
                  sb           t5, 146(t5)
                  lb           s0, -23(sp)
                  lb           gp, -1708(s11)
                  lb           a0, 1(s8)
                  sb           a4, -8(ra)
                  lbu          zero, -190(s11) #end load_store_instr_stream_1
                  sb           tp, 9(s8)
                  lb           a4, -13(ra) #end load_store_instr_stream_2
                  sw           tp, 4(sp) #end load_store_instr_stream_3
                  lb           s7, 1192(t5)
                  sb           t5, -6(s8)
                  sh           s11, -4(s8) #end load_store_instr_stream_4
                  lbu          zero, 1056(t5) #end load_store_instr_stream_0
                  addi         a1, a3, 767
                  bltu         tp, s11, 11f
                  xori         t1, a5, -1177
                  sll          zero, a2, ra
                  slti         t1, t1, -1298
                  slt          a3, a1, s7
                  andi         t5, s5, -1554
                  add          t0, s1, s0
                  bgeu         s10, tp, 16f
                  sll          s10, a7, a6
                  xor          a6, ra, zero
11:               slt          s1, tp, s3
                  xori         a3, t6, 691
                  slti         ra, a1, 1749
                  srl          a0, s0, a1
                  bne          gp, t5, 32f
16:               xori         ra, gp, 979
                  nop
                  blt          s11, s1, 38f
                  add          s5, s0, ra
                  slti         a4, s6, 198
                  sltiu        a5, s0, -852
                  and          s11, s3, s4
                  slt          a6, s11, s6
                  xori         s5, t4, 331
                  lui          a0, 943507
                  or           s2, a7, s10
                  andi         s11, a0, 332
                  slti         a3, s8, -994
                  ori          a0, s2, 1620
                  xor          s7, zero, s8
                  sltiu        t3, t2, 14
32:               srl          s2, a7, t4
                  beq          t2, s9, 44f
                  xori         tp, a6, -1746
                  sltiu        s5, s8, -1797
                  andi         gp, s3, 1630
                  la           sp, region_0+1702 #start riscv_load_store_hazard_instr_stream_0
                  sb           a0, -210(sp)
                  lbu          s3, 72(sp)
                  lhu          ra, 72(sp)
                  sb           s0, 72(sp)
                  lhu          a1, 12(sp)
                  sb           t6, 12(sp)
                  sb           s1, -125(sp)
                  sb           t3, 85(sp)
                  lb           s6, -245(sp)
                  lb           t4, 213(sp)
                  or           s0, a5, sp
                  add          s4, t3, s9
                  sb           zero, 213(sp)
                  sb           a6, 223(sp)
                  sb           a1, -48(sp)
                  sh           sp, -48(sp)
                  lbu          a0, -2(sp)
                  lb           a4, 191(sp)
                  lui          s11, 639576
                  andi         s1, t6, 688
                  slti         gp, sp, -393
                  sb           t0, 191(sp)
                  sb           t3, -195(sp)
                  lbu          s1, -195(sp)
                  lbu          s6, -255(sp) #end riscv_load_store_hazard_instr_stream_0
                  xori         a6, s1, -1722
38:               and          s4, zero, t4
                  xori         t5, a6, -955
                  xori         a5, t2, -1807
                  sub          s7, s6, a6
                  sll          t5, ra, a4
                  bne          a0, t0, 58f
44:               auipc        s5, 877790
                  blt          t5, a2, 53f
                  sltu         sp, s2, t1
                  or           t4, sp, s1
                  slti         s1, a5, 1948
                  blt          a0, a3, 67f
                  xori         s1, s6, -1147
                  blt          s5, a3, 65f
                  bgeu         sp, s8, 66f
53:               bne          a3, a7, 62f
                  xori         s5, a5, -2025
                  add          gp, s4, a7
                  add          sp, s8, t0
                  and          s8, t1, t0
58:               sltiu        t6, t3, 1580
                  bne          ra, s8, 63f
                  addi         ra, s4, 503
                  xori         t5, tp, -1509
62:               bge          t1, t1, 81f
63:               sltiu        tp, a2, -1132
                  blt          zero, s5, 66f
65:               bltu         a3, s9, 67f
66:               blt          a1, s0, 77f
67:               auipc        a6, 266394
                  sltu         tp, s5, a7
                  slli         s3, s6, 5
                  blt          t2, a5, 88f
                  bltu         s0, a0, 79f
                  slli         t3, s4, 17
                  and          a7, s5, s5
                  andi         t0, s1, 135
                  nop
                  slt          s4, ra, gp
77:               srli         t1, a3, 26
                  sltu         ra, s10, s11
79:               lui          a7, 178366
                  slli         ra, ra, 18
81:               or           a4, s7, gp
                  xori         t1, a4, -1091
                  sra          t3, t3, s3
                  bge          s3, t3, 88f
                  nop
                  slti         s6, a5, 401
                  addi         s0, s9, -953
88:               slti         a4, tp, -806
                  bltu         zero, a2, 92f
                  bgeu         s9, a5, 94f
                  bltu         t3, s2, 111f
92:               sltu         s1, gp, a4
                  srai         s0, a4, 20
94:               srai         s2, s6, 13
                  sll          zero, a2, t6
                  xor          s1, a3, t1
                  sll          s11, a2, tp
                  auipc        t5, 769011
                  slti         t4, t5, 1506
                  bltu         s8, ra, 104f
                  sra          gp, a7, t0
                  xori         gp, s8, 526
                  bltu         t1, t1, 116f
104:              xori         t1, t3, -967
                  bgeu         a1, s4, 113f
                  lui          a5, 985685
                  sub          s2, t4, a2
                  bgeu         t0, a5, 127f
                  addi         a5, s1, 96
                  bge          s11, a4, 114f
111:              xor          a6, a6, s0
                  nop
113:              beq          a3, t6, 114f
114:              bgeu         a6, a4, 122f
                  beq          gp, s5, 129f
116:              blt          s8, s8, 120f
                  slt          t0, a3, a0
                  sltiu        s11, sp, 527
                  srai         t6, s8, 21
120:              lui          s0, 677233
                  slt          s10, zero, t6
122:              sltiu        a6, ra, -479
                  slt          s8, s1, s4
                  nop
                  ori          sp, s10, 1011
                  sub          s11, a6, s6
127:              slli         s8, a4, 0
                  nop
129:              xori         s4, gp, -1796
                  sra          a3, a1, s0
                  addi         a7, a6, -1568
                  slt          s0, s5, t6
                  and          t0, a5, s7
                  auipc        t4, 354959
                  ori          sp, t2, 750
                  and          zero, a3, t0
                  sltiu        t5, t6, -1041
                  srli         a1, a2, 27
                  addi         t0, a1, 20
                  srai         s1, a7, 19
                  sltiu        t6, t1, -778
                  and          s11, t2, a2
                  or           s8, a1, tp
                  ori          s11, a3, -1438
                  blt          a2, s3, 148f
                  auipc        a1, 492667
                  bgeu         a1, s5, 151f
148:              slt          s0, s4, s11
                  nop
                  sltu         s4, s10, s5
151:              srli         s2, s11, 6
                  srli         s4, s3, 13
                  srli         t5, s6, 18
                  slt          s11, a2, sp
                  bgeu         gp, t1, 157f
                  addi         s0, a2, -1319
157:              auipc        a5, 487701
                  sll          a6, gp, s4
                  slt          t0, s5, t4
                  srli         s2, s7, 0
                  andi         a5, s4, 1796
                  nop
                  slt          a7, s4, ra
                  lw           ra, 4(a2)
                  addi         a2, a2, 8
                  sub          a0, s9, s7
                  andi         t3, a1, -1647
                  ori          t5, t0, -1921
285:              addi x26, x1, 1
285:              jalr x26, x26, 0
sub_2:            slli         a4, gp, 24
                  or           a6, t1, s3
                  sra          t0, a6, s10
                  srl          a5, a7, a5
                  add          a6, sp, t2
                  addi         a2, a2, -20
                  ori          s10, zero, 104
                  sll          s7, s0, s9
                  sw           ra, 4(a2)
                  auipc        t3, 455160
                  sra          t4, s8, a7
                  la           t0, region_0+370 #start load_store_instr_stream_0
                  la           a5, region_0+1808 #start load_store_instr_stream_2
                  sb           t0, 11(a5)
                  la           s5, region_0+167 #start load_store_instr_stream_1
                  lb           t4, -7(t0)
                  sb           s2, -52(t0)
                  lbu          s6, 5(a5)
                  lw           s0, 0(a5)
                  sb           t2, -63(t0)
                  lbu          tp, 63(a5)
                  lb           a1, 8(s5)
                  sb           t3, -13(a5)
                  lb           s11, 37(t0)
                  lbu          s3, -12(s5)
                  lbu          t3, -33(a5)
                  sw           s5, -11(s5)
                  lb           s10, -10(s5)
                  sb           t4, 3(t0)
                  lh           s2, 58(a5)
                  lh           gp, 38(a5) #end load_store_instr_stream_2
                  lb           gp, -7(s5)
                  lb           gp, -16(t0)
                  lb           s2, 9(s5)
                  sb           a6, -2(s5) #end load_store_instr_stream_1
                  lbu          s2, -43(t0) #end load_store_instr_stream_0
                  la           a1, region_0+422 #start riscv_load_store_rand_instr_stream_2
                  lbu          sp, -7(a1)
                  lh           tp, -4(a1)
                  lbu          s2, -5(a1)
                  srl          s7, s2, gp
                  slt          t4, tp, tp
                  add          s1, a2, t5
                  lb           t6, -14(a1)
                  lhu          a6, 8(a1)
                  add          t1, t6, t1
                  nop
                  lb           s2, -1(a1)
                  lb           a3, 12(a1)
                  lbu          a3, -1(a1)
                  slti         a7, a4, 826
                  sltu         t3, a2, s8
                  srli         s6, a1, 0
                  or           zero, t5, zero
                  nop
                  srai         a4, s6, 27
                  sh           tp, -4(a1)
                  lbu          ra, -16(a1)
                  srl          s5, s6, sp
                  add          s7, t3, s5
                  lb           tp, -1(a1)
                  lbu          t6, -15(a1)
                  sltu         s0, s10, a3
                  sb           sp, 7(a1)
                  addi         t3, s3, -489
                  sb           a6, 12(a1)
                  lbu          s6, -4(a1)
                  srai         a3, t1, 29
                  slti         s8, a2, -497
                  slli         s8, ra, 0
                  sh           s11, 8(a1)
                  srl          zero, a5, s2
                  sb           t3, 6(a1)
                  and          s3, sp, a1
                  sb           s8, -9(a1) #end riscv_load_store_rand_instr_stream_2
                  la           a5, region_0+940 #start riscv_load_store_rand_instr_stream_1
                  srai         t5, a0, 24
                  slti         ra, t0, 467
                  sh           s5, 14(a5)
                  lb           a1, -8(a5)
                  sb           a2, -1(a5)
                  lh           sp, -6(a5)
                  nop
                  slli         s7, s3, 24
                  lb           s4, -4(a5)
                  lb           s11, 12(a5)
                  add          t6, s4, s5
                  and          t1, s0, t5
                  lb           a0, 1(a5)
                  sb           gp, 5(a5)
                  lh           t0, -2(a5)
                  sb           ra, -15(a5)
                  lb           s0, -11(a5)
                  sb           a5, -6(a5)
                  slt          a1, zero, s11
                  sra          sp, a6, sp
                  lbu          s1, 10(a5)
                  srli         t3, t6, 3
                  lh           s11, 6(a5)
                  srl          t5, tp, a4
                  lbu          t4, 13(a5)
                  lb           s1, -1(a5)
                  lbu          s4, -16(a5)
                  auipc        s0, 929401
                  sll          t6, s5, s5
                  sra          a6, t2, t4
                  nop
                  sub          s2, s4, zero
                  nop
                  lb           t4, 12(a5)
                  lb           t3, 16(a5)
                  lhu          gp, 6(a5)
                  lbu          s4, -1(a5)
                  lb           s11, -6(a5)
                  lbu          tp, 11(a5)
                  lb           a4, 7(a5)
                  slt          s2, s4, t3
                  xor          s11, t0, t4
                  sb           a2, 8(a5)
                  slt          gp, s2, a5
                  lb           s6, 14(a5)
                  lw           t0, -12(a5) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+120 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a4, -11(sp)
                  sb           tp, -11(sp)
                  lb           t6, -11(sp)
                  sb           a1, -11(sp)
                  lb           a3, -11(sp)
                  sh           t4, 14(sp)
                  lhu          s2, 14(sp)
                  lh           s2, 6(sp)
                  xor          a7, s0, a3
                  add          s7, s1, s2
                  lhu          t4, 6(sp)
                  add          a1, s7, a0
                  lbu          t3, 6(sp)
                  lbu          a0, 6(sp)
                  lhu          a1, 6(sp)
                  andi         zero, sp, -386
                  lh           s7, 6(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s10, region_0+470 #start riscv_load_store_rand_instr_stream_0
                  slti         tp, t3, -753
                  lb           t0, -16(s10)
                  lb           a5, 8(s10)
                  lw           gp, -2(s10)
                  ori          a7, s6, 1201
                  or           s5, s7, t5
                  sltu         gp, s5, s1
                  sh           a0, -12(s10)
                  lhu          s3, -4(s10)
                  lhu          s2, 6(s10)
                  lui          t6, 899404
                  lbu          s2, 5(s10)
                  lui          s4, 561833
                  lh           zero, 10(s10)
                  sw           tp, -14(s10)
                  srai         a6, a2, 5
                  xor          s2, s3, a6
                  nop
                  xor          s5, a1, s6
                  sb           s8, -12(s10)
                  sltu         t5, s6, s4
                  sb           a2, 8(s10)
                  lbu          t6, -7(s10)
                  lbu          t0, 13(s10)
                  lb           a5, -6(s10)
                  or           a3, s6, a6
                  lh           s11, 12(s10)
                  sb           s9, -5(s10)
                  lb           a4, -7(s10)
                  auipc        a1, 934450
                  lhu          t4, 0(s10)
                  sb           ra, 13(s10)
                  and          s6, s11, t1
                  ori          a1, ra, 307
                  lb           a6, -9(s10)
                  sw           t1, -10(s10)
                  lb           ra, 13(s10)
                  lui          a5, 173230
                  or           s5, s5, a1
                  sb           t2, 14(s10)
                  lb           t1, -3(s10)
                  lbu          a3, 6(s10)
                  srli         ra, t2, 14
                  lui          t3, 94439
                  lb           s8, -9(s10)
                  srl          a4, s6, t6
                  lb           a7, 14(s10)
                  lui          a3, 113917
                  lw           s5, 2(s10) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_1+563 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s2, 0(t1)
                  sll          s6, s11, s4
                  lh           a6, 1(t1)
                  sb           s8, -4(t1)
                  ori          s0, sp, -878
                  sb           s1, -8(t1)
                  sb           s1, -8(t1)
                  sb           a7, 0(t1)
                  sb           t4, -7(t1)
                  slt          t6, a1, gp
                  sb           a0, 6(t1)
                  lb           ra, -8(t1)
                  sb           t5, 16(t1)
                  sb           zero, 16(t1)
                  srl          t6, s0, a4
                  lh           sp, 9(t1)
                  sll          t3, t1, t2
                  lb           s11, 8(t1)
                  slti         s0, s11, -473
                  lbu          a0, 8(t1)
                  sb           sp, -10(t1)
                  lbu          a4, 5(t1)
                  lbu          s0, 5(t1)
                  lbu          t3, -8(t1)
                  lb           s2, -12(t1)
                  lbu          s0, -15(t1) #end riscv_load_store_hazard_instr_stream_0
                  la           s7, region_1+855 #start load_store_instr_stream_0
                  la           a3, region_1+248 #start load_store_instr_stream_1
                  la           s3, region_1+591 #start load_store_instr_stream_2
                  sb           a7, -225(s7)
                  lb           s11, 5(a3)
                  lh           s5, 0(a3)
                  sb           s6, 125(s3)
                  la           a0, region_1+1189 #start load_store_instr_stream_3
                  lhu          t6, 63(s7)
                  lw           s11, -201(a0)
                  lb           s11, 7(a0)
                  lb           s6, -235(s3)
                  lbu          s2, 192(a0)
                  lb           s4, 11(a3)
                  sb           s4, -89(a0)
                  sb           s3, 68(s3)
                  sb           s4, 151(s7)
                  sw           t4, 187(a0)
                  lb           s6, -132(s3)
                  lb           s4, -229(a0)
                  lh           s5, -2(a3)
                  sw           ra, 189(s7)
                  sw           a5, 16(a3)
                  lbu          a4, 248(s7)
                  lbu          tp, -12(a3)
                  lb           t0, 224(a0)
                  lb           sp, 7(a3)
                  lb           t4, 133(s7)
                  sb           s0, -18(s3)
                  lbu          s10, 64(a0)
                  lbu          a6, 110(s3) #end load_store_instr_stream_2
                  lb           s8, 204(s7)
                  lb           a1, -7(a3)
                  sb           t0, -238(s7)
                  sb           s11, -48(a0)
                  lb           t0, 2(a0) #end load_store_instr_stream_3
                  sb           s9, 8(a3) #end load_store_instr_stream_1
                  lb           s2, 176(s7) #end load_store_instr_stream_0
                  la           s7, region_0+1523 #start load_store_instr_stream_1
                  la           ra, region_0+565 #start load_store_instr_stream_2
                  lh           a0, -49(s7)
                  lw           s8, 255(ra)
                  la           a6, region_0+863 #start load_store_instr_stream_0
                  lb           a3, -62(ra)
                  sh           t6, 3(s7)
                  sw           s10, 49(a6)
                  lh           tp, -53(s7)
                  sb           s6, -44(s7)
                  lbu          t3, -14(s7)
                  lhu          t1, 37(a6)
                  lhu          s10, -223(ra)
                  sh           t3, -27(s7)
                  sb           s2, 147(ra)
                  lb           s6, -40(a6)
                  sw           s2, 167(ra)
                  lbu          a7, 10(a6)
                  lhu          t1, -39(s7)
                  lb           s0, -216(ra) #end load_store_instr_stream_2
                  lb           sp, 20(a6)
                  sb           s7, 53(s7) #end load_store_instr_stream_1
                  lh           t4, 33(a6)
                  lb           zero, 32(a6) #end load_store_instr_stream_0
                  la           s8, region_1+1237 #start riscv_load_store_rand_instr_stream_3
                  sra          t1, t3, a1
                  sb           a7, -498(s8)
                  srli         a3, a5, 20
                  slt          s1, s7, a6
                  sra          tp, a3, s2
                  sw           t5, 151(s8)
                  sub          a0, t2, s9
                  lb           t1, 411(s8)
                  sb           ra, -400(s8)
                  sw           ra, 395(s8)
                  slli         a1, sp, 13
                  sb           a1, -748(s8)
                  lhu          s11, 149(s8)
                  lb           s6, -890(s8)
                  sb           a7, 206(s8)
                  and          s0, ra, s9
                  lbu          a5, 208(s8)
                  slti         zero, s5, -8
                  auipc        tp, 165164
                  lbu          s3, -394(s8)
                  sb           s0, -564(s8)
                  xori         gp, s2, -1474
                  sb           ra, -54(s8)
                  lb           s11, 728(s8)
                  lb           t6, -1127(s8)
                  lb           t5, 313(s8)
                  sb           t0, 32(s8)
                  sb           ra, 613(s8) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_1+1214 #start load_store_instr_stream_0
                  sb           s2, -13(s4)
                  la           t4, region_1+1249 #start load_store_instr_stream_1
                  sb           s6, 37(s4)
                  sh           t1, -17(t4)
                  lbu          s8, 68(s4)
                  lhu          a7, -37(t4)
                  lbu          a1, -51(t4)
                  lh           ra, -92(s4)
                  sh           a0, 21(t4)
                  lbu          zero, -3(t4)
                  lb           zero, 215(s4)
                  lh           s5, -45(t4)
                  sw           a2, -61(t4) #end load_store_instr_stream_1
                  lb           s5, -24(s4)
                  lw           a4, -210(s4)
                  lb           a6, -223(s4)
                  lhu          a5, 236(s4)
                  lb           gp, -235(s4) #end load_store_instr_stream_0
                  andi         t0, tp, 1846
                  xori         ra, a6, 482
                  sra          t5, zero, a2
                  ori          s3, a7, 613
                  sub          sp, a5, t2
                  slli         a4, a6, 28
                  slti         t4, a1, 2019
                  lui          t5, 617479
                  bgeu         s4, s7, 13f
                  addi         s11, s2, -794
                  auipc        a3, 348059
                  addi         s1, s6, 1476
                  auipc        s1, 514632
13:               and          s11, s11, a5
                  blt          s10, s4, 34f
                  sltiu        s3, s8, -259
                  srai         zero, s2, 24
                  srl          a7, t3, s7
                  bne          a1, t4, 26f
                  slti         s6, a6, -47
                  bne          a2, s3, 34f
                  lui          s2, 512406
                  blt          s5, t2, 27f
                  bne          a6, a2, 37f
                  or           s3, s0, a7
                  sra          s6, s1, a0
26:               bge          s5, a5, 30f
27:               nop
                  add          t5, t2, tp
                  sll          s3, gp, s9
30:               and          a6, s6, t6
                  ori          s0, a0, -309
                  beq          zero, s8, 37f
                  addi         a0, s10, -1596
34:               nop
                  andi         s10, a1, -1698
                  sub          ra, t5, s1
37:               bne          s7, tp, 41f
                  bge          zero, t1, 49f
                  sub          tp, ra, a3
                  andi         a6, a0, -1671
41:               and          t1, sp, s6
                  andi         a3, s1, -112
                  xor          s0, a3, t6
                  ori          t0, t1, 1176
                  auipc        t0, 300492
                  and          t1, a0, t6
                  addi         s11, s2, 1489
                  slt          a6, s4, s5
49:               ori          t6, t5, -917
                  srl          s7, s2, s0
                  sub          ra, a4, a7
                  nop
                  srai         a5, a1, 11
                  addi         a1, a0, -601
                  blt          t6, a2, 56f
56:               sub          zero, t1, s7
                  xori         t6, s8, 279
                  slt          s2, s10, a1
                  ori          t5, a5, 1915
                  ori          tp, a4, -1866
                  srl          a4, s3, sp
                  ori          s1, gp, -38
                  sltu         t3, tp, a2
                  bne          s1, s1, 69f
                  sra          t0, a3, s6
                  xori         s7, a4, -1045
                  sub          s11, a3, ra
                  srl          s3, zero, s11
69:               srli         t5, s11, 16
                  lui          s3, 574067
                  bltu         gp, s2, 85f
                  beq          t1, s11, 89f
                  bge          a1, t0, 90f
                  auipc        ra, 697342
                  addi         a4, s8, 686
                  add          s6, s2, t2
                  xor          s3, s1, s2
                  bgeu         t2, s6, 84f
                  slt          t4, a1, t1
                  sll          sp, s0, a1
                  and          t1, t0, s8
                  sltu         s6, s8, s10
                  auipc        t0, 741712
84:               lui          s3, 253714
85:               bne          t1, s5, 98f
                  slli         s3, s11, 28
                  andi         t0, a1, -1293
                  srli         s7, a7, 21
89:               sra          a4, t4, t2
90:               srl          gp, s2, s8
                  slti         s8, t6, 259
                  beq          sp, t0, 102f
                  sll          a5, a2, a4
                  slli         tp, t0, 20
                  lui          zero, 249420
                  nop
                  and          sp, t4, t6
98:               bgeu         s2, t5, 113f
                  sub          s3, s3, s11
                  slli         a4, a1, 30
                  ori          t5, a0, 1512
102:              or           zero, ra, a7
                  bgeu         s8, a7, 107f
                  sltiu        s0, zero, -209
                  lui          s4, 603094
                  bltu         a5, s0, 117f
107:              sltu         ra, s5, sp
                  bge          s1, t0, 114f
                  sltiu        s7, tp, -65
                  sub          s2, t6, s8
                  slli         sp, s10, 1
                  bne          a3, s7, 131f
113:              sltu         s8, s8, t0
114:              and          s1, s4, gp
                  slti         a3, t3, 1202
                  andi         t0, sp, 1320
117:              and          t1, gp, tp
                  nop
                  slli         s6, t6, 9
                  bltu         t2, s4, 127f
                  lui          s2, 733039
                  bne          a7, a2, 136f
                  slti         s0, t2, 1810
                  add          t6, a4, s4
                  sub          t3, a6, s7
                  sltiu        a3, t1, 1108
127:              addi         s5, t6, 1495
                  slt          a0, zero, a4
                  lui          a5, 977475
                  slt          a4, s6, a7
131:              bge          t6, tp, 143f
                  bge          a6, t0, 149f
                  slt          a0, t0, zero
                  ori          gp, s8, 485
                  add          a0, s8, gp
136:              addi         s6, a7, -151
                  and          a5, s10, t5
                  srl          s2, s6, t3
                  nop
                  bgeu         t1, s10, 148f
                  auipc        s8, 205135
                  nop
143:              slt          t4, s8, s8
                  xori         ra, s8, 1785
                  srli         t0, s7, 22
                  srli         s1, a3, 19
                  add          tp, s11, t2
148:              sub          t0, t5, s5
149:              or           t0, s2, s1
                  ori          s11, s7, 303
                  beq          t5, a7, 152f
152:              slt          a6, t5, t0
                  sra          gp, s11, a1
                  addi         s11, t0, 1516
                  sub          t1, a7, t1
                  srli         gp, s3, 11
                  and          a6, ra, ra
                  addi         a1, s0, 1817
                  nop
                  sub          t0, gp, t4
                  auipc        zero, 898785
                  ori          s1, a5, -826
                  sltiu        a4, t3, 1490
                  bge          gp, t1, 180f
                  bge          t6, sp, 169f
                  sltu         t1, tp, a5
                  sub          t5, s3, sp
                  bgeu         s5, s0, 169f
169:              slli         s3, a5, 6
                  sll          t3, t2, ra
                  sltu         s4, s7, a5
                  sltu         s1, t1, s1
                  bltu         s8, zero, 187f
                  srai         t4, s4, 20
                  auipc        sp, 886003
                  beq          a0, t5, 184f
                  blt          t1, zero, 183f
                  beq          s7, gp, 198f
                  and          a6, ra, tp
180:              or           zero, a0, t1
                  bltu         s5, a2, 197f
                  nop
183:              sra          s3, s8, t6
184:              bge          zero, sp, 194f
                  andi         a7, a4, -387
                  addi         s0, s11, 276
187:              auipc        s3, 1009664
                  lui          a5, 779150
                  ori          a1, s3, -1684
                  slt          t4, gp, a1
                  nop
                  xori         ra, s11, 789
                  ori          a3, s4, -1409
194:              xor          s1, ra, t6
                  bge          t5, s11, 206f
                  xori         a3, s3, 1973
197:              lui          s4, 384038
198:              and          zero, s6, s4
                  or           t0, t1, a0
                  sra          a1, t3, s11
                  srl          tp, s7, s1
                  srai         gp, a5, 21
                  nop
                  slti         tp, s11, 447
                  addi         a0, a4, -2006
206:              and          s0, s1, s2
                  bltu         s8, a7, 221f
                  slli         gp, t3, 4
                  sltu         ra, t4, s9
                  and          s11, s8, t4
                  ori          s1, s6, -464
                  sll          s7, t0, s2
                  srai         s6, sp, 7
                  lui          t1, 21888
                  nop
                  sltiu        zero, s1, 337
                  srl          t0, tp, t1
                  bge          s10, a1, 225f
                  srl          s0, t4, t0
                  slt          s6, s6, a0
221:              ori          s1, s7, -358
                  slt          s2, a7, a0
                  srai         s7, a0, 26
                  srl          gp, s7, s11
225:              or           a0, a6, ra
                  beq          sp, t5, 243f
                  bne          a4, t4, 232f
                  sll          a3, a6, s7
                  andi         s1, t0, -651
                  bltu         t0, s8, 243f
                  slt          s5, a3, s6
232:              blt          s10, t3, 238f
                  xori         a3, s9, 1112
                  bge          gp, gp, 251f
                  bge          s2, a0, 239f
                  xori         t4, a5, -1029
                  xor          s2, t4, s9
238:              slti         sp, s10, 1319
239:              add          t3, a2, a3
                  srl          s6, t5, t0
                  ori          a4, t2, -1746
                  sltu         t3, t3, a4
243:              sltiu        a4, s10, 350
                  add          t3, s3, s8
                  bge          t1, s5, 246f
246:              blt          s6, t4, 258f
                  slli         t1, s7, 30
                  bge          s7, s10, 267f
                  bltu         a4, gp, 254f
                  lui          tp, 1045997
251:              add          s2, t3, t5
                  addi         s11, t4, 1660
                  auipc        s6, 105038
254:              xori         s6, t4, -1547
                  sra          t6, t4, s1
                  slti         a3, zero, 666
                  xor          a1, a7, gp
258:              beq          s0, s2, 273f
                  andi         a1, s4, 115
                  bgeu         a6, s6, 264f
                  xori         zero, a1, -1890
                  beq          a3, a1, 279f
                  sll          t6, t4, s0
264:              sltu         s11, a3, t2
                  sltiu        s0, s4, 612
                  blt          t4, a5, 280f
267:              slti         a0, s6, 373
                  srl          s3, a1, s1
                  xori         a7, t3, -1068
                  srli         a0, s1, 12
                  srai         s3, t5, 15
                  sub          s10, s11, ra
273:              sltiu        sp, gp, -803
                  slt          ra, a5, a0
                  slli         s5, a2, 13
                  nop
                  slli         a0, tp, 25
                  sll          t4, a1, a7
279:              nop
280:              blt          zero, s10, 288f
                  sll          s8, a6, t1
                  slt          t5, zero, zero
                  lui          a6, 696938
                  bltu         t3, a2, 289f
                  nop
                  ori          t5, a7, -1782
                  or           t1, a3, s7
288:              or           s8, t6, t3
289:              beq          a6, s9, 294f
                  sll          a3, ra, s11
                  xori         t0, s9, -1725
                  slli         a4, t4, 28
                  slli         s2, s2, 23
294:              slt          s3, s6, s11
                  sra          a5, t6, s8
                  sltiu        sp, t6, 1574
                  xor          s5, t4, s7
                  addi         s8, a2, 2047
                  slti         t6, t5, -1874
                  xor          a4, a0, gp
                  andi         a7, t0, 1882
                  sltiu        t0, s4, 1839
                  blt          s11, a3, 314f
                  slti         a5, s6, -1927
                  nop
                  xori         s10, t4, 433
                  nop
                  sub          t3, t1, t3
                  blt          a5, s2, 323f
                  slti         tp, a5, -1217
                  nop
                  sltiu        s7, s4, -1740
                  nop
314:              addi         a4, ra, 940
                  srli         s2, a6, 29
                  and          s0, a5, s1
                  and          s7, s4, s9
                  auipc        s1, 183578
                  xor          s6, s9, s8
                  beq          s11, a1, 325f
                  srl          s11, a5, t4
                  slti         tp, s5, -2032
323:              srli         a3, s4, 17
                  sll          a1, s9, a0
325:              auipc        s6, 373719
                  ori          ra, t2, -211
                  bne          s6, zero, 346f
                  lui          s2, 386687
                  slti         s0, s6, 501
                  slti         s6, s9, 1962
                  beq          s5, a7, 348f
                  sltu         t3, a4, t5
                  srli         s2, s3, 5
                  lui          s2, 948608
                  bgeu         s8, s4, 350f
                  xor          tp, ra, s9
                  add          a3, s5, s2
                  and          a1, s0, s7
                  auipc        s6, 28339
                  nop
                  xor          a5, a2, zero
                  bgeu         a0, sp, 346f
                  nop
                  sltu         s10, s9, a3
                  xor          t4, s7, t0
346:              sra          tp, s5, t6
                  srl          a4, s3, a1
348:              lui          a5, 749552
                  bge          s8, t2, 363f
350:              nop
                  bne          tp, s6, 368f
                  or           s7, sp, t2
                  bltu         sp, a1, 364f
                  srli         a7, a2, 12
                  and          s3, t5, tp
                  blt          s6, a1, 362f
                  sll          t5, s10, s2
                  xori         sp, a4, -870
                  bne          a6, t6, 372f
                  bne          a5, s11, 367f
                  nop
362:              srl          a1, s7, t5
363:              blt          s10, a4, 383f
364:              sra          s6, s10, s9
                  sltiu        a0, s9, -407
                  slli         a1, a4, 18
                  la           t4, region_0+711 #start riscv_load_store_hazard_instr_stream_3
                  sh           tp, 11(t4)
                  lh           s1, 11(t4)
                  ori          t0, t1, 487
                  nop
                  addi         s11, gp, 511
                  lhu          gp, 11(t4)
                  lbu          sp, 11(t4)
                  lbu          gp, 10(t4)
                  andi         a3, s5, -1606
                  sltiu        t3, s10, -65
                  lb           s6, 10(t4)
                  sb           a2, -16(t4)
                  lb           a3, -6(t4)
                  sb           s10, 6(t4)
                  sb           t3, -10(t4)
                  lb           s6, 2(t4)
                  lb           a0, 2(t4)
                  lb           s8, -14(t4)
                  lb           a7, -9(t4)
                  sh           tp, 7(t4) #end riscv_load_store_hazard_instr_stream_3
367:              auipc        s10, 642044
368:              xori         tp, a4, 1593
                  bgeu         s5, a6, 385f
                  lui          t5, 328349
                  slli         t1, s4, 16
372:              lui          a4, 367555
                  andi         zero, s7, 1639
                  xori         a4, a5, 1293
                  sra          s5, s11, zero
                  beq          zero, s6, 393f
                  sra          a5, s5, s11
                  srli         s1, t3, 15
                  xori         s11, a1, 1875
                  sra          s4, s8, a4
                  sra          s2, zero, t0
                  and          a3, s8, s3
383:              blt          s11, a3, 388f
                  lui          t4, 299799
385:              andi         s0, s5, -1715
                  andi         t4, t2, 871
                  slti         s1, ra, -1936
388:              sub          s4, s9, a2
                  slli         t6, ra, 24
                  slli         zero, a6, 24
                  bge          tp, s7, 397f
                  srai         s2, t1, 30
                  la           s5, region_1+795 #start riscv_load_store_hazard_instr_stream_2
                  sb           tp, 57(s5)
                  lbu          s6, 603(s5)
                  sb           ra, 603(s5)
                  auipc        s1, 267645
                  lhu          s3, 603(s5)
                  lhu          s10, 603(s5)
                  sb           s1, 603(s5)
                  sh           s4, 603(s5)
                  lhu          s0, 603(s5)
                  sh           t1, 603(s5)
                  lhu          t3, 603(s5)
                  lhu          t4, 603(s5)
                  sb           t2, 603(s5) #end riscv_load_store_hazard_instr_stream_2
393:              nop
                  auipc        a0, 432830
                  bge          t2, a0, 400f
                  srai         s11, a7, 30
397:              slt          t1, s2, t6
                  slli         t6, t1, 22
                  blt          s5, tp, 407f
400:              add          s11, gp, a3
                  sltiu        zero, s2, -2039
                  andi         s5, s4, -223
                  andi         a7, s3, 429
                  sll          gp, tp, s9
                  and          s11, a6, ra
                  beq          a6, sp, 420f
407:              sltu         gp, s3, t4
                  or           t4, a1, s0
                  nop
                  sltu         s7, s2, a7
                  srl          s11, s3, s8
                  andi         gp, t2, 1579
                  slt          a5, sp, s6
                  and          s1, zero, t5
                  slt          sp, zero, a2
                  slti         t0, s7, -1741
                  slti         t0, t3, 250
                  slli         tp, s5, 7
                  xori         s7, t5, 840
420:              slti         tp, a1, 735
                  xori         tp, a2, 1269
                  lui          a7, 565754
                  or           a0, s0, s1
                  xori         s3, a5, 1812
                  xor          a5, tp, a5
                  bltu         s10, a2, 431f
                  addi         gp, a4, -523
                  add          a4, a4, a6
                  auipc        a4, 539836
                  addi         zero, sp, 1181
431:              bltu         s11, t6, 432f
432:              sub          a7, a4, t5
                  ori          a7, a5, 394
                  lw           ra, 4(a2)
                  xor          s1, a2, t5
                  auipc        s11, 165917
                  sltiu        s11, t5, 862
                  addi         a2, a2, 20
                  auipc        s6, 836700
                  or           t1, a1, a3
                  sll          t3, a0, s2
                  slli         s6, ra, 21
                  slti         s1, t5, -414
806:              addi x2, x1, 1
806:              jalr x2, x2, 0
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
.word 0x083de9d7, 0x3c9aea38, 0x5d2ae63e, 0x0e95881a, 0x5266ab7b, 0x8ebc37e4, 0x1f7b4c84, 0x2cf17fa9
.word 0x2c8f5d5c, 0xf7dcbb2c, 0x5f1643eb, 0x500e62f5, 0x3750f6fd, 0x54a49e08, 0xc9718808, 0xe5db6553
.word 0x2c0253cc, 0x9fcff3e8, 0xa748b888, 0x757d52d4, 0x8f99d6bb, 0x41ce79ea, 0x22d662de, 0xbe828703
.word 0x05743e5c, 0xc4131fd4, 0xe4aa9d48, 0x290b6c98, 0xcdc92cd6, 0x422d5e32, 0xb1bf311e, 0x6c8a4f33
.word 0xc664e889, 0xa0e3c7b0, 0xa37eb34d, 0x906ce198, 0xdc3439b3, 0xf42fdd17, 0xb4b5102c, 0xa004447e
.word 0x2db29d97, 0x4788c960, 0x9920ad1a, 0xde18b5bb, 0x38973704, 0x027f5e33, 0xde371160, 0x3d4be963
.word 0x50fdaec1, 0x3cfcdf57, 0xf0e6f5a0, 0x0bb3ce90, 0xd280206d, 0xa6c50242, 0xb21f41b3, 0x47f271c0
.word 0x6640dcd3, 0xe4461130, 0xe531b760, 0xd5df43a9, 0x0ebeffbf, 0xf0c163a9, 0xaa98b412, 0x6c9c79b0
.word 0xd04632cd, 0x6699cd80, 0x94ea6626, 0x2da5dc10, 0xfde8fe4b, 0x162269b5, 0x847df8e7, 0x4ba740e7
.word 0x6084e915, 0x81dd3641, 0x66ee4c30, 0x17c84cf9, 0x6284ba3a, 0xb0c1df9b, 0xfb99cfe4, 0x1ed2e447
.word 0x4aa3021b, 0xc72b28a4, 0xa796c8c1, 0x1e2cf1c8, 0x0ecc2153, 0x7f63dc2e, 0x8857d7b3, 0x6888703b
.word 0x09a997d8, 0x47dc910d, 0x1aa395e1, 0x54b2f44c, 0x1f51ef9f, 0x06b23766, 0xd20bed07, 0xa5851006
.word 0xef95f4ce, 0x1588d266, 0xfa00f073, 0x2514adb4, 0xdf7b4875, 0xa075adf4, 0x82a8dd0e, 0x991225d2
.word 0x7d947f77, 0xf1f706ff, 0x9dc906d0, 0x1c941533, 0xb5799f9b, 0xe4591572, 0x3f8dd314, 0x405492ef
.word 0x429cecca, 0xe4c6925d, 0xed67b908, 0x4cc7875c, 0x05589c1e, 0xf57670b3, 0xaa49be4c, 0x27860a55
.word 0xf3114797, 0x566a479a, 0x405527a5, 0xda542bcd, 0x8831aa75, 0x43efb9aa, 0xe641dc68, 0xfcc712f0
.word 0x155ddf45, 0x70d98c64, 0xb9b401eb, 0x22c419be, 0x3ce94864, 0x0a26aafe, 0x224a1219, 0xaf47e9a1
.word 0x15152994, 0x18ac695e, 0x9537d748, 0x7fe20c36, 0x2dd94a8c, 0x227f9611, 0x1cfa3e5d, 0xc80a8226
.word 0xe8ab1574, 0xa7f054cb, 0xe8e26346, 0xb5a36ecc, 0x421e1b9e, 0x9e598fe2, 0x8712a5a9, 0x8d66f482
.word 0xf93a1733, 0x29d566d0, 0x27411ab3, 0xfb4390e7, 0x1215f17c, 0x96dec13b, 0xed2e674d, 0x417fb5e0
.word 0xae801e4e, 0x56bb0c06, 0xf57b241f, 0x7dcc156d, 0xb11d3522, 0x435a20c8, 0xdd1ebf85, 0x45b055cd
.word 0xc2347284, 0x926f0d44, 0x82504c51, 0xf905a0dc, 0x86a1ff6e, 0x2c439a1a, 0x370c908b, 0x497bd7ab
.word 0x615c18b7, 0x053a056c, 0x4f311118, 0x992b463b, 0x3cbad616, 0x5e80c180, 0x9c32e80e, 0x3fa3f006
.word 0xb337b12c, 0x013c7056, 0x15159efb, 0xe2cc687f, 0x929a8f08, 0x8a5763ee, 0x0c5e3a64, 0x06ed54d2
.word 0xf1785d8d, 0xaa678b36, 0xb3e69f80, 0xfdb8f941, 0x3555178d, 0xbe60f1eb, 0x580230c0, 0x8cfa0169
.word 0x806d3e14, 0x0ffb18cc, 0x3e742e32, 0x0ce152cc, 0x1f8d205b, 0xdca116fe, 0x0b45ed65, 0x97e41cd5
.word 0x783dbcec, 0xc5129035, 0x4eed1424, 0xbc7b7952, 0x80e26ae3, 0x7077d59b, 0x296a9fa8, 0x8fd48e74
.word 0x8de60624, 0x4c53fa02, 0x03c2d78f, 0xbd695c4b, 0x3cc4d90b, 0x48051db6, 0x4d0b25c1, 0xf9bf4b7f
.word 0x12a79d94, 0x2453b31b, 0x78493c8c, 0xc14fb292, 0x7ad48397, 0xe0c93454, 0xb77988da, 0x12fe0e60
.word 0x522499ec, 0xbe3ce0aa, 0x5108e7bb, 0xe30d16af, 0xaebc8af5, 0xedb30f8d, 0x6414f294, 0x1efaa5e1
.word 0xb15ef145, 0xc46bbcef, 0x68574f89, 0x5601a9b8, 0xc9ad312f, 0x938801cd, 0xf0bc01bb, 0x41cc137c
.word 0x6c60cff9, 0xfd7ed91e, 0x55d3ed9d, 0x07e76b69, 0x0417f964, 0xf05337fa, 0x8ef5d53b, 0x85538577
.word 0xc4495077, 0x9dbaec0f, 0x308b8d3a, 0x47448bae, 0xc3927f12, 0xa5f6b992, 0xe7a92f56, 0xf3411eb7
.word 0xf1b7d54f, 0x03690ded, 0x3bca0b6a, 0x2fdd7332, 0xe1dba7ed, 0x0fcefc5b, 0xcf477bd1, 0xff834b06
.word 0xcc9ad197, 0xde6fc7a0, 0x7e6fe1b5, 0x348e85f8, 0x40e5fe5d, 0x59062dbb, 0x99655ecf, 0x004636e6
.word 0xcf29cf7e, 0xe0aa3f49, 0xc642eb73, 0x3e0684a9, 0x52e23591, 0x17e24c38, 0x5f561e68, 0xb496bc16
.word 0xd85085a1, 0x07816e6e, 0x5aaa4d3c, 0xf0220a58, 0x473d191e, 0xb656be8b, 0x42ef339f, 0x337dcbdb
.word 0x03b55ba8, 0x36cccb10, 0x4dd05c2c, 0x085fceaa, 0xff5d5a73, 0xcd5368e3, 0xe4ae1179, 0xbfa0fa31
.word 0xc48e259f, 0xb00c2ada, 0x6b4f6a83, 0x3c3fcf3f, 0x416e04ae, 0x2bab6c3a, 0x64ba079e, 0xa72fca96
.word 0x090406d1, 0xf9f8d99c, 0xed19c334, 0xb4090da2, 0xd21b7f21, 0x81e5ae90, 0xe94b7dbd, 0xfe189eab
.word 0xcc3fe3df, 0x449150c9, 0xd5c57b85, 0xbdb278ad, 0xd74b3ecf, 0xad529720, 0x280e262a, 0xe122148e
.word 0x05d9b8df, 0xb3ddf9f1, 0x11b3aae0, 0xd54699dc, 0x073753b9, 0x8e63622a, 0x33c27e6b, 0x807ee2a3
.word 0x728b35e1, 0xbce49749, 0x695d1e36, 0x0d7f17ca, 0x20930e86, 0x4b2bea27, 0x182a279e, 0xd06e247e
.word 0xd41ee466, 0xfd87f918, 0xaf452731, 0xdb63fe64, 0x6af75682, 0x0f06e88b, 0x2c3c07aa, 0xdaf58ec8
.word 0xd60a175f, 0xa96843c4, 0xe2bc6bd6, 0xc3e7f1ee, 0xf097b4a3, 0x1df6e0d1, 0xe63cb11b, 0x145b81f9
.word 0xe2c989b6, 0x416705cc, 0xe5613c34, 0xdfbe852e, 0x96732c40, 0x4329c66f, 0x3874fdd2, 0x45263ea2
.word 0x611967bd, 0xf2b9f7a2, 0xbface51b, 0x1d6b5f9a, 0xfefd220f, 0x85891e7a, 0xf4cf6c12, 0x2640b68e
.word 0x98adc0fd, 0xe4855ac9, 0x442cf4bc, 0xa3d3d0cd, 0x02736d09, 0x787aa5c5, 0x940b2271, 0xe82bfd25
.word 0x4e7c4fc7, 0x0fc3abe1, 0xfeb222c9, 0xb397906a, 0x1fcfbe8e, 0x0a72b39a, 0x8e23d22c, 0xb2a7f7bf
.word 0xec6084a4, 0xe558db71, 0xc98e2033, 0x52a5d3be, 0xc1724419, 0xb3243a83, 0x511b048c, 0xa212e5c5
.word 0x7171a1b7, 0x6c4dd619, 0xd4f04cb9, 0x3dcf53a0, 0xbfb556df, 0xa3ed45e8, 0xed886b60, 0x769ba4d2
.word 0x2f1551b2, 0x66146aa6, 0xa84ceec4, 0x42b2b410, 0x2b6dc628, 0x4d964349, 0xa0457c00, 0x28f0a85c
.word 0xf94eddf6, 0x4b3ff7cf, 0x03244591, 0x49b6f04f, 0xb5acaafe, 0x449771df, 0x472459b0, 0xc000380a
.word 0xf7755794, 0xcd4a60bb, 0x129e9128, 0xc53d7a7f, 0x40af08f9, 0xfa420761, 0x860d58b2, 0x18fb3d5a
.word 0xe7876b94, 0x640e6d8c, 0x566b180e, 0x0c0c4044, 0x2d001b58, 0x4784fdaa, 0xc013bf36, 0x36047e93
.word 0x4c641b08, 0x88e8775a, 0x9a14aff0, 0xa54e7cd3, 0xdf482693, 0xc5aa248e, 0x50847478, 0xfdfd64f0
.word 0xe7d8ae53, 0x4b42c9d5, 0xb839135b, 0xea1d2b11, 0x6341eac2, 0x9d4fb725, 0xde0c5609, 0xe6d9119a
.word 0xfb3ed39d, 0x078e7498, 0x6a6cd1f6, 0xb2777d3c, 0x16ae2f3b, 0x9f5be6e1, 0x2aca4c2b, 0xa5002863
.word 0x63854dac, 0xbc0d4099, 0x8d81f927, 0xf41a4209, 0x53c49f99, 0x2e2985b4, 0x894bb6a4, 0xabb95176
.word 0xabff7703, 0x5b043076, 0x272133cd, 0x8a090424, 0x808ada99, 0x82986e4f, 0x4e3120a1, 0x6ea17fd1
.word 0xd21eb8f6, 0x4148d64d, 0xeaa5dfc2, 0xb7e9ac71, 0x4660f3ef, 0x219f3821, 0xab8b381a, 0xf5bb740a
.word 0xd5a4af1c, 0x18b90f2e, 0x89b56b9f, 0x240d0b07, 0x9b622f6d, 0x7ad5c2ae, 0x7549b9d5, 0xf8a50062
.word 0xcef5c1db, 0x3aba5feb, 0x3ff53a92, 0x77018b0b
.section .region_1,"aw",@progbits;
region_1:
.word 0xa21f3871, 0xa1f453ad, 0xab4aa637, 0xfa29ceb7, 0xa77ac33d, 0xb275b11f, 0x7e62cdf0, 0xddd7361a
.word 0x6d02e5dd, 0x5da6fc1a, 0x84bb711b, 0xa61b3a65, 0xff9fdc98, 0xa7f68098, 0xac3d6ead, 0x3ce54b0e
.word 0x5a03a25b, 0x6859aaf5, 0xfdbcf85c, 0xdf933cd9, 0xb8a0c056, 0xcf466d8b, 0xe075447d, 0x5ee8fa50
.word 0xddc86e67, 0x1b61bac7, 0x3f31fe8d, 0x985b15c6, 0xc035c7f6, 0x49815c84, 0x38969851, 0x8fd323b7
.word 0x063bc03c, 0x0785926b, 0x5edb77ae, 0xcebf16e5, 0x635797fc, 0x954ac50c, 0xef9d51c8, 0x147a042f
.word 0xd2209ae1, 0x0b521176, 0x351c3bdb, 0x0d2c2858, 0x013e5a56, 0x5f98eb01, 0x2e162e24, 0xf9445d15
.word 0xf713f2c9, 0x4ac08e23, 0xfa1c6ce0, 0x4eb80fd0, 0x07ee7c46, 0x935a0d70, 0x59c23c7d, 0x3d1f1ba0
.word 0xf2be1c45, 0x5ef26260, 0x2d6683f7, 0x4d22e8d5, 0x9e361825, 0xa26726a8, 0xa08bccec, 0x49fb6330
.word 0x684efc43, 0x19003a58, 0x3c102bbe, 0x920ec63a, 0xde29c891, 0x22a97d9a, 0x5712e393, 0x40af691b
.word 0x62204d0a, 0x28e84001, 0x16f61c0b, 0x3127e6c0, 0x859e6bc6, 0x53b2974d, 0x6f6fd6e4, 0xee89454b
.word 0xcdca7842, 0xb82ddef3, 0x4de49bbb, 0x039d14b9, 0xced0f3fc, 0x85d7d875, 0x62f8ebc1, 0x79f73e02
.word 0xbbe57347, 0x1ef5dd0c, 0xa4ff1a66, 0x50d484e0, 0x06a11013, 0xc67b7e8e, 0xc0112b3d, 0x4eb47319
.word 0x9d8012bf, 0x6494df22, 0x280aad52, 0xd6f00158, 0x237a5e66, 0x80e7045b, 0xefe5f74e, 0xe3a53db4
.word 0x175aa7f8, 0x012b9c3b, 0xc6945081, 0x2ed1bce4, 0x425b1ac4, 0x38a732b4, 0x97200980, 0xe5311a05
.word 0x5bbe45da, 0x6e0c9fea, 0x96030891, 0x784d9a59, 0x9c0c4cc9, 0xfe64bbfc, 0x92161cfe, 0xb391aa5c
.word 0xa6670d08, 0xeb85a8ee, 0x75fbf083, 0xe6c36f4b, 0x86a7b78a, 0x74376571, 0xc910c666, 0xc130ae68
.word 0x9aae48a1, 0x326e64ab, 0x8df17f25, 0x2237119b, 0xf6df3fbf, 0xf8ffacc9, 0xcf8d21a0, 0xea9fd113
.word 0x003d5c4d, 0xc4a5de20, 0xbee4e24c, 0xd7d30ac8, 0xd486410a, 0x984eacce, 0x8aa9bc23, 0xa5e942ef
.word 0xa432009c, 0xa848788f, 0x305cc7f6, 0xfb6b1764, 0xb529719f, 0xf0cb4410, 0xc76bfb66, 0x705635f5
.word 0xec579bd8, 0x38175de1, 0xf5da9350, 0x06d4eaa1, 0xadace419, 0x528e0d85, 0xfab9292e, 0x51a320a4
.word 0xb6030ca1, 0x6d76639d, 0x0f871f02, 0x815ba0cf, 0xff87c44d, 0x8b4208b5, 0xbf9d9478, 0x8f9b29a5
.word 0xbbb2bcfd, 0x173789c7, 0x9290defe, 0xaa6e56b1, 0x137da27c, 0x1b0400ea, 0xb5d56c38, 0x0e443440
.word 0xf19b5e99, 0x3d51cc59, 0xf7010192, 0x1027a820, 0x2cc6a108, 0x49ea2a9e, 0xd21a9953, 0x8a6703cb
.word 0x06d2e30a, 0xc1b3163e, 0x3d423fda, 0x997248ac, 0x424e6c04, 0xb7ebb2d8, 0xded7516b, 0xbccd1830
.word 0xf85a278b, 0xa7c006f0, 0xf32a32dd, 0x3bfa2e02, 0xc80874b6, 0x77359cbb, 0x3c197ba7, 0x43b28933
.word 0x8390c852, 0x7c0f8d16, 0x5e7b8691, 0x566753ca, 0xf41f79a7, 0x53e631cb, 0x306c7553, 0xd540bb11
.word 0xa7232935, 0x2218188e, 0x47125fce, 0xc9df3633, 0xa770c345, 0x56d86d92, 0x8cfaffbc, 0xc1e8cefe
.word 0x5fc46eb8, 0xc74d6c42, 0x4433cbfb, 0xbc1380e1, 0xd2948424, 0x41140423, 0x196d9b8f, 0x85ebdece
.word 0xf4653978, 0x6ead630d, 0x1a4b31d5, 0xaa7d8a24, 0x8eddf7fa, 0x54d45194, 0x75ed14f1, 0x7e469f03
.word 0xea2ea0da, 0xa13613b0, 0x20b190f0, 0xf82c0fd2, 0x387177d2, 0x3d3e0a46, 0xc58e24bb, 0x7e15e0cc
.word 0x048e2ef9, 0xde30902e, 0xa5be644a, 0x50129765, 0x80049908, 0xf5f84204, 0x58df9dfe, 0x6e868cc2
.word 0xb026123b, 0xcb0beec6, 0xd8548b8e, 0x3a9934c4, 0xe92899b9, 0xf92df106, 0x2630cfa9, 0xa5950c49
.word 0xf7bcbda1, 0x4fcf5ce7, 0x5ea1ac12, 0x7805c401, 0xf4512fac, 0xc3afb949, 0x6e3e6733, 0x291d98b7
.word 0xece945d5, 0xad490aba, 0xe56efec6, 0xb5af845d, 0xd0eee214, 0xc02566d2, 0xfca98349, 0x9b66b295
.word 0x64292755, 0x851c388d, 0xfa3b8515, 0xe5b6a1f0, 0xa323ed06, 0xdd218bb3, 0xcbd78d4e, 0xac34deb9
.word 0x0b4a65ef, 0x552592b3, 0x1056c3a1, 0x59dff04a, 0x84ea1383, 0x6662a0c8, 0x74aaad5b, 0xa252f234
.word 0x37ee801d, 0x77baf3f9, 0xef1fabee, 0x9d4389a6, 0x8b120c7b, 0x8226a59e, 0x68fbc3ea, 0x856137f3
.word 0x764a03d1, 0x8081bd49, 0xbe07c706, 0x71739ed5, 0x5d29bc73, 0xa8e34803, 0x73fab32b, 0xc540118d
.word 0xaa4e697f, 0x562bc5b3, 0x3d255a30, 0xfbba1487, 0x046f45ae, 0x7275f270, 0xc9bf9573, 0x84620bc3
.word 0x8d4655d9, 0x50ed431d, 0x4bfd5826, 0x36738242, 0x7d1187ea, 0x10fcfbfb, 0x6b005b32, 0x286eebfa
.word 0x68417461, 0xa6bda6e7, 0x17d29aa4, 0xce1b4f19, 0x4e86e0e4, 0x4f2b9d8d, 0x05fcfd6d, 0x1afb69f5
.word 0x61f25ce4, 0xbe04425f, 0xd02ae713, 0xbfb3bbcd, 0x0cbe2506, 0xc7d43849, 0xf6318be4, 0xff230246
.word 0x8684176a, 0xb99dd8f9, 0xacbfb0c4, 0xb5eae339, 0xe34129b5, 0x38d34edf, 0x7946c346, 0x57f66327
.word 0x8b567fa2, 0x383ebc47, 0xbf5989b2, 0x152aef4c, 0x3b06ba9d, 0x757d63cf, 0xab28ac76, 0x9aa076af
.word 0x8ac83463, 0x56f620e0, 0xe1e60ac4, 0x5279d216, 0x2b6e2e89, 0x5c20d8fd, 0x19d58a1b, 0xbd2fe7d7
.word 0x21602780, 0x3021b3a3, 0xdbef3e68, 0x34ee937b, 0x13961097, 0x4884fded, 0x98ce8cc0, 0x9180dfe5
.word 0x5a8c70e1, 0x567776ea, 0x5b74d520, 0x320dd762, 0x5a4d1734, 0x7099ff89, 0xd776b4ed, 0xba2eeda3
.word 0xe4dc2268, 0x84d5fde5, 0x3945de26, 0x29129d21, 0xbc33a836, 0x61a862cf, 0xb93cf2e5, 0x11c4ed99
.word 0x929d404a, 0xeb0b3646, 0xb726fe6f, 0x5cea83f3, 0x43023123, 0xcfb31c0b, 0x97f0e3b6, 0xb1dd1f7c
.word 0xf9dc5017, 0x33dcf5d8, 0x60eea8ae, 0xf03b12e4, 0x984ed50e, 0x76b2f6dd, 0x41b88c20, 0xb7bc78cd
.word 0x35c4dcbc, 0xe5cb136d, 0xc85d35a1, 0x32b2a990, 0x1474b386, 0x88c22810, 0x5738ea50, 0xc9ad48b4
.word 0x525c20fd, 0x37d3e276, 0x8403031d, 0xb578a974, 0x1c028e01, 0x0ea5e988, 0x6e6427fc, 0x2ae30959
.word 0xf0e85e18, 0xa8e2199b, 0x2b1e604c, 0x2d4f1858, 0x7c00e3e4, 0x293af73f, 0x8c233ad6, 0x100d43d5
.word 0x6277cfcc, 0x4ee91a76, 0xd5585d45, 0xb0ba1e75, 0x9bcb4e0b, 0x2074f74d, 0x5ae446e7, 0x5a528828
.word 0x3bf2d061, 0x8ac13088, 0xfb2945c8, 0x8d308c97, 0x29583a15, 0x88f94229, 0x3a2145a1, 0x982dd3ce
.word 0x13609d2d, 0xfc377b41, 0xb5984a09, 0x2683c1c8, 0xffb9f52a, 0xfc624425, 0x6b4f854a, 0xc7b3711b
.word 0xe05b7658, 0x5a093630, 0xa0f85041, 0x5949ee52, 0x3d21462a, 0x32cb499b, 0x2ac0a2d9, 0x0d80a34b
.word 0x1e666f93, 0x78de6c95, 0x0639d6ef, 0xf3bf1ddc, 0x238e22fb, 0x3eca2ed2, 0x4a82c886, 0x77ad3db0
.word 0xa7c0bfd0, 0x079b2ff1, 0x732e324c, 0x7b5b609c, 0xa403ad6f, 0xb65e9d35, 0xa55fcc08, 0x1d62022a
.word 0x66a0d2fd, 0x599141e8, 0x05a01d0b, 0x19d944d9, 0x7a24b7f1, 0x64747d51, 0xd7f0f692, 0xdca628f4
.word 0x0dcfd0f9, 0x30fe6eb4, 0x6866d3db, 0x4e157af5, 0x7ccee4f6, 0x8bb47966, 0x9a10984f, 0x4880caac
.word 0xad6afc53, 0x0046cd5d, 0x0cdd1b12, 0x8d3294c0, 0x2676af0a, 0xe4e5433e, 0xa977b5b3, 0x7281dad6
.word 0xfa086d1e, 0x2cd75cbf, 0x76697c4b, 0x5ac1a538
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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x7, x12, zero
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x17, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x17, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x17, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x17, x20, ecall_handler
                  li x20, 0x1
                  beq x17, x20, instr_fault_handler
                  li x20, 0x5
                  beq x17, x20, load_fault_handler
                  li x20, 0x7
                  beq x17, x20, store_fault_handler
                  li x20, 0xc
                  beq x17, x20, pt_fault_handler
                  li x20, 0xd
                  beq x17, x20, pt_fault_handler
                  li x20, 0xf
                  beq x17, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x12, x7, zero
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
                  add x12, x7, zero
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
                  add x12, x7, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x12, x7, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x12, x7, zero
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
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x12, x7, zero
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
