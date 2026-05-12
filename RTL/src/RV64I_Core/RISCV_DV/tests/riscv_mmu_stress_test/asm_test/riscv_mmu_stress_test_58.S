.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0xecf3a3d8
                  li x1, 0xb48d4fcf
                  li x2, 0xf1c528ba
                  li x3, 0xe7346e0
                  li x4, 0x3
                  li x5, 0x0
                  li x6, 0x0
                  li x9, 0x0
                  li x10, 0x28bf11a0
                  li x11, 0x0
                  li x12, 0x87f50f64
                  li x13, 0x0
                  li x14, 0x3
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xdadf330a
                  li x18, 0xe
                  li x19, 0x0
                  li x20, 0x4ec2302f
                  li x21, 0xb4112254
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x511a7238
                  li x25, 0x80000000
                  li x26, 0xf5bb8f9b
                  li x27, 0x2
                  li x28, 0xfb573c5e
                  li x29, 0x60908dfd
                  li x30, 0xf8b41aa3
                  li x31, 0x5775fe2
                  la x7, user_stack_end
main:             la           s4, region_0+470 #start riscv_load_store_rand_instr_stream_0
                  lui          s10, 861164
                  addi         s10, a5, 845
                  lb           a5, 7(s4)
                  lb           t0, 15(s4)
                  lbu          s1, 61(s4)
                  sb           s3, -24(s4)
                  sltiu        t5, t4, -1489
                  lbu          s2, -34(s4)
                  nop
                  xor          s8, s9, a4
                  addi         s10, s8, -322
                  andi         gp, t5, 1580
                  add          s9, s5, t2
                  lbu          s6, -18(s4)
                  lbu          s6, 58(s4)
                  lbu          s3, 19(s4)
                  slli         gp, gp, 17
                  lb           s7, -3(s4)
                  lbu          s10, -15(s4)
                  sb           a6, -35(s4)
                  lh           ra, -42(s4)
                  add          s10, t3, s6
                  lh           s7, -2(s4)
                  sra          t3, s5, t6
                  lb           t0, -19(s4)
                  or           s7, t4, a3
                  xor          s1, gp, s6
                  ori          a7, s6, -560
                  lbu          t0, 47(s4)
                  sb           t2, -62(s4)
                  add          s8, t5, a0
                  sb           t4, 54(s4)
                  sll          a6, tp, a0
                  slti         t1, s6, 1391
                  sb           sp, -39(s4) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+736 #start load_store_instr_stream_0
                  lb           zero, 46(s8)
                  la           t1, region_1+1252 #start load_store_instr_stream_1
                  la           s9, region_1+1422 #start load_store_instr_stream_2
                  sb           gp, -13(t1)
                  lbu          a4, 3(s9)
                  sb           s10, 25(s9)
                  sb           tp, 0(t1)
                  lb           s5, 13(t1)
                  lbu          tp, 48(s9)
                  sb           s2, 103(s8)
                  lb           s11, -14(t1)
                  lbu          s7, 3(t1)
                  sb           gp, -11(s9)
                  lhu          s11, 790(s8)
                  lb           s10, -37(s9)
                  lbu          a6, 10(t1)
                  sb           a1, -7(s9)
                  sh           s10, -556(s8)
                  sh           a5, 64(s9)
                  lw           sp, -42(s9)
                  sh           sp, -12(t1)
                  lbu          s5, -53(s9)
                  sh           s10, 198(s8)
                  sb           a5, 53(s9) #end load_store_instr_stream_2
                  lbu          s5, 13(t1) #end load_store_instr_stream_1
                  lh           t4, 732(s8) #end load_store_instr_stream_0
                  la           s8, region_0+1904 #start riscv_load_store_hazard_instr_stream_0
                  lb           s1, -103(s8)
                  sb           t1, -103(s8)
                  sb           a6, -103(s8)
                  add          a1, ra, s0
                  lbu          t1, -103(s8)
                  lb           gp, -54(s8)
                  sb           s3, -9(s8)
                  sb           a2, -9(s8)
                  sb           s11, -79(s8)
                  lbu          t6, -79(s8)
                  lbu          a6, -79(s8)
                  lh           s5, -238(s8)
                  sb           a5, -75(s8)
                  lhu          a2, 94(s8)
                  lhu          sp, 94(s8)
                  sb           sp, -179(s8)
                  sb           s11, -179(s8)
                  lbu          t5, -179(s8)
                  sb           t1, -161(s8) #end riscv_load_store_hazard_instr_stream_0
                  bne          s1, s4, 2f
                  xor          s10, a2, t4
2:                slt          s1, a5, s4
                  andi         t3, s3, 837
                  bge          a3, a1, 18f
                  beq          s11, sp, 9f
                  xori         zero, s11, -2031
                  beq          s5, t1, 27f
                  slt          gp, s3, a6
9:                xor          s7, s7, s7
                  nop
                  sltu         t6, s11, t1
                  and          a5, gp, a5
                  sll          zero, s2, s4
                  auipc        s1, 564604
                  srl          s3, s10, s8
                  addi         t4, a3, 1420
                  blt          ra, zero, 35f
18:               auipc        t1, 392388
                  bne          s6, t3, 33f
                  auipc        s7, 718444
                  blt          t6, s4, 26f
                  slt          gp, s5, s5
                  slli         s11, s9, 1
                  lui          s1, 485899
                  ori          a6, a5, -1436
26:               ori          a5, a0, -1912
27:               add          sp, s7, t1
                  xor          sp, tp, s11
                  bne          s6, a2, 34f
                  bge          sp, t1, 37f
                  nop
                  ori          s11, s3, 420
33:               srai         a6, s8, 2
34:               and          a5, s6, a1
35:               sra          t6, ra, a3
                  sltiu        a5, a2, 808
37:               or           s9, s9, s3
                  or           t4, a7, s11
                  sltiu        s2, a6, 509
                  addi         a2, s2, 427
                  sltu         s7, a0, s9
                  xor          a7, s10, t0
                  srai         a7, s10, 13
                  lui          s9, 798055
                  addi         a6, a5, -1151
                  sra          a2, s7, s1
                  addi         t4, s9, 208
                  auipc        t0, 842786
                  la           s10, sub_1
                  slti         t3, s0, 710
                  sub          s3, s2, s4
                  or           s6, tp, t2
                  lui          s2, 670123
                  addi         s10, s10, 49
                  add          t6, t5, zero
main_j2:          jalr         t1, s10, -48 #jump main -> sub_1
                  auipc        ra, 788528
                  sra          s3, t1, s7
                  sltu         s11, ra, s1
                  andi         s2, s4, -1850
                  xori         s7, zero, -1659
                  bne          a1, s7, 55f
55:               slli         ra, t3, 16
                  add          sp, s10, tp
                  and          a7, s9, s3
                  xor          t1, t5, a0
                  or           gp, zero, s0
                  sub          t0, s7, s9
                  sra          s9, s3, t2
                  bgeu         zero, s8, 75f
                  sub          sp, s11, s10
                  srli         a6, s0, 20
                  xor          t0, s2, t2
                  blt          a5, t4, 82f
                  xori         s1, s8, 211
                  or           t5, tp, ra
                  ori          t6, a0, 1683
                  sll          zero, a0, t6
                  lui          zero, 908285
                  sltu         s6, s8, s10
                  srai         s5, t0, 6
                  xor          a7, s8, ra
75:               sltiu        sp, gp, 1231
                  bltu         t0, a2, 94f
                  nop
                  bge          t3, s3, 81f
                  srai         s6, a1, 8
                  lui          s2, 837836
81:               bgeu         gp, s8, 101f
82:               and          s1, t1, gp
                  auipc        gp, 236748
                  nop
                  and          a4, gp, s1
                  sub          s4, tp, a0
                  lui          s1, 1008716
                  la           s8, sub_1
                  nop
                  addi         s8, s8, 132
                  addi         a2, a5, 117
                  srli         a5, s6, 11
                  sltiu        t0, sp, -1996
                  sltiu        s6, s4, 156
                  lui          t3, 214816
main_j1:          jalr         t1, s8, -131 #jump main -> sub_1
                  bge          s8, s7, 105f
                  xor          gp, s4, a1
                  sub          t5, s2, a0
                  addi         s5, a0, -1881
                  sltu         a3, s3, s3
                  sll          a1, t0, t3
                  and          a6, s2, s1
                  xor          ra, s0, s8
94:               bgeu         a7, a3, 101f
                  sub          a6, a6, a4
                  srli         s1, a6, 17
                  sltiu        t0, t4, 910
                  beq          t0, a1, 99f
99:               ori          s10, t5, 104
                  and          t1, t2, s10
101:              sltu         s5, s11, tp
                  xor          a4, gp, s10
                  blt          s9, s9, 109f
                  beq          gp, a1, 113f
105:              sltu         s5, s7, t3
                  lui          tp, 721006
                  xor          t1, t2, a6
                  sltu         s3, a2, t6
109:              sll          a2, s6, s6
                  or           a4, t5, t5
                  andi         t4, a5, -218
                  ori          s8, t5, 168
113:              bltu         s1, s10, 126f
                  sra          sp, t6, t2
                  sra          t0, t5, gp
                  xori         s9, t5, 278
                  addi         s9, s8, 2026
                  blt          gp, a4, 137f
                  bne          gp, s2, 130f
                  or           s5, a0, a1
                  sll          zero, s9, a4
                  sltu         gp, t6, t3
                  slli         s5, a4, 23
                  bltu         t2, s4, 131f
                  sll          ra, a1, a2
126:              ori          a7, a4, -270
                  add          s3, s1, s1
                  add          ra, a4, t6
                  xor          s10, s1, s10
130:              sll          s11, s6, s1
131:              slti         t4, s2, -652
                  sll          a7, gp, a1
                  srai         a1, a0, 4
                  xor          t0, s8, zero
                  bne          a0, s8, 151f
                  srai         s2, a3, 8
137:              bltu         t2, a6, 156f
                  sra          s6, t5, gp
                  or           t4, s9, a1
                  nop
                  srl          t1, tp, sp
                  bltu         s2, t2, 154f
                  bgeu         a5, t2, 163f
                  addi         a3, s2, 722
                  blt          s6, zero, 162f
                  ori          t3, zero, 786
                  andi         tp, s4, -270
                  xor          s11, s10, tp
                  sltu         s10, s2, s8
                  beq          s8, s6, 156f
151:              beq          t0, t0, 158f
                  sltu         s1, s6, t4
                  auipc        tp, 669586
154:              srai         gp, t1, 17
                  xori         s10, s7, 1206
156:              bne          a1, t1, 172f
                  blt          s11, s11, 170f
158:              srl          a4, s9, t3
                  bge          t4, sp, 170f
                  slti         t3, s1, -637
                  bne          s11, t3, 175f
162:              sltu         a4, a2, a3
163:              slti         zero, s6, 620
                  beq          s7, t1, 181f
                  bgeu         s1, t3, 169f
                  srai         a6, gp, 31
                  srai         t5, t2, 30
                  xori         s9, s6, -31
169:              ori          t0, tp, -1336
170:              slli         s9, a5, 5
                  blt          s3, t2, 181f
172:              lui          a1, 652824
                  xor          a2, s1, a6
                  nop
175:              andi         ra, a0, -1722
                  nop
                  bltu         s4, zero, 181f
                  sra          gp, s1, t6
                  sltu         t0, t2, a0
                  xori         zero, s2, 1749
181:              slti         t3, s6, 662
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xori         a4, t2, 724
                  lui          s1, 690143
                  lui          t5, 934300
                  sra          s6, a5, t3
                  xori         s4, s2, -1611
                  addi         t2, t2, -56
                  sw           t1, 4(t2)
                  addi         tp, a4, -20
                  sra          s7, a2, a7
                  ori          a3, a6, -477
                  sra          t6, s0, a3
                  la           tp, region_1+681 #start riscv_load_store_hazard_instr_stream_0
                  sb           gp, -8(tp)
                  lbu          s1, -8(tp)
                  sb           s1, -8(tp)
                  lbu          s10, 12(tp)
                  sb           gp, 12(tp)
                  sb           a4, 12(tp)
                  sb           s6, 9(tp)
                  lhu          t0, 9(tp)
                  or           t4, s8, t2
                  lh           a1, 9(tp)
                  auipc        s1, 507021
                  lb           a5, 9(tp)
                  sh           t3, 9(tp)
                  lh           s10, -13(tp)
                  add          s4, t6, s3
                  slti         a6, a3, -1135
                  sb           s0, 12(tp)
                  sb           s1, 12(tp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1101 #start riscv_load_store_rand_instr_stream_0
                  sw           t2, 303(sp)
                  sra          a3, a7, a2
                  andi         t0, t1, 502
                  sh           a3, -3(sp)
                  slli         s8, s10, 8
                  or           a2, s2, gp
                  or           a1, s0, s2
                  sll          a4, sp, s7
                  srl          s2, a5, s7
                  sra          t3, ra, a4
                  slt          s1, s7, s8
                  lb           s5, 626(sp)
                  slt          s4, a2, tp
                  lb           a2, 738(sp)
                  or           t0, s3, s1
                  sll          t6, a1, s4
                  sh           s4, -215(sp)
                  srl          a2, s11, s9
                  sb           tp, -626(sp)
                  add          ra, sp, s4
                  slli         s11, ra, 3
                  lb           a2, 704(sp)
                  sra          a4, ra, s6
                  sltu         s11, s3, ra
                  lb           s11, -959(sp)
                  sb           a0, -784(sp)
                  sltu         a7, a7, s8
                  and          a1, t2, s0
                  sra          s6, s9, a4
                  srl          tp, s8, t4
                  xori         zero, tp, -1188
                  srli         a4, ra, 3
                  sll          s3, s5, s11
                  lbu          s11, -839(sp)
                  xor          s8, s0, a0
                  lb           s1, -872(sp)
                  lb           s5, 681(sp) #end riscv_load_store_rand_instr_stream_0
                  blt          s1, s2, 15f
                  slti         s2, a4, -1564
                  sub          s11, a6, a0
                  slli         a7, gp, 21
                  bne          s8, t2, 17f
                  bltu         s9, s11, 17f
                  slli         s11, s10, 29
                  nop
                  sub          a3, t0, a0
                  bne          s6, t2, 19f
                  nop
                  nop
                  andi         t6, a0, 1068
                  slli         ra, s9, 21
                  bltu         t6, t5, 29f
15:               lui          a5, 744748
                  bne          s4, t4, 25f
17:               slt          s9, s0, t5
                  ori          t5, s10, 1961
19:               bgeu         sp, s3, 26f
                  bgeu         s10, s5, 27f
                  bgeu         s0, gp, 40f
                  sltu         a7, s11, s11
                  sltiu        a5, s2, 1542
                  sub          s2, s11, s7
25:               srai         s10, zero, 21
26:               slti         gp, a7, -1223
27:               lui          s10, 404647
                  nop
29:               beq          t4, a6, 40f
                  andi         t3, a7, -763
                  and          t4, a7, sp
                  sltiu        s2, a6, -849
                  addi         t6, t6, -1355
                  srli         s5, s7, 14
                  srl          a7, t5, a6
                  andi         t5, s3, -1751
                  bgeu         t0, a0, 46f
                  beq          a7, s0, 51f
                  add          s9, a6, a1
40:               slli         tp, s2, 26
                  lui          s9, 377502
                  beq          s1, a1, 58f
                  add          sp, s2, t3
                  lui          ra, 867181
                  blt          s9, gp, 59f
46:               sltiu        t5, s8, -2041
                  nop
                  beq          a1, t0, 50f
                  bne          zero, a5, 54f
50:               sll          zero, s9, a7
51:               ori          a7, tp, 1530
                  bge          s5, s0, 55f
                  andi         s10, a1, -1690
54:               sltiu        s2, a4, 328
55:               and          zero, s8, a5
                  la           a4, region_0+1364 #start load_store_instr_stream_1
                  la           s9, region_0+702 #start load_store_instr_stream_0
                  lhu          ra, -2(s9)
                  lhu          sp, -10(a4)
                  sh           a2, -12(s9)
                  lb           s8, 1(a4)
                  lb           t5, -2(a4)
                  sw           t5, 2(s9)
                  lb           s11, 7(a4)
                  sw           s1, 6(s9)
                  lbu          t0, 5(s9)
                  sb           s6, -1(a4)
                  sh           t5, 4(s9)
                  sb           t1, -10(a4)
                  lbu          s10, -13(s9)
                  lb           s4, 9(a4)
                  lhu          s5, -8(s9)
                  sh           t6, -2(a4)
                  lb           t1, -7(a4) #end load_store_instr_stream_1
                  lbu          zero, 4(s9) #end load_store_instr_stream_0
                  sub          a5, ra, s2
                  srl          t4, s1, s2
58:               addi         a5, s3, 431
59:               ori          a7, a2, 381
                  srli         t1, ra, 30
                  bge          a1, zero, 79f
                  nop
                  ori          sp, ra, -787
                  bgeu         t1, t6, 69f
                  addi         a2, sp, -1422
                  slli         a7, ra, 27
                  nop
                  slt          t3, t3, t3
69:               xor          s11, t2, t5
                  nop
                  srai         gp, a5, 21
                  sltiu        a1, sp, -1351
                  or           t4, s5, a4
                  xori         s4, tp, -263
                  bge          t2, a1, 95f
                  andi         a7, t2, 1050
                  bgeu         a1, t4, 89f
                  bne          s5, s9, 97f
79:               add          s8, tp, zero
                  sltu         zero, sp, s4
                  srai         a1, zero, 0
                  bge          t6, s0, 93f
                  bgeu         t2, t1, 96f
                  xori         zero, s6, -1175
                  srli         a5, s6, 9
                  nop
                  auipc        a6, 285493
                  sub          s3, s8, s2
89:               andi         sp, a7, 1740
                  auipc        t4, 643940
                  andi         zero, gp, 1935
                  bne          t5, t2, 105f
93:               andi         t6, s4, -823
                  blt          s9, a3, 101f
95:               sltiu        a1, t6, 925
96:               add          sp, s6, a1
97:               bltu         s8, s1, 98f
98:               nop
                  bne          s1, sp, 100f
100:              sltiu        s9, t0, 129
101:              or           t5, zero, t2
                  sub          s3, ra, s6
                  add          ra, s7, a3
                  bltu         zero, a2, 105f
105:              or           a2, s6, tp
                  add          a3, s5, s9
                  andi         t3, s4, -339
                  srl          s2, zero, s4
                  auipc        t6, 260092
                  slt          a3, a1, t0
                  slt          a2, s2, a1
                  sub          s8, s8, t6
                  slti         t5, s0, 1135
                  slti         s7, zero, -1316
                  bne          s4, s4, 126f
                  sltiu        s10, t3, 1586
                  blt          s4, a0, 120f
                  addi         s9, s7, 403
                  slti         s2, s6, 508
120:              bge          s1, s11, 126f
                  lui          s2, 175037
                  ori          t4, t3, -2017
                  sra          a6, t5, t3
                  bne          t5, a7, 126f
                  blt          s11, t4, 126f
126:              sub          a3, t5, s3
                  lw           t1, 4(t2)
                  slti         s4, t1, -976
                  sra          s5, s7, s7
                  addi         t2, t2, 56
                  xori         s6, s0, -234
220:              addi x2, x6, 1
220:              jalr x2, x2, 0
sub_1:            srl          s7, a2, a0
                  srl          s3, s1, sp
                  and          a7, s1, s4
                  srai         s1, a3, 23
                  andi         s3, s3, 322
                  sra          s10, a0, s3
                  addi         t2, t2, -60
                  add          a5, s8, s7
                  sra          s7, tp, zero
                  sltu         a2, s10, s6
                  sw           t1, 4(t2)
                  auipc        s4, 820323
                  la           sp, region_1+850 #start riscv_load_store_hazard_instr_stream_1
                  lh           gp, -60(sp)
                  sb           s4, -60(sp)
                  sub          s7, a2, a3
                  sh           t4, 42(sp)
                  andi         s8, s3, -1876
                  lb           gp, 42(sp)
                  lw           s6, 42(sp)
                  lw           t6, 42(sp)
                  lbu          t4, 42(sp)
                  lbu          s5, 42(sp)
                  lbu          t6, 12(sp)
                  lb           s2, 52(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t4, region_0+296 #start riscv_load_store_hazard_instr_stream_4
                  lb           s11, 15(t4)
                  nop
                  add          s2, s3, tp
                  lbu          t6, -7(t4)
                  sra          a3, s10, s1
                  and          gp, s7, s1
                  lbu          tp, -7(t4)
                  lb           s6, -7(t4)
                  slt          s5, t1, t4
                  sb           s5, -7(t4)
                  lhu          zero, -16(t4)
                  lbu          a7, -3(t4)
                  lbu          t5, 9(t4)
                  lb           s6, -7(t4)
                  lb           t6, -7(t4)
                  sb           t1, -7(t4)
                  sb           zero, -7(t4)
                  lb           t0, -7(t4)
                  lbu          a3, -7(t4)
                  sb           s10, -7(t4)
                  sh           t3, 4(t4) #end riscv_load_store_hazard_instr_stream_4
                  la           a6, region_0+617 #start load_store_instr_stream_2
                  la           s10, region_0+1913 #start load_store_instr_stream_0
                  la           s5, region_0+1112 #start load_store_instr_stream_1
                  lbu          a1, 15(s10)
                  sb           s10, 57(s5)
                  lbu          gp, 1(s10)
                  sb           t0, 583(a6)
                  lb           a5, 300(a6)
                  sw           s3, -40(s5)
                  lw           s9, 979(a6)
                  lbu          t1, 4(s10)
                  sh           a7, 50(s5)
                  lbu          t3, 5(s10)
                  lb           t0, -374(a6)
                  lbu          a7, 8(s10)
                  lb           sp, 50(s5)
                  lb           sp, -9(s5)
                  sb           ra, -6(s10)
                  lb           s7, 172(a6)
                  lh           a5, 6(s5)
                  sb           a1, -23(s5)
                  lw           s3, 52(s5)
                  lh           zero, 13(s10)
                  lb           s6, 456(a6) #end load_store_instr_stream_2
                  lh           t5, 15(s10)
                  lhu          a4, -58(s5)
                  sb           a3, 24(s5) #end load_store_instr_stream_1
                  sb           a2, 14(s10) #end load_store_instr_stream_0
                  la           s5, region_0+508 #start load_store_instr_stream_1
                  la           ra, region_0+336 #start load_store_instr_stream_0
                  lbu          s7, 241(s5)
                  lbu          a2, -6(ra)
                  lh           gp, 12(ra)
                  lbu          s6, -145(s5)
                  lbu          s2, 99(s5)
                  sb           a1, 9(ra)
                  sb           s11, -10(ra)
                  lhu          t6, -126(s5)
                  lb           a3, -8(ra)
                  sb           s3, -219(s5)
                  lbu          s10, 9(ra)
                  lb           sp, -3(ra)
                  lbu          a5, -3(ra)
                  lbu          t5, -1(ra)
                  lb           t5, 66(s5) #end load_store_instr_stream_1
                  lbu          s10, -7(ra) #end load_store_instr_stream_0
                  la           t3, region_1+1343 #start riscv_load_store_hazard_instr_stream_2
                  sb           t4, 12(t3)
                  sb           sp, 12(t3)
                  sb           t0, -16(t3)
                  lbu          t0, -16(t3)
                  addi         a5, t6, -1284
                  sra          sp, a2, s11
                  lbu          a6, -2(t3)
                  lbu          gp, -2(t3)
                  lb           a7, -2(t3)
                  lb           ra, -2(t3)
                  sh           a2, -7(t3)
                  sh           s7, -7(t3)
                  lhu          sp, -7(t3)
                  sb           a2, 6(t3)
                  and          a4, a0, tp
                  sub          s9, s0, s5
                  sb           s11, 4(t3) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+495 #start riscv_load_store_hazard_instr_stream_3
                  lbu          s9, 147(sp)
                  nop
                  sra          s8, t2, sp
                  lh           t0, 147(sp)
                  sb           zero, 147(sp)
                  slli         a1, gp, 8
                  sh           a0, 147(sp)
                  sb           tp, -189(sp)
                  sb           tp, -189(sp)
                  lbu          s10, -189(sp)
                  lb           s2, -189(sp)
                  xori         s4, t2, 706
                  lb           s9, -189(sp)
                  lb           t0, -189(sp)
                  andi         t5, s6, 1212
                  sb           s10, -189(sp)
                  slt          s2, a0, s7
                  lhu          s7, -189(sp)
                  lw           t4, 165(sp)
                  sw           a2, 165(sp)
                  sh           t2, 165(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           tp, region_1+260 #start load_store_instr_stream_1
                  lb           t1, -165(tp)
                  sb           s9, 152(tp)
                  lb           s11, 231(tp)
                  la           s8, region_1+810 #start load_store_instr_stream_0
                  lbu          a6, 159(tp)
                  lb           t1, 779(s8)
                  lbu          s2, -713(s8)
                  lbu          t6, 630(s8)
                  sb           s9, 799(s8)
                  lbu          a3, -133(tp)
                  sh           s1, -198(tp) #end load_store_instr_stream_1
                  sw           zero, -650(s8) #end load_store_instr_stream_0
                  la           sp, region_0+1266 #start riscv_load_store_rand_instr_stream_0
                  lb           a4, -15(sp)
                  sb           s3, -15(sp)
                  sb           t4, -11(sp)
                  sra          s9, s7, a2
                  sh           s0, 4(sp)
                  xor          t4, a3, s9
                  lb           t3, -1(sp)
                  lb           t5, -16(sp)
                  sb           s8, 7(sp)
                  lbu          s5, -8(sp)
                  xori         s3, a2, -1571
                  lbu          s8, 13(sp)
                  sb           s10, 12(sp)
                  slti         t4, s0, 1068
                  slt          zero, a4, gp
                  and          s5, s4, zero
                  sh           gp, -14(sp)
                  sb           t4, -1(sp)
                  lb           gp, 1(sp)
                  sb           t6, 8(sp)
                  sh           t6, -8(sp)
                  lbu          t1, 16(sp)
                  andi         a6, t0, 1893
                  xor          t1, s9, a5
                  lb           t1, 6(sp)
                  sh           s11, -12(sp)
                  and          s3, s3, a1
                  lb           t5, -14(sp)
                  nop
                  lb           gp, 5(sp)
                  lb           t3, -4(sp)
                  sh           t2, 8(sp)
                  lbu          s7, -16(sp)
                  lb           a5, 7(sp)
                  lbu          s4, -9(sp)
                  lbu          a6, 3(sp)
                  sh           a7, -4(sp)
                  andi         a6, a5, 40
                  lbu          zero, 5(sp)
                  lhu          a7, -12(sp)
                  lui          a2, 331800
                  lb           t4, -15(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_1+1606 #start riscv_load_store_rand_instr_stream_5
                  lh           t6, -232(a5)
                  sb           s8, -510(a5)
                  sltu         a6, a7, t6
                  xor          s7, sp, s2
                  lbu          a3, 173(a5)
                  srl          a3, gp, a5
                  andi         t1, s5, -1328
                  lbu          s2, -147(a5)
                  lb           a4, -1195(a5)
                  srl          zero, a5, zero
                  lb           a6, -937(a5)
                  nop
                  lhu          s9, -1182(a5)
                  lbu          a7, 296(a5)
                  slt          gp, s3, s3
                  sub          t5, zero, gp
                  lbu          s5, -1387(a5)
                  sb           a1, -337(a5)
                  sb           s9, -403(a5)
                  sh           s2, -1332(a5)
                  xori         s2, t1, -1774
                  lhu          s6, 98(a5)
                  sltiu        gp, a1, -444
                  lbu          sp, -452(a5)
                  sb           t4, -37(a5)
                  xor          ra, s8, a7
                  or           zero, a1, t3
                  lh           a6, -1468(a5)
                  sb           t5, -1401(a5)
                  sb           sp, -1138(a5)
                  lb           a6, -35(a5)
                  lui          a1, 479190
                  sltiu        zero, a7, 1373
                  sra          tp, gp, a4
                  lb           tp, 274(a5)
                  sub          s8, a7, s6
                  lbu          zero, -1476(a5)
                  sll          a4, s5, t5
                  lbu          gp, -1088(a5) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+984 #start riscv_load_store_hazard_instr_stream_5
                  lbu          s6, -777(sp)
                  sb           s10, -777(sp)
                  sb           a1, -777(sp)
                  sw           a7, 564(sp)
                  sb           s8, 1000(sp)
                  sh           a4, -948(sp)
                  lbu          s6, -948(sp)
                  lbu          tp, -948(sp)
                  lb           s6, 134(sp)
                  lh           s2, -134(sp)
                  lhu          ra, -134(sp)
                  auipc        a5, 177598
                  lb           t1, -134(sp)
                  sb           gp, -134(sp)
                  lh           a2, -134(sp)
                  lhu          s4, -134(sp)
                  sh           s5, -134(sp)
                  sh           s8, -134(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           s5, region_1+901 #start load_store_instr_stream_4
                  la           t3, region_1+1893 #start load_store_instr_stream_1
                  la           a7, region_1+1786 #start load_store_instr_stream_0
                  sb           s11, -1800(t3)
                  lbu          t4, 23(s5)
                  sb           a0, -1038(t3)
                  la           a2, region_1+1539 #start load_store_instr_stream_2
                  sb           a7, 10(a2)
                  lhu          s4, 21(s5)
                  la           a5, region_1+1571 #start load_store_instr_stream_3
                  sb           s6, 266(a5)
                  lb           gp, -31(s5)
                  lbu          a1, -8(a2)
                  sb           s6, -1046(t3)
                  lw           s6, -879(a5)
                  lbu          s6, 21(s5)
                  lbu          tp, 12(a2)
                  lb           s4, 4(a7)
                  lbu          t0, -14(a2)
                  lhu          a1, 36(a7)
                  lb           ra, 10(a2)
                  sb           ra, -1658(t3)
                  lhu          s11, -6(a7)
                  lbu          tp, -862(a5)
                  lbu          s1, 22(a7)
                  lb           s3, -58(s5)
                  sb           a7, -6(a2) #end load_store_instr_stream_2
                  sb           t1, 7(a7)
                  sb           t0, -924(a5)
                  lhu          t5, -5(s5)
                  sb           s11, -538(t3) #end load_store_instr_stream_1
                  lbu          t0, 60(a7)
                  lbu          s9, -986(a5)
                  sh           s9, -975(a5) #end load_store_instr_stream_3
                  lhu          s6, 25(s5) #end load_store_instr_stream_4
                  sb           t5, 45(a7) #end load_store_instr_stream_0
                  la           s1, region_1+18 #start riscv_load_store_rand_instr_stream_4
                  auipc        a1, 696030
                  sra          t4, s11, a2
                  and          s6, t4, gp
                  andi         t3, a2, 597
                  xori         tp, a4, -669
                  lhu          t3, 1650(s1)
                  lb           s9, 157(s1)
                  andi         sp, a3, -1673
                  sh           s10, 112(s1)
                  sltu         s4, s11, a0
                  and          t6, a2, s9
                  srl          s6, a4, a3
                  sb           a1, 721(s1)
                  sh           s11, 646(s1)
                  sb           t4, 81(s1)
                  xor          a5, a4, gp
                  lh           t0, 1344(s1)
                  andi         t4, a5, -12
                  lh           sp, 1684(s1)
                  lh           s3, 1544(s1)
                  nop
                  lui          s5, 43983
                  lb           t0, 584(s1)
                  srl          a2, s6, sp
                  lhu          a7, 702(s1) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_0+1854 #start riscv_load_store_rand_instr_stream_3
                  lhu          a2, 56(s6)
                  lbu          s3, 133(s6)
                  sub          s1, gp, tp
                  sltiu        s7, s5, 2046
                  lb           t1, -185(s6)
                  xor          a4, s4, t5
                  slt          s2, gp, s8
                  srl          zero, a3, zero
                  or           gp, tp, a1
                  srai         s4, s1, 4
                  sb           s0, -143(s6)
                  sub          s11, s8, s5
                  lhu          a1, -132(s6)
                  sb           t6, 59(s6)
                  sll          s2, zero, gp
                  srai         ra, s0, 4
                  and          ra, s11, s7
                  auipc        t4, 387701
                  andi         t0, gp, -32
                  slt          gp, s10, tp
                  sltiu        a6, a6, 1670
                  xor          s8, a6, t4
                  addi         s8, ra, 760
                  lb           t5, -54(s6)
                  xori         s2, s9, -1785
                  or           a5, a2, t6
                  sb           s6, -46(s6)
                  xor          a5, s9, tp
                  lbu          ra, -27(s6)
                  lbu          s7, -12(s6)
                  sll          a7, t6, a6
                  sub          t0, sp, ra
                  sb           s7, 143(s6)
                  auipc        a4, 352355
                  srli         a1, a0, 18
                  sb           s0, -167(s6)
                  and          a6, a0, a3
                  auipc        s8, 356773
                  sltiu        a3, sp, 1602
                  xori         a6, t6, -781
                  sh           a3, 122(s6)
                  lb           s5, 144(s6) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_0+552 #start riscv_load_store_rand_instr_stream_1
                  lb           s9, -11(tp)
                  slt          s6, ra, t2
                  lb           gp, 7(tp)
                  sb           a5, 4(tp)
                  sb           s1, -9(tp)
                  lb           s8, 6(tp)
                  sb           t3, -14(tp)
                  lb           s9, -2(tp)
                  sb           s3, -5(tp)
                  lb           s1, 9(tp)
                  sb           t5, 6(tp)
                  lh           s5, -14(tp)
                  sb           s3, -16(tp)
                  auipc        s5, 10171
                  lui          s1, 640309
                  ori          a6, a3, -616
                  lb           t4, -11(tp)
                  lh           a7, 6(tp)
                  sb           t2, -15(tp)
                  lhu          t0, -16(tp)
                  lw           s6, 16(tp)
                  lbu          s3, -1(tp)
                  sltiu        sp, a6, 397
                  sb           s1, 9(tp)
                  lbu          t0, -2(tp)
                  sltiu        ra, ra, -799
                  sb           t0, 9(tp)
                  sb           a3, 6(tp)
                  or           s8, a6, s9
                  lb           s3, -13(tp)
                  ori          a6, a6, -1892
                  nop
                  xori         s10, s10, 1037
                  lbu          gp, 15(tp)
                  lb           ra, 15(tp)
                  lh           a3, 10(tp)
                  lbu          a7, 6(tp)
                  lui          s6, 95427
                  sh           t4, -14(tp) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_1+1705 #start load_store_instr_stream_0
                  la           t6, region_1+335 #start load_store_instr_stream_3
                  la           a1, region_1+298 #start load_store_instr_stream_1
                  lbu          a3, 708(a1)
                  sh           a2, 1056(a1)
                  lbu          t5, 216(t6)
                  lh           t5, -7(s11)
                  lhu          s8, 41(t6)
                  sb           t4, -181(t6)
                  lb           t1, 19(t6)
                  la           a7, region_1+426 #start load_store_instr_stream_2
                  sw           t4, -123(t6)
                  sb           gp, 1083(a1)
                  sw           s1, 14(a7)
                  sb           t0, 33(t6)
                  lhu          s7, -229(t6)
                  lb           t1, 1(a7)
                  sh           t0, -4(a7)
                  lhu          tp, -11(s11)
                  sb           a5, -102(t6)
                  sb           s8, 409(a1)
                  lbu          tp, 1133(a1)
                  sw           s3, -5(s11)
                  lb           a3, -181(a1)
                  lb           t1, -15(a7)
                  sb           a1, 485(a1)
                  lbu          tp, 3(s11)
                  sh           t5, 120(a1)
                  lb           t0, 230(t6)
                  lb           s8, 7(s11)
                  lb           s8, 5(a7) #end load_store_instr_stream_2
                  lbu          t5, 120(t6) #end load_store_instr_stream_3
                  lhu          t3, 892(a1)
                  lb           s3, 1618(a1) #end load_store_instr_stream_1
                  lb           a3, -12(s11) #end load_store_instr_stream_0
                  nop
                  sltu         ra, a7, t2
                  sra          t3, a7, s0
                  lui          s5, 670981
                  addi         s2, s6, -1984
                  andi         a5, s9, -331
                  srli         s8, t3, 13
                  bne          t4, sp, 22f
                  ori          a3, a6, -16
                  and          t1, a3, s9
                  or           s7, ra, s3
                  blt          a5, s9, 17f
                  sltiu        a4, a3, -1326
                  xor          s1, s1, s1
                  nop
                  andi         ra, t1, 1292
                  slt          s4, a0, s11
17:               nop
                  bne          a5, s9, 32f
                  sltiu        t4, t6, 439
                  ori          gp, a5, -764
                  beq          s8, a4, 32f
22:               addi         a6, a3, 606
                  sra          s7, a4, s5
                  sra          a7, t5, tp
                  or           s10, s8, t2
                  sltiu        s4, a7, 328
                  slti         s7, s2, -1136
                  sltu         t4, ra, s7
                  slti         a2, zero, 1394
                  sra          s9, a5, sp
                  xor          gp, tp, s6
32:               slli         a6, s8, 27
                  srai         s1, t4, 18
                  andi         t1, s8, 1268
                  blt          s1, ra, 42f
                  and          s2, s6, s1
                  lui          t1, 317966
                  nop
                  nop
                  auipc        s8, 694366
                  xori         a5, a1, 1743
42:               bne          a4, a2, 54f
                  auipc        t4, 951583
                  auipc        s7, 756856
                  beq          t0, s1, 58f
                  bgeu         s10, ra, 51f
                  ori          s11, s3, -1432
                  xori         sp, t5, -1385
                  slt          a7, a6, t1
                  slli         t5, s8, 31
51:               beq          s9, s9, 55f
                  sub          a3, zero, sp
                  sltu         a3, a6, gp
54:               and          gp, zero, a7
55:               sll          s1, a7, s5
                  sll          s10, zero, s5
                  bgeu         a1, t0, 63f
58:               sltiu        t3, s0, -1095
                  nop
                  sltiu        s10, t1, -1601
                  beq          a4, gp, 79f
                  srai         gp, s7, 20
63:               bne          t5, s6, 71f
                  or           t5, zero, t6
                  bgeu         a5, a1, 85f
                  sub          t4, s9, t2
                  xori         s11, a5, 762
                  sub          zero, s2, s8
                  auipc        a1, 793976
                  beq          a0, t5, 74f
71:               sra          t1, s1, a1
                  srli         s1, t1, 29
                  srl          s1, t0, a7
74:               bgeu         a1, tp, 90f
                  nop
                  sub          a5, s6, a6
                  bltu         s6, t6, 86f
                  or           s2, s5, a5
79:               sltiu        a5, s11, 1277
                  xori         a4, a6, -85
                  sub          t6, a3, a0
                  sra          sp, t2, a3
                  slt          a6, ra, s8
                  beq          s11, a7, 95f
85:               bgeu         s5, sp, 101f
86:               blt          gp, t5, 98f
                  sltu         s10, a7, t0
                  xori         s6, a3, 811
                  or           t5, zero, tp
90:               bltu         tp, a5, 98f
                  srli         s1, s9, 12
                  sub          zero, s5, a3
                  auipc        s2, 925418
                  slli         a2, a2, 9
95:               or           a7, sp, a3
                  xori         a7, tp, -327
                  sub          s11, a5, s11
98:               sll          s6, a2, sp
                  xori         a6, s11, 1876
                  xori         t3, gp, 1054
101:              beq          a0, a3, 109f
                  and          ra, gp, t6
                  slli         s9, s3, 11
                  auipc        sp, 1039158
                  or           s2, a2, a5
                  and          ra, zero, a2
                  auipc        zero, 754520
                  sltiu        s2, t1, 847
109:              or           s2, tp, s1
                  slt          ra, a4, gp
                  srl          a3, s8, t0
                  sub          tp, s2, s6
                  xor          ra, s3, a0
                  ori          s8, s3, 1285
                  sra          s11, s8, s2
                  bne          s6, sp, 130f
                  addi         s1, s11, 1145
                  srl          s1, tp, s3
                  srai         a6, s6, 31
                  bgeu         t0, a1, 122f
                  ori          s4, a1, -1884
122:              ori          a5, t3, 1295
                  bgeu         a7, sp, 139f
                  sll          s3, a3, s5
                  beq          s6, s8, 143f
                  xori         s11, sp, -603
                  nop
                  bltu         t2, s4, 144f
                  or           a3, s7, s1
130:              sra          s1, a0, gp
                  sub          zero, a1, s4
                  srli         t0, t2, 30
                  srli         a2, a7, 0
                  nop
                  addi         s7, t3, -159
                  addi         s11, tp, 1346
                  nop
                  auipc        tp, 213124
139:              ori          s6, t0, 87
                  xor          sp, s4, t0
                  slti         a1, a1, 1257
                  sll          ra, a6, ra
143:              and          s4, tp, t5
144:              slli         a2, a3, 7
                  beq          ra, gp, 156f
                  add          s7, gp, ra
                  ori          s1, s0, 946
                  sll          a5, t4, s0
                  xor          zero, s3, a6
                  bltu         t1, a4, 156f
                  auipc        t0, 254828
                  srai         s11, s1, 7
                  bge          t4, a0, 169f
                  bge          t0, s4, 157f
                  bgeu         t0, a2, 161f
156:              lui          s10, 652603
157:              lui          tp, 702578
                  xor          a1, s11, s8
                  slli         zero, a6, 20
                  srai         a5, t0, 0
161:              xori         s2, a5, -1128
                  ori          s3, s0, -1548
                  xori         s7, s6, -915
                  xor          s4, sp, a3
                  bgeu         s5, s9, 173f
                  auipc        t3, 51120
                  sltiu        gp, s7, 1877
                  ori          s10, a4, 379
169:              bge          t1, t2, 177f
                  addi         s11, t5, -1570
                  addi         a1, tp, -933
                  bltu         s7, a7, 186f
173:              bgeu         a1, s4, 179f
                  srli         s8, s9, 11
                  ori          sp, s6, 924
                  bgeu         gp, tp, 192f
177:              xori         t1, t2, 1843
                  srl          a5, s1, t6
179:              sltiu        s11, s5, 1785
                  blt          s9, s8, 184f
                  blt          t6, gp, 187f
                  beq          s6, a4, 198f
                  auipc        t0, 83178
184:              xori         s7, s6, 1700
                  slti         t3, ra, 920
186:              add          ra, a0, s1
187:              srl          a6, s10, s4
                  ori          s4, t0, 196
                  lui          a6, 770893
                  sub          s4, s2, t4
                  srli         s10, t3, 7
192:              nop
                  auipc        a4, 541683
                  bgeu         s7, s4, 210f
                  sltu         s7, tp, a7
                  ori          s1, t2, 1559
                  nop
198:              add          t5, a7, t3
                  bltu         t5, ra, 219f
                  slt          zero, a6, s9
                  andi         t3, t6, -568
                  or           t6, a5, a3
                  beq          t2, ra, 219f
                  auipc        tp, 44684
                  slt          t6, s11, s9
                  auipc        a1, 879224
                  andi         t6, sp, 1933
                  beq          a7, a2, 222f
                  slli         t1, s2, 23
210:              xor          a7, a2, t0
                  xor          s4, a3, a4
                  sub          a4, a0, s7
                  andi         sp, a0, 1554
                  xor          t1, gp, t5
                  sub          t3, s4, a1
                  ori          zero, zero, 948
                  xor          a3, s11, s5
                  bne          s4, sp, 233f
219:              sub          s1, t2, t2
                  slli         t1, ra, 21
                  bge          a7, s6, 239f
222:              xori         ra, s3, -60
                  lui          ra, 282980
                  auipc        a1, 201447
                  slti         gp, s9, 1512
                  xor          a1, tp, s10
                  bgeu         t0, t2, 231f
                  srai         s8, s3, 6
                  or           t6, s8, ra
                  slli         a5, t4, 3
231:              xori         s3, a5, 267
                  slt          zero, t0, s5
233:              sll          t3, a0, s9
                  bgeu         s7, s9, 246f
                  bge          t4, s3, 242f
                  xori         s8, sp, -160
                  srli         s6, t2, 18
                  xori         a6, tp, -797
239:              sll          t3, a7, a4
                  sub          t6, a7, sp
                  beq          zero, s1, 253f
242:              sll          a7, s4, s2
                  and          s8, s1, ra
                  bne          a2, s1, 249f
                  addi         a6, s4, -2040
246:              xori         s5, s10, 1256
                  sltu         s7, tp, s11
                  auipc        s6, 423106
249:              add          a2, a5, s10
                  xori         s7, t0, 1440
                  bne          ra, t6, 259f
                  and          s9, t3, t4
253:              bltu         s4, a6, 256f
                  sll          a2, a1, sp
                  sltiu        a5, t3, -1596
256:              xori         t4, t3, -706
                  srl          s9, a3, t3
                  andi         a3, s1, -1969
259:              bge          a2, t4, 261f
                  blt          s10, a1, 278f
261:              bltu         a3, s3, 272f
                  blt          s4, sp, 278f
                  beq          s8, a0, 274f
                  srai         s1, zero, 30
                  sra          s3, a1, tp
                  blt          a5, t1, 277f
                  sltu         s6, s7, ra
                  sub          a7, gp, a4
                  xori         t5, s9, 650
                  srl          s2, zero, a1
                  add          a2, t3, t5
272:              slli         t3, s6, 3
                  and          s3, s7, s9
274:              blt          t1, s9, 287f
                  sra          s3, zero, gp
                  bgeu         tp, s3, 285f
277:              xori         s4, a2, 1510
278:              xor          gp, zero, a3
                  and          s6, s4, s3
                  xor          gp, s9, ra
                  bne          s10, t0, 292f
                  srai         a4, t3, 31
                  srai         tp, t5, 28
                  slli         tp, s8, 13
285:              or           s8, t6, tp
                  srli         sp, s11, 18
287:              slt          s5, t5, gp
                  beq          s6, a5, 300f
                  and          sp, a6, s3
                  addi         s9, a7, 28
                  bge          a6, t4, 307f
292:              srli         s1, a3, 20
                  bge          s8, s2, 297f
                  beq          s9, tp, 303f
                  bgeu         a2, gp, 298f
                  ori          s2, s6, 295
297:              slti         s2, zero, 1214
298:              sra          s9, s11, s3
                  and          a2, t3, gp
300:              bgeu         s5, a2, 314f
                  bltu         s1, s2, 319f
                  bne          t6, t6, 318f
303:              srl          s3, t5, a0
                  sll          tp, s3, a6
                  slli         gp, ra, 16
                  xor          s5, s11, sp
307:              xor          t1, t6, t6
                  srai         s10, s5, 13
                  and          a5, a3, zero
                  sll          ra, s2, t2
                  beq          a6, s6, 315f
                  bgeu         s5, a3, 318f
                  ori          gp, t5, -2015
314:              bge          s3, s10, 330f
315:              srai         a7, s0, 6
                  blt          a3, zero, 323f
                  bne          a5, s9, 323f
318:              bne          t6, s9, 323f
319:              srai         s2, s4, 17
                  slt          s8, s5, a3
                  beq          t4, a5, 339f
                  slli         s4, s5, 17
323:              bne          s8, a1, 334f
                  xor          tp, sp, s8
                  sll          a5, s0, s10
                  sub          a3, ra, s7
                  xori         tp, a1, -1096
                  sub          s4, s2, s9
                  sltiu        s4, a7, 1387
330:              srai         s6, a2, 13
                  bge          a7, s7, 339f
                  addi         gp, a4, 449
                  and          a7, t6, sp
334:              srai         s3, t0, 0
                  sll          s6, s7, s10
                  xor          ra, s4, a4
                  andi         a5, a0, -72
                  bltu         s0, a2, 353f
339:              srli         s1, t4, 0
                  xor          s9, tp, a0
                  sll          t4, a4, s5
                  slti         s9, a6, -1084
                  slt          a6, s2, s10
                  sltu         t0, gp, s10
                  bne          t2, s8, 353f
                  sub          t1, s5, a2
                  sub          s9, ra, s3
                  xori         s7, a0, -320
                  blt          s9, s9, 357f
                  or           s5, t6, a5
                  sra          s1, s1, a6
                  blt          a7, a6, 368f
353:              lui          t1, 891632
                  sub          a2, a1, s7
                  sltu         t3, s11, a6
                  slti         t5, a4, 483
357:              beq          gp, t2, 377f
                  add          a3, s2, a2
                  slli         s11, sp, 31
                  addi         t4, t5, 439
                  sll          zero, s1, s0
                  slt          s1, zero, t1
                  addi         s3, tp, -64
                  srl          zero, sp, a2
                  addi         a2, t4, -1521
                  slli         a3, ra, 11
                  ori          s4, a4, -1234
368:              srai         s1, s5, 22
                  bne          a7, t4, 375f
                  beq          s9, s3, 383f
                  slti         zero, s7, -83
                  or           s11, t4, s10
                  auipc        s7, 1034065
                  srli         t0, t1, 6
375:              addi         t1, a6, -256
                  srai         s11, t0, 16
377:              or           a6, s3, s5
                  ori          t4, t1, -1449
                  xor          t1, s0, s11
                  srli         ra, t3, 4
                  srl          s5, s0, a7
                  nop
383:              andi         a3, a4, 1634
                  srl          s9, s6, s1
                  xor          s3, sp, s11
                  bgeu         a0, gp, 398f
                  srai         s8, t4, 28
                  sll          s1, sp, t0
                  beq          a7, a5, 405f
                  beq          t0, a3, 404f
                  lui          s6, 505001
                  ori          a6, a5, -624
                  bge          a6, s9, 395f
                  beq          t2, s4, 405f
395:              bltu         t1, t5, 401f
                  addi         ra, s8, 1664
                  sltu         a4, a0, t6
398:              auipc        s11, 239
                  sltu         s8, a2, s10
                  srli         s5, tp, 28
401:              bltu         s4, a3, 415f
                  add          zero, ra, t4
                  lui          s8, 243063
404:              andi         t3, ra, 51
405:              nop
                  slt          s6, tp, tp
                  slt          t6, a7, s0
                  andi         s9, s8, -1312
                  ori          zero, a7, -1377
                  andi         a3, t6, -1180
                  sra          s10, a2, a2
                  xori         s6, s0, -275
                  auipc        s2, 444753
                  bge          zero, zero, 426f
415:              auipc        a1, 87227
                  srai         s2, s11, 8
                  and          s2, t0, sp
                  xori         s6, ra, -151
                  srai         t0, t3, 23
                  sltiu        a1, t1, 790
                  xori         s4, a7, 349
                  srl          a4, a2, s3
                  srai         tp, a0, 3
                  sltu         s3, t2, a3
                  sub          s3, a2, a2
426:              beq          t6, s8, 434f
                  and          a7, s5, a6
                  add          t3, t0, t0
                  slti         t1, t0, 1789
                  slt          ra, a0, s5
                  beq          s0, a4, 449f
                  addi         zero, ra, -966
                  sltiu        t0, s7, -371
434:              xori         s6, tp, 1497
                  addi         s4, s2, -501
                  bgeu         t6, s1, 444f
                  xor          zero, t1, s9
                  sra          t4, a0, t3
                  andi         a4, tp, 492
                  la           a1, region_1+86 #start load_store_instr_stream_1
                  la           ra, region_1+1323 #start load_store_instr_stream_0
                  lhu          s5, -59(ra)
                  sh           ra, -8(a1)
                  la           a3, region_1+275 #start load_store_instr_stream_3
                  la           a5, region_1+1768 #start load_store_instr_stream_2
                  sb           s3, 133(a5)
                  sb           tp, 148(a5)
                  lb           a2, -5(a3)
                  lb           s9, 233(a3)
                  lbu          t1, -41(ra)
                  lb           s8, -40(ra)
                  lb           tp, -31(a5)
                  sb           s11, -65(a1)
                  lb           s10, 94(a3)
                  sb           t6, -179(a5)
                  lbu          t3, 14(a5)
                  sb           sp, -131(a5)
                  sh           a2, 155(a3)
                  lbu          s1, 211(a1)
                  sb           a0, 36(ra)
                  sb           sp, 191(a1)
                  lhu          s4, 39(ra)
                  lb           tp, -167(a3)
                  lb           t0, -45(a5)
                  sb           s6, -44(ra)
                  lh           t3, -53(ra)
                  sb           tp, 112(a3) #end load_store_instr_stream_3
                  lb           t1, -33(ra)
                  sb           t6, 138(a5)
                  lb           a6, 81(a1)
                  sb           s7, 183(a1)
                  sh           zero, -66(a1)
                  sw           t5, -3(ra)
                  lbu          zero, -183(a5) #end load_store_instr_stream_2
                  sb           gp, -58(a1)
                  lh           s8, -10(a1) #end load_store_instr_stream_1
                  sh           gp, 41(ra) #end load_store_instr_stream_0
                  bge          a6, s6, 444f
                  blt          tp, t6, 454f
                  slt          t3, s5, a4
                  andi         s10, ra, 1249
444:              or           s9, s7, a7
                  sltiu        t3, a2, 809
                  add          s9, s5, a6
                  srai         ra, ra, 23
                  sltiu        a3, a5, 225
449:              bltu         s11, s8, 455f
                  or           a2, s0, s10
                  slti         zero, s2, 779
                  andi         gp, gp, -1840
                  beq          zero, t4, 459f
454:              srai         s10, s3, 16
455:              sub          a6, a5, gp
                  sltu         s7, t0, a5
                  addi         s2, a3, 1625
                  and          s8, s8, a5
459:              lui          a6, 151610
                  bgeu         s9, t3, 471f
                  sltu         t6, t3, s8
                  xor          a4, sp, a5
                  sub          a1, a3, a2
                  nop
                  sub          s10, s10, t1
                  lui          sp, 362662
                  blt          sp, a2, 479f
                  addi         t0, s7, 1391
                  sltiu        s10, a3, -1619
                  slt          s9, t3, s5
471:              bgeu         zero, a4, 474f
                  slli         ra, t4, 23
                  bne          a7, s2, 489f
474:              bge          a6, a7, 494f
                  beq          t3, s3, 479f
                  sra          t5, t5, s1
                  and          a3, a2, a2
                  bgeu         a0, a7, 487f
479:              nop
                  addi         a7, a1, 221
                  ori          a4, a5, -38
                  slt          a5, t1, s1
                  sltu         s3, t0, a4
                  srli         a1, t4, 14
                  blt          sp, a3, 487f
                  andi         a1, s8, 1203
487:              slli         t5, a0, 8
                  sltu         a2, a3, s8
489:              nop
                  srli         a1, s8, 27
                  srl          s6, t3, t5
                  nop
                  ori          s2, s7, 2043
                  nop
                  ori          s7, s9, 773
                  sltu         a5, s5, a1
                  slti         t6, zero, 736
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  bgeu         a0, s3, 496f
                  xor          a1, a3, t4
                  lui          gp, 82380
494:              srai         t3, s7, 13
                  slt          a4, ra, t2
496:              add          a3, a4, zero
                  ori          a3, t2, -387
                  or           s1, t3, s6
                  bge          s4, s1, 514f
                  xor          s1, a7, t2
                  slt          a1, s5, a5
                  ori          s4, a7, -1043
                  nop
                  slli         a6, s5, 8
                  add          a7, s1, s2
                  slli         t4, a5, 27
                  sll          s11, t2, s4
                  slti         s4, s3, 1015
                  add          s4, s1, t6
                  sltu         t6, sp, a7
                  and          s9, a3, s10
                  andi         t5, s8, -121
                  bne          s2, t5, 529f
514:              bgeu         a3, s10, 530f
                  add          t5, s9, t1
                  bge          a7, a1, 524f
                  sub          s9, t4, s5
                  bge          t4, t2, 529f
                  or           t5, s2, s4
                  srl          s2, s0, a1
                  or           a3, a2, t3
                  auipc        t5, 859620
                  slt          s2, a1, a1
524:              ori          a1, t3, -1415
                  slti         s5, t6, 1760
                  bge          a4, t6, 540f
                  lui          a4, 856234
                  and          s11, ra, ra
529:              sra          s6, t0, zero
530:              lui          a5, 107320
                  srli         a6, s1, 7
                  srl          zero, t5, s9
                  ori          s1, s10, -1659
                  addi         t1, a2, 1933
                  srai         s10, s1, 7
                  and          sp, tp, a0
                  nop
                  sltu         s6, s9, s8
                  xori         a5, a3, -1880
540:              or           t1, a6, a4
                  addi         a1, s9, -1903
                  sub          s7, t6, t3
                  bgeu         t1, a4, 561f
                  bltu         t2, s2, 560f
                  la           a6, region_1+1178 #start riscv_load_store_hazard_instr_stream_0
                  lb           a5, 250(a6)
                  lh           s1, 250(a6)
                  lbu          s6, 250(a6)
                  lb           s11, 42(a6)
                  lb           t3, 42(a6)
                  sb           s2, 42(a6)
                  lbu          s5, -129(a6)
                  sb           s2, -129(a6)
                  sh           s5, -132(a6)
                  lbu          a3, 121(a6)
                  lhu          s4, 40(a6)
                  lh           s7, 40(a6)
                  lb           a3, 40(a6)
                  sb           s1, -219(a6)
                  lb           a3, -171(a6)
                  sb           s6, -171(a6)
                  lui          s7, 402748
                  lb           a1, -9(a6)
                  sb           s1, -9(a6)
                  lb           a1, -9(a6) #end riscv_load_store_hazard_instr_stream_0
                  bltu         s8, t3, 552f
                  sub          a2, t6, a4
                  nop
                  bge          zero, s4, 564f
                  beq          a6, a2, 560f
                  andi         a7, s8, -873
                  beq          t6, a2, 555f
552:              auipc        s1, 375596
                  nop
                  srai         tp, t5, 4
555:              sub          s2, a7, s1
                  and          s4, a5, a2
                  blt          t3, s3, 568f
                  slti         t0, s3, 493
                  auipc        zero, 173702
560:              srl          t1, s11, s2
561:              sra          a7, sp, t6
                  ori          a7, gp, 956
                  or           a7, s4, s3
564:              addi         s3, a3, -877
                  slt          t6, t3, a7
                  ori          a7, s10, 1669
                  bne          t5, s9, 576f
568:              bge          a2, s2, 574f
                  sll          t6, a7, t4
                  or           ra, s2, s0
                  srai         a6, tp, 1
                  sll          s6, a1, a2
                  sltiu        s9, a5, -425
574:              beq          a0, t4, 581f
                  sltiu        gp, s5, 806
576:              srli         a3, t2, 2
                  lui          ra, 946810
                  ori          s4, zero, 1402
                  srai         t0, s6, 15
                  add          s11, s3, a6
581:              srai         ra, s3, 10
                  add          s4, s0, s7
                  beq          a7, t4, 601f
                  slti         s4, sp, 141
                  bltu         a3, s7, 601f
                  xor          sp, a5, a3
                  blt          s3, s3, 592f
                  srai         a3, s10, 17
                  xor          s5, a0, s10
                  or           s7, s6, t4
                  srli         t3, s11, 9
592:              srai         a3, s4, 18
                  ori          t6, s5, -1875
                  addi         t6, ra, -1301
                  xori         tp, t6, -435
                  xor          t4, a4, s10
                  addi         t5, s5, -1864
                  slli         a4, t2, 13
                  or           s9, t4, a5
                  bge          t3, s8, 602f
601:              and          s3, s4, s0
602:              or           s10, t2, t4
                  sltiu        s4, t1, 147
                  ori          t6, s1, -1337
                  bgeu         a4, s4, 621f
                  nop
                  srl          s2, s1, s10
                  and          s8, s1, s10
                  nop
                  bne          t0, tp, 616f
                  sll          s10, s7, s10
                  bgeu         t3, a4, 615f
                  bltu         a4, t1, 619f
                  sltiu        t1, a6, 1003
615:              sub          a7, sp, sp
616:              addi         tp, t0, -1888
                  la           a5, region_1+1931 #start riscv_load_store_rand_instr_stream_2
                  sh           s0, -169(a5)
                  add          a4, a3, s7
                  sb           a2, -27(a5)
                  lb           s10, -238(a5)
                  nop
                  sra          s1, a5, a2
                  lhu          a6, 7(a5)
                  lbu          zero, -137(a5)
                  lbu          s5, 60(a5)
                  lbu          a7, -68(a5)
                  lb           t0, -228(a5)
                  sltu         s5, a4, a5
                  lbu          zero, -70(a5)
                  sb           ra, -128(a5)
                  sra          s3, s8, t5
                  sb           t3, 31(a5)
                  sltu         tp, s11, a2
                  lb           sp, -246(a5)
                  addi         gp, s8, -333
                  sw           t4, -11(a5)
                  lh           a4, 19(a5)
                  lhu          t4, -113(a5)
                  slti         t1, t1, 442
                  lui          s11, 847779
                  slli         s7, t3, 0
                  nop
                  sra          s10, s6, t1
                  addi         gp, t5, 747
                  sb           a3, -55(a5)
                  andi         t5, s0, 1624
                  lb           sp, -88(a5)
                  lb           s6, -2(a5)
                  lbu          t4, 4(a5)
                  sll          t0, a7, s10
                  sh           s4, -233(a5)
                  lhu          t3, 13(a5)
                  or           zero, s1, a4
                  lh           zero, 63(a5) #end riscv_load_store_rand_instr_stream_2
                  auipc        s8, 757175
                  sra          a4, t5, t4
619:              sra          s11, t0, sp
                  sll          a1, s0, s0
621:              slt          t6, t1, s8
                  auipc        s2, 350133
                  or           t1, s1, s0
                  slli         s8, t3, 2
                  bltu         a1, s9, 633f
                  and          sp, a7, a6
                  bltu         s9, s5, 638f
                  sltu         s3, gp, a7
                  andi         a1, t0, 40
                  blt          a3, a4, 646f
                  srli         s8, s1, 0
                  addi         t0, a4, -712
633:              slt          t0, s2, a5
                  srli         s4, t5, 28
                  srl          s5, t4, a4
                  srl          a6, sp, s4
                  sll          gp, gp, gp
638:              auipc        gp, 728417
                  srli         s10, t1, 22
                  sltu         t0, s9, ra
                  bge          s10, a7, 649f
                  and          tp, a1, s10
                  sltu         a1, gp, t5
                  nop
                  blt          s1, zero, 649f
646:              nop
                  ori          t5, a6, 302
                  bgeu         gp, a6, 659f
649:              nop
                  lui          a7, 585816
                  sltiu        zero, t2, 1460
                  xori         t4, s0, -650
                  sub          s2, t4, s2
                  sra          a5, a1, s0
                  xori         s3, s7, 1302
                  beq          s6, a6, 668f
                  beq          s2, s10, 665f
                  or           sp, tp, t1
659:              slli         a2, a5, 3
                  slli         s8, t1, 3
                  sub          s1, zero, s10
                  xor          s4, sp, s9
                  addi         s2, s6, 871
                  lui          t0, 661686
665:              add          s11, t5, s7
                  xor          s9, a1, s2
                  addi         t6, a0, -1747
668:              sll          t6, a1, s6
                  add          tp, ra, t4
                  ori          a6, gp, -1473
                  andi         s3, t6, -1872
                  lui          s1, 451734
                  xori         t0, t3, 1877
                  bge          a1, t0, 689f
                  lui          s1, 320884
                  add          ra, s0, s1
                  and          t1, s8, s10
                  bgeu         s0, a1, 690f
                  srli         a3, s0, 17
                  and          sp, t6, s2
                  slli         s10, s6, 25
                  bgeu         sp, t3, 690f
                  sra          sp, a2, s4
                  blt          a7, t2, 690f
                  ori          s1, s9, 563
                  srl          s6, a1, a3
                  sub          s1, s6, zero
                  and          t0, a3, s10
689:              bgeu         s6, s6, 690f
690:              andi         a6, s5, 1678
                  lw           t1, 4(t2)
                  srl          s3, t0, t0
                  addi         t2, t2, 60
                  nop
                  ori          gp, zero, -1723
                  ori          s3, a1, 1668
1231:             addi x4, x6, 1
1231:             jalr x4, x4, 0
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
.word 0xf5ead740, 0x6596aa48, 0x93dc8d63, 0x5c5073cd, 0x1019250e, 0xfd97939a, 0x972e58cb, 0xaa6b75e5
.word 0x9c53e30f, 0x03c44898, 0x20e68ecd, 0x194c4f24, 0x09c83505, 0x9317d377, 0x87c3f9d4, 0x4ba34310
.word 0xf4d70c34, 0x047b8df7, 0xaba834ce, 0xa2e0bb01, 0x4c2ac288, 0x5a39aa76, 0xa9f627d8, 0x7222250b
.word 0xa0ff3138, 0x9e5f30b6, 0x614a757a, 0x105c6e3a, 0x45b8516d, 0xa6f50b87, 0x29ff2f3e, 0xf55ace51
.word 0x4f5f115a, 0xfec185e2, 0x035614d4, 0x246000ae, 0x65d090a7, 0x47467a32, 0x4b39d378, 0x6ba47527
.word 0x768a98dd, 0x178527cc, 0xe4ff0709, 0x46ebbeae, 0xafa422bd, 0x447b3b5d, 0x1e7ab86b, 0xbe63f4d5
.word 0xf383a0e7, 0x976c4924, 0x76d1ab00, 0xb7825d79, 0x8475b190, 0x8bfd9695, 0xd36d48f9, 0xa78009ec
.word 0x05b0dee2, 0x806212f0, 0xb5c6f272, 0x74d46718, 0x4eddf0b3, 0xa0ab13b8, 0x3647150f, 0x87b3c7c6
.word 0xf20a1b31, 0xe080201f, 0xe6d25897, 0xda79a279, 0x3be59127, 0x2d45af62, 0x0377b750, 0x4a1aa0d7
.word 0x22bef9ca, 0xd68695a3, 0x0e4ce83a, 0x68c563da, 0x5cb5154b, 0x909b43fe, 0x19b21a15, 0xeb0aef8f
.word 0xddc13cc6, 0x9f6c8a72, 0x0e444de4, 0x65597343, 0x2f7fe7dc, 0x222587ab, 0xa18f2ea7, 0x8b28b666
.word 0xdbc58640, 0xf8ea53cc, 0xe299610d, 0xa3930729, 0xd9fcecc4, 0xa83856a4, 0x7b425b1c, 0x09b0c9f3
.word 0xbcc918bd, 0xbe148b67, 0x3be75cfb, 0xba48c835, 0xb1bf7774, 0x01de6884, 0x4e3b77ec, 0x83f6fa0c
.word 0xd561ee41, 0xef941734, 0xa249e3b5, 0x92cd212d, 0x866b7d7b, 0xeaefad79, 0x4c92b388, 0x930650fb
.word 0x3bcf9caf, 0x314dc52a, 0xc3901484, 0x6081cfa9, 0x13e9d4bf, 0x96281d5e, 0x8e5dc665, 0x83308b1f
.word 0x2ea61d20, 0x0fd51a77, 0x0f3d4821, 0xbc7a2f62, 0x100d9aa4, 0x483159ba, 0x7b80c765, 0xb1eac24e
.word 0x28559d0b, 0x057ce09d, 0xc5596fdb, 0xe02a96a5, 0x5c53e4a9, 0xc38fdcf9, 0x079ef6cf, 0xfc7f786e
.word 0x921baec9, 0x5efc5142, 0xe62abb84, 0xd73d4390, 0x2c6569cd, 0x400aae71, 0xdfab2fde, 0xf1bd67cb
.word 0x2b4b2953, 0x53315b92, 0x98aa2570, 0x93ffc474, 0xf4382e26, 0x8c328e1f, 0x759dc9ec, 0x27d16c51
.word 0xe9b20b25, 0xe9ba05bf, 0xa87f9c50, 0x00cdd229, 0x690bf1e6, 0x93ed781f, 0x998c78c7, 0xf3e5b90f
.word 0x0df71e34, 0xea8ed209, 0x58af9095, 0x00f18cea, 0x7c9e8aaf, 0x6d3e7982, 0xa225e84d, 0x2b750984
.word 0x06a0534d, 0xf0c9e0f9, 0x22ec0600, 0x49e3313a, 0x6c96d72d, 0x269213ba, 0x000c6245, 0x447bbd96
.word 0x2815fd46, 0xb1fbd2c6, 0x11b2d34a, 0x6808a60d, 0x0d4c0897, 0xf2c69663, 0x0f9ad03f, 0xadd181ff
.word 0x728b452a, 0x0c95851a, 0x9b217cf7, 0xa080013c, 0xc58eb028, 0x3c34db6c, 0x270f3838, 0x67e5b523
.word 0xd3a16f12, 0xe8c79f1f, 0x896c37c7, 0x9ed76738, 0xb7e5dbbe, 0x65a83ea7, 0x3cc606d3, 0xf57d6e4d
.word 0xf4aaf58c, 0x4a459b05, 0x815567fb, 0xbbe3d21c, 0x2ab7a219, 0x8f0ce43a, 0x3fd4df9e, 0x90785cc5
.word 0x23e7bb01, 0x043502b4, 0x47903963, 0x9af1c533, 0xb77838b7, 0x14223857, 0x17173501, 0x6cf4414a
.word 0x8e7f8ee9, 0xb8d94bdd, 0x28b013de, 0x6b033c52, 0x09173d68, 0x5af3503c, 0xe8591187, 0xc486bda0
.word 0x72b99cdf, 0x84654a09, 0x455ea93d, 0xb4d6cabd, 0x7cc5213c, 0xe1d79c1c, 0xab552a0f, 0xb388eec6
.word 0xccc5afdb, 0x60915d68, 0x6545d9cc, 0x5b1946e2, 0x818bea57, 0xbce958a1, 0x639ddcfc, 0x6f0451cc
.word 0x341e1fe9, 0x479e64b3, 0xde8604f4, 0x0370681a, 0x6bca9998, 0x77d560b6, 0x2ab041c5, 0x663ea10f
.word 0xa87e6f4c, 0x11433fcf, 0x489ce778, 0xff37a367, 0x7ee88fab, 0x11efc7e7, 0x6c2983a0, 0x19f1ec8b
.word 0x03c0e874, 0x81ef56b4, 0x30706205, 0x11a2843b, 0x61cbbc18, 0xb187db85, 0x2d347673, 0x5f767e55
.word 0x2fa36f33, 0xe0c2372b, 0x36be58ad, 0xa3c59edd, 0x5d084719, 0x8fa69364, 0xfc24f050, 0x75599f46
.word 0x109e12e9, 0x27bcb0c9, 0xfe49d59d, 0x587db474, 0x81d507b8, 0xf7b69189, 0x19e3f589, 0xd04211cd
.word 0xd6b66f60, 0x6335c7a7, 0x7e43caaa, 0x4ef01dfe, 0xf9ceb259, 0x5e4a1813, 0xef10fcaa, 0x0279b009
.word 0x178ce776, 0xabe63ded, 0x4cecce24, 0xad368498, 0x2d0b7759, 0x2100c2d6, 0xb7a28aa6, 0x1c2aa983
.word 0x29c6192f, 0x9f196f02, 0x62ca9bd4, 0xdee0382c, 0xaa24dc5f, 0x2019bf1f, 0xee4c4ed4, 0x3e627cd1
.word 0x7d83fa13, 0x0344c69e, 0x8cceac52, 0x6d254897, 0x7d034828, 0x496bbc67, 0x03e04b7f, 0xf27c1244
.word 0xeb7153e9, 0xdff815b4, 0x6d5a91e0, 0xfa7aa062, 0x6617ec21, 0xefbd948e, 0x898b20e9, 0x4425e763
.word 0x8f81940e, 0x1ed0b043, 0x96fe5a7a, 0xd83c786c, 0xea6e69cc, 0x12204704, 0xc0f6637b, 0x06f7e18a
.word 0x0199db06, 0x36b5d3c7, 0x7c724d15, 0xb993c8ac, 0x73aea433, 0x71556452, 0x142234f5, 0xe097e1ba
.word 0x0ba2216e, 0xf2d16e12, 0x4f2e6388, 0x51e7f0f8, 0x15b8f1e6, 0x7a87b561, 0x40e01129, 0x878410a7
.word 0xf08b18ec, 0xb15bc5e1, 0xab06ac37, 0xf35993be, 0xd9d733ba, 0x6b8ebe4a, 0x4bd1f391, 0xf10b4054
.word 0xb27747b8, 0x62955cd1, 0xd502fc12, 0xe9ab79af, 0x43d59853, 0xe8318a49, 0xe3e42387, 0x54e71ef8
.word 0xc0b29ece, 0x7b740f00, 0x7ac24d6b, 0x71b3af2e, 0x83c03b41, 0x3fcee833, 0xd39a0f87, 0x7f1753b7
.word 0x7c19c3c2, 0x0031972e, 0x08297e26, 0x82b9c429, 0x5370d030, 0xd42271d2, 0xa0e5d38b, 0xb5bfdd1d
.word 0x88b0b1bd, 0x830dfb88, 0x06f92897, 0xdea458be, 0x16822ab3, 0x13bd669a, 0x15656671, 0x9ab48916
.word 0x8581d882, 0xd8b1ce4d, 0x191207c2, 0x4cc49077, 0x75a14e5a, 0xa75e0493, 0x3b9ad6ed, 0x913a7866
.word 0x9d31d027, 0x1769dac2, 0x8fa31f45, 0xb9b7983c, 0x0214d7f6, 0x2501e640, 0x78e46f5b, 0xe5e61761
.word 0xd5134339, 0x261d955a, 0xa606d433, 0x5eaa4fc5, 0x1210d50c, 0x3148d195, 0x29e69847, 0x4b21c543
.word 0x73027cfc, 0x52391e91, 0x5396b5e2, 0x250b43e8, 0xe1a4847a, 0x1dbca496, 0x1770b474, 0x15ca04cf
.word 0x827d5739, 0x08b4298d, 0x24242b57, 0xd7ef5ad7, 0x2bcba382, 0x049f7c01, 0x9887fb90, 0x27cb9366
.word 0xdfba2f03, 0xa53ef793, 0x9c91a557, 0x18d10770, 0x5e73c4c1, 0xf2f7ed68, 0xc9e3566d, 0x9fbe42c9
.word 0xc57dcb4d, 0x854c69b3, 0x62cc0fd7, 0x304a3f66, 0xaf66c9c2, 0x0129da0d, 0x116ca023, 0x143bca3a
.word 0x585d65e4, 0xe3326e3e, 0x896bcd89, 0x999e2e62, 0x09c697ee, 0xca8f9618, 0x3594fcb4, 0x69725db6
.word 0xc4ab921d, 0x7b55dcfd, 0xcf713d23, 0xba03a3f1, 0x308ad237, 0x58797707, 0x103151ea, 0x69e4cc92
.word 0x857071f9, 0x9b699be9, 0xdd5ca1d2, 0x79713f41, 0xc991c15c, 0x695c58b6, 0x81650bd4, 0x43f1a37d
.word 0x3aaf755c, 0x1f9057ec, 0xbcd03543, 0x9bd71145, 0xf98c0d95, 0x20081112, 0xe978e4b5, 0xd5236a7e
.word 0x8c8be1b7, 0x8b272deb, 0xddc7fc33, 0x7d425ea5, 0xcb449916, 0x44df2c16, 0xa81b83c1, 0xc29c70c0
.word 0x9c1939dd, 0x2cd7e854, 0x876a9284, 0x0a45cfd5, 0x5b292343, 0xe82ac0dd, 0x6cfd1a7c, 0x8898785e
.word 0xe3039629, 0xf99ef270, 0xb29d34bd, 0x860cdb1f, 0x6cba1700, 0x8052ea42, 0x48faa6c9, 0xc5ed0305
.word 0xf37b203c, 0x7bad38fe, 0x55b7e061, 0xfbfbe505
.section .region_1,"aw",@progbits;
region_1:
.word 0x894d17c3, 0x819bf27c, 0x0acedad3, 0xf3be0ed0, 0x03e4d8a1, 0x9a2bbef9, 0x2de5fc0e, 0x82db8cd4
.word 0x3cf02449, 0x187fc847, 0xe008e80d, 0x41487548, 0x64a91cd4, 0xc4b11723, 0x2ee6bf73, 0x37cb230d
.word 0xe64b4eb0, 0x34158fe3, 0x278ddd80, 0x27b8fc62, 0x5d3b5eed, 0x69a693d9, 0x9ef2b2c9, 0xe02f374e
.word 0x311aa050, 0x8b97ae77, 0x34374e62, 0x2f107319, 0xcdeed6da, 0xbddf85d9, 0x5fdb0845, 0xa12a872f
.word 0xefc20da0, 0x4bcc5970, 0xae9a9b69, 0x95aec582, 0x66066c47, 0xaafc559c, 0xac04720e, 0x8188d163
.word 0x21dd3cf0, 0x874aabbd, 0x43087854, 0x4da6d56a, 0x474b0c87, 0x70cf12f8, 0xd8c97e2f, 0xd986cb3e
.word 0x42b5f101, 0xa6aa5d68, 0xd608609c, 0x18090b1f, 0xc9293aeb, 0x5ce2d3d8, 0x7ee0539d, 0xaf123bf3
.word 0xe8645380, 0x5d33cc8b, 0xfcaadd40, 0x60c2badc, 0x74543f42, 0xaabf84e7, 0x4c238287, 0xb21dbe40
.word 0x34370fb3, 0x179edabc, 0x98d6283f, 0x6cc29b3b, 0xc5a6a74c, 0xbb51586f, 0x042508a4, 0x7885813b
.word 0xeb138061, 0x16db1c70, 0x24497a8e, 0xac6a02c5, 0x2afd3416, 0x552311dd, 0xfe415ab3, 0xeead462d
.word 0x1c4e30e7, 0x9e4bd9e9, 0xd62de3f6, 0x0d6baa42, 0x1b64e56f, 0xf16b0662, 0x22ecf0de, 0x088c2228
.word 0xae3cae53, 0xc84edb3b, 0xdf3c195e, 0x91bc58ba, 0x3793e7d8, 0x3886767d, 0xa9715372, 0x23e825e7
.word 0x83084e69, 0x129bb4bc, 0x8bc1ce2d, 0x33b79692, 0xa6d3f82e, 0xcda56c20, 0x51633d2c, 0xe8e04f7c
.word 0xfa29c720, 0x67c61dc2, 0xf2a25ec3, 0xdf794396, 0x193a6512, 0xe15db3de, 0x467ebfd2, 0x5c3f477f
.word 0x6cff1ecd, 0xe00d62b0, 0xf496fe0a, 0x6b619a41, 0xa16dc377, 0x02714257, 0x3cce79da, 0x406ac2fa
.word 0xa66a79bd, 0xc992071f, 0xf8fa475f, 0x865d1a03, 0x609467e4, 0xf8a4ba90, 0x7ec71116, 0x5553eb1f
.word 0x508feb24, 0x315d25a2, 0x9f274a4a, 0xe4936a5d, 0x4a3b33fa, 0x3ea321cb, 0x39885ad9, 0x2bd25f18
.word 0x5a2988e4, 0x29d723d9, 0x45622bc4, 0x3c8830e7, 0xd124e7be, 0xa648b5b9, 0xc4ba900c, 0x2519a51d
.word 0x8773a984, 0xa245cc93, 0x15088330, 0x32bc8e52, 0x5ff241b9, 0x0e2c4ed6, 0xe860cb74, 0xf0d22c1a
.word 0xea42e5f3, 0xf4bf8f57, 0xd3ee9a88, 0x036e11a5, 0x8a3f4b61, 0xefa3693d, 0x46af8b71, 0xc872110f
.word 0xe3d7233b, 0x5fdacc06, 0xfc08b6e7, 0x4db600a4, 0xac418dba, 0xbf5b34bf, 0x4a94da17, 0x8784ceb6
.word 0x06f7fd50, 0xe49d4f06, 0x9c61529c, 0x56d7f356, 0xd7252d9c, 0xee8f1bff, 0xf4819a5b, 0x7f642bb2
.word 0x9bb83826, 0x58025101, 0xfb0f5a21, 0x20376a60, 0x63f54d96, 0xb11b96c0, 0x4c626977, 0x693dee40
.word 0x426e1402, 0x0d63fd16, 0xfc530927, 0x5f36f489, 0x921e0737, 0x1888116d, 0xea9699e7, 0x58ae76d9
.word 0xe83345b2, 0x50fe6945, 0x32c1836a, 0xc5631898, 0x9631158f, 0xf89785c7, 0xe6320d21, 0x6eebbd24
.word 0xb57e7044, 0x0a3a47dc, 0x2eda3298, 0xee3e8b25, 0xd61b02e0, 0x608fc5a2, 0x25bb96a6, 0x0823fdc3
.word 0x382e83de, 0x4489b295, 0x0c7d5cb7, 0x2f6dd387, 0xcb7ea2fb, 0x7e83446a, 0x5c231f03, 0x0b00942c
.word 0x15da1730, 0x16e6b3b3, 0x4261822c, 0x178c39e6, 0x1ec357da, 0x148d0a21, 0xdbb2f662, 0x76de3544
.word 0xb7ed921d, 0x86aec370, 0xe8eaca66, 0x3c659249, 0x0db36e64, 0x86257e32, 0xe67f5f74, 0xdf2eb615
.word 0xe5268723, 0xb1211c35, 0x69c536f2, 0x3cbae7ee, 0x41f099a1, 0x8aa6e9ef, 0x8b71333e, 0x4175241e
.word 0xbf5bea0d, 0x42605e8f, 0xf3065512, 0xd57838ad, 0x09e75f58, 0x4083a72f, 0x0759f976, 0xb7ef64cd
.word 0xfa622722, 0xaf4e79ca, 0xc4b65e29, 0x6b4b4edb, 0x2094cbeb, 0x85a757fa, 0xab3c45b7, 0x4dc13458
.word 0x41a8bf09, 0x32d94ca7, 0xc4e0f5c8, 0x35557104, 0x31236cae, 0x94723965, 0xa06acd7f, 0x499f0c88
.word 0xaaae8693, 0xfcac8b96, 0xef4a2805, 0xc296d6fc, 0xbc1d3b9c, 0xa68bd648, 0x8ed9ae69, 0x5f3f5973
.word 0xe757ef7f, 0x822e9176, 0x5934ad61, 0x02811ef6, 0x0a0a2934, 0xb3a793d9, 0x992d0a1c, 0x5e8132a8
.word 0x824dd3e8, 0xe60bcb69, 0x38c8a7a5, 0x7a47770b, 0x9b9fe4aa, 0x39e8a77d, 0xc9362d18, 0x2a7eff15
.word 0x6645ef15, 0x704bcc90, 0x09a57b90, 0x8761f3f0, 0x51e95973, 0xfeb47cb8, 0x0558b171, 0xf6b445b6
.word 0x38674b3f, 0x0e89a319, 0xc0747cc8, 0x68a4c0ef, 0x46dcdcd6, 0x164375fe, 0x35368ebd, 0xf71ce4e4
.word 0x953a59a7, 0xdf6947b4, 0x87a4ef12, 0x39d379e2, 0x5afb26ed, 0x3902f44d, 0xc7ebf779, 0x4bcd37c4
.word 0x2108cdc7, 0x6ed9230f, 0x32fe7754, 0x2e835e20, 0x09a351cc, 0xb7cf7864, 0x06d0b764, 0x3194000b
.word 0xcc75a91f, 0xe832f9c7, 0x53cc51ab, 0x68eca1b2, 0xfdf3dbff, 0x7f704d2f, 0x1e4c300b, 0x3a715b40
.word 0xe3895be1, 0xe10a0f08, 0x361d0741, 0xc74a6ce9, 0xde48c5d4, 0x61a5e9a6, 0xb16c9657, 0x782acced
.word 0xf9384ccd, 0x47cff02d, 0xf532d696, 0xfef0b3fc, 0xe8ed2648, 0xd8eca5e7, 0x586fad94, 0xdfccacbc
.word 0xff33979c, 0xe44cd9a7, 0x6eafe8a7, 0x8c0b28d4, 0x747a800c, 0x2bb42428, 0xb427c693, 0x99799f22
.word 0x69f4e310, 0xa14f2524, 0x3875580f, 0x46c294f1, 0x1b8883d6, 0x9b5c6006, 0xfc0f2ed1, 0xec98ad5d
.word 0x4e3250cc, 0x12ee5006, 0xccb86eca, 0x400bb525, 0x9ef32da4, 0x011d9008, 0xc2d30789, 0x4da1a909
.word 0x6b9c63b6, 0x948ae730, 0x006e95ef, 0x6bdf7708, 0x85ed87f2, 0xe2da90e8, 0x7ea990ac, 0x0fcab8ea
.word 0x7fec5e69, 0x04f89538, 0x6535d73a, 0x3c8bdbf2, 0xab9e09b1, 0x024b3f01, 0x9330c094, 0x3af5dada
.word 0x461d0962, 0xf16723b7, 0x2eb19251, 0x39790a37, 0x19c9530f, 0x15aa2176, 0x6a65f08e, 0xea0b96ac
.word 0x38578c74, 0x5debb1e9, 0x0b4e1b2f, 0x36bd4375, 0xa71df8c7, 0x66011fd0, 0x4f5286aa, 0x1225ab38
.word 0xa2c83ed2, 0x832981c1, 0x666731d6, 0xd2ed6848, 0x84fd802e, 0x270eada7, 0xbd32fb89, 0xa8f5d8d4
.word 0xf4e628a9, 0xff9a18f2, 0x72ea4e2f, 0x4199292a, 0x524fd2e8, 0x79a9e6ef, 0x254ace2a, 0xa9abefce
.word 0x895d5786, 0x929dd47e, 0x8b185fa0, 0x7d3bba6f, 0x08d3b387, 0x720d0968, 0xa2edbf7c, 0x23e65a65
.word 0x27cc1c85, 0xea2bf25b, 0x21ee4be6, 0xe8a65c46, 0x9d5b88b2, 0x405afd22, 0xdf14792a, 0xc4efb494
.word 0x236ff628, 0x760c4522, 0xbe3dd41a, 0x49caf5d8, 0xa841f002, 0xae85b8c9, 0x3d907da6, 0xdfdbdf0f
.word 0x6504678b, 0x02135711, 0x1d2fc441, 0x9cfb6b6c, 0xc84be355, 0xb16632a4, 0xcd5af05b, 0xe314fd2a
.word 0x38525627, 0x8599e690, 0x48f12257, 0xb85f92c9, 0x6aed32ad, 0xfdb23286, 0x2a1f62db, 0x7cdd812a
.word 0xe6034141, 0x00eeecb2, 0x97e18dd5, 0x6b702286, 0xc7f3f39b, 0xd64db88c, 0x5d2873fb, 0x07115156
.word 0x91f683f3, 0xad062d9d, 0x0abceea1, 0x2dc0993b, 0x4e65c9f4, 0x01ba036c, 0x6b2fc324, 0x0126fed0
.word 0x2f58ec7d, 0x6820e661, 0x6a3c090f, 0xa1a35538, 0xbd144a19, 0xa7338342, 0xa7e59465, 0xe63fae39
.word 0x5302c0ed, 0x4d794b9b, 0x969b9112, 0x5c63499a, 0x4f3336aa, 0x55cff52a, 0x51f98c4a, 0xe2f45eb0
.word 0x803e224d, 0x35c72a6b, 0x032bf645, 0xef2e92c8, 0x174fcef5, 0xa9428f8b, 0x4ac6c2a2, 0x56f22940
.word 0x58c23750, 0xd3e80d8d, 0xf7f2e034, 0x8ce38dbc
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x8, x7, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x30, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x30, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x30, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x30, x26, ecall_handler
                  li x26, 0x1
                  beq x30, x26, instr_fault_handler
                  li x26, 0x5
                  beq x30, x26, load_fault_handler
                  li x26, 0x7
                  beq x30, x26, store_fault_handler
                  li x26, 0xc
                  beq x30, x26, pt_fault_handler
                  li x26, 0xd
                  beq x30, x26, pt_fault_handler
                  li x26, 0xf
                  beq x30, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x7, x8, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x8, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x8, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x7, x8, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x7, x8, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x7, x8, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
