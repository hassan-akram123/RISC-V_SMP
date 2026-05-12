.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 0
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0x7
                  li x1, 0x80000000
                  li x2, 0xf
                  li x3, 0xb
                  li x4, 0x80000000
                  li x5, 0xe
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0xfd98d159
                  li x10, 0xfe3b2651
                  li x11, 0x80000000
                  li x12, 0xfbe14713
                  li x13, 0xf61b7ae5
                  li x14, 0xf162e56b
                  li x16, 0xb
                  li x17, 0x541f842f
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x81d239a8
                  li x21, 0xfc64bf56
                  li x22, 0x3
                  li x23, 0x0
                  li x24, 0xf128d38a
                  li x25, 0x9
                  li x26, 0xf9bc1a02
                  li x27, 0x80000000
                  li x28, 0x1e53d2e8
                  li x29, 0x1
                  li x31, 0xf5ac7037
                  la x15, user_stack_end
main:             la           t0, region_1+579 #start riscv_load_store_rand_instr_stream_0
                  sw           s8, -15(t0)
                  sltu         zero, s0, a6
                  sb           s8, 0(t0)
                  lb           tp, 11(t0)
                  srl          t3, t0, s3
                  lui          s7, 482064
                  or           t1, s0, ra
                  auipc        s9, 902438
                  xor          s7, a7, t4
                  slt          s0, a1, s8
                  lb           t3, -14(t0)
                  auipc        a1, 963402
                  lh           a2, 1(t0)
                  xor          s0, sp, t6
                  auipc        s1, 52326
                  lhu          s4, -15(t0)
                  sw           a1, -15(t0)
                  lb           s7, 4(t0)
                  sb           s8, -4(t0)
                  lb           zero, 8(t0)
                  sra          s6, a7, s3
                  xor          t4, t4, s2
                  sb           s10, 6(t0)
                  sll          t4, a6, tp
                  sll          t1, s3, tp
                  and          a7, ra, s11
                  sltu         s1, gp, s8
                  sra          ra, s8, s8
                  ori          s9, s10, -1053
                  sub          t1, t3, s4
                  lb           t4, -13(t0)
                  add          s8, s6, s2
                  lb           a0, 11(t0)
                  ori          a7, s10, -1393
                  or           s8, t4, ra
                  slli         s5, s8, 15
                  addi         zero, t3, 172
                  sb           tp, 8(t0)
                  sltu         s10, a5, t0
                  lb           s10, -16(t0) #end riscv_load_store_rand_instr_stream_0
                  srai         a6, t3, 22
                  andi         s0, t5, 1615
                  or           s11, ra, s11
                  sltiu        a7, t5, -567
                  sltiu        tp, a2, 63
                  sub          zero, t3, a6
                  and          t2, s7, s4
                  slli         s6, s11, 23
                  srl          s7, sp, t2
                  slti         ra, s5, 1012
                  sra          s2, s11, a3
                  addi         s10, s1, -817
                  or           t1, s9, t6
                  xori         ra, s4, 984
                  bne          a4, s9, 30f
                  slli         s5, s1, 26
                  srl          a2, s0, a2
                  nop
                  srli         a1, a5, 9
                  sltiu        a1, sp, 796
                  srli         a0, s4, 11
                  slli         s0, t1, 14
                  ori          s11, s1, 296
                  sll          s9, s10, t5
                  slli         tp, s7, 13
                  bltu         t3, s8, 43f
                  srl          s10, t1, a5
                  slti         a7, t2, -2039
                  sltiu        s8, a7, 1967
                  bltu         t3, a2, 42f
30:               andi         t4, s7, 1524
                  slt          t1, s10, a5
                  sra          s10, t5, t2
                  slt          t2, zero, t5
                  srai         zero, t6, 20
                  bge          t2, s11, 44f
                  srai         s11, s4, 16
                  nop
                  auipc        s0, 160617
                  nop
                  la           a2, sub_1
                  sltiu        s5, a0, -1098
                  add          t4, s1, a1
                  lui          a4, 2898
                  lui          t6, 144753
                  lui          a1, 879876
                  addi         a2, a2, -716
                  sll          s5, t4, t5
main_j1:          jalr         tp, a2, 716 #jump main -> sub_1
                  add          t4, tp, t6
                  sll          tp, t6, a7
                  bltu         s2, s8, 49f
                  and          a0, s2, t5
                  addi         s9, a3, 433
42:               beq          a2, sp, 53f
43:               xor          t3, tp, s3
44:               auipc        s4, 570862
                  bge          s11, s5, 53f
                  add          s2, a4, s4
                  bgeu         tp, a7, 53f
                  xor          t1, a5, a0
49:               blt          a5, a0, 53f
                  ori          s5, s4, 1945
                  slt          a7, t1, a5
                  or           s1, a6, ra
53:               ori          s1, gp, 859
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            beq          s10, a5, sub_2_stack_p
                  addi         s5, s3, -1252
                  lui          t2, 768711
sub_2_stack_p:    addi         a5, a5, -20
                  srai         t2, t4, 0
                  sw           tp, 4(a5)
                  slt          t0, sp, a1
                  addi         a4, a2, -806
                  add          a0, s0, s10
                  addi         a6, a5, -1758
                  slt          s11, a4, a6
                  la           a0, region_0+49 #start riscv_load_store_rand_instr_stream_5
                  sb           zero, -10(a0)
                  sb           zero, 7(a0)
                  lbu          t6, 2(a0)
                  lh           sp, -9(a0)
                  lb           t1, 2(a0)
                  lbu          t2, 4(a0)
                  srai         s6, s9, 22
                  sh           s8, 1(a0)
                  lui          s5, 1029269
                  sll          s0, s5, s9
                  add          s10, s11, a0
                  lbu          zero, 8(a0)
                  sltiu        s8, a4, 2041
                  lbu          a4, 12(a0)
                  lb           s4, 6(a0)
                  sltiu        a6, gp, 1605
                  slt          s7, tp, a1
                  sb           ra, 12(a0)
                  srli         s5, s11, 24
                  sb           s0, 14(a0)
                  lb           s7, -3(a0)
                  sra          t4, t4, s4
                  sll          t2, s8, gp
                  andi         t2, tp, -219
                  slti         s7, s7, -1234
                  andi         s10, s2, 449
                  sra          s5, s9, a2
                  add          sp, s0, a2
                  sb           t5, 14(a0)
                  srl          s10, a0, a0
                  sltu         a4, s11, t0
                  add          t0, t5, a0
                  lhu          s11, -5(a0)
                  nop
                  sra          s7, t4, a1
                  lbu          s1, -9(a0)
                  sll          t0, a6, t1
                  sb           sp, -4(a0)
                  lb           s2, -12(a0)
                  nop
                  slt          s9, t1, ra
                  andi         s3, a7, 1032
                  lbu          t4, -4(a0) #end riscv_load_store_rand_instr_stream_5
                  la           t2, region_0+1442 #start riscv_load_store_rand_instr_stream_2
                  lbu          s2, -103(t2)
                  lb           gp, 177(t2)
                  sra          s4, a5, s6
                  srl          gp, t2, t4
                  sw           a7, 198(t2)
                  ori          t1, s2, 424
                  sltiu        a4, s8, 1994
                  lui          a1, 963459
                  lbu          s4, 146(t2)
                  sll          a6, a7, a3
                  and          s10, t1, s6
                  ori          zero, t6, 847
                  xor          s2, s3, a4
                  srl          t1, t3, a0
                  sltiu        s4, a4, -1245
                  nop
                  lh           a4, 228(t2)
                  slli         s1, s3, 13
                  srl          s3, s3, a1
                  slt          a2, s1, ra
                  nop
                  sltu         gp, sp, s3
                  sb           a6, 167(t2)
                  lb           s1, -1(t2)
                  lh           s6, -104(t2)
                  srli         t0, s9, 16
                  and          s9, t6, s6
                  nop
                  sltu         sp, sp, zero
                  sb           s0, 171(t2)
                  sll          s8, s5, a3
                  srl          s10, zero, tp
                  xori         a2, s8, -253
                  addi         s7, t4, 1213
                  sub          a7, s11, sp
                  addi         a0, tp, 668
                  sltiu        a2, s4, 1453
                  lui          ra, 1036188
                  lb           t3, 186(t2)
                  slli         a6, s9, 26
                  sb           gp, -52(t2) #end riscv_load_store_rand_instr_stream_2
                  la           ra, region_0+1692 #start riscv_load_store_rand_instr_stream_6
                  slli         t4, t0, 13
                  add          t1, ra, a0
                  lbu          gp, -3(ra)
                  sll          s0, zero, t2
                  lb           s9, -5(ra)
                  lw           s0, -4(ra)
                  or           a2, s2, ra
                  xor          s6, s6, s7
                  sub          gp, a6, t5
                  lb           tp, -9(ra)
                  sll          s2, s8, a7
                  sh           a4, 8(ra)
                  lbu          zero, -3(ra)
                  lh           zero, -14(ra)
                  xor          t2, s4, a0
                  lbu          a7, -5(ra)
                  lbu          s7, -5(ra)
                  lhu          s1, -6(ra)
                  slti         s8, zero, 433
                  sltu         t6, zero, ra
                  lbu          t0, 5(ra)
                  lui          tp, 241514
                  lb           s10, 1(ra)
                  lh           s1, 10(ra)
                  lbu          t2, 0(ra)
                  lbu          t3, -3(ra)
                  lh           s6, -10(ra)
                  sb           s4, -13(ra)
                  lh           s8, 10(ra)
                  lbu          a0, -13(ra)
                  sb           gp, 13(ra)
                  srli         s7, s2, 5
                  lhu          t1, 4(ra)
                  sb           a7, 15(ra)
                  xor          t0, s7, a7
                  or           a7, s2, s11
                  sltu         s9, t6, s5
                  lb           s11, 3(ra)
                  and          s6, s10, a2
                  andi         gp, t5, 152
                  sb           s4, -11(ra)
                  sra          s10, gp, sp
                  lbu          s10, -5(ra)
                  lbu          t6, -9(ra)
                  lb           s1, -13(ra)
                  sb           t6, -6(ra)
                  slli         a1, t2, 20
                  sb           s0, 11(ra) #end riscv_load_store_rand_instr_stream_6
                  la           s10, region_0+183 #start riscv_load_store_rand_instr_stream_0
                  lh           sp, -3(s10)
                  nop
                  sub          s1, s8, s10
                  lb           t4, 10(s10)
                  and          sp, s0, a1
                  ori          a7, s7, 661
                  slti         s9, gp, -812
                  lb           s6, 6(s10)
                  addi         a4, s3, -15
                  lb           s11, -8(s10)
                  lbu          t0, 4(s10)
                  slt          s9, a4, s2
                  srli         s11, sp, 23
                  sb           s6, 6(s10)
                  sra          a2, s8, s5
                  sb           a7, 2(s10)
                  auipc        s2, 828947
                  lui          s5, 42137
                  srli         a1, a6, 27
                  addi         s0, a3, 1711
                  slti         a4, a2, 1440
                  srai         a1, a4, 31
                  or           s7, s0, s3
                  sb           s4, 10(s10)
                  lbu          a7, 13(s10)
                  lbu          t1, -8(s10)
                  srli         a1, s7, 8
                  srl          s2, s9, a6
                  and          s6, t1, tp
                  srli         s1, t6, 21
                  add          t2, s2, t4
                  nop
                  nop
                  lbu          s5, -12(s10)
                  addi         a0, t0, -1120
                  sll          a4, s6, ra
                  srl          ra, t0, a3
                  slli         t6, t2, 31
                  sra          s11, t5, s4
                  lbu          t4, -5(s10) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+868 #start riscv_load_store_rand_instr_stream_8
                  sb           a1, 168(sp)
                  lb           t3, -219(sp)
                  slt          s2, t6, s1
                  sub          a4, t1, a5
                  sb           t1, 41(sp)
                  sb           a0, -227(sp)
                  and          a7, s7, s9
                  lbu          s9, 137(sp)
                  ori          s0, s4, 580
                  sra          s0, s4, gp
                  and          t3, s9, s0
                  ori          s10, s9, -2000
                  slt          s10, a6, a0
                  lb           s9, -167(sp)
                  srl          gp, t0, t3
                  ori          s5, s2, 292
                  slti         t6, a5, -315
                  sb           a1, 151(sp)
                  lbu          a7, 65(sp)
                  slt          t4, s8, a2
                  lh           t2, 180(sp)
                  lh           t2, 254(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1741 #start riscv_load_store_rand_instr_stream_9
                  sll          a2, s10, t2
                  sltu         s0, a4, gp
                  srl          ra, zero, a3
                  or           tp, a1, a2
                  lhu          a1, 193(sp)
                  xor          s8, s11, t4
                  lb           t6, -79(sp)
                  sltiu        s1, sp, 287
                  lbu          a0, -43(sp)
                  sub          zero, a0, a6
                  sb           s9, -128(sp)
                  xori         a2, t6, -1875
                  sh           a6, 25(sp)
                  sub          a6, t4, t3
                  xor          t1, s2, s4
                  lbu          s8, 19(sp)
                  sltu         t3, s4, s6
                  sra          s5, s0, a5
                  lbu          s9, 83(sp)
                  xori         t0, t2, -480
                  lb           s2, -248(sp)
                  lb           zero, 24(sp)
                  lb           gp, 14(sp)
                  lhu          a7, -33(sp)
                  sh           t1, -61(sp)
                  ori          t2, t6, 477
                  slti         a6, s7, 464
                  auipc        a7, 1043901
                  sh           s8, 151(sp)
                  lb           s7, 232(sp)
                  lui          a1, 389502
                  sw           s4, -213(sp)
                  slti         ra, t2, 666
                  sh           a7, -203(sp) #end riscv_load_store_rand_instr_stream_9
                  sub          ra, t4, t3
                  sra          s6, s10, a1
                  nop
                  and          a6, t5, tp
                  nop
                  ori          t2, a1, -1978
                  bne          a2, a5, 20f
                  blt          a2, s4, 27f
                  slli         t0, zero, 11
                  slti         s0, a1, 1468
                  bne          t1, t5, 23f
                  blt          s1, a3, 29f
                  srl          t4, t6, a1
                  nop
                  andi         s3, t4, -1583
                  sub          s1, a3, a0
                  bgeu         ra, s8, 36f
                  bne          a5, s2, 27f
                  bge          s0, s6, 19f
19:               srai         s11, t6, 20
20:               sra          zero, s5, t4
                  beq          s4, s6, 24f
                  lui          a0, 289625
23:               bne          s10, a2, 32f
24:               srl          s3, sp, a6
                  bgeu         t2, ra, 44f
                  sra          a1, t0, ra
27:               beq          a6, t1, 40f
                  xori         s1, t2, 1238
29:               xori         s7, a7, 358
                  blt          t5, s9, 42f
                  auipc        a1, 804100
32:               add          a6, a4, s2
                  sra          t6, a6, s10
                  sub          s1, a6, ra
                  sub          s6, tp, s3
36:               xori         s1, s4, 1258
                  srl          s6, s1, a3
                  sub          zero, s10, s9
                  blt          a1, s10, 51f
40:               andi         s0, t5, -578
                  bltu         s9, s10, 49f
42:               sltu         gp, s7, t6
                  sll          s9, s5, s9
44:               sub          t0, a6, s0
                  slti         tp, gp, 1541
                  slt          s3, t3, s3
                  bgeu         s8, a1, 57f
                  srai         s6, a6, 11
49:               srai         ra, t2, 10
                  srli         s3, t4, 27
51:               beq          sp, s3, 52f
52:               xor          s4, t5, s4
                  sltu         s5, s11, ra
                  add          tp, sp, a1
                  add          s4, s0, s8
                  xor          s6, t4, zero
57:               bltu         gp, a4, 70f
                  beq          s3, zero, 76f
                  or           sp, t4, a3
                  sra          t1, a1, a4
                  slti         a6, s10, 1529
                  sra          t0, sp, s3
                  and          t4, t5, a5
                  bltu         s1, s2, 71f
                  sll          a4, zero, t6
                  or           t2, zero, t2
                  blt          s5, t3, 76f
                  blt          a4, t4, 77f
                  xori         t2, t3, 0
70:               bge          a7, t2, 81f
71:               srli         s3, a7, 21
                  bgeu         s8, s3, 84f
                  andi         s4, t3, 916
                  sltiu        s1, t0, -1033
                  xor          t2, s9, t6
76:               nop
77:               lui          sp, 654413
                  bge          a6, zero, 82f
                  bgeu         a2, s0, 96f
                  srl          t2, t5, s11
81:               andi         s11, s6, 2
82:               beq          s10, s10, 84f
                  sltu         s9, ra, a6
84:               sub          t3, ra, t0
                  bgeu         s7, s5, 105f
                  andi         t0, s1, -640
                  xori         a4, a6, 921
                  lui          t4, 205004
                  xori         s3, s7, 1431
                  sltiu        s2, t3, -233
                  sltiu        ra, a4, 203
                  xor          s8, s0, a2
                  bne          t1, a7, 102f
                  bltu         gp, ra, 99f
                  sltu         s7, t2, s8
96:               lui          a1, 840397
                  auipc        a4, 189912
                  bne          s0, s9, 99f
99:               slt          s9, gp, a4
                  sra          s10, s5, t3
                  addi         s11, a1, -895
102:              srai         t6, a3, 13
                  bge          t2, ra, 122f
                  ori          a0, ra, 752
105:              andi         s3, s6, -202
                  lui          s11, 1042849
                  slti         gp, s2, -1642
                  auipc        a0, 766538
                  srl          t2, tp, s7
                  andi         t2, s8, -47
                  beq          s7, a1, 114f
                  sltu         t2, s11, t6
                  sra          s0, s0, ra
114:              beq          a1, a5, 116f
                  andi         s3, a5, -1758
116:              bgeu         a6, s10, 133f
                  blt          s1, s0, 127f
                  slti         t1, a5, -1725
                  andi         sp, t6, 407
                  or           s4, t1, ra
                  bltu         t0, s10, 128f
122:              slti         s5, tp, -1551
                  add          a0, t1, t0
                  ori          s8, gp, 1818
                  bltu         t2, a1, 126f
126:              bltu         t2, gp, 146f
127:              blt          zero, a6, 136f
128:              srai         a7, a6, 20
                  sra          t4, t5, a4
                  auipc        s9, 926838
                  andi         s4, zero, 140
                  beq          tp, sp, 133f
133:              lui          a1, 784606
                  and          s3, sp, a2
                  andi         s6, a6, -1033
136:              slti         s11, a3, 1386
                  sll          t4, s7, s7
                  and          s5, s2, sp
                  slli         s5, t6, 22
                  srai         zero, s10, 7
                  sub          t3, t2, s4
                  add          s9, s7, a4
                  xori         s10, sp, 516
                  xori         t4, sp, -720
                  sltu         s0, a4, a0
146:              or           a0, a1, a0
                  slt          s8, a3, a5
                  sltiu        t0, s0, 1135
                  auipc        gp, 452678
                  and          sp, a4, s5
                  bge          s10, s10, 165f
                  srai         s9, a5, 14
                  nop
                  bgeu         a2, s6, 163f
                  srai         zero, a2, 21
                  srai         gp, a2, 6
                  srli         zero, a5, 17
                  addi         t2, tp, 2
                  bltu         t1, a1, 177f
                  srli         s4, t1, 9
                  srai         s10, s9, 12
                  xori         s11, s10, 1506
163:              slli         a4, a1, 15
                  add          s10, sp, s10
165:              srai         t4, a6, 9
                  sub          s11, ra, zero
                  bgeu         a1, a0, 168f
168:              add          a0, s6, a5
                  srli         a4, t6, 17
                  beq          s10, sp, 175f
                  bgeu         s9, s5, 183f
                  slt          ra, s8, t0
                  slt          s1, s2, s6
                  ori          t2, t1, -1154
175:              sra          t6, gp, s11
                  sll          ra, s0, s0
177:              xor          a1, t4, tp
                  slti         s1, zero, 1306
                  and          s10, t0, a2
                  addi         s6, t4, -977
                  andi         t6, a1, 10
                  sll          s8, s5, s4
183:              nop
                  bgeu         a3, t3, 193f
                  la           s8, region_1+1480 #start riscv_load_store_rand_instr_stream_13
                  slli         s7, s4, 23
                  lb           t4, -1397(s8)
                  addi         s9, s0, 716
                  sh           gp, 142(s8)
                  lw           s2, -520(s8)
                  lb           a7, -400(s8)
                  sb           a3, -666(s8)
                  lh           zero, -578(s8)
                  lhu          s4, 248(s8)
                  sub          s11, t3, a1
                  sltiu        a7, t6, -516
                  nop
                  nop
                  addi         s7, a2, -1108
                  sltiu        s5, s4, 1073
                  sh           t1, -66(s8)
                  lb           gp, -427(s8)
                  slt          a4, t3, s6
                  lb           s11, -1013(s8)
                  auipc        s7, 153010
                  lui          a2, 769678
                  sb           a0, 102(s8)
                  add          t2, t0, s2
                  sw           a3, -132(s8) #end riscv_load_store_rand_instr_stream_13
                  sltu         s6, zero, t6
                  sll          t2, ra, t6
                  or           a4, t1, s6
                  sltu         s6, s8, s3
                  addi         s3, s5, -777
                  sub          ra, s11, s2
                  bne          a2, s9, 211f
                  or           t6, s11, s0
193:              slli         s2, s3, 15
                  bge          a5, a1, 202f
                  sltiu        t3, t4, -1861
                  ori          s2, s6, 1593
                  srl          s2, t2, tp
                  andi         s6, a7, -728
                  srai         a6, ra, 24
                  xori         a4, s10, -898
                  slli         s0, a7, 1
202:              sltiu        a2, a1, -763
                  sltu         a2, s4, s5
                  blt          s1, gp, 216f
                  bne          t1, s3, 214f
                  addi         t6, sp, -1362
                  sra          t4, gp, s0
                  beq          s5, s8, 226f
                  bge          ra, zero, 213f
                  blt          zero, sp, 223f
211:              xori         s4, a0, 200
                  or           gp, s3, s2
213:              sltiu        tp, a6, 522
214:              bge          a0, s2, 227f
                  sltiu        a7, zero, 2018
216:              xori         a1, s2, 1412
                  srai         ra, t1, 10
                  beq          sp, s4, 238f
                  xori         s3, tp, 1630
                  sltu         s4, a4, a3
                  andi         s3, a0, 1286
                  xor          a4, a7, s6
223:              srli         a4, a1, 24
                  sltiu        s11, s2, -846
                  add          s8, s1, s8
226:              sll          a1, s9, a0
227:              bne          t1, s1, 238f
                  lui          a7, 597115
                  srai         ra, s2, 15
                  beq          t0, t3, 243f
                  srl          t2, t3, a0
                  bge          t1, s6, 242f
                  srl          t4, a2, t5
                  sra          sp, t5, tp
                  or           a4, s11, s10
                  lui          zero, 174143
                  xor          s1, t5, s2
238:              ori          sp, a2, 1423
                  sltu         a4, s6, s10
                  add          s6, t3, s7
                  auipc        s2, 429142
242:              srli         s4, s3, 27
243:              andi         s7, s9, -949
                  srli         t0, a6, 26
                  slti         a2, a4, 121
                  beq          t4, s4, 258f
                  bltu         a2, a7, 260f
                  bgeu         sp, tp, 261f
                  or           tp, s10, tp
                  and          s3, a3, gp
                  add          s0, t1, s0
                  la           sp, region_0+1451 #start riscv_load_store_rand_instr_stream_3
                  sra          t0, t2, s1
                  sb           s3, -16(sp)
                  sb           s6, 2(sp)
                  sltu         s2, a2, a1
                  slli         s10, s1, 22
                  lbu          t1, 2(sp)
                  ori          s6, a5, 589
                  sb           a4, -12(sp)
                  lw           s9, 13(sp)
                  sltiu        t4, t3, 828
                  srli         t0, ra, 25
                  addi         s8, t6, -806
                  lbu          s5, 9(sp)
                  lb           a2, 5(sp)
                  andi         tp, a6, -1190
                  slti         s1, sp, 63
                  srli         s9, a4, 30
                  xor          a6, t3, s2
                  lb           a1, 0(sp)
                  slli         s5, a5, 31
                  lbu          zero, -14(sp)
                  lbu          s7, -8(sp)
                  slli         a6, s1, 23
                  slli         s9, s10, 19
                  lbu          tp, 2(sp)
                  lui          s9, 185773
                  sub          s4, s6, a6
                  lui          s6, 701278
                  andi         s1, gp, 1559
                  sh           s8, -7(sp)
                  lbu          s3, -7(sp)
                  slt          s8, tp, s4
                  and          s11, tp, s8
                  andi         s0, t4, 1904
                  sb           s10, 3(sp)
                  sltiu        t4, s3, -1527
                  lb           s9, 16(sp)
                  and          s2, gp, a5
                  lhu          a6, -7(sp)
                  slti         t2, s8, 2003
                  and          s2, a3, t1
                  srl          s3, s3, tp
                  lb           t1, 14(sp)
                  slli         t3, sp, 9
                  nop
                  lbu          s6, 8(sp)
                  lbu          ra, 5(sp)
                  sub          a1, s0, a6
                  lh           tp, 9(sp) #end riscv_load_store_rand_instr_stream_3
                  beq          t2, a6, 270f
                  ori          a2, gp, -1655
                  nop
                  srai         t6, sp, 17
                  srai         tp, s9, 17
                  addi         s5, s5, -1636
258:              srl          s4, zero, a6
                  and          s5, t4, s7
260:              nop
261:              sll          t6, s1, a0
                  andi         a6, s11, 4
                  nop
                  sra          sp, t5, t2
                  bgeu         a3, s6, 285f
                  sltu         s10, t4, t5
                  sll          gp, s8, t5
                  nop
                  add          s6, s11, s11
270:              xori         t4, s6, -880
                  beq          t2, a7, 291f
                  sll          t0, s10, t0
                  bge          s3, s2, 285f
                  bgeu         s3, s4, 277f
                  addi         s9, s4, -1316
                  auipc        a2, 147677
277:              beq          a0, a3, 284f
                  beq          sp, s11, 287f
                  slli         s10, t0, 23
                  slt          s7, s2, s11
                  xori         zero, t4, 893
                  bltu         s4, a7, 283f
283:              and          t1, gp, a2
284:              sra          a6, s2, s3
285:              bltu         a2, a2, 303f
                  sll          s5, a6, s8
287:              bne          a6, s4, 299f
                  slti         s7, s10, 1168
                  srl          s9, sp, s7
                  bltu         s0, s10, 298f
291:              add          a4, s8, t4
                  xori         a2, zero, 1027
                  and          t2, t3, s9
                  srli         t2, s5, 25
                  blt          t5, s0, 312f
                  slti         a4, s4, 1093
                  srli         a2, s5, 2
298:              andi         t6, a3, -1477
299:              nop
                  sub          s6, a2, s5
                  srai         a0, s7, 9
                  nop
303:              srai         t0, t4, 12
                  and          a2, a0, t4
                  sub          s11, s9, t1
                  and          t4, s6, s9
                  slti         s4, s6, -493
                  xori         s5, s10, -199
                  add          t1, a5, a0
                  andi         s0, s9, 1399
                  sub          a4, t5, ra
312:              bne          s1, a4, 321f
                  and          t4, a1, sp
                  or           a2, s7, t2
                  xor          a7, a5, s4
                  and          s0, s7, s10
                  xor          s6, zero, a4
                  blt          a2, s2, 319f
319:              sltu         s10, s6, t6
                  slli         zero, a6, 29
321:              blt          gp, tp, 330f
                  sll          t3, a1, t5
                  bge          s0, s8, 327f
                  bge          s2, a4, 334f
                  bgeu         a5, a0, 345f
                  blt          s4, s5, 338f
327:              addi         a2, t5, 566
                  bgeu         gp, s5, 347f
                  lui          s1, 361879
330:              srl          s1, zero, s4
                  bge          s5, a5, 332f
332:              sra          zero, ra, sp
                  bltu         s9, ra, 346f
334:              srl          s6, t6, tp
                  ori          t3, a4, 1476
                  sra          a0, a7, sp
                  srl          s6, t6, tp
338:              nop
                  or           s2, s3, a6
                  ori          s11, s8, 1830
                  bge          a7, s0, 343f
                  xor          a0, s4, a4
343:              sub          t2, s0, s7
                  andi         a0, t3, 978
345:              bgeu         s1, s2, 356f
346:              bge          a5, s9, 356f
347:              blt          a3, s6, 356f
                  nop
                  xor          s10, t5, s9
                  add          s0, s9, tp
                  beq          s5, t0, 356f
                  bltu         t1, gp, 366f
                  srli         s7, a7, 18
                  ori          s3, s8, -562
                  and          a0, a4, s2
356:              srli         t6, a5, 4
                  auipc        a2, 928848
                  srli         t6, s1, 5
                  sub          t0, ra, t0
                  addi         a2, a0, -806
                  auipc        a0, 411514
                  srai         s1, a5, 31
                  sltiu        zero, a6, 1057
                  andi         s1, tp, -1609
                  bge          s9, a6, 383f
366:              xor          s0, s1, t4
                  auipc        ra, 900164
                  xor          sp, t0, a3
                  bge          a2, s9, 389f
                  slli         t4, s2, 7
                  ori          zero, t0, 2000
                  sra          s1, t5, t3
                  beq          a0, t0, 382f
                  addi         s3, a6, -1945
                  auipc        a0, 947341
                  slt          s1, t0, sp
                  and          t2, s2, s2
                  srl          s2, zero, t6
                  srl          gp, s3, a2
                  bge          tp, a0, 400f
                  sltu         ra, sp, s9
382:              lui          ra, 1015063
383:              and          s1, s11, gp
                  xori         s9, ra, 205
                  bne          s10, s7, 399f
                  slli         ra, t2, 21
                  beq          a1, s2, 388f
388:              lui          a6, 334971
389:              sltu         s6, gp, s8
                  blt          a2, t5, 394f
                  srli         a0, t0, 26
                  xori         a0, s7, 808
                  beq          sp, s2, 402f
394:              nop
                  xor          a4, ra, a6
                  xor          ra, s1, zero
                  srai         s4, t5, 7
                  slti         a0, t0, -43
399:              bge          s8, s10, 408f
400:              beq          t3, s9, 412f
                  xori         s10, a1, -781
402:              sltu         sp, s5, s0
                  ori          s10, s8, -1187
                  sub          ra, s7, t3
                  bgeu         a4, a7, 418f
                  bgeu         t6, s1, 418f
                  or           t1, s10, s10
408:              sll          s10, t1, s9
                  slti         s7, t4, -274
                  bge          a4, t3, 413f
                  sltu         t2, s10, s5
412:              andi         s9, tp, -989
413:              add          s9, s11, s3
                  bge          s8, s4, 424f
                  srl          t2, t4, sp
                  bne          t1, s1, 424f
                  slti         a2, a2, -1986
418:              xor          ra, a2, t3
                  slt          s11, s2, s5
                  xori         a2, s6, -257
                  xor          t0, s4, a3
                  slt          s10, t2, ra
                  srli         s5, s8, 12
424:              auipc        s8, 372336
                  andi         zero, t3, 1999
                  andi         s0, s10, -200
                  slti         t3, s1, 799
                  auipc        t6, 679198
                  srli         s0, s1, 28
                  lui          t0, 461050
                  xor          t6, a5, a2
                  and          tp, s10, a4
                  bge          ra, t0, 446f
                  xor          gp, a5, s11
                  blt          t3, a6, 448f
                  slli         s1, t0, 10
                  xori         s8, t5, 1067
                  bgeu         t4, a4, 455f
                  add          s4, s1, s7
                  andi         s8, a5, 1238
                  xori         t6, a2, 1362
                  add          a6, a3, a1
                  slt          a4, a3, s11
                  sub          s0, t4, a3
                  bgeu         s7, t6, 454f
446:              srl          ra, a3, s2
                  beq          a0, gp, 465f
448:              srli         t0, a6, 27
                  sub          t2, a2, s3
                  srli         a0, s10, 14
                  srli         s5, t6, 9
                  or           t3, zero, sp
                  addi         a6, s0, -952
454:              bge          t3, t2, 466f
455:              ori          s5, tp, 1126
                  sltiu        a0, t4, -1482
                  xor          t6, s2, t0
                  blt          zero, a3, 469f
                  sub          ra, t5, t5
                  bne          s2, s10, 479f
                  addi         gp, a1, -1673
                  slt          s8, a3, s7
                  lui          t2, 878776
                  or           a6, a7, t6
465:              sltiu        s0, t6, 1488
466:              addi         s9, s2, 754
                  bge          zero, s9, 468f
468:              bltu         s6, s6, 469f
469:              addi         t4, s4, -75
                  lui          s9, 70412
                  nop
                  slti         a2, s1, 1503
                  add          s7, t6, ra
                  ori          t0, a2, 1095
                  addi         t1, t0, -1261
                  sra          s7, t2, ra
                  bltu         a7, t0, 479f
                  nop
479:              slt          t2, t5, a2
                  bge          t3, s5, 490f
                  bne          s0, a2, 486f
                  beq          a7, a2, 502f
                  slti         s11, a4, -1451
                  nop
                  lui          sp, 433435
486:              add          t3, s5, t2
                  srli         tp, t1, 21
                  sll          zero, t6, s0
                  srai         s2, s4, 12
490:              slti         s9, s9, -1061
                  or           s8, t0, a0
                  bge          s10, a7, 499f
                  bge          a5, s8, 503f
                  sub          s4, t3, s7
                  sltu         t1, s2, a5
                  sltu         s0, s3, gp
                  and          s10, a6, s6
                  xor          a1, a0, a1
499:              nop
                  srai         t2, a6, 16
                  andi         a1, t6, -646
502:              and          s6, s2, a5
503:              blt          a0, t4, 505f
                  bgeu         a2, t3, 517f
505:              nop
                  bltu         s1, s10, 524f
                  andi         s8, t6, 603
                  bge          t2, a4, 527f
                  srli         a7, s8, 10
                  slt          t1, s8, a2
                  beq          s2, sp, 531f
                  bge          a2, s6, 532f
                  srl          s1, gp, a2
                  beq          t6, s11, 526f
                  slt          tp, gp, s8
                  sub          a7, gp, s3
517:              srai         s11, t5, 16
                  auipc        a6, 491617
                  or           a6, s0, t4
                  bgeu         s8, s8, 521f
521:              sltu         s11, s11, a7
                  ori          a0, sp, 231
                  bgeu         a2, s9, 541f
524:              sll          s8, s4, s6
                  srl          s10, t6, s8
526:              sll          a1, t2, s7
527:              add          a1, tp, a4
                  srai         s8, a7, 10
                  sltu         s6, s0, a5
                  andi         ra, s1, -1931
531:              sltiu        s11, a3, 1695
532:              xori         ra, sp, 1728
                  or           t0, s3, t0
                  bltu         gp, a3, 544f
                  bne          t3, s7, 544f
                  addi         sp, s7, 394
                  srai         gp, tp, 17
                  and          t3, a2, t5
                  or           a1, t5, s0
                  sltu         sp, s6, sp
541:              srl          a7, s0, a2
                  ori          a7, a5, -1698
                  blt          a3, a5, 552f
544:              nop
                  blt          a3, s2, 552f
                  addi         t1, s1, 1606
                  srl          sp, s10, t2
                  srli         s5, s4, 4
                  lui          a0, 654336
                  slt          ra, a7, a1
                  bne          a3, s4, 556f
552:              srli         t4, t6, 24
                  auipc        s1, 184052
                  or           s2, s6, a2
                  srli         a0, a1, 2
556:              add          s0, t2, a1
                  bge          t2, gp, 570f
                  nop
                  slti         t0, a4, -1556
                  slt          s5, a0, s10
                  srl          ra, s3, a4
                  slli         s1, s10, 20
                  sra          a6, t2, s11
                  ori          tp, a1, 949
                  xori         a2, a3, -496
                  xori         tp, s3, 785
                  auipc        t4, 220637
                  srl          a2, a1, sp
                  blt          sp, s9, 572f
570:              addi         s6, a3, 1446
                  srl          zero, a3, s0
572:              sltu         a2, s9, t4
                  ori          a0, s8, 1407
                  bge          s4, a1, 588f
                  xori         ra, a4, -947
                  bgeu         s2, t1, 577f
                  la           a1, region_0+355 #start riscv_load_store_rand_instr_stream_11
                  lhu          a0, 471(a1)
                  lui          t3, 321025
                  sb           a5, 1166(a1)
                  sb           s1, 329(a1)
                  lb           s5, 1200(a1)
                  lbu          t2, 1152(a1)
                  sll          s9, zero, s0
                  xor          s6, a0, s6
                  andi         s6, zero, 1486
                  sb           s1, 478(a1)
                  sb           gp, 690(a1)
                  lh           t3, 931(a1)
                  or           sp, s7, s3
                  lbu          a4, 998(a1)
                  lhu          a0, 1619(a1)
                  lb           s0, 941(a1)
                  slli         t0, t1, 0
                  lb           t4, 128(a1)
                  sltiu        s6, a6, 1253
                  sb           zero, 1001(a1)
                  xori         a6, a2, -953
                  lhu          t6, 507(a1)
                  lb           s1, 852(a1)
                  sltiu        s3, s2, -1351
                  sb           a1, 730(a1)
                  srl          s6, s9, s3
                  sb           s5, 968(a1)
                  sub          ra, a2, s8
                  sb           sp, 523(a1)
                  sb           tp, 1462(a1)
                  lbu          s10, 1134(a1)
                  lbu          s9, 944(a1)
                  sb           gp, 820(a1)
                  slt          s10, s0, gp
                  sh           s9, 1403(a1)
                  lbu          s5, -14(a1)
                  xori         gp, t6, 515
                  sb           s6, 262(a1) #end riscv_load_store_rand_instr_stream_11
577:              bgeu         a7, a2, 578f
578:              slti         s4, s6, -1355
                  srl          a0, gp, ra
                  sltu         t2, a5, a7
                  nop
                  bne          a5, s7, 599f
                  add          a0, s5, s10
                  nop
                  bne          sp, a7, 594f
                  slti         t0, s0, 919
                  add          t6, a6, t1
588:              slti         t6, a4, 50
                  sub          t2, s4, s9
                  sltiu        sp, t2, -831
                  slti         a1, a1, 1519
                  sub          t6, t1, s10
                  addi         s1, s5, -674
594:              slli         s3, s1, 18
                  slt          s5, s1, s5
                  ori          a2, s6, -283
                  srli         sp, a4, 2
                  bgeu         t2, a6, 611f
599:              slt          ra, s0, s11
                  sltiu        a4, a3, 1046
                  slli         s7, s5, 3
                  addi         t3, a2, -64
                  nop
                  srli         s11, a7, 7
                  bltu         s8, s9, 609f
                  sll          s7, s0, s6
                  srl          t1, tp, t4
                  nop
609:              auipc        s9, 1026992
                  auipc        s5, 485481
611:              bne          s9, a6, 623f
                  srai         s1, tp, 6
                  bge          s6, t5, 633f
                  bltu         s7, gp, 622f
                  slli         tp, s2, 0
                  sub          ra, a1, a1
                  andi         s4, s1, 195
                  xori         s4, s9, 1958
                  xori         ra, ra, -1738
                  bltu         gp, s4, 632f
                  xor          tp, a5, sp
622:              sltiu        t6, s7, 107
623:              sub          t2, a4, t1
                  auipc        s1, 807419
                  addi         ra, a0, 1764
                  sltu         s4, t3, a6
                  andi         t6, s0, 100
                  xori         s10, t5, 1998
                  add          a4, s5, sp
                  xor          t3, a2, a0
                  ori          s8, t4, 1180
632:              bne          s8, gp, 641f
633:              beq          a0, a5, 644f
                  nop
                  sll          tp, a5, t5
                  sra          a7, sp, s3
                  bge          s6, s9, 649f
                  xori         s8, s2, 448
                  auipc        s6, 582520
                  slti         s5, a7, -1846
641:              bge          t3, zero, 654f
                  bgeu         s0, s8, 643f
643:              sra          a6, a5, s5
644:              xori         s11, s8, -427
                  slt          tp, a0, a4
                  and          s5, t0, a6
                  add          s5, tp, s5
                  srli         a0, a7, 12
649:              slti         ra, s11, 1143
                  bgeu         a4, t0, 663f
                  sll          s8, a6, s2
                  lui          t0, 175689
                  sra          s1, s1, t3
654:              slli         a7, s6, 14
                  andi         s5, zero, -154
                  slt          s5, tp, s3
                  blt          t4, a6, 667f
                  sra          s6, s7, s8
                  slli         a7, zero, 31
                  srai         a0, ra, 17
                  sra          s3, t1, s8
                  nop
663:              and          a2, a6, a0
                  or           s8, s3, a1
                  and          t3, sp, s6
                  srai         a2, t4, 6
667:              srl          s9, zero, zero
                  srai         s9, a2, 22
                  sll          sp, s1, a4
                  sltu         a4, ra, ra
                  or           s7, a4, t0
                  add          t2, s11, s10
                  bgeu         t5, s9, 692f
                  ori          t0, t0, 392
                  slt          t1, sp, a2
                  bltu         a4, s8, 677f
677:              andi         ra, a0, 607
                  sltiu        s10, s4, 893
                  xor          ra, s11, t2
                  or           s5, s3, s4
                  sltu         t4, a7, ra
                  xori         gp, s2, 802
                  bltu         s7, a0, 687f
                  srl          a4, s10, ra
                  addi         s4, s3, -1597
                  srai         s4, t1, 2
687:              slt          a1, a5, tp
                  sltu         zero, a5, s5
                  and          t4, a0, t1
                  bge          a2, a2, 701f
                  la           sp, region_0+29 #start riscv_load_store_rand_instr_stream_1
                  lbu          a7, 190(sp)
                  lbu          gp, 54(sp)
                  lbu          a4, 62(sp)
                  sub          a2, s5, s9
                  sb           s7, 249(sp)
                  sw           t0, 215(sp)
                  lb           t1, 86(sp)
                  lhu          s0, 115(sp)
                  lbu          gp, 1(sp)
                  lb           a4, 186(sp)
                  lb           s6, 224(sp)
                  xor          s11, s7, gp
                  xor          a6, a0, tp
                  srli         s1, a5, 7
                  nop
                  or           s10, ra, a7
                  sw           t5, 199(sp)
                  sb           t4, 215(sp)
                  sub          t6, s2, s9
                  lui          gp, 10216
                  lh           t1, 249(sp)
                  sll          s3, s2, a4
                  lbu          a0, 100(sp)
                  sb           a2, 190(sp)
                  lb           t4, 230(sp)
                  sh           t3, -1(sp)
                  sltiu        s8, t3, 843
                  lb           t2, 56(sp)
                  lh           s1, 209(sp) #end riscv_load_store_rand_instr_stream_1
                  nop
692:              andi         tp, s1, 1120
                  addi         t4, a2, -254
                  beq          a0, zero, 703f
                  slti         zero, t0, -1421
                  srli         a4, t0, 3
                  andi         s11, t4, 1742
                  bne          s4, s7, 699f
699:              blt          t0, t3, 717f
                  srl          a0, a1, s1
701:              srai         s4, s8, 24
                  slli         ra, gp, 4
703:              sub          s11, a7, s10
                  bgeu         s5, tp, 709f
                  addi         tp, tp, 642
                  sra          a0, tp, sp
                  sra          s6, s11, a2
                  bltu         zero, s10, 711f
709:              auipc        t6, 551221
                  beq          s7, a4, 724f
711:              sub          s10, t0, gp
                  bne          s5, s5, 724f
                  beq          a5, t5, 722f
                  lui          t1, 324860
                  sub          a0, t4, t3
                  ori          a4, s2, -9
717:              srli         a4, t3, 2
                  sra          t4, s6, s9
                  xori         s7, s10, -908
                  and          s4, a7, s11
                  sub          t3, sp, ra
722:              or           s4, t5, s0
                  auipc        s9, 562956
724:              slti         a1, t4, 1516
                  bge          t6, a2, 734f
                  slt          s3, a4, a6
                  sub          s10, zero, t5
                  bltu         a2, a3, 741f
                  beq          a7, gp, 737f
                  auipc        t6, 235294
                  slti         a7, t0, 293
                  slli         t2, s8, 2
                  xori         s7, s0, -717
734:              srli         t4, t2, 5
                  lui          a1, 73865
                  bgeu         gp, s4, 748f
737:              slti         s5, s9, -1608
                  bne          s1, t0, 758f
                  lui          s7, 863961
                  bltu         s11, s5, 749f
741:              sll          s10, ra, a2
                  auipc        t0, 2884
                  nop
                  sra          zero, s7, zero
                  bltu         a2, s0, 752f
                  srl          a1, t0, tp
                  bne          t1, s11, 765f
748:              bltu         s9, s10, 758f
749:              and          s11, t5, s2
                  addi         s0, t3, 99
                  addi         ra, ra, -717
752:              sltu         t4, tp, s9
                  sltiu        t6, t0, 1216
                  bne          sp, a6, 774f
                  blt          s10, t2, 757f
                  bgeu         s8, a1, 773f
757:              slti         tp, s10, -1011
758:              addi         t0, t5, 89
                  xori         s1, gp, 51
                  bne          t6, sp, 780f
                  sll          s11, sp, a3
                  slti         t3, s5, -1704
                  srli         s2, a3, 30
                  sltiu        zero, s2, 1085
765:              bge          t5, sp, 766f
766:              bltu         s11, s0, 784f
                  sltu         t2, a7, a2
                  bne          t2, a1, 777f
                  ori          s4, s11, -890
                  beq          s4, a6, 780f
                  sll          s11, s0, t2
                  slt          s4, a7, t6
773:              bgeu         t0, t2, 793f
774:              addi         t2, s7, 879
                  sltiu        ra, t5, 1161
                  bltu         s6, s8, 789f
777:              auipc        tp, 842104
                  ori          s0, s2, -1130
                  bne          t3, s8, 782f
780:              bne          s8, a5, 789f
                  xor          s9, s3, s0
782:              auipc        s7, 273934
                  and          s11, t0, ra
784:              bltu         a1, a1, 785f
785:              sub          gp, s11, s9
                  ori          sp, gp, -1849
                  auipc        s11, 259793
                  slli         t1, a1, 23
789:              bltu         zero, a0, 803f
                  auipc        t0, 135914
                  add          a4, zero, a1
                  andi         s3, s5, -1595
793:              sltiu        s8, t6, -41
                  bgeu         s4, t4, 798f
                  or           tp, s11, s1
                  bne          t1, s9, 804f
                  sll          a7, a0, tp
798:              sll          a7, t2, s6
                  slli         s2, a7, 11
                  slt          s10, s5, s11
                  lui          tp, 894499
                  andi         s9, tp, 1148
803:              slli         ra, s7, 9
804:              blt          a2, s0, 824f
                  andi         s7, s11, 717
                  and          s7, a5, a7
                  lui          s5, 1032163
                  slti         s4, a0, 172
                  bgeu         s7, a5, 816f
                  blt          tp, s7, 821f
                  add          s7, a3, t4
                  sltiu        s0, sp, -4
                  sub          s5, s10, s9
                  xor          t1, t0, gp
                  andi         s7, s5, 695
816:              srli         s0, s5, 28
                  or           s3, a0, t1
                  bge          a3, ra, 836f
                  srl          s1, s7, a3
                  srl          s10, s0, s10
821:              andi         a1, t2, 1436
                  or           s1, a0, s11
                  sltu         t3, a0, s10
824:              blt          t5, s11, 826f
                  srai         sp, s6, 8
826:              sltiu        a7, a6, -247
                  addi         s1, s10, -441
                  srli         sp, s11, 18
                  nop
                  srl          a7, t6, a1
                  la           a2, region_0+1951 #start riscv_load_store_rand_instr_stream_4
                  sb           a0, -348(a2)
                  slt          s4, t6, a0
                  sltu         s9, s5, s3
                  sra          tp, t4, s1
                  lbu          s0, -1938(a2)
                  xori         s1, s4, -823
                  lui          t0, 391310
                  sra          t3, gp, a3
                  auipc        sp, 507242
                  lh           tp, -115(a2)
                  lbu          s11, -140(a2)
                  lb           t6, -1106(a2)
                  andi         a4, a7, 670
                  slt          s7, t5, s6
                  srai         s1, s8, 12
                  andi         tp, s8, 652
                  lbu          t3, -1050(a2)
                  andi         s8, s7, -307
                  nop
                  lh           s5, -1057(a2)
                  sb           a5, -1590(a2)
                  slti         s11, t5, -1172
                  sltu         tp, a3, gp
                  or           t0, gp, a3
                  sh           s2, -1513(a2)
                  srl          s9, s4, s7
                  addi         s1, a2, -1166
                  lh           s6, -1283(a2)
                  lb           tp, -101(a2)
                  sltu         s5, s7, sp
                  srli         t4, t5, 16
                  srl          t0, a6, a6
                  nop
                  slli         t4, s2, 28
                  sb           s5, -748(a2)
                  lb           s2, -260(a2)
                  add          a6, t2, a0
                  lui          t6, 222909
                  addi         s3, zero, -1155
                  sub          a1, s9, t0
                  lh           s9, -493(a2) #end riscv_load_store_rand_instr_stream_4
                  blt          sp, s7, 841f
                  bge          zero, a2, 845f
                  srai         s1, s5, 29
                  xor          s8, ra, zero
                  and          s9, s3, a3
836:              lui          s7, 960211
                  bgeu         a2, a6, 856f
                  slt          zero, gp, s3
                  blt          s3, sp, 848f
                  sll          s9, a0, s7
841:              blt          s10, a7, 846f
                  slti         a0, t1, 510
                  bne          s1, s10, 855f
                  bgeu         zero, t2, 861f
845:              bgeu         s0, t4, 857f
846:              bne          s11, t4, 866f
                  lui          t1, 30036
848:              ori          gp, t3, -788
                  srai         s4, s2, 22
                  beq          s11, a4, 859f
                  sra          t0, s0, s3
                  slt          s11, t3, t2
                  nop
                  bltu         gp, ra, 866f
855:              srli         a4, sp, 16
856:              beq          sp, t4, 869f
857:              andi         a2, t1, 1810
                  sll          t6, t4, t0
859:              addi         a4, ra, 1237
                  beq          s4, t0, 861f
861:              bne          a5, t3, 862f
862:              slt          tp, s7, zero
                  bge          t3, t2, 872f
                  bge          a0, t2, 877f
                  srai         ra, t4, 0
866:              add          s2, s4, tp
                  bgeu         tp, sp, 880f
                  auipc        t2, 343683
869:              andi         s10, t6, -440
                  slt          a6, t5, s9
                  srli         s0, s6, 19
872:              or           s9, a6, a0
                  bgeu         t4, s8, 890f
                  sltu         s0, s4, s11
                  srai         t4, s8, 1
                  srl          a0, s5, t3
877:              beq          t3, s10, 887f
                  blt          s5, t1, 879f
879:              sra          a2, a5, gp
880:              sll          s1, s10, s9
                  and          a7, a6, sp
                  beq          s8, a3, 892f
                  ori          zero, a4, -477
                  ori          s9, a6, 1310
                  bltu         t2, s3, 897f
                  bne          t5, t5, 889f
887:              bge          gp, a5, 899f
                  andi         a4, s0, 1396
889:              sltiu        s7, s4, 1411
890:              xori         t0, a2, -1386
                  srai         s2, s6, 10
892:              lui          s5, 322963
                  bltu         t1, s8, 902f
                  ori          sp, s11, -1783
                  lui          s3, 345195
                  sltu         zero, s2, s0
897:              xor          s2, tp, s7
                  blt          t1, s5, 910f
899:              srli         s9, a7, 9
                  slli         zero, t4, 18
                  and          s6, t2, s7
902:              srai         a1, t5, 12
                  slt          tp, s6, a0
                  srai         t4, a3, 16
                  srli         s1, s9, 6
                  auipc        s8, 90621
                  sub          t4, s9, t6
                  nop
                  add          a7, zero, s7
910:              beq          a6, a7, 911f
911:              slti         a0, a3, -308
                  slti         s2, sp, 344
                  bgeu         t0, s3, 922f
                  sra          s11, s9, s10
                  bge          a6, t5, 922f
                  sra          s9, t0, t2
                  slt          s2, t3, a1
                  beq          a5, t4, 938f
                  bgeu         s0, s6, 930f
                  andi         a0, s7, -1327
                  xor          t1, t3, a4
922:              andi         zero, s8, 1634
                  srli         t3, tp, 4
                  srai         t2, sp, 17
                  bne          s11, a4, 933f
                  slli         s7, a3, 14
                  or           s1, t5, sp
                  sub          a4, tp, t4
                  bne          a6, gp, 947f
930:              xori         s9, gp, 1014
                  srai         ra, a4, 14
                  ori          a6, a4, -326
933:              slti         s9, a0, 1397
                  sltu         a4, t5, s3
                  bltu         t0, t0, 948f
                  sltu         s0, zero, s6
                  sltiu        tp, t1, 59
938:              sub          s7, a2, s4
                  and          s7, t4, zero
                  sll          a1, tp, t6
                  nop
                  sra          a0, a6, zero
                  and          sp, a7, s8
                  sll          s6, tp, a0
                  sub          s0, sp, s7
                  xori         gp, gp, 1582
947:              blt          a3, s7, 961f
948:              xor          s5, tp, ra
                  xori         s0, s2, 1374
                  sltiu        t0, sp, 1780
                  nop
                  ori          s9, t1, 1584
                  sub          t1, tp, s4
                  nop
                  sll          zero, a4, gp
                  lui          t4, 575740
                  slt          s7, a6, s6
                  add          s2, s2, t3
                  bge          zero, a7, 977f
                  nop
961:              srl          a7, t2, t2
                  srli         ra, gp, 6
                  addi         a0, tp, -632
                  bge          t4, a3, 969f
                  nop
                  bne          gp, t5, 986f
                  slti         a1, a2, -612
                  auipc        ra, 825089
969:              nop
                  srai         a7, s9, 21
                  srli         a7, s2, 3
                  bne          a3, sp, 991f
                  bge          s1, ra, 975f
                  bltu         t1, s7, 978f
975:              sltu         s3, t0, t1
                  sub          s6, ra, ra
977:              add          s7, t5, s1
978:              andi         s0, sp, 35
                  slli         a6, a7, 31
                  slt          s7, a0, t1
                  blt          s1, a3, 1001f
                  xor          s3, s2, s4
                  bne          a2, zero, 992f
                  add          t3, s7, s0
                  srai         s3, a1, 17
986:              bge          s11, a7, 996f
                  auipc        s8, 899035
                  sltiu        s4, s6, -1709
                  addi         a1, s0, 716
                  sub          s8, s9, sp
991:              slli         zero, s5, 0
992:              nop
                  xori         s2, s2, 27
                  bne          a5, a2, 1007f
                  srl          s4, t5, s10
996:              bltu         sp, a4, 1001f
                  srli         s3, a3, 30
                  slt          t6, t1, tp
                  bltu         a4, a4, 1006f
                  bgeu         t6, s8, 1009f
1001:             bge          s5, s7, 1010f
                  bne          ra, a6, 1010f
                  srai         s11, a1, 1
                  nop
                  bge          sp, s4, 1006f
1006:             add          s0, t6, a4
1007:             xor          t3, t5, s11
                  lui          s7, 206647
1009:             or           s11, a5, t6
1010:             sltiu        s2, t0, -1794
                  xori         s1, a3, -301
                  srli         zero, ra, 5
                  nop
                  bgeu         ra, t3, 1034f
                  lui          t1, 523131
                  nop
                  sra          s10, a0, s11
                  bltu         a2, zero, 1036f
                  blt          t1, t4, 1020f
1020:             slli         s7, t4, 12
                  sll          a4, s11, t4
                  bne          s2, sp, 1035f
                  lui          t2, 158282
                  andi         s6, t2, -457
                  srli         t4, a7, 11
                  srai         a6, t2, 17
                  bgeu         t5, t3, 1036f
                  addi         a0, zero, -741
                  or           t1, s8, a5
                  nop
                  or           s0, a4, a5
                  bne          sp, a7, 1035f
                  sltu         t2, s10, t3
1034:             sra          a4, a0, t1
1035:             sltiu        s9, a2, -1129
1036:             sltu         gp, s2, s8
                  bgeu         zero, s2, 1056f
                  xor          gp, s9, s3
                  slti         t2, ra, 1009
                  sll          a1, t2, s2
                  srai         t2, s1, 22
                  blt          s7, t1, 1054f
                  xori         tp, s3, 1113
                  xor          s2, s8, a5
                  bne          s4, s4, 1055f
                  or           t0, s0, zero
                  slti         zero, t2, -920
                  blt          t4, a2, 1061f
                  slt          s8, s8, a7
                  slt          s0, a7, tp
                  sub          a4, s9, a2
                  addi         a4, s11, -1728
                  bne          s8, s11, 1054f
1054:             bne          t1, t5, 1074f
1055:             auipc        t6, 541535
1056:             sub          a4, sp, tp
                  auipc        s4, 364950
                  bltu         s6, s8, 1070f
                  and          a2, s2, t2
                  xori         zero, t4, 369
1061:             sll          t1, t3, s0
                  sltu         t3, s6, a2
                  bge          a7, s10, 1074f
                  sub          s3, t4, t1
                  xori         sp, t5, 1077
                  addi         sp, t4, 920
                  srl          t6, a7, t5
                  srai         s10, a5, 9
                  srli         t0, t4, 2
1070:             bge          s7, a2, 1074f
                  srai         s0, t1, 27
                  bge          gp, s7, 1092f
                  blt          ra, t0, 1090f
1074:             and          s10, t2, s6
                  bgeu         zero, s4, 1089f
                  srai         sp, a7, 9
                  beq          tp, t0, 1079f
                  la           t0, region_0+675 #start riscv_load_store_rand_instr_stream_7
                  sll          s6, ra, t0
                  auipc        s5, 925234
                  lbu          t1, -112(t0)
                  nop
                  lh           t6, 141(t0)
                  lb           t3, -170(t0)
                  xori         s9, a6, -209
                  xori         s8, t6, 1002
                  srai         sp, tp, 0
                  lw           a6, 49(t0)
                  lhu          t3, -155(t0)
                  nop
                  lbu          s5, -74(t0)
                  lh           s3, -21(t0)
                  sra          s4, a4, t2
                  lh           s6, 103(t0)
                  sltiu        zero, t0, -1719
                  lbu          t2, -25(t0)
                  sb           s6, 124(t0)
                  sub          t3, s8, t4
                  sh           t2, -149(t0)
                  sltu         s7, s1, zero
                  or           a2, a0, t4
                  or           s2, a2, s7
                  lb           s2, 253(t0)
                  xor          zero, t5, s7
                  sb           a0, 203(t0)
                  sb           s4, 36(t0)
                  auipc        tp, 534538
                  srai         s2, s5, 30
                  srli         a4, t4, 9
                  srl          t2, s10, zero
                  lhu          t2, 65(t0)
                  sub          a4, a6, zero
                  sb           a6, -156(t0)
                  lbu          s5, -200(t0)
                  lbu          s10, 88(t0)
                  lb           s3, -165(t0)
                  ori          t3, a4, 1555
                  or           s5, t4, a7
                  sb           t2, -176(t0)
                  andi         s11, s2, 109
                  sltu         ra, sp, a7
                  srai         s6, s2, 19
                  addi         s7, t1, 179
                  xor          s2, s9, s11
                  sra          t6, a6, a5
                  lui          s6, 366290
                  slli         a0, sp, 24
                  lhu          s10, -119(t0) #end riscv_load_store_rand_instr_stream_7
                  andi         t0, a7, -1956
1079:             auipc        a1, 1024145
                  or           s10, t1, a5
                  slli         t4, s8, 19
                  sll          s11, s8, ra
                  sltiu        t4, s1, -1820
                  sltiu        s2, s6, -1899
                  bge          s11, t6, 1094f
                  srl          a1, s10, s3
                  bne          t1, s3, 1105f
                  lui          t4, 25473
1089:             blt          t0, s6, 1101f
1090:             slti         s3, zero, 1591
                  xor          t0, t5, s11
1092:             sra          s2, s1, a6
                  sra          ra, zero, t0
1094:             addi         s9, t4, 114
                  slti         tp, t2, 1454
                  andi         s0, t4, -1720
                  blt          t5, a7, 1116f
                  bgeu         s5, t6, 1110f
                  sltiu        s6, tp, 737
                  nop
1101:             nop
                  and          s8, s5, s8
                  srai         a4, a1, 28
                  slti         s3, a2, 1066
1105:             srli         tp, a7, 4
                  sltu         t3, s0, a7
                  xori         a6, t5, -438
                  add          sp, t1, a1
                  xor          s7, t5, s4
1110:             slt          t2, sp, t6
                  sll          t2, t0, a4
                  sra          a1, a4, s5
                  bge          zero, t1, 1126f
                  bgeu         a1, s7, 1134f
                  and          t6, s6, s11
1116:             lui          t2, 218424
                  sra          s4, a2, a6
                  xor          s9, gp, t0
                  srl          t0, t2, t1
                  or           s1, zero, a3
                  sltu         s9, t3, s11
                  sltu         sp, t2, s3
                  slt          tp, t1, t2
                  bne          s11, t1, 1125f
1125:             srai         s8, s10, 8
1126:             ori          a0, a2, 503
                  ori          t0, a3, -622
                  slt          ra, s2, t3
                  or           s1, s9, s0
                  bge          s8, t3, 1142f
                  sll          sp, s8, a0
                  srli         t4, s2, 28
                  sll          s7, s9, t3
1134:             srl          sp, t2, t5
                  xori         a1, a0, 1972
                  add          a1, t5, a4
                  lui          s6, 979688
                  sltiu        s7, s5, 1200
                  addi         gp, s3, -993
                  sub          s6, t4, s9
                  or           s1, gp, t4
1142:             xori         t2, t0, -1024
                  and          tp, a6, t1
                  sltiu        s7, a6, 197
                  and          gp, s11, tp
                  nop
                  sll          t1, a2, t0
                  xor          s5, s7, t3
                  slt          tp, a6, t4
                  and          a4, a6, a3
                  sltu         s4, a6, s5
                  blt          s9, s5, 1157f
                  slli         t3, s3, 24
                  srai         a1, s9, 1
                  sltu         zero, t2, s0
                  slli         a2, t4, 12
1157:             auipc        ra, 652299
                  addi         a0, a7, -884
                  lui          gp, 785324
                  blt          t0, s10, 1173f
                  xori         t3, t6, -793
                  sub          t3, gp, t5
                  nop
                  sltiu        s11, a3, 1471
                  sll          tp, s5, zero
                  srl          s11, a0, a4
                  srl          s6, a0, s8
                  srli         s6, s0, 15
                  bltu         s9, tp, 1172f
                  sll          a0, t5, a3
                  slt          t4, s5, s7
1172:             sltiu        s11, s8, 1961
1173:             lui          ra, 84634
                  andi         s5, s5, 1151
                  sra          a2, a1, a7
                  srl          s7, s7, ra
                  xor          t0, s2, tp
                  slti         t3, sp, -261
                  srai         t2, t6, 19
                  sltu         a2, gp, zero
                  slti         s3, a0, -1977
                  bltu         gp, s9, 1190f
                  addi         t6, s8, 1385
                  blt          a4, t2, 1201f
                  sub          a4, zero, a3
                  slt          s10, zero, a1
                  sltu         t4, s0, s3
                  and          s2, t6, gp
                  auipc        s9, 192719
1190:             bge          t0, a7, 1202f
                  sll          sp, t5, s9
                  sra          t2, t3, s1
                  slt          a4, s0, s5
                  auipc        ra, 754892
                  sltu         t2, s5, tp
                  sltu         s0, a3, t4
                  nop
                  bltu         s4, s0, 1200f
                  bgeu         s11, s3, 1210f
1200:             xor          s3, t0, s8
1201:             sltiu        s1, a7, -545
1202:             blt          sp, a6, 1203f
1203:             add          s7, s11, a5
                  sub          sp, t4, a4
                  add          s3, s4, t3
                  beq          s4, s8, 1215f
                  auipc        gp, 1027895
                  slt          s5, ra, t0
                  xor          s0, a3, ra
1210:             srl          a0, a5, a5
                  beq          zero, gp, 1231f
                  slti         a1, s10, -20
                  sub          t0, s7, s0
                  or           t3, a2, t4
1215:             auipc        s5, 940241
                  srli         t4, t1, 16
                  srli         s3, zero, 24
                  bgeu         s6, a1, 1219f
1219:             sra          s2, s11, t5
                  sll          s5, t2, ra
                  srli         a1, s6, 3
                  andi         t0, s11, -1337
                  sltu         t0, s3, t1
                  blt          s5, sp, 1228f
                  addi         sp, a3, -842
                  addi         gp, a3, 1130
                  xori         a4, s7, 1306
1228:             xori         ra, s8, 1113
                  slt          s3, sp, s6
                  addi         s7, a1, 1659
1231:             bge          s8, a0, 1240f
                  or           s10, ra, s10
                  sll          s9, gp, s0
                  srl          t2, a5, ra
                  ori          s3, a7, -727
                  srai         t1, a6, 21
                  ori          s7, t6, -1421
                  slt          a4, s2, sp
                  beq          zero, s2, 1249f
1240:             slt          zero, s2, t5
                  add          a1, s7, a5
                  srai         sp, s1, 23
                  slti         s4, a3, 1096
                  bgeu         t5, s2, 1254f
                  srli         a1, a0, 5
                  sub          s4, zero, s0
                  bge          a2, a5, 1265f
                  srl          t1, s8, s7
1249:             sra          s8, sp, a1
                  srai         s1, zero, 3
                  add          s8, t1, t3
                  bne          a0, t5, 1259f
                  srl          s1, a0, s10
1254:             andi         s0, s2, 1372
                  or           ra, s0, t1
                  sra          t3, a6, t2
                  bne          t5, t2, 1266f
                  bgeu         a7, s11, 1278f
1259:             auipc        t1, 711146
                  slti         t3, t5, -1149
                  sub          s4, s4, t4
                  auipc        t2, 811538
                  nop
                  srli         tp, t6, 17
1265:             xor          s2, s11, t1
1266:             ori          tp, s7, -123
                  bge          a2, t0, 1281f
                  srli         ra, t1, 24
                  nop
                  add          s6, a3, t5
                  slli         sp, a0, 17
                  bltu         a1, tp, 1285f
                  and          a1, s3, s9
                  srai         a6, t4, 15
                  srai         a7, s7, 10
                  and          a0, t3, tp
                  slli         s1, ra, 10
1278:             srli         t4, t5, 3
                  srai         a6, a5, 20
                  sltu         s10, sp, s2
1281:             srai         s0, zero, 13
                  lui          gp, 23369
                  bgeu         s10, t2, 1301f
                  bge          a3, a1, 1293f
1285:             sltiu        sp, t1, 379
                  beq          a7, a2, 1291f
                  bne          t3, s2, 1290f
                  andi         s7, s0, 1448
                  lui          s11, 714079
1290:             or           t1, s10, t5
1291:             slt          s4, s6, s9
                  sra          s10, s0, t1
1293:             srai         a6, a2, 14
                  sltu         t6, a0, a0
                  sltu         s11, t1, a3
                  slli         s10, a0, 24
                  sll          s8, s3, t5
                  blt          t6, gp, 1311f
                  bne          ra, t1, 1309f
                  lui          s0, 966258
1301:             sll          a7, a0, t2
                  and          s4, s3, a0
                  bge          s6, t4, 1315f
                  xori         s5, sp, 701
                  ori          s0, a6, 1361
                  ori          tp, s7, -1697
                  sltiu        s3, a3, -55
                  andi         s4, a1, -1318
1309:             bge          a0, t3, 1317f
                  sltu         s10, sp, a2
1311:             addi         a2, s10, 1833
                  addi         tp, a5, 361
                  slli         a6, a2, 5
                  beq          s3, tp, 1327f
1315:             add          tp, s5, s1
                  srl          s1, t4, a2
1317:             slli         sp, t5, 0
                  addi         t2, a0, 1867
                  sltu         s2, s3, t5
                  sltiu        s3, a2, -1442
                  bltu         a0, s8, 1331f
                  bltu         s1, s9, 1323f
1323:             srai         t0, s8, 13
                  sub          s4, t5, tp
                  beq          s3, s9, 1344f
                  xor          t0, s10, t1
1327:             bgeu         a1, a3, 1328f
1328:             bne          gp, s6, 1346f
                  sub          gp, t6, s6
                  andi         t2, a3, 1121
1331:             bgeu         s5, s8, 1351f
                  ori          s3, a4, -930
                  xor          s9, ra, a6
                  beq          s9, s10, 1345f
                  bgeu         s4, t6, 1344f
                  bltu         sp, s3, 1348f
                  or           t0, t4, ra
                  srl          a4, ra, s7
                  sll          s7, gp, s0
                  slti         gp, t1, -967
                  bgeu         a5, a0, 1358f
                  or           s6, s1, a1
                  add          a7, s6, t6
1344:             sll          s0, t3, s5
1345:             srli         a0, a5, 1
1346:             addi         t4, t5, -1345
                  bltu         ra, a7, 1354f
1348:             or           t2, s4, t1
                  blt          s7, s10, 1350f
1350:             srl          s6, a5, gp
1351:             nop
                  bltu         s1, t3, 1361f
                  auipc        s0, 190173
1354:             auipc        ra, 204498
                  slti         s4, sp, 637
                  slt          t6, t2, t5
                  slt          s5, ra, a6
1358:             bge          zero, ra, 1378f
                  sltu         s3, s11, s9
                  srli         t0, a2, 17
1361:             xori         t6, tp, -1666
                  slti         s9, s9, -728
                  bltu         t4, s4, 1365f
                  bge          a0, s3, 1378f
1365:             srl          a6, s11, s10
                  bne          t5, ra, 1379f
                  beq          s3, t4, 1387f
                  add          t1, s5, tp
                  bge          t6, tp, 1373f
                  auipc        a6, 109098
                  sltu         t2, a5, t0
                  srl          t0, a4, sp
1373:             add          s2, s5, a0
                  sltu         sp, s5, s1
                  srl          s4, s3, t1
                  sltu         s8, t1, t3
                  slli         a0, t2, 27
1378:             xori         sp, s8, 888
1379:             slt          s4, s2, s9
                  slli         zero, a6, 13
                  sltiu        s1, s6, 196
                  srai         sp, t1, 16
                  srai         s9, a2, 25
                  sra          s5, t2, s9
                  lui          ra, 4499
                  srai         s1, s1, 10
1387:             sll          t0, a5, ra
                  slli         t4, a6, 14
                  slli         t1, zero, 8
                  xori         s7, t4, -378
                  ori          s4, gp, -1142
                  sll          sp, t5, s5
                  add          t1, s6, t3
                  slli         s8, s4, 12
                  sub          s8, tp, s4
                  sub          a6, a7, s7
                  addi         s1, a4, 1303
                  lui          a1, 264888
                  slt          s2, s11, s3
                  or           tp, s3, s8
                  andi         zero, t5, -1165
                  xori         s2, s9, -1160
                  and          s3, t0, s3
                  beq          s0, s9, 1413f
                  addi         ra, a6, -1850
                  sra          t2, a0, a5
                  sra          s7, s4, s5
                  and          s10, s4, gp
                  bgeu         s6, t5, 1427f
                  sub          gp, s7, a7
                  lui          a1, 730851
                  bge          t1, a6, 1421f
1413:             ori          t6, zero, -437
                  ori          t0, t4, 657
                  blt          a1, zero, 1427f
                  nop
                  srli         zero, ra, 12
                  beq          a2, t5, 1430f
                  srl          a4, a7, t4
                  addi         s7, a3, -1069
1421:             addi         a6, a1, -340
                  sub          s10, s3, tp
                  blt          sp, t1, 1431f
                  lui          ra, 191847
                  bgeu         s6, a4, 1439f
                  addi         a4, s5, -870
1427:             slt          t3, s5, t0
                  beq          a4, zero, 1438f
                  slli         t4, s4, 4
1430:             sra          s1, s3, a2
1431:             sub          ra, t5, t4
                  beq          s6, t6, 1452f
                  bltu         t3, t1, 1442f
                  or           t0, a6, s4
                  slti         s2, s3, -1359
                  sltu         s3, a1, tp
                  sub          sp, a4, s6
1438:             sub          zero, s2, a2
1439:             bltu         s7, a0, 1448f
                  sra          t1, s1, t5
                  xori         s5, ra, -257
1442:             beq          a1, gp, 1446f
                  sll          s2, t0, gp
                  nop
                  sll          t2, a3, a6
1446:             bgeu         t5, a6, 1459f
                  bge          a2, a3, 1454f
1448:             bltu         gp, s4, 1460f
                  xori         t4, s2, 443
                  andi         t1, sp, -1235
                  bge          s1, s2, 1452f
1452:             blt          a2, t5, 1463f
                  srli         t6, t3, 30
1454:             bgeu         s9, a2, 1455f
1455:             sltiu        s4, s3, 787
                  beq          a1, s8, 1459f
                  srli         a4, a1, 11
                  bgeu         a2, t5, 1477f
1459:             sltu         s7, s5, s6
1460:             lui          t1, 574941
                  la           sp, region_0+379 #start riscv_load_store_rand_instr_stream_10
                  lb           a4, -86(sp)
                  lh           s1, 169(sp)
                  xor          ra, t2, tp
                  sra          gp, tp, s1
                  sll          s11, a4, ra
                  sltu         tp, t2, s5
                  lb           s4, -182(sp)
                  nop
                  srl          s0, a3, s11
                  sb           s0, 6(sp)
                  xor          ra, s1, tp
                  lhu          s11, 155(sp)
                  slti         s4, s7, -1525
                  andi         tp, t0, 126
                  sb           s5, -22(sp)
                  and          ra, a7, t6
                  lhu          t1, 83(sp)
                  srl          s3, s0, s7
                  slt          zero, a7, gp
                  lb           s10, -34(sp)
                  lb           t1, -84(sp)
                  lbu          s8, -14(sp)
                  auipc        s10, 166440
                  andi         s9, t1, -494
                  sb           a7, -94(sp)
                  srl          s6, s7, s11
                  lb           t2, 142(sp)
                  lb           zero, -92(sp)
                  lbu          tp, -138(sp)
                  andi         s1, t0, 1593
                  lui          s3, 58912
                  andi         tp, s1, -657
                  sh           s2, 119(sp)
                  sb           s8, -8(sp) #end riscv_load_store_rand_instr_stream_10
                  bgeu         s7, a3, 1474f
                  beq          s0, tp, 1464f
1463:             slt          a6, a7, s4
1464:             xor          s11, ra, ra
                  addi         s11, a0, 1581
                  srai         t4, t2, 4
                  lui          a2, 991483
                  srai         a2, s1, 4
                  blt          tp, a3, 1482f
                  bne          s10, s2, 1482f
                  and          s4, s0, t0
                  srli         a7, t3, 12
                  nop
1474:             srli         s7, a2, 28
                  sltu         a0, a1, s7
                  bne          t3, t3, 1485f
1477:             blt          gp, ra, 1478f
1478:             add          s1, s2, s10
                  sra          a1, s7, s4
                  sltiu        s2, a2, -690
                  sub          tp, a4, s0
1482:             srai         s2, s8, 16
                  xori         t6, s10, -713
                  bge          s0, s8, 1501f
1485:             auipc        t6, 703681
                  sub          s3, s2, a6
                  slti         s2, a7, 386
                  srli         s4, s8, 15
                  blt          s7, t0, 1509f
                  xor          sp, s0, zero
                  nop
                  sltu         s3, s3, a3
                  sll          sp, a0, s6
                  xor          t3, s5, a2
                  bltu         s5, t3, 1513f
                  slli         s7, t0, 9
                  slt          s7, tp, a2
                  bltu         a5, ra, 1503f
                  bne          zero, s8, 1509f
                  sltu         s0, t0, s10
1501:             slt          s7, gp, s8
                  nop
1503:             slt          t6, t5, gp
                  bgeu         t3, t5, 1513f
                  bgeu         t1, tp, 1525f
                  sltu         sp, s8, a2
                  sll          s5, s2, s0
                  xor          a1, s10, zero
1509:             slt          a1, t0, sp
                  beq          t0, s8, 1528f
                  and          s8, a4, s5
                  andi         tp, a7, -1003
1513:             bltu         s0, s6, 1532f
                  blt          a1, s0, 1525f
                  xor          t2, s4, s7
                  lui          t4, 603958
                  slli         a1, zero, 3
                  srli         tp, t6, 22
                  srai         s11, s2, 22
                  bne          s7, ra, 1538f
                  slt          s7, s5, s8
                  or           zero, a1, tp
                  sub          a7, t5, s0
                  sll          t0, a3, s4
1525:             srli         s4, t4, 31
                  sll          a0, a5, gp
                  and          s3, sp, s1
1528:             sra          ra, tp, t6
                  bge          t4, t3, 1538f
                  ori          s1, s0, -1294
                  xor          s3, s6, s10
1532:             nop
                  nop
                  addi         s9, sp, 1133
                  sltiu        t6, s9, -1741
                  nop
                  slt          s4, t3, t5
1538:             slli         t0, a0, 3
                  xori         t1, a6, -185
                  bgeu         t2, t0, 1552f
                  bge          s8, a0, 1542f
1542:             sltu         s7, s5, s5
                  slli         gp, a2, 31
                  srl          tp, s4, sp
                  add          s10, t2, t5
                  sltu         s8, t4, t4
                  lui          s2, 192876
                  sll          t2, t1, t0
                  bltu         s8, sp, 1569f
                  bgeu         t4, s4, 1567f
                  sub          a7, ra, ra
1552:             sra          t6, a1, a6
                  bltu         s1, a7, 1561f
                  blt          a4, a6, 1563f
                  addi         s7, a2, -1831
                  bgeu         gp, t4, 1569f
                  blt          s11, ra, 1567f
                  slti         zero, a2, -1529
                  sll          tp, s6, t5
                  or           s8, gp, t5
1561:             andi         t0, t5, 1448
                  bgeu         s0, a5, 1565f
1563:             srli         a0, s9, 5
                  blt          gp, s4, 1576f
1565:             srli         s7, t2, 21
                  sll          s7, t4, t3
1567:             srli         s5, a7, 31
                  add          s9, s11, t1
1569:             xor          s10, a7, s1
                  srl          t3, s11, s7
                  la           s2, region_1+1774 #start riscv_load_store_rand_instr_stream_12
                  lhu          t3, -40(s2)
                  lh           s6, -56(s2)
                  sll          tp, s5, sp
                  sltu         s11, t4, a6
                  or           s6, a0, a2
                  sltu         t2, s9, t2
                  slt          s0, s2, t1
                  slti         a2, ra, -1827
                  srl          s0, t5, zero
                  sb           a2, -22(s2)
                  andi         t0, a1, 103
                  slli         t3, s4, 28
                  and          t1, t6, a2
                  sll          a4, t4, ra
                  addi         t4, s11, -463
                  lui          t6, 203477
                  xori         s8, a7, 1593
                  lb           s11, 61(s2)
                  sltu         sp, t1, tp
                  lbu          s10, 38(s2)
                  srai         gp, a6, 3
                  sb           s8, 52(s2)
                  slti         t6, s6, -1347
                  lb           s3, 3(s2)
                  and          s7, a2, t4
                  srai         s3, s4, 17
                  srl          s4, s11, ra
                  lui          gp, 670465
                  lbu          gp, 5(s2)
                  add          t1, s11, a4
                  srl          a4, s9, a7
                  slti         s1, t5, 1940
                  slli         a7, s7, 18
                  add          s10, t1, a6
                  srai         s10, a3, 10
                  lbu          t3, -10(s2)
                  lb           sp, -14(s2)
                  lb           t2, 42(s2)
                  sltiu        a0, ra, 1853
                  lb           zero, -15(s2)
                  lhu          a6, -38(s2)
                  slli         ra, a1, 1
                  lb           sp, 53(s2)
                  lhu          t0, -16(s2) #end riscv_load_store_rand_instr_stream_12
                  srli         t6, a0, 8
                  bgeu         s5, a0, 1584f
                  auipc        s10, 835280
                  slli         gp, t4, 16
                  srl          s5, zero, sp
1576:             sll          t3, a1, s7
                  andi         s11, a6, 609
                  xor          s1, ra, s5
                  sltiu        t3, s11, -1399
                  xor          t2, tp, s11
                  xor          t2, a7, a0
                  andi         ra, t0, 1367
                  xor          a4, a6, t3
1584:             srl          gp, a6, s2
                  srai         a1, s8, 11
                  and          a1, ra, zero
                  or           t2, t3, a0
                  xor          a1, s0, s1
                  xori         s8, a0, 746
                  sll          t4, t0, s11
                  slli         a7, a0, 4
                  sltiu        t1, s0, -1081
                  sub          a7, s6, s5
                  or           s0, s2, s2
                  lui          a7, 944888
                  srli         s3, a5, 25
                  srl          t3, t2, a5
                  ori          t4, a5, 28
                  bge          a0, s7, 1601f
                  blt          s4, t2, 1620f
1601:             srl          s2, a3, a5
                  or           s10, s11, s5
                  add          a1, s3, s6
                  bne          a7, s3, 1608f
                  xori         s5, s11, 441
                  addi         t4, a4, -137
                  and          t1, s9, s5
1608:             xori         t2, t5, -895
                  sltu         s5, gp, ra
                  bgeu         sp, a3, 1619f
                  bge          ra, a3, 1629f
                  slli         ra, s1, 29
                  slt          t4, a5, t4
                  auipc        t1, 579714
                  sltu         s2, ra, s5
                  xori         a6, s11, -730
                  blt          sp, a1, 1630f
                  xori         s3, a5, -818
1619:             srli         s3, s3, 9
1620:             sll          a2, s6, t0
                  and          s10, s11, t4
                  xori         gp, s6, 727
                  sub          s2, t3, t6
                  andi         a0, s9, -822
                  slli         t1, ra, 3
                  ori          a2, t3, 480
                  bgeu         t6, s8, 1637f
                  slli         t1, t3, 5
1629:             sltu         s1, s0, a6
1630:             sltiu        a1, t3, -180
                  addi         s3, a5, -1680
                  xori         s8, a3, -1634
                  beq          a2, s0, 1640f
                  bne          a1, zero, 1635f
1635:             sltu         a2, tp, s9
                  nop
1637:             slti         s7, s2, -159
                  xori         t1, a4, -604
                  add          t3, a0, t4
1640:             add          a1, t0, s0
                  ori          t2, a1, 611
                  slli         a4, t4, 22
                  bne          a4, s3, 1657f
                  xori         t6, t2, 403
                  andi         s6, s4, 385
                  sltu         zero, a4, t3
                  sra          t4, s0, t3
                  xori         s5, zero, -829
                  sub          tp, s10, s8
                  ori          gp, ra, 1882
                  sub          s3, s5, t6
                  bge          gp, a3, 1661f
                  andi         t6, t3, 931
                  bgeu         sp, s2, 1667f
                  auipc        s7, 510077
                  auipc        t0, 21114
1657:             lui          s9, 280699
                  sra          a4, s9, a7
                  srli         s8, s9, 22
                  sub          s3, s10, s11
1661:             or           a1, a1, s8
                  and          t2, s9, zero
                  srai         t4, s2, 5
                  sltiu        s9, sp, 2003
                  sra          t1, s5, gp
                  or           sp, a2, s0
1667:             bne          t4, s4, 1687f
                  and          gp, s5, a1
                  and          t2, gp, t5
                  and          t2, s11, s11
                  sltu         s8, ra, s10
                  bgeu         a0, t3, 1677f
                  beq          a7, s9, 1674f
1674:             or           s10, sp, a0
                  sra          s11, s11, a6
                  srli         s8, a6, 11
1677:             ori          s11, s6, 1104
                  srai         a6, s2, 7
                  add          a7, t5, t4
                  and          tp, tp, s5
                  addi         s2, a2, 2044
                  lui          s9, 838358
                  and          a0, s8, t0
                  slli         s2, gp, 10
                  ori          s11, tp, 1665
                  addi         a1, a2, -1401
1687:             sub          a4, t6, gp
                  sra          ra, t0, s11
                  blt          t4, s3, 1702f
                  auipc        a4, 498164
                  ori          t1, s4, -1388
                  nop
                  or           s9, s10, s6
                  sltu         s3, a1, t3
                  or           s7, s4, tp
                  add          tp, t4, s0
                  add          ra, sp, a7
                  ori          a0, s2, 1165
                  auipc        a0, 869082
                  auipc        t1, 59485
                  bltu         t4, gp, 1709f
1702:             sub          gp, s10, a2
                  add          s8, a4, sp
                  auipc        s2, 885167
                  bgeu         t2, a0, 1725f
                  bltu         s5, t6, 1707f
1707:             sll          a2, s7, s2
                  ori          t2, s1, -934
1709:             srli         s5, s1, 26
                  xor          a0, gp, t6
                  slti         s7, s9, -1746
                  addi         a2, s10, 569
                  sra          a6, t0, tp
                  add          s2, a7, s9
                  sltu         a2, s9, sp
                  ori          gp, s5, 1117
                  srl          s1, s6, gp
                  slt          zero, s11, s10
                  ori          zero, s8, 1037
                  beq          s2, a0, 1732f
                  ori          t3, t4, -81
                  slt          a0, zero, a6
                  ori          a2, zero, 667
                  sub          s3, s8, a1
1725:             or           s3, s6, t0
                  sll          a2, a4, gp
                  xor          a6, a2, t2
                  andi         s9, t2, -1999
                  xori         s6, s0, 183
                  xori         s0, sp, -1300
                  bgeu         ra, a4, 1751f
1732:             xor          t4, s4, zero
                  srl          s2, t5, s1
                  bgeu         s3, t4, 1751f
                  sltu         t0, a1, ra
                  andi         a4, gp, 436
                  bne          t1, t6, 1750f
                  or           a2, t0, t5
                  bltu         t5, a0, 1748f
                  xori         t1, t0, -1484
                  xori         zero, a1, -1803
                  slti         a6, s1, 1929
                  xor          s11, s3, t2
                  sll          a7, t2, a2
                  bltu         a5, a0, 1749f
                  sub          s10, t3, ra
                  bge          a7, s0, 1758f
1748:             lui          tp, 525648
1749:             bltu         s1, a7, 1763f
1750:             or           s9, a6, s11
1751:             and          t3, a7, a3
                  blt          gp, a2, 1771f
                  addi         a7, t5, 1663
                  xor          s6, sp, s3
                  xori         s8, s2, -1744
                  beq          s11, s0, 1765f
                  sll          s1, s3, a4
1758:             andi         s3, a0, -364
                  ori          s3, s4, -507
                  xori         s8, a2, 81
                  slti         s8, s9, 1891
                  slli         s0, s11, 18
1763:             srai         t0, s11, 27
                  bne          sp, s1, 1776f
1765:             blt          a6, s9, 1767f
                  sltiu        s6, s7, -1549
1767:             bne          s6, gp, 1772f
                  andi         tp, t3, -1980
                  sltiu        a7, s7, -1943
                  and          zero, ra, zero
1771:             srl          s5, tp, t3
1772:             and          t3, s0, a0
                  srai         t4, s0, 1
                  or           a7, t2, t5
                  ori          t4, a1, 740
1776:             bgeu         t4, a6, 1786f
                  srai         sp, s8, 7
                  or           t0, a5, s4
                  auipc        ra, 1010345
                  srai         a1, tp, 21
                  auipc        s0, 819887
                  addi         s7, ra, 2015
                  sll          t1, a1, a4
                  bne          a3, sp, 1797f
                  blt          a5, ra, 1792f
1786:             beq          s2, a0, 1789f
                  or           a1, tp, tp
                  bne          t6, s5, 1789f
1789:             nop
                  addi         t1, s3, 911
                  sra          s8, s0, a5
1792:             srl          s8, s10, s1
                  slli         t2, ra, 20
                  bltu         t0, zero, 1809f
                  slti         a0, a3, -1922
                  srl          zero, s8, gp
1797:             ori          ra, s6, 946
                  auipc        a1, 550206
                  sub          s10, a0, s0
                  xori         a4, s11, -790
                  or           s6, s4, a0
                  beq          ra, a0, 1809f
                  bgeu         s9, gp, 1809f
                  srl          a0, s4, s11
                  or           ra, a6, s10
                  sltiu        zero, t4, 2004
                  slli         a4, s11, 24
                  slti         s1, s5, 790
1809:             and          tp, s0, a7
                  slti         s10, zero, -369
                  add          t3, sp, s4
                  ori          a1, s1, -150
                  sltiu        ra, gp, 84
                  lw           tp, 4(a5)
                  srai         s1, t0, 16
                  auipc        a1, 891983
                  addi         a5, a5, 20
                  lui          s11, 287887
                  sltu         gp, s3, s6
2382:             addi x24, x4, 1
2382:             jalr x24, x24, 0
sub_7:            nop
                  ori          a4, a1, 1361
                  addi         a5, a5, -36
                  sw           tp, 4(a5)
                  or           a6, t6, t2
                  slti         t0, a7, -1645
                  srli         s1, s5, 25
                  andi         a4, sp, 1676
                  xor          t2, t1, t2
                  la           s4, region_1+835 #start riscv_load_store_rand_instr_stream_0
                  sra          gp, gp, ra
                  lbu          t2, -7(s4)
                  add          a1, s4, a3
                  sltiu        a1, t0, 52
                  sh           a6, -7(s4)
                  andi         s11, t5, -694
                  addi         ra, a3, 1449
                  lb           a2, -16(s4)
                  srai         zero, t6, 19
                  sb           a5, 4(s4)
                  lbu          t0, -4(s4)
                  sub          s5, gp, s10
                  lb           s7, -10(s4)
                  sltiu        t1, zero, -1735
                  sltu         a2, s3, s10
                  sb           s1, 2(s4)
                  sb           a1, -2(s4)
                  sb           t2, 4(s4)
                  srai         s10, a2, 18
                  ori          a4, gp, 1292
                  lb           t6, 0(s4)
                  lb           t0, -14(s4)
                  sh           zero, 13(s4)
                  xor          s10, a2, a7
                  lb           s9, 10(s4)
                  andi         zero, t6, -219
                  sltu         s6, a6, t5
                  sll          a0, a1, s1
                  lb           a0, 11(s4)
                  and          a0, t2, zero
                  sb           t0, 2(s4)
                  lw           s9, 1(s4)
                  lb           tp, 2(s4)
                  auipc        tp, 926210
                  lb           s9, -12(s4)
                  andi         t1, s6, -1252
                  sra          t0, a1, a5
                  srai         sp, t3, 17
                  slli         s7, a7, 30
                  ori          s8, s11, 280
                  lbu          zero, -14(s4)
                  lbu          a0, -5(s4)
                  lbu          zero, -7(s4)
                  lb           t6, 13(s4)
                  add          t6, s7, a5
                  slti         a4, s2, 168
                  lb           s2, -4(s4)
                  lbu          a1, -13(s4)
                  lbu          gp, -3(s4) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_1+112 #start riscv_load_store_rand_instr_stream_1
                  lbu          tp, 63(a7)
                  sltu         t0, s4, s0
                  srli         gp, s6, 29
                  sb           t6, 71(a7)
                  sb           s2, -14(a7)
                  lui          t4, 555795
                  lb           s3, 105(a7)
                  sb           a1, -82(a7)
                  sw           gp, 212(a7)
                  sll          t1, a4, tp
                  slti         tp, s6, 1683
                  slti         a2, s2, -813
                  lbu          s1, -93(a7)
                  sub          a4, sp, t4
                  nop
                  lb           s6, 85(a7)
                  lb           t3, 204(a7)
                  lb           s10, 15(a7)
                  nop
                  lbu          t4, 66(a7)
                  add          a2, gp, s5
                  slt          s9, t6, a6
                  sw           s6, -20(a7)
                  lbu          s11, 11(a7)
                  lui          s1, 153070
                  sh           s11, -52(a7)
                  ori          t1, s1, 1938
                  slti         s7, s2, -892
                  lb           t2, -1(a7)
                  sb           zero, -77(a7)
                  sll          s4, a6, s7
                  sb           s0, 71(a7) #end riscv_load_store_rand_instr_stream_1
                  srl          t6, s11, s2
                  andi         s5, s1, 901
                  addi         s8, s9, -1240
                  sll          s5, a1, ra
                  add          a2, t0, t6
                  blt          s11, a0, 12f
                  sltiu        a0, t5, 1030
                  sll          s0, sp, s7
                  srli         s4, s11, 24
                  addi         s5, a4, 1635
                  xor          t0, t1, a6
                  sltu         t1, a1, s10
12:               bgeu         t3, a2, 24f
                  bge          a5, t1, 23f
                  and          t4, s0, t5
                  andi         s4, a0, -493
                  sltiu        s5, tp, 1909
                  slt          s2, t5, s3
                  blt          s6, s4, 34f
                  sltu         t4, sp, t4
                  slt          s4, a7, t6
                  add          a7, s4, s8
                  xor          s7, gp, a3
23:               bgeu         t5, s1, 36f
24:               sub          a7, s9, t4
                  sra          s5, s2, a7
                  and          s2, a7, s4
                  lui          s8, 764146
                  sltiu        t0, t1, -1102
                  sub          s3, zero, tp
                  slti         a2, s7, 268
                  bge          s0, a1, 35f
                  and          s10, t5, a4
                  srai         s5, t5, 26
34:               nop
35:               sll          s10, a7, s0
36:               srli         tp, s6, 6
                  srl          t1, t6, tp
                  add          zero, sp, a2
                  addi         t0, t5, 984
                  slti         s2, s5, -691
                  and          tp, ra, s8
                  andi         a4, sp, 433
                  bne          s0, a3, 47f
                  lui          t1, 885947
                  bltu         s9, t3, 61f
                  slli         s1, t5, 4
47:               bltu         s9, a7, 53f
                  srl          a2, a1, gp
                  slt          t4, zero, s9
                  sll          s10, zero, a1
                  sltu         a6, s8, a3
                  bltu         s3, s5, 67f
53:               add          gp, s8, s1
                  addi         s1, t3, 252
                  beq          s6, t6, 63f
                  slti         s11, tp, 1655
                  bltu         t2, t0, 72f
                  beq          s6, s11, 67f
                  xori         gp, s8, -1916
                  sll          s2, t6, s9
61:               sltu         a4, s0, s9
                  or           t3, sp, s0
63:               add          t6, a1, s0
                  add          t3, t1, t5
                  slli         a4, ra, 23
                  addi         t1, s11, -742
67:               blt          s3, t0, 77f
                  beq          gp, s4, 81f
                  add          gp, t0, s8
                  sll          zero, s8, zero
                  sltu         s5, s5, s2
72:               sra          t4, s9, a6
                  xori         s1, sp, -734
                  andi         s3, a2, 96
                  andi         ra, s9, 1979
                  sll          sp, s9, a1
77:               sltu         s10, gp, t6
                  addi         t6, a3, 1820
                  bltu         t4, t0, 81f
                  add          t4, t3, t3
81:               add          s3, t4, t1
                  ori          s11, sp, -771
                  sltiu        t1, s3, -614
                  sub          s8, a5, s8
                  slli         t6, a4, 1
                  sltu         a6, s3, s9
                  xor          s1, a5, ra
                  bltu         sp, sp, 91f
                  xor          s8, zero, a1
                  sub          s1, zero, t2
91:               bge          s0, t4, 97f
                  auipc        a7, 514639
                  blt          s0, t1, 113f
                  xori         s10, ra, 590
                  bge          s7, s0, 106f
                  la           sp, region_0+967 #start riscv_load_store_rand_instr_stream_2
                  lbu          s3, -10(sp)
                  sra          a1, sp, s11
                  xori         t0, s1, 1196
                  lb           t6, 3(sp)
                  lh           tp, -7(sp)
                  srl          s11, s4, s9
                  lbu          s7, -8(sp)
                  slti         s4, s5, -1529
                  sub          a7, a3, a6
                  srl          t1, a6, s4
                  addi         a4, a1, -407
                  ori          ra, s11, -1184
                  lbu          a4, -3(sp)
                  and          s7, zero, s11
                  lbu          tp, 8(sp)
                  lbu          t4, 14(sp)
                  add          t2, s10, a4
                  slt          zero, a1, s4
                  sb           s11, -12(sp)
                  lbu          s5, -12(sp)
                  xor          s3, s7, s7
                  nop
                  auipc        s8, 1014048
                  addi         a4, t1, 870
                  addi         a6, s1, 641
                  and          s11, a0, s10
                  sw           a3, -15(sp)
                  xori         s6, s5, -588
                  lh           s10, 5(sp)
                  add          tp, a1, t6
                  lhu          zero, -1(sp)
                  add          a4, sp, s3
                  slli         zero, t1, 12
                  srai         s9, gp, 13
                  sb           s5, 0(sp) #end riscv_load_store_rand_instr_stream_2
                  blt          s10, s0, 102f
97:               sll          s7, a2, a3
                  srl          t1, s2, s3
                  nop
                  srl          zero, a3, s0
                  or           t1, t6, t0
102:              or           t2, s1, t4
                  add          s11, s10, t4
                  bgeu         a5, ra, 117f
                  and          t2, a6, s3
106:              sltiu        a2, t0, -1418
                  sltu         s4, t3, a4
                  srl          s7, s9, t5
                  bge          zero, s10, 126f
                  bgeu         s5, s2, 112f
                  or           a7, a6, s3
112:              sub          a7, s3, t4
113:              bge          s0, a3, 116f
                  sltu         s0, s6, a6
                  slt          a1, t1, a7
116:              sra          a0, tp, t4
117:              auipc        s2, 407238
                  srl          sp, zero, s1
                  sll          t6, a4, ra
                  srl          s5, zero, t2
                  and          s2, s9, sp
                  auipc        s4, 857150
                  beq          tp, tp, 124f
124:              srli         a7, s8, 17
                  srli         t3, s3, 20
126:              srl          zero, s1, t2
                  srai         t0, s3, 5
                  srl          t6, s11, a3
                  slli         s8, a4, 18
                  srai         sp, t6, 6
                  and          s3, a1, s9
                  bge          a4, a2, 134f
                  sltu         t2, s1, t0
134:              blt          t0, t5, 140f
                  and          s3, s4, a4
                  sll          a4, t4, s4
                  or           gp, s8, s4
                  slli         s2, a5, 26
                  slt          tp, s3, a2
140:              andi         ra, t0, -93
                  beq          t3, t4, 156f
                  bge          s2, t0, 155f
                  bne          a1, s3, 156f
                  bge          s8, zero, 157f
                  slli         s6, t3, 22
                  srl          s7, s5, t1
                  sltiu        a6, s8, -640
                  slli         s8, s3, 25
                  slti         tp, s2, -1147
                  sub          s5, s0, s7
                  sub          sp, s4, t6
                  slli         t6, s3, 24
                  xori         s2, s0, -596
                  nop
155:              slt          s4, gp, s5
156:              sltu         a4, zero, s4
157:              bge          gp, a2, 167f
                  sltu         a6, a2, t5
                  slt          a6, t0, ra
                  ori          a0, s3, 1130
                  bne          a6, a7, 177f
                  bltu         t0, sp, 164f
                  sra          t2, s10, s7
164:              slt          s1, s0, t0
                  srai         t0, a2, 7
                  or           s1, zero, t2
167:              or           t0, t2, s7
                  srl          s8, tp, t3
                  and          t3, t3, s1
                  sltiu        t6, a2, 434
                  bne          s4, t2, 178f
                  lui          s8, 354636
                  sub          tp, s9, s4
                  addi         s0, s9, 757
                  srai         zero, s0, 2
                  add          a2, s8, a6
177:              sub          a6, s0, s0
178:              slt          s7, t5, s7
                  bltu         s2, s1, 195f
                  lui          a4, 335072
                  srai         sp, sp, 2
                  and          s6, ra, s8
                  xori         s7, sp, 780
                  lui          a2, 673565
                  bge          s7, a2, 189f
                  bge          a6, t2, 196f
                  slti         t2, t4, 415
                  lui          s1, 30538
189:              sra          a4, s9, a2
                  lui          s8, 587471
                  sll          a2, gp, s11
                  addi         t0, t6, 326
                  sll          a1, s10, t4
                  addi         s7, s9, -516
195:              slti         t0, a4, 1625
196:              sltiu        a2, t1, -22
                  sub          a0, s9, a7
                  xor          s4, a5, t5
                  sub          s1, t2, s0
                  or           s11, t1, s9
                  srl          t1, s3, s0
                  lui          s7, 76437
                  sltu         a2, s1, gp
                  auipc        s0, 136212
                  sltiu        gp, a7, 889
                  xor          t1, s3, a4
                  andi         s3, t0, -1364
                  xori         t2, t2, 1107
                  lui          ra, 97339
                  sll          a0, s6, t3
                  sltu         sp, s0, s4
                  or           a1, t3, s1
                  sra          t4, a3, s11
                  and          t1, s11, a5
                  lui          s10, 49190
                  srai         t4, t4, 8
                  nop
                  srli         s7, a0, 3
                  add          a7, gp, t2
                  or           a7, s5, t1
                  andi         s2, a5, -1906
                  sltiu        a6, s11, 1554
                  xori         t4, zero, 1800
                  sra          t0, t5, t3
                  sll          s3, a2, zero
                  slli         a4, sp, 22
                  sltiu        s5, a7, -697
                  bne          s6, sp, 234f
                  slt          gp, a1, t3
                  xori         t4, s9, 139
                  slli         a0, t4, 28
                  lui          t2, 195514
                  nop
234:              sltiu        s1, a3, -934
                  sra          a4, t5, ra
                  slt          t1, gp, t3
                  sra          s10, a4, s3
                  xori         zero, t5, 275
                  addi         t3, a1, -489
                  sltiu        s2, a6, -1114
                  auipc        zero, 402300
                  srai         a6, s5, 4
                  and          sp, s4, a5
                  addi         t0, a6, -1220
                  bne          t5, s3, 258f
                  and          s5, t5, s10
                  add          s2, s4, a6
                  add          a7, a1, s2
                  slt          tp, s8, t1
                  blt          ra, t6, 265f
                  add          s9, s2, a7
                  addi         s1, a5, 1896
                  blt          a0, a5, 256f
                  bne          sp, t2, 260f
                  bltu         a2, t0, 272f
256:              or           a6, a4, t6
                  bltu         a5, t1, 266f
258:              beq          s11, t6, 266f
                  xori         s4, t4, 1032
260:              sltiu        s8, a1, 1759
                  xori         s9, s6, -446
                  blt          s4, s8, 265f
                  or           a2, s3, tp
                  auipc        s2, 49745
265:              slt          s4, sp, t4
266:              andi         t6, zero, 536
                  slli         t0, t0, 10
                  bltu         s9, t1, 269f
269:              bne          t2, t4, 271f
                  sltu         s9, a5, gp
271:              bne          t5, t0, 284f
272:              addi         t3, a7, -1420
                  addi         a1, t0, 634
                  bge          t4, gp, 289f
                  bgeu         a7, a3, 281f
                  blt          a5, a4, 291f
                  add          t0, gp, a5
                  or           s6, t6, a6
                  ori          t3, s6, 2013
                  andi         a1, s9, -459
281:              srl          a6, s3, t0
                  srl          s9, s4, s9
                  slli         s0, a3, 13
284:              xor          s4, a7, a1
                  lui          s6, 139478
                  andi         s3, s10, 1676
                  xori         s7, s8, -740
                  sra          s1, t6, a7
289:              sub          s7, t0, a2
                  and          a0, t4, s4
291:              blt          gp, a7, 303f
                  sub          tp, s4, s11
                  andi         s10, a4, -39
                  slt          s9, s6, s8
                  beq          t6, zero, 306f
                  sltiu        a6, t6, 616
                  bgeu         s10, sp, 317f
                  srli         s0, t3, 12
                  andi         t1, s9, -767
                  xor          gp, sp, t6
                  srli         t6, s8, 30
                  bltu         t0, s11, 308f
303:              xori         a0, t3, 0
                  xor          s3, t3, t5
                  lui          a4, 251442
306:              ori          a4, t0, 1140
                  xor          s6, zero, s6
308:              sub          s1, ra, sp
                  sltiu        gp, a2, 1389
                  sll          tp, a0, s11
                  slti         a7, zero, 1242
                  srl          s4, a5, gp
                  addi         a4, a4, -111
                  srli         s8, sp, 18
                  sra          s2, s9, a5
                  srl          s9, a2, s6
317:              slti         s3, t2, 418
                  sll          t3, t4, s2
                  beq          t0, t1, 321f
                  xor          s0, s2, s8
321:              add          tp, s2, t0
                  or           s3, a1, s7
                  blt          ra, tp, 327f
                  bne          s6, t4, 328f
                  addi         s6, a5, 190
                  addi         s5, a1, 1001
327:              sub          s3, t2, a1
328:              bge          s8, zero, 330f
                  xori         t1, s10, 620
330:              bne          a0, s6, 343f
                  nop
                  or           t1, ra, s5
                  lui          a1, 42984
                  addi         s3, s11, 1273
                  nop
                  sub          a7, s0, a1
                  addi         gp, s0, -903
                  sra          s7, s7, zero
                  slti         gp, a7, 1985
                  nop
                  beq          t0, tp, 354f
                  srli         t1, s2, 9
343:              slli         a1, a0, 25
                  bne          ra, a6, 347f
                  lui          t3, 268945
                  sub          sp, t0, s4
347:              srai         tp, a5, 25
                  srl          s0, s2, s10
                  sub          s6, t0, tp
                  bge          s3, s4, 351f
351:              xori         a1, s5, 82
                  ori          a7, t2, -819
                  srli         a0, t2, 9
354:              bltu         a6, s2, 371f
                  srl          s4, t4, t2
                  nop
                  slli         a6, t5, 29
                  srli         a6, s1, 15
                  ori          s6, s5, -932
                  and          t0, s2, t5
                  andi         a7, a0, -904
                  or           t6, s1, s0
                  nop
                  xor          sp, a6, s2
                  sub          s5, s3, t0
                  sra          sp, ra, a6
                  beq          a3, s10, 373f
                  xor          a2, sp, gp
                  bge          s5, sp, 382f
                  add          s10, a7, t3
371:              xori         tp, gp, -1048
                  addi         s3, s6, -1016
373:              nop
                  xori         t1, zero, -349
                  ori          a4, a1, -966
                  nop
                  srl          s2, t3, s5
                  add          a0, sp, t3
                  slti         s6, a2, -331
                  ori          ra, tp, 512
                  and          a6, a4, t4
382:              or           s0, t6, s6
                  bltu         a3, a4, 384f
384:              srai         t4, a4, 7
                  lw           tp, 4(a5)
                  ori          t6, t3, -1626
                  nop
                  addi         a5, a5, 36
                  sll          s11, zero, a6
                  slt          a4, gp, t3
519:              addi x17, x4, 1
519:              jalr x17, x17, 0
sub_4:            slti         zero, s8, -1877
                  bltu         a1, a3, sub_4_stack_p
                  srai         s3, a3, 12
sub_4_stack_p:    addi         a5, a5, -40
                  slt          t3, t0, a0
                  xor          s11, s3, a4
                  nop
                  slti         a1, a0, 1129
                  sw           tp, 4(a5)
                  lui          t4, 834433
                  xori         s7, a1, 1561
                  lui          s6, 845783
                  xor          a1, s11, t0
                  la           sp, region_1+1918 #start riscv_load_store_rand_instr_stream_0
                  lb           ra, 13(sp)
                  sltiu        s10, sp, -1352
                  auipc        ra, 182453
                  sb           t5, -15(sp)
                  ori          s8, ra, 863
                  sltu         a0, a6, t4
                  slli         s1, t5, 22
                  ori          s3, gp, 956
                  slti         zero, a1, -1925
                  sltiu        ra, s10, 1726
                  nop
                  sll          t4, a0, a3
                  sw           t6, -10(sp)
                  lw           s11, -14(sp)
                  lb           a1, -14(sp)
                  lhu          a7, 12(sp)
                  sltu         a7, a1, t5
                  sll          s0, sp, s2
                  sltiu        tp, t1, 509
                  or           s6, s5, s6
                  sltiu        s11, t5, -922
                  lb           t0, -5(sp)
                  srai         s9, s2, 9
                  addi         zero, s2, -870
                  lb           s1, -9(sp)
                  srai         zero, s3, 19
                  sb           a6, -14(sp)
                  slli         s4, t1, 22
                  lb           a4, -5(sp)
                  lb           t4, -15(sp)
                  lui          a7, 1015845
                  lb           a1, 11(sp)
                  lui          a2, 73986
                  lb           s5, 14(sp)
                  sb           s4, -1(sp)
                  sltu         s11, s8, t3
                  ori          a7, a6, -1626
                  slti         a1, a2, -371
                  lb           s3, 11(sp)
                  sra          a7, a2, zero
                  sb           s2, -1(sp)
                  lbu          s7, -11(sp)
                  auipc        s9, 309257
                  slti         s9, s7, -1430
                  nop
                  lb           s1, 3(sp)
                  add          zero, t5, sp
                  andi         s6, a5, -1704
                  sb           ra, -9(sp)
                  sb           tp, 15(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1122 #start riscv_load_store_rand_instr_stream_3
                  lbu          s6, 755(sp)
                  lui          s10, 488310
                  sb           s8, 249(sp)
                  lw           s8, 134(sp)
                  lbu          a7, -584(sp)
                  lh           t3, -1114(sp)
                  nop
                  sb           a7, 57(sp)
                  sb           t5, -19(sp)
                  srli         ra, a4, 3
                  sb           s11, 809(sp)
                  and          a1, t3, t2
                  and          t6, a7, s7
                  sw           a3, -34(sp)
                  sb           a6, -912(sp)
                  lbu          s8, 589(sp)
                  lbu          s10, 844(sp)
                  sltiu        gp, t1, -1228
                  sra          a4, s0, a0
                  sltu         s3, s4, s7
                  xor          a1, t0, tp
                  addi         s0, zero, -100
                  sub          a7, s6, s8
                  lbu          t6, -385(sp)
                  xori         s11, a6, -14
                  and          s11, sp, a4
                  sb           t5, -60(sp)
                  lh           s0, 124(sp)
                  sll          s8, zero, s5
                  sb           s2, -247(sp)
                  slli         s7, a3, 26
                  auipc        a0, 826430
                  srl          s7, a3, s0
                  lhu          s2, -528(sp)
                  xor          s3, s1, ra
                  add          t2, s7, t5
                  add          t3, t2, a5
                  slli         a4, t3, 29
                  sb           t6, 834(sp)
                  and          a1, a4, s8
                  auipc        a7, 338309
                  srai         t4, s6, 15
                  sb           a4, 853(sp)
                  lh           zero, 632(sp)
                  lh           s10, 294(sp)
                  lb           s11, 252(sp)
                  lh           t2, -722(sp) #end riscv_load_store_rand_instr_stream_3
                  slti         gp, a3, 1676
                  srli         s7, tp, 28
                  bne          t6, a2, 17f
                  and          tp, a5, s10
                  bne          s9, ra, 14f
                  beq          t0, tp, 21f
                  sltiu        t4, s8, 148
                  add          gp, ra, a0
                  blt          t4, s8, 23f
                  bltu         t3, s2, 16f
                  nop
                  andi         s4, s0, 988
                  xor          s0, s0, t4
                  or           a6, a3, a4
14:               bge          s9, s8, 22f
                  addi         ra, a6, -1872
16:               sub          s1, t2, s8
17:               sltu         a2, t5, s3
                  bgeu         a3, t2, 37f
                  lui          s2, 527343
                  auipc        a6, 496236
21:               and          s4, s0, t2
22:               srai         t1, t1, 20
23:               sub          t4, a1, s6
                  bne          a2, a3, 30f
                  beq          ra, t3, 36f
                  add          s10, tp, s6
                  or           s9, t3, a2
                  sltu         a4, sp, t2
                  andi         a0, t0, 46
30:               bne          s0, s2, 36f
                  ori          gp, gp, 1747
                  lui          t6, 238268
                  srai         s7, s5, 13
                  bge          s2, sp, 50f
                  lui          zero, 859319
36:               auipc        t0, 760268
37:               srai         s9, t3, 29
                  sltiu        tp, s11, -2008
                  nop
                  bltu         t2, a5, 44f
                  slti         t2, s8, 1008
                  add          t4, a3, a3
                  addi         s3, s8, -1446
44:               bne          s3, zero, 57f
                  blt          s8, s9, 52f
                  blt          s0, a5, 62f
                  nop
                  addi         a6, a5, -1005
                  and          s1, t3, s9
50:               sra          ra, t4, a1
                  sltu         sp, s11, a7
52:               xori         gp, gp, -1837
                  sll          a4, t2, sp
                  sltu         s2, a1, s9
                  add          zero, s6, a6
                  andi         s0, s1, -399
57:               nop
                  xori         t3, t5, -347
                  slt          a1, a3, t5
                  ori          s6, a0, 1503
                  and          t4, tp, a4
62:               xor          t4, zero, s7
                  beq          t4, s9, 82f
                  slti         t1, s5, -1066
                  andi         s1, a5, 687
                  andi         s3, t5, 336
                  slt          a0, a1, s0
                  sll          t6, tp, s6
                  bne          s1, ra, 81f
                  bltu         t1, s1, 80f
                  blt          a6, t6, 85f
                  slti         ra, t5, 780
                  blt          t2, a3, 74f
74:               srli         s9, s4, 7
                  sll          sp, s9, sp
                  sub          zero, t6, s9
                  addi         a6, s1, -1747
                  bltu         s9, t4, 84f
                  bltu         a6, s0, 89f
80:               addi         s11, a0, -852
81:               slt          a1, s10, t1
82:               xor          s10, s4, t3
                  lui          s10, 910855
84:               auipc        t1, 448965
85:               bge          s9, tp, 88f
                  la           s6, region_1+1459 #start riscv_load_store_rand_instr_stream_2
                  slli         s4, s0, 23
                  sltu         sp, a2, a5
                  xori         s8, sp, 369
                  andi         a0, a5, -2038
                  srl          a7, a1, a3
                  xor          a2, s11, tp
                  sb           gp, -31(s6)
                  slli         t2, s9, 11
                  slti         sp, t6, -38
                  sltiu        s8, s1, 581
                  sh           t2, -55(s6)
                  ori          t1, s2, 1560
                  lb           s0, -8(s6)
                  sra          a1, s9, s8
                  sltu         zero, s2, a3
                  lb           t4, 54(s6)
                  sb           t1, 43(s6)
                  slli         a4, t1, 15
                  lb           a4, -30(s6)
                  or           s10, a4, s3
                  lb           a7, -64(s6)
                  lbu          t6, 40(s6)
                  lh           tp, 3(s6)
                  lb           t3, -50(s6)
                  sub          tp, a5, tp
                  srai         t6, ra, 20
                  sh           s4, -5(s6)
                  lb           s0, 31(s6)
                  sb           t3, 60(s6)
                  ori          s3, s9, -966
                  andi         s5, t1, 1182
                  xori         t4, sp, -258
                  sltu         a7, a2, s8
                  lb           s5, -36(s6) #end riscv_load_store_rand_instr_stream_2
                  ori          s4, t3, -467
                  sll          sp, gp, gp
88:               nop
89:               blt          s0, s2, 109f
                  nop
                  srl          s4, s2, ra
                  srl          a0, a4, tp
                  ori          t2, t0, -1681
                  slli         a2, s4, 11
                  sra          t1, ra, s2
                  add          s5, s5, s5
                  srli         s2, tp, 7
                  bgeu         t0, s1, 112f
                  addi         s5, a1, 630
                  bne          s3, a4, 102f
                  slti         t0, a4, -1875
102:              lui          s9, 374738
                  andi         s6, ra, 1925
                  slt          s1, a2, t2
                  add          t6, s1, ra
                  srl          s3, s6, t3
                  auipc        tp, 73727
                  add          s6, sp, s10
109:              bltu         t2, s7, 112f
                  ori          tp, s8, -1077
                  srl          s3, a3, t1
112:              and          zero, ra, s11
                  xori         s6, s1, -1377
                  nop
                  slli         sp, s8, 26
                  and          a4, a3, s9
                  sltu         a7, s0, t1
                  bne          gp, s9, 136f
                  slt          t6, zero, t4
                  bne          s10, a0, 127f
                  or           s8, s4, a1
                  sltu         s3, a0, a7
                  xor          s7, s3, a4
                  slt          t2, a2, s10
                  slti         s8, a0, -826
                  ori          s1, t0, 1355
127:              sltiu        s1, t6, -504
                  beq          ra, s0, 134f
                  nop
                  sltu         s5, a0, s5
                  slt          tp, s10, t4
                  bne          s3, t2, 152f
                  and          t0, a3, s10
134:              nop
                  xori         a7, t0, 54
136:              slti         t0, a1, -779
                  slli         s5, a0, 5
                  srai         zero, ra, 0
                  slli         s10, s7, 24
                  ori          t2, a7, -1550
                  slti         s0, a6, -1990
                  slli         s8, s1, 8
                  blt          a7, s5, 149f
                  sll          a7, s10, a7
                  sub          t3, a1, a7
                  sltiu        ra, a6, -1151
                  add          s8, gp, s4
                  add          ra, a7, t6
149:              slti         s4, t4, 1772
                  beq          s5, s11, 154f
                  nop
152:              ori          zero, a3, -241
                  srli         t1, s4, 9
154:              bge          t3, t3, 172f
                  beq          a2, t4, 162f
                  lui          a7, 862773
                  sub          t6, a3, sp
                  blt          zero, s4, 173f
                  sub          t1, t0, s5
                  auipc        s9, 831987
                  nop
162:              ori          sp, s10, 1719
                  beq          zero, s9, 173f
                  sll          t6, a6, s2
                  nop
                  srl          a6, a2, a3
                  add          gp, sp, s9
                  slt          t2, a7, s3
                  xor          s8, s9, t6
                  or           a4, a0, a2
                  sll          s1, a6, a1
172:              slt          a1, t6, t4
173:              lui          t0, 870585
                  and          s10, ra, ra
                  nop
                  ori          t1, a6, 1921
                  slt          s7, s6, s4
                  srli         tp, gp, 5
                  andi         a4, a4, 353
                  blt          s7, a4, 182f
                  slli         t3, tp, 31
182:              xori         s10, a5, -1226
                  xori         s0, t0, -499
                  nop
                  auipc        s11, 787345
                  sra          s5, t2, a1
                  sltu         a1, s0, s2
                  sll          s4, t0, gp
                  sltu         tp, t1, s9
                  beq          s10, sp, 206f
                  andi         zero, a2, -1586
                  srai         a7, t0, 14
                  and          s5, t5, a5
                  srli         tp, s3, 12
                  slti         s10, t4, -1501
                  bge          a2, a1, 202f
                  xor          s4, a7, a7
                  xor          t6, s5, s8
                  ori          s4, a0, 2037
                  andi         s0, zero, 635
                  auipc        s6, 270290
202:              sub          ra, t5, zero
                  ori          t3, t1, 314
                  srli         s1, a5, 4
                  bltu         s5, s1, 215f
206:              bltu         s4, a5, 225f
                  sub          a0, a4, a1
                  bgeu         s7, sp, 214f
                  or           t3, t2, ra
                  xor          a4, s1, s4
                  sub          s1, s1, t6
                  andi         gp, a7, 1378
                  add          tp, sp, a7
214:              sltu         s3, a3, t4
215:              slti         s9, t1, 833
                  srli         tp, t0, 9
                  ori          gp, s8, -1556
                  nop
                  bge          sp, t6, 231f
                  sub          s5, s3, s1
                  srl          s8, tp, a6
                  srai         s2, s0, 25
                  xor          s8, t6, s3
                  xor          s0, a1, s3
225:              andi         a1, s8, 1860
                  srai         gp, a7, 31
                  blt          s10, s3, 241f
                  addi         s2, s11, -1173
                  andi         s11, s4, -1349
                  xor          t2, a1, s10
231:              bltu         s2, t6, 242f
                  and          t2, s4, s4
                  slt          s4, a0, ra
                  srl          s4, s0, t1
                  nop
                  sltu         zero, t5, zero
                  sll          sp, s7, s7
                  ori          s9, t0, 1317
                  sll          t1, a1, sp
                  lui          s9, 78430
241:              slti         s11, a3, 24
242:              sltu         t4, t4, a7
                  addi         s10, t1, -1475
                  and          s7, s7, a4
                  sltu         t4, t5, s0
                  slti         a6, s3, 520
                  auipc        t0, 631611
                  srai         s3, gp, 8
                  nop
                  sll          s9, t5, s4
                  and          gp, a1, s11
                  srl          zero, a1, s0
                  addi         ra, t4, 298
                  ori          s6, ra, 1938
                  bltu         t5, t5, 262f
                  sll          s3, s6, t2
                  slti         t4, s10, -131
                  bne          a4, s7, 268f
                  bge          t6, a7, 260f
260:              slti         a0, a2, -1453
                  sll          a7, a4, s3
262:              andi         zero, t2, -198
                  slli         a2, gp, 6
                  bltu         tp, a0, 278f
                  add          t3, s6, s3
                  beq          a2, t4, 281f
                  lui          s3, 924531
268:              lui          a4, 817907
                  xor          s2, s4, a5
                  sub          t6, t5, s4
                  sltiu        s11, t6, -1531
                  slli         s8, s7, 25
                  blt          a5, s1, 276f
                  bne          s4, s11, 280f
                  slli         a4, a7, 3
276:              sra          s8, a0, s10
                  and          ra, a6, t1
278:              xori         t0, s0, -405
                  bltu         a5, s3, 282f
280:              bltu         a4, s8, 287f
281:              slti         a6, s9, 257
282:              srai         sp, s7, 30
                  nop
                  ori          s8, t5, -27
                  add          s4, t0, sp
                  srl          a7, a0, a2
287:              auipc        t2, 638803
                  srli         t0, a1, 4
                  srl          sp, a4, t0
                  nop
                  ori          s4, s2, 919
                  srai         gp, a7, 30
                  slt          a0, a3, a0
                  srl          s8, s7, s3
                  xori         s4, s2, 859
                  lui          a1, 598360
                  slli         s9, a2, 26
                  auipc        s5, 682123
                  xori         t3, a3, -1945
                  and          s10, zero, s1
                  auipc        s11, 784028
                  srai         zero, t5, 31
                  bne          a4, t0, 319f
                  auipc        s1, 976665
                  ori          s11, t5, 1
                  srli         a4, a0, 14
                  xori         t6, s11, 1937
                  slli         a7, a7, 24
                  bne          a3, ra, 322f
                  srl          tp, t4, s5
                  andi         a4, a6, -232
                  bge          a5, a2, 320f
                  sltiu        s1, s5, -1463
                  xor          sp, t1, s5
                  xori         s0, t5, 1955
                  and          ra, a0, gp
                  srli         a6, sp, 0
                  ori          t4, s9, -682
319:              add          t0, t0, t3
320:              srli         s7, s11, 0
                  sll          a6, s11, t1
322:              auipc        tp, 316906
                  sub          s0, zero, s0
                  srl          tp, s9, a4
                  and          t2, s3, a5
                  sltu         s9, a4, s6
                  auipc        gp, 740758
                  srai         a6, t0, 4
                  auipc        a7, 648427
                  and          s1, t2, s3
                  xori         s0, t4, 269
                  or           s7, s9, a1
                  sltu         a2, t5, a1
                  srl          s8, s3, t4
                  add          ra, s0, s7
                  sub          a1, s6, a2
                  or           s1, s5, a1
                  slti         a0, s7, -563
                  nop
                  andi         s7, t0, -107
                  sll          s6, s11, a4
                  sra          s0, t1, a5
                  xor          gp, s10, a3
                  ori          s0, a3, -1275
                  slt          tp, a0, t6
                  slli         t4, tp, 6
                  sltu         s7, tp, s6
                  sra          tp, gp, s7
                  and          t3, t0, a3
                  blt          zero, s10, 366f
                  xor          a2, a0, s11
                  andi         tp, tp, 1649
                  nop
                  beq          a2, s1, 373f
                  and          t1, s0, s5
                  xori         a2, a7, 1936
                  blt          a2, a1, 363f
                  sltu         s11, s2, t1
                  srl          t3, s11, a3
                  slti         a4, zero, 211
                  slti         a0, s0, 1720
                  add          gp, s4, a0
363:              slli         ra, s9, 11
                  bne          s5, a6, 382f
                  sltiu        s4, sp, -1451
366:              xor          a2, t0, s2
                  sltu         s4, t5, a0
                  sltiu        s6, a6, -980
                  bltu         s8, s10, 388f
                  slti         s11, a1, -1162
                  bgeu         ra, s5, 377f
                  and          s1, a7, a4
373:              xor          s9, t3, s10
                  ori          t1, sp, 527
                  sub          s9, s6, a3
                  slli         sp, tp, 4
377:              bgeu         s6, a6, 383f
                  srli         s6, sp, 30
                  srli         t3, sp, 29
                  auipc        s10, 126964
                  ori          a4, a1, 1117
382:              slti         ra, t5, 115
383:              srli         s7, a2, 31
                  slli         s5, t5, 6
                  xori         t6, s7, -45
                  bltu         a2, s1, 397f
                  and          t6, s7, t2
388:              nop
                  sra          t2, s5, s1
                  and          s5, s8, t0
                  sltu         t4, s10, t6
                  srai         s1, s0, 31
                  andi         a4, t4, 1108
                  sub          s10, t5, zero
                  slt          t1, zero, s4
                  sltiu        gp, s4, 632
397:              auipc        gp, 755627
                  andi         s3, s10, 1600
                  srai         s1, s0, 0
                  blt          t2, s9, 407f
                  srai         tp, s0, 12
                  auipc        a4, 549061
                  lui          a6, 1005677
                  sra          sp, a2, t3
                  srai         t2, a0, 21
                  srai         s11, s7, 22
407:              nop
                  slti         a0, t4, -1567
                  bgeu         a3, s11, 415f
                  add          a2, sp, s11
                  slli         a4, a0, 17
                  bge          s4, a3, 413f
413:              sra          zero, t2, t3
                  sub          t6, a2, zero
415:              and          t3, a0, zero
                  sub          t2, sp, a0
                  auipc        zero, 1021550
                  bgeu         t6, a7, 422f
                  bne          a5, t1, 434f
                  or           s3, a1, a4
                  xori         s4, s6, 891
422:              srl          s1, s1, a5
                  sub          tp, s3, s2
                  sltiu        a7, t3, -3
                  sltiu        t4, s0, -137
                  srai         t2, s7, 8
                  addi         s3, t0, 15
                  sltiu        a1, a2, -440
                  blt          s7, s3, 445f
                  and          s4, s8, s6
                  slt          zero, s2, s10
                  bge          t6, a0, 445f
                  bgeu         s4, a4, 453f
434:              sra          t3, t6, t4
                  srai         s8, a2, 21
                  lui          a6, 12841
                  xor          sp, sp, t1
                  and          s11, a5, s11
                  slti         a6, a4, 919
                  ori          t3, s4, 859
                  bgeu         s6, t1, 455f
                  sll          s1, s2, s10
                  sra          t0, s1, s0
                  auipc        a0, 378939
445:              xor          s11, s11, s1
                  blt          a7, a5, 456f
                  blt          t1, s9, 450f
                  sltiu        s3, tp, 246
                  xori         t3, s1, -974
450:              sub          t0, a1, s6
                  blt          a7, s8, 453f
                  srai         s3, tp, 2
453:              add          t4, s8, a2
                  slli         t2, a2, 17
455:              slli         t6, s2, 27
456:              xor          sp, t3, t3
                  blt          s8, zero, 469f
                  nop
                  slli         zero, a3, 31
                  nop
                  bltu         t2, s5, 471f
                  slli         a1, s5, 11
                  andi         s10, s6, 630
                  or           s8, t0, a5
                  blt          s7, s0, 484f
                  addi         a2, sp, 1018
                  lui          t6, 146781
                  srl          s1, gp, gp
469:              bne          t6, s6, 476f
                  nop
471:              sll          t4, t4, s2
                  srai         sp, ra, 17
                  bltu         s7, s9, 480f
                  andi         t2, s5, 1477
                  auipc        sp, 651365
476:              ori          s5, gp, 785
                  slli         s4, a2, 28
                  add          t4, s8, sp
                  sltiu        s5, sp, -1937
480:              bge          s1, t4, 488f
                  sltiu        t2, s11, -1983
                  slli         s4, s10, 4
                  srli         s11, t4, 29
484:              sra          t3, t4, s0
                  bgeu         s11, a4, 495f
                  la           t0, region_0+1816 #start riscv_load_store_rand_instr_stream_1
                  xor          s11, t5, s8
                  xor          a2, t2, s1
                  sb           s1, -6(t0)
                  ori          t1, a4, -1050
                  sh           s7, -14(t0)
                  sb           s0, -27(t0)
                  addi         ra, zero, -1655
                  lb           a6, -47(t0)
                  sb           tp, -57(t0)
                  slti         t3, s1, 1412
                  slt          s1, s2, s8
                  srl          a1, a6, a4
                  srai         a0, s4, 27
                  sra          s1, s1, s0
                  andi         s2, zero, 190
                  slli         t2, t4, 21
                  slli         s0, sp, 2
                  lb           s10, 37(t0)
                  sb           t1, 30(t0)
                  slti         t6, a7, -497
                  lb           s6, -26(t0)
                  sb           zero, -31(t0)
                  addi         a4, a7, -1073
                  slti         s10, s6, 589
                  auipc        sp, 763893
                  lb           s4, -7(t0)
                  slt          s5, s8, s4
                  lbu          t1, -55(t0)
                  sb           s3, 9(t0)
                  sra          t4, t1, a4
                  sltiu        s4, a1, -1238
                  sb           ra, -19(t0)
                  srai         tp, a4, 19
                  add          s11, gp, a3
                  xor          s10, s3, tp
                  sb           s9, 51(t0)
                  lbu          a7, 0(t0)
                  lb           s5, -35(t0)
                  xor          t3, s10, a1
                  nop
                  lb           zero, 57(t0)
                  nop
                  srai         a7, s2, 11
                  lh           s4, 42(t0)
                  lb           s10, -36(t0)
                  slli         s8, a4, 0
                  sw           a0, 40(t0) #end riscv_load_store_rand_instr_stream_1
                  blt          a5, s0, 489f
                  lui          t3, 408931
488:              beq          t2, s2, 504f
489:              blt          s5, t4, 505f
                  bne          t6, s11, 504f
                  nop
                  sltu         s9, a4, t4
                  bltu         s7, s11, 508f
                  slli         t2, a7, 9
495:              sub          s9, s2, s1
                  sltu         a2, t0, a0
                  slti         s8, a6, 1282
                  bltu         a5, s3, 512f
                  blt          a4, a4, 505f
                  slti         s8, zero, -687
                  slt          s2, t3, tp
                  slli         s3, s8, 30
                  bltu         s10, s11, 519f
504:              srli         s8, t2, 20
505:              srl          t6, a4, a4
                  bgeu         s9, ra, 518f
                  slli         ra, s11, 23
508:              sub          zero, a5, tp
                  slti         gp, t0, -1780
                  sll          t6, t6, s8
                  sra          s5, tp, t4
512:              srl          s1, a7, tp
                  slti         s6, t5, -663
                  slt          a2, s5, s3
                  srai         a4, a1, 26
                  lui          s2, 165039
                  bltu         s3, a0, 532f
518:              bne          a1, a4, 534f
519:              xori         a6, s2, 901
                  add          s2, s8, zero
                  or           s0, a0, t2
                  add          s1, ra, t0
                  sltiu        gp, t1, -2040
                  beq          a5, sp, 532f
                  sll          t6, s11, a6
                  or           s4, s0, a2
                  srli         a0, a1, 8
                  sltu         a4, s6, a4
                  srai         s11, s5, 3
                  srli         s9, a5, 0
                  srl          t3, tp, a2
532:              srl          t1, a7, t2
                  srli         s2, a3, 3
534:              sltu         t0, s6, s9
                  blt          a4, a2, 538f
                  and          t6, a5, s11
                  addi         t0, t3, 1396
538:              srl          s6, t6, s8
                  srai         s4, t6, 31
                  or           a0, a7, a6
                  beq          zero, s8, 554f
                  sll          s6, s0, s0
                  auipc        a0, 908370
                  ori          s6, s2, 1432
                  bne          a4, t4, 565f
                  xor          s9, ra, t6
                  or           s7, a6, ra
                  sltiu        ra, a3, 932
                  bge          t0, t6, 550f
550:              andi         s9, s5, 1899
                  xor          s4, a6, s4
                  sra          s10, a2, s3
                  slti         zero, a6, -246
554:              bgeu         s6, t5, 564f
                  beq          a2, zero, 561f
                  slt          t0, s6, s10
                  andi         a0, s6, -1179
                  sll          a0, gp, a2
                  add          t2, s3, s7
                  srl          s8, t0, a3
561:              bgeu         a2, s9, 574f
                  bgeu         gp, t2, 572f
                  sra          s9, a3, gp
564:              addi         s0, t4, -192
565:              or           t0, s11, t4
                  bne          s11, sp, 573f
                  and          s4, s11, s5
                  sltu         t4, t5, a6
                  auipc        t1, 602347
                  or           t4, t5, a4
                  sub          gp, tp, s11
572:              srai         s5, s6, 2
573:              ori          zero, gp, 183
574:              sll          t0, t4, s1
                  lw           tp, 4(a5)
                  ori          s8, a0, -846
                  addi         a5, a5, 40
                  and          t4, a5, a6
                  slt          t2, s11, a3
775:              addi x12, x4, 1
775:              jalr x12, x12, 0
sub_5:            srli         t3, s11, 6
                  slli         s4, s0, 9
                  addi         a5, a5, -48
                  sra          gp, s0, a1
                  and          a1, s10, a5
                  auipc        a7, 743053
                  or           t4, a0, t4
                  sw           tp, 4(a5)
                  add          s8, s8, t0
                  slli         t1, t6, 12
                  addi         s10, s7, 1558
                  srai         s6, s6, 16
                  sra          s2, s6, tp
                  la           a4, sub_6
                  xori         t3, t3, 1407
                  addi         a4, a4, -166
                  sltu         t0, s10, s9
                  bne          s5, s9, sub_5_j6 #branch to jump instr
                  sub          t0, a7, s6
                  andi         a1, a7, 213
                  srai         s4, a5, 27
                  slt          s4, s0, s7
                  sltiu        a6, t0, -1044
sub_5_j6:         jalr         tp, a4, 167 #jump sub_5 -> sub_6
                  slt          s9, s1, s2
                  slti         s4, t3, 32
                  srl          t3, ra, tp
                  la           a2, sub_7
                  lui          s3, 447826
                  and          s0, sp, s3
                  addi         a2, a2, -73
                  auipc        t4, 1028298
                  addi         t1, sp, 978
                  srl          sp, a7, t3
                  blt          s2, s7, sub_5_j7 #branch to jump instr
                  srl          a4, s4, t5
                  slli         gp, s9, 27
sub_5_j7:         jalr         tp, a2, 74 #jump sub_5 -> sub_7
                  sub          a6, s3, t6
                  andi         a4, t6, -2046
                  beq          s8, t4, 14f
                  auipc        s8, 228011
                  sltu         s11, a1, s8
                  and          ra, s0, a0
                  sltiu        s1, s3, -892
                  lui          s5, 244511
                  srl          s3, s7, s7
                  bgeu         a4, tp, 12f
                  bge          ra, t4, 27f
                  auipc        s10, 482695
12:               srli         s0, gp, 3
                  andi         s2, a5, 1295
14:               sltu         t0, s4, gp
                  bgeu         ra, t6, 20f
                  sltu         s2, t5, s10
                  slti         s7, gp, 1314
                  sltiu        s11, tp, 547
                  slt          s0, ra, a3
20:               xor          s11, s2, s1
                  sltiu        s8, s0, -934
                  bltu         s7, a2, 36f
                  ori          t4, s3, 1305
                  beq          a6, a6, 42f
                  sll          tp, s3, a7
                  addi         t4, s6, 289
27:               bltu         s7, a2, 47f
                  nop
                  add          a0, ra, s4
                  slti         t6, s4, 1349
                  xor          s8, a7, sp
                  sub          a2, s3, t2
                  sltiu        t1, s5, 445
                  beq          s0, sp, 54f
                  sra          s5, s10, t4
36:               slt          s7, s1, t2
                  slti         t4, t2, -1465
                  srl          a4, s8, t4
                  srai         t3, a0, 4
                  or           t0, s8, s8
                  slt          sp, s11, a5
42:               sltu         t4, a5, s10
                  srl          a7, s9, tp
                  slt          t1, s2, s4
                  auipc        t4, 882261
                  bne          gp, s9, 57f
47:               srl          t4, s5, s5
                  xori         sp, a3, 1557
                  auipc        s4, 42188
                  srl          a7, s1, t3
                  bne          a6, s4, 67f
                  xori         t2, t2, -398
                  sll          s2, t1, a6
54:               slti         gp, a3, 1697
                  bgeu         s8, t2, 60f
                  or           t3, s8, s7
57:               xor          s0, a7, s11
                  sltu         t2, a3, t0
                  lui          s3, 100062
60:               andi         a6, s6, -1369
                  and          a6, t4, s5
                  sltu         s7, ra, a7
                  add          t1, a5, s10
                  bltu         t6, t1, 71f
                  sltiu        s10, s6, 662
                  sub          a6, t5, a6
67:               sra          s3, gp, t3
                  slti         s0, gp, 47
                  srli         s11, a2, 23
                  sub          s7, s10, sp
71:               sub          s6, a1, s11
                  ori          ra, s11, -1290
                  and          sp, a5, s11
                  srl          zero, s9, a6
                  slt          ra, s1, a1
                  xori         t4, s11, 1842
                  bgeu         a4, s6, 86f
                  nop
                  ori          t2, s9, -1382
                  bltu         a2, gp, 97f
                  andi         t0, gp, 1795
                  slli         a7, t1, 9
                  addi         s8, t0, -1100
                  xori         s8, s9, 1126
                  slli         s9, a4, 7
86:               slt          t2, t5, s1
                  srli         s5, s4, 5
                  bltu         t3, s8, 104f
                  sll          s3, s7, a3
                  auipc        s0, 277799
                  sra          s10, tp, t0
                  slt          s5, t4, s0
                  srli         a1, s5, 28
                  srl          s0, s5, sp
                  slti         a2, zero, -1179
                  bne          a6, s9, 103f
97:               bltu         s11, a6, 102f
                  and          a1, t1, s9
                  sll          ra, tp, a2
                  andi         s8, a4, -254
                  slti         a4, zero, 1110
102:              ori          a1, a5, 1094
103:              bne          t3, t3, 104f
104:              sltiu        s0, t1, -1008
                  sll          s5, s4, a2
                  lw           tp, 4(a5)
                  sltu         t6, s0, t3
                  addi         a5, a5, 48
                  slt          sp, a6, s2
148:              addi x19, x4, 1
148:              jalr x19, x19, 0
sub_9:            add          t3, gp, a3
                  beq          a3, s0, sub_9_stack_p
                  or           s4, s3, a2
sub_9_stack_p:    addi         a5, a5, -36
                  sw           tp, 4(a5)
                  srai         s9, t3, 28
                  srai         a0, s4, 0
                  sub          s2, t2, tp
                  lui          zero, 736776
                  srai         a2, sp, 28
                  add          t1, s6, s8
                  lui          s2, 862402
                  xori         t1, s8, -1598
                  beq          a5, t4, 19f
                  slt          tp, s6, a3
                  srl          s8, a5, s11
                  andi         sp, s4, -632
                  andi         a4, t6, 559
                  xor          t3, t6, t0
                  slti         ra, t1, -1507
                  srli         a7, tp, 0
                  beq          t3, t6, 15f
                  ori          t4, t1, 826
                  lui          a6, 542722
15:               xori         a0, gp, 659
                  bltu         s10, t4, 24f
                  ori          s2, s11, -1981
                  bltu         zero, t6, 24f
19:               bgeu         a2, sp, 24f
                  sll          t1, tp, a7
                  srli         t4, a0, 8
                  addi         a2, a4, 427
                  slt          t0, a7, s8
24:               slli         s3, t0, 25
                  nop
                  lw           tp, 4(a5)
                  srl          ra, s5, s10
                  xori         s2, tp, 1649
                  addi         a5, a5, 36
                  srai         t3, ra, 22
                  nop
41:               addi x23, x4, 1
41:               jalr x23, x23, 0
sub_6:            sra          s2, t3, s10
                  blt          s11, a2, sub_6_stack_p
                  sltu         s1, sp, t0
sub_6_stack_p:    addi         a5, a5, -24
                  addi         t6, gp, 1571
                  sw           tp, 4(a5)
                  andi         s7, tp, 1498
                  slli         sp, sp, 5
                  nop
                  sll          a6, s10, s4
                  bne          s2, s10, sub_6_j8 #branch to jump instr
                  sub          s11, s11, a3
                  sll          s10, s3, s1
                  ori          s6, t5, 176
sub_6_j8:         jal          tp, sub_8 #jump sub_6 -> sub_8
                  beq          s1, s7, 8f
                  sltu         a7, s4, s6
                  sra          sp, tp, t5
                  beq          s6, a6, 8f
                  bgeu         a3, t5, 8f
                  xor          s11, s10, a2
                  and          s11, t3, s2
                  srl          a6, a7, sp
8:                slt          s6, t5, s4
                  lui          s11, 516973
                  lw           tp, 4(a5)
                  andi         s10, a3, -1552
                  add          s6, s0, t3
                  sub          zero, s1, t5
                  srl          a0, s5, t2
                  addi         a5, a5, 24
                  and          s5, s4, s0
32:               addi x21, x4, 1
32:               jalr x21, x21, 0
sub_10:           srl          a7, s4, zero
                  bltu         zero, s7, sub_10_stack_p
                  srli         s3, zero, 10
sub_10_stack_p:   addi         a5, a5, -12
                  add          gp, gp, t6
                  sw           tp, 4(a5)
                  sltiu        s9, s1, -1151
                  la           t4, region_0+1417 #start riscv_load_store_rand_instr_stream_4
                  slt          s4, t2, a4
                  lbu          s6, -1161(t4)
                  lhu          s10, -1007(t4)
                  sb           s3, -870(t4)
                  lbu          gp, 45(t4)
                  sb           a5, 552(t4)
                  sb           ra, 165(t4)
                  lh           t1, 1(t4)
                  andi         a6, t3, 1422
                  lh           s11, -963(t4)
                  sub          a7, a3, sp
                  sb           t3, 548(t4)
                  lui          a4, 82389
                  sltu         t6, s6, s1
                  sb           a4, -1152(t4)
                  lui          a0, 17917
                  sb           s6, 116(t4)
                  and          a6, ra, s0
                  lbu          s8, -154(t4)
                  sltiu        s4, t4, -779
                  addi         a4, t3, 478
                  ori          t2, a3, -574
                  lbu          s11, -446(t4)
                  sltu         s1, a4, a3
                  or           zero, a1, a4
                  nop
                  lbu          a4, 138(t4)
                  sb           zero, 348(t4)
                  lb           sp, 266(t4)
                  and          s4, s10, zero
                  add          s2, tp, s6
                  addi         t2, s6, -1305
                  lb           ra, -1024(t4)
                  andi         s2, a4, -419
                  srli         a7, gp, 9
                  sh           ra, 197(t4)
                  or           s5, sp, s8
                  addi         s10, a2, 1892
                  addi         s10, sp, 239
                  lb           zero, -840(t4)
                  sltiu        s2, t4, 1206
                  srli         s5, ra, 5
                  lh           s0, -385(t4)
                  lb           t0, -1242(t4)
                  srli         a7, tp, 10
                  lbu          t0, -984(t4)
                  slti         s4, tp, -853
                  or           gp, gp, s10
                  sra          a4, s10, a4
                  andi         s7, s4, -1249
                  srli         a0, a6, 18
                  sltiu        s5, t3, 593
                  lb           s11, -780(t4) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+512 #start riscv_load_store_rand_instr_stream_6
                  sll          tp, a5, t4
                  sw           s8, 36(a0)
                  and          s6, s6, a6
                  sub          a6, gp, sp
                  srli         s3, t3, 11
                  sb           t3, -23(a0)
                  sb           s4, -49(a0)
                  lhu          sp, 36(a0)
                  sh           a1, -6(a0)
                  or           s9, zero, t2
                  sb           zero, 27(a0)
                  or           s4, s0, gp
                  sltu         t2, a2, t3
                  sra          tp, s0, s10
                  ori          s4, gp, 872
                  lbu          gp, -53(a0)
                  sub          zero, a1, a6
                  nop
                  andi         s11, t2, -1484
                  lh           a6, 44(a0)
                  slti         s5, s9, 203
                  and          t3, s4, a6
                  sb           a0, 29(a0)
                  lbu          s3, -22(a0)
                  addi         s3, s6, 1911
                  sb           gp, -55(a0)
                  lbu          s8, -1(a0)
                  lb           s2, -19(a0)
                  lbu          s5, 27(a0)
                  sb           sp, -4(a0)
                  lb           t6, -29(a0)
                  slli         s1, a7, 6
                  lh           a7, 34(a0)
                  sltiu        s7, s2, 703
                  sb           a1, 29(a0) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_0+1856 #start riscv_load_store_rand_instr_stream_7
                  sb           s1, -1(tp)
                  lw           s4, 4(tp)
                  andi         a2, gp, -632
                  lh           t3, -8(tp)
                  lbu          t0, -2(tp)
                  lbu          a4, -8(tp)
                  sltiu        a6, zero, 541
                  sub          t0, a1, s6
                  lbu          s10, 10(tp)
                  add          s1, s6, sp
                  lb           a7, -1(tp)
                  sb           s0, -13(tp)
                  lbu          t2, 2(tp)
                  sh           ra, -6(tp)
                  addi         a7, t2, -857
                  slt          s5, s7, s7
                  xori         gp, t2, -1210
                  lb           t0, -2(tp)
                  lbu          zero, 3(tp)
                  auipc        s9, 552321
                  add          s2, ra, s6
                  ori          s1, zero, -1578
                  srai         s5, s5, 9
                  slti         t4, a6, -473
                  lw           s5, -8(tp)
                  lb           t0, 7(tp)
                  lb           t0, -3(tp)
                  srl          s7, a5, gp
                  sb           a6, 3(tp)
                  lbu          s2, 9(tp)
                  srai         s7, s11, 16
                  lbu          a4, -11(tp) #end riscv_load_store_rand_instr_stream_7
                  la           a7, region_1+1623 #start riscv_load_store_rand_instr_stream_8
                  sb           t0, 10(a7)
                  xori         s0, t3, 1844
                  lb           t1, 40(a7)
                  lb           sp, -18(a7)
                  xori         gp, a0, 1355
                  srl          ra, t4, s5
                  srl          s8, t3, a5
                  slt          s9, ra, tp
                  srai         sp, s7, 30
                  sw           a6, -11(a7)
                  andi         ra, t4, 1663
                  sw           s10, -11(a7)
                  or           s6, sp, t2
                  lb           s9, -8(a7)
                  sll          a0, tp, a7
                  sra          t0, s7, a1
                  srai         sp, s6, 23
                  and          ra, zero, t4
                  xori         a4, t1, -1675
                  sb           s7, -38(a7)
                  lb           s7, 21(a7)
                  lhu          sp, -5(a7)
                  lb           t3, -42(a7)
                  lh           s10, 31(a7)
                  lh           s11, -35(a7)
                  lw           t1, 13(a7)
                  and          a2, a6, a6
                  xor          t0, a1, sp
                  sll          s1, t1, s7
                  andi         s0, s9, 1238
                  sltiu        s6, s3, -1878
                  lw           a2, 41(a7)
                  sltu         s3, ra, a5
                  sb           s6, -32(a7)
                  srl          t6, tp, s4
                  add          a6, s8, t2
                  slt          gp, s9, s9
                  lbu          s6, -50(a7) #end riscv_load_store_rand_instr_stream_8
                  la           t4, region_1+123 #start riscv_load_store_rand_instr_stream_2
                  sb           s10, 204(t4)
                  lbu          t6, -56(t4)
                  and          sp, a4, s4
                  lui          s7, 322634
                  lui          t1, 1029021
                  lh           a0, -31(t4)
                  nop
                  sb           a7, -18(t4)
                  and          s11, t0, a7
                  srl          a2, a6, t5
                  lbu          sp, 63(t4)
                  sub          s9, s7, sp
                  sh           t4, 179(t4)
                  xor          s6, s4, s8
                  sb           t5, -88(t4)
                  sub          a0, ra, s5
                  lbu          s6, 49(t4)
                  lbu          sp, 101(t4)
                  lh           s3, 1(t4)
                  lbu          s4, 136(t4)
                  sll          a1, s11, a0
                  slli         s9, gp, 15
                  sh           a5, -43(t4)
                  lb           s3, 94(t4)
                  sb           t6, 182(t4)
                  sh           zero, 131(t4)
                  srli         gp, t3, 14
                  lb           zero, 34(t4)
                  srli         s3, tp, 20
                  and          t2, sp, s6
                  sb           a2, 246(t4)
                  sb           t5, 223(t4)
                  sw           t3, 237(t4)
                  or           a4, s5, t4
                  ori          s3, t4, 1959
                  lui          s9, 675842
                  andi         a4, s6, -1587
                  sh           s5, 103(t4)
                  sh           t3, 79(t4)
                  srl          sp, a6, s5
                  xor          t0, t2, s9
                  lb           s2, -72(t4)
                  sltu         a1, t2, s9
                  lh           t3, -7(t4)
                  lhu          t1, -37(t4)
                  lh           s11, -27(t4)
                  lb           s6, -37(t4)
                  lbu          s10, 255(t4)
                  sh           s8, 119(t4)
                  andi         s3, s0, 777
                  xor          a2, a0, zero
                  and          t0, s4, ra
                  sb           ra, 75(t4) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_0+1250 #start riscv_load_store_rand_instr_stream_5
                  sltiu        a1, a6, -1835
                  or           t3, ra, s4
                  lb           t0, -697(s8)
                  sub          s1, zero, t0
                  lbu          s9, 395(s8)
                  sh           a0, -1140(s8)
                  srai         s5, a6, 5
                  sll          s7, t0, s3
                  lb           t2, 309(s8)
                  lbu          a7, 133(s8)
                  slt          a1, zero, s9
                  xori         s4, s6, -693
                  xori         a2, a0, 1280
                  auipc        t0, 684968
                  sll          s9, s5, t6
                  lb           a4, -809(s8)
                  sra          s3, s4, a3
                  xori         ra, a7, 232
                  sltiu        s5, zero, 361
                  nop
                  auipc        ra, 199329
                  sra          s2, t2, ra
                  or           t3, s11, s10
                  add          s9, s8, t4
                  lb           s9, -164(s8)
                  slt          s1, s4, a0
                  lbu          gp, -573(s8)
                  add          a7, ra, t0
                  add          s5, s10, zero
                  lh           s9, -180(s8)
                  xori         s1, t1, -1248
                  andi         s11, t1, -1718
                  andi         t6, t1, -533
                  srl          a4, s10, sp
                  add          a6, s6, a0
                  slti         t0, zero, 1729
                  lhu          s0, 488(s8)
                  and          s11, a3, s3
                  lhu          a1, -1122(s8) #end riscv_load_store_rand_instr_stream_5
                  la           a7, region_1+442 #start riscv_load_store_rand_instr_stream_3
                  andi         s1, s6, 1560
                  sb           s7, -328(a7)
                  lh           sp, -160(a7)
                  lb           s9, 885(a7)
                  sltiu        s9, s5, -1809
                  xor          s5, t2, s5
                  add          s7, a3, s3
                  nop
                  addi         s7, s11, -1240
                  srl          a6, tp, a6
                  sb           a0, 1541(a7)
                  sb           s4, 277(a7)
                  lb           s4, -370(a7)
                  sb           t0, 701(a7)
                  lbu          a1, -375(a7)
                  slt          gp, sp, s1
                  sb           s5, 872(a7)
                  lb           s11, 947(a7)
                  sra          t3, t5, s11
                  sb           t3, 1336(a7)
                  sh           t1, 436(a7)
                  slt          s10, s0, s8
                  slli         s0, s10, 4
                  lhu          t4, 338(a7)
                  srl          ra, zero, t0
                  lh           t4, -440(a7)
                  slt          t6, t5, s5
                  srl          s0, a5, zero
                  slt          tp, a5, a5
                  sb           s1, 206(a7)
                  lb           a0, -252(a7)
                  nop
                  srli         s11, zero, 10
                  sll          s11, t4, s5
                  sra          s7, t1, s9
                  sb           s9, -195(a7)
                  sb           a2, -98(a7)
                  lhu          s0, 1182(a7)
                  auipc        a2, 70939
                  slli         zero, t4, 3
                  sb           tp, 391(a7)
                  sll          s11, s8, a2
                  sltiu        sp, s1, 932
                  sub          a0, ra, s2
                  xori         sp, a4, 1010
                  lb           s10, 614(a7)
                  lb           ra, 830(a7)
                  srl          a4, a0, s10
                  add          t3, t4, a7
                  xori         s0, a6, 508
                  sb           s7, 1474(a7) #end riscv_load_store_rand_instr_stream_3
                  andi         s10, t0, 1736
                  slti         a1, s3, 1985
                  sll          s7, a7, s3
                  srai         s8, gp, 10
                  beq          gp, t6, 11f
                  srai         s11, t5, 22
                  slli         s9, s9, 31
                  bne          a2, s0, 18f
                  srai         s5, s6, 5
                  slt          s7, s1, a1
                  srl          s5, s1, s3
11:               bne          ra, t6, 20f
                  sra          s2, t3, t4
                  sltiu        t1, a4, -1917
                  srl          s11, s5, a4
                  add          s8, s11, a3
                  xor          a2, s11, t4
                  or           s9, s7, t5
18:               srli         s5, a5, 29
                  bgeu         t5, s8, 38f
20:               bltu         s7, s1, 36f
                  xori         s10, tp, 1955
                  xori         s2, a6, 1470
                  sltu         s3, a0, a5
                  lui          s5, 236864
                  slti         s4, a4, 813
                  srli         t4, zero, 26
                  sra          s4, a6, a0
                  xori         tp, t6, 1775
                  slti         s7, t1, 1463
                  ori          t6, s8, 1313
                  lui          s6, 521167
                  sll          a0, ra, gp
                  slt          gp, s9, gp
                  sll          t0, a3, a4
                  slli         a0, s9, 7
36:               nop
                  sll          s11, t3, a7
38:               bgeu         t4, a3, 46f
                  xori         gp, s7, 1895
                  ori          a2, t6, 1245
                  bge          ra, a0, 59f
                  srl          t3, t2, t1
                  srai         a2, t4, 20
                  bge          t6, s1, 46f
                  blt          s3, zero, 53f
46:               nop
                  add          t3, s6, t3
                  slt          s11, s10, s3
                  bge          s3, a0, 68f
                  andi         t4, a4, -1060
                  blt          gp, t2, 57f
                  sll          s6, t4, a1
53:               add          t1, sp, a1
                  bne          s1, t3, 58f
                  slli         s8, a1, 13
                  srl          s7, s8, s6
57:               sltiu        s10, a1, -1884
58:               xori         a0, t3, 1170
59:               sub          tp, sp, s2
                  xor          s10, s1, t6
                  sll          s9, sp, s4
                  add          tp, a5, s1
                  bgeu         a2, s7, 72f
                  bge          a7, ra, 81f
                  srli         gp, t5, 29
                  lui          a2, 865417
                  nop
68:               sub          tp, s0, a4
                  srl          s10, ra, a3
                  bne          t3, t2, 72f
                  srli         t4, s6, 4
72:               xor          s6, a4, a5
                  sra          a4, a0, s6
                  add          s2, t3, s8
                  lui          s7, 7092
                  addi         s5, s4, 1825
                  bne          sp, tp, 90f
                  xori         a2, s10, 125
                  beq          gp, t6, 99f
                  srai         gp, a2, 3
81:               auipc        s4, 662942
                  addi         t4, s2, -491
                  slli         a0, t1, 25
                  bge          a4, tp, 104f
                  or           s0, s5, s0
                  sll          a4, s3, s4
                  andi         t4, s10, 1609
                  bne          a2, a2, 100f
                  bge          s7, a2, 95f
90:               sll          sp, a2, a6
                  slt          s10, t1, t2
                  auipc        s3, 712442
                  blt          t3, s2, 95f
                  srai         s3, s1, 25
95:               xor          s7, s9, t6
                  sra          s9, a7, a3
                  and          s9, t5, s10
                  nop
99:               lui          t6, 487615
100:              xori         t3, s1, -1345
                  sltiu        a7, s4, 1932
                  sub          s0, s0, t2
                  sll          s8, a5, s0
104:              andi         t1, a1, -1625
                  sra          a7, gp, t3
                  slti         s10, a0, -452
                  srl          gp, s11, a1
                  slt          s7, t0, a7
                  srai         s4, a1, 7
                  sltiu        t3, tp, -914
                  addi         ra, s5, -527
                  bne          zero, t6, 113f
113:              lui          s11, 688022
                  xori         zero, t3, -1527
                  sltu         sp, s8, s10
                  add          gp, s8, a3
                  beq          tp, tp, 122f
                  bgeu         s6, a3, 136f
                  bltu         t4, t5, 121f
                  ori          t3, a2, -1558
121:              slli         t1, s7, 24
122:              srl          s3, a6, a1
                  add          zero, a0, t4
                  bne          sp, s8, 141f
                  sltu         s6, s1, zero
                  srai         t3, a0, 17
                  xori         s7, a5, -1921
                  xori         a6, a5, 1603
                  srl          a1, t0, a6
                  bne          t4, a1, 133f
                  slli         s6, s2, 6
                  srl          a2, sp, a5
133:              sra          tp, a4, s10
                  sltiu        s1, t4, 1131
                  sra          gp, ra, s10
136:              sra          a7, s0, tp
                  ori          t2, s0, 1385
                  auipc        t2, 685769
                  slt          a2, s10, ra
                  sll          t1, a6, a2
141:              and          t0, s8, s10
                  beq          s9, ra, 150f
                  srli         tp, s9, 5
                  or           s0, t3, t2
                  addi         a7, tp, -607
                  blt          a2, t6, 149f
                  sub          t1, s3, t0
                  sll          a7, t6, s8
149:              bne          t2, s1, 169f
150:              xori         a7, t2, -1362
                  srl          s8, t4, t1
                  xor          s11, s0, s0
                  xor          s3, zero, s5
                  sltiu        s8, a2, 1593
                  bltu         s4, t2, 158f
                  srl          s2, s7, t5
                  beq          a6, a3, 162f
158:              slt          zero, s4, s3
                  bne          tp, t2, 178f
                  srl          t0, s6, s9
                  and          a0, zero, tp
162:              auipc        s10, 949317
                  add          t3, ra, s9
                  and          a0, tp, tp
                  addi         tp, s4, 1295
                  sub          a4, zero, s2
                  sltiu        t0, t0, 5
                  bltu         sp, a1, 177f
169:              bne          t4, ra, 185f
                  slt          s8, t2, a5
                  bne          a0, a6, 179f
                  bne          tp, s11, 185f
                  beq          a1, tp, 182f
                  or           s1, gp, a0
                  sra          s5, s0, s2
                  auipc        t1, 994901
177:              or           s4, a5, gp
178:              slli         s5, s8, 2
179:              slti         s6, t4, 787
                  bltu         gp, s5, 187f
                  sub          t2, sp, t5
182:              bge          t4, a5, 184f
                  slt          gp, a6, a2
184:              xori         t4, ra, 1061
185:              sra          ra, t1, gp
                  srli         s1, t1, 13
187:              bge          s3, s0, 207f
                  bltu         s7, a4, 192f
                  blt          a1, s11, 206f
                  sra          s4, s0, t4
                  srai         s4, s4, 11
192:              andi         t4, s0, -1825
                  xori         s7, a5, -787
                  xor          t4, tp, s6
                  addi         tp, t4, 774
                  slt          sp, s5, s7
                  andi         tp, s0, 1990
                  bgeu         s5, tp, 210f
                  auipc        a7, 739351
                  bge          tp, a5, 218f
                  bgeu         tp, zero, 204f
                  srli         s2, s3, 25
                  beq          s6, s6, 222f
204:              srai         t3, s0, 2
                  sltu         t3, s10, a7
206:              srli         a1, s8, 2
207:              lui          t1, 883561
                  bne          s8, s7, 219f
                  sltu         t0, ra, a6
210:              srai         ra, s3, 19
                  xor          tp, s10, a3
                  nop
                  srai         s9, tp, 23
                  sra          ra, t6, s8
                  srli         s5, s6, 18
                  andi         a0, t0, 1101
                  beq          s4, t3, 218f
218:              xori         t4, a7, -1849
219:              slt          t3, tp, s2
                  sll          s2, a3, s5
                  srli         s10, a0, 7
222:              addi         s8, t0, -1300
                  andi         a0, t0, 1877
                  blt          t0, ra, 226f
                  addi         t3, s5, -1472
226:              bgeu         t3, a6, 232f
                  slti         a2, sp, 302
                  beq          s1, gp, 236f
                  bne          s7, t5, 235f
                  auipc        a4, 1024724
                  lui          s1, 688602
232:              beq          t2, a7, 250f
                  srl          s11, s1, s10
                  slt          s10, t4, a5
235:              or           s6, ra, s2
236:              ori          s11, t4, 1014
                  sltu         t4, s6, gp
                  nop
                  srai         a4, s8, 5
                  sra          s2, gp, a2
                  xor          a2, t4, a6
                  addi         tp, s6, 1191
                  slti         s1, s9, 479
                  slli         s4, s0, 4
                  ori          t1, a6, -1364
                  and          t1, t0, s6
                  auipc        t4, 806598
                  blt          a6, s9, 268f
                  blt          s2, s9, 257f
250:              or           sp, s0, s8
                  sltu         zero, s6, a1
                  sltu         tp, t1, s0
                  or           t4, s6, a5
                  beq          a0, t4, 271f
                  xor          t0, s2, s4
                  blt          t5, s0, 258f
257:              add          s5, tp, a2
258:              blt          s3, t1, 260f
                  srl          s3, ra, s1
260:              blt          a3, a4, 280f
                  sub          s2, a0, t6
                  addi         s11, t4, 876
                  bne          s0, t4, 267f
                  nop
                  beq          gp, ra, 274f
                  bgeu         a0, gp, 286f
267:              blt          t1, s8, 280f
268:              add          s6, s7, s6
                  xori         s11, t0, 760
                  sltu         s2, s10, t0
271:              lui          t4, 522317
                  and          t0, t0, s0
                  slti         s11, s11, 1552
274:              beq          s5, s7, 279f
                  slti         zero, t6, -142
                  add          s6, s3, a3
                  add          s4, t3, zero
                  andi         gp, s1, 1987
279:              sub          t3, ra, s7
280:              srli         s4, a2, 21
                  ori          a1, s2, 608
                  xor          tp, s10, tp
                  bgeu         a7, t4, 285f
                  la           a4, region_1+899 #start riscv_load_store_rand_instr_stream_0
                  xor          a6, t0, a1
                  sb           s7, 26(a4)
                  sb           s3, 42(a4)
                  auipc        t6, 351069
                  sltu         s5, t1, s10
                  srli         a0, s4, 20
                  auipc        s0, 76023
                  ori          t6, a1, -618
                  lb           sp, -36(a4)
                  slti         a6, gp, 1177
                  lbu          zero, 62(a4)
                  sb           tp, -36(a4)
                  slti         a2, a2, 1054
                  srai         t6, t4, 1
                  ori          s10, ra, -1662
                  lb           s8, 36(a4)
                  lhu          s11, -33(a4)
                  lbu          s2, -2(a4)
                  xori         s3, a2, -851
                  sll          s11, s9, a0
                  sh           t4, -53(a4)
                  lbu          s3, 2(a4)
                  sh           t0, 49(a4)
                  slti         s10, ra, 309
                  lbu          t1, -53(a4)
                  sb           a3, 20(a4)
                  srai         s0, t5, 10
                  sb           t4, 47(a4)
                  andi         a2, s9, -782
                  lb           tp, -4(a4)
                  sra          t1, a4, a3
                  lb           s0, 18(a4)
                  xor          s4, s0, a1
                  lb           s6, -29(a4)
                  sb           s10, 42(a4)
                  sltiu        a0, sp, 1492
                  lhu          s5, 29(a4)
                  slli         t3, a7, 6
                  xori         s3, t2, -726
                  sb           s1, -18(a4)
                  srli         t4, t6, 4
                  sb           tp, 16(a4)
                  sw           gp, 21(a4)
                  srai         s6, s6, 22
                  sh           t1, -13(a4)
                  and          tp, s0, s4
                  lbu          s8, -62(a4)
                  xor          s2, t1, s5
                  lh           s7, -29(a4)
                  lb           a0, 13(a4)
                  srl          sp, s2, t6
                  or           t1, s0, s0
                  sb           a7, -12(a4)
                  sb           t0, 55(a4)
                  sll          t4, t0, s5
                  srli         t2, a6, 17
                  lw           t4, 5(a4) #end riscv_load_store_rand_instr_stream_0
                  srli         a2, tp, 21
285:              srl          s8, gp, s0
286:              sltiu        t0, s5, -1315
                  sltu         a7, s0, t5
                  srli         zero, s10, 8
                  sltiu        s6, s3, 1438
                  xor          sp, s6, sp
                  srai         s4, a4, 24
                  sll          a1, a0, a4
                  sub          a2, a3, a6
                  or           s1, a1, s6
                  sltiu        a1, sp, 1243
                  xor          t0, sp, s9
                  or           s11, a1, t2
                  srli         ra, s9, 19
                  ori          s2, a6, 708
                  bgeu         s10, a7, 307f
                  sll          a0, a0, gp
                  addi         s0, s2, -1529
                  andi         a6, s9, -1355
                  srli         tp, s1, 7
                  and          a6, s6, ra
                  auipc        t0, 370962
307:              nop
                  xor          a7, tp, s8
                  slli         tp, s3, 24
                  blt          ra, s7, 330f
                  blt          s4, a7, 331f
                  blt          s8, s7, 328f
                  slti         t0, gp, 472
                  lui          ra, 945093
                  or           ra, a4, zero
                  blt          s10, s11, 319f
                  bge          s1, s6, 336f
                  addi         s3, a4, 1195
319:              add          s3, s1, zero
                  slti         a7, s2, -1289
                  sltiu        t4, s0, 448
                  bltu         t4, s9, 324f
                  and          sp, t3, ra
324:              srai         s10, t1, 24
                  andi         t0, gp, 1698
                  srli         t4, a4, 22
                  nop
328:              xor          s3, gp, t4
                  blt          t0, t1, 337f
330:              or           gp, t0, a5
331:              lui          s2, 379998
                  xori         s7, t0, -1972
                  sltiu        s6, s0, -1674
                  sra          s4, t6, s5
                  sltiu        s11, ra, 1971
336:              lui          ra, 439127
337:              or           sp, s7, s7
                  bne          a5, s7, 350f
                  ori          s7, s5, 635
                  slti         s4, s9, 778
                  andi         t2, a6, 952
                  beq          a4, s6, 359f
                  or           t1, ra, s0
                  sub          s1, s4, a2
                  bge          zero, a3, 351f
                  bltu         t0, s9, 364f
                  xor          s1, a6, a7
                  srl          s8, t0, s9
                  andi         s0, s9, 306
350:              slti         t0, t3, 992
351:              xori         tp, a4, -106
                  slli         s4, s4, 3
                  or           gp, s4, s7
                  bgeu         s5, a6, 373f
                  sltiu        a4, s10, -1484
                  beq          t1, s11, 373f
                  sra          a1, t2, s6
                  and          a4, s11, s6
359:              beq          a3, a5, 361f
                  and          a2, s1, s1
361:              bgeu         t3, a4, 372f
                  srl          ra, s8, a0
                  nop
364:              bltu         s0, a1, 382f
                  auipc        s9, 206317
                  slti         a6, t3, 1538
                  slli         a4, t0, 6
                  or           s9, a2, ra
                  andi         s7, ra, -319
                  sll          a1, t0, a3
                  and          a6, a2, a7
372:              slli         s10, sp, 24
373:              xor          s1, s11, s9
                  srl          s3, gp, gp
                  andi         t1, t6, -1717
                  bne          a2, a1, 384f
                  xori         tp, s4, -307
                  sub          s6, s6, tp
                  bltu         s0, t6, 388f
                  nop
                  slli         s1, s0, 14
382:              addi         t6, s3, -108
                  sra          s7, a2, t3
384:              sltu         s3, s5, t4
                  slt          a7, s2, s10
                  lui          s1, 688512
                  and          t0, gp, s4
388:              blt          a1, a6, 394f
                  bge          a5, s3, 391f
                  sra          s6, s8, t1
391:              bgeu         a5, s11, 392f
392:              sll          s8, s4, a4
                  srli         s3, s2, 19
394:              sra          zero, t3, s7
                  bgeu         t6, a5, 398f
                  srli         s4, a6, 4
                  add          tp, tp, t5
398:              sltu         s8, a6, a1
                  andi         sp, s6, -1788
                  auipc        s5, 803528
                  add          s10, t4, t1
                  lui          s5, 197884
                  sltiu        s7, s2, -1718
                  sltiu        a7, a3, -945
                  beq          t5, sp, 413f
                  srli         s2, a7, 4
                  and          s7, s8, t4
                  ori          s0, s0, -856
                  xor          t6, s2, s10
                  slli         a4, t6, 17
                  sll          tp, s10, s5
                  ori          sp, s6, -146
413:              addi         tp, t5, -1253
                  bge          t1, zero, 427f
                  auipc        t4, 622046
                  la           sp, region_1+427 #start riscv_load_store_rand_instr_stream_1
                  lui          a2, 9569
                  sb           t0, 302(sp)
                  sra          t6, t5, zero
                  xor          a0, a4, t2
                  lbu          s11, 1424(sp)
                  slti         s5, zero, -1402
                  lb           zero, -287(sp)
                  srai         t3, s9, 8
                  sb           t4, 92(sp)
                  auipc        t2, 608840
                  sb           s11, 405(sp)
                  xori         tp, s5, 512
                  xori         t1, a4, -1604
                  add          s9, s7, s10
                  sltiu        s7, s7, -583
                  lbu          zero, 924(sp)
                  nop
                  srli         zero, s4, 22
                  lbu          s5, 1426(sp)
                  srl          s4, t2, a1
                  lbu          s9, 130(sp)
                  lbu          t6, 1340(sp)
                  sb           a3, 1163(sp)
                  sub          a1, a0, ra
                  sll          s3, sp, t5
                  lui          s4, 96339
                  nop
                  nop
                  lbu          t1, 916(sp)
                  lb           a6, 1244(sp)
                  sb           gp, 1180(sp) #end riscv_load_store_rand_instr_stream_1
                  bge          t0, sp, 434f
                  srl          zero, s1, tp
                  sltiu        s1, a1, -525
                  bne          zero, zero, 438f
                  and          t1, a3, s1
                  bltu         s3, ra, 429f
                  blt          sp, t2, 428f
                  or           s1, a4, s5
                  bge          ra, s10, 432f
                  beq          a6, ra, 431f
                  addi         ra, t3, 864
427:              and          ra, s2, s7
428:              slli         s0, a4, 4
429:              sltiu        t0, a2, 893
                  srli         t3, t3, 25
431:              or           s2, s4, t0
432:              andi         s6, t5, 1767
                  andi         s3, sp, -1598
434:              sll          s8, a3, a4
                  srai         s7, s1, 22
                  bltu         s0, a0, 447f
                  add          sp, a6, tp
438:              srai         sp, s10, 22
                  add          t2, a4, a2
                  or           zero, s10, a3
                  bge          a3, a1, 461f
                  sltiu        t2, a6, 143
                  ori          gp, s2, 1933
                  sltiu        s0, s1, 1029
                  slti         s6, s4, 1019
                  xori         s1, t4, -40
447:              slt          s3, a4, s4
                  lui          t4, 781672
                  auipc        a2, 642242
                  srai         a4, t1, 4
                  bltu         a2, t6, 469f
                  bne          a1, zero, 472f
                  auipc        s1, 343147
                  nop
                  bgeu         t5, gp, 463f
                  xor          t6, s2, t0
                  sub          s8, a6, a3
                  srl          zero, t0, s0
                  beq          tp, s9, 464f
                  nop
461:              bgeu         s0, s2, 464f
                  bltu         t1, t1, 482f
463:              nop
464:              xor          a1, a7, s5
                  and          s11, t5, t6
                  bltu         zero, sp, 470f
                  srl          tp, s6, a3
                  slli         s3, a2, 8
469:              andi         s7, a2, 1544
470:              xor          a6, t4, a5
                  xor          t1, s4, gp
472:              srl          s8, t4, a5
                  blt          a5, s9, 482f
                  slli         a7, a4, 19
                  slli         t6, a6, 10
                  xori         ra, s10, 958
                  bltu         s10, s7, 484f
                  srai         s10, sp, 3
                  srli         s5, t4, 28
                  bgeu         a6, tp, 483f
                  xor          s3, a5, sp
482:              or           s4, s6, t2
483:              and          s7, t5, s0
484:              beq          s8, a0, 503f
                  slt          s10, s1, gp
                  sra          s3, a1, s1
                  add          ra, t2, s5
                  sub          s6, t3, t1
                  slti         a6, a0, -1414
                  nop
                  blt          s6, s3, 493f
                  xori         s2, gp, -1797
493:              lui          t1, 865887
                  sltu         s6, zero, a1
                  auipc        a7, 95323
                  slli         t3, t3, 30
                  srai         s2, s2, 3
                  xori         a6, t3, 1132
                  addi         t3, a4, -1669
                  nop
                  sra          s10, s6, a6
                  sltu         ra, t1, s8
503:              auipc        s9, 843387
                  bne          a6, t4, 521f
                  blt          s7, a2, 507f
                  blt          s5, s7, 507f
507:              slti         gp, t3, 815
                  sltu         a6, s4, a7
                  srli         a1, a3, 25
                  srai         s10, t0, 5
                  srl          s10, gp, s0
                  nop
                  andi         t2, s7, -354
                  auipc        t2, 943406
                  nop
                  auipc        a6, 911220
                  add          a6, a7, s0
                  slti         s5, s11, -794
                  srai         s3, sp, 14
                  sub          t3, s11, s6
521:              nop
                  lui          s6, 679762
                  add          s6, s2, t6
                  srli         a6, a1, 2
                  nop
                  add          a1, t4, t1
                  beq          s1, s9, 539f
                  bltu         zero, s7, 545f
                  srli         a2, s0, 6
                  sra          sp, tp, a0
                  ori          s4, sp, -1125
                  srl          t2, zero, t3
                  sub          s5, ra, s1
                  sll          ra, s0, t0
                  sub          t6, s5, s2
                  slti         zero, t1, 1477
                  add          ra, zero, a1
                  auipc        zero, 722741
539:              add          a4, a1, a7
                  or           t3, a0, a7
                  srli         t2, a6, 17
                  and          gp, s2, s7
                  sra          a6, a6, a7
                  sub          s6, t5, a0
545:              auipc        t0, 780616
                  slti         a1, s7, -1195
                  slli         s8, gp, 23
                  srl          s5, a7, a3
                  bgeu         t1, s0, 551f
                  sra          t6, t3, a5
551:              andi         sp, t5, -1008
                  sltu         ra, t0, s3
                  blt          gp, s5, 555f
                  addi         s2, t6, 1909
555:              bgeu         s6, t6, 564f
                  add          a1, ra, zero
                  ori          s1, t3, -95
                  blt          t3, gp, 574f
                  sub          a4, sp, s10
                  sra          gp, a6, s8
                  auipc        a7, 543637
                  sub          a6, t3, s7
                  sll          s5, s9, t1
564:              sub          s10, s6, s11
                  ori          a4, s1, 499
                  bne          gp, s0, 575f
                  slti         s1, a5, 1132
                  srl          zero, t1, t6
                  srai         s5, s4, 5
                  auipc        t4, 199876
                  addi         s2, t1, -789
                  srai         s2, s1, 8
                  bltu         a5, a2, 575f
574:              xor          s11, a4, s6
575:              bgeu         tp, tp, 583f
                  blt          s3, s4, 581f
                  beq          t1, s1, 579f
                  bge          t4, s1, 596f
579:              ori          s11, a3, -15
                  sra          tp, ra, ra
581:              auipc        s0, 245656
                  sub          s8, s7, s5
583:              bne          s6, ra, 596f
                  slli         t1, a5, 14
                  srl          zero, t3, s4
                  sltu         t6, zero, a4
                  beq          a6, t6, 604f
                  sltiu        gp, s0, -483
                  bne          t6, s5, 597f
                  and          s10, t0, s9
                  sltu         s6, s9, s6
                  sll          gp, t1, gp
                  add          a4, ra, sp
                  andi         t0, a3, 1528
                  sltu         s11, t6, t3
596:              bgeu         a3, a3, 598f
597:              beq          t1, s2, 606f
598:              slli         zero, s7, 4
                  xor          t1, s3, t0
                  bne          sp, s3, 608f
                  auipc        t6, 646174
                  addi         a0, t3, 206
                  auipc        a7, 130493
604:              beq          s2, a5, 622f
                  addi         s11, s0, 1860
606:              sltu         a4, sp, a3
                  addi         a6, a5, -352
608:              auipc        s4, 327457
                  add          t1, tp, a1
                  xor          a2, s10, a7
                  sltu         t2, zero, s1
                  slti         a7, s1, 586
                  auipc        zero, 63088
                  and          s5, ra, s10
                  beq          a6, t1, 618f
                  addi         zero, t4, -929
                  srai         t4, t4, 0
618:              slt          s11, a2, tp
                  addi         a7, a3, 303
                  ori          s1, s7, -1398
                  lui          gp, 749020
622:              bltu         tp, s2, 642f
                  xori         tp, gp, 808
                  srl          s1, ra, a4
                  sltu         s8, t5, ra
                  sll          a4, s4, ra
                  srl          s7, t3, s8
                  beq          t2, a2, 645f
                  srl          t2, a7, s1
                  beq          s7, t3, 641f
                  bgeu         s5, s8, 650f
                  sltu         ra, s11, t2
                  slli         s3, t2, 7
                  and          a7, s6, a4
                  bltu         s9, s6, 641f
                  lui          a6, 308455
                  addi         a4, tp, -1228
                  srl          t3, s11, a0
                  bgeu         s9, a3, 655f
                  slti         s0, s11, -1080
641:              bne          t5, gp, 645f
642:              and          t1, sp, s4
                  xori         s4, t6, -1515
                  auipc        s8, 8557
645:              nop
                  srli         zero, tp, 27
                  ori          tp, gp, -407
                  slli         s11, s8, 14
                  and          zero, s6, a5
650:              auipc        s8, 957854
                  srli         s8, zero, 0
                  slti         t0, s7, 973
                  addi         s6, s9, -1288
                  xor          s11, s4, a7
655:              bltu         s11, a1, 675f
                  sll          s10, a4, a3
                  lui          t0, 308547
                  blt          t1, s2, 664f
                  bge          s2, s5, 662f
                  bne          s3, s9, 679f
                  or           t3, sp, t3
662:              bgeu         s4, s10, 674f
                  add          ra, s10, sp
664:              sra          s4, a6, s2
                  slt          s7, s10, gp
                  lui          s1, 127583
                  auipc        a2, 615212
                  bltu         ra, s8, 669f
669:              sra          a7, t5, s2
                  andi         ra, a1, 74
                  bne          a2, t4, 673f
                  xori         s7, t5, -212
673:              srli         tp, s2, 9
674:              auipc        t6, 320869
675:              slt          t3, ra, t4
                  lui          a4, 840995
                  addi         t2, s10, 953
                  nop
679:              slti         sp, a0, 1968
                  sltiu        s0, gp, 1194
                  slli         t4, t4, 23
                  slli         s7, t2, 26
                  slti         s8, t3, 1267
                  and          a7, s1, s10
                  bgeu         s2, s9, 705f
                  andi         gp, s5, 1175
                  or           t2, a4, t0
                  add          tp, a2, t1
                  slti         s5, a0, 239
                  srl          t3, t5, s6
                  ori          t1, zero, 922
                  add          s4, a2, a7
                  bne          s7, t0, 700f
                  xor          s3, t4, s4
                  nop
                  add          s4, zero, s11
                  andi         t0, s8, -705
                  auipc        t2, 734836
                  sll          s10, s4, a1
700:              andi         s11, s4, 462
                  ori          gp, t3, -1029
                  bgeu         a4, s4, 713f
                  sll          s7, s9, t3
                  add          a7, t6, t0
705:              auipc        a1, 222532
                  xor          sp, s9, t2
                  nop
                  bgeu         s3, s6, 721f
                  or           s11, a4, a4
                  nop
                  sra          a4, s0, ra
                  andi         a7, s0, -1928
713:              nop
                  and          gp, a2, s11
                  nop
                  sll          t1, gp, tp
                  ori          s9, s5, 173
                  andi         s0, s2, -1133
                  blt          t3, s10, 723f
                  sra          s6, s7, zero
721:              nop
                  srli         t1, a0, 8
723:              sltiu        t4, s9, -644
                  srli         t4, s2, 3
                  bne          s6, t1, 745f
                  bge          s10, a4, 734f
                  nop
                  xor          s4, a1, a4
                  xori         zero, a5, -1305
                  srl          t3, t5, zero
                  nop
                  auipc        s2, 1037526
                  bge          s2, a3, 735f
734:              addi         a6, s8, 333
735:              bgeu         s0, t2, 743f
                  slt          zero, a3, s11
                  ori          a1, t3, -1571
                  slti         s8, a1, -1810
                  bltu         sp, a1, 741f
                  blt          s7, sp, 743f
741:              sll          t4, s2, s4
                  lui          s9, 672104
743:              slli         s1, a2, 26
                  auipc        s2, 1034996
745:              bltu         s11, s0, 763f
                  sll          s10, s8, a2
                  sra          a2, t3, s6
                  auipc        t2, 706777
                  bne          s4, ra, 768f
                  or           a7, a0, a1
                  beq          s4, t2, 756f
                  or           a7, s0, s8
                  srai         zero, s3, 30
                  bne          s9, a3, 772f
                  ori          t0, t0, 516
756:              bne          s9, a1, 765f
                  slti         s8, s11, -395
                  bne          a2, t5, 760f
                  bgeu         a7, a7, 775f
760:              sll          s2, t1, t6
                  srli         t2, t2, 10
                  bltu         a7, a5, 770f
763:              sltiu        a2, t6, 1701
                  slti         a4, a7, -1339
765:              slt          t0, t1, t1
                  bge          s2, a3, 778f
                  sltu         s10, ra, s7
768:              slti         t1, t6, -1539
                  srli         s2, a6, 21
770:              bne          s10, s0, 790f
                  or           s11, s7, t1
772:              bne          ra, a3, 774f
                  slt          s1, s11, a0
774:              andi         t0, a1, 1118
775:              andi         s7, a3, 1282
                  ori          t6, a6, -163
                  bne          t4, s9, 783f
778:              slt          a7, a5, t6
                  sra          ra, a6, s1
                  auipc        s8, 1042694
                  sub          s5, a7, a6
                  beq          a4, t0, 785f
783:              sltiu        a2, t4, 674
                  add          s2, s2, a0
785:              ori          t1, s6, 648
                  slti         a0, s7, 1831
                  blt          s0, s0, 806f
                  auipc        t3, 685807
                  lui          s6, 695330
790:              sub          zero, s3, t2
                  sll          a0, t2, tp
                  xori         a0, s9, -612
                  nop
                  andi         s7, t4, -30
                  srl          ra, s7, a5
                  andi         a1, s3, 1601
                  ori          a7, t6, 817
                  addi         a4, s1, 881
                  andi         a1, zero, 212
                  and          s0, a6, s4
                  slt          a7, a5, a0
                  srai         s3, s3, 13
                  slt          s0, tp, s2
                  bltu         t5, a0, 821f
                  and          a2, a1, s1
806:              lui          tp, 418472
                  andi         s3, t4, 970
                  sub          a4, t4, t0
                  or           t3, s6, s11
                  bltu         s0, s2, 811f
811:              slli         t6, s4, 8
                  sra          a6, ra, s2
                  xori         a0, a3, -93
                  add          a7, a5, s2
                  bltu         gp, a4, 835f
                  lui          t3, 742811
                  sll          a4, a0, t0
                  slt          s0, s9, s6
                  addi         t3, a7, -1762
                  auipc        s7, 340811
821:              blt          t5, s11, 827f
                  bge          t5, ra, 839f
                  nop
                  bge          s9, a3, 831f
                  bltu         t6, s9, 834f
                  nop
827:              xori         s9, s3, 168
                  srai         a7, t3, 13
                  sll          sp, gp, s3
                  srl          a1, s4, t6
831:              slt          t4, s0, a2
                  sub          s11, s1, s3
                  slli         s11, t1, 21
834:              ori          zero, s1, 1657
835:              and          s9, sp, sp
                  bgeu         tp, zero, 838f
                  add          s0, a2, s10
838:              srli         s11, a1, 13
839:              ori          a0, t3, 1995
                  blt          a1, t4, 860f
                  slti         t3, ra, 110
                  xori         ra, a1, 813
                  nop
                  or           s2, t1, t0
                  slt          a4, gp, t2
                  srl          s2, s4, t0
                  add          s5, t2, s1
                  bge          s5, s4, 865f
                  srl          s10, t5, t0
                  slti         a6, a5, -898
                  srai         s7, tp, 22
                  or           gp, s8, a5
                  srai         a7, a7, 2
                  sra          a6, a0, s7
                  bgeu         tp, tp, 863f
                  bltu         s3, sp, 875f
                  nop
                  lui          s0, 462185
                  auipc        tp, 463125
860:              sltiu        s6, s6, 632
                  blt          t6, t3, 879f
                  bge          t5, s11, 871f
863:              sub          s10, a5, a5
                  lui          s1, 461795
865:              bltu         s2, s6, 870f
                  bgeu         a3, s11, 872f
                  bgeu         s6, gp, 870f
                  blt          a5, s0, 877f
                  andi         a4, s3, -856
870:              bne          a5, s9, 886f
871:              and          s4, zero, s9
872:              sll          sp, s10, s4
                  srai         s9, gp, 7
                  sltu         s0, gp, ra
875:              sltiu        t2, t6, -150
                  slli         t0, t0, 28
877:              ori          s2, s11, 499
                  sltiu        t4, t4, 1651
879:              sltiu        s4, s2, 532
                  bgeu         a5, t3, 900f
                  srl          t2, a1, t0
                  bltu         a5, t0, 900f
                  lui          t1, 83967
                  slli         t2, tp, 0
                  slt          t3, a7, s6
886:              ori          t3, a2, 491
                  slt          a6, zero, s9
                  sra          a0, t6, a1
                  bltu         s1, s0, 908f
                  andi         sp, s5, -119
                  bge          a0, tp, 904f
                  bgeu         a5, s8, 899f
                  slt          a4, s3, a7
                  srai         a2, t1, 5
                  sltiu        a0, s5, -284
                  sltu         s10, zero, a2
                  bgeu         t2, ra, 898f
898:              or           s11, gp, s4
899:              andi         s6, s2, 853
900:              nop
                  sltu         s5, a6, t6
                  xor          t3, t1, s11
                  srai         t1, s4, 12
904:              srl          a4, s7, gp
                  sll          t6, t6, a5
                  bne          s1, t6, 914f
                  srai         gp, a0, 14
908:              addi         s1, s1, 1175
                  bltu         s4, t1, 912f
                  srl          s2, ra, s2
                  sll          s11, a4, t6
912:              sll          s9, a2, t5
                  beq          a3, a1, 924f
914:              bne          t0, t2, 920f
                  add          s7, ra, t5
                  blt          a0, a6, 928f
                  bgeu         s1, zero, 937f
                  nop
                  nop
920:              lui          tp, 133
                  lui          s3, 421413
                  sll          s9, a2, s10
                  slti         t6, s8, -1254
924:              xori         zero, a0, -1446
                  addi         a6, gp, 284
                  lui          s6, 993947
                  bgeu         tp, zero, 929f
928:              sll          gp, tp, zero
929:              xor          t3, s2, gp
                  bgeu         t2, t5, 947f
                  slli         sp, s9, 10
                  bne          s3, a3, 936f
                  bltu         t0, s7, 935f
                  add          gp, t5, zero
935:              sll          t4, ra, t2
936:              lui          t4, 273852
937:              sll          s8, t5, s8
                  auipc        s3, 524204
                  beq          ra, a7, 947f
                  and          a6, s7, sp
                  bge          s1, s6, 943f
                  beq          a4, s0, 960f
943:              slti         s4, gp, -1975
                  bltu         a5, sp, 952f
                  lui          t4, 72573
                  srli         a0, a4, 14
947:              sltu         s1, a5, s4
                  sra          t3, a3, gp
                  sltu         s9, s7, ra
                  bgeu         s7, a0, 968f
                  and          a0, s0, gp
952:              andi         a2, s11, -1597
                  ori          s1, s3, 2025
                  bne          s2, s11, 973f
                  slli         s4, a3, 20
                  addi         a6, s7, 1786
                  xor          s4, tp, s6
                  xori         t1, s9, -1117
                  blt          zero, s3, 970f
960:              bltu         s10, s6, 967f
                  slli         a2, s4, 18
                  addi         s5, a3, 1953
                  bne          s5, s0, 979f
                  or           t0, zero, s9
                  slti         a0, t3, 501
                  sra          sp, a3, t6
967:              nop
968:              blt          a7, s1, 988f
                  slli         t6, s4, 23
970:              bltu         gp, t0, 975f
                  sra          t0, t6, t1
                  slt          t3, a1, t1
973:              srai         t2, tp, 4
                  slt          a7, t3, s3
975:              bltu         a4, t1, 992f
                  bgeu         t2, s11, 980f
                  bltu         t4, s9, 990f
                  nop
979:              srai         s8, t2, 21
980:              slli         t2, gp, 6
                  bltu         a4, s0, 1000f
                  bgeu         s6, s6, 1002f
                  sub          t1, t1, a3
                  sll          sp, tp, s1
                  srai         s2, a3, 24
                  lui          s1, 869144
                  beq          a5, a6, 1007f
988:              and          t6, a5, s1
                  add          s11, s11, a4
990:              sub          t0, a1, s2
                  addi         s11, a5, 1393
992:              sub          a7, t6, gp
                  bgeu         tp, a7, 1001f
                  srli         a2, t3, 17
                  auipc        s5, 707023
                  bge          t4, s5, 997f
997:              bltu         s7, s3, 1009f
                  or           s7, a1, tp
                  and          t3, a7, t0
1000:             bne          a0, a1, 1003f
1001:             or           s5, s8, a0
1002:             bltu         a5, a1, 1011f
1003:             slti         s4, s11, 508
                  slt          s11, a4, s0
                  addi         s3, a3, -656
                  sra          a1, s7, a5
1007:             nop
                  auipc        s2, 799864
1009:             blt          t1, gp, 1011f
                  bltu         a7, a4, 1019f
1011:             bne          s6, s4, 1017f
                  ori          s10, t0, -1529
                  lui          a6, 23273
                  slt          a2, s4, a7
                  lui          sp, 157283
                  bne          a6, s10, 1018f
1017:             srai         s10, a4, 14
1018:             addi         gp, a1, 1894
1019:             sltiu        a2, t3, -846
                  sltu         t6, a1, s5
                  blt          s1, a4, 1023f
                  srai         s7, a5, 4
1023:             auipc        t2, 473298
                  srai         t0, s6, 11
                  blt          ra, sp, 1028f
                  nop
                  bge          t2, t2, 1029f
1028:             sltu         t0, zero, a6
1029:             bge          a7, zero, 1035f
                  bgeu         a6, t5, 1047f
                  bgeu         s5, t6, 1039f
                  add          t6, t4, a0
                  addi         t1, s9, -1565
                  sra          gp, a3, ra
1035:             blt          a7, s8, 1046f
                  andi         a2, a3, -879
                  slti         s11, a0, -1324
                  srl          s1, a5, a5
1039:             slli         t6, t3, 28
                  blt          ra, a2, 1049f
                  slli         s9, s4, 25
                  addi         sp, a4, -565
                  sub          zero, t3, a4
                  bltu         t1, a1, 1052f
                  nop
1046:             srli         t0, s3, 4
1047:             beq          s11, s11, 1051f
                  bgeu         zero, t4, 1056f
1049:             add          t1, tp, a3
                  sra          t1, a6, s2
1051:             xor          a0, sp, a4
1052:             blt          s5, s0, 1065f
                  xori         s2, t4, 106
                  slti         s7, s4, 1553
                  slt          zero, t5, s6
1056:             sltiu        a0, a5, 1335
                  sltu         a6, s1, s8
                  bge          t2, a2, 1078f
                  xori         a6, a4, 1175
                  and          s7, ra, s11
                  bgeu         s10, s6, 1066f
                  sltiu        s8, s8, 1301
                  xori         s0, a2, -162
                  srl          t6, t2, a3
1065:             sll          a0, s11, s6
1066:             beq          t5, a3, 1068f
                  xor          a7, zero, a6
1068:             beq          s3, s3, 1086f
                  xori         t6, s9, -1167
                  srli         tp, s4, 24
                  addi         t6, gp, 588
                  bltu         t5, zero, 1075f
                  sltu         s4, s3, s2
                  bne          zero, t2, 1077f
1075:             andi         s3, zero, 1919
                  srl          s4, t2, s5
1077:             addi         t1, a5, -571
1078:             and          s3, a1, ra
                  slt          a1, zero, a0
                  sll          t2, a7, s2
                  nop
                  sra          s4, a6, sp
                  bltu         s8, s6, 1102f
                  beq          t6, s5, 1096f
                  blt          s4, t0, 1091f
1086:             nop
                  auipc        t3, 96679
                  bltu         a2, s0, 1097f
                  bgeu         a4, s0, 1106f
                  sltiu        s9, s11, 592
1091:             or           s6, gp, a1
                  blt          a3, s8, 1109f
                  slti         t4, a1, 167
                  srai         t2, gp, 17
                  slli         s4, s5, 22
1096:             sltiu        s10, t5, -1539
1097:             and          sp, s2, a2
                  lui          t6, 748396
                  andi         tp, s7, 1806
                  sub          zero, s3, s7
                  bne          sp, s8, 1108f
1102:             srai         s1, a7, 30
                  add          t0, t4, s1
                  sltiu        s3, t3, -790
                  bne          t5, s4, 1106f
1106:             slli         gp, a7, 20
                  andi         t2, t2, -1238
1108:             slli         ra, gp, 9
1109:             slli         s7, a5, 5
                  addi         a0, s7, -919
                  and          s2, t2, zero
                  sub          s5, t5, t3
                  beq          a0, s9, 1124f
                  andi         s0, t4, -668
                  beq          s2, s11, 1124f
                  blt          t0, s9, 1122f
                  or           s4, s10, s9
                  xor          t3, sp, t3
                  srli         zero, t2, 18
                  bgeu         a0, a4, 1122f
                  or           gp, t4, s4
1122:             srai         s1, t6, 14
                  sub          a7, tp, s9
1124:             lui          s11, 314222
                  xor          s1, a6, s11
                  lw           tp, 4(a5)
                  srai         s10, s11, 1
                  slli         a6, s0, 19
                  add          a2, s7, s11
                  ori          a2, s11, -308
                  sra          t3, s0, s9
                  addi         a5, a5, 12
                  srli         s6, s6, 8
                  srl          ra, tp, a6
                  slli         s1, s8, 30
                  lui          s2, 316633
1542:             addi x20, x4, 1
1542:             jalr x20, x20, 0
sub_8:            srl          a6, s7, t3
                  addi         a5, a5, -64
                  sub          t1, a7, s7
                  sw           tp, 4(a5)
                  sll          zero, t1, gp
                  andi         t1, s3, 752
                  srai         s0, s11, 19
                  add          a1, t0, t0
                  nop
                  la           s6, sub_10
                  andi         a0, s11, 794
                  nop
                  addi         s6, s6, -878
                  srl          t1, a2, s5
                  bltu         s1, s9, sub_8_j9 #branch to jump instr
                  andi         a6, a3, 930
sub_8_j9:         jalr         tp, s6, 879 #jump sub_8 -> sub_10
                  and          a6, a6, s9
                  sll          s1, a0, s6
                  sltu         s8, t3, t4
                  xori         s0, t0, -1881
                  andi         a4, t6, 189
                  sra          ra, s5, t4
sub_8_j10:        jal          tp, sub_10 #jump sub_8 -> sub_10
                  andi         s4, t5, 863
                  slt          a6, a4, s3
                  or           s8, a2, a6
                  slt          sp, s6, s9
                  andi         s8, a3, -1557
                  nop
                  andi         s1, a7, 1000
sub_8_j11:        jal          tp, sub_9 #jump sub_8 -> sub_9
                  blt          a0, t4, 4f
                  nop
                  bgeu         s1, s0, 4f
                  andi         s1, t1, -649
4:                slli         s6, t3, 8
                  beq          t4, t4, 22f
                  lui          a7, 998856
                  sra          a0, s8, s11
                  sltu         t6, s7, t3
                  and          s6, gp, s9
                  bne          a6, t4, 27f
                  and          t0, a6, t3
                  srai         s11, s4, 16
                  bltu         s10, s2, 17f
                  addi         zero, s1, -489
                  bne          a0, s0, 30f
                  xori         s1, s9, 194
17:               slti         s10, s11, -1567
                  blt          s3, s2, 19f
19:               bne          a3, s8, 30f
                  andi         a1, s10, -948
                  sltu         a0, ra, a4
22:               bge          a5, a1, 30f
                  sll          s10, t3, t2
                  srl          t6, t5, a3
                  add          t2, a4, t6
                  srai         s3, tp, 26
27:               bgeu         s3, s9, 30f
                  slti         s2, a7, -986
                  auipc        sp, 328319
30:               add          s3, t3, s4
                  sra          t6, s9, ra
                  auipc        t4, 850676
                  sltiu        a4, s10, -155
                  auipc        a2, 861695
                  lw           tp, 4(a5)
                  addi         a5, a5, 64
                  slt          sp, s10, t6
                  srl          s8, t0, a6
71:               addi x27, x4, 1
71:               jalr x27, x27, 0
sub_3:            and          s5, a6, tp
                  sra          a0, s9, s4
                  addi         a5, a5, -40
                  srli         s9, s1, 31
                  sltu         a7, s2, s4
                  sw           tp, 4(a5)
                  xor          a7, s4, s7
                  or           s11, zero, a0
                  lui          a6, 726236
                  sll          t0, t0, a7
                  and          ra, a7, s2
                  ori          a1, s6, 1599
                  la           s0, sub_5
                  ori          s11, gp, -1135
                  addi         s0, s0, 100
                  sra          s7, t1, ra
sub_3_j5:         jalr         tp, s0, -100 #jump sub_3 -> sub_5
                  slli         gp, t0, 17
                  xor          a2, s9, s1
                  xor          s7, zero, ra
                  srl          s0, s7, ra
                  sltu         s11, t1, s5
                  add          t3, t5, s8
                  sra          t0, t3, s1
                  andi         t0, sp, 1697
                  bgeu         s7, a2, 19f
                  xor          s0, t1, tp
                  slli         s6, a7, 29
                  ori          t2, s4, 1798
                  or           a4, t6, t1
                  slli         t1, t3, 24
                  sra          s0, sp, tp
                  slt          t6, s4, s7
                  sltiu        t3, ra, 542
                  blt          gp, a1, 27f
                  add          s10, a3, a5
19:               sra          s2, a0, t5
                  andi         t2, s11, -728
                  auipc        gp, 352648
                  bltu         t0, t4, 35f
                  srl          s10, a0, a2
                  sll          s6, s1, t0
                  sll          sp, tp, a4
                  sra          s4, a6, a4
27:               slti         s7, s3, 2000
                  slti         a1, s1, 1787
                  or           s10, t4, s9
                  auipc        t4, 479555
                  bltu         a3, t3, 40f
                  xori         s5, s10, 1440
                  blt          s10, s7, 44f
                  addi         t0, a2, -899
35:               addi         sp, zero, 1457
                  add          s4, a3, a5
                  bltu         a5, s9, 57f
                  lui          tp, 517580
                  blt          s5, s4, 43f
40:               slti         gp, sp, 1622
                  srl          gp, tp, t0
                  nop
43:               slli         zero, sp, 10
44:               bgeu         s6, t1, 47f
                  or           t4, s0, s0
                  slli         s7, s1, 22
47:               sll          t6, gp, t1
                  lui          zero, 563169
                  sltiu        t3, ra, -1032
                  andi         s4, a4, -755
                  xor          a0, s7, a4
                  bne          s2, s10, 55f
                  and          a7, s5, a6
                  bgeu         zero, s10, 72f
55:               srai         a6, a3, 9
                  xor          s8, a2, t4
57:               xor          s0, t6, s3
                  auipc        t6, 59386
                  srli         s0, a1, 26
                  sltiu        s10, a3, 274
                  bne          s7, s0, 65f
                  sub          a6, s7, a4
                  or           a0, t5, s0
                  auipc        s11, 568425
65:               xor          a6, a6, t1
                  bgeu         gp, ra, 72f
                  bne          a5, t1, 70f
                  sub          s11, gp, gp
                  nop
70:               auipc        s11, 585542
                  or           a6, a0, zero
72:               slti         a4, gp, 1018
                  blt          t1, a7, 77f
                  srai         s11, gp, 27
                  xor          ra, a2, s5
                  nop
77:               andi         a4, s7, 170
                  addi         s2, s10, 1024
                  lui          s0, 99821
                  sll          s3, s3, s6
                  nop
                  sll          a7, s11, a6
                  and          a7, s3, s6
                  slli         t6, s1, 7
                  sll          s0, s6, a4
                  sra          t0, a3, a4
                  bne          s2, s9, 88f
88:               sltu         sp, a3, s11
                  slli         s3, a0, 12
                  ori          s6, sp, -801
                  sltiu        a7, a0, -1023
                  sub          s1, gp, a2
                  slti         sp, a7, 1898
                  and          a7, s5, s3
                  lui          a6, 873380
                  or           a6, s4, a2
                  and          t1, t4, tp
                  srai         t0, s3, 23
                  sll          a1, zero, s10
                  slli         ra, a2, 26
                  slt          s6, a3, a0
                  sra          s2, tp, a3
                  andi         t0, s1, 1545
                  sltiu        s8, s0, 1239
                  addi         s1, s5, -915
                  slli         s0, a1, 12
                  bltu         a5, s0, 112f
                  beq          t4, a7, 111f
                  bgeu         s6, t0, 112f
                  lui          s5, 64095
111:              andi         a7, a5, 1762
112:              lui          t0, 826831
                  xor          s2, t6, t6
                  lw           tp, 4(a5)
                  slti         s0, a7, 1188
                  and          a1, a3, t3
                  slti         a2, s4, 1912
                  addi         a5, a5, 40
                  addi         s6, s0, -1629
137:              addi x5, x4, 1
137:              jalr x5, x5, 0
sub_1:            sltiu        s2, s2, 1497
                  addi         a5, a5, -36
                  sw           tp, 4(a5)
                  xor          a4, t0, t4
                  slli         sp, s8, 31
                  ori          a1, a3, 1532
                  auipc        s6, 353650
                  sra          s4, s6, s0
                  nop
                  srl          a1, s5, a7
                  la           sp, region_0+1121 #start riscv_load_store_rand_instr_stream_0
                  lhu          s4, -15(sp)
                  lw           t0, -1(sp)
                  lh           a0, 15(sp)
                  lbu          s10, -14(sp)
                  nop
                  addi         t1, s6, -892
                  lbu          zero, -7(sp)
                  lb           s9, -3(sp)
                  srl          s3, t3, a2
                  sra          s0, t4, s8
                  sb           a6, -3(sp)
                  srl          s2, a5, t6
                  lb           a4, 13(sp)
                  lhu          t3, -7(sp)
                  sltiu        s3, a2, 1397
                  lhu          zero, 13(sp)
                  lh           s1, -13(sp)
                  lbu          a6, 7(sp)
                  and          s8, s2, a5
                  add          a0, ra, t5
                  sb           a2, 0(sp)
                  srl          s4, s3, t1
                  or           s10, s6, a6
                  sltiu        t3, tp, -607
                  sb           zero, 6(sp)
                  slti         t1, a2, -340
                  lh           gp, 1(sp)
                  lh           tp, 11(sp)
                  sra          s7, a5, t2
                  sltu         t1, ra, s3
                  srli         t1, a1, 3
                  lbu          s3, -6(sp)
                  lhu          gp, 13(sp)
                  lb           a0, -3(sp)
                  or           tp, s3, t5
                  lui          gp, 353763
                  sb           t2, -12(sp)
                  sh           a5, 9(sp)
                  lb           s7, 5(sp)
                  lbu          a4, -6(sp)
                  lbu          tp, 15(sp)
                  sra          t6, s4, s2
                  lhu          s2, 13(sp)
                  and          t2, zero, t6
                  lbu          s2, 6(sp)
                  sltiu        t3, t3, 683
                  lbu          a6, 0(sp)
                  lbu          a4, 12(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+24 #start riscv_load_store_rand_instr_stream_2
                  sb           t0, -3(sp)
                  lb           t0, 49(sp)
                  lb           a1, 42(sp)
                  sltiu        t4, a5, 671
                  and          t6, tp, s2
                  srl          a1, tp, s6
                  sub          s1, a3, t0
                  lhu          t4, 26(sp)
                  lb           a0, 63(sp)
                  sh           gp, 56(sp)
                  lbu          s10, 48(sp)
                  sh           s1, -20(sp)
                  slti         t2, ra, -1119
                  srli         tp, t6, 11
                  lb           a1, 13(sp)
                  sra          ra, ra, gp
                  sw           a2, 40(sp)
                  or           t4, gp, s4
                  lh           a6, 60(sp)
                  sb           s11, 43(sp)
                  lh           gp, -20(sp)
                  andi         s8, a2, -937
                  and          s10, a0, t3
                  sb           a4, 62(sp)
                  lbu          s1, 63(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t0, region_1+800 #start riscv_load_store_rand_instr_stream_3
                  lbu          ra, -7(t0)
                  lh           a1, 12(t0)
                  sb           t1, 3(t0)
                  lhu          t2, -16(t0)
                  sb           t3, -1(t0)
                  lh           s1, 14(t0)
                  lhu          s9, 14(t0)
                  lbu          tp, 13(t0)
                  lb           t1, 11(t0)
                  lhu          s9, 2(t0)
                  lb           s8, 1(t0)
                  srli         zero, s0, 12
                  addi         a7, s2, 440
                  addi         s10, s9, -95
                  sll          s8, t4, t1
                  sra          a7, s11, t3
                  lbu          s8, 6(t0)
                  lbu          s0, 3(t0)
                  slli         s8, s0, 7
                  sb           s8, 14(t0)
                  slli         s10, s7, 27
                  srai         t6, gp, 19
                  srli         s11, s8, 20
                  xori         s0, t4, -622
                  sb           t1, -13(t0)
                  sll          a4, s5, s5
                  andi         zero, t1, 1765
                  lbu          a0, -6(t0)
                  and          s7, a6, a1
                  lbu          s0, 4(t0)
                  sw           s4, -8(t0)
                  lbu          sp, 14(t0)
                  lbu          t1, -4(t0)
                  lb           gp, -9(t0)
                  sh           a5, -8(t0)
                  andi         tp, s3, 348
                  add          s7, s3, gp
                  lb           s9, 9(t0)
                  sb           t5, 13(t0)
                  addi         a2, t0, 1430
                  addi         s8, t3, -56
                  lbu          tp, 10(t0)
                  and          a6, s4, s7
                  slti         a0, s4, 1329
                  srl          tp, t1, s6
                  sb           sp, 11(t0)
                  add          t6, s1, t3
                  or           sp, t2, s4
                  sub          s6, zero, a0
                  lb           sp, 1(t0) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+645 #start riscv_load_store_rand_instr_stream_5
                  lbu          a0, 172(sp)
                  nop
                  ori          s4, s7, -1216
                  and          s10, t3, s9
                  srai         gp, s0, 20
                  lbu          s4, -116(sp)
                  sh           s3, -67(sp)
                  lb           s8, -175(sp)
                  slt          a0, a4, s7
                  slt          a7, t5, s0
                  srli         zero, a0, 25
                  lbu          s2, -125(sp)
                  lb           s10, -24(sp)
                  add          s10, s0, t1
                  lb           s8, 212(sp)
                  sb           s0, -184(sp)
                  sb           s11, -135(sp)
                  auipc        a1, 131985
                  sll          a0, sp, s5
                  add          a1, s9, a3
                  lb           s1, 201(sp)
                  sb           t6, -210(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s8, region_1+527 #start riscv_load_store_rand_instr_stream_4
                  lbu          ra, 430(s8)
                  sb           t5, 1134(s8)
                  auipc        t2, 629618
                  lui          ra, 316648
                  sra          sp, a0, s10
                  sb           gp, -36(s8)
                  sh           t3, -355(s8)
                  lbu          a0, 1108(s8)
                  addi         s11, t1, 1895
                  lb           s4, 1021(s8)
                  andi         s3, s4, -165
                  lb           s9, 140(s8)
                  add          s3, t0, a5
                  lbu          t2, 384(s8)
                  lb           sp, 339(s8)
                  xor          s1, a5, a2
                  sb           s7, 149(s8)
                  sb           a7, 800(s8)
                  lhu          a1, -471(s8)
                  lbu          s10, -284(s8)
                  lh           s7, 671(s8)
                  sw           t6, 673(s8)
                  lb           s10, 343(s8)
                  auipc        t6, 162477
                  lb           s1, 819(s8)
                  sb           s0, -164(s8)
                  sra          t3, ra, a3
                  ori          a6, a5, -361
                  sb           t6, 100(s8)
                  sh           zero, 347(s8)
                  lbu          s7, -272(s8)
                  lh           gp, 495(s8)
                  ori          s3, s3, 971
                  sltiu        gp, a4, -109
                  sh           s11, 719(s8)
                  sll          s0, t0, a6
                  lh           t6, -375(s8)
                  lb           a1, -169(s8)
                  sltu         t2, t2, ra
                  lb           a7, 475(s8) #end riscv_load_store_rand_instr_stream_4
                  andi         s5, a7, 1066
                  bltu         s2, s7, 14f
                  bltu         s4, s5, 14f
                  sra          zero, s8, gp
                  bltu         gp, t0, 15f
                  blt          a2, tp, 21f
                  add          t0, s9, tp
                  srai         s8, s1, 11
                  addi         a7, tp, -1306
                  add          s8, t1, t0
                  srl          a7, t2, t1
                  bne          t2, a6, sub_1_j2 #branch to jump instr
                  or           t1, sp, ra
                  srai         s8, s8, 31
                  ori          s10, s8, 1980
                  srli         s8, s9, 25
                  sltu         a7, s11, t2
                  or           s3, t0, t2
                  add          a1, s9, gp
sub_1_j2:         jal          tp, sub_4 #jump sub_1 -> sub_4
                  add          a6, a7, a1
                  slt          t1, s1, zero
                  andi         ra, s7, 1854
                  andi         s1, a0, 1608
                  sltiu        gp, a5, -506
                  xori         s2, s4, -817
14:               blt          s2, s8, 28f
15:               lui          zero, 710735
                  ori          tp, s6, 1161
                  sltiu        s1, a6, 1289
                  and          ra, s2, zero
                  srl          s8, s6, s6
                  sub          t4, t0, s2
21:               auipc        t6, 1002840
                  srl          s7, t3, a2
                  blt          a7, gp, 37f
                  xori         s10, t6, 553
                  sltu         s4, a3, t1
                  srai         a0, s7, 30
                  bne          t1, s11, 47f
28:               bne          s0, s11, 30f
                  xor          zero, t0, s0
30:               or           s4, a7, s1
                  bltu         a7, s11, 47f
                  beq          t6, s1, 33f
33:               blt          s4, ra, 52f
                  bgeu         t4, a2, 44f
                  bne          a4, sp, 43f
                  lui          s9, 888311
37:               bne          s6, a6, 42f
                  add          s7, t5, a7
                  sltu         s3, s5, s0
                  lui          s10, 16403
                  sll          s3, t0, t1
42:               slt          a1, sp, s3
43:               slti         a7, a3, -592
44:               sra          s9, a5, a1
                  slti         t4, a0, -1197
                  auipc        t2, 802843
47:               xori         t1, a0, 497
                  slti         t2, s5, 276
                  sltiu        s3, t4, 1372
                  slli         t6, a0, 23
                  srai         s6, s6, 23
52:               xor          t6, a6, t0
                  addi         s4, t4, -1337
                  and          a1, a4, s11
                  and          t1, ra, a3
                  slti         s3, a7, 610
                  beq          a1, s5, 62f
                  beq          t1, gp, 70f
                  xori         s6, sp, -1496
                  xori         s5, t4, 1280
                  beq          a3, a2, 71f
62:               or           t1, t0, a0
                  and          s4, s1, t6
                  sll          s1, s2, s4
                  sll          sp, a4, t3
                  nop
                  bge          t4, sp, 73f
                  bgeu         s4, s0, 85f
                  bne          s11, zero, 71f
70:               xor          s6, a7, a1
71:               sra          t1, ra, t4
                  slti         s2, a6, -1122
73:               nop
                  srai         a2, s0, 14
                  or           t4, s3, s0
                  bgeu         s1, a2, 83f
                  sltu         s0, a2, s10
                  andi         s9, a6, 1358
                  sll          s6, t1, zero
                  xor          a7, t2, t1
                  srl          ra, s8, a2
                  xori         t0, s2, -1525
83:               bltu         s8, s0, 97f
                  bltu         tp, s7, 95f
85:               lui          tp, 71599
                  bne          tp, t0, 103f
                  addi         t1, s6, 39
                  blt          s5, t1, 100f
                  nop
                  sub          a1, sp, a7
                  srai         gp, a3, 14
                  ori          t3, ra, 1675
                  add          s6, s2, a5
                  slli         zero, t0, 11
95:               srl          a2, s3, sp
                  slli         gp, a2, 6
97:               sll          gp, t4, t1
                  nop
                  srai         a2, t1, 22
100:              sra          s3, zero, t6
                  sra          t6, s6, s2
                  xor          zero, a0, s9
103:              bgeu         s3, a3, 122f
                  sra          a1, a2, a3
                  bge          t2, s2, 111f
                  sra          t4, a7, a7
                  and          t4, s5, t4
                  srli         s3, a0, 20
                  slti         s4, a0, 83
                  or           ra, a2, s0
111:              sub          s6, s5, t3
                  slt          t3, a7, s8
                  addi         t4, a6, 1927
                  xori         ra, a7, -1642
                  srai         t4, gp, 24
                  lui          a0, 910372
                  slti         s7, ra, -95
                  srli         s4, t2, 24
                  slli         a7, s4, 30
                  bltu         a3, tp, 132f
                  bgeu         ra, s9, 138f
122:              bne          a2, a4, 132f
                  sub          t3, s7, s0
                  srai         a1, s8, 10
                  nop
                  ori          s5, s2, 768
                  sra          sp, t5, s11
                  sub          s5, tp, s6
                  nop
                  slt          s3, s0, s6
                  and          t0, ra, s0
132:              sltiu        a2, s3, -1973
                  lui          s3, 834339
                  sltu         t4, s2, t5
                  lui          s1, 731668
                  sub          t2, s9, s6
                  sll          s9, t5, t6
138:              beq          s4, zero, 139f
139:              srli         ra, a3, 18
                  xor          s7, s11, s9
                  sub          s0, s2, zero
                  srai         t4, a3, 3
                  srl          s6, a3, a4
                  bge          s4, t6, 154f
                  bltu         a3, t4, 161f
                  add          s9, a3, s2
                  blt          t2, t1, 154f
                  bltu         a1, s6, 160f
                  beq          s7, t4, 155f
                  bne          a0, tp, 152f
                  slt          zero, t4, t3
152:              lui          zero, 579913
                  beq          a4, t3, 161f
154:              or           s10, a6, s2
155:              srli         a2, tp, 12
                  slti         t3, a6, -918
                  auipc        a4, 356305
                  sltu         gp, s7, s10
                  bge          s0, s11, 169f
160:              sltiu        a4, gp, -730
161:              sub          s10, s0, s5
                  add          t0, s1, s9
                  srai         s2, s9, 3
                  bne          sp, t6, 181f
                  sltu         t0, a3, sp
                  sll          s5, t5, s7
                  sra          t2, t3, s11
                  bltu         t0, t1, 187f
169:              xori         s10, a5, -1855
                  bge          gp, t0, 175f
                  ori          s2, t6, -1992
                  xori         t1, a1, -814
                  sub          t4, s3, s11
                  srai         s5, a5, 2
175:              bge          s10, s1, 186f
                  bltu         s4, s6, 193f
                  auipc        a1, 849954
                  lui          t3, 183874
                  srli         a4, ra, 4
                  xori         s10, s1, 4
181:              lui          s1, 510195
                  srl          a4, s4, t5
                  ori          s7, a5, -379
                  bge          s9, t3, 198f
                  and          a1, a0, s3
186:              or           s2, s1, s1
187:              sra          a2, t1, s8
                  srli         t1, s7, 29
                  srai         tp, s4, 26
                  and          s0, s6, tp
                  sltiu        sp, sp, -1483
                  xori         t3, sp, 2016
193:              addi         ra, s8, 439
                  sltu         s9, s3, sp
                  srli         s0, a0, 16
                  beq          t6, s5, 210f
                  sra          s2, sp, s11
198:              ori          s6, t2, -1257
                  slti         s4, s10, 1027
                  bne          a2, s2, 211f
                  sll          a6, t3, t1
                  slli         s9, s2, 19
                  bne          s6, t1, 217f
                  nop
                  srli         tp, zero, 5
                  xor          s0, t4, s5
                  xor          s7, s4, s0
                  blt          s6, zero, 213f
                  sll          a7, ra, a0
210:              bge          t2, a2, 230f
211:              auipc        t4, 608449
                  add          a7, s4, a3
213:              lui          s1, 930359
                  bgeu         tp, s2, 226f
                  xori         s11, zero, -2034
                  sltu         t6, a5, s0
217:              slli         s0, ra, 17
                  slli         s8, tp, 29
                  sra          t4, a0, tp
                  xor          s2, s7, t2
                  andi         t1, s4, 382
                  andi         t1, a2, 1727
                  srli         gp, t0, 28
                  add          ra, t2, a4
                  and          a2, t1, s3
226:              srl          a4, s3, t1
                  or           t6, ra, a0
                  srai         s6, a2, 31
                  slli         a0, s7, 24
230:              slt          t3, zero, t0
                  srai         s7, s2, 11
                  sub          s8, sp, t5
                  blt          sp, ra, 246f
                  sub          t6, t2, a1
                  slti         s4, s2, 1302
                  sra          s9, a5, s1
                  nop
                  add          s11, s2, a6
                  add          t6, s8, t5
                  srai         t1, tp, 27
                  srli         a1, a2, 17
                  srli         s11, a4, 4
                  sub          zero, sp, s10
                  bne          s2, s8, 254f
                  sltiu        s3, s6, 1931
246:              sub          s8, a5, a6
                  sra          s11, s6, a1
                  xori         t4, a6, 1411
                  sltu         s10, s10, s6
                  bltu         s9, t0, 269f
                  sub          t3, gp, t1
                  add          t3, s10, s2
                  nop
254:              bltu         zero, s8, 271f
                  srai         s3, a4, 18
                  or           s0, tp, s0
                  lui          s3, 35924
                  slt          s7, tp, t6
                  sra          s4, t4, s9
                  slt          sp, t1, a6
                  sra          ra, t2, t3
                  sll          t4, t6, s5
                  or           a0, a1, t2
                  srai         s3, a2, 5
                  lui          t0, 455000
                  auipc        sp, 15094
                  addi         tp, a2, -164
                  sll          t2, s0, tp
269:              andi         t1, t0, -1654
                  nop
271:              slli         s10, s9, 5
                  sub          a4, s2, t0
                  slt          a7, a6, t3
                  beq          ra, tp, 290f
                  or           t0, a0, sp
                  slt          s7, a5, s9
                  slt          a2, s5, t2
                  bltu         a5, s10, 290f
                  lui          t4, 281580
                  sub          s3, zero, gp
                  bltu         s7, t2, 287f
                  srai         s10, a4, 22
                  add          s5, s9, a7
                  sltiu        t3, zero, -1153
                  lui          s3, 932802
                  bltu         a4, a1, 288f
287:              xor          tp, zero, t5
288:              srl          s9, t2, a0
                  slt          t1, s3, s3
290:              srli         s5, a6, 14
                  bgeu         s0, s6, 303f
                  and          t2, s8, a4
                  blt          s6, a1, 307f
                  bltu         s5, gp, 296f
                  sra          t0, s4, s7
296:              srai         t0, t2, 30
                  slti         a2, t5, 806
                  srai         s0, t5, 6
                  sll          a7, s0, s7
                  slt          a6, s5, sp
                  bge          gp, a5, 317f
                  add          t1, t3, s8
303:              ori          a4, t3, -1566
                  xori         sp, s9, -1326
                  bge          a1, a3, 313f
                  ori          a1, a3, 524
307:              add          s9, s1, s11
                  blt          a5, s3, 322f
                  nop
                  sltiu        a7, t2, -985
                  sltiu        gp, ra, -1391
                  add          s10, s1, a1
313:              srl          sp, t0, zero
                  bltu         a5, tp, 315f
315:              andi         a6, t3, 1425
                  sll          a2, ra, ra
317:              or           s5, s0, a3
                  ori          a1, tp, 1958
                  sra          zero, t3, zero
                  slti         a2, sp, -1438
                  andi         s7, a5, -783
322:              bne          sp, t0, 339f
                  bne          t6, sp, 335f
                  nop
                  slli         gp, t0, 21
                  bgeu         s0, a3, 337f
                  xor          s3, t4, t6
                  bne          a6, a2, 347f
                  sltu         sp, t2, t5
                  xor          t6, s0, t6
                  bgeu         s5, a3, 338f
                  nop
                  slli         s6, tp, 10
                  bge          a7, s6, 344f
335:              ori          s11, a0, 211
                  sll          a6, s6, gp
337:              addi         a7, s2, 1199
338:              blt          t0, sp, 350f
339:              auipc        s5, 313375
                  sltiu        s9, zero, -1720
                  andi         a6, t1, 1741
                  andi         a2, t1, 502
                  srai         zero, s11, 3
344:              add          s3, a6, s1
                  xori         s5, s7, -2020
                  andi         t6, s0, -965
347:              ori          tp, t3, 38
                  ori          ra, t0, 922
                  slt          t2, tp, a2
350:              bge          s2, sp, 360f
                  xor          gp, s1, t2
                  lui          a4, 506494
                  addi         a4, s1, -1575
                  xori         s5, s10, -1490
                  srl          t1, a4, s2
                  slt          gp, t0, s11
                  add          sp, t0, s2
                  sub          s9, t6, s5
                  xor          s5, zero, a3
360:              addi         s10, s0, 968
                  addi         s4, s5, -861
                  bge          s5, s6, 368f
                  xor          ra, a0, gp
                  sll          a6, zero, t4
                  andi         t4, t0, -153
                  sub          s5, tp, s7
                  xor          s8, s10, a5
368:              addi         t1, ra, 1823
                  slli         zero, a1, 12
                  nop
                  blt          t3, a1, 388f
                  auipc        t3, 821590
                  srai         s8, t3, 4
                  sra          gp, s6, t3
                  sra          s0, a4, t1
                  bne          s2, t3, 386f
                  bgeu         s9, s11, 389f
                  beq          sp, a4, 389f
                  bltu         s0, t6, 393f
                  andi         a4, s0, 1785
                  lui          a6, 727588
                  sub          t1, a0, gp
                  sltiu        sp, a0, -467
                  srli         t6, a5, 25
                  and          s3, t6, s5
386:              nop
                  slt          s9, s4, s11
388:              sra          t2, t3, a5
389:              srli         s8, s6, 18
                  ori          s11, a4, 1983
                  blt          s8, t5, 404f
                  xor          s5, tp, sp
393:              ori          t2, s4, -1442
                  srai         ra, t1, 13
                  sra          a0, s3, a0
                  srli         s11, t2, 27
                  slt          s3, s11, a4
                  ori          s4, t5, -568
                  lui          t3, 525483
                  sltu         t0, a7, s7
                  add          s2, s8, t5
                  ori          a4, zero, -87
                  sll          sp, s4, s3
404:              addi         a1, a4, -1052
                  sra          sp, s5, s6
                  srl          s3, t0, s4
                  srai         zero, t2, 25
                  nop
                  sub          a0, t4, s2
                  and          sp, gp, t2
                  sub          a7, s10, t5
                  slti         gp, s0, -1045
                  sll          s0, s9, t3
                  sra          s1, a4, tp
                  slt          ra, s5, tp
                  bne          zero, s3, 428f
                  bge          a0, t1, 422f
                  sub          a0, zero, s6
                  nop
                  bltu         t4, s7, 426f
                  nop
422:              slt          s4, a7, t6
                  addi         zero, t4, -1569
                  srl          t2, a2, t6
                  beq          s11, sp, 441f
426:              blt          s9, s6, 445f
                  beq          t0, s10, 429f
428:              nop
429:              or           a6, a3, s0
                  slli         s10, t5, 12
                  andi         ra, s11, -1015
                  nop
                  srli         sp, zero, 10
                  srl          s10, sp, t5
                  add          a2, a2, a7
                  la           a1, sub_3
                  and          s9, tp, s5
                  addi         a1, a1, -658
                  blt          s2, t4, sub_1_j4 #branch to jump instr
                  add          t0, s2, gp
                  ori          t4, a4, 545
                  xori         t1, s10, -819
sub_1_j4:         jalr         tp, a1, 659 #jump sub_1 -> sub_3
                  bltu         t4, s3, 455f
                  sll          a6, s6, s6
                  srli         t1, a7, 0
                  sra          s7, t4, a4
                  lui          t2, 688764
                  srl          s7, ra, s2
441:              slti         tp, gp, -401
                  sll          t2, a2, tp
                  and          a0, a1, s4
                  sra          s11, a2, t0
445:              bltu         t0, s5, 462f
                  sub          a2, a7, t0
                  auipc        t4, 630290
                  srai         s3, tp, 23
                  and          a4, s7, a3
                  srl          t6, tp, a3
                  beq          a7, t6, 456f
                  sra          a1, t4, s4
                  sub          s6, a4, t0
                  bne          t1, sp, 465f
455:              sub          a0, t6, t6
456:              bge          t3, a1, 461f
                  bge          t2, gp, 477f
                  slti         s2, s11, 1350
                  and          s0, t3, t3
                  bltu         s11, s3, 466f
461:              beq          a6, s11, 472f
462:              lui          gp, 379967
                  auipc        s5, 982255
                  sltiu        s9, a3, 1548
465:              beq          s8, a3, 479f
466:              srli         a1, t6, 5
                  srl          s11, ra, t0
                  bge          s1, t3, 478f
                  bne          a0, gp, 477f
                  bgeu         a2, t3, 486f
                  nop
472:              and          s9, gp, ra
                  sra          t2, s9, zero
                  slli         a7, t2, 31
                  addi         s2, a3, 777
                  bge          a0, s2, 478f
477:              addi         a1, a1, 1293
478:              sub          s5, a5, s11
479:              sltiu        t2, s8, -1996
                  srli         a0, s5, 3
                  lui          s3, 703234
                  and          t1, t5, t3
                  lui          s11, 322630
                  la           a0, sub_2
                  xor          ra, t2, a1
                  addi         a0, a0, -1013
                  add          s4, s4, tp
                  sll          a6, s1, a7
sub_1_j3:         jalr         tp, a0, 1013 #jump sub_1 -> sub_2
                  beq          sp, s4, 498f
                  bgeu         s4, a2, 488f
                  nop
                  and          a0, t4, t0
                  beq          s6, s6, 486f
486:              nop
                  andi         a7, gp, 157
488:              ori          s5, sp, 1920
                  and          sp, s2, zero
                  andi         zero, s5, 1007
                  addi         s0, t0, -1328
                  slli         t6, t1, 21
                  sltu         s1, t2, a0
                  bgeu         a7, a4, 506f
                  srai         s3, a3, 22
                  auipc        a2, 622713
                  slti         s0, ra, 485
498:              slti         a7, t0, 339
                  ori          a7, s9, 1521
                  srl          s9, s3, s11
                  lui          sp, 298819
                  ori          s4, tp, 1488
                  sll          t2, t5, tp
                  sltiu        s0, s1, -762
                  or           t3, t4, s11
506:              srl          t0, s4, t1
                  or           t0, s3, s1
                  slli         s0, zero, 11
                  sra          a0, s9, t0
                  beq          a4, s3, 515f
                  blt          t5, s9, 528f
                  sll          t3, gp, a7
                  bgeu         t6, s11, 515f
                  srai         a7, t4, 5
515:              slt          s1, gp, gp
                  beq          a1, s4, 535f
                  bne          a5, s2, 524f
                  or           ra, a4, a1
                  add          t3, a1, zero
                  lui          t1, 768235
                  nop
                  beq          t0, s0, 541f
                  srl          gp, ra, t6
524:              nop
                  srai         t0, a6, 2
                  sltiu        s0, s5, 724
                  blt          t2, s7, 539f
528:              srli         s10, s7, 10
                  srai         s4, t2, 31
                  slli         s11, s3, 18
                  slti         t0, a0, 1931
                  and          t4, s6, s10
                  beq          t4, a5, 547f
                  blt          s7, s2, 548f
535:              lui          a7, 341650
                  bltu         gp, s11, 546f
                  srl          a4, s9, s6
                  xori         s5, a2, -1116
539:              srli         a6, s3, 3
                  blt          a7, t6, 557f
541:              xor          s1, a0, s9
                  ori          sp, sp, -502
                  lui          sp, 140735
                  slli         sp, t2, 8
                  xor          s0, a4, s8
546:              auipc        sp, 782219
547:              sltu         gp, a7, t5
548:              bgeu         s7, a2, 561f
                  lui          s0, 903710
                  slli         s4, t1, 10
                  xori         s8, t1, 1674
                  addi         t1, s10, 813
                  sra          sp, a5, s1
                  srl          t0, s7, a2
                  sltiu        s1, a7, 1160
                  sltiu        t2, s2, -1784
557:              bne          s5, t0, 569f
                  xor          t0, s8, s8
                  xor          tp, gp, gp
                  sub          s9, gp, s1
561:              nop
                  sltiu        s9, t2, -800
                  srl          a6, s9, s7
                  sltiu        a4, a0, 573
                  auipc        a1, 185260
                  auipc        sp, 879973
                  slti         gp, s10, 1040
                  andi         t6, a6, 1611
569:              xori         t0, s4, 545
                  slt          t0, s8, ra
                  xori         t0, s5, -1909
                  sra          s2, s1, a5
                  srl          a6, a4, a6
                  addi         zero, s5, 1755
                  bltu         s0, a3, 587f
                  lui          t2, 84484
                  bne          a2, ra, 587f
                  sltu         s11, a4, s10
                  beq          t6, t5, 595f
                  sub          s1, a6, t6
                  bltu         s8, t6, 600f
                  addi         ra, s0, 1965
                  sub          sp, s10, ra
                  sltu         s6, a3, s10
                  addi         s6, a1, -1778
                  bgeu         tp, a0, 591f
587:              slt          t0, t6, t6
                  sll          s10, a6, s3
                  sltu         s10, a6, t6
                  addi         s11, gp, -1746
591:              beq          s2, tp, 607f
                  bltu         s10, t4, 602f
                  auipc        a4, 632195
                  bge          a5, sp, 608f
595:              slti         t2, t6, 1491
                  add          s1, s0, t4
                  xori         s1, s10, -1436
                  lui          t6, 262605
                  sll          a4, s5, s7
600:              auipc        s6, 966313
                  auipc        s6, 942152
602:              srai         ra, a4, 1
                  slli         s9, s4, 13
                  bgeu         s5, a4, 606f
                  or           a4, a4, a2
606:              sltiu        s11, gp, 839
607:              sltiu        a1, a5, 1706
608:              xori         t0, a6, -1144
                  blt          t6, sp, 616f
                  addi         s8, a0, -431
                  bge          t3, s5, 621f
                  sub          s0, a5, sp
                  bltu         s4, zero, 619f
                  sra          t3, t1, a7
                  sub          ra, a1, s6
616:              or           tp, s4, s1
                  bltu         s8, s1, 628f
                  beq          t1, s1, 631f
619:              bne          s2, s5, 630f
                  la           sp, region_0+724 #start riscv_load_store_rand_instr_stream_1
                  slti         t3, t4, 1014
                  nop
                  sh           gp, -26(sp)
                  lui          a6, 615053
                  sb           a7, 16(sp)
                  srai         s11, s6, 8
                  srl          s7, s3, t6
                  sb           s2, -15(sp)
                  sb           s3, 47(sp)
                  xori         s7, t6, 558
                  sb           t2, 28(sp)
                  lh           s7, -46(sp)
                  sb           s3, -35(sp)
                  sw           s10, 24(sp)
                  lb           s9, -43(sp)
                  sub          t4, s9, a1
                  sll          ra, s3, tp
                  lb           s2, -7(sp)
                  srai         s5, s2, 0
                  slt          t4, t2, a1
                  sh           t0, -42(sp)
                  lh           tp, 60(sp)
                  sb           s1, -59(sp) #end riscv_load_store_rand_instr_stream_1
                  bgeu         t6, a1, 630f
621:              auipc        t1, 217256
                  bltu         a0, s10, 630f
                  andi         t1, s0, -1284
                  sra          s0, s3, s1
                  addi         a4, a2, 1062
                  blt          a7, t2, 645f
                  xori         zero, t2, 2027
628:              slli         a6, zero, 21
                  srl          s7, sp, s6
630:              slti         s9, s11, 1137
631:              nop
                  sltiu        s11, t2, -1451
                  or           t0, s10, s1
                  blt          ra, t4, 650f
                  bge          ra, s10, 640f
                  bltu         s4, s7, 650f
                  bltu         t6, a1, 654f
                  slti         s10, s9, -115
                  sub          a0, t1, t4
640:              andi         s9, t6, -980
                  slli         sp, s9, 0
                  andi         sp, t1, -1673
                  sltu         s5, s5, t3
                  addi         t4, s4, 1789
645:              slti         s8, s4, 313
                  or           a4, s9, t6
                  sub          t4, s2, a3
                  slti         ra, s9, 1621
                  and          s1, s8, tp
650:              and          s3, tp, gp
                  bge          a4, tp, 653f
                  add          s3, gp, tp
653:              slli         gp, a4, 30
654:              bge          t5, tp, 671f
                  beq          s3, gp, 672f
                  srli         a6, s6, 6
                  srli         s1, s8, 5
                  bgeu         t6, a2, 678f
                  blt          zero, a6, 665f
                  xori         s9, t5, 1566
                  srai         s7, a3, 24
                  srli         s9, zero, 29
                  bltu         s8, s0, 675f
                  auipc        s7, 59227
665:              slli         t2, t4, 31
                  sra          a2, t2, a5
                  slt          t1, a4, s2
                  sltu         sp, a2, s1
                  srai         s9, s10, 15
                  ori          a6, t5, -235
671:              slti         s4, gp, 389
672:              srl          tp, s9, s7
                  nop
                  sub          s8, a3, a0
675:              srli         t3, a0, 26
                  auipc        s4, 665729
                  slli         s7, s4, 7
678:              xor          s11, s5, s9
                  bltu         a3, t3, 680f
680:              sltiu        s5, s2, 654
                  add          t2, t6, t2
                  bne          s6, t6, 694f
                  srli         a0, s8, 29
                  ori          s7, gp, -584
                  or           t0, t0, a2
                  bltu         a1, a5, 700f
                  srai         a6, s9, 31
                  add          a4, s7, s8
                  srl          s2, a6, a2
                  xori         s1, a5, -332
                  srl          zero, s10, s0
                  sltiu        t4, s11, 983
                  andi         a6, s4, -1266
694:              and          zero, a6, s11
                  addi         zero, s5, -1442
                  nop
                  slli         zero, a0, 30
                  srl          t3, t0, s5
                  lui          s11, 41675
700:              lui          a7, 79930
                  slt          s4, s5, t1
                  bge          a3, s1, 714f
                  bgeu         s8, s5, 715f
                  slli         a0, s8, 6
                  auipc        t1, 844725
                  slti         t2, t1, 1881
                  xori         t0, t5, 1897
                  lui          s7, 12484
                  slt          t0, s3, s1
                  bltu         s4, a2, 729f
                  xor          sp, s5, a7
                  add          t2, gp, a4
                  slt          s0, a5, t6
714:              bgeu         a3, zero, 728f
715:              and          s10, s2, s9
                  sltu         s9, t2, t4
                  or           s2, s8, t2
                  slt          s2, t4, s5
                  slli         s6, t2, 3
                  xori         s4, a1, 1365
                  slt          a0, s3, s8
                  beq          tp, a1, 739f
                  sra          s5, t1, a4
                  bne          t4, a4, 736f
                  auipc        s11, 292597
                  sra          s4, a6, a1
                  sub          gp, zero, t2
728:              beq          t1, a4, 729f
729:              bne          s5, s9, 731f
                  sll          a1, t4, zero
731:              srli         s5, s5, 16
                  srai         t4, t6, 5
                  ori          a0, s10, -668
                  slt          sp, s5, a5
                  slli         s1, t0, 3
736:              bne          t3, s5, 752f
                  or           t4, s1, ra
                  srai         s5, a1, 28
739:              lui          zero, 658215
                  xor          a1, t5, a6
                  beq          s10, s11, 751f
                  srli         a6, t2, 24
                  addi         tp, s1, 358
                  slt          a4, t2, s6
                  bge          gp, s9, 755f
                  xor          a2, s3, s10
                  auipc        zero, 624942
                  ori          t4, s11, -165
                  srl          s1, gp, a5
                  andi         t3, t3, 374
751:              nop
752:              sltiu        s0, a6, 219
                  or           s6, a5, s8
                  slli         tp, a2, 13
755:              slt          a1, a1, t4
                  ori          t4, s7, 1375
                  addi         tp, s3, 1971
                  sll          a7, s3, s4
                  slt          s0, s11, t1
                  srl          s7, t3, s10
                  srl          s5, t2, t3
                  auipc        s5, 666220
                  bgeu         s11, a2, 764f
764:              xori         s1, t6, -1302
                  lw           tp, 4(a5)
                  ori          zero, s8, 1607
                  add          s3, a4, s3
                  xori         a7, s5, 366
                  nop
                  srli         s5, t4, 30
                  xor          s9, a1, a0
                  sra          s11, s6, s8
                  sltiu        s0, t5, 953
                  addi         a5, a5, 36
                  slli         t6, s8, 17
1030:             addi x18, x4, 0
1030:             jalr x18, x18, 0
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x30, x15, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x4, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x4, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x4, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x4, x10, ecall_handler
                  li x10, 0x1
                  beq x4, x10, instr_fault_handler
                  li x10, 0x5
                  beq x4, x10, load_fault_handler
                  li x10, 0x7
                  beq x4, x10, store_fault_handler
                  li x10, 0xc
                  beq x4, x10, pt_fault_handler
                  li x10, 0xd
                  beq x4, x10, pt_fault_handler
                  li x10, 0xf
                  beq x4, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x15, x30, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x30, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x30, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x15, x30, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x15, x30, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x15, x30, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
