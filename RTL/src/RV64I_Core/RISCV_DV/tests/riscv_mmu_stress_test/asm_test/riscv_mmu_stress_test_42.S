.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
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
                  li x0, 0x2c359ac1
                  li x1, 0xdf28baf
                  li x2, 0x4
                  li x3, 0x3
                  li x4, 0x8
                  li x5, 0xdafbe154
                  li x6, 0xf4c7303e
                  li x7, 0xf92aca6b
                  li x8, 0xe23a9f93
                  li x9, 0x819b4667
                  li x10, 0x46561d9
                  li x11, 0x0
                  li x12, 0x33f2d2ec
                  li x13, 0xe
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x6a2bf74c
                  li x17, 0xfaf23190
                  li x18, 0xe
                  li x19, 0xf9ab5388
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x6
                  li x25, 0x9
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x92c517f6
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x6fd4d79b
                  la x23, user_stack_end
main:             la           sp, region_0+1606 #start riscv_load_store_rand_instr_stream_0
                  xor          s0, s10, a5
                  sb           s3, -1389(sp)
                  slli         s2, s4, 4
                  slt          a1, t6, s10
                  slti         t4, s0, -47
                  sb           t1, -1415(sp)
                  sub          s1, s4, t5
                  srl          a1, s4, sp
                  sb           a4, 211(sp)
                  lh           zero, -412(sp)
                  sltu         t3, s9, sp
                  lbu          s11, -195(sp)
                  lh           a3, -46(sp)
                  lb           s9, -682(sp)
                  sb           s4, -1290(sp)
                  lb           s10, 26(sp)
                  lb           a1, -35(sp)
                  sb           a4, -1180(sp)
                  sb           t0, -941(sp)
                  sb           s4, -1011(sp)
                  slli         t1, ra, 14
                  lhu          t1, 130(sp)
                  lb           a1, -1339(sp)
                  lh           s1, -1020(sp)
                  ori          t5, t2, -933
                  lb           a5, -196(sp)
                  sb           s8, 31(sp)
                  lbu          t3, -918(sp)
                  lbu          t0, -435(sp)
                  slti         t6, s9, -1136
                  slli         a4, s11, 21
                  sb           a5, -578(sp)
                  sb           s3, 325(sp)
                  and          t5, t5, a1
                  sb           s5, -1190(sp)
                  lhu          t1, -1430(sp)
                  xori         a4, zero, 1030
                  lb           s6, 243(sp)
                  sw           a4, -590(sp)
                  lb           s3, 160(sp)
                  lb           t6, -411(sp)
                  lb           tp, -906(sp)
                  lbu          t2, -1534(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+727 #start riscv_load_store_hazard_instr_stream_0
                  lb           s6, -2(t4)
                  lb           t3, -2(t4)
                  lb           tp, -140(t4)
                  sb           sp, -140(t4)
                  lbu          s10, -140(t4)
                  srai         s9, s11, 30
                  lb           t0, -140(t4)
                  xori         a4, t4, 950
                  lbu          s6, -46(t4)
                  or           s10, t4, t0
                  lbu          a3, -46(t4)
                  lb           gp, -46(t4)
                  addi         tp, t3, -1523
                  sw           s4, 409(t4)
                  sltu         sp, t1, a4
                  srl          a1, s6, s7
                  auipc        a5, 599739
                  lbu          tp, -397(t4)
                  sw           tp, -631(t4) #end riscv_load_store_hazard_instr_stream_0
                  la           gp, region_1+1282 #start load_store_instr_stream_1
                  la           t5, region_1+635 #start load_store_instr_stream_2
                  la           a1, region_1+142 #start load_store_instr_stream_0
                  sb           t0, 1111(a1)
                  lbu          t2, 407(a1)
                  lhu          t0, -7(t5)
                  lb           t3, -7(gp)
                  lbu          s0, -11(t5)
                  lbu          s6, 5(gp)
                  sb           a3, 1531(a1)
                  lw           s1, 5(t5)
                  sb           s10, 1731(a1)
                  sh           s5, -11(t5)
                  sb           t6, -3(gp)
                  sb           sp, 4(t5)
                  sb           t2, 99(a1)
                  lbu          tp, 3(gp)
                  sh           s10, -12(gp)
                  sb           zero, 1095(a1)
                  lb           s3, -9(gp)
                  lb           s10, 257(a1)
                  lb           a5, -8(t5) #end load_store_instr_stream_2
                  lb           t1, 7(gp) #end load_store_instr_stream_1
                  lbu          s10, 325(a1) #end load_store_instr_stream_0
                  ori          s5, ra, -208
                  andi         t4, a7, -782
                  ori          gp, a2, 805
                  sll          a5, t5, s11
                  auipc        s9, 720549
                  srl          s2, a6, t3
                  andi         t3, s0, -564
                  xor          s1, s3, t3
                  srai         s1, a1, 10
                  slli         zero, t2, 10
                  bltu         a3, s8, 20f
                  and          t2, a0, s2
                  bgeu         a7, a5, 21f
                  slt          s9, s2, t1
                  slti         t1, s6, -474
                  beq          a4, a4, 16f
16:               addi         t6, a1, 730
                  sltu         tp, s1, s0
                  nop
                  sub          zero, a6, t3
20:               srl          t6, s6, a2
21:               add          t4, gp, sp
                  sll          a7, sp, sp
                  xori         zero, t6, 1541
                  slt          ra, t3, s6
                  la           s2, sub_1
                  add          t2, a4, a4
                  addi         s2, s2, 524
                  ori          s11, a2, 482
                  sltu         a0, a2, t4
                  srl          s6, s4, t3
                  bge          t1, zero, main_j1 #branch to jump instr
                  add          a1, tp, a3
main_j1:          jalr         s10, s2, -524 #jump main -> sub_1
                  ori          s9, s5, 1195
                  or           t0, t6, t1
                  nop
                  and          t0, s9, s7
                  xori         a0, a4, 201
                  bgeu         ra, t0, 47f
                  andi         s3, t0, 464
                  srli         t5, a2, 11
                  sltiu        s6, s7, -1427
                  ori          gp, s7, -172
                  sltu         s9, t0, t4
                  xor          zero, a2, s8
                  nop
                  sltu         gp, s6, s5
                  blt          t5, a5, 50f
                  sltiu        s1, a2, -1605
                  xor          s3, tp, s5
                  beq          s3, ra, 55f
                  xor          sp, s1, s4
                  sra          t1, zero, s3
                  beq          s6, t2, 61f
                  nop
                  bne          s10, s9, 47f
47:               sltu         s5, t5, t5
                  slti         s2, sp, 1433
                  srai         t6, t6, 16
50:               ori          s11, a3, -1149
                  or           a5, gp, t0
                  bne          s3, t2, 69f
                  add          s1, t2, a7
                  lui          a0, 103447
55:               sra          a4, t4, ra
                  sra          t4, a7, a4
                  bne          a7, s10, 62f
                  ori          t4, s3, -1606
                  beq          s1, t3, 68f
                  addi         s6, s7, -1215
61:               bne          t1, s7, 68f
62:               ori          tp, a0, 1180
                  sltu         s1, a1, s0
                  or           a3, s0, s10
                  lui          s9, 127219
                  bgeu         s6, s8, 74f
                  bgeu         s5, sp, 81f
68:               sltiu        t5, tp, 1040
69:               xor          a6, t1, t0
                  blt          s7, a0, 74f
                  bge          t3, s4, 72f
72:               andi         a4, a0, 411
                  bgeu         gp, a1, 88f
74:               srli         s2, a7, 28
                  sltiu        t6, tp, 2000
                  lui          s9, 605838
                  nop
                  andi         s0, tp, -1742
                  add          s9, a3, t6
                  xor          a7, a7, s4
81:               slti         ra, s1, -435
                  xor          zero, a2, sp
                  srli         t6, tp, 30
                  and          a3, s10, s10
                  beq          t2, a0, 105f
                  beq          t4, s5, 100f
                  sub          t0, a5, a3
88:               srli         s11, a3, 0
                  slli         t5, a4, 10
                  sll          s11, s3, t6
                  srai         s2, s5, 0
                  sltu         t4, a3, s8
                  sub          t1, t2, t5
                  andi         s10, a0, -772
                  slti         a2, a0, -1585
                  bne          t1, s9, 112f
                  addi         t3, a2, 33
                  nop
                  slli         a6, s9, 26
100:              blt          s3, a2, 108f
                  and          a0, s2, t5
                  bltu         s5, zero, 120f
                  add          a6, t4, t1
                  sltiu        sp, s0, -36
105:              xori         tp, a0, 315
                  srl          t5, s9, t2
                  or           s1, a1, s11
108:              srai         a3, a2, 10
                  auipc        gp, 655312
                  or           tp, s3, s3
                  sra          a4, a0, a3
112:              or           a2, a1, a2
                  bgeu         s6, t4, 131f
                  bltu         gp, s6, 134f
                  sub          a7, gp, t6
                  lui          s0, 425223
                  beq          a5, s4, 127f
                  srl          zero, t6, s6
                  nop
120:              sltiu        t1, s3, 1228
                  andi         t6, t0, -890
                  srl          a0, a5, sp
                  add          ra, sp, s0
                  sltu         gp, zero, gp
                  sub          s5, s0, a7
                  ori          s0, t1, -1922
127:              beq          s1, tp, 138f
                  srai         s1, ra, 12
                  slli         s6, t6, 13
                  sll          t6, gp, zero
131:              bne          a7, s1, 133f
                  sra          sp, s9, t2
133:              blt          t2, a4, 136f
134:              srl          gp, t3, t2
                  lui          t1, 959654
136:              srli         s5, t0, 21
                  slti         gp, sp, 297
138:              or           zero, s0, a4
                  bgeu         sp, s9, 153f
                  beq          a3, tp, 150f
                  bne          s9, s2, 158f
                  srl          s10, s11, s0
                  srai         a5, a3, 17
                  bltu         t5, s4, 161f
                  and          s5, s4, a7
                  sub          a6, t2, t2
                  slli         s3, s1, 4
                  xor          s1, s4, a7
                  beq          t6, s5, 158f
150:              lui          s2, 914291
                  xor          zero, a5, s8
                  slli         zero, s6, 19
153:              slti         ra, t4, -802
                  andi         ra, s6, 1431
                  srai         t3, t3, 1
                  nop
                  and          sp, a3, ra
158:              srl          a3, s0, tp
                  sll          s10, s1, a6
                  bltu         a6, a7, 174f
161:              sub          a5, a6, s9
                  slli         a3, a1, 21
                  and          t3, s0, s3
                  andi         s5, t5, 1670
                  sub          t6, t3, a1
                  blt          s7, ra, 174f
                  bltu         zero, ra, 180f
                  bltu         a7, ra, 176f
                  andi         ra, s0, -989
                  bge          s11, ra, 180f
                  auipc        a6, 520300
                  lui          t0, 590536
                  or           tp, s10, a0
174:              ori          s1, t2, -1078
                  auipc        s3, 904650
176:              sub          t5, t2, s4
                  or           s1, t6, s5
                  xori         a3, tp, 579
                  beq          ra, s2, 180f
180:              xor          a1, s4, a1
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         s7, s7, -12
                  lui          t5, 762836
                  sw           s10, 4(s7)
                  ori          a5, s4, 251
                  lui          a2, 411197
                  slli         a2, tp, 4
                  la           sp, region_0+625 #start riscv_load_store_rand_instr_stream_3
                  lb           ra, -292(sp)
                  sltiu        s9, a4, 1287
                  lb           s3, -495(sp)
                  sw           t0, 1031(sp)
                  lh           ra, 207(sp)
                  lhu          gp, -9(sp)
                  sb           t0, -358(sp)
                  sh           a2, 517(sp)
                  srl          a7, s6, s2
                  lbu          s3, 676(sp)
                  slt          s10, t5, t4
                  slli         t0, a1, 21
                  lb           ra, -20(sp)
                  lhu          s9, 657(sp)
                  nop
                  lbu          s6, -142(sp)
                  lb           a1, -140(sp)
                  sb           s10, 870(sp)
                  sll          tp, t0, zero
                  xori         t4, s10, -699
                  lb           s5, -274(sp)
                  nop
                  andi         a7, s5, 1876
                  add          t5, s9, gp
                  sb           t5, 609(sp)
                  slt          gp, s6, s1
                  lb           t4, 1300(sp)
                  sra          t1, t2, gp
                  lbu          a0, 618(sp)
                  andi         t1, a4, -145
                  srl          t3, s1, a3
                  lbu          a4, -154(sp)
                  lhu          s6, 1133(sp)
                  nop
                  sh           t4, 275(sp)
                  sb           t0, 1084(sp)
                  sh           a3, 437(sp)
                  lb           a7, -458(sp)
                  and          a3, a7, s6
                  lb           s1, 1034(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_0+1902 #start riscv_load_store_hazard_instr_stream_1
                  lb           a1, -763(s9)
                  lb           zero, -763(s9)
                  auipc        a6, 246193
                  lb           t5, -763(s9)
                  lb           s1, -763(s9)
                  lb           t2, -763(s9)
                  srai         t6, t2, 10
                  lbu          s3, -763(s9)
                  lb           s3, -763(s9)
                  xori         s10, ra, 138
                  lbu          a5, -763(s9)
                  lbu          a6, -763(s9)
                  lbu          a6, -763(s9)
                  sb           s4, -763(s9)
                  sw           t2, -1438(s9)
                  or           t5, a5, s11
                  sb           s7, -1438(s9)
                  lhu          t6, -1438(s9)
                  sw           a1, -1438(s9)
                  lb           sp, 85(s9)
                  lbu          s1, 85(s9) #end riscv_load_store_hazard_instr_stream_1
                  la           ra, region_0+1467 #start riscv_load_store_hazard_instr_stream_2
                  sb           t1, 16(ra)
                  sb           tp, 16(ra)
                  sb           t1, 16(ra)
                  or           sp, a7, tp
                  andi         tp, s8, -1606
                  lb           a1, -16(ra)
                  sub          a4, a2, a5
                  sub          a2, s5, sp
                  or           t2, t5, s2
                  sltu         s0, a0, a7
                  sb           a7, 2(ra)
                  lbu          s3, 2(ra)
                  slli         t6, s8, 0
                  lb           a4, 2(ra)
                  lbu          t6, 2(ra)
                  lbu          s3, 2(ra)
                  sb           gp, 2(ra) #end riscv_load_store_hazard_instr_stream_2
                  la           tp, region_0+1956 #start load_store_instr_stream_1
                  la           s11, region_0+1127 #start load_store_instr_stream_0
                  lb           ra, 14(s11)
                  lbu          t2, -11(tp)
                  sb           t1, -7(s11)
                  sh           t6, -10(tp)
                  lb           a1, -16(s11)
                  lb           sp, 10(s11)
                  lbu          a7, 6(s11)
                  sw           a1, 8(tp)
                  lbu          a5, -9(tp)
                  lbu          t2, 10(s11)
                  lbu          s10, -8(s11)
                  sw           zero, 8(tp)
                  lb           s1, 5(s11)
                  lb           a5, 16(s11)
                  sh           s8, -16(tp)
                  lb           zero, 13(tp)
                  lbu          gp, 13(tp) #end load_store_instr_stream_1
                  lbu          s3, 10(s11) #end load_store_instr_stream_0
                  la           s2, region_1+1744 #start riscv_load_store_rand_instr_stream_1
                  sra          s9, s3, t0
                  srai         t1, s11, 12
                  sw           a0, -644(s2)
                  addi         a7, s0, 31
                  sra          s5, s10, s11
                  xori         s10, a1, 136
                  sb           a5, -589(s2)
                  lbu          s9, -656(s2)
                  srai         s11, s5, 29
                  srli         t0, s11, 28
                  sll          t4, gp, gp
                  lbu          a6, 234(s2)
                  slt          s5, s5, s1
                  lbu          a0, -1328(s2)
                  lui          t6, 656467
                  sh           t6, -596(s2)
                  lb           a0, 91(s2)
                  slt          s11, t0, a6
                  lbu          t4, -1050(s2)
                  auipc        a2, 454928
                  srl          sp, t5, s7
                  slli         t1, s4, 29
                  sra          zero, a6, t3
                  slt          s1, t5, t1
                  and          s3, t1, s8
                  sh           a3, -652(s2)
                  lbu          a0, -1522(s2)
                  lh           tp, -478(s2)
                  or           t3, t5, ra
                  auipc        a0, 109883
                  xor          t2, t5, a2
                  auipc        t1, 902363
                  sll          s3, s7, zero
                  sh           a7, -204(s2)
                  srai         a2, a5, 13
                  andi         a5, t6, 1986
                  slti         gp, sp, 1156
                  sub          t1, a7, a3
                  sb           a6, 125(s2) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_1+534 #start load_store_instr_stream_1
                  la           s6, region_1+1291 #start load_store_instr_stream_2
                  lhu          tp, 1(s6)
                  la           s3, region_1+209 #start load_store_instr_stream_0
                  la           s9, region_1+241 #start load_store_instr_stream_3
                  lb           a4, -14(s6)
                  sh           s1, 60(s11)
                  sb           t4, -8(s6)
                  sb           ra, -224(s9)
                  lb           a5, -56(s3)
                  lhu          ra, 9(s6)
                  lb           s2, 52(s3)
                  sb           s9, -13(s6)
                  sb           t2, 19(s11)
                  sb           a0, 15(s6)
                  lb           t3, 17(s11)
                  lb           gp, 58(s3)
                  lbu          a6, -16(s6)
                  lw           s1, -101(s9)
                  lbu          a5, 11(s11)
                  lb           a6, 49(s11)
                  lhu          gp, -20(s11) #end load_store_instr_stream_1
                  lbu          a3, -96(s9)
                  lb           a6, 48(s3)
                  sb           s2, -2(s9)
                  lh           t5, 9(s6)
                  lb           a2, 19(s3)
                  lbu          a0, -62(s3)
                  sh           a1, 3(s6) #end load_store_instr_stream_2
                  sw           tp, -85(s9)
                  sb           t0, 249(s9)
                  sh           a4, -37(s9)
                  lh           t3, 119(s9) #end load_store_instr_stream_3
                  lh           a4, 41(s3) #end load_store_instr_stream_0
                  la           s3, region_0+790 #start riscv_load_store_rand_instr_stream_0
                  add          s6, a0, t1
                  sra          a3, s6, t3
                  ori          s10, sp, -192
                  lbu          tp, 44(s3)
                  sb           a0, -35(s3)
                  xori         gp, s1, 1227
                  lh           s2, -144(s3)
                  sb           s3, -87(s3)
                  sll          t6, tp, a3
                  add          a1, ra, a0
                  addi         a0, t1, 899
                  lhu          a7, -108(s3)
                  lb           a4, -25(s3)
                  lb           t1, 209(s3)
                  lb           t2, -206(s3)
                  lhu          s11, -168(s3)
                  lhu          t2, -236(s3)
                  lbu          t0, -190(s3)
                  lbu          t5, 71(s3)
                  srl          a2, s0, ra
                  slt          s11, s4, sp
                  ori          a5, a0, -1953
                  sub          a4, a6, s0
                  lhu          s2, -30(s3)
                  lb           t2, 189(s3)
                  slt          s1, zero, a4
                  lb           sp, 133(s3)
                  lb           gp, -151(s3)
                  lb           t6, 208(s3)
                  lh           a0, -238(s3)
                  srl          t1, s8, t0
                  lb           t3, -211(s3)
                  sub          a0, a4, s7
                  lbu          a4, 21(s3)
                  lb           a3, 32(s3)
                  sb           s4, -97(s3)
                  sh           t1, 40(s3)
                  sw           a0, -234(s3)
                  sw           t3, 226(s3)
                  lbu          a3, -136(s3)
                  and          a3, s11, s4
                  lbu          s5, 165(s3) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1133 #start riscv_load_store_hazard_instr_stream_0
                  lhu          a7, -203(sp)
                  sb           a7, -240(sp)
                  xori         s3, a6, 1015
                  lb           a3, -240(sp)
                  sub          s3, t1, s4
                  lbu          a3, -240(sp)
                  sb           a7, -248(sp)
                  lbu          gp, -248(sp)
                  lb           zero, -248(sp)
                  slti         s0, ra, 142
                  sb           t1, -248(sp)
                  sb           a2, -248(sp)
                  xori         s0, a6, 99
                  sb           a5, 244(sp)
                  lbu          t1, -51(sp)
                  sh           s5, -51(sp)
                  sub          a2, a3, ra
                  lbu          t1, -51(sp)
                  lhu          t0, -51(sp)
                  sb           s0, -51(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_1+1711 #start load_store_instr_stream_1
                  la           a5, region_1+1406 #start load_store_instr_stream_0
                  lbu          sp, 15(s3)
                  lbu          a0, -12(s3)
                  sb           a2, -1120(a5)
                  lb           s0, -6(s3)
                  sb           s3, -10(s3)
                  lb           t4, -541(a5)
                  lb           t6, 469(a5)
                  lb           s6, 10(s3)
                  sb           a2, 8(s3)
                  sb           s8, -2(s3)
                  sw           a1, -510(a5)
                  lbu          t0, -14(s3)
                  lhu          s9, 15(s3)
                  sb           gp, -1210(a5)
                  lb           s1, 0(s3) #end load_store_instr_stream_1
                  lb           t3, -677(a5)
                  sb           t4, 219(a5)
                  sh           s2, -1244(a5) #end load_store_instr_stream_0
                  la           t4, region_1+94 #start load_store_instr_stream_3
                  la           t6, region_1+1298 #start load_store_instr_stream_1
                  la           a2, region_1+405 #start load_store_instr_stream_4
                  la           ra, region_1+169 #start load_store_instr_stream_2
                  sb           a5, 39(t4)
                  lbu          s5, -6(t6)
                  sb           t6, -5(ra)
                  lh           a0, -35(ra)
                  la           s1, region_1+1294 #start load_store_instr_stream_0
                  lb           gp, -54(a2)
                  sb           s10, 6(ra)
                  lbu          s5, 23(ra)
                  lhu          s3, -56(t4)
                  lbu          a4, 8(t6)
                  lbu          a3, 231(s1)
                  lb           a1, 28(a2)
                  lb           a6, 36(ra)
                  sb           a5, -3(ra)
                  lhu          a6, 212(s1)
                  lh           gp, -37(a2)
                  lhu          a1, -47(a2)
                  sb           s8, -13(t4)
                  lbu          s11, -12(t6)
                  lh           zero, 15(ra)
                  sb           t2, -54(t4)
                  lbu          tp, 13(t6)
                  sh           t2, -30(t4)
                  sb           t4, 93(s1)
                  lbu          t5, 207(s1)
                  lbu          a3, 11(ra)
                  sb           s7, 38(a2)
                  lbu          a1, 7(t6)
                  lbu          s3, -25(t4) #end load_store_instr_stream_3
                  lbu          t5, -4(t6)
                  sb           s10, 6(t6) #end load_store_instr_stream_1
                  lh           s3, -33(ra) #end load_store_instr_stream_2
                  sw           s0, -57(a2) #end load_store_instr_stream_4
                  lbu          a6, 16(s1)
                  lbu          s10, 171(s1)
                  sh           t3, -54(s1) #end load_store_instr_stream_0
                  la           sp, region_1+1613 #start riscv_load_store_rand_instr_stream_2
                  srl          s3, a2, t2
                  addi         a0, a3, -809
                  xor          s11, s7, s4
                  sll          s9, s6, t2
                  lui          t2, 324046
                  sw           a2, -13(sp)
                  sra          gp, a2, a5
                  lh           t0, 13(sp)
                  nop
                  nop
                  sw           a7, 7(sp)
                  lhu          tp, -1(sp)
                  addi         t3, t1, 598
                  lbu          gp, -9(sp)
                  lbu          a4, -14(sp)
                  sll          s3, a1, s11
                  slli         t3, t0, 18
                  sh           gp, 15(sp)
                  lb           tp, -14(sp)
                  srai         s3, a2, 5
                  ori          a3, s8, -2008
                  lbu          t6, 10(sp)
                  lb           s1, 8(sp)
                  sb           s4, 0(sp)
                  lhu          s1, -3(sp)
                  auipc        s3, 494244
                  lb           t1, 13(sp)
                  add          a4, a5, gp
                  sh           s2, -5(sp)
                  sra          a1, s4, a6
                  sb           a2, 15(sp)
                  sb           s11, -11(sp)
                  lb           t1, 0(sp)
                  lb           a3, 10(sp)
                  sltiu        t3, t3, 1983
                  sw           a0, 11(sp)
                  slli         s10, s1, 6
                  lbu          a6, -11(sp)
                  ori          a5, s1, 560
                  lb           s3, 10(sp)
                  lbu          tp, 0(sp)
                  srl          s10, s3, s8
                  srli         a2, sp, 18
                  slti         gp, a5, 721
                  lw           s1, 15(sp)
                  lb           a5, -1(sp)
                  xori         s11, s7, -1595
                  slli         s5, s3, 5
                  sb           a3, -12(sp)
                  lb           s11, 14(sp)
                  xor          t5, a4, s1
                  lh           a6, -9(sp)
                  slli         a2, s8, 19
                  sltu         gp, s4, s10
                  andi         s6, t4, 1121
                  lb           zero, -4(sp)
                  lb           t0, -14(sp) #end riscv_load_store_rand_instr_stream_2
                  srli         a7, s11, 21
                  ori          t6, t6, 776
                  slli         t0, a3, 25
                  lui          t5, 155145
                  lui          t3, 92614
                  sltu         s2, zero, tp
                  sltu         t4, gp, a3
                  srl          s3, gp, a3
                  sltiu        a7, a7, 55
                  xor          s2, a1, a5
                  or           a1, t0, s5
                  xori         zero, a3, -1274
                  ori          s1, a7, -136
                  auipc        tp, 556749
                  slti         t4, a4, -236
                  slt          s11, t5, t5
                  bne          t3, t0, 33f
                  auipc        gp, 208504
                  auipc        a7, 102527
                  add          t4, s7, t0
                  sll          s2, s9, s0
                  add          t5, a1, a4
                  sub          a5, t0, s0
                  addi         sp, sp, 972
                  slt          tp, s8, s6
                  sltu         s10, gp, t6
                  or           s3, a7, s10
                  sll          a0, t5, zero
                  xori         a1, ra, 883
                  bgeu         s10, t5, 40f
                  lui          zero, 396268
                  slti         s11, t4, 214
                  blt          a6, a6, 38f
33:               bgeu         a6, s8, 42f
                  slti         t5, t1, 1591
                  or           t4, s10, s0
                  sub          t2, a3, a0
                  bge          t4, s10, 38f
38:               sltiu        s6, t3, 93
                  ori          t6, a1, -63
40:               lui          a5, 680724
                  srai         a6, s10, 1
42:               and          t6, a6, s11
                  sll          s2, a2, s7
                  andi         t1, a6, 1006
                  la           t1, region_0+65 #start riscv_load_store_hazard_instr_stream_3
                  lb           s6, 12(t1)
                  sb           a2, 12(t1)
                  sb           s0, 12(t1)
                  lbu          s6, 12(t1)
                  lbu          s0, 12(t1)
                  sb           t0, 12(t1)
                  lb           t3, 12(t1)
                  sb           t0, 12(t1)
                  lb           s3, 12(t1)
                  sra          t0, a6, s8
                  and          s5, s9, sp
                  sb           a4, 12(t1)
                  lbu          t5, 12(t1)
                  lb           sp, 12(t1)
                  lbu          ra, 12(t1)
                  lbu          s1, 12(t1)
                  lbu          tp, 12(t1)
                  sb           gp, 12(t1)
                  sb           t6, 12(t1)
                  sb           s11, 12(t1)
                  lbu          a6, 12(t1)
                  lb           gp, 12(t1) #end riscv_load_store_hazard_instr_stream_3
                  auipc        ra, 413309
                  sub          gp, zero, s3
                  sltu         a2, s7, s6
                  and          s1, t1, a7
                  bltu         s4, s10, 52f
                  slti         a2, s3, 1052
                  slti         zero, a0, 535
52:               auipc        t4, 216186
                  srai         tp, gp, 17
                  sltiu        a1, s3, -683
                  xor          a6, s7, s10
                  slti         ra, s8, -300
                  bgeu         t4, a2, 65f
                  addi         a2, s10, 63
                  sltu         a7, a3, t2
                  add          a0, t4, s0
                  sltiu        t1, a6, 975
                  slt          a6, t5, t0
                  lui          s3, 942809
                  lui          s6, 538278
65:               auipc        ra, 364203
                  srai         s2, a6, 6
                  xori         s0, t1, 1211
                  srai         a1, s5, 19
                  and          a2, s10, tp
                  nop
                  srl          s2, s11, t6
                  slli         s10, s11, 13
                  andi         a4, t3, -1577
                  sltu         a4, s11, t2
                  srli         a3, a7, 26
                  blt          s0, s6, 91f
                  beq          t2, zero, 94f
                  sltu         s2, a7, zero
                  or           gp, s0, s2
                  slti         a1, s11, -1874
                  add          s10, sp, s3
                  bltu         a0, t6, 96f
                  srai         t1, a1, 4
                  sltiu        a7, t5, -1908
                  sub          s1, sp, t6
                  srai         s6, gp, 26
                  or           a2, gp, s9
                  srl          t1, s5, s8
                  sub          t0, t6, gp
                  slt          t2, s1, s10
91:               srai         a3, s3, 29
                  xori         a4, ra, -558
                  blt          s1, t4, 105f
94:               auipc        zero, 329974
                  srl          a4, s1, a1
96:               bge          a4, a3, 111f
                  srl          s6, t4, t5
                  srai         s0, a4, 11
                  addi         s3, a4, -677
                  sltu         s11, t0, a0
                  sra          t5, a1, t6
                  auipc        tp, 179114
                  sra          t2, s10, tp
                  bge          a5, ra, 113f
105:              lui          s6, 1011942
                  sra          a0, s8, t1
                  addi         s9, a6, -1600
                  slt          gp, ra, t4
                  beq          s4, a4, 127f
                  or           t4, a6, a7
111:              or           a7, a2, s1
                  xor          a1, s6, s9
113:              bne          a0, a2, 127f
                  xori         sp, s0, 1370
                  sll          s10, a4, a7
                  bne          t0, t2, 122f
                  bne          s8, s2, 122f
                  or           s11, t3, s2
                  bltu         a2, s10, 135f
                  bgeu         s5, s7, 131f
                  and          a7, s10, s3
122:              srai         s1, a0, 19
                  nop
                  bgeu         s0, tp, 137f
                  sltiu        gp, tp, 871
                  auipc        a4, 754892
127:              sub          tp, a6, s9
                  slt          a3, s11, t0
                  sltiu        t2, t0, -1293
                  beq          t5, t2, 144f
131:              nop
                  blt          s10, s4, 147f
                  srl          gp, t2, t4
                  xori         ra, s4, 565
135:              sll          gp, s4, s5
                  blt          s5, s11, 146f
137:              sra          s9, s4, tp
                  andi         s3, t5, 877
                  lui          s11, 169227
                  slt          a7, tp, t1
                  addi         s11, a1, 1775
                  addi         t4, s6, -1284
                  or           t6, s9, s0
144:              beq          s5, s8, 150f
                  sltu         t0, s10, a4
146:              slt          s1, t3, s4
147:              add          s5, a7, a0
                  bne          t3, s5, 162f
                  xori         t3, s11, -1325
150:              or           s6, s9, s4
                  nop
                  addi         s10, t1, 1558
                  sra          t0, s6, tp
                  sltiu        a3, s5, -396
                  bltu         s4, s3, 160f
                  sll          a7, s9, a4
                  bne          zero, s11, 164f
                  sub          s3, a2, a0
                  lui          sp, 755900
160:              add          a6, ra, sp
                  auipc        a5, 264915
162:              nop
                  srai         t2, tp, 13
164:              sll          a6, s10, s7
                  sltiu        sp, s4, -1032
                  slt          s10, a0, a1
                  or           ra, t3, a7
                  sltiu        a2, a5, 377
                  slti         t2, s9, 1396
                  bge          a0, a6, 185f
                  srl          a0, a6, tp
                  srli         t5, a4, 3
                  bgeu         sp, ra, 185f
                  bgeu         t1, s8, 194f
                  xor          s0, sp, s5
                  srl          s3, t0, t5
                  srai         t6, a0, 8
                  srl          a3, a2, a4
                  beq          s11, s6, 188f
                  srl          s0, t2, t4
                  or           s11, a1, t1
                  srl          zero, a4, s1
                  sll          a5, s3, s6
                  auipc        s1, 43016
185:              addi         zero, a1, -2013
                  sltu         s9, a5, s2
                  bge          s5, t3, 205f
188:              bge          t4, zero, 197f
                  srl          sp, zero, s2
                  srli         s10, t5, 10
                  la           gp, sub_2
                  lui          a5, 921499
                  lui          t0, 76209
                  sll          t5, a5, a3
                  addi         gp, gp, -989
                  and          s2, t6, t6
                  sub          t1, s0, s0
sub_1_j2:         jalr         s10, gp, 989 #jump sub_1 -> sub_2
                  sub          a2, gp, s4
                  bge          a0, s6, 198f
                  andi         gp, a0, -2024
                  bge          s9, s2, 206f
                  srli         s6, a7, 22
194:              andi         a4, s0, -1188
                  bne          s3, a6, 202f
                  srli         t1, gp, 29
197:              sltiu        s1, a5, -682
198:              add          a2, a5, s2
                  ori          a7, a1, -322
                  sub          t6, t0, t0
                  srli         t3, tp, 2
202:              sltiu        a1, s3, 336
                  srl          s6, a7, ra
                  sltiu        s6, s11, 1315
205:              andi         s2, s6, -1801
206:              bltu         t3, t2, 212f
                  addi         t3, t5, 705
                  addi         s10, t3, 190
                  srai         s6, a6, 8
                  srl          a0, s2, s6
                  sltu         a7, s2, a4
212:              slti         a2, a0, 1191
                  xor          a0, a1, gp
                  or           s11, a5, a7
                  lui          s6, 921990
                  slli         s2, a3, 30
                  slti         sp, s6, -1250
                  sltu         a5, zero, s1
                  sltu         a7, a4, a6
                  slti         a0, s6, -725
                  slti         t6, s3, -346
                  bne          a4, s9, 238f
                  xor          s5, a1, a3
                  bge          s7, tp, 230f
                  nop
                  srai         s10, ra, 5
                  sltiu        a2, t6, 73
                  bltu         t4, s6, 233f
                  bge          t1, s9, 241f
230:              or           a1, s8, gp
                  xori         s1, tp, 1460
                  andi         tp, gp, -1100
233:              srl          tp, a4, a4
                  sll          t1, a1, t0
                  sltu         a3, t0, s3
                  slt          t1, s5, a0
                  lui          ra, 144256
238:              bge          s11, a4, 252f
                  slt          t5, a2, zero
                  srli         ra, a5, 20
241:              lui          s10, 929465
                  srai         sp, s11, 21
                  andi         s6, s1, 24
                  andi         t1, s4, 1002
                  andi         s10, s4, 1012
                  addi         s9, t3, 947
                  andi         t5, s2, -355
                  add          zero, t0, t6
                  slt          s1, s9, a7
                  ori          a2, s7, 1802
                  srl          a6, s7, t4
252:              blt          a7, s5, 265f
                  bltu         s6, s2, 265f
                  sltu         tp, a4, s9
                  slt          a5, s0, a1
                  sltiu        s10, t3, -655
                  blt          s1, a6, 271f
                  slt          s0, s3, s7
                  sltiu        ra, s10, 1637
                  xori         s9, a7, -1995
                  xor          t3, s1, s10
                  blt          s0, a0, 265f
                  srl          a3, s6, s8
                  srli         s0, a6, 8
265:              nop
                  slt          t0, a5, s3
                  sub          t4, s10, a4
                  or           a3, gp, a1
                  slli         a7, s3, 16
                  srl          sp, s11, s3
271:              bltu         s5, t5, 286f
                  andi         a0, s10, 1906
                  ori          a3, t0, 178
                  bge          s7, zero, 288f
                  bgeu         t3, sp, 280f
                  beq          s9, s0, 287f
                  add          s2, a4, a2
                  nop
                  ori          s10, zero, -82
280:              sub          s9, t0, t5
                  blt          t1, s4, 301f
                  xor          sp, s6, t4
                  xori         tp, s4, 317
                  bne          s9, s11, 301f
                  sub          ra, gp, s1
286:              and          s10, a0, a1
287:              xor          sp, s7, t1
288:              andi         s10, s10, -1487
                  slt          a1, s0, a6
                  srli         a6, s6, 12
                  ori          gp, s1, -1947
                  bgeu         a7, t4, 298f
                  bgeu         s5, s2, 310f
                  sra          a3, s2, s6
                  auipc        a1, 744249
                  xor          a0, s3, ra
                  add          s3, sp, a1
298:              beq          a0, s3, 309f
                  bne          sp, t5, 309f
                  andi         s10, s7, -1006
301:              bgeu         s5, t2, 316f
                  bge          t6, t1, 317f
                  addi         tp, s0, 554
                  nop
                  blt          s10, t3, 306f
306:              slt          t6, s3, s8
                  ori          a2, a0, 1069
                  andi         zero, s9, 1879
309:              sltu         a6, t0, s5
310:              blt          s7, s7, 325f
                  beq          s2, t0, 318f
                  andi         s3, s7, -1308
                  andi         s11, a3, 826
                  andi         tp, s7, 1230
                  slt          gp, tp, t6
316:              xor          tp, t6, a5
317:              bltu         tp, s3, 333f
318:              srai         sp, t5, 30
                  blt          t6, s6, 325f
                  sra          s6, s6, s11
                  bge          t1, t0, 334f
                  srl          t5, sp, a7
                  addi         ra, a4, -163
                  ori          t1, s3, -1238
325:              add          a0, t3, t4
                  bge          a6, sp, 335f
                  srai         s1, gp, 4
                  sltiu        a4, ra, -1352
                  slt          a4, t0, s1
                  bge          a4, t3, 341f
                  srai         a1, a1, 11
                  bge          a3, a5, 352f
333:              sub          s11, t2, s5
334:              or           s3, s3, s5
335:              bne          s5, a4, 343f
                  srl          a1, s9, s3
                  blt          t4, s10, 351f
                  srai         t5, s6, 20
                  bge          t6, sp, 342f
                  sub          s3, t4, gp
341:              bne          t2, s5, 358f
342:              bgeu         a5, s4, 343f
343:              andi         gp, s5, -1877
                  sra          t3, s2, s10
                  addi         t2, s4, 1485
                  and          a2, gp, a5
                  or           t6, s4, s6
                  slti         t0, sp, -969
                  bgeu         t1, t2, 355f
                  sub          a2, t3, s9
351:              blt          s3, a0, 368f
352:              srl          zero, a5, s5
                  xor          a2, zero, s2
                  sra          t3, a4, a0
355:              andi         s1, a3, 1193
                  and          s6, s2, a0
                  blt          t2, a5, 372f
358:              beq          s9, s8, 372f
                  andi         a1, s10, -1200
                  ori          a6, a1, 1324
                  bge          tp, s11, 376f
                  sltiu        gp, t6, -689
                  slt          s1, t4, t5
                  beq          t6, t3, 370f
                  addi         s0, t2, -414
                  slti         t1, t4, 523
                  nop
368:              sltiu        sp, tp, 1942
                  addi         a6, tp, -1072
370:              bltu         s10, a3, 375f
                  sll          s10, a3, t4
372:              ori          t1, s1, 350
                  nop
                  sltiu        t3, s4, 1045
375:              beq          s1, s3, 390f
376:              sra          s5, t1, zero
                  slti         t6, s10, -624
                  xori         a7, s9, -620
                  lui          a1, 883410
                  slli         t0, a7, 21
                  srai         t0, t3, 25
                  slt          s11, s9, s4
                  beq          a1, a1, 388f
                  auipc        a7, 299841
                  xori         a1, tp, 1971
                  bgeu         s8, s4, 397f
                  bge          a3, s5, 401f
388:              sltu         s6, ra, a0
                  sltu         s1, a1, a6
390:              sub          ra, s9, t0
                  beq          s7, a7, 405f
                  bge          a5, s11, 404f
                  beq          ra, t3, 403f
                  addi         s3, t6, -973
                  add          a1, a3, t2
                  srli         t4, s10, 31
397:              andi         zero, s8, -1216
                  bgeu         s6, s1, 405f
                  slli         t0, a7, 31
                  bne          tp, sp, 405f
401:              srl          s5, s11, s4
                  add          a7, s0, a7
403:              ori          sp, s10, 1096
404:              xori         a2, s0, 1443
405:              xori         t1, zero, 468
                  auipc        t5, 652331
                  srai         s5, a0, 12
                  sltiu        a4, t1, -939
                  xor          t3, s6, t6
                  auipc        t2, 853305
                  srli         t2, a2, 18
                  lw           s10, 4(s7)
                  xor          t2, tp, t3
                  slt          ra, a3, s10
                  sll          a4, t2, t4
                  addi         s7, s7, 12
                  srli         a0, a3, 11
814:              addi x27, x26, 0
814:              jalr x27, x27, 0
sub_2:            addi         s7, s7, -36
                  sub          a1, t5, s2
                  add          ra, tp, t6
                  sw           s10, 4(s7)
                  or           s3, s9, s1
                  slt          s5, s4, s6
                  addi         a5, tp, -1443
                  sra          gp, s6, a2
                  slli         a6, t1, 11
                  slti         ra, a0, -110
                  slt          sp, a4, s1
                  srli         s6, t6, 15
                  la           sp, region_0+1849 #start riscv_load_store_hazard_instr_stream_1
                  sb           s2, 1(sp)
                  lbu          a7, 1(sp)
                  slt          s3, sp, s11
                  lb           t5, 1(sp)
                  lbu          t0, -52(sp)
                  sb           s7, -52(sp)
                  lb           t2, -52(sp)
                  sb           t2, -52(sp)
                  sb           a0, -4(sp)
                  sb           sp, -4(sp)
                  lbu          s10, -4(sp)
                  sltu         s11, t4, t6
                  andi         s0, a5, -28
                  lb           a2, -4(sp)
                  lbu          a1, -4(sp)
                  lb           t1, -4(sp)
                  or           s2, a6, a6
                  lb           a5, -4(sp)
                  lbu          t5, 100(sp)
                  sb           zero, 100(sp)
                  sb           sp, 100(sp)
                  addi         t0, a4, -1455
                  sb           s11, -6(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+329 #start riscv_load_store_hazard_instr_stream_2
                  sh           a7, 15(tp)
                  and          s9, s3, tp
                  lhu          s2, 15(tp)
                  sw           s0, 15(tp)
                  lw           a7, 15(tp)
                  sb           a2, -16(tp)
                  lbu          s6, 8(tp)
                  lbu          ra, 8(tp)
                  andi         t3, a2, -620
                  lbu          a5, -14(tp)
                  lbu          t1, 6(tp)
                  lb           s5, 6(tp)
                  lbu          s1, -14(tp)
                  lbu          t2, -4(tp)
                  auipc        s2, 758779
                  sb           s7, 6(tp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+872 #start riscv_load_store_hazard_instr_stream_3
                  addi         a5, t1, -616
                  lbu          s0, 853(sp)
                  lbu          t4, 853(sp)
                  slti         a5, zero, 1095
                  lbu          tp, 853(sp)
                  sb           t2, 853(sp)
                  slt          ra, s5, s8
                  lbu          a6, 853(sp)
                  srl          s1, s5, s7
                  sb           zero, 853(sp)
                  ori          s6, a0, 1113
                  lb           a0, 853(sp)
                  and          a3, t4, a4
                  lbu          a6, 853(sp)
                  slti         t2, a6, -1713
                  lb           s5, 853(sp)
                  sb           s5, 785(sp)
                  sb           a1, 785(sp)
                  sb           s3, 785(sp)
                  lb           s1, 785(sp)
                  sb           sp, 547(sp)
                  sb           s3, 806(sp)
                  sh           a5, 806(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t1, region_0+1962 #start load_store_instr_stream_2
                  la           t0, region_0+498 #start load_store_instr_stream_0
                  la           t2, region_0+497 #start load_store_instr_stream_1
                  lb           t6, -141(t2)
                  lb           t5, -3(t0)
                  sh           ra, -5(t2)
                  lbu          sp, -24(t2)
                  lb           a3, -1558(t1)
                  sb           s2, -8(t0)
                  lhu          s9, -1498(t1)
                  sh           s8, -289(t2)
                  sb           s0, -723(t1)
                  lb           a2, 425(t2)
                  lb           a2, -1765(t1)
                  lbu          sp, 15(t0)
                  lb           a0, -1595(t1)
                  lb           a6, 5(t0)
                  lw           t5, 10(t0)
                  lb           s5, -309(t1)
                  lbu          sp, 89(t2)
                  lb           a0, -1419(t1) #end load_store_instr_stream_2
                  lb           a6, 801(t2) #end load_store_instr_stream_1
                  lbu          s0, -3(t0)
                  lb           a1, 5(t0) #end load_store_instr_stream_0
                  la           tp, region_1+1311 #start load_store_instr_stream_1
                  la           s11, region_1+196 #start load_store_instr_stream_4
                  la           t6, region_1+1544 #start load_store_instr_stream_2
                  la           ra, region_1+96 #start load_store_instr_stream_3
                  lw           t0, -20(ra)
                  la           gp, region_1+953 #start load_store_instr_stream_0
                  lbu          sp, 125(gp)
                  sb           s6, 168(tp)
                  lhu          s5, 6(t6)
                  sw           t5, -104(s11)
                  lbu          t4, 89(gp)
                  lh           s10, -175(tp)
                  lbu          zero, 11(ra)
                  lb           s3, -65(gp)
                  lbu          s0, 20(s11)
                  lw           t5, -40(s11)
                  sb           t0, -38(gp)
                  lb           a3, -11(t6)
                  lhu          a6, 114(s11)
                  lb           a3, 61(ra)
                  lh           t5, -45(tp)
                  lh           s10, -153(tp)
                  lb           a4, -18(gp)
                  lb           s2, 60(ra)
                  lh           sp, 2(t6)
                  lbu          s6, 72(gp)
                  sb           a6, -57(ra)
                  sb           a6, 9(t6)
                  sb           t6, -78(tp)
                  lb           t4, -15(t6)
                  lb           s9, 10(gp)
                  lbu          t2, 122(gp)
                  lbu          a1, -80(s11)
                  lw           t3, -28(ra)
                  sb           a7, -198(tp)
                  lh           s2, 6(t6)
                  lbu          s3, 56(tp)
                  sw           tp, -32(s11)
                  sb           a2, -158(gp)
                  lbu          a6, -9(ra)
                  sb           a0, 59(ra) #end load_store_instr_stream_3
                  lbu          a1, -65(s11)
                  lb           a6, -54(tp) #end load_store_instr_stream_1
                  lb           s6, -117(s11) #end load_store_instr_stream_4
                  lbu          s5, -13(t6) #end load_store_instr_stream_2
                  lbu          zero, -128(gp) #end load_store_instr_stream_0
                  la           t2, region_1+581 #start load_store_instr_stream_1
                  lbu          a7, 253(t2)
                  la           tp, region_1+136 #start load_store_instr_stream_0
                  la           s6, region_1+1428 #start load_store_instr_stream_2
                  la           t6, region_1+603 #start load_store_instr_stream_3
                  lb           a3, -9(t2)
                  sb           a2, 454(tp)
                  sb           t4, 1098(tp)
                  lh           t1, 12(s6)
                  lbu          a4, 56(t2)
                  sb           t5, -196(t2)
                  lbu          s5, -3(s6)
                  sb           t6, -229(t2)
                  lb           a3, 10(s6)
                  lbu          a4, -10(s6)
                  sb           s11, 7(s6)
                  lh           a6, 382(tp)
                  sh           t3, 16(s6)
                  lb           a5, 55(t2)
                  sb           a3, -11(s6)
                  lbu          t5, 772(t6)
                  lb           t4, 1178(t6)
                  lh           zero, -73(t2)
                  lhu          t1, -4(s6)
                  lbu          ra, 1227(tp)
                  sb           s0, 2(s6) #end load_store_instr_stream_2
                  lb           s10, 606(t6)
                  lbu          ra, -162(t2)
                  lw           a2, 865(t6)
                  sb           s0, 1127(tp)
                  sb           s2, 463(t6)
                  lb           a0, 58(t2) #end load_store_instr_stream_1
                  lb           t5, 296(t6) #end load_store_instr_stream_3
                  lw           a2, 168(tp) #end load_store_instr_stream_0
                  la           a5, region_0+607 #start riscv_load_store_rand_instr_stream_1
                  sb           s0, 1042(a5)
                  andi         a2, ra, -1880
                  lbu          s1, -222(a5)
                  sltiu        a4, zero, -971
                  lh           t5, -41(a5)
                  sltu         a6, s3, t3
                  sb           s1, 630(a5)
                  sb           a0, 1058(a5)
                  lw           t6, 469(a5)
                  lb           s11, 222(a5)
                  sh           s5, 1083(a5)
                  sh           s3, 1381(a5)
                  sb           s4, 1238(a5)
                  lbu          a4, 16(a5)
                  srai         t4, s2, 24
                  sb           s7, 929(a5)
                  sb           s1, 944(a5)
                  sh           t3, 855(a5)
                  sb           s10, -297(a5)
                  sb           zero, 960(a5)
                  lhu          s0, 1035(a5)
                  add          s6, a5, a4
                  add          t3, sp, t4
                  auipc        s11, 748329
                  sb           t1, -126(a5)
                  srai         a6, s0, 8
                  xori         a0, t3, -1033
                  lbu          t1, 836(a5)
                  lbu          t1, 1294(a5)
                  nop
                  lbu          s3, 128(a5)
                  slt          a2, s11, s3
                  sb           s11, 734(a5)
                  lb           a3, 1377(a5)
                  lh           t4, 1061(a5)
                  lw           t3, 169(a5)
                  sb           s3, -430(a5)
                  srl          a1, t3, a1
                  sb           a1, 988(a5)
                  slli         t1, a7, 3
                  lb           s2, 247(a5)
                  lbu          a4, -528(a5) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_0+376 #start load_store_instr_stream_1
                  la           ra, region_0+1870 #start load_store_instr_stream_2
                  sh           s4, -10(s5)
                  lhu          s6, 0(ra)
                  lbu          s9, -11(ra)
                  la           a5, region_0+348 #start load_store_instr_stream_0
                  lw           s11, -60(a5)
                  lhu          s0, -52(a5)
                  lbu          t2, -1(ra)
                  lbu          tp, 15(s5)
                  lh           zero, 58(a5)
                  lbu          sp, 1(s5)
                  sb           a1, 0(ra)
                  lhu          a2, -4(ra) #end load_store_instr_stream_2
                  lbu          s3, -14(s5)
                  lbu          t4, -3(a5)
                  lb           t0, -12(s5)
                  lbu          t1, -11(s5) #end load_store_instr_stream_1
                  sb           s6, -37(a5) #end load_store_instr_stream_0
                  la           a4, region_1+393 #start riscv_load_store_rand_instr_stream_3
                  lbu          a2, 2(a4)
                  sb           sp, 9(a4)
                  srli         t3, ra, 17
                  sb           ra, 12(a4)
                  lbu          s5, 14(a4)
                  sub          s6, zero, s3
                  slt          a0, s1, t4
                  srli         s3, s1, 19
                  nop
                  sll          s1, s0, s8
                  or           zero, s5, s0
                  srl          s9, t2, s5
                  lb           t5, -2(a4)
                  and          t5, a7, s5
                  lh           s11, 9(a4)
                  srl          s2, s10, a5
                  addi         ra, s4, 1784
                  slti         t4, t5, 964
                  add          s9, a3, s10
                  srl          s5, s7, tp
                  and          t0, s0, s4
                  ori          a3, s9, -1481
                  slli         a6, t4, 14
                  lb           a2, 4(a4)
                  lbu          a6, -4(a4)
                  xori         a2, s7, 89
                  andi         s3, t1, -890
                  sb           zero, -13(a4)
                  sb           t6, 2(a4)
                  addi         t6, s1, -1915
                  add          s10, t2, s6
                  lbu          s0, 7(a4)
                  or           s5, s0, s10
                  sltu         s9, t3, s2
                  srl          t3, ra, zero
                  lui          gp, 678053
                  sra          s2, s11, t4
                  auipc        t3, 1029680
                  srai         sp, a4, 0
                  lbu          s6, -10(a4)
                  add          t6, zero, s6
                  lb           s9, -14(a4)
                  lhu          t4, -9(a4)
                  lbu          t4, -7(a4) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_0+639 #start riscv_load_store_rand_instr_stream_0
                  sb           s7, 45(s9)
                  sb           t4, -46(s9)
                  auipc        ra, 502736
                  addi         t0, s10, 833
                  sll          t3, t5, zero
                  lbu          gp, -6(s9)
                  lw           t5, 1(s9)
                  or           a6, s7, t4
                  sltu         s3, s11, s5
                  srli         gp, gp, 15
                  add          s0, s0, sp
                  lb           s6, 42(s9)
                  srl          t3, t3, s7
                  andi         a2, a6, 1534
                  sb           gp, 20(s9)
                  lui          t6, 974812
                  lui          a4, 179630
                  ori          tp, a7, 1669
                  sb           a3, 50(s9)
                  sh           s8, -5(s9)
                  or           ra, s4, t0
                  lb           gp, 19(s9)
                  xor          a2, s4, a7
                  lb           t0, -59(s9)
                  addi         t0, s9, 1404
                  sltiu        tp, s5, -1703
                  add          t5, t0, s8
                  srai         a7, a7, 5
                  addi         a2, s11, -156
                  lb           t2, 8(s9)
                  srli         a7, tp, 30
                  lb           s6, 6(s9)
                  sh           tp, -7(s9)
                  lw           t0, -7(s9)
                  sh           t6, 61(s9) #end riscv_load_store_rand_instr_stream_0
                  srli         s5, a3, 21
                  sll          t0, sp, t0
                  slt          t3, a1, s3
                  slt          s3, t1, s9
                  addi         a4, s2, 1244
                  bgeu         s7, s8, 16f
                  andi         s3, s8, 813
                  sltu         t1, t5, zero
                  slli         sp, t3, 20
                  xor          a5, s1, s5
                  slti         t1, sp, -835
                  blt          a4, t3, 27f
                  sub          t4, t3, s10
                  srl          t0, a7, a2
                  beq          t0, gp, 23f
                  bge          s2, a2, 23f
16:               sltu         sp, gp, s11
                  sltiu        a3, s2, -1809
                  bltu         s2, s9, 25f
                  srl          s9, s5, zero
                  sltu         a1, t4, sp
                  srli         zero, t0, 21
                  sll          t2, tp, s5
23:               blt          s10, t3, 42f
                  nop
25:               srli         sp, sp, 22
                  sltiu        a0, a5, -1804
27:               andi         t5, a5, -1928
                  sub          tp, ra, s8
                  srl          s9, a5, a4
                  add          s9, s3, t5
                  bgeu         sp, zero, 50f
                  auipc        s3, 706898
                  sltu         a7, s11, a4
                  srli         t4, s8, 7
                  bgeu         t0, s3, 52f
                  bltu         s10, s11, 55f
                  slli         s6, a5, 20
                  and          t4, s2, a3
                  addi         t6, a7, 1005
                  srai         a3, a5, 16
                  ori          a6, tp, 1968
42:               bgeu         s10, a4, 48f
                  sltu         s3, t4, s1
                  srai         s11, a5, 17
                  nop
                  slt          t1, a7, t1
                  srli         t1, tp, 14
48:               srl          zero, s4, a7
                  sltiu        t3, zero, 701
50:               xor          s10, a1, t6
                  add          a0, s4, a4
52:               sub          tp, s1, a1
                  bgeu         a6, t1, 71f
                  slti         ra, s11, -1803
55:               bne          ra, tp, 64f
                  sltu         s10, a7, t2
                  add          a1, a7, gp
                  xori         ra, t5, 1606
                  sltu         a2, t4, a7
                  sra          s0, gp, a7
                  xor          zero, a6, a7
                  sltiu        a5, a5, 2029
                  lui          s5, 112172
64:               sll          t5, a4, t3
                  ori          zero, a4, -1846
                  blt          s0, sp, 76f
                  blt          s7, a6, 71f
                  slli         t4, s0, 4
                  lui          a1, 465017
                  srli         t6, ra, 11
71:               auipc        t1, 708800
                  andi         s3, s7, -438
                  slli         zero, a3, 22
                  add          s10, s11, t4
                  sub          t3, tp, t4
76:               sub          a3, gp, t2
                  beq          gp, t3, 85f
                  addi         t4, t6, 1490
                  bne          s10, zero, 89f
                  slti         a7, s0, -887
                  bltu         a7, s2, 85f
                  sltiu        s6, t1, 1913
                  blt          s9, zero, 92f
                  nop
85:               and          a4, s1, t3
                  bgeu         s1, t4, 101f
                  sltu         gp, a6, a6
                  addi         a2, a5, 1353
89:               srli         a6, s10, 11
                  sltiu        a1, s11, -1487
                  bge          a0, s8, 109f
92:               slt          t4, s10, ra
                  beq          s6, t1, 95f
                  ori          s5, a5, -1506
95:               sltiu        a7, t4, -25
                  bne          s7, t1, 111f
                  srl          s3, s10, a7
                  slti         s1, s1, -1974
                  sltiu        gp, a7, 644
                  blt          s7, s0, 103f
101:              ori          sp, t1, 1719
                  nop
103:              sltu         s6, s3, a3
                  nop
                  sra          tp, s1, s2
                  bge          zero, s3, 117f
                  blt          s4, s9, 108f
108:              and          t4, a5, t5
109:              and          t1, sp, s8
                  srai         s9, a3, 25
111:              andi         s9, tp, -562
                  and          t1, s8, a4
                  beq          s9, t3, 118f
                  sltu         t1, t5, s5
                  ori          s6, a0, -66
                  sra          s3, a1, s11
117:              xor          s1, zero, a3
118:              srli         t0, tp, 11
                  sub          a5, a7, t3
                  and          s10, t1, s4
                  xori         t1, s6, 236
                  sll          s10, gp, s0
                  sltiu        s10, a4, 318
                  sll          sp, a7, a2
                  srli         ra, a2, 22
                  la           t1, region_0+506 #start riscv_load_store_hazard_instr_stream_0
                  sb           s11, -238(t1)
                  lb           t0, -162(t1)
                  sb           zero, 192(t1)
                  lbu          gp, 192(t1)
                  slli         s6, t2, 18
                  lb           sp, 192(t1)
                  sb           t4, 192(t1)
                  lhu          a3, 192(t1)
                  ori          s0, s1, 1936
                  lh           t4, 192(t1)
                  lb           t4, 192(t1)
                  srl          sp, a7, a5
                  lh           s6, 192(t1)
                  sb           a7, 8(t1)
                  addi         s9, t4, 1393
                  lb           gp, 8(t1)
                  lhu          s2, 8(t1)
                  andi         s0, s7, 292
                  lh           t5, -230(t1)
                  sb           a0, -230(t1)
                  lh           t0, -230(t1)
                  lb           s2, -60(t1)
                  add          t3, s11, s1
                  lh           s5, -60(t1)
                  lhu          a2, -60(t1)
                  ori          s5, gp, 2011
                  lb           t0, 9(t1) #end riscv_load_store_hazard_instr_stream_0
                  auipc        s10, 550571
                  auipc        a5, 607168
                  bgeu         s2, t6, 139f
                  srli         s2, s11, 1
                  srli         a7, a5, 17
                  slli         s1, s6, 10
                  slti         t2, s4, -1525
                  bne          s7, gp, 147f
                  slli         s10, sp, 7
                  addi         t0, t3, 1079
                  ori          gp, s7, -19
                  sra          a2, gp, a2
                  auipc        t6, 650618
139:              srl          s6, a6, a3
                  bne          a4, t0, 160f
                  bltu         s1, a2, 150f
                  or           s0, tp, s2
                  bltu         a5, t4, 154f
                  sll          sp, s2, s1
                  srli         s5, zero, 6
                  lui          a2, 209111
147:              add          s2, a1, a3
                  srai         t3, a1, 16
                  xori         s6, s5, -490
150:              sltu         s5, t0, sp
                  xori         a7, a0, -1885
                  sltiu        s5, a5, 1420
                  slt          t3, a0, s2
154:              bgeu         ra, t2, 164f
                  sra          s1, s8, s0
                  beq          t5, s5, 173f
                  srai         a6, gp, 16
                  slti         a1, t1, 1440
                  slli         t2, s2, 30
160:              ori          t0, s0, 2044
                  beq          sp, s3, 172f
                  andi         t5, zero, 660
                  nop
164:              sltiu        t0, s1, -1460
                  blt          s10, zero, 166f
166:              auipc        a6, 477180
                  sll          gp, t1, a4
                  or           s1, a5, s4
                  bltu         s0, s1, 176f
                  sra          t0, s3, s4
                  and          a5, s7, a6
172:              blt          a5, ra, 186f
173:              add          t2, ra, s7
                  slli         s11, tp, 2
                  bne          a0, a1, 190f
176:              nop
                  srai         s2, a2, 27
                  add          a4, t3, t5
                  addi         s0, a4, -1836
                  srai         zero, s10, 11
                  andi         t1, a7, 983
                  or           gp, s1, a2
                  srli         s9, t0, 8
                  add          ra, s11, zero
                  sub          s1, tp, a0
186:              srai         s0, a2, 20
                  auipc        zero, 191221
                  sll          a4, a2, s10
                  bne          t1, ra, 207f
190:              srl          s5, zero, sp
                  blt          zero, t4, 194f
                  addi         gp, gp, -583
                  bltu         s1, a6, 201f
194:              nop
                  andi         s9, s8, -2042
                  xori         gp, s7, 1818
                  srli         zero, t5, 13
                  slt          t6, s0, a5
                  slti         t3, a1, 1036
                  srli         a0, s6, 3
201:              lui          a1, 550788
                  bge          a6, t3, 211f
                  sltu         t5, t4, a3
                  beq          a7, t1, 222f
                  srl          t3, s5, t3
                  xor          s11, a7, a3
207:              sra          s1, t5, s0
                  blt          zero, t6, 213f
                  add          t3, a0, s5
                  addi         a4, a2, 1705
211:              sltiu        a0, t6, -1564
                  add          s3, s1, s7
213:              bgeu         a2, t4, 228f
                  addi         a6, s5, -1242
                  bgeu         s0, s0, 219f
                  slt          a4, t2, s0
                  slli         t5, t1, 4
                  addi         t1, a3, -1969
219:              and          a3, tp, sp
                  bltu         a7, s7, 224f
                  add          t5, s11, s9
222:              andi         a6, s1, 1256
                  add          t4, a4, s3
224:              sll          s9, a3, sp
                  blt          s6, tp, 234f
                  srl          a5, a1, s7
                  or           s1, s7, s7
228:              and          t6, gp, s0
                  xor          zero, s3, a7
                  sub          s1, a7, a7
                  sll          s1, t1, s3
                  srai         t1, s9, 31
                  srl          t1, a6, a1
234:              bne          sp, s7, 236f
                  beq          a7, a0, 246f
236:              sltiu        s1, s4, 56
                  srl          s6, a5, s10
                  or           gp, s10, t0
                  srli         s5, t6, 19
                  xori         a3, a6, -1875
                  slt          a5, t6, a4
                  beq          t5, a5, 258f
                  lui          s11, 478012
                  slt          t5, s11, s1
                  nop
246:              or           s9, s8, t5
                  sub          a5, sp, s2
                  xori         a2, tp, 1510
                  sltiu        a0, s5, -134
                  or           s5, s3, sp
                  sltiu        s1, t4, -915
                  beq          a5, tp, 261f
                  slli         a7, gp, 5
                  sra          t0, t6, s6
                  bgeu         t5, a6, 261f
                  nop
                  bne          s5, a5, 276f
258:              bltu         a7, a4, 278f
                  bge          t1, s2, 278f
                  or           a3, t0, s3
261:              ori          s1, a7, -911
                  srli         t4, sp, 10
                  srli         s10, s2, 3
                  xori         s10, s8, 963
                  bne          a5, a1, 284f
                  slli         a7, ra, 0
                  xori         t2, gp, 476
                  andi         s10, s2, -1407
                  slli         a2, t2, 18
                  bgeu         gp, t0, 279f
                  bgeu         sp, t4, 279f
                  bgeu         s11, ra, 282f
                  and          t4, a4, s9
                  slt          t3, a4, s4
                  blt          t2, a4, 279f
276:              add          t2, a0, s11
                  sra          a5, s6, sp
278:              sll          s10, a1, s0
279:              addi         s11, t4, 1546
                  add          gp, a0, a0
                  srl          s9, gp, a2
282:              slti         s11, s8, -291
                  slti         s1, a3, 1465
284:              sra          a3, s10, s1
                  blt          a0, a7, 286f
286:              slti         t1, t1, 259
                  srai         t0, s6, 7
                  auipc        t1, 555737
                  bge          a2, gp, 293f
                  and          t4, ra, t1
                  blt          s10, a6, 306f
                  sltiu        a6, ra, 346
293:              bgeu         s7, s3, 313f
                  auipc        a2, 400334
                  sll          s10, t6, a6
                  nop
                  srai         a3, t3, 27
                  add          a7, zero, tp
                  sll          s1, tp, s9
                  srli         s5, tp, 11
                  ori          t1, a2, -273
                  ori          s0, a6, 1893
                  add          a6, t2, s4
                  andi         s9, s1, 1317
                  bgeu         s9, s2, 311f
306:              sub          a5, s6, zero
                  srli         a4, t6, 12
                  or           s0, s5, a7
                  slli         a7, t5, 10
                  lui          s6, 582116
311:              nop
                  addi         a2, gp, 370
313:              add          ra, a4, t0
                  auipc        s0, 824587
                  srl          t3, sp, tp
                  xor          a5, s1, a6
                  auipc        s9, 491737
                  sll          t3, a3, s4
                  slti         gp, a3, 2012
                  sll          zero, a0, a4
                  sltiu        t6, s4, 929
                  add          s11, a1, t4
                  la           sp, region_1+214 #start riscv_load_store_rand_instr_stream_2
                  lb           a2, 923(sp)
                  sh           s3, 616(sp)
                  sb           sp, 1728(sp)
                  lw           s11, 34(sp)
                  andi         s6, a6, 1240
                  ori          t0, a2, 774
                  sll          s11, t2, s1
                  lbu          a3, 964(sp)
                  lui          t0, 995852
                  ori          t4, s8, -1783
                  ori          t2, a3, -31
                  lbu          t4, 1373(sp)
                  xor          t1, a0, tp
                  and          s11, a6, zero
                  sw           gp, 846(sp)
                  lh           tp, 106(sp)
                  slti         a5, t3, 375
                  lbu          s0, 105(sp)
                  lbu          s0, 471(sp)
                  sb           t6, 20(sp)
                  lbu          a5, 1265(sp)
                  lb           t5, 653(sp)
                  srli         a5, s7, 25
                  lbu          s11, 117(sp)
                  andi         s0, t2, 601
                  add          s0, s4, sp
                  lb           t6, 662(sp)
                  slli         t4, s9, 6
                  lb           s11, 705(sp)
                  lb           t5, 1398(sp)
                  sltu         a2, t4, t6
                  sh           a0, 984(sp)
                  sra          s5, t0, s3
                  lb           a3, 216(sp)
                  or           a3, a4, a0
                  andi         ra, t5, -455
                  xori         a5, tp, -1617
                  sltiu        s5, a5, -735
                  lh           t3, 1660(sp)
                  and          zero, s9, tp
                  nop
                  sltu         a1, s9, a1
                  sll          t5, s11, s6
                  srai         s9, a5, 6
                  lbu          s6, 1203(sp)
                  andi         a5, t3, -14
                  sltiu        s0, a0, -601
                  lb           t1, 861(sp)
                  lbu          s9, 537(sp)
                  lh           a1, 92(sp)
                  slt          s3, a2, a1
                  lb           t6, 1539(sp)
                  sh           t3, 362(sp) #end riscv_load_store_rand_instr_stream_2
                  bge          s11, a3, 342f
                  sra          t3, t0, t5
                  slti         t6, s3, 240
                  sltiu        s2, s0, -1133
                  slti         sp, ra, 714
                  sub          a0, s0, a5
                  lui          a0, 432002
                  bge          a0, t6, 346f
                  bne          t4, t6, 342f
                  add          zero, tp, t0
                  andi         s5, s6, -72
                  srli         s0, s5, 22
                  srai         t0, t4, 6
                  beq          t0, s5, 346f
                  add          s6, t1, t2
                  and          t0, s5, t5
                  beq          gp, sp, 344f
                  andi         a1, sp, -865
                  sltu         s10, s6, s1
342:              slli         s9, a4, 8
                  srli         t6, s8, 16
344:              ori          t4, t5, 1332
                  andi         t3, s6, 1470
346:              auipc        s5, 660291
                  sltu         t5, t6, s4
                  sltiu        tp, s1, 780
                  sltiu        a3, t5, -1099
                  ori          s3, a7, 26
                  bgeu         a2, a5, 359f
                  ori          t3, t4, -1192
                  lui          tp, 164607
                  or           a5, s2, t0
                  andi         ra, t4, -1279
                  andi         t6, t2, 387
                  beq          s7, t5, 368f
                  lui          s1, 691894
359:              sll          a1, a3, s3
                  sltu         t1, t0, s10
                  xor          t3, sp, t5
                  andi         a6, s9, 2007
                  beq          s11, tp, 366f
                  sub          s5, gp, gp
                  bge          s5, gp, 382f
366:              sub          s5, a3, s1
                  sltiu        s11, s2, 455
368:              bne          s4, t6, 376f
                  slti         a6, s10, -1296
                  slli         s6, t1, 16
                  sltu         a2, a4, gp
                  xori         a3, s3, 1157
                  sub          s5, s10, t0
                  beq          t6, a6, 383f
                  slli         a3, a5, 21
376:              andi         s2, t3, 923
                  slt          s1, a5, ra
                  sltu         a0, gp, s10
                  add          s10, s10, t3
                  blt          gp, s3, 398f
                  andi         tp, t3, 276
382:              addi         s5, t6, 149
383:              and          a7, a7, a5
                  auipc        t6, 431635
                  srai         a5, s1, 18
                  ori          s2, t4, -1566
                  lui          a1, 162501
                  bne          sp, a0, 402f
                  or           a4, t6, a3
                  sra          s3, s1, t1
                  andi         gp, t0, 1565
                  ori          a3, t6, 497
                  sll          t3, s11, a7
                  ori          t4, tp, -1942
                  slli         a7, s5, 22
                  srl          a1, a7, s1
                  slt          s5, s11, a7
398:              or           t0, a1, s3
                  srai         a0, s0, 28
                  bge          s9, t5, 402f
                  slli         t0, s10, 19
402:              ori          s9, a3, 175
                  sra          sp, gp, t5
                  sub          s2, s10, t5
                  slli         ra, a3, 24
                  auipc        s5, 134946
                  slt          s2, t0, s9
                  xori         s11, sp, -1507
                  sltiu        t1, a2, -1443
                  blt          s10, a6, 412f
                  slt          a7, a7, tp
412:              sub          gp, a2, a2
                  sltu         a5, tp, t5
                  lw           s10, 4(s7)
                  slt          sp, s7, a3
                  slti         t4, t2, -1858
                  addi         s7, s7, 36
                  nop
825:              addi x21, x26, 1
825:              jalr x21, x21, 0
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x7, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x7, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x7, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x7, x19, ecall_handler
                  li x19, 0x1
                  beq x7, x19, instr_fault_handler
                  li x19, 0x5
                  beq x7, x19, load_fault_handler
                  li x19, 0x7
                  beq x7, x19, store_fault_handler
                  li x19, 0xc
                  beq x7, x19, pt_fault_handler
                  li x19, 0xd
                  beq x7, x19, pt_fault_handler
                  li x19, 0xf
                  beq x7, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

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
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
