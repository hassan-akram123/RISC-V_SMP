.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 1
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xd7c6367f
                  li x3, 0xf401f657
                  li x4, 0xf92f3aa2
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0xd
                  li x9, 0x8098be02
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x2
                  li x14, 0x80000000
                  li x15, 0xf127ba00
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x7bf1ec19
                  li x20, 0x0
                  li x21, 0xf7d0fdc6
                  li x22, 0x8
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x8
                  li x26, 0xfe962b27
                  li x27, 0xfd0d6790
                  li x28, 0x9
                  li x29, 0xf23e1007
                  li x31, 0x8
                  la x8, user_stack_end
main:             la           sp, region_0+982 #start riscv_load_store_hazard_instr_stream_0
                  lui          a1, 965172
                  lb           a0, 8(sp)
                  lb           t2, 8(sp)
                  lb           a0, 8(sp)
                  slt          a0, sp, t4
                  lb           gp, 8(sp)
                  andi         t4, a0, -617
                  lbu          s4, 13(sp)
                  sb           t6, 13(sp)
                  lb           a7, 13(sp)
                  lb           t6, 13(sp)
                  xori         s6, s9, -1330
                  lbu          s6, 13(sp)
                  lbu          t0, -1(sp)
                  sra          a7, ra, a7
                  sb           s9, -1(sp)
                  lb           t2, -1(sp)
                  lbu          gp, 14(sp)
                  sw           s2, 14(sp)
                  add          s6, a7, gp
                  lbu          a1, 14(sp)
                  lbu          s8, 14(sp)
                  sb           t3, 14(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a2, region_1+1334 #start load_store_instr_stream_0
                  lbu          s3, 0(a2)
                  lh           s2, 16(a2)
                  la           gp, region_1+1817 #start load_store_instr_stream_1
                  sb           a5, 8(gp)
                  sh           ra, 9(gp)
                  lb           s9, -13(a2)
                  la           t6, region_1+170 #start load_store_instr_stream_2
                  lb           t1, 11(a2)
                  lw           s3, -9(gp)
                  lbu          a1, -10(gp)
                  sb           t1, -16(a2)
                  sh           s4, 0(t6)
                  lh           t2, 12(t6)
                  lb           a1, 10(gp)
                  lhu          s7, -8(a2)
                  sb           s5, 4(t6)
                  sb           t6, -7(a2)
                  lbu          s6, -8(t6)
                  lh           s3, 1(gp)
                  lb           a5, 10(t6) #end load_store_instr_stream_2
                  lhu          s4, 7(gp) #end load_store_instr_stream_1
                  lbu          s6, 16(a2)
                  lbu          zero, 12(a2) #end load_store_instr_stream_0
                  la           sp, region_1+1341 #start riscv_load_store_rand_instr_stream_0
                  lb           a2, 113(sp)
                  sll          s10, ra, t2
                  slli         a7, s2, 25
                  srl          s2, a6, a6
                  lbu          a3, 241(sp)
                  sh           a1, 219(sp)
                  addi         a7, t3, -1444
                  sb           a0, 66(sp)
                  lui          s7, 151580
                  sw           a4, 199(sp)
                  sb           t6, -161(sp)
                  slt          zero, a6, t0
                  addi         s5, s7, -1813
                  slti         t6, a3, 788
                  sll          zero, s9, t6
                  lhu          t1, 41(sp)
                  sb           a2, 2(sp)
                  or           a0, s8, a2
                  lbu          ra, -126(sp)
                  lb           ra, -27(sp)
                  slli         t2, t0, 9
                  ori          t2, t3, 1944
                  sra          t4, t5, s4
                  sra          s6, t2, s5
                  xor          a4, t0, gp
                  lb           s7, 66(sp)
                  lhu          s10, -175(sp)
                  sll          t3, s3, gp
                  lhu          a7, -207(sp)
                  slti         s8, s6, -1791
                  addi         s2, gp, 360
                  sub          s4, t1, s0
                  lbu          s5, -213(sp)
                  lb           s5, 116(sp)
                  sw           t5, 255(sp)
                  sb           s5, 12(sp)
                  xori         s2, s0, 1840
                  sb           zero, -216(sp)
                  lb           t2, -85(sp)
                  sb           s0, -74(sp)
                  nop
                  sb           a7, 54(sp)
                  sltiu        a4, a2, -1687
                  srli         a3, sp, 0
                  lbu          t6, 243(sp)
                  srl          t3, s8, s10
                  andi         s7, a3, 2031
                  lb           t1, 232(sp)
                  lb           s2, -154(sp)
                  sh           s7, 165(sp)
                  lbu          t1, -103(sp)
                  lb           ra, 14(sp)
                  lw           s2, 47(sp)
                  lbu          s9, 140(sp)
                  lbu          t0, 187(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_0+1908 #start load_store_instr_stream_1
                  la           s11, region_0+23 #start load_store_instr_stream_2
                  lhu          ra, -1094(s7)
                  sb           t0, -2(s11)
                  lb           a5, 5(s11)
                  la           s8, region_0+292 #start load_store_instr_stream_0
                  lb           a3, 12(s11)
                  lhu          a2, -1568(s7)
                  lb           t1, 205(s8)
                  sh           a6, -15(s11)
                  sh           t5, 422(s8)
                  la           sp, region_0+1537 #start load_store_instr_stream_3
                  lbu          s2, 1663(s8)
                  lb           s6, -391(s7)
                  lb           s6, 1662(s8)
                  lb           tp, 36(sp)
                  lb           a3, -1467(s7)
                  sb           s10, -1515(s7)
                  lh           t4, 13(s11)
                  lhu          s9, 57(sp)
                  lbu          a3, 708(s8)
                  lbu          t3, 6(sp)
                  lhu          s9, 1582(s8)
                  lb           gp, -6(s11) #end load_store_instr_stream_2
                  lbu          t1, 867(s8)
                  lb           t0, 23(sp)
                  lb           s6, -1639(s7)
                  sb           a3, -55(sp)
                  lb           s10, -377(s7)
                  sb           s5, -254(s8)
                  sb           t2, 14(sp)
                  lb           a3, -34(sp) #end load_store_instr_stream_3
                  sb           a7, -1765(s7) #end load_store_instr_stream_1
                  lb           s6, 787(s8) #end load_store_instr_stream_0
                  la           sp, region_1+1504 #start riscv_load_store_hazard_instr_stream_1
                  lb           s10, -2(sp)
                  sub          s8, s11, t1
                  sb           s0, -2(sp)
                  slti         a4, a4, -1368
                  lbu          s2, -2(sp)
                  lh           a7, 0(sp)
                  ori          t2, t1, 1873
                  lb           a5, 0(sp)
                  lbu          a5, 0(sp)
                  lh           s10, 8(sp)
                  lw           a3, 8(sp)
                  slli         zero, t4, 13
                  lhu          s6, 8(sp)
                  lbu          s8, 8(sp)
                  lh           a6, 8(sp)
                  sh           a0, 8(sp) #end riscv_load_store_hazard_instr_stream_1
                  srli         s9, a7, 8
                  srai         sp, t0, 17
                  bltu         a3, a7, 15f
                  sltu         s7, gp, t2
                  add          s6, s6, t0
                  addi         t3, t3, 307
                  slti         t4, s4, -1745
                  or           s3, t2, t0
                  slt          a5, s5, a2
                  sll          s9, a6, s1
                  beq          s4, t5, 21f
                  nop
                  srl          t2, sp, t5
                  srai         s6, a5, 17
                  la           t0, region_0+26 #start riscv_load_store_rand_instr_stream_1
                  lh           t4, 50(t0)
                  addi         t3, gp, 1067
                  lw           ra, 22(t0)
                  lb           t3, -22(t0)
                  sltu         s2, s5, sp
                  auipc        s6, 1046835
                  lb           s10, 2(t0)
                  sb           a6, 8(t0)
                  lbu          s9, -11(t0)
                  sh           a4, 50(t0)
                  sb           s2, -13(t0)
                  lb           t1, 50(t0)
                  sub          t1, s1, s6
                  sra          s5, zero, s9
                  lb           a1, 45(t0)
                  lhu          s4, -4(t0)
                  sb           s3, -21(t0)
                  lb           s2, 36(t0)
                  lbu          s2, 5(t0)
                  lb           t1, -11(t0)
                  addi         a4, s9, -707
                  sb           t2, 64(t0)
                  lb           t4, 39(t0)
                  ori          s7, t5, -945
                  sw           t0, 22(t0)
                  lbu          t3, -11(t0)
                  add          s11, a6, s3
                  sub          a0, s3, a5
                  slli         s10, a3, 16
                  lb           s2, 60(t0)
                  lhu          tp, 64(t0)
                  lhu          zero, -10(t0)
                  lbu          gp, 30(t0) #end riscv_load_store_rand_instr_stream_1
                  sll          s7, s9, s8
15:               srl          a1, ra, s6
                  bge          s10, s6, 23f
                  nop
                  andi         ra, s10, 1174
                  add          t6, t0, a1
                  sltiu        t0, a4, -897
21:               blt          t1, a5, 33f
                  add          t3, s2, s8
23:               lui          tp, 317672
                  blt          s0, a0, 36f
                  xori         t6, s10, 241
                  slti         t6, s9, -625
                  slt          zero, t1, s0
                  bge          t3, s2, 48f
                  sltu         a4, a0, s7
                  slt          t2, sp, tp
                  auipc        t3, 826534
                  bge          a2, s2, 37f
33:               sll          s8, zero, a7
                  add          t3, s11, s10
                  srai         a1, t6, 13
36:               addi         sp, s11, 1977
37:               srli         zero, t5, 20
                  and          s3, a5, a7
                  blt          t2, ra, 52f
                  sltu         s9, a3, t1
                  bgeu         t1, zero, 42f
42:               addi         s6, a4, 1684
                  srli         s9, s3, 4
                  beq          a6, sp, 60f
                  slti         a2, t6, 52
                  bgeu         s11, t5, 66f
                  sltiu        s2, t2, 38
48:               addi         a7, sp, 135
                  sll          s7, s3, a7
                  lui          s3, 970918
                  xori         gp, s5, 754
52:               xor          s6, s6, a0
                  xori         a1, ra, -286
                  bne          a4, a5, 67f
                  sltu         s7, zero, s3
                  sub          s6, a2, t0
                  srli         s5, sp, 23
                  blt          s5, sp, 77f
                  andi         s2, t4, -1944
60:               sll          a6, a6, zero
                  bne          a3, a1, 78f
                  bgeu         s9, s5, 75f
                  sub          s3, s3, t2
                  sll          s4, s1, ra
                  bgeu         a3, tp, 66f
66:               bge          s10, s0, 70f
67:               sltiu        t1, t6, 1112
                  add          sp, s8, a3
                  sra          s10, gp, s8
70:               sltu         s3, t6, s0
                  srai         gp, t2, 26
                  ori          t3, s8, -566
                  slti         a7, a4, 967
                  addi         s6, a6, -1019
75:               and          ra, s7, s11
                  lui          s4, 146365
77:               sltiu        s5, s6, 1070
78:               nop
                  bge          s10, s4, 90f
                  blt          a2, s2, 83f
                  bge          a3, s2, 100f
                  auipc        s9, 810665
83:               slli         t3, s11, 13
                  srl          s5, s4, a0
                  sub          t1, t5, a1
                  srl          s9, s10, t2
                  nop
                  slli         s7, t6, 23
                  sra          a1, t6, s6
90:               sll          t2, gp, ra
                  bgeu         zero, s9, 92f
92:               srli         a6, t5, 15
                  sub          ra, a6, sp
                  or           a5, a6, t5
                  sub          s2, s1, t4
                  andi         s10, a5, 256
                  la           s8, sub_1
                  ori          t1, a5, 571
                  addi         s8, s8, -235
                  slti         s6, s10, -972
                  sub          a2, a7, s2
                  sltu         tp, s5, s8
main_j1:          jalr         a1, s8, 236 #jump main -> sub_1
                  bltu         sp, sp, 102f
                  and          s9, a3, s2
                  sll          s10, a4, s8
                  andi         tp, a1, -674
                  slt          a1, s7, tp
100:              add          a0, a1, s10
                  slt          a2, s8, sp
102:              sltu         s11, a7, tp
                  add          s3, a5, a7
                  srli         s9, a5, 12
                  addi         ra, tp, 357
                  nop
                  nop
                  srai         gp, a2, 3
                  slt          tp, a3, s0
                  beq          a4, a6, 125f
                  sub          s9, s1, t2
                  slti         t2, s6, -888
                  auipc        sp, 587390
                  auipc        t4, 99511
                  slli         a3, s7, 1
                  nop
                  blt          a6, a6, 124f
                  slli         zero, sp, 3
                  auipc        s6, 703831
                  or           t6, s3, t2
                  slt          s3, tp, sp
                  sra          a1, t5, s7
                  addi         zero, s3, 1207
124:              bltu         s7, t5, 138f
125:              slt          a2, a0, sp
                  slt          s2, a5, s0
                  xori         t2, a7, 98
                  bgeu         s0, s6, 141f
                  sltu         ra, s0, s3
                  sltu         t3, a3, t0
                  auipc        ra, 802216
                  sll          t4, t0, s3
                  addi         a1, a1, 1038
                  add          a7, a2, a2
                  and          t1, s8, a3
                  and          sp, t4, t6
                  sll          gp, t3, s4
138:              sub          a5, s2, a7
                  sra          a0, a2, a4
                  auipc        a6, 808445
141:              sub          a5, t5, zero
                  nop
                  blt          s2, s9, 147f
                  xori         t3, sp, -1646
                  lui          a4, 328072
                  sltu         a4, s2, a1
147:              auipc        sp, 257333
                  xori         a4, a2, -1688
                  or           s5, t5, sp
                  sra          a0, s9, t5
                  bne          a2, s2, 167f
                  andi         s7, t0, 2014
                  sll          a7, t6, zero
                  ori          s9, a6, -1211
                  slt          s10, s8, s6
                  slli         s11, gp, 22
                  or           a4, s9, gp
                  xori         t0, s7, 610
                  bge          a0, s8, 166f
                  sra          tp, t6, s11
                  bge          a4, s2, 181f
                  beq          zero, t2, 181f
                  sll          a5, a5, s4
                  nop
                  srli         s3, s2, 24
166:              slt          s8, a3, ra
167:              or           s4, t1, t2
                  slt          s10, t1, s3
                  lui          gp, 335985
                  sltu         s10, s8, s0
                  sltu         s5, s8, t6
                  bltu         zero, s7, 185f
                  or           a3, s9, s6
                  xori         s5, a4, 1159
                  sltu         s9, gp, a1
                  lui          s5, 119212
                  andi         t6, t3, -1141
                  bge          sp, zero, 198f
                  sll          a2, a0, t6
                  slt          zero, tp, t2
181:              bgeu         a7, a6, 182f
182:              or           s8, s10, s0
                  and          s7, a6, gp
                  ori          a4, a3, 1331
185:              lui          s5, 89648
                  addi         a0, t3, 185
                  add          s10, s6, s10
                  slt          t0, s9, s5
                  srli         s9, t2, 24
                  srli         s2, s5, 5
                  bgeu         s8, s1, 196f
                  bltu         tp, t4, 199f
                  nop
                  bltu         tp, t0, 202f
                  addi         s11, s10, -1862
196:              srl          s5, tp, s9
                  andi         a5, s10, -124
198:              sll          a0, gp, a3
199:              sub          s9, s5, sp
                  bltu         t0, t3, 202f
                  andi         ra, s7, 278
202:              srl          s2, s4, t2
                  la x9, test_done
                  jalr x0, x9, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sub          tp, s5, t2
                  slti         s8, t2, -1910
                  srl          t3, t4, s6
                  bltu         a6, t3, sub_2_stack_p
sub_2_stack_p:    addi         s0, s0, -36
                  sw           a1, 4(s0)
                  auipc        a2, 404863
                  and          t4, s6, s2
                  sltiu        a6, s10, 1235
                  addi         s4, s10, -1871
                  slt          tp, s10, t1
                  bge          s0, a6, 6f
                  bltu         a1, t1, 9f
                  bge          a5, s11, 11f
6:                bge          t5, gp, 12f
                  slt          ra, a6, s6
                  sltiu        s4, t3, 138
9:                lui          a7, 82453
                  sub          s6, a0, a4
11:               beq          s3, s10, 15f
12:               bge          a5, s4, 24f
                  lui          t1, 759306
                  xor          a4, s6, s0
15:               blt          t3, gp, 35f
                  srl          s8, ra, a7
                  addi         a5, a3, -458
                  sltu         a3, t4, t5
                  nop
                  srli         gp, a4, 9
                  sub          a2, s9, s4
                  bne          a2, tp, 38f
                  addi         t0, sp, -616
24:               sltiu        zero, s8, 326
                  bne          s1, t6, 41f
                  blt          t2, s1, 33f
                  or           t6, t6, s7
                  addi         s11, sp, -991
                  sra          s4, s3, s3
                  sltu         sp, t5, t2
                  sub          a5, s1, t1
                  slli         zero, a1, 29
33:               bltu         a0, t2, 51f
                  blt          t3, s4, 41f
35:               sltiu        s2, s3, 713
                  auipc        s6, 571245
                  slt          s8, a0, a0
38:               addi         s2, s9, -1502
                  sltu         s11, s6, a4
                  sltu         a7, sp, s6
41:               auipc        a6, 429791
                  sll          a0, a5, t1
                  srl          a3, a4, s4
                  andi         a5, t6, -767
                  beq          s9, t4, 52f
                  xor          a7, s3, t3
                  or           a2, s8, t2
                  sltiu        s4, ra, -1066
                  bgeu         s7, t2, 61f
                  andi         s11, t1, -1080
51:               srl          s9, a7, s2
52:               xori         s6, s0, -747
                  or           a6, s2, ra
                  sra          s6, ra, tp
                  bge          tp, t6, 69f
                  bne          s10, s10, 67f
                  bltu         s2, a0, 73f
                  srli         t3, s0, 14
                  bne          s5, sp, 73f
                  sltiu        gp, a6, 1784
61:               slti         s11, a4, -1034
                  beq          t2, zero, 82f
                  and          sp, s5, a0
                  sltiu        s6, tp, 1483
                  srli         s8, s10, 4
                  sra          a4, s6, s6
67:               xor          a4, s11, ra
                  sub          s5, tp, t2
69:               add          t1, a2, gp
                  bgeu         s1, t4, 83f
                  slli         sp, gp, 10
                  andi         s7, s4, 103
73:               bne          a2, a0, 76f
                  slt          a2, t2, t0
                  blt          a0, s6, 83f
76:               nop
                  bltu         a4, a1, 79f
                  addi         t1, s10, 1112
79:               nop
                  sltiu        t4, s8, 1860
                  bge          s1, t6, 83f
82:               sll          a7, a6, a4
83:               sltu         a7, tp, sp
                  sll          sp, s10, s10
                  lw           a1, 4(s0)
                  sll          t1, ra, s4
                  sltiu        a6, a6, -1522
                  andi         a3, t1, -102
                  and          sp, s8, sp
                  or           t2, zero, s2
                  addi         s0, s0, 36
                  srli         s5, a2, 0
                  slt          tp, s4, sp
                  sll          sp, s0, a2
                  sltiu        ra, s7, -368
104:              addi x27, x11, 1
104:              jalr x27, x27, 0
sub_1:            addi         s0, s0, -48
                  or           t3, a6, t6
                  and          s8, s11, a0
                  sltiu        s11, a0, -1732
                  sw           a1, 4(s0)
                  srli         zero, ra, 1
                  lui          ra, 649030
                  sub          s10, t0, s5
                  srli         a7, a2, 11
                  la           t2, region_1+402 #start riscv_load_store_hazard_instr_stream_3
                  lhu          tp, -66(t2)
                  lw           s2, -66(t2)
                  sw           s1, -66(t2)
                  sh           t0, -66(t2)
                  sb           a1, -47(t2)
                  lbu          s5, -63(t2)
                  lb           s5, -113(t2)
                  xori         s7, s1, 1129
                  sub          tp, s11, t5
                  slt          a3, s8, t0
                  lb           s7, 53(t2)
                  lb           s10, 53(t2)
                  lb           a5, -241(t2) #end riscv_load_store_hazard_instr_stream_3
                  la           s10, region_1+61 #start load_store_instr_stream_0
                  la           s5, region_1+1764 #start load_store_instr_stream_1
                  la           ra, region_1+344 #start load_store_instr_stream_2
                  la           s11, region_1+1541 #start load_store_instr_stream_3
                  sb           gp, 77(ra)
                  lb           a5, -52(s10)
                  lbu          a3, 8(s5)
                  sb           t6, 6(s5)
                  lbu          a0, -40(s10)
                  lbu          s7, 147(ra)
                  sb           a3, -5(s5)
                  lb           t4, -135(ra)
                  lbu          a0, -18(s10)
                  lbu          a2, 231(ra)
                  sb           t5, 13(s10)
                  lb           gp, 16(s11)
                  sb           a4, -13(s10)
                  sb           s1, 1(s5)
                  lb           t3, -39(s10)
                  sb           s2, 4(s11)
                  lbu          gp, -16(s5)
                  sb           s3, -73(ra)
                  lbu          t6, -16(s11)
                  lw           a0, -25(s10)
                  lb           a1, 11(s5)
                  lh           t4, -13(s11)
                  sb           s1, -9(s5)
                  lb           tp, 163(ra) #end load_store_instr_stream_2
                  lhu          s6, -27(s10)
                  sh           a1, 39(s10)
                  lb           sp, -14(s11) #end load_store_instr_stream_3
                  lbu          a7, -3(s5) #end load_store_instr_stream_1
                  lb           s8, -54(s10) #end load_store_instr_stream_0
                  la           s4, region_1+1336 #start riscv_load_store_hazard_instr_stream_0
                  lb           t6, -13(s4)
                  sb           s10, 15(s4)
                  srl          a4, tp, t2
                  sb           s2, 15(s4)
                  lb           t2, -3(s4)
                  addi         t1, s7, 123
                  lb           a4, -3(s4)
                  lbu          s10, 6(s4)
                  lbu          t6, -15(s4)
                  sb           a7, -7(s4)
                  lbu          a0, 7(s4)
                  lb           a7, 11(s4)
                  sb           a0, -8(s4)
                  lbu          s2, 16(s4)
                  lhu          s10, 16(s4)
                  sw           a5, 16(s4)
                  lhu          a6, 16(s4)
                  lbu          s6, -16(s4)
                  sll          sp, tp, a5
                  lh           s7, -16(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+272 #start riscv_load_store_rand_instr_stream_0
                  lb           t4, 153(sp)
                  lb           a6, 1537(sp)
                  lb           a1, 322(sp)
                  lh           t6, 1410(sp)
                  sb           s1, 357(sp)
                  slt          s2, gp, a2
                  addi         a1, ra, -202
                  sh           a3, -162(sp)
                  lbu          a7, 1529(sp)
                  lb           zero, 889(sp)
                  lbu          s10, 548(sp)
                  sll          a4, s5, sp
                  lbu          a1, 867(sp)
                  lhu          t3, 550(sp)
                  lbu          a5, 1380(sp)
                  sb           t6, 208(sp)
                  lbu          s3, 1003(sp)
                  sltu         a0, t2, t0
                  ori          s8, ra, 375
                  add          a0, t3, a0
                  lh           s3, -164(sp)
                  lhu          t4, 26(sp)
                  slli         a7, s2, 3
                  lbu          t0, 567(sp)
                  lb           a0, 1623(sp)
                  and          t1, s0, sp
                  lbu          a7, 155(sp)
                  lbu          t2, -263(sp)
                  lhu          s4, -244(sp)
                  ori          a4, s1, -1953
                  sb           a0, 1242(sp)
                  lb           a3, 1667(sp)
                  srai         s2, t0, 13
                  addi         t6, a6, 1513
                  lbu          zero, 1708(sp)
                  ori          t2, a2, 724
                  lb           a5, 999(sp)
                  sb           a7, 306(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_0+1042 #start riscv_load_store_rand_instr_stream_2
                  or           sp, ra, s2
                  lb           s3, -43(a2)
                  sb           s10, 138(a2)
                  lui          a5, 114759
                  slti         a4, sp, -734
                  sub          a7, a5, t5
                  lui          sp, 191220
                  sw           s1, 198(a2)
                  lbu          s5, -49(a2)
                  xor          s2, t6, zero
                  sh           t4, 104(a2)
                  lh           s8, -98(a2)
                  sub          s2, t5, t0
                  sb           t3, -34(a2)
                  lw           a4, -26(a2)
                  or           t6, s3, s0
                  addi         t2, s3, 481
                  sb           a3, -198(a2)
                  add          s2, t1, gp
                  srai         s5, s9, 9
                  slti         sp, t3, -1364
                  slli         s4, t4, 19
                  lb           a4, 169(a2)
                  sh           s4, 64(a2)
                  srl          a6, s6, a5
                  srl          s4, t0, s0
                  sb           s4, 53(a2) #end riscv_load_store_rand_instr_stream_2
                  la           s11, region_0+864 #start riscv_load_store_rand_instr_stream_6
                  lb           s4, 195(s11)
                  ori          s5, gp, -5
                  xori         ra, a4, 508
                  sb           ra, 199(s11)
                  srl          s7, s11, a6
                  auipc        t0, 855490
                  lb           ra, 77(s11)
                  slli         t0, t2, 6
                  sll          a2, a0, s1
                  xor          t2, s7, a6
                  or           gp, s4, t2
                  sll          s2, s9, s11
                  andi         s7, s1, -1591
                  lb           s7, -49(s11)
                  lhu          s5, 208(s11)
                  sb           tp, -6(s11)
                  lb           a5, -149(s11)
                  ori          a6, t4, -2003
                  and          tp, s1, a7
                  lhu          a4, -198(s11)
                  andi         t1, s10, 1929
                  lui          zero, 865017
                  sra          s7, a0, s0
                  lb           ra, 61(s11)
                  lb           t1, 214(s11)
                  xori         sp, t6, -1702
                  sb           t4, -128(s11)
                  sw           t2, -220(s11)
                  or           a4, gp, tp
                  auipc        s6, 698113
                  slli         t1, t4, 25
                  lb           t0, -219(s11)
                  sltu         a1, zero, a0
                  lb           t1, 85(s11)
                  sra          a7, s11, a5
                  sub          ra, zero, zero
                  slli         a3, zero, 13
                  sb           s5, -119(s11)
                  sb           s10, 101(s11)
                  add          s7, s3, a3
                  or           a1, a0, s5
                  sh           s3, -234(s11)
                  sb           t4, -99(s11)
                  or           a1, s11, s11
                  srli         a4, a1, 28
                  sltiu        s8, t1, 1787
                  sb           s8, 218(s11)
                  addi         a1, a4, 1043
                  lb           gp, -174(s11) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_0+379 #start load_store_instr_stream_4
                  la           s5, region_0+1642 #start load_store_instr_stream_3
                  sb           a0, -47(s5)
                  la           a0, region_0+335 #start load_store_instr_stream_2
                  lh           s6, 145(a0)
                  la           t4, region_0+1342 #start load_store_instr_stream_1
                  lbu          a5, -159(t6)
                  lbu          zero, 62(s5)
                  sh           t4, 77(a0)
                  la           t0, region_0+85 #start load_store_instr_stream_0
                  lb           zero, 31(s5)
                  lbu          zero, -68(a0)
                  sb           sp, 15(s5)
                  sb           t1, 119(t4)
                  lh           s11, 81(t6)
                  sb           s3, -54(t0)
                  lh           s9, 36(t4)
                  lbu          s7, 238(a0)
                  lbu          s9, -182(t6)
                  lbu          t1, -85(t4)
                  sb           t5, 252(a0)
                  sw           a0, 218(t4)
                  sh           s11, -18(s5)
                  sb           zero, 238(a0)
                  sb           s10, 118(t0)
                  lh           t1, 150(t4)
                  sh           t4, -174(t4)
                  sh           ra, -31(a0)
                  lb           a3, 231(t6)
                  lbu          a2, 132(t0)
                  sb           s4, 11(s5)
                  sb           t1, -123(t4)
                  sb           t3, 252(t0)
                  lh           s11, -58(s5)
                  lw           t2, 206(t4)
                  lbu          tp, 222(t6) #end load_store_instr_stream_4
                  sh           s0, 42(s5) #end load_store_instr_stream_3
                  sh           t6, 128(t4)
                  lh           t2, -250(t4) #end load_store_instr_stream_1
                  lhu          s11, 67(a0) #end load_store_instr_stream_2
                  lb           a6, 246(t0) #end load_store_instr_stream_0
                  la           tp, region_0+1594 #start riscv_load_store_hazard_instr_stream_1
                  and          s6, t0, t0
                  lbu          a1, 9(tp)
                  sb           s4, 9(tp)
                  sltiu        a2, s7, -548
                  sb           t3, 9(tp)
                  lbu          s2, 9(tp)
                  lb           s5, 9(tp)
                  sb           a3, 9(tp)
                  sb           tp, 9(tp)
                  auipc        s3, 589223
                  sb           t4, 9(tp)
                  lbu          zero, 9(tp)
                  lbu          zero, 9(tp)
                  lbu          s10, 9(tp)
                  lb           ra, 9(tp)
                  lbu          s2, 9(tp)
                  sb           s7, 9(tp)
                  lbu          s3, 9(tp) #end riscv_load_store_hazard_instr_stream_1
                  la           t6, region_0+96 #start load_store_instr_stream_0
                  la           t3, region_0+1334 #start load_store_instr_stream_1
                  lb           a3, -63(t6)
                  sh           a2, 32(t3)
                  lbu          s7, 57(t3)
                  lbu          ra, -20(t6)
                  sh           sp, -28(t3)
                  lb           ra, 14(t3)
                  lb           s4, 34(t6)
                  lb           s4, -62(t3)
                  lb           s3, 34(t6)
                  lh           a7, -10(t3)
                  sb           s9, 47(t3) #end load_store_instr_stream_1
                  lbu          s3, -10(t6) #end load_store_instr_stream_0
                  la           sp, region_1+1539 #start riscv_load_store_hazard_instr_stream_6
                  lw           gp, -615(sp)
                  slt          a2, a6, a6
                  lw           s3, -615(sp)
                  and          tp, t0, s8
                  lw           a6, -615(sp)
                  sb           s8, -615(sp)
                  lbu          a3, -424(sp)
                  lb           ra, -424(sp)
                  lb           s7, -424(sp)
                  lbu          t6, -424(sp)
                  sb           s11, -424(sp)
                  lb           a4, -424(sp)
                  lb           s9, -329(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           s6, region_1+1508 #start riscv_load_store_rand_instr_stream_5
                  srai         t3, s5, 26
                  xor          ra, a2, t6
                  ori          t2, t3, 501
                  lb           a6, 93(s6)
                  and          a7, ra, tp
                  slli         t4, s5, 1
                  xori         a2, t4, -1829
                  add          t3, s0, s10
                  sltu         s8, s1, s4
                  sh           t5, 226(s6)
                  lh           a0, 76(s6)
                  srai         a0, a2, 13
                  lb           s3, 27(s6)
                  lh           a0, 218(s6)
                  lb           t1, 211(s6)
                  sb           s1, 89(s6)
                  lhu          t6, 88(s6)
                  xor          tp, t2, s8
                  add          a0, a7, a0
                  xori         ra, s3, -1985
                  sll          a6, a4, tp
                  sh           t4, -56(s6)
                  lbu          t3, 119(s6)
                  lbu          s10, 51(s6) #end riscv_load_store_rand_instr_stream_5
                  la           s9, region_0+803 #start load_store_instr_stream_4
                  la           s11, region_0+1493 #start load_store_instr_stream_2
                  lw           gp, 7(s11)
                  la           s8, region_0+101 #start load_store_instr_stream_0
                  lb           s3, 124(s11)
                  la           t0, region_0+1118 #start load_store_instr_stream_3
                  lh           sp, -168(t0)
                  la           a0, region_0+1153 #start load_store_instr_stream_1
                  lbu          t1, 99(s8)
                  lb           s10, 442(s9)
                  sb           s5, -193(t0)
                  lh           t4, -15(a0)
                  lbu          t2, -237(t0)
                  lb           a5, -20(s11)
                  sb           a1, 172(t0)
                  lh           gp, 5(a0)
                  lbu          t6, 3(a0)
                  sh           a3, -537(s9)
                  lb           gp, 231(t0)
                  lbu          a6, 193(s8)
                  lb           a6, -127(t0)
                  sw           a4, 15(a0)
                  sh           s0, 182(t0)
                  lb           t2, 629(s9)
                  sb           s10, 6(a0)
                  sb           s11, 27(s8)
                  sh           t2, -83(s11)
                  sb           sp, 11(a0)
                  lbu          t3, -57(t0) #end load_store_instr_stream_3
                  sh           s11, 113(s8)
                  lhu          a6, -7(a0)
                  lb           a7, -4(a0)
                  lb           s4, 10(a0)
                  sb           a2, -2(s11)
                  sw           a2, -43(s9)
                  lbu          ra, 64(s8)
                  lbu          a3, 546(s9) #end load_store_instr_stream_4
                  lbu          t2, 122(s8)
                  sh           s8, -7(a0) #end load_store_instr_stream_1
                  sb           t3, 64(s11) #end load_store_instr_stream_2
                  sb           a1, 256(s8) #end load_store_instr_stream_0
                  la           t4, region_1+932 #start riscv_load_store_hazard_instr_stream_4
                  sb           t6, -123(t4)
                  sb           ra, -123(t4)
                  sb           s4, -123(t4)
                  lbu          t6, -123(t4)
                  lb           a4, -123(t4)
                  sltu         t1, a1, t1
                  sb           t0, -123(t4)
                  lb           t3, -123(t4)
                  lb           s10, 212(t4)
                  lb           s9, 212(t4)
                  sll          zero, s6, t5
                  lhu          t2, 212(t4)
                  sw           s10, 212(t4)
                  lbu          s11, 212(t4)
                  sw           a0, 212(t4)
                  lbu          t1, 212(t4)
                  sb           t5, 212(t4)
                  lw           t3, 212(t4)
                  lb           a6, 212(t4) #end riscv_load_store_hazard_instr_stream_4
                  la           t4, region_0+1264 #start riscv_load_store_hazard_instr_stream_5
                  sltu         ra, a0, a0
                  sh           a1, 8(t4)
                  lw           t0, 8(t4)
                  xor          a2, t6, a0
                  sb           t0, 8(t4)
                  lh           a1, 6(t4)
                  lbu          a5, 16(t4)
                  lb           a2, 16(t4)
                  lhu          s6, 16(t4)
                  sb           t4, 7(t4)
                  slti         gp, s2, -1938
                  sb           zero, 7(t4)
                  lbu          ra, -1(t4)
                  lbu          s4, -1(t4)
                  lbu          s7, -1(t4)
                  sb           a6, -1(t4)
                  lb           t3, -1(t4)
                  lhu          ra, 8(t4)
                  lw           s6, -4(t4)
                  lbu          s7, -10(t4)
                  lhu          tp, -10(t4)
                  add          s9, tp, s2
                  lb           t3, -6(t4) #end riscv_load_store_hazard_instr_stream_5
                  la           t6, region_1+936 #start load_store_instr_stream_1
                  la           a2, region_1+1109 #start load_store_instr_stream_0
                  lh           tp, 22(t6)
                  lbu          a4, 50(t6)
                  lb           s9, 0(t6)
                  sb           s10, 290(a2)
                  lbu          a6, 5(t6)
                  lbu          s7, 55(t6)
                  sh           tp, -32(t6)
                  lb           a6, -19(t6)
                  lbu          s7, -922(a2)
                  sh           s4, 46(t6)
                  sb           t5, -61(a2)
                  lbu          s10, 27(t6)
                  lbu          s5, 627(a2)
                  lbu          sp, -48(t6) #end load_store_instr_stream_1
                  lh           gp, 371(a2) #end load_store_instr_stream_0
                  la           sp, region_1+181 #start riscv_load_store_rand_instr_stream_1
                  lb           a4, 246(sp)
                  sh           sp, 111(sp)
                  andi         gp, t2, -851
                  srli         gp, s6, 21
                  sll          a0, gp, s1
                  lb           zero, 27(sp)
                  xor          s5, zero, a4
                  srli         s11, t5, 21
                  sb           s8, -77(sp)
                  sw           a0, 75(sp)
                  sb           s0, 228(sp)
                  sb           a7, -150(sp)
                  lb           t6, 84(sp)
                  lui          a5, 894260
                  slli         a4, t2, 2
                  lhu          a0, 197(sp)
                  sb           s2, 238(sp)
                  sltu         gp, s1, a2
                  sh           a1, -19(sp)
                  sb           a7, -112(sp)
                  lbu          s2, 132(sp)
                  lbu          s6, 187(sp)
                  lb           s5, -106(sp)
                  sub          tp, a5, s11
                  lb           s7, -114(sp)
                  lh           t3, 13(sp)
                  lb           ra, 72(sp)
                  ori          s2, a1, -1424
                  lbu          t3, 250(sp)
                  lh           a5, 161(sp)
                  addi         s8, t4, 1933
                  xor          t1, t3, s3
                  and          s6, ra, s3
                  nop
                  sltu         s11, a7, s9
                  lb           a7, 186(sp)
                  lb           t0, 36(sp)
                  lhu          gp, -35(sp)
                  srl          t0, a1, a1
                  slti         s8, t4, 668
                  auipc        a7, 284841
                  sltiu        s7, tp, -83
                  lbu          s8, -94(sp)
                  sltu         t1, a3, t4
                  sb           s0, -152(sp)
                  auipc        t1, 297297
                  lhu          gp, -105(sp)
                  sltu         a1, s10, t0
                  slt          a1, t6, a6
                  lb           zero, 240(sp)
                  lw           a0, 7(sp)
                  sw           s1, -169(sp)
                  sb           s11, -157(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+786 #start riscv_load_store_hazard_instr_stream_2
                  lb           s2, 347(sp)
                  srl          a4, a2, s2
                  srl          zero, s8, a3
                  sll          t6, a7, t5
                  slt          s10, s11, t6
                  sb           s5, 525(sp)
                  sb           a2, 525(sp)
                  lbu          t2, 305(sp)
                  lbu          t6, 1165(sp)
                  lw           zero, 1082(sp)
                  auipc        s11, 643141
                  sh           tp, -640(sp)
                  lhu          a7, -640(sp)
                  lb           s9, 323(sp)
                  srli         a7, s4, 25
                  auipc        s7, 524743
                  sb           s7, 323(sp)
                  sb           s11, 463(sp)
                  lh           s2, 768(sp)
                  lhu          s10, 768(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a2, region_0+824 #start load_store_instr_stream_2
                  la           gp, region_0+638 #start load_store_instr_stream_3
                  la           s2, region_0+541 #start load_store_instr_stream_1
                  lb           a4, 47(gp)
                  la           sp, region_0+1098 #start load_store_instr_stream_0
                  lb           t0, 43(gp)
                  lhu          s6, 2(sp)
                  lb           t4, -12(a2)
                  lbu          a0, 3(a2)
                  lh           t0, -48(gp)
                  sw           t2, -53(s2)
                  sb           s9, 11(a2)
                  lbu          a4, -12(sp)
                  lb           s10, -12(sp)
                  sb           ra, 33(gp)
                  lhu          s3, -8(a2)
                  lbu          s4, 40(s2)
                  lb           zero, -27(s2)
                  lw           ra, -2(gp)
                  lw           zero, -2(sp)
                  lb           s9, 19(gp)
                  lb           tp, 7(a2) #end load_store_instr_stream_2
                  lb           a3, 15(sp)
                  sh           s7, -40(gp)
                  lw           s8, 51(s2)
                  sw           ra, -61(s2)
                  lbu          s4, -63(gp)
                  lbu          s6, -10(sp)
                  sb           s0, 12(s2)
                  lbu          s11, 4(s2)
                  lhu          ra, -19(s2)
                  sb           s4, -9(sp)
                  lbu          t2, 8(sp)
                  lh           s10, 3(s2)
                  sb           s5, -3(gp) #end load_store_instr_stream_3
                  lbu          a3, 31(s2) #end load_store_instr_stream_1
                  lbu          s4, -13(sp) #end load_store_instr_stream_0
                  xori         s3, zero, -1516
                  sltiu        a7, s10, 1701
                  and          a6, t1, gp
                  lui          s2, 164798
                  bge          a5, a6, 19f
                  and          tp, s6, t6
                  bltu         sp, a0, 18f
                  ori          s7, a0, -1246
                  srli         s10, s8, 2
                  sra          t3, t0, a7
                  slti         s7, a1, 495
                  bgeu         ra, t0, 23f
                  lui          t2, 315602
                  srli         a3, a6, 3
                  or           s10, a5, gp
                  auipc        s5, 171181
                  or           a3, a0, a5
                  addi         t2, t1, 1561
18:               auipc        s5, 949322
19:               sra          s9, a7, t6
                  bge          s10, a0, 34f
                  sll          s10, a4, s4
                  auipc        zero, 919469
23:               or           t3, zero, sp
                  nop
                  slti         s11, t4, -1801
                  bgeu         t0, s5, 30f
                  srai         s3, t5, 3
                  beq          s2, s3, 34f
                  bgeu         s4, a5, 48f
30:               slli         t6, s3, 16
                  srai         ra, a0, 3
                  srl          s11, a2, s9
                  and          zero, a0, a6
34:               andi         gp, a1, 1113
                  slli         s3, s1, 30
                  add          sp, t3, a2
                  bgeu         ra, t1, 41f
                  sll          t2, s8, ra
                  bge          s0, zero, 58f
                  slti         t1, s10, -1376
41:               srai         a7, t1, 9
                  xori         t3, tp, 1530
                  bge          s4, a1, 44f
44:               blt          t4, t1, 51f
                  srl          s10, gp, t3
                  slt          a1, s2, a7
                  ori          a0, ra, 700
48:               bltu         gp, sp, 61f
                  auipc        s9, 86659
                  srli         s11, t5, 28
51:               srli         s9, s2, 4
                  slt          a1, t2, s3
                  slli         a6, tp, 12
                  beq          s8, a6, 70f
                  srli         s3, t4, 13
                  and          s11, zero, t2
                  andi         a3, a3, 726
58:               blt          t0, zero, 59f
59:               srl          sp, tp, a3
                  bgeu         t0, s6, 64f
61:               sll          t3, s2, s7
                  slli         s2, a0, 27
                  andi         a4, a6, -1660
64:               beq          t3, s10, 73f
                  add          a3, s5, t4
                  blt          a1, a7, 79f
                  slt          s2, t5, a1
                  bne          s6, a1, 87f
                  srl          a4, s3, s7
70:               and          s2, a7, t4
                  nop
                  sltu         tp, s1, s0
73:               andi         t2, a6, 492
                  sub          a1, sp, a5
                  srai         gp, s7, 2
                  beq          a5, t5, 85f
                  andi         t4, sp, 448
                  srai         s4, gp, 30
79:               xori         s10, s3, -574
                  srli         a3, s6, 2
                  slti         ra, s3, -647
                  xori         t2, s5, 1677
                  or           t3, t4, zero
                  addi         t6, a4, -1535
85:               bltu         ra, s1, 90f
                  add          a7, gp, s3
87:               and          t3, ra, t1
                  ori          a1, a3, -628
                  and          s2, s2, t0
90:               lui          s3, 699049
                  srli         a4, a5, 12
                  addi         a2, t3, 450
                  srli         t2, gp, 15
                  nop
                  srai         t3, t3, 22
                  or           a2, s11, a5
                  add          a6, zero, a4
                  or           s5, a1, t3
                  srai         gp, a7, 26
                  beq          t1, a4, 111f
                  slt          a4, s7, a6
                  lui          a5, 382185
                  lui          t6, 58263
                  srai         s7, a0, 3
                  and          a2, a5, t4
                  bltu         gp, s4, 115f
                  beq          a2, s5, 113f
                  sltu         tp, a5, a4
                  bge          ra, s8, 110f
110:              add          sp, s11, tp
111:              beq          a0, s0, 118f
                  add          s11, t2, tp
113:              blt          t6, t5, 123f
                  bltu         t5, s1, 121f
115:              add          a1, ra, t2
                  slli         a5, s8, 15
                  slti         a1, t3, 412
118:              and          t4, sp, a7
                  sra          t4, t2, t4
                  srai         s7, t0, 8
121:              bgeu         t3, tp, 131f
                  andi         t1, s3, 573
123:              add          tp, a5, sp
                  or           a5, s8, gp
                  bltu         t2, t3, 126f
126:              slti         t2, s3, 309
                  srai         zero, s1, 29
                  andi         s10, t0, -1730
                  slt          t0, a2, s9
                  srai         a3, t6, 0
131:              bge          a4, a5, 140f
                  add          a4, t1, a4
                  slli         a7, tp, 23
                  sltu         a2, t0, ra
                  srl          s5, a1, a6
                  addi         s3, s6, 645
                  srl          a2, s7, s10
                  auipc        s6, 298827
                  srl          t6, s9, ra
                  la           s2, region_0+1026 #start riscv_load_store_rand_instr_stream_4
                  sub          t0, ra, t1
                  slt          zero, t5, a3
                  lh           t1, -2(s2)
                  lh           a3, -12(s2)
                  sw           t3, -10(s2)
                  sh           s1, -4(s2)
                  lui          sp, 791891
                  or           a1, a4, tp
                  sw           s8, -14(s2)
                  sltiu        s4, s9, -783
                  addi         t1, s2, -488
                  nop
                  slli         a6, t0, 25
                  lb           s5, 9(s2)
                  addi         zero, a5, -1767
                  srli         s6, s9, 30
                  lhu          a4, -16(s2)
                  nop
                  nop
                  xor          a7, a2, s1
                  add          a4, t4, s3
                  addi         a6, gp, -417
                  sb           t0, 9(s2)
                  add          ra, gp, a2
                  lb           a2, -10(s2)
                  sb           zero, 1(s2)
                  lbu          gp, 6(s2)
                  sb           gp, -1(s2) #end riscv_load_store_rand_instr_stream_4
140:              srai         a4, t0, 22
                  xori         a2, s7, 213
                  sltiu        a1, tp, 1765
                  xor          s3, t5, s5
                  add          a5, zero, s6
                  sltu         tp, a7, s10
                  sltu         s4, s3, s3
                  lui          t1, 706600
                  srl          s5, gp, s2
                  srl          a0, t3, ra
                  xor          tp, gp, s10
                  srai         s11, s0, 31
                  srli         a4, s6, 19
                  sub          s2, gp, t4
                  blt          sp, a4, 173f
                  srl          s6, s11, a5
                  bne          s5, a4, 157f
157:              or           s6, a6, a0
                  srl          s8, s8, a6
                  ori          a4, a4, -1343
                  sltiu        sp, a7, -1905
                  slli         t1, ra, 21
                  srai         tp, tp, 10
                  slli         s4, t6, 8
                  bne          s1, s7, 165f
165:              sltu         a4, t4, s10
                  addi         s2, s1, -2016
                  or           s4, s10, s11
                  xori         a5, gp, 176
                  slli         s7, a4, 3
                  slti         s3, tp, -582
                  srl          a4, s6, s4
                  sub          t0, s7, zero
173:              addi         s7, tp, -344
                  srl          a7, a7, a1
                  or           t1, t3, a2
                  add          tp, tp, s0
                  sll          a5, s5, zero
                  srai         s8, a2, 14
                  bltu         zero, t5, 180f
180:              or           s11, s7, t6
                  bltu         t6, a6, 192f
                  bltu         t0, t4, 194f
                  srl          ra, a1, sp
                  sltu         a6, t3, s0
                  or           t1, t4, tp
                  slli         a4, s5, 14
                  slt          s4, t3, t0
                  add          t1, t1, s11
                  sltiu        t4, tp, 1084
                  or           t2, a4, s9
                  nop
192:              sra          t0, s6, t1
                  bgeu         t0, s11, 207f
194:              sltiu        a3, s4, 981
                  blt          t3, t1, 202f
                  beq          zero, t0, 203f
                  add          t6, a5, a1
                  bne          s3, s11, 205f
                  blt          s5, s8, 209f
                  slti         sp, t2, 287
                  auipc        gp, 596487
202:              lui          s7, 41379
203:              sll          a1, a6, sp
                  or           a3, gp, s3
205:              andi         s10, s5, -418
                  sltu         s10, t2, t2
207:              add          s3, t6, s10
                  slt          a3, a2, t0
209:              bne          s5, t3, 225f
                  bgeu         a4, t4, 214f
                  xor          a4, s3, t2
                  sll          t4, t3, t6
                  slli         t6, t1, 18
214:              bltu         t3, tp, 226f
                  sub          tp, s1, t3
                  bltu         a6, a7, 231f
                  slt          t4, zero, t0
                  slli         a6, a7, 20
                  sltu         a5, s0, ra
                  sub          gp, gp, a6
                  xor          t1, tp, a7
                  add          t4, t4, s2
                  slti         t2, s6, 1479
                  srai         s10, a5, 13
225:              bgeu         t1, tp, 229f
226:              auipc        t4, 973107
                  srli         s8, t1, 23
                  slli         gp, t0, 14
229:              lui          a6, 568117
                  xori         s4, tp, 330
231:              auipc        a2, 465217
                  addi         s7, t6, -624
                  bgeu         a6, t0, 246f
                  and          a1, a2, s2
                  bge          t3, t6, 236f
236:              auipc        a1, 111568
                  slti         s8, t2, 179
                  xor          tp, s4, s5
                  addi         tp, s0, 1852
                  and          s5, s8, s5
                  bgeu         s9, t2, 260f
                  slti         s3, s4, 740
                  add          t0, s5, zero
                  sltu         sp, s1, s1
                  xor          t2, a1, t3
246:              nop
                  add          s11, ra, s0
                  lui          s5, 23281
                  auipc        s6, 1028172
                  lui          s4, 915547
                  nop
                  srl          t1, t5, t4
                  slt          t6, s9, s9
                  sltu         ra, zero, tp
                  or           a6, a7, s9
                  beq          a6, a2, 265f
                  beq          s5, s8, 276f
                  sltu         ra, a2, a3
                  and          a7, t2, a7
260:              srli         a2, s0, 20
                  bltu         s6, s6, 266f
                  nop
                  andi         t1, t6, -423
                  slt          a3, a3, t0
265:              add          t0, tp, ra
266:              beq          s8, s0, 275f
                  srl          s10, sp, a0
                  srl          s3, s3, a2
                  srl          s8, s5, t0
                  add          t6, s2, t0
                  slt          a1, s2, s2
                  sub          tp, t2, s0
                  ori          a7, a7, 1409
                  bltu         zero, t3, 278f
275:              xori         a7, t5, 196
276:              add          a4, a0, t4
                  srl          t0, sp, t4
278:              srli         s6, a0, 11
                  addi         s2, s9, -112
                  auipc        s6, 1003933
                  beq          t6, t1, 290f
                  slti         s8, t5, -796
                  lui          t3, 631697
                  slli         a4, ra, 20
                  sltu         a5, s7, t0
                  auipc        a4, 679400
                  bne          s2, s0, 293f
                  ori          t0, a7, -847
                  ori          a1, s4, -247
290:              auipc        s7, 972077
                  slti         zero, sp, 1437
                  srl          s8, t2, t5
293:              sub          t6, s9, s3
                  nop
                  srl          t1, gp, a0
                  bgeu         t5, s2, 305f
                  sra          s8, sp, s1
                  srli         a5, s8, 21
                  bgeu         s5, s10, 312f
                  slti         s10, t1, 1819
                  bltu         s2, zero, 307f
                  xor          zero, t1, a4
                  add          t0, s10, s7
                  sltu         a6, t0, a3
305:              sub          gp, s0, s7
                  bne          s7, sp, 316f
307:              bge          t5, s8, 313f
                  and          a2, a2, a2
                  sra          ra, s11, s5
                  ori          t0, ra, 1724
                  slt          s3, zero, a3
312:              slli         a2, ra, 22
313:              srl          zero, gp, t1
                  add          a2, s7, a0
                  lui          a0, 462641
316:              sll          a7, s10, a7
                  slli         s11, t5, 27
                  beq          a5, t1, 329f
                  bge          gp, s1, 320f
320:              bge          t2, s4, 339f
                  bltu         tp, s0, 327f
                  slti         a3, t4, 1849
                  and          a1, t6, a0
                  sra          t3, a2, a6
                  srl          a0, ra, s11
                  sltiu        s9, t0, 1564
327:              srl          a7, gp, a1
                  slli         a3, t0, 13
329:              add          t0, s1, s9
                  addi         t4, tp, -266
                  lui          t3, 339225
                  bltu         a7, t4, 339f
                  or           ra, a0, s3
                  and          a0, tp, a6
                  srai         s6, t2, 28
                  sll          t2, gp, t6
                  nop
                  lui          s9, 242535
339:              xori         a7, a4, 1693
                  ori          t3, a0, 1582
                  sltiu        s4, a0, 163
                  sltiu        t6, s8, 463
                  srl          t0, s4, a6
                  bge          s11, s9, 348f
                  xori         t6, a7, 1501
                  srai         s11, s4, 25
                  sub          a0, s9, s6
348:              sltiu        t4, t1, 816
                  sltiu        a7, sp, -1239
                  beq          t2, s3, 364f
                  andi         a5, t3, -302
                  bne          sp, a3, 353f
353:              xor          ra, t5, a5
                  auipc        s4, 113763
                  srli         sp, a4, 15
                  xor          s4, s10, s5
                  add          t6, t0, s6
                  sub          a1, s9, a7
                  bge          a6, t2, 375f
                  blt          ra, t0, 379f
                  bgeu         s3, s1, 368f
                  srl          s2, a0, s6
                  xori         s9, a2, 1354
364:              andi         s7, a5, 460
                  or           s9, a1, a5
                  xor          s9, s6, a7
                  or           s2, t4, t1
368:              and          s11, t1, t0
                  sltu         ra, t4, s4
                  slti         t0, s0, -502
                  add          a2, t5, s2
                  xori         tp, ra, -697
                  lui          a3, 280982
                  sll          a2, gp, s8
375:              nop
                  bltu         gp, a0, 386f
                  bge          a7, t4, 390f
                  blt          t1, s7, 387f
379:              addi         sp, a3, -444
                  sltu         ra, a5, t4
                  sll          a0, a5, t1
                  ori          s4, s0, -1712
                  sra          s5, t1, s7
                  add          a3, s3, s3
                  xor          zero, a7, s4
386:              bne          sp, sp, 398f
387:              sll          t2, s5, s6
                  bne          a0, s9, 392f
                  lui          s10, 700522
390:              slt          s7, a0, ra
                  andi         t0, ra, 580
392:              beq          a3, a4, 401f
                  bltu         a3, t4, 403f
                  lui          s6, 385853
                  srai         s9, tp, 19
                  sll          s3, ra, s3
                  sll          t1, tp, t1
                  srai         s5, a6, 3
                  la           a0, sub_2
                  sltiu        s2, s0, 477
                  lui          s11, 423767
                  or           s11, sp, s2
                  addi         a0, a0, 507
                  ori          s6, s3, 1619
sub_1_j2:         jalr         a1, a0, -506 #jump sub_1 -> sub_2
                  addi         gp, t1, -55
                  sra          t3, t3, s4
                  sll          s8, t3, s8
                  slt          t1, a1, t4
398:              beq          zero, s0, 417f
                  xori         a2, a6, 1197
                  or           a6, s4, a7
401:              slli         zero, a4, 7
                  blt          t4, t3, 407f
403:              ori          ra, gp, 1036
                  sll          a5, a2, ra
                  srl          a2, s2, s3
                  srli         a0, t0, 18
407:              add          s11, a1, s2
                  or           a0, s2, t5
                  blt          t3, ra, 410f
410:              or           s5, s6, sp
                  bltu         a6, a2, 418f
                  bge          t4, s8, 424f
                  bgeu         a3, gp, 414f
                  la           t4, region_0+583 #start load_store_instr_stream_2
                  la           s2, region_0+426 #start load_store_instr_stream_4
                  la           s6, region_0+1967 #start load_store_instr_stream_1
                  la           a1, region_0+665 #start load_store_instr_stream_3
                  lb           s9, -136(a1)
                  lbu          t2, -190(t4)
                  lbu          s4, -191(a1)
                  lbu          a4, -4(s6)
                  lhu          s5, 97(a1)
                  la           ra, region_0+1045 #start load_store_instr_stream_0
                  lw           t6, 13(s6)
                  lbu          tp, 76(t4)
                  lbu          s4, -3(ra)
                  lbu          a6, 33(s2)
                  lbu          s9, 0(s6)
                  sb           zero, -219(a1)
                  lb           s3, -94(t4)
                  lh           a2, 24(s2)
                  lh           s8, -9(ra)
                  sb           a4, 4(s6)
                  lb           a7, -168(t4)
                  sb           s8, 11(s6)
                  sb           s5, -2(ra)
                  lb           t3, 244(t4)
                  sh           a3, 1(s6)
                  sb           s4, 81(a1)
                  sb           t6, 4(s6)
                  sh           a2, -12(s2)
                  lhu          s4, 69(a1)
                  lhu          s8, -47(t4)
                  lb           s8, 2(ra)
                  lbu          a5, -2(s6)
                  lbu          a6, -28(t4)
                  lbu          t6, 37(s2)
                  sb           a7, 3(ra)
                  lh           gp, -5(s6)
                  lb           a0, 12(ra)
                  lb           s7, 59(a1)
                  lhu          s7, 211(t4)
                  lhu          t3, 215(a1) #end load_store_instr_stream_3
                  sb           a2, 10(s6) #end load_store_instr_stream_1
                  lb           t3, 31(t4) #end load_store_instr_stream_2
                  lbu          tp, 9(s2) #end load_store_instr_stream_4
                  lbu          t0, 14(ra) #end load_store_instr_stream_0
414:              nop
                  lui          t1, 183194
                  sll          s2, a0, tp
417:              sra          a0, s10, ra
418:              slti         t3, tp, -485
                  slli         t2, t2, 26
                  sltiu        s9, a2, -769
                  sltiu        a2, sp, -299
                  srli         a0, a6, 24
                  bltu         t4, s7, 436f
424:              bgeu         s9, s6, 433f
                  ori          ra, sp, -1380
                  srli         a6, t3, 29
                  auipc        s7, 580260
                  or           tp, t6, a6
                  srli         a5, s8, 8
                  xori         a2, a3, -1133
                  sltu         s5, s11, s9
                  sra          s6, t1, s4
433:              slti         gp, a1, -435
                  srl          a1, s0, t4
                  srl          s2, s3, t6
436:              bge          a4, a7, 445f
                  and          a1, a3, a5
                  auipc        zero, 815874
                  slli         t4, s6, 16
                  xor          s11, a2, t4
                  bge          s6, t1, 445f
                  sll          a6, t5, t0
                  slt          t4, a4, s5
                  srl          s6, a5, s10
445:              srli         a5, a5, 30
                  beq          a2, a6, 461f
                  beq          a1, s11, 463f
                  srl          s10, s1, s0
                  sltu         a0, s6, t6
                  sra          t2, a4, s6
                  sltiu        a0, ra, -876
                  slli         t2, s10, 15
                  sltiu        s6, a3, -604
                  lui          t0, 430110
                  slti         a0, a3, -197
                  or           s3, zero, s11
                  and          s8, s0, s9
                  nop
                  sra          sp, a5, s9
                  sltu         s3, s4, s8
461:              addi         sp, s0, -1016
                  srai         t2, s4, 22
463:              slt          s11, gp, s8
                  bne          s4, a1, 468f
                  bgeu         s6, a0, 474f
                  andi         sp, sp, -1842
                  sra          s8, a5, s8
468:              slli         s3, s9, 18
                  add          a3, a6, t6
                  ori          a6, tp, 687
                  sltu         gp, s8, ra
                  sltu         ra, a5, t5
                  slt          s4, a5, a1
474:              xor          s3, s5, s8
                  sll          a1, s3, s5
                  or           a1, t1, s8
                  addi         zero, s2, 1619
                  srli         a5, a6, 26
                  sltiu        tp, t2, -588
                  and          a0, a4, gp
                  srli         s2, a5, 6
                  addi         a1, tp, -356
                  slli         s7, ra, 10
                  sll          s4, a0, tp
                  xor          s10, a7, a4
                  auipc        a7, 924707
                  sub          ra, s10, s2
                  sll          tp, a4, zero
                  sltu         a5, t5, t2
                  xor          a3, a5, a5
                  lui          t6, 569121
                  srl          a3, s0, zero
                  sltiu        gp, s0, 801
                  nop
                  sltu         s9, ra, sp
                  bge          t0, s5, 505f
                  slt          s11, a0, t0
                  nop
                  andi         a0, s4, 1559
                  slt          s8, a0, s0
                  andi         s11, gp, 189
                  xori         zero, a3, 1769
                  srli         t2, a2, 14
                  lui          s5, 64974
505:              bltu         s8, gp, 506f
506:              auipc        zero, 843349
                  xori         zero, s9, -757
                  beq          s4, t4, 523f
                  sll          s11, a7, s9
                  blt          s4, a7, 511f
511:              srli         a2, s1, 7
                  and          a2, tp, s11
                  bgeu         t4, t6, 525f
                  srl          s5, a5, a0
                  sltiu        a4, gp, 72
                  slti         s4, t1, -916
                  srl          s10, a2, s8
                  slti         a0, sp, -1246
                  andi         s5, s9, -315
                  beq          s7, s4, 521f
521:              andi         s8, t1, 1393
                  add          sp, t5, zero
523:              bltu         t0, gp, 527f
                  andi         a7, s10, 907
525:              bltu         a0, a1, 544f
                  andi         s10, s1, -1355
527:              sltiu        t2, s1, 239
                  slt          a0, s2, s2
                  auipc        a6, 1038412
                  and          s11, a7, s8
                  sltu         s11, sp, s9
                  blt          t3, t4, 543f
                  nop
                  bgeu         a0, s11, 540f
                  ori          ra, s6, 1590
                  sltu         tp, t1, s6
                  auipc        s11, 979908
                  and          a1, a0, a7
                  slli         s7, s4, 0
540:              blt          a0, t3, 547f
                  xor          s4, t3, s7
                  andi         a4, t2, 658
543:              addi         zero, ra, 1868
544:              and          a5, t4, a7
                  sll          gp, t5, s5
                  srl          sp, a6, s2
547:              beq          s5, s5, 559f
                  or           a6, s2, a1
                  sub          s11, a7, a5
                  bge          a4, ra, 551f
551:              auipc        a2, 850085
                  bne          a3, a2, 571f
                  sltu         s11, s3, sp
                  xor          a1, s6, t6
                  xori         a7, sp, 1286
                  sltu         sp, s8, ra
                  bge          a5, s4, 563f
                  xor          gp, gp, sp
559:              auipc        gp, 278291
                  andi         t3, t4, 898
                  sll          tp, s10, s6
                  slti         gp, a2, -1653
563:              lui          a2, 87906
                  sltiu        t0, a4, -82
                  sll          s4, s1, a6
                  blt          t4, t1, 579f
                  add          s11, a2, t6
                  bne          s11, a7, 578f
                  nop
                  bge          t2, a3, 574f
571:              sub          s8, s11, s7
                  bge          a4, gp, 585f
                  sra          a6, s8, t4
574:              srl          s2, s1, s5
                  xori         a7, t1, 1860
                  slt          a0, a0, s1
                  blt          s3, s5, 596f
578:              sll          a3, a4, a0
579:              slli         ra, s10, 7
                  sltiu        a0, s11, -2022
                  auipc        gp, 938004
                  la           t6, region_0+840 #start riscv_load_store_rand_instr_stream_3
                  slt          s7, t2, ra
                  lbu          t3, 11(t6)
                  lbu          a4, 9(t6)
                  sb           a6, -33(t6)
                  lbu          s4, -6(t6)
                  xor          gp, t2, s6
                  sltu         s9, t2, s10
                  srl          s6, t2, t5
                  srl          tp, zero, t0
                  sb           tp, 24(t6)
                  lbu          s6, -9(t6)
                  xori         sp, s8, 438
                  lw           s10, -32(t6)
                  lui          ra, 846064
                  lb           s4, -25(t6)
                  or           tp, t0, t6
                  sh           a6, 38(t6)
                  ori          a4, t3, 1546
                  sb           s11, 38(t6)
                  sb           s3, 55(t6)
                  sb           a1, 47(t6)
                  srai         s11, a4, 12
                  lb           a5, 49(t6)
                  ori          t0, s9, -760
                  lbu          a4, -18(t6)
                  or           ra, t3, a3
                  lbu          s6, -27(t6)
                  srai         zero, a4, 1
                  lw           ra, -52(t6)
                  xori         a3, gp, -1258
                  lw           s8, 8(t6)
                  sb           s4, 62(t6)
                  lb           sp, -9(t6)
                  xor          s10, s1, a2
                  sll          zero, a7, s9
                  lb           s6, 13(t6)
                  lhu          t2, -42(t6)
                  lhu          gp, 30(t6)
                  lhu          a0, -52(t6)
                  sra          s9, sp, a3
                  lb           s7, 26(t6)
                  sh           a0, 8(t6)
                  sb           t6, 41(t6)
                  lh           t1, -34(t6)
                  lh           s8, -18(t6) #end riscv_load_store_rand_instr_stream_3
                  sub          t0, a0, s1
                  andi         t0, s7, -1667
                  nop
585:              auipc        s8, 19232
                  addi         s11, tp, -743
                  slli         s8, gp, 28
                  or           t4, gp, tp
                  srai         a5, a2, 9
                  lui          t3, 136075
                  andi         ra, s8, 1783
                  bne          t1, ra, 606f
                  bgeu         a0, s0, 600f
                  srli         s9, ra, 5
                  sltu         ra, a7, s5
596:              srl          t2, s4, t6
                  ori          t1, a5, 310
                  bge          a4, s8, 607f
                  and          s3, zero, s3
600:              bltu         a5, s2, 609f
                  srli         t4, s5, 16
                  auipc        sp, 905518
                  nop
                  slt          s8, s0, s2
                  sub          tp, s3, s0
606:              bltu         a3, t5, 611f
607:              slli         t6, s6, 29
                  or           sp, s10, a6
609:              slti         a0, a6, 406
                  slli         ra, s7, 22
611:              bge          a7, s8, 618f
                  slti         t0, tp, 649
                  or           a4, t3, a5
                  beq          t4, t1, 624f
                  ori          s8, zero, 1977
                  sltu         a3, t0, a0
                  bge          t1, t5, 622f
618:              or           s10, a6, gp
                  srai         a5, t0, 21
                  add          a6, s8, gp
                  sltiu        a2, s0, 499
622:              addi         t0, ra, 943
                  bge          a2, sp, 642f
624:              bltu         a6, a3, 631f
                  slt          t0, s3, zero
                  sra          a0, s9, s11
                  sra          s3, s9, s4
                  nop
                  ori          t4, t6, 935
                  ori          t6, gp, 716
631:              auipc        sp, 179506
                  bge          a2, t2, 642f
                  blt          t5, a5, 642f
                  srai         s6, t5, 11
                  or           a1, t2, s1
                  sra          s6, s6, sp
                  and          zero, zero, s7
                  sub          s7, a3, t6
                  sltu         t0, s4, zero
                  sltiu        zero, sp, -27
                  bge          s4, a6, 654f
642:              sll          s10, a6, s2
                  sltiu        sp, s0, 288
                  xori         s3, s0, -1336
                  bge          s3, t2, 657f
                  sub          a1, t2, s0
                  andi         a7, a3, 949
                  beq          sp, s1, 658f
                  xori         t2, s2, -1589
                  xori         s9, a3, 1081
                  sra          a4, t1, s10
                  xori         s8, a4, 459
                  sub          a1, a0, a4
654:              ori          t4, gp, 139
                  bltu         t0, a1, 667f
                  bltu         s0, s1, 657f
657:              blt          a3, a6, 663f
658:              and          a4, t0, t1
                  sll          s2, s9, ra
                  sll          a2, s11, a3
                  slti         a5, s8, 581
                  bge          t4, t4, 666f
663:              auipc        tp, 118809
                  addi         s5, a0, -1349
                  xor          ra, s6, a2
666:              addi         s4, t0, 614
667:              slti         ra, a1, -271
                  srl          a6, t6, s1
                  sltu         s2, a5, a2
                  srli         s4, tp, 30
                  auipc        a7, 366182
                  and          a0, t1, s1
                  and          s4, s9, a0
                  nop
                  slt          s4, a1, a2
                  lui          sp, 555976
                  and          a6, s6, tp
                  slli         t2, sp, 25
                  bne          t1, s7, 698f
                  bgeu         a0, gp, 696f
                  addi         s8, s1, 143
                  sll          s3, sp, s5
                  xor          a1, t1, a1
                  bge          a3, s8, 703f
                  srl          ra, t1, a1
                  bgeu         zero, s9, 693f
                  andi         zero, t1, 272
                  sltiu        a0, tp, -324
                  slli         s7, a3, 18
                  sll          zero, a5, ra
                  slti         a5, t2, 496
                  ori          s9, t6, -346
693:              srl          s11, a6, s10
                  sltiu        s9, a2, -1965
                  beq          s11, s0, 696f
                  la           a3, sub_2
                  lui          a1, 428658
                  auipc        a4, 844579
                  sll          a6, t0, ra
                  slli         a4, s2, 28
                  srl          a6, t1, t2
                  or           a2, t5, t6
                  add          t4, t5, t3
                  addi         a3, a3, 517
                  auipc        s11, 13656
                  auipc        s7, 1015333
                  and          s8, s6, s0
sub_1_j3:         jalr         a1, a3, -516 #jump sub_1 -> sub_2
696:              sub          s5, s3, s0
                  bgeu         t6, a5, 698f
698:              bne          a1, s10, 709f
                  sub          s4, s2, a6
                  and          s4, a6, ra
                  bne          sp, t0, 705f
                  blt          s4, a5, 712f
703:              lui          t6, 353661
                  auipc        s11, 297239
705:              sub          sp, s1, gp
                  and          a5, t0, s3
                  srl          s8, s10, s5
                  sub          gp, a6, gp
709:              beq          a1, s11, 712f
                  slt          s6, zero, a1
                  sltiu        a5, sp, -243
712:              lui          a3, 996554
                  srl          s2, a6, t4
                  lw           a1, 4(s0)
                  sra          s11, s7, t3
                  srai         t1, t4, 30
                  sltiu        s3, ra, -487
                  add          a7, a0, zero
                  addi         s0, s0, 48
                  add          t6, a2, s1
                  slt          t6, s0, a1
1387:             addi x27, x11, 0
1387:             jalr x27, x27, 0
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_2:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_3:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_4:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_5:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_6:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_7:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_8:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_9:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_10:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_11:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_12:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_13:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_14:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

mmode_intr_vector_15:
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
                  add x30, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x9, test_done
                  jalr x0, x9, 0

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
                  add x30, x8, zero
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x10, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x10, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x10, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x10, x7, ecall_handler
                  li x7, 0x1
                  beq x10, x7, instr_fault_handler
                  li x7, 0x5
                  beq x10, x7, load_fault_handler
                  li x7, 0x7
                  beq x10, x7, store_fault_handler
                  li x7, 0xc
                  beq x10, x7, pt_fault_handler
                  li x7, 0xd
                  beq x10, x7, pt_fault_handler
                  li x7, 0xf
                  beq x10, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x8, x30, zero
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
                  add x8, x30, zero
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
                  add x8, x30, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x8, x30, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x8, x30, zero
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
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x8, x30, zero
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
