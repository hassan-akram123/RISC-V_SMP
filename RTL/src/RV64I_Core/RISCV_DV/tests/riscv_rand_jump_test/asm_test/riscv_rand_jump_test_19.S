.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xa
                  li x3, 0x4fa1c194
                  li x4, 0xf3480dd6
                  li x5, 0xb34cbbb3
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0xcf4dd60b
                  li x9, 0xf498bdcf
                  li x10, 0xfe851726
                  li x11, 0xf
                  li x12, 0x0
                  li x13, 0x87b73605
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0xad7956e7
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x20, 0xd22eb5c1
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xfdbc6f6f
                  li x25, 0xf576af95
                  li x26, 0xb
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xaf7e19d6
                  li x30, 0x74e61212
                  li x31, 0x80000000
                  la x19, user_stack_end
main:             la           a3, sub_1
                  slt          s11, s7, s9
                  srai         s2, sp, 30
                  sub          s6, s10, s8
                  sltiu        s11, t5, 521
                  or           a5, s4, s7
                  addi         a3, a3, -916
                  sltu         gp, t0, a3
main_j2:          jalr         t1, a3, 916 #jump main -> sub_1
                  la           t0, region_1+1378 #start riscv_load_store_rand_instr_stream_0
                  sw           s4, -30(t0)
                  lbu          tp, -35(t0)
                  slti         zero, a0, -1115
                  slti         t5, t3, 1591
                  lh           a4, 48(t0)
                  sb           s3, 10(t0)
                  lb           s8, 59(t0)
                  sltiu        a5, ra, 130
                  add          s9, a0, s7
                  lb           a3, 27(t0)
                  lbu          t4, 37(t0)
                  lbu          a6, 29(t0)
                  lb           s9, 1(t0)
                  lb           t4, 39(t0)
                  or           a2, s9, a4
                  sb           ra, 2(t0)
                  sb           t6, -47(t0)
                  lb           t4, 55(t0)
                  nop
                  xor          a1, a4, a7
                  sb           s1, -63(t0)
                  lb           a2, -35(t0)
                  sltu         a5, a0, t6
                  slti         s1, zero, 1769
                  lh           s0, -60(t0)
                  xor          s0, a1, gp
                  add          s4, s4, a5
                  srl          s2, s6, t3
                  srli         s6, tp, 30
                  srai         t4, s4, 10
                  sb           s4, -37(t0)
                  sltu         a5, s4, s10
                  sll          s11, s5, s2
                  sltu         zero, a7, t6
                  slt          s6, s11, a5
                  lbu          t6, 55(t0)
                  lhu          t5, 38(t0)
                  sw           s5, -30(t0)
                  lb           a1, 35(t0)
                  sh           t4, 22(t0)
                  sb           a4, -27(t0)
                  auipc        sp, 806601
                  slt          a1, ra, s4
                  lbu          s7, 48(t0)
                  lh           zero, 24(t0)
                  or           sp, s11, t3
                  sb           gp, 39(t0)
                  lbu          s11, -27(t0)
                  lb           t3, -57(t0) #end riscv_load_store_rand_instr_stream_0
                  srli         gp, s5, 18
                  nop
                  srli         s4, a2, 24
                  sltiu        a1, t0, 1030
                  sll          a7, t0, sp
                  and          t3, t1, a0
                  sub          t6, s7, sp
                  srli         sp, a0, 3
                  sub          t6, t5, t3
                  slli         s7, a1, 0
                  andi         a1, s9, 1803
                  slti         s6, a4, 385
                  bgeu         s3, sp, 14f
                  bne          t3, t2, 19f
14:               xor          t3, s3, a7
                  sltu         s0, t2, t2
                  ori          tp, t1, 1395
                  addi         t6, s5, 1840
                  sll          s1, s2, t4
19:               xori         zero, a0, -1457
                  sub          t2, s1, s1
                  sll          a1, a7, t0
                  sra          s2, s9, a0
                  auipc        t3, 345141
                  or           a2, t5, t3
                  addi         s1, s5, -1969
                  sltu         ra, s11, sp
                  and          s11, s5, s10
                  la           t6, sub_1
                  sltiu        t2, t0, 954
                  slli         s4, s8, 10
                  add          s1, a5, s10
                  add          s8, a7, ra
                  slti         a1, s9, -667
                  nop
                  addi         t6, t6, -657
                  sll          s11, a7, a2
main_j1:          jalr         t1, t6, 658 #jump main -> sub_1
                  sltu         a0, t0, s3
                  sra          s9, t6, s11
                  nop
                  sub          a0, t0, t3
                  sll          t5, s2, a2
                  add          s6, t6, zero
                  sltiu        ra, tp, -445
                  srli         s9, a5, 10
                  add          t0, t6, s7
                  nop
                  bltu         s8, s10, 47f
                  srli         t5, sp, 19
                  lui          gp, 441378
                  slli         ra, s3, 7
                  lui          a4, 343789
                  bne          a7, ra, 44f
                  sub          s2, s7, t1
44:               sra          t5, a4, sp
                  sltiu        a0, s11, -506
                  slt          s0, a7, s3
47:               sltiu        t2, s7, -1270
                  addi         a4, a7, -1450
                  bge          s7, gp, 58f
                  bge          a1, s1, 59f
                  sra          t1, t3, a4
                  bne          a1, a7, 61f
                  or           a4, s10, zero
                  sltu         t6, s2, ra
                  bne          tp, tp, 60f
                  beq          t2, t4, 70f
                  bne          t5, s9, 71f
58:               xor          t5, s8, t1
59:               slt          t0, s1, s6
60:               slti         t4, a2, -1008
61:               auipc        t5, 432366
                  xor          ra, t3, t3
                  and          s2, gp, sp
                  sltu         a6, t3, t2
                  ori          s11, a1, 800
                  sra          zero, t5, gp
                  lui          s4, 719874
                  bne          t1, zero, 76f
                  and          sp, s4, a3
70:               slli         t3, gp, 11
71:               sub          a4, s11, s6
                  beq          s10, s4, 92f
                  slli         s9, s10, 6
                  srai         s6, gp, 17
                  sltiu        t5, s4, -520
76:               sll          s11, t4, a2
                  sltiu        a7, a4, -1952
                  bltu         s6, a7, 79f
79:               or           t5, s8, s5
                  slt          a3, a2, tp
                  ori          t1, s10, 1032
                  slti         s8, a1, -1408
                  sub          t4, a3, gp
                  srai         s2, a1, 28
                  add          a0, a4, sp
                  sltu         s2, s3, s0
                  sra          s0, a5, s5
                  bne          sp, s9, 92f
                  lui          t4, 384132
                  auipc        a2, 71647
                  add          s0, t4, a2
92:               and          s2, a3, a5
                  srli         t0, a3, 4
                  sltu         t1, a2, s0
                  lui          a2, 691442
                  slli         s8, s5, 30
                  bgeu         s4, s10, 104f
                  srai         s9, s4, 27
                  beq          t1, sp, 105f
                  beq          s2, t1, 105f
                  slli         s1, s2, 28
                  srli         t5, t1, 10
                  srai         s4, s3, 17
104:              sra          s6, s8, t6
105:              slti         ra, s5, 249
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_6:            beq          t4, zero, sub_6_stack_p
                  andi         t4, s8, -541
sub_6_stack_p:    addi         s3, s3, -20
                  xori         a4, s2, 104
                  sw           t1, 4(s3)
                  slt          s4, gp, a7
                  and          a3, a6, s0
                  la           a4, region_1+145 #start riscv_load_store_rand_instr_stream_9
                  sb           s7, 14(a4)
                  lhu          a7, 61(a4)
                  lbu          zero, -48(a4)
                  nop
                  slli         t0, a3, 15
                  ori          a0, a2, 700
                  slt          s2, a3, s4
                  lh           a0, 5(a4)
                  nop
                  nop
                  sb           t1, 29(a4)
                  xor          s8, a0, s5
                  addi         s2, t3, -946
                  lw           a0, 47(a4)
                  lb           a7, 6(a4)
                  auipc        zero, 899765
                  lb           s9, 59(a4)
                  slti         s0, t2, -1630
                  sub          s7, sp, t6
                  sw           a7, 55(a4)
                  srl          t2, tp, s6
                  srli         s0, a1, 7
                  and          t1, gp, t0
                  nop
                  or           a5, tp, t1
                  lbu          zero, 24(a4)
                  addi         a7, t3, -11
                  lb           s11, -8(a4)
                  and          s8, s10, a5
                  xor          t3, s9, a1
                  auipc        t2, 346377
                  lb           s11, -28(a4)
                  sb           tp, 34(a4)
                  lb           t1, -12(a4)
                  lb           t0, -20(a4)
                  sw           s3, -61(a4)
                  sltu         ra, a0, s6
                  lw           s8, 59(a4)
                  sltiu        zero, s11, -1699
                  sltiu        t5, t2, -1661
                  lbu          t0, -14(a4)
                  lbu          t3, 9(a4)
                  sb           zero, -22(a4)
                  sub          s0, gp, s9
                  lhu          t6, -9(a4)
                  sb           s1, -2(a4)
                  addi         t1, t1, 510
                  addi         sp, tp, -1414
                  lh           s4, -43(a4)
                  sh           a7, 59(a4) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+1378 #start riscv_load_store_rand_instr_stream_1
                  auipc        a0, 865042
                  lb           t6, 253(sp)
                  lbu          a1, 105(sp)
                  ori          a5, a5, 78
                  sb           a1, 52(sp)
                  lb           a3, 239(sp)
                  add          zero, zero, s7
                  lbu          s11, -43(sp)
                  lbu          t0, 230(sp)
                  add          t4, s3, s2
                  lh           t1, -150(sp)
                  addi         a2, a4, -1334
                  srai         t6, t2, 30
                  srai         t0, zero, 9
                  lbu          s11, -196(sp)
                  lb           s7, 101(sp)
                  addi         a0, tp, -597
                  lb           s8, -158(sp)
                  nop
                  srai         s11, t1, 18
                  lbu          a1, -76(sp)
                  lh           a0, -40(sp)
                  lb           s4, -174(sp)
                  add          gp, s3, t6
                  lh           t3, -214(sp)
                  lw           t6, -238(sp)
                  lh           t6, -194(sp)
                  lb           t4, 242(sp)
                  sw           t4, -218(sp)
                  lb           t6, -77(sp)
                  and          a0, zero, s9
                  lbu          t3, -108(sp)
                  lh           t5, -240(sp)
                  lui          t6, 987979
                  sb           a6, 161(sp)
                  sb           a3, 63(sp)
                  srli         a7, a0, 23
                  or           t2, tp, a1
                  lb           s4, -65(sp)
                  lbu          a7, -41(sp)
                  sb           a2, -145(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1729 #start riscv_load_store_rand_instr_stream_4
                  sb           zero, -46(sp)
                  auipc        gp, 890994
                  sltu         s1, s5, s2
                  sb           t0, 32(sp)
                  sb           a0, -14(sp)
                  lbu          a5, 34(sp)
                  sb           a7, 56(sp)
                  sra          s2, a3, s9
                  sltiu        a3, s3, 1431
                  lb           a1, -37(sp)
                  sh           t2, 49(sp)
                  addi         t1, zero, 931
                  or           t5, s0, t6
                  sw           a5, -13(sp)
                  lb           s1, 10(sp)
                  sb           s10, -53(sp)
                  sb           a3, 38(sp)
                  sb           s10, 16(sp)
                  sb           s4, 50(sp)
                  lbu          t0, 30(sp)
                  sll          s9, s1, a2
                  sb           s1, 0(sp)
                  lhu          a3, 23(sp)
                  sb           t6, 16(sp)
                  sh           s9, 7(sp)
                  and          a6, a1, a3
                  srai         t2, sp, 25
                  srl          s8, s10, s11
                  addi         a7, t3, 1749
                  lw           s8, -45(sp)
                  sll          s11, s0, tp
                  srl          s4, a1, a6
                  lb           s0, -9(sp)
                  srli         s0, s11, 11
                  lbu          a0, -10(sp)
                  lhu          s2, -11(sp)
                  lhu          t4, 61(sp)
                  lbu          tp, -4(sp)
                  sltu         a4, s10, a2
                  sw           s10, -5(sp)
                  lb           s11, 10(sp)
                  addi         t1, t6, 810
                  lb           a3, 8(sp)
                  lbu          s8, -42(sp)
                  srai         a7, a3, 28
                  ori          a1, s4, -1289
                  lbu          gp, -18(sp)
                  lb           s6, -1(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+1858 #start riscv_load_store_rand_instr_stream_6
                  lui          a3, 625551
                  sll          s9, s6, a4
                  lb           t1, -1417(a0)
                  ori          s11, s3, -88
                  lbu          a1, -1389(a0)
                  srai         a6, s8, 19
                  auipc        t2, 53153
                  lb           s11, -160(a0)
                  xor          s6, s1, s7
                  lbu          s1, -625(a0)
                  lh           a7, -682(a0)
                  addi         s6, a6, -1532
                  srl          t0, t4, a0
                  lb           a3, -1299(a0)
                  sra          t6, s7, a1
                  srai         s6, s2, 22
                  slti         s9, s3, 1496
                  srli         sp, s10, 20
                  xor          a3, t2, t2
                  slli         a7, tp, 9
                  lhu          a5, -180(a0)
                  lb           a5, -233(a0)
                  sb           a6, -1128(a0)
                  lb           t4, -1432(a0)
                  slti         t0, s0, -761
                  sltu         t3, gp, t6
                  sw           a5, -354(a0)
                  sra          s7, s8, s2
                  lbu          s0, -1515(a0)
                  andi         t3, t1, 1302
                  lbu          t1, -268(a0)
                  lh           s6, -64(a0)
                  or           s7, t3, tp
                  slli         s9, s4, 18
                  and          sp, s1, t2
                  sb           s11, -830(a0)
                  sb           t0, -1107(a0)
                  srai         s8, s8, 17
                  sb           s8, -376(a0)
                  or           a1, a1, ra
                  nop
                  sb           s4, -466(a0)
                  lb           a1, -326(a0)
                  lbu          a3, -606(a0)
                  xor          t0, s6, a1
                  slt          ra, t3, a1
                  andi         s2, t0, -980
                  lh           tp, -1688(a0)
                  lw           s0, -910(a0)
                  lbu          t5, -665(a0) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1170 #start riscv_load_store_rand_instr_stream_8
                  srai         a6, zero, 25
                  lb           s9, 32(sp)
                  sb           t2, -11(sp)
                  lh           a1, 0(sp)
                  lb           s2, -39(sp)
                  slti         t3, a5, -452
                  ori          a4, a0, 886
                  lbu          t5, -41(sp)
                  lb           a5, 18(sp)
                  sh           a5, -36(sp)
                  lbu          s0, -42(sp)
                  lbu          s4, -49(sp)
                  lbu          s2, 47(sp)
                  add          t3, zero, zero
                  lb           t6, 17(sp)
                  nop
                  slli         s0, s10, 24
                  addi         a6, sp, 848
                  lw           s1, 18(sp)
                  lhu          a7, -10(sp)
                  lh           a6, 18(sp)
                  slti         a7, a4, -586
                  xori         s1, s10, -590
                  ori          a2, a5, 1089
                  lb           t6, -10(sp)
                  lw           s2, 38(sp)
                  lh           s8, 4(sp)
                  srli         s2, ra, 26
                  sb           s0, -59(sp)
                  lbu          s4, -53(sp)
                  sh           s11, -40(sp)
                  sw           s7, -58(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s1, region_1+1399 #start riscv_load_store_rand_instr_stream_10
                  add          a0, s2, t2
                  lbu          s9, 14(s1)
                  lb           a4, -16(s1)
                  lui          gp, 156320
                  slt          s2, gp, t1
                  or           s9, s2, s4
                  slli         t5, s7, 31
                  sra          s9, s9, t3
                  auipc        s7, 100745
                  lui          a6, 441322
                  and          t4, s2, s7
                  srl          a4, a0, t6
                  sh           t2, -5(s1)
                  lhu          t1, 11(s1)
                  lbu          a7, 14(s1)
                  srl          t2, s8, a5
                  lb           s0, 3(s1)
                  lui          sp, 404537
                  lbu          s7, 3(s1)
                  ori          s7, a7, 1342
                  lhu          gp, 7(s1)
                  sra          t0, a7, a7
                  lbu          t5, 4(s1)
                  lb           s9, -5(s1)
                  lbu          gp, 4(s1)
                  sb           zero, 3(s1)
                  sb           s0, -2(s1)
                  lh           zero, -9(s1)
                  srli         t2, t2, 9
                  sltu         s7, t1, a3
                  lbu          s11, 0(s1)
                  andi         a5, ra, 106
                  or           s7, a2, s10
                  lb           s6, 1(s1)
                  lui          a7, 351019
                  slti         sp, a5, -1115
                  slti         sp, s10, 952
                  lw           t1, 13(s1)
                  sb           sp, -16(s1)
                  sub          a2, gp, t4
                  lbu          a0, -12(s1)
                  sra          t1, a1, a0
                  lh           a0, 13(s1)
                  lb           gp, 11(s1)
                  lw           s11, 13(s1) #end riscv_load_store_rand_instr_stream_10
                  la           a7, region_0+1523 #start riscv_load_store_rand_instr_stream_3
                  lw           a1, -3(a7)
                  sb           s11, -10(a7)
                  sub          a0, a7, s11
                  or           t1, a4, a1
                  sb           s0, 7(a7)
                  lbu          t2, -1(a7)
                  lh           ra, -5(a7)
                  lb           s8, -4(a7)
                  lb           zero, -10(a7)
                  addi         s11, zero, -1747
                  xori         tp, s9, -702
                  lbu          a3, 12(a7)
                  andi         s11, t2, 800
                  auipc        a1, 833918
                  slti         s6, s6, -319
                  sh           s5, -11(a7)
                  lb           t5, 7(a7)
                  lui          a1, 864544
                  lb           s8, 4(a7)
                  and          s7, s7, s0
                  lui          s8, 325003
                  sra          a6, a2, sp
                  sra          s4, a5, s8
                  and          sp, t5, s0
                  ori          tp, s5, 314
                  lbu          a2, -9(a7)
                  sb           s4, 14(a7)
                  lbu          s7, -4(a7)
                  lb           a3, 15(a7)
                  sub          t2, a2, t3
                  nop
                  sb           sp, 1(a7)
                  srai         a1, a7, 9
                  sb           s5, -5(a7)
                  sh           s4, 15(a7)
                  nop
                  srai         a2, a7, 15
                  lbu          a1, 16(a7)
                  lb           s11, -5(a7)
                  sb           t4, -7(a7)
                  auipc        a0, 535766
                  srl          s1, t2, t5
                  srai         t2, a3, 14
                  lb           a4, -3(a7)
                  sra          s11, a3, a1
                  lbu          tp, -4(a7) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+72 #start riscv_load_store_rand_instr_stream_5
                  ori          s1, a0, -5
                  xori         s2, sp, 271
                  xor          s11, s5, t0
                  ori          t5, s4, -1993
                  lbu          t0, -16(sp)
                  xori         tp, s0, 577
                  lbu          t5, 7(sp)
                  lb           s7, 2(sp)
                  lb           a3, 11(sp)
                  nop
                  addi         tp, s10, 1343
                  sra          gp, t1, a1
                  sw           sp, 0(sp)
                  slti         s9, a4, 1775
                  lbu          t1, 15(sp)
                  sltu         a6, t3, t3
                  sw           sp, -12(sp)
                  lb           a0, 6(sp)
                  lbu          a6, -14(sp)
                  sh           s10, 0(sp)
                  sb           s8, -8(sp)
                  lbu          tp, 14(sp)
                  lbu          s2, -11(sp)
                  sra          a7, s7, s3
                  lbu          gp, -7(sp)
                  slli         s7, t3, 19
                  slli         s6, sp, 14
                  lh           a7, 16(sp)
                  lbu          gp, -13(sp)
                  lbu          a3, 1(sp)
                  lbu          a5, -14(sp)
                  lh           s9, 16(sp)
                  lb           a3, -6(sp)
                  andi         s9, s2, 453
                  slt          s1, t3, t2
                  sh           s0, -10(sp)
                  lb           a5, 6(sp)
                  ori          s0, a2, 114
                  lui          s8, 460749
                  sb           t0, -3(sp)
                  sltu         a1, a5, t6
                  lb           ra, 8(sp)
                  sb           s1, -7(sp) #end riscv_load_store_rand_instr_stream_5
                  lui          s2, 1037267
                  bgeu         a4, a6, 6f
                  slli         a6, a0, 21
                  bge          s4, a6, 22f
                  and          a7, s9, tp
                  xori         t0, a3, 547
6:                add          s4, a1, t0
                  sll          s9, a1, a6
                  xor          a5, t5, a5
                  slti         a7, t1, 59
                  srai         t2, s0, 10
                  bgeu         s0, s2, 21f
                  ori          s8, a3, 79
                  slti         a4, a1, 474
                  sra          t5, a4, a0
                  sra          s9, gp, s10
                  ori          sp, s4, -402
                  xor          a1, s3, s7
                  slli         a1, a2, 30
                  sll          tp, a3, s6
                  bltu         t6, s8, 21f
21:               srli         t4, a6, 27
22:               bge          zero, zero, 34f
                  slt          s0, s11, s10
                  or           s9, s5, gp
                  bge          a6, a6, 35f
                  blt          t6, a6, 42f
                  sltiu        s9, s5, -1464
                  bltu         a5, t4, 40f
                  srai         tp, s10, 13
                  xor          t6, s5, s2
                  bgeu         zero, zero, 41f
                  ori          a1, s3, 535
                  srai         t3, a0, 9
34:               auipc        t5, 860422
35:               auipc        s1, 765573
                  xori         ra, ra, -1313
                  beq          zero, zero, 54f
                  or           s6, s9, ra
                  bgeu         a7, a7, 54f
40:               xori         sp, s4, -1136
41:               xori         s2, a1, 1812
42:               sltu         ra, s3, t0
                  srl          s8, s6, s2
                  bge          a6, tp, 46f
                  add          s7, s5, s2
46:               or           s1, a7, s4
                  beq          s6, a2, 62f
                  xori         sp, gp, 893
                  addi         a5, s4, -430
                  bltu         s8, zero, 64f
                  sub          t6, s2, s7
                  srl          a6, s5, a0
                  beq          t3, t6, 71f
54:               nop
                  bltu         t4, s11, 60f
                  auipc        t0, 955789
                  xori         t1, t0, 405
                  sra          t3, t4, t5
                  addi         sp, a0, 1226
60:               xori         a7, t6, -1135
                  srl          t0, a7, gp
62:               blt          s10, t3, 65f
                  auipc        s8, 508443
64:               sra          t6, s7, a2
65:               slt          a3, t4, a6
                  srai         zero, s8, 22
                  beq          ra, s6, 79f
                  blt          ra, s2, 74f
                  sra          zero, s0, s6
                  nop
71:               bne          gp, s6, 86f
                  slti         t2, s3, 859
                  srl          t1, s6, tp
74:               slli         a3, s4, 15
                  and          s0, t0, t1
                  add          sp, sp, ra
                  beq          a1, s4, 90f
                  andi         s4, s4, -1575
79:               ori          t4, s3, -1565
                  bgeu         t4, s7, 86f
                  xor          s9, a1, s1
                  auipc        t6, 19158
                  sltiu        t6, s0, -465
                  sltiu        s6, t1, 5
                  slli         t0, a6, 5
86:               srli         t5, t0, 21
                  andi         t6, t0, -413
                  add          t1, t5, s9
                  sra          s11, a3, a5
90:               sub          t5, t0, s9
                  lui          s7, 643632
                  bgeu         s11, t0, 107f
                  ori          zero, a6, 123
                  srl          s9, s7, t1
                  slli         s4, t2, 13
                  xor          s4, a3, s2
                  slti         sp, s6, 1462
                  xori         a2, a6, -1106
                  andi         gp, s7, 1552
                  sra          t6, s7, gp
                  srli         tp, s11, 21
                  blt          s8, s5, 104f
                  and          a4, sp, s10
104:              ori          s2, s8, 170
                  nop
                  or           s8, a6, s5
107:              sll          a5, s8, zero
                  blt          gp, a5, 111f
                  xori         zero, t2, 1514
                  srai         a5, a2, 16
111:              slt          t1, t1, t2
                  sltu         s2, t6, gp
                  blt          s4, s2, 133f
                  sltiu        zero, tp, -1858
                  addi         t1, zero, -1482
                  sltu         t2, s2, s2
                  sra          a1, s3, s10
                  slli         s9, t0, 16
                  sltiu        t6, t1, 967
                  bge          a6, s0, 128f
                  sltiu        tp, s2, -390
                  sll          a7, s1, s3
                  bne          s7, s2, 141f
                  slt          s1, s4, t4
                  xori         s8, gp, 1081
                  xor          t3, s11, t6
                  sra          t6, t0, s8
128:              and          t6, s8, s9
                  and          a5, t6, s10
                  sra          sp, t5, t5
                  xori         s11, s7, 83
                  blt          gp, sp, 140f
133:              or           a5, a4, s9
                  andi         t6, a7, 1582
                  srli         s9, zero, 19
                  sltu         a3, s2, a5
                  sll          t6, t1, s4
                  bne          s3, s5, 139f
139:              addi         ra, s4, 1087
140:              slti         gp, a1, -1685
141:              bltu         s9, a5, 149f
                  sltu         sp, t0, t3
                  bltu         zero, a3, 144f
144:              beq          sp, a5, 150f
                  sub          t5, tp, a4
                  bne          a6, t2, 160f
                  sltiu        t2, t3, 2043
                  andi         s7, s10, -311
149:              or           a0, s8, t3
150:              bgeu         s8, s4, 167f
                  bgeu         s0, t2, 161f
                  sltiu        a0, zero, 1533
                  lui          s4, 983175
                  or           a4, tp, a5
                  blt          s9, s10, 173f
                  slti         t6, s11, 406
                  srli         s9, a3, 26
                  or           a7, a7, a1
                  sltiu        a6, a4, -917
160:              sltiu        t3, s3, 1289
161:              and          a3, a1, s2
                  bgeu         tp, zero, 168f
                  sll          t1, a5, s5
                  srl          a6, s6, a5
                  srl          t5, a7, zero
                  sltiu        t2, t3, 382
167:              sub          a4, a0, s2
168:              nop
                  nop
                  auipc        s0, 699106
                  add          t6, a1, a3
                  srli         a3, a0, 2
173:              lui          a6, 36545
                  xori         t4, sp, 1279
                  srli         s4, t4, 16
                  sll          t2, zero, tp
                  blt          s2, a1, 180f
                  xor          s2, t0, s4
                  sltiu        s1, t4, -1159
180:              sra          a3, t3, t0
                  ori          t1, s9, 928
                  sub          tp, sp, t4
                  sll          t1, a0, s11
                  srli         s2, tp, 17
                  beq          s7, a4, 190f
                  add          a5, t5, t2
                  xor          a0, s8, a4
                  xori         t6, s1, 1468
                  srai         t4, s1, 22
190:              bne          s3, a4, 200f
                  auipc        a4, 10323
                  bltu         t5, s1, 194f
                  and          s11, t3, t1
194:              sll          a3, a1, t5
                  srli         t1, s7, 27
                  sra          tp, s7, a6
                  bltu         t1, sp, 207f
                  sll          t1, s8, a6
                  beq          a3, s4, 217f
200:              andi         sp, s1, 1528
                  and          s0, a3, t2
                  sltu         t1, a2, t0
                  andi         t6, s5, -1197
                  blt          s3, a5, 209f
                  auipc        a0, 832337
                  beq          a6, t2, 218f
207:              addi         a7, zero, -711
                  bne          s2, s8, 211f
209:              xor          a6, s8, s1
                  andi         gp, a5, 621
211:              bge          s9, s6, 226f
                  xori         t4, a4, -202
                  add          t2, t3, t4
                  sltiu        s4, sp, 1117
                  and          a0, s7, gp
                  srl          a1, s10, t1
217:              beq          s9, s9, 236f
218:              nop
                  xori         sp, sp, -1044
                  auipc        a1, 614198
                  add          tp, sp, gp
                  blt          t1, t5, 235f
                  slti         t0, a3, 1740
                  and          s2, a3, gp
                  sll          sp, a0, s5
226:              or           a3, s10, a3
                  sltu         t1, a3, t0
                  srl          a1, a4, s7
                  srli         t6, a2, 3
                  blt          a7, t5, 246f
                  srl          s8, s11, tp
                  lui          gp, 450364
                  beq          s10, a6, 248f
                  xor          a3, a2, s9
235:              auipc        t4, 297653
236:              bge          s1, s4, 248f
                  and          tp, s3, s11
                  add          sp, t2, s3
                  srl          a7, a5, a4
                  xori         a0, gp, -541
                  or           a4, t3, zero
                  xori         s2, s2, 906
                  lui          ra, 1046547
                  xori         zero, s11, 1432
                  bltu         s11, s1, 246f
246:              or           a3, a6, a1
                  lui          t5, 966354
248:              addi         a0, t4, 188
                  sltu         s7, t2, s3
                  srli         a2, s7, 15
                  srl          s8, gp, tp
                  bgeu         a6, a6, 267f
                  bge          s3, t0, 273f
                  bltu         s9, s4, 269f
                  sll          s9, s4, a1
                  add          s2, s4, s6
                  slti         zero, a6, -1938
                  sra          s2, gp, a2
                  nop
                  nop
                  or           s9, sp, t0
                  or           s8, s6, s6
                  sra          zero, s4, a7
                  beq          a0, t6, 272f
                  sub          t4, ra, t4
                  srai         s6, t4, 14
267:              bltu         t3, a0, 279f
                  blt          s6, s10, 270f
269:              and          s11, a6, s3
270:              xori         sp, t1, -1189
                  srai         ra, t1, 16
272:              srai         s6, s0, 3
273:              beq          s8, a4, 283f
                  beq          s8, s1, 276f
                  bge          zero, a3, 292f
276:              nop
                  xor          t3, s11, zero
                  sub          s0, t2, sp
279:              nop
                  sll          s4, s7, s5
                  sltu         a7, zero, s3
                  bltu         s9, s3, 296f
283:              or           a6, s7, a1
                  auipc        t5, 201606
                  sra          s4, t2, a1
                  srl          a7, a5, a7
                  slt          s11, t2, a0
                  nop
                  sra          s0, s7, s5
                  nop
                  nop
292:              slt          zero, t4, t6
                  sll          sp, s2, gp
                  sra          t4, a0, t1
                  bne          t3, t5, 300f
296:              slli         gp, t5, 23
                  bltu         a3, sp, 307f
                  add          a2, s10, s7
                  slt          a0, s3, a5
300:              xori         t4, t0, 1051
                  xori         s1, s9, -594
                  beq          a6, s0, 305f
                  andi         a7, s6, -298
                  srai         s6, t3, 9
305:              sltu         s7, t4, s7
                  addi         t3, s11, -680
307:              bge          sp, t3, 317f
                  blt          t0, s8, 311f
                  lui          s0, 523754
                  add          zero, a7, t2
311:              nop
                  add          t3, s9, s0
                  srai         t0, gp, 1
                  srl          a2, a1, s8
                  lui          s2, 770021
                  sub          t3, t4, a5
317:              bltu         s9, t0, 325f
                  sub          ra, ra, t4
                  bge          s9, t2, 327f
                  xori         a7, tp, -1523
                  slti         a5, a4, -63
                  and          s4, gp, t4
                  srli         s9, s9, 23
                  beq          s9, s5, 330f
325:              bgeu         gp, t3, 343f
                  sll          t3, t5, s4
327:              xor          s7, t1, a6
                  andi         s7, s0, -329
                  bne          s7, a6, 341f
330:              srli         sp, s2, 24
                  sub          s1, a2, s8
                  slli         a4, sp, 6
                  andi         t5, zero, 380
                  sltu         t3, s4, t3
                  sltiu        s7, s4, -1921
                  and          a0, a2, a2
                  addi         t4, t3, 374
                  sra          a1, t5, t6
                  srl          s4, a3, sp
                  sltiu        a3, s11, 1356
341:              sra          a2, ra, a3
                  slli         gp, ra, 2
343:              slt          a7, s7, t6
                  srl          a7, t2, t2
                  nop
                  srli         s1, s3, 8
                  bltu         t5, s4, 352f
                  bge          t4, t6, 368f
                  sltiu        zero, a4, -177
                  andi         s6, t2, -588
                  sll          a5, s8, tp
352:              add          t6, ra, s11
                  bltu         s10, s5, 365f
                  slti         s7, t6, -533
                  add          a6, a3, t6
                  slti         a7, s7, 1837
                  ori          t3, s10, 1203
                  bgeu         s1, t0, 376f
                  srai         tp, a0, 14
                  bgeu         s4, a0, 379f
                  bge          s8, a1, 376f
                  bltu         s2, s6, 364f
                  sub          a5, s5, a1
364:              add          s2, s5, a0
365:              lui          s11, 883311
                  slti         sp, t5, 1106
                  blt          s7, a5, 383f
368:              andi         a0, s1, -243
                  auipc        t1, 4811
                  slt          t5, s2, s7
                  slt          gp, s10, t1
                  bne          s2, s5, 373f
373:              sltiu        a1, t5, 332
                  add          a0, sp, a4
                  srai         s7, a7, 11
376:              bge          s10, t1, 391f
                  slt          a3, s3, t5
                  xor          s9, s5, s2
379:              slli         t0, s7, 21
                  add          s9, t2, a0
                  ori          s1, s8, 474
                  blt          sp, s9, 397f
383:              bltu         s5, a2, 398f
                  addi         s0, t6, -1045
                  nop
                  bgeu         a4, s4, 387f
387:              sub          s4, s7, sp
                  srl          s8, a2, s6
                  or           s6, s10, s8
                  srl          a2, ra, a6
391:              beq          ra, t5, 404f
                  sra          s4, a3, sp
                  sll          a2, t4, t5
                  ori          a6, a4, -430
                  sll          a4, a0, t1
                  blt          s11, s6, 408f
397:              bltu         a5, s8, 403f
398:              slli         s11, a4, 0
                  srl          t4, s0, gp
                  or           a1, s0, s11
                  sll          a4, a4, s3
                  and          gp, a7, s10
403:              blt          s10, t2, 421f
404:              sltu         s1, s8, a4
                  ori          ra, a6, 1441
                  sltu         a5, t6, s11
                  slti         zero, t4, -1488
408:              xor          s11, s0, a1
                  sub          s4, t4, s11
                  or           zero, s0, sp
                  xor          a0, s4, a0
                  lui          sp, 224887
                  srli         t0, tp, 14
                  sltu         t5, a0, a3
                  sra          s9, a7, s8
                  srli         s9, t2, 7
                  bltu         t3, s0, 435f
                  bne          s3, zero, 431f
                  lui          s11, 518761
                  slti         t6, a7, -29
421:              addi         gp, t0, 1235
                  andi         s11, s5, -354
                  sltu         t3, s9, s2
                  andi         a0, s9, -1075
                  add          a6, s11, s4
                  add          s6, s11, s4
                  sub          a4, a0, tp
                  srl          s8, s2, s9
                  auipc        s6, 193256
                  and          gp, t4, a5
431:              lui          s0, 472166
                  blt          t0, a0, 449f
                  slti         t5, s1, 1141
                  and          t4, t3, s4
435:              ori          s4, t5, -882
                  bge          zero, a2, 451f
                  srai         s0, a6, 29
                  auipc        s7, 468363
                  or           sp, t5, t0
                  bgeu         s9, s1, 443f
                  blt          s7, s1, 455f
                  srl          t0, t3, s5
443:              slti         a5, t4, 670
                  xori         s4, t6, -912
                  nop
                  sra          t1, t6, a5
                  sltiu        tp, tp, 398
                  sra          s1, a6, ra
449:              slt          a4, s3, ra
                  and          s2, t3, t4
451:              xori         s4, zero, -612
                  ori          t6, s1, -962
                  bgeu         zero, s9, 465f
                  bltu         gp, t4, 459f
455:              srai         t4, sp, 1
                  srli         t5, s4, 0
                  addi         ra, s3, -613
                  bne          t6, a2, 473f
459:              bne          a0, s4, 467f
                  sltu         zero, gp, a6
                  sll          sp, a7, a6
                  andi         t4, zero, -175
                  nop
                  sltiu        gp, s1, 1087
465:              add          gp, a3, t1
                  srl          a6, t1, a4
467:              xor          t0, s7, a5
                  bne          s4, a7, 473f
                  srli         t3, t3, 8
                  auipc        s2, 954681
                  xor          t0, a0, s9
                  srai         t1, s3, 11
473:              srli         s7, s1, 23
                  blt          s10, tp, 477f
                  slt          a1, s7, s9
                  xori         s2, sp, -561
477:              addi         tp, s2, 505
                  bne          s8, t1, 490f
                  bltu         s2, a0, 485f
                  sltu         s8, tp, a6
                  sub          sp, s2, s5
                  nop
                  bgeu         a7, a1, 491f
                  bge          s9, ra, 496f
485:              xori         s0, t6, -1952
                  bge          sp, t0, 506f
                  bgeu         a0, t1, 493f
                  blt          s2, a4, 503f
                  sltu         s1, a5, t5
490:              srai         sp, a3, 12
491:              xori         s1, t0, -1715
                  or           zero, a1, a5
493:              lui          sp, 1021622
                  bgeu         s3, s11, 513f
                  addi         gp, s7, 819
496:              sltiu        zero, t5, 754
                  bgeu         t5, a1, 507f
                  bge          sp, s7, 499f
499:              nop
                  slti         s6, t5, 850
                  ori          tp, s1, -379
                  bltu         t4, t6, 512f
503:              or           t4, ra, t0
                  andi         s7, a3, 1754
                  beq          s5, a2, 507f
506:              xor          t1, s2, a7
507:              bne          a3, s0, 523f
                  xor          gp, s1, t0
                  andi         t2, s4, -1658
                  ori          s7, t3, -1890
                  add          s0, gp, t6
512:              ori          a5, gp, -346
513:              auipc        s11, 662979
                  xor          tp, a5, t5
                  sub          t5, t6, t1
                  srai         s8, t5, 13
                  addi         a5, t3, -49
                  bgeu         s8, a7, 520f
                  sltu         s0, zero, s11
520:              beq          s9, a5, 530f
                  srli         t6, s10, 15
                  srl          t4, a2, a4
523:              bltu         t5, t3, 538f
                  srli         a6, t4, 7
                  add          s6, tp, s10
                  and          a5, s5, s2
                  blt          t1, gp, 528f
528:              srli         t4, a7, 13
                  bgeu         s0, zero, 549f
530:              beq          s4, t0, 545f
                  sltu         s11, t3, a4
                  or           sp, t0, s4
                  bge          s11, tp, 534f
534:              slti         a5, t1, -1373
                  xor          a0, t5, a6
                  xor          t5, s9, a6
                  sltiu        t0, s8, -2038
538:              srli         ra, a6, 30
                  xor          s0, t0, s5
                  lui          sp, 573116
                  sll          s0, t4, s9
                  xor          t1, s7, t3
                  lui          t2, 1024060
                  blt          zero, s10, 552f
545:              srl          gp, zero, s2
                  sra          s8, s9, a3
                  sub          s2, s8, s5
                  beq          s4, tp, 550f
549:              sra          t2, a1, s11
550:              bne          ra, s5, 564f
                  auipc        a5, 824647
552:              xor          t2, a4, a2
                  ori          a7, s9, 441
                  and          t6, s0, a0
                  and          s11, s7, t1
                  xori         s4, a3, 592
                  slt          tp, t0, ra
                  slt          s11, s7, t3
                  srl          t2, s2, a2
                  srli         a0, a4, 13
                  bgeu         a2, s0, 573f
                  bne          s5, t2, 574f
                  bltu         s1, t4, 578f
564:              srai         s4, sp, 11
                  andi         t3, gp, 2012
                  la           s4, region_1+1563 #start riscv_load_store_rand_instr_stream_7
                  xor          t0, s0, t5
                  srli         s6, s10, 10
                  lh           t2, -51(s4)
                  srai         s7, t4, 11
                  or           sp, s10, sp
                  and          a2, gp, s6
                  xori         t6, a5, -228
                  slt          t3, a4, a1
                  lbu          s8, 43(s4)
                  sb           t6, 6(s4)
                  sw           s8, -23(s4)
                  sb           t2, 63(s4)
                  srli         gp, s7, 13
                  lh           s1, 27(s4)
                  sw           s0, 61(s4)
                  lw           t1, -59(s4)
                  auipc        sp, 84293
                  lb           s7, 55(s4)
                  sb           s9, 14(s4)
                  lbu          s6, 30(s4)
                  addi         s9, s1, -951
                  ori          s2, s2, 452
                  lui          a2, 876556
                  lw           t1, -15(s4)
                  lb           s7, -23(s4)
                  lb           a7, -63(s4)
                  sb           s9, -16(s4)
                  sb           s0, 20(s4)
                  auipc        s7, 115867
                  lbu          t4, -4(s4)
                  sh           s3, 17(s4)
                  lui          t6, 892812
                  addi         s11, s10, 1122
                  sb           t3, 42(s4)
                  addi         s7, sp, -1140
                  srai         zero, t0, 19
                  xor          s2, s2, s5
                  sb           a6, 20(s4)
                  and          zero, a7, t0
                  srai         t5, s4, 8
                  slti         a4, gp, 1914
                  lh           a3, -29(s4)
                  lbu          a3, 31(s4)
                  andi         a6, s10, 1724
                  lbu          t5, 48(s4)
                  lb           a4, -52(s4)
                  srai         a7, t5, 19
                  sra          s2, s11, s11
                  xori         t5, s1, -1295
                  slt          a3, s1, a1
                  slti         t3, s8, -1859
                  lb           ra, 52(s4)
                  sb           t0, -8(s4) #end riscv_load_store_rand_instr_stream_7
                  blt          zero, s9, 569f
                  blt          t0, t4, 577f
                  sra          s6, s7, s8
569:              ori          s1, sp, 1478
                  slt          a4, a4, s6
                  lui          a7, 773157
                  andi         t4, s5, -1698
573:              add          s7, gp, s1
574:              slli         a3, s6, 11
                  bge          s5, a2, 593f
                  blt          s8, t6, 595f
577:              bne          a4, a0, 587f
578:              and          s1, s7, s11
                  auipc        s1, 574511
                  slli         t1, sp, 26
                  slli         t5, a0, 11
                  bge          a1, s5, 588f
                  xor          s1, s10, t4
                  sub          t2, t5, a5
                  slt          a7, a3, ra
                  andi         a3, a0, 330
587:              bge          s3, tp, 597f
588:              ori          t5, s3, -212
                  bltu         t5, t0, 606f
                  slti         t6, zero, 705
                  bge          a3, t6, 596f
                  addi         t6, t0, -908
593:              nop
                  bltu         a0, sp, 595f
595:              sltiu        a1, s0, -1913
596:              srli         s7, s7, 22
597:              srai         s11, a5, 12
                  bgeu         s2, zero, 613f
                  andi         t4, sp, -1412
                  lui          ra, 898098
                  xor          t0, t0, a0
                  sub          sp, s0, zero
                  and          a3, a2, t3
                  andi         tp, a7, 1989
                  lui          gp, 304195
606:              bne          a4, zero, 619f
                  andi         t4, zero, -1331
                  addi         s1, t6, 1576
                  slli         t3, a7, 31
                  and          ra, s1, ra
                  add          tp, t2, a7
                  ori          s9, t5, 1520
613:              srli         t5, gp, 6
                  bne          a2, s4, 620f
                  and          s8, t3, s7
                  bge          sp, a3, 619f
                  xori         t2, tp, -1684
                  sltiu        s9, s4, -1906
619:              sra          t5, a3, t5
620:              or           s4, a7, s4
                  xor          s6, a5, s7
                  lui          a5, 469242
                  xori         a5, gp, 328
                  sub          t6, s4, a1
                  sltu         s9, tp, s2
                  addi         sp, t4, 238
                  sll          s2, zero, a0
                  or           s2, s2, t4
                  sub          s4, a3, tp
                  beq          t1, ra, 648f
                  sltiu        t1, a1, 1336
                  beq          a7, t6, 640f
                  srli         s8, sp, 16
                  auipc        s1, 993457
                  nop
                  sltiu        tp, t0, -502
                  auipc        zero, 470465
                  sltu         t4, t2, s7
                  nop
640:              and          tp, zero, t4
                  sra          s6, a3, s5
                  auipc        s6, 1014022
                  xori         t0, s0, 1634
                  sub          s11, s10, s0
                  sltu         sp, s11, t6
                  and          s7, t3, t1
                  blt          sp, s11, 662f
648:              lui          ra, 1014054
                  and          a6, a3, a3
                  srl          a2, a7, a1
                  addi         t2, s7, -1224
                  auipc        s6, 539469
                  sltiu        s2, s7, 1450
                  sltu         t5, t0, s3
                  sltu         t0, ra, a0
                  srli         a5, s4, 12
                  bne          t2, s6, 673f
                  bne          s0, a5, 670f
                  sltiu        sp, s9, -63
                  xori         a3, a4, 1080
                  bltu         s3, s0, 666f
662:              sltiu        s2, a5, 1256
                  lui          s4, 523852
                  or           gp, t5, a5
                  sltiu        s7, t1, -582
666:              xori         s6, gp, -870
                  beq          s6, ra, 669f
                  xor          s7, s11, tp
669:              srai         s8, gp, 20
670:              xor          ra, s5, t3
                  sub          t1, a0, a1
                  slt          t5, s9, s4
673:              or           s0, s5, a4
                  or           ra, a6, t5
                  or           a0, t2, a1
                  sub          a2, s4, t0
                  srai         t3, s6, 11
                  xori         s1, s0, -657
                  ori          t5, s8, 98
                  andi         a7, t3, -2035
                  addi         t4, t6, 41
                  sltu         t5, t3, t1
                  sub          a3, t0, a0
                  sra          t1, sp, a1
                  bgeu         sp, t2, 687f
                  xor          t6, s2, a5
687:              slti         t3, s11, 1306
                  bgeu         s0, a2, 698f
                  bne          t5, a1, 697f
                  slti         a4, sp, 1186
                  srli         a0, a3, 30
                  slti         t1, ra, -656
                  xori         t1, t4, 409
                  srai         tp, a5, 0
                  xor          a0, a7, t4
                  sra          t3, s0, s7
697:              sll          t5, s10, ra
698:              slli         s4, s1, 6
                  srai         s2, s0, 25
                  nop
                  srli         sp, s2, 4
                  lui          s2, 725498
                  xor          s0, s7, s11
                  beq          s6, a0, 710f
                  xor          s7, a5, s2
                  slt          ra, s1, a0
                  slt          t1, s10, s9
                  add          a6, t1, sp
                  slti         a7, tp, 882
710:              xori         a0, a7, 332
                  slti         sp, s2, -431
                  slt          a5, t2, t1
                  sltu         t1, gp, s0
                  bgeu         a5, s9, 733f
                  or           a7, tp, t2
                  srli         a5, s9, 11
                  xor          s11, sp, a2
                  xor          t3, tp, s3
                  sltu         zero, a3, s6
                  bltu         a1, a5, 732f
                  sub          tp, a2, t5
                  sub          t0, t1, s0
                  sra          a1, s8, s3
                  lui          gp, 185369
                  slti         s9, t5, -1593
                  bne          s7, a4, 746f
                  sltu         s4, s5, s4
                  bltu         t6, a6, 741f
                  and          a2, s5, a7
                  slt          zero, t5, s6
                  srai         gp, t0, 12
732:              srai         t1, s1, 9
733:              and          a6, a7, t2
                  lui          zero, 157091
                  bge          t4, s5, 745f
                  bne          gp, s7, 742f
                  xor          s7, s7, tp
                  and          t1, t0, t0
                  slt          t2, s9, a2
                  addi         a5, a6, -1219
741:              srl          a2, a6, s1
742:              beq          a6, s4, 745f
                  and          t0, s9, s7
                  bgeu         ra, s1, 760f
745:              auipc        gp, 244589
746:              sra          tp, a1, t0
                  nop
                  bne          t0, ra, 763f
                  sltiu        ra, t4, 1736
                  srli         s8, t3, 10
                  beq          s2, t4, 769f
                  beq          a3, t1, 767f
                  sll          a2, s9, gp
                  srai         a0, a7, 18
                  or           t5, s8, s8
                  or           s11, a4, a0
                  xori         s1, s4, 1843
                  or           s8, a7, ra
                  sll          t4, s10, zero
760:              slti         a6, s10, -715
                  bge          t3, a4, 762f
762:              and          sp, sp, a5
763:              srli         tp, sp, 16
                  andi         t0, s10, -1765
                  addi         a7, sp, 1064
                  bne          tp, ra, 771f
767:              ori          s0, s8, -620
                  andi         t3, a5, 1169
769:              andi         zero, s7, -1526
                  ori          s1, s2, -1756
771:              bge          a7, t4, 789f
                  sltu         tp, s6, tp
                  srai         s7, ra, 31
                  bltu         ra, a0, 786f
                  lui          a0, 563892
                  sltu         t1, t0, s9
                  bge          tp, t4, 779f
                  bgeu         s2, zero, 786f
779:              lui          sp, 129683
                  ori          a0, a5, -1173
                  xori         ra, s5, -1447
                  sltiu        t4, a2, 15
                  xori         s2, t0, 530
                  bltu         t6, a1, 787f
                  sll          tp, a1, t6
786:              blt          s10, t0, 803f
787:              sub          ra, t2, s4
                  sll          s8, t3, t1
789:              ori          ra, s11, 749
                  bge          t4, t1, 795f
                  srl          a0, a0, t1
                  ori          tp, s5, -862
                  nop
                  auipc        ra, 903628
795:              bgeu         t4, gp, 807f
                  beq          s4, t3, 811f
                  lui          t3, 71763
                  nop
                  srli         s7, tp, 4
                  add          sp, gp, t4
                  slli         t4, gp, 3
                  xori         a5, s5, -1050
803:              beq          s10, s9, 804f
804:              srai         s1, s7, 4
                  slli         a1, t2, 20
                  sltu         t0, s0, a2
807:              sra          s11, t4, sp
                  bne          s5, t3, 823f
                  lui          a3, 499480
                  sll          a3, a2, a7
811:              slli         s6, a7, 3
                  or           t2, t5, t3
                  ori          s4, a1, -1735
                  or           sp, t4, s9
                  slti         t2, s6, -786
                  auipc        s8, 401795
                  xori         a4, t5, -171
                  lui          s7, 106276
                  slt          a4, t2, s3
                  sltiu        a5, t6, -916
                  sra          s8, a2, a4
                  beq          s0, t1, 836f
823:              bge          a4, s0, 833f
                  sub          a2, a7, t6
                  lui          t1, 545276
                  xor          t4, s6, t1
                  bgeu         t0, t4, 840f
                  sltiu        t2, a7, -1164
                  slli         s7, s2, 8
                  sll          t0, s1, t0
                  srai         a1, s9, 16
                  sra          s1, s2, s5
833:              add          s6, a4, a0
                  lui          s11, 39764
                  sltiu        t4, s2, -910
836:              or           s0, s4, a2
                  sll          a4, s4, t3
                  nop
                  slti         a5, a7, -737
840:              lui          s2, 602763
                  bgeu         t0, t2, 856f
                  bltu         zero, s3, 857f
                  sltiu        a7, a3, 2030
                  add          s8, s0, s11
                  and          a1, s10, s0
                  lui          s0, 142487
                  ori          ra, s0, 1107
                  xori         t2, s5, 1300
                  xori         t1, a0, 921
                  add          gp, a6, a1
                  srai         s2, t3, 25
                  bgeu         s1, sp, 860f
                  beq          s2, a4, 865f
                  ori          t1, a2, -515
                  bne          t2, tp, 856f
856:              blt          s4, s1, 872f
857:              srai         t1, s8, 27
                  srl          a3, s7, t6
                  la           ra, region_0+1104 #start riscv_load_store_rand_instr_stream_2
                  lb           t6, -527(ra)
                  sb           s2, -955(ra)
                  xor          a5, s9, s3
                  lh           a0, 588(ra)
                  or           a3, a7, s1
                  lbu          a4, -978(ra)
                  srai         t1, zero, 2
                  sb           sp, 317(ra)
                  srai         s2, t2, 17
                  or           s11, s0, s5
                  nop
                  srl          a1, s10, t0
                  and          zero, a7, gp
                  xor          s2, s0, s5
                  andi         a1, tp, 1893
                  ori          a2, s9, 621
                  slti         t3, s8, 767
                  slti         a6, zero, 719
                  sb           s1, -663(ra)
                  lb           t4, 42(ra)
                  sh           s11, -242(ra)
                  ori          t0, a4, -1774
                  sb           a6, 840(ra)
                  xor          s7, ra, t3
                  sub          s7, a4, s10
                  slti         a6, a2, 1198
                  or           a2, s2, sp
                  sb           a4, 409(ra)
                  lb           s4, -628(ra)
                  nop
                  lhu          t6, -90(ra)
                  sb           a2, 447(ra)
                  or           t2, a2, s5
                  lb           t0, 164(ra)
                  sh           s7, 762(ra)
                  slti         s2, a6, -1085
                  sub          s4, t3, s10
                  sw           tp, 760(ra)
                  lb           t2, -671(ra) #end riscv_load_store_rand_instr_stream_2
                  andi         t5, ra, 931
860:              srli         t0, s6, 27
                  xori         t3, s10, 1632
                  andi         t4, t1, -1466
                  srl          gp, s3, s9
                  bne          s2, s7, 878f
865:              addi         a2, t3, -94
                  srl          t4, s7, t5
                  beq          s3, a4, 869f
                  srai         t1, t4, 15
869:              andi         zero, t4, 1584
                  sub          a6, s0, a4
                  sll          a3, a1, a1
872:              srai         a0, t4, 2
                  and          t6, s9, a7
                  addi         s1, s11, 2005
                  srl          tp, a4, a2
                  sra          a1, t3, s1
                  sltu         zero, s5, t5
878:              slli         sp, t2, 12
                  slti         a3, tp, -706
                  srai         s6, a1, 4
                  addi         t4, t3, 356
                  sltiu        s0, s7, 1229
                  sub          s11, a2, s9
                  blt          a1, t4, 903f
                  srai         t6, a5, 6
                  bltu         s8, s10, 887f
887:              xor          a2, s10, a0
                  bne          s2, a7, 906f
                  slti         s8, a6, 1449
                  and          s0, t1, sp
                  bne          s10, s9, 909f
                  slt          s6, s3, t5
                  and          a2, s10, t6
                  slti         t3, s4, -1777
                  xori         s7, t2, 1054
                  bne          a1, a3, 902f
                  add          a7, a1, s7
                  sll          s7, t0, s8
                  bgeu         t1, ra, 909f
                  nop
                  ori          a4, a6, 1779
902:              sltu         t1, a7, a6
903:              and          t1, t3, s9
                  srl          s8, tp, s9
                  xor          t5, t4, t1
906:              blt          s6, a7, 921f
                  xori         t1, t6, 1107
                  slti         t2, a1, 190
909:              or           s7, a3, t3
                  add          s7, s4, a2
                  sltiu        t0, s3, -1796
                  auipc        gp, 278331
                  bgeu         a0, a4, 925f
                  sub          t4, t6, t0
                  slt          s9, s0, s8
                  addi         s8, s10, -1894
                  auipc        s0, 512186
                  sub          a4, s6, s11
                  sll          a2, s6, s11
                  addi         t1, tp, 352
921:              addi         zero, tp, 1653
                  sra          gp, a3, zero
                  or           s7, t5, a6
                  lui          s6, 666122
925:              nop
                  bltu         sp, t5, 929f
                  srl          t2, a6, s6
                  xor          s0, a6, t2
                  la           gp, sub_9
                  andi         s4, s8, 481
                  sra          a5, a4, t4
                  slli         s0, a1, 2
                  addi         gp, gp, 740
                  nop
                  bge          s8, a6, sub_6_j12 #branch to jump instr
                  lui          a3, 69412
sub_6_j12:        jalr         t1, gp, -739 #jump sub_6 -> sub_9
929:              auipc        tp, 84071
                  lui          a4, 22536
                  or           s11, a7, sp
                  ori          t4, s5, -2014
                  slt          s11, s7, t1
                  bgeu         s8, t6, 954f
                  slti         s4, s0, -1588
                  ori          s11, a2, 1585
                  slti         s7, s2, 1071
                  slli         s0, gp, 23
                  slt          t6, s9, t5
                  bne          s1, a0, 946f
                  srli         s11, s0, 30
                  auipc        t1, 906062
                  andi         t3, t5, -1902
                  bne          s10, t0, 947f
                  ori          t2, a3, -646
946:              and          a1, s7, s6
947:              nop
                  sra          a4, a5, a7
                  andi         a0, a4, 111
                  add          t2, t1, t0
                  slli         a7, s0, 15
                  srai         s4, s11, 27
                  andi         zero, s9, 1326
954:              srai         a1, ra, 31
                  beq          zero, s6, 965f
                  add          t4, a1, s0
                  sub          s1, t3, s3
                  sltu         t6, zero, a7
                  bltu         ra, s4, 964f
                  andi         s1, gp, 383
                  or           t4, s11, s3
                  srai         gp, a5, 21
                  slli         t3, a7, 0
964:              slt          a7, gp, t5
965:              beq          a2, s6, 977f
                  slti         ra, s11, -175
                  slt          a0, s10, t3
                  add          a5, s2, a5
                  blt          t4, s3, 986f
                  slti         s9, s7, -1323
                  sltiu        t1, a6, 40
                  auipc        t0, 1004946
                  bge          s1, s7, 988f
                  nop
                  slt          a7, a5, a1
                  auipc        s0, 255708
977:              srli         a0, t5, 12
                  sltiu        s9, ra, 1543
                  and          sp, t0, s11
                  sub          sp, s0, s6
                  and          t2, a2, tp
                  auipc        s11, 432823
                  addi         t0, a2, -455
                  bge          a3, sp, 992f
                  sra          s9, a5, s10
986:              andi         t3, ra, -383
                  sub          s6, t6, a2
988:              srai         a7, s3, 21
                  and          a7, a2, ra
                  slli         s2, s5, 10
                  srli         t3, t0, 2
992:              addi         s6, t3, -1263
                  xor          t1, t1, gp
                  add          s2, s5, s7
                  or           t3, a5, s1
                  sltiu        t5, s8, -822
                  auipc        s8, 506955
                  or           zero, tp, a5
                  auipc        a4, 224058
                  bne          a3, s2, 1010f
                  slti         tp, s8, 327
                  srai         a2, zero, 31
                  bltu         s1, s11, 1008f
                  slli         tp, s3, 22
                  addi         a4, s8, 493
                  blt          a0, a1, 1008f
                  xori         a0, tp, -278
1008:             bge          s7, a7, 1016f
                  blt          s7, s7, 1023f
1010:             sltu         s1, s3, t2
                  slt          ra, s10, a6
                  slti         s8, t0, 745
                  or           a7, a7, s2
                  sub          s7, a5, a6
                  sltiu        a6, s5, -801
1016:             nop
                  addi         gp, t3, -2012
                  or           s4, s8, s0
                  slti         s7, a2, 1974
                  sub          a1, s5, s7
                  bge          t6, s9, 1039f
                  sltu         t5, s1, s10
1023:             slli         tp, s3, 27
                  sub          t5, a3, s7
                  srli         tp, tp, 0
                  blt          s8, s6, 1038f
                  slt          s1, s6, s8
                  auipc        gp, 41001
                  nop
                  srai         a6, tp, 4
                  add          t3, s7, s8
                  andi         t5, s5, 800
                  lui          t3, 449944
                  auipc        t6, 98565
                  lui          a7, 163186
                  sll          sp, s4, s4
                  addi         s11, tp, -1975
1038:             lui          t3, 680597
1039:             srl          a0, t4, a3
                  sll          sp, a2, t3
                  srai         t3, s1, 24
                  bne          s11, a6, 1060f
                  xori         s8, s3, -1005
                  xor          t4, t0, s4
                  addi         s2, s3, -567
                  sll          a0, t3, gp
                  bgeu         a0, t1, 1062f
                  sltiu        a3, s9, 188
                  sll          a7, a3, s6
                  and          a4, sp, a7
                  sltu         s4, ra, t3
                  slt          s8, t1, tp
                  slt          s9, t5, s8
                  srli         a6, gp, 22
                  srli         a0, s9, 24
                  sltiu        a6, a0, -200
                  auipc        a5, 237320
                  bne          a7, sp, 1070f
                  bgeu         s7, s2, 1074f
1060:             lui          s4, 1010383
                  srai         a4, s0, 2
1062:             xor          t2, ra, t6
                  bgeu         a7, s6, 1073f
                  sltu         s11, t2, t4
                  bgeu         a5, tp, 1078f
                  sltu         a2, s11, t6
                  ori          s6, gp, -143
                  bne          s9, s2, 1083f
                  andi         a5, t1, -743
1070:             or           s6, s11, sp
                  auipc        t4, 853883
                  beq          s6, s0, 1080f
1073:             add          s6, s5, zero
1074:             sub          a6, t6, a2
                  addi         s0, t1, -1044
                  bgeu         s4, t3, 1096f
                  addi         tp, a1, -1719
1078:             sub          t1, a3, a4
                  sltiu        a5, s1, 368
1080:             bltu         t1, s0, 1096f
                  lui          t1, 860180
                  xor          t4, a2, s4
1083:             srl          s0, s9, t3
                  sltu         s1, a5, s11
                  or           s9, s7, s9
                  add          s1, s1, t2
                  sra          s9, t5, s0
                  xori         a3, a6, 1070
                  sll          a5, t0, s11
                  bne          t3, a0, 1092f
                  or           sp, a6, a2
1092:             bne          s2, t3, 1104f
                  sltu         zero, s8, s0
                  andi         a6, s8, 1493
                  sltu         t1, s1, s11
1096:             slt          t3, s3, a4
                  nop
                  addi         tp, t4, -1977
                  nop
                  bltu         s0, t1, 1103f
                  and          t5, tp, s4
                  or           s0, s9, sp
1103:             ori          s0, s3, -728
1104:             or           s2, s8, t2
                  srl          a2, t3, a7
                  xor          a2, t5, a0
                  sltiu        s11, t3, -254
                  slt          s0, s1, ra
                  bne          s11, a6, 1114f
                  sltu         t3, sp, s10
                  sll          a7, t0, a0
                  sra          ra, s8, t5
                  xori         t3, ra, -1913
1114:             nop
                  bltu         zero, t1, 1121f
                  bne          t2, tp, 1133f
                  or           a7, a0, a2
                  srli         s6, t5, 6
                  add          ra, t2, t3
                  srl          t6, a5, s3
1121:             sra          s2, s2, sp
                  and          a5, a3, a6
                  xor          t1, s2, s6
                  and          a4, t1, sp
                  andi         s1, zero, 1511
                  bgeu         t4, s7, 1136f
                  bge          s3, s8, 1137f
                  sltu         t5, a6, s0
                  srl          tp, t3, a1
                  blt          t5, a2, 1131f
1131:             srai         sp, t1, 14
                  xor          a2, tp, a6
1133:             sra          s1, a7, a4
                  sra          a1, t2, a4
                  lui          a3, 967839
1136:             bgeu         t6, a2, 1155f
1137:             slti         t4, zero, 366
                  andi         a6, s6, -860
                  slli         s2, t5, 14
                  or           a7, t2, a5
                  or           s4, a7, s3
                  srai         t2, a6, 28
                  blt          a4, a4, 1145f
                  bne          s11, t5, 1149f
1145:             blt          gp, s5, 1151f
                  srl          t3, s9, t1
                  andi         a0, t1, 1766
                  srli         t1, a2, 26
1149:             slti         a4, a6, 1670
                  slli         s9, s1, 13
1151:             or           tp, ra, s5
                  sub          a6, tp, a6
                  blt          a4, s4, 1154f
1154:             slti         t5, a6, -1789
1155:             sll          s8, tp, t6
                  beq          a0, ra, 1159f
                  or           s9, a0, s9
                  srli         ra, s8, 2
1159:             bltu         s3, s10, 1174f
                  blt          s0, a5, 1170f
                  sll          a4, a6, s2
                  or           t3, s5, s0
                  blt          ra, s6, 1173f
                  blt          a5, t5, 1167f
                  or           a6, s4, s2
                  sltu         a7, s1, s5
1167:             srai         a0, s4, 30
                  lui          a6, 796103
                  slti         s1, s2, 2031
1170:             andi         s11, a5, 1666
                  and          sp, s8, zero
                  xor          zero, a1, a6
1173:             srl          s8, s6, s10
1174:             and          s8, ra, s9
                  sub          s0, zero, s2
                  sub          t0, t3, t2
                  slt          a4, s11, s8
                  bne          a1, a0, 1190f
                  slti         a2, s1, 1070
                  beq          a4, s3, 1182f
                  sra          a7, s2, t0
1182:             addi         a0, s4, 1637
                  sltiu        t5, s10, -1951
                  auipc        s4, 44042
                  bltu         s6, a0, 1193f
                  ori          t6, s6, -2009
                  xori         a3, s5, 728
                  sra          a6, s11, t5
                  slt          a2, s3, t3
1190:             nop
                  xor          s0, t6, t0
                  xor          t3, a1, zero
1193:             beq          t6, ra, 1213f
                  bltu         s10, gp, 1195f
1195:             slli         a0, a6, 11
                  bgeu         s5, s7, 1214f
                  bgeu         s9, s7, 1212f
                  xori         a5, a6, 1736
                  sra          a4, t4, zero
                  nop
                  bge          s11, t1, 1216f
                  ori          zero, a0, 2022
                  xori         t4, t2, 998
                  sltiu        a2, tp, 1585
                  slli         s9, a6, 23
                  andi         s6, t3, -1597
                  lui          t0, 47678
                  slti         a1, a6, 1437
                  slt          t6, s9, a1
                  addi         s4, t0, -1228
                  sltiu        s11, t1, -996
1212:             and          sp, a4, ra
1213:             blt          a0, t4, 1218f
1214:             bge          t6, a3, 1232f
                  ori          s7, t2, 803
1216:             slli         gp, s11, 3
                  sltiu        s4, t6, 1736
1218:             xor          gp, s5, t5
                  sra          s9, t6, s8
                  andi         s1, s0, 1299
                  addi         t2, t5, -781
                  sub          s6, s10, a6
                  or           sp, ra, a1
                  bgeu         t3, t1, 1239f
                  andi         s1, a0, 1091
                  andi         a0, t1, 2003
                  ori          gp, t3, 1482
                  srl          s11, t5, s9
                  sltu         s6, s10, t5
                  beq          s9, t1, 1232f
                  and          zero, s4, t5
1232:             srl          s4, s0, s1
                  sll          a5, t4, t3
                  xori         s7, s9, 306
                  slt          s0, s7, s5
                  ori          a7, zero, -1770
                  beq          t5, t5, 1251f
                  srl          s7, a7, ra
1239:             srl          zero, tp, a7
                  add          t4, tp, s10
                  slt          t1, t1, s3
                  auipc        t6, 371460
                  srli         sp, t2, 25
                  slti         t2, a5, 469
                  bge          zero, s7, 1255f
                  sll          zero, s6, a6
                  sub          s1, t6, a5
                  xor          t5, zero, s2
                  auipc        a1, 23825
                  xori         a5, t4, 690
1251:             beq          t0, gp, 1268f
                  srli         tp, a1, 25
                  ori          ra, t3, -874
                  bltu         t5, a0, 1266f
1255:             slti         a6, s10, -192
                  bgeu         s9, s11, 1271f
                  and          t5, a4, a6
                  slti         ra, t4, 60
                  or           s1, s7, t1
                  slt          t2, s5, s2
                  sll          a7, t1, a0
                  ori          t4, t3, 1837
                  bne          t1, s4, 1275f
                  addi         s11, s3, -1970
                  sra          sp, a4, t4
1266:             sltu         sp, t5, a1
                  bne          a0, s9, 1272f
1268:             blt          s7, t5, 1271f
                  addi         s6, a6, -1198
                  bne          t4, a1, 1289f
1271:             sub          s7, t3, s4
1272:             slti         s7, s8, -1029
                  xor          s0, s10, a7
                  sra          ra, sp, s8
1275:             sra          s9, s3, s0
                  sub          a7, a6, t6
                  slt          t6, gp, a2
                  bne          s9, a1, 1286f
                  sub          s8, gp, t1
                  srl          s1, s11, t6
                  and          s6, a7, s9
                  xor          a1, a1, zero
                  bgeu         zero, a1, 1299f
                  or           a6, s10, a4
                  srai         s7, s8, 22
1286:             slti         a4, s9, -1775
                  srai         ra, a5, 23
                  lui          t6, 1041764
1289:             srli         a6, a1, 20
                  sra          a2, t3, gp
                  or           s0, s2, ra
                  nop
                  beq          s7, t3, 1306f
                  or           zero, t6, a1
                  slli         s0, t5, 12
                  bltu         t4, s3, 1297f
1297:             andi         t3, s6, -659
                  slti         t5, t4, 793
1299:             srl          t2, s7, t4
                  bltu         s4, t4, 1306f
                  lui          s9, 721240
                  lui          t5, 693330
                  sra          ra, s9, s5
                  and          t4, t0, zero
                  or           zero, s0, sp
1306:             andi         s1, s8, 834
                  srl          t4, s8, s0
                  lui          zero, 890376
                  sub          a5, s9, s10
                  srli         s7, t3, 14
                  lui          gp, 461847
                  auipc        t4, 121536
                  or           t3, s1, s10
                  srl          a6, s3, t4
                  sltiu        a3, sp, 1325
                  sub          ra, gp, a2
                  and          t4, a1, s5
                  add          gp, s9, s7
                  auipc        t5, 1033122
                  or           s1, s3, ra
                  sub          ra, a4, s3
                  srai         s11, t0, 23
                  addi         s2, a3, 2043
                  beq          a4, t2, 1330f
                  andi         s1, a4, 1819
                  xori         t6, s7, 925
                  or           s1, a7, a3
                  bltu         gp, s4, 1333f
                  addi         s2, a4, -1044
1330:             srai         a3, s4, 23
                  auipc        s0, 364411
                  bne          t2, s9, 1347f
1333:             addi         s9, gp, 1117
                  srl          t2, a7, s11
                  auipc        s11, 329058
                  slt          a6, sp, s8
                  ori          s9, a6, 326
                  srli         s1, a0, 28
                  srai         zero, a3, 15
                  bge          s2, a5, 1348f
                  xori         t6, t1, 85
                  beq          s8, a0, 1354f
                  sra          t3, s7, a0
                  beq          s6, t5, 1347f
                  bltu         s0, t2, 1365f
                  sra          sp, s7, zero
1347:             auipc        a7, 823367
1348:             nop
                  bne          s3, a1, 1365f
                  sltu         t6, t5, a7
                  slt          a6, sp, t4
                  slti         s9, t0, -508
                  srai         s9, a2, 25
1354:             addi         t0, a1, -840
                  slt          gp, s0, s2
                  slli         a4, t2, 1
                  and          ra, t2, a5
                  srai         a3, zero, 22
                  or           sp, t0, s0
                  sra          a3, a0, t3
                  sub          s8, s10, s11
                  auipc        t2, 370484
                  sub          sp, gp, ra
                  sub          s8, t2, t6
1365:             blt          zero, t2, 1383f
                  sub          t5, t5, t6
                  bne          s9, s0, 1369f
                  add          a6, a4, s0
1369:             bgeu         s4, gp, 1379f
                  auipc        sp, 785582
                  xori         ra, ra, 324
                  sub          a1, t3, t4
                  sub          t3, s1, t1
                  bne          t6, s0, 1379f
                  srli         t5, s10, 25
                  slli         t1, s4, 19
                  add          sp, ra, sp
                  and          t3, s5, s8
1379:             lui          t4, 119736
                  or           t3, gp, a0
                  lui          s6, 132589
                  xori         s4, s11, -1392
1383:             bgeu         s0, ra, 1395f
                  sub          gp, t4, t0
                  bltu         s5, s3, 1391f
                  bge          s9, t3, 1399f
                  ori          s4, s8, 595
                  or           a1, a6, s4
                  slt          s1, s11, s2
                  beq          a0, a5, 1405f
1391:             sltiu        a2, t3, -1437
                  auipc        s2, 779172
                  beq          s11, t0, 1395f
                  slti         t4, s1, 325
1395:             sltiu        a0, a6, -1168
                  sltu         s9, a2, a0
                  ori          s11, t4, -1612
                  slt          a4, t3, sp
1399:             srl          s4, s2, a6
                  beq          t4, t0, 1418f
                  sra          zero, a7, a0
                  xori         s8, a4, -1049
                  beq          a3, a0, 1409f
                  bne          t5, gp, 1416f
1405:             addi         a0, t0, -758
                  auipc        sp, 964409
                  blt          t2, sp, 1422f
                  bgeu         a4, zero, 1409f
1409:             slt          a2, sp, s7
                  srai         s4, s8, 11
                  beq          tp, s2, 1421f
                  sra          t2, s7, a6
                  sltiu        s1, gp, -1483
                  bne          t1, s8, 1417f
                  slli         zero, sp, 26
1416:             beq          s8, gp, 1435f
1417:             sra          s1, s6, t1
1418:             or           a2, sp, t0
                  auipc        s6, 778376
                  nop
1421:             addi         tp, zero, -252
1422:             and          a6, ra, t2
                  sra          a4, tp, t1
                  bge          a5, t4, 1438f
                  blt          s1, a7, 1426f
1426:             sra          t3, t0, s10
                  lui          s1, 297257
                  la           a1, region_0+651 #start riscv_load_store_rand_instr_stream_0
                  lh           t5, -47(a1)
                  sb           s1, 44(a1)
                  lbu          s8, 1(a1)
                  andi         s6, t5, 1984
                  lhu          sp, 23(a1)
                  sltu         s6, t3, a5
                  lb           a3, -55(a1)
                  lb           s7, 57(a1)
                  sh           a5, -13(a1)
                  andi         t2, a3, -1804
                  lbu          sp, 0(a1)
                  sb           t4, -50(a1)
                  lui          t4, 481302
                  sh           a7, -13(a1)
                  sb           s0, 47(a1)
                  lbu          a0, 43(a1)
                  lbu          a0, -46(a1)
                  lhu          gp, -23(a1)
                  lb           t1, -22(a1)
                  srli         a6, gp, 8
                  lbu          a6, 46(a1)
                  or           s2, s6, zero
                  lb           tp, -27(a1)
                  sb           sp, -19(a1)
                  sra          s8, t4, tp
                  lhu          s8, 37(a1)
                  lw           t1, -15(a1)
                  sh           s3, -5(a1)
                  and          t1, zero, t0
                  srai         a0, a2, 8
                  sub          a7, t1, s5
                  sh           s6, 1(a1)
                  sb           a6, 29(a1) #end riscv_load_store_rand_instr_stream_0
                  slt          s8, gp, t5
                  addi         a1, a7, 1633
                  bne          gp, t2, 1447f
                  bltu         a5, t1, 1446f
                  add          s11, zero, s1
                  ori          t4, a2, 1847
                  and          a6, s11, tp
1435:             slt          a0, s6, s2
                  bltu         s0, s5, 1446f
                  addi         a6, s4, 375
1438:             sltu         t4, t1, t1
                  nop
                  and          t5, a1, s9
                  slli         t3, s9, 25
                  ori          a5, a5, -679
                  slli         ra, sp, 16
                  sra          t1, s11, a7
                  bge          sp, s3, 1453f
1446:             xori         a1, t6, -1449
1447:             slti         s4, tp, 1578
                  slt          a5, t0, t5
                  xor          s11, a2, s8
                  bge          a0, s3, 1453f
                  ori          s9, t5, -1887
                  addi         zero, s8, 274
1453:             beq          s10, a2, 1463f
                  add          a5, zero, t3
                  sub          tp, s6, s4
                  slt          s7, tp, a4
                  beq          ra, a6, 1469f
                  sll          a0, t5, a6
                  auipc        s1, 702035
                  or           a6, ra, a7
                  or           t5, s4, a0
                  sll          a4, t0, a2
1463:             auipc        tp, 73927
                  sra          sp, zero, s8
                  bgeu         s10, s6, 1469f
                  srli         s11, a1, 8
                  addi         ra, a3, 1809
                  xor          a2, zero, a7
1469:             slli         s1, t5, 10
                  xori         a5, a1, 852
                  auipc        t3, 559058
                  srl          s1, s5, t0
                  lw           t1, 4(s3)
                  or           s8, t6, s3
                  addi         s3, s3, 20
                  xor          gp, a6, s6
1984:             addi x10, x6, 0
1984:             jalr x10, x10, 0
sub_9:            and          t5, tp, ra
                  addi         s1, gp, 957
                  addi         s3, s3, -32
                  sw           t1, 4(s3)
                  sltu         a1, sp, a3
                  bne          s11, a3, 7f
                  xori         s1, s8, 1958
                  bge          a3, s7, 4f
                  or           a1, tp, a2
4:                slli         t5, s11, 22
                  addi         s11, a3, 864
                  auipc        s4, 677236
7:                and          s8, s3, s4
                  srl          s1, ra, s2
                  xor          sp, s7, tp
                  bge          s4, s2, 26f
                  add          t5, s9, s4
                  bgeu         a6, t2, 23f
                  add          a0, a3, ra
                  add          t5, sp, a3
                  sub          a6, s11, t6
                  sra          t1, a0, s10
                  andi         s8, s4, 308
                  and          a6, a4, s5
                  srl          a7, sp, a2
                  srl          s2, a4, zero
                  srli         s6, t0, 2
                  ori          a1, s10, 1813
23:               add          s9, s11, ra
                  and          t5, sp, t3
                  auipc        t6, 150624
26:               addi         t3, s4, -1132
                  add          s11, t4, s10
                  sra          a4, s2, a4
                  ori          zero, s7, 2042
                  xori         s1, s11, -796
                  auipc        a0, 787979
                  and          t3, a0, a6
                  lui          t5, 277483
                  bge          t4, a7, 46f
                  slti         zero, t0, 1026
                  bltu         tp, t5, 46f
                  or           zero, t4, tp
                  xor          a0, ra, s3
                  bge          gp, s8, 40f
40:               or           a1, sp, a0
                  andi         s11, a0, 1842
                  srli         s9, t1, 2
                  bltu         a0, t6, 46f
                  srai         t4, t3, 27
                  bne          t1, t3, 46f
46:               nop
                  sltu         a0, s6, s11
                  sltiu        t3, tp, 742
                  or           s2, t6, t0
                  sltu         t6, gp, t3
                  lw           t1, 4(s3)
                  srai         s11, t6, 17
                  addi         s3, s3, 32
                  slt          t0, a2, a4
                  addi         s4, s2, 311
                  auipc        gp, 444432
                  ori          t5, a6, 1453
63:               addi x18, x6, 0
63:               jalr x18, x18, 0
sub_8:            sub          t3, s6, s6
                  srli         t0, t0, 0
                  addi         s3, s3, -28
                  addi         a0, s0, -1907
                  or           a4, a7, sp
                  addi         t2, t5, -1569
                  srai         s9, a4, 8
                  sw           t1, 4(s3)
                  addi         s8, s2, -1984
                  la           s8, region_1+1785 #start riscv_load_store_rand_instr_stream_1
                  lb           t2, 174(s8)
                  srli         t5, ra, 8
                  addi         s9, s1, 208
                  auipc        tp, 48724
                  lui          a1, 752484
                  andi         s0, a7, -1946
                  sw           a1, -57(s8)
                  sub          gp, s0, t0
                  lbu          t3, 106(s8)
                  lh           t4, -103(s8)
                  lb           a4, -34(s8)
                  lbu          zero, 148(s8)
                  sb           a3, -81(s8)
                  lbu          s6, -66(s8)
                  sltiu        t5, a0, 941
                  lh           t1, -39(s8)
                  xor          t3, s2, s8
                  lbu          t1, -8(s8)
                  xori         s2, sp, -1508
                  sll          s7, a4, s4
                  addi         s6, t1, 522
                  add          t0, a6, t2
                  sub          s2, s10, t4
                  and          s1, s8, a0
                  sltiu        a3, s9, -273
                  srai         s1, t5, 27
                  xor          t0, s3, s3
                  auipc        a3, 944069
                  slt          s2, t6, sp
                  lhu          t4, -27(s8)
                  slt          t4, t4, t6
                  sb           s9, -61(s8)
                  lhu          s1, -79(s8)
                  slt          t3, t6, a7
                  ori          a2, s5, 56
                  lhu          s1, 87(s8)
                  sb           t1, 128(s8) #end riscv_load_store_rand_instr_stream_1
                  bltu         sp, a3, 9f
                  sll          zero, sp, s4
                  or           t1, t1, tp
                  slti         s6, a6, -1201
                  sub          s9, s1, s9
                  sll          s9, s11, t1
                  bltu         t0, s3, 17f
                  beq          s4, a7, 14f
                  add          t2, a7, s6
9:                sltiu        a6, tp, 374
                  srl          s0, tp, t0
                  beq          s2, a0, 18f
                  slli         t0, zero, 3
                  add          a5, a5, t0
14:               bgeu         a6, s6, 34f
                  srli         tp, a5, 13
                  slt          gp, a4, s2
17:               bltu         a6, a2, 33f
18:               slt          tp, t1, a4
                  xori         ra, gp, -1879
                  xor          a6, sp, t3
                  sra          tp, s4, s0
                  bge          a5, zero, 30f
                  sltu         zero, tp, t6
                  bltu         s3, t5, 42f
                  sub          t0, a6, s5
                  sub          s9, t4, sp
                  srai         t2, gp, 26
                  srli         t1, zero, 8
                  sltu         a6, t1, s10
30:               auipc        s7, 399851
                  bne          a3, s10, 51f
                  srl          s7, gp, s9
33:               lui          s1, 398443
34:               bne          ra, t1, 37f
                  auipc        t0, 314298
                  nop
37:               ori          tp, a6, 1879
                  and          a2, s4, s7
                  add          s8, a7, tp
                  sll          t3, s8, s6
                  ori          a1, t1, -674
42:               slli         t2, s9, 17
                  sub          s2, a2, s0
                  slli         gp, a1, 17
                  srl          a7, s4, s8
                  add          s9, s0, zero
                  andi         s11, sp, 1537
                  xor          ra, sp, s9
                  bgeu         s1, s9, 50f
50:               sll          a3, t0, t5
51:               xor          a4, sp, s3
                  auipc        s0, 927547
                  sltu         s6, s2, s2
                  sra          t1, ra, ra
                  slti         t3, t2, 1673
                  blt          a1, t2, 67f
                  andi         s6, t4, -1322
                  slt          t3, s7, s4
                  srl          t1, a6, zero
                  auipc        a1, 762189
                  bge          a4, a1, 67f
                  or           a5, tp, s8
                  xor          a3, s3, s4
                  slli         t4, s9, 1
                  sra          ra, s3, t4
                  sra          s11, a2, s7
67:               srai         zero, t2, 24
                  slti         t2, t6, 438
                  slt          t0, ra, s6
                  sltu         gp, s0, sp
                  or           t2, zero, a1
                  sll          a0, tp, a5
                  srl          a0, a1, t4
                  andi         a3, a2, 702
                  xori         zero, t3, -851
                  lui          s11, 918567
                  and          t3, s8, a6
                  lui          a1, 323180
                  add          a3, a7, t5
                  bltu         sp, t1, 82f
                  slli         zero, a4, 27
82:               bltu         a0, s2, 94f
                  and          gp, sp, t2
                  andi         zero, s5, 896
                  sltiu        t5, s1, 1510
                  slti         t6, a5, 1165
                  slt          a4, t5, s7
                  srai         a7, sp, 17
                  bge          t2, s9, 107f
                  bgeu         s7, a1, 95f
                  sub          s9, gp, t5
                  beq          a6, s1, 99f
                  xor          t0, sp, s5
94:               add          t5, a4, a3
95:               sltu         gp, a2, s9
                  slti         gp, t4, -1543
                  andi         tp, t5, -1922
                  nop
99:               xor          s11, s3, a7
                  srl          zero, s5, a1
                  and          a7, tp, a7
                  slli         s11, gp, 3
                  auipc        a5, 581526
                  beq          zero, gp, 124f
                  sra          t2, a4, t1
                  andi         s7, s0, 1610
107:              srl          a3, t3, a5
                  srl          s7, s1, t2
                  slt          a1, a5, t4
                  bltu         zero, s8, 116f
                  xor          s9, a3, s5
                  andi         s9, s6, -2044
                  srl          ra, s10, a2
                  andi         a0, t6, -1839
                  sub          s11, a3, tp
116:              sra          s9, t2, s8
                  addi         t3, s8, -1549
                  slti         s1, t3, 1717
                  add          t5, sp, t3
                  bltu         zero, s4, 126f
                  srli         t0, a1, 6
                  srl          t4, t1, t1
                  bne          sp, a5, 131f
124:              and          t5, s1, a0
                  xor          s6, t6, t3
126:              srli         s6, s10, 6
                  sltu         s4, t1, t5
                  xori         s6, ra, 784
                  xor          t6, s7, t6
                  xor          a0, a0, zero
131:              bltu         s11, s2, 133f
                  sltiu        t1, t2, -130
133:              slt          s0, t4, sp
                  sltiu        sp, a1, -814
                  nop
                  addi         zero, a6, -954
                  andi         tp, s6, -1374
                  sltiu        t2, t1, -1411
                  bgeu         a4, a0, 148f
                  bgeu         s3, s10, 143f
                  slti         a7, s11, 613
                  xori         a6, s0, -664
143:              beq          t6, s5, 145f
                  sltu         a7, s5, s11
145:              auipc        t2, 676312
                  auipc        t5, 16668
                  xor          s9, s2, t2
148:              slt          a7, a0, s2
                  auipc        s0, 128864
                  sll          sp, s0, tp
                  ori          a6, t6, -1935
                  srai         s11, t2, 14
                  srai         a3, sp, 26
                  srli         s2, s6, 19
                  srai         t0, s10, 19
                  andi         ra, ra, 466
                  srli         t1, gp, 15
                  beq          a4, a3, 169f
                  lui          ra, 535741
                  addi         t4, sp, 619
                  sll          s1, a4, s5
                  beq          t5, s6, 171f
                  xor          s9, s2, a6
                  beq          t0, a3, 178f
                  nop
                  lui          a4, 905325
                  sltiu        a3, a4, -1734
                  srai         s7, a5, 17
169:              srli         tp, tp, 6
                  srl          t5, a3, s7
171:              ori          zero, s0, -920
                  xor          t5, gp, tp
                  srl          s0, s10, s10
                  bgeu         s6, ra, 185f
                  or           s2, t1, gp
                  and          t0, t2, s7
                  srl          s8, a4, a3
178:              bltu         s0, s10, 187f
                  nop
                  bne          zero, a4, 191f
                  andi         a7, s4, -1242
                  sltu         a4, a4, sp
                  or           s9, s0, s2
                  sltu         t3, sp, s6
185:              blt          s1, a7, 191f
                  bgeu         s8, gp, 194f
187:              nop
                  slti         s7, a1, -1760
                  addi         t5, t3, -401
                  xor          s6, a1, t5
191:              nop
                  bgeu         s4, t6, 194f
                  or           a7, a7, s8
194:              bgeu         t0, s10, 208f
                  bne          s10, s7, 206f
                  sub          a7, tp, s3
                  add          s0, s10, s6
                  ori          a4, s0, 139
                  slti         a2, a4, -1798
                  slti         a2, s1, -690
                  add          t2, t0, t6
                  slt          t5, a0, s6
                  xori         t5, s11, 1169
                  blt          t0, a2, 207f
                  lui          s0, 173814
206:              auipc        s0, 712436
207:              nop
208:              bne          a6, ra, 215f
                  sub          sp, a3, t2
                  bltu         a6, a1, 217f
                  sub          s9, s11, s1
                  andi         a2, gp, 289
                  sra          t4, t3, sp
                  slti         s9, tp, -1617
215:              ori          t5, s7, -1294
                  auipc        s0, 809873
217:              beq          s11, s7, 223f
                  add          sp, a7, t6
                  srl          s9, s2, s5
                  slt          t0, tp, s10
                  bgeu         zero, s3, 223f
                  andi         tp, a0, -402
223:              slti         s9, a5, -737
                  slti         a5, s5, -1143
                  bne          s11, s6, 234f
                  srl          tp, s0, s0
                  bgeu         s2, t0, 236f
                  srli         t0, s1, 29
                  andi         zero, tp, 946
                  bltu         s0, s4, 237f
                  xori         t1, t4, -389
                  slt          a5, sp, a5
                  srai         sp, tp, 8
234:              slti         t0, a3, -391
                  slli         sp, s9, 15
236:              lui          s8, 262563
237:              sub          ra, t3, s6
                  blt          t1, a2, 243f
                  and          s6, t6, s10
                  bne          a0, s4, 260f
                  or           sp, s5, a1
                  and          tp, a1, s5
243:              sub          gp, t0, a6
                  srli         s1, s11, 0
                  xor          s4, s2, t2
                  addi         t2, s9, -1463
                  sub          tp, gp, a3
                  ori          a6, a7, 1037
                  srai         t0, ra, 2
                  bltu         t1, a0, 270f
                  lui          a3, 636401
                  xori         gp, a7, 2013
                  bltu         s4, s8, 265f
                  slli         s2, s3, 9
                  lui          a4, 380530
                  and          gp, t3, s3
                  srli         tp, sp, 27
                  add          s6, s2, a0
                  bgeu         sp, s3, 277f
260:              nop
                  bgeu         s3, s10, 277f
                  bge          t3, gp, 273f
                  blt          t3, a1, 264f
264:              xori         t1, a5, 1306
265:              sra          a5, t6, tp
                  sra          a0, a1, s6
                  bne          a0, t5, 275f
                  auipc        gp, 945635
                  xor          a3, a3, t3
270:              bltu         s5, t6, 272f
                  sltiu        s0, t0, -321
272:              bne          t0, s6, 292f
273:              and          s4, a2, a1
                  sll          s7, t6, a0
275:              nop
                  xori         s1, s3, -480
277:              srli         s1, s2, 4
                  sra          zero, a5, s10
                  blt          a6, t3, 282f
                  sltiu        s1, s1, -1302
                  srai         s0, a7, 18
282:              bgeu         s0, sp, 288f
                  beq          t1, gp, 301f
                  srli         s9, s8, 25
                  slt          a6, t1, a6
                  add          t3, a2, s6
                  auipc        s11, 524992
288:              ori          sp, s6, 1657
                  srai         t2, zero, 10
                  bltu         s10, tp, 301f
                  slli         t2, s2, 22
292:              bgeu         s7, a5, 295f
                  nop
                  slli         t2, s5, 0
295:              add          a7, ra, t5
                  ori          s7, s3, 599
                  bne          a6, t4, 302f
                  beq          s7, t2, 309f
                  sltu         a7, a5, a3
                  sub          s9, s6, s10
301:              and          a0, tp, t4
302:              andi         tp, t4, 1398
                  sll          s11, t5, s6
                  ori          sp, gp, -398
                  add          t5, s5, t5
                  sra          a3, a2, t0
                  bgeu         s6, s8, 325f
                  sltu         s8, s6, t3
309:              slli         s11, t1, 3
                  bgeu         a6, s1, 319f
                  sll          t3, a1, a6
                  slli         a4, s5, 27
                  or           sp, sp, s6
                  slli         s7, t1, 14
                  sll          s11, a4, s6
                  bgeu         sp, s2, 323f
                  or           t6, tp, t6
                  slli         gp, t6, 9
319:              lui          a0, 403356
                  sub          t1, t4, t3
                  srai         s8, s0, 27
                  and          a0, s10, a1
323:              or           ra, zero, t4
                  blt          s10, zero, 325f
325:              blt          a6, t0, 345f
                  nop
                  srl          a7, zero, gp
                  lui          gp, 981629
                  andi         t6, s6, -1115
                  bne          zero, gp, 332f
                  slli         a6, a5, 1
332:              beq          s1, s9, 334f
                  sll          a1, t4, a0
334:              blt          s0, sp, 348f
                  srai         s7, s0, 23
                  nop
                  ori          a0, s1, -1045
                  slli         ra, t2, 24
                  blt          a7, s11, 345f
                  and          t0, a2, s6
                  ori          tp, s1, 1911
                  lui          a3, 681405
                  ori          a5, s6, -1150
                  sub          a7, a4, s7
345:              slti         a1, s9, -737
                  srai         s8, sp, 1
                  bltu         t6, s0, 355f
348:              slli         s7, s8, 10
                  bne          s4, a7, 369f
                  and          s11, gp, t1
                  bltu         s8, t0, 360f
                  sra          a2, a3, t6
                  sub          t1, t5, s2
                  sll          a7, a3, s6
355:              and          s11, zero, gp
                  bgeu         s7, a3, 358f
                  ori          s8, t0, 1119
358:              slli         s1, a7, 30
                  sll          a3, a0, a4
360:              addi         s11, s6, 920
                  xori         s11, sp, -541
                  sra          s6, gp, s9
                  lui          s4, 754938
                  add          s1, s9, t1
                  ori          t6, t4, -646
                  and          ra, a6, ra
                  srai         a1, s0, 0
                  bge          s2, a5, 374f
369:              addi         s11, t5, -1123
                  bltu         a2, t2, 381f
                  addi         sp, a1, -1857
                  or           tp, s4, ra
                  auipc        s2, 777355
374:              auipc        t1, 950488
                  and          s11, t5, s10
                  xor          a4, a7, s8
                  blt          t6, ra, 383f
                  slti         a5, a0, 1825
                  add          t4, s11, s7
                  srai         gp, s10, 10
381:              bge          a2, a6, 388f
                  srli         a1, t6, 16
383:              addi         t4, s10, -90
                  sltu         zero, a2, t4
                  bgeu         a6, t4, 401f
                  bge          a4, s2, 394f
                  slt          s4, t3, a6
388:              and          t2, s9, s5
                  auipc        t2, 803269
                  addi         t4, t6, 2026
                  nop
                  lui          a5, 1013128
                  bltu         t1, t1, 402f
394:              bgeu         s0, s10, 401f
                  and          sp, a1, a1
                  sltiu        t0, t5, 736
                  xor          t2, tp, s9
                  xor          sp, s5, s5
                  slt          a1, s11, a6
                  la           sp, region_1+347 #start riscv_load_store_rand_instr_stream_0
                  slti         s2, s11, -1355
                  xori         a3, s5, 583
                  sw           s10, 1101(sp)
                  sltu         s6, s3, t6
                  lb           ra, -337(sp)
                  sh           a1, -89(sp)
                  and          t1, tp, t1
                  lbu          s0, 240(sp)
                  or           ra, a1, ra
                  add          s11, s9, a3
                  lhu          t5, 1015(sp)
                  addi         s9, s11, 1304
                  slt          s0, t6, s2
                  sb           zero, 767(sp)
                  lb           t3, -10(sp)
                  slli         s7, t5, 23
                  lui          ra, 589899
                  sb           t2, -106(sp)
                  sb           t4, 1322(sp)
                  sb           s3, 1032(sp)
                  auipc        s7, 751932
                  lbu          ra, -188(sp)
                  lb           t1, 725(sp) #end riscv_load_store_rand_instr_stream_0
                  bgeu         a5, a2, 420f
401:              and          a4, s7, t1
402:              slli         t3, s5, 1
                  bltu         t2, t4, 406f
                  sltiu        s4, a6, -741
                  slli         s6, s3, 30
406:              bgeu         t5, s5, 424f
                  sltu         a4, a3, s2
                  bltu         a1, a4, 419f
                  beq          a4, s11, 421f
                  srai         a3, a4, 31
                  and          tp, tp, s3
                  bltu         s9, s7, 423f
                  and          a3, s11, zero
                  blt          a6, s8, 420f
                  auipc        sp, 41599
                  auipc        s6, 986889
                  blt          s3, s9, 431f
                  sub          s9, s7, s1
419:              nop
420:              add          a3, a6, a2
421:              sltiu        s7, t2, 532
                  slt          a3, a6, s4
                  sra          a6, s1, t2
                  srl          t2, s8, a1
                  sub          s6, zero, s7
                  srli         s1, s1, 25
                  srai         t0, t1, 13
                  slli         a3, a3, 23
                  sll          sp, t4, gp
                  srai         tp, tp, 28
                  slti         a2, t5, 1277
                  slli         ra, gp, 2
sub_8_j13:        jal          t1, sub_10 #jump sub_8 -> sub_10
423:              auipc        s1, 1033307
424:              slli         s9, s11, 11
                  xor          zero, s5, a7
                  bge          s11, t6, 437f
                  sra          t4, ra, s5
                  add          a3, t0, s5
                  xori         s9, s4, 1073
                  sltu         s8, t0, ra
431:              addi         s8, t5, -756
                  andi         s4, gp, -666
                  andi         t2, a7, -1588
                  sra          ra, s3, t5
                  lui          sp, 5802
                  xori         t5, s8, -586
437:              sra          a3, t0, a2
                  la           s1, region_1+783 #start riscv_load_store_rand_instr_stream_2
                  sb           s8, 146(s1)
                  sub          sp, s6, a3
                  sb           a0, -668(s1)
                  srl          sp, a5, s3
                  lbu          s6, -30(s1)
                  slti         s7, s5, 1593
                  sub          gp, a1, s3
                  srli         s7, t6, 27
                  nop
                  lhu          gp, 341(s1)
                  lbu          t6, -552(s1)
                  sh           t4, 773(s1)
                  sb           s1, 960(s1)
                  lb           s6, 882(s1)
                  lh           ra, 767(s1)
                  ori          ra, t6, 799
                  lbu          s7, -179(s1)
                  lb           t3, 669(s1)
                  add          s0, a7, zero
                  xori         a7, zero, -1774
                  sw           a1, -371(s1)
                  andi         s6, a6, -1882
                  slli         t3, s6, 22
                  sh           s8, 845(s1)
                  lb           s9, -336(s1)
                  sh           s8, -761(s1)
                  srl          s6, ra, a5
                  ori          a2, s7, 1722
                  auipc        t1, 1012357
                  sb           s8, -544(s1)
                  or           t3, sp, s2
                  sb           s11, -746(s1)
                  lb           t4, 416(s1) #end riscv_load_store_rand_instr_stream_2
                  and          a2, a1, tp
                  bge          gp, a3, 450f
                  srai         a5, a1, 26
                  slt          zero, s2, s3
                  auipc        zero, 288488
                  beq          t4, t6, 463f
                  sltiu        a1, s11, -1345
                  and          t0, a6, t3
                  and          a5, gp, a4
                  srl          s1, s7, zero
                  add          zero, t3, tp
                  sltiu        t3, s6, -284
450:              addi         s6, s6, 254
                  add          s0, a3, t1
                  xori         tp, a1, -1462
                  slli         t3, t2, 30
                  lui          ra, 607609
                  and          s7, t4, s6
                  addi         ra, t5, -847
                  bltu         s7, t2, 465f
                  addi         t0, t5, -1148
                  andi         a3, a3, 1022
                  ori          s8, a3, -370
                  sra          tp, s10, t0
                  add          a1, s8, t0
463:              xor          s0, t0, s3
                  nop
465:              or           t2, a3, a0
                  slti         a5, s3, 1525
                  srli         s6, a6, 24
                  lui          s1, 260255
                  srai         s9, t2, 19
                  and          s11, s0, s9
                  and          s9, a7, ra
                  bltu         a4, s5, 474f
                  sub          t0, s0, s5
474:              or           a3, sp, s7
                  lui          t5, 330603
                  auipc        t3, 273990
                  xori         s1, s3, 389
                  srai         t6, a2, 30
                  slti         s6, a3, -1273
                  sltiu        gp, s11, -861
                  lui          s6, 409489
                  add          s1, t5, gp
                  addi         a1, a1, 1603
                  andi         gp, s8, -958
                  andi         t6, t4, -677
                  sll          s7, t0, t5
                  xori         s6, t5, 1088
                  bge          a0, a7, 492f
                  addi         s2, a0, -1183
                  blt          t5, a1, 492f
                  bne          s7, t0, 492f
492:              slt          s0, t1, t2
                  lw           t1, 4(s3)
                  addi         s3, s3, 28
                  andi         s6, t6, -255
                  srl          s6, t5, t1
                  sra          zero, s1, t6
                  sra          t3, a2, s8
                  slti         s7, s4, 1311
                  sll          sp, ra, s9
                  nop
618:              addi x31, x6, 0
618:              jalr x31, x31, 0
sub_7:            addi         s3, s3, -44
                  sub          s2, s6, s4
                  sw           t1, 4(s3)
                  or           s6, t2, ra
                  sub          s7, a6, s7
                  sll          zero, a3, gp
                  slt          a7, t6, a5
                  andi         s2, a1, 1561
                  sra          t5, s8, s10
                  la           gp, region_1+1956 #start riscv_load_store_rand_instr_stream_1
                  sltiu        s4, ra, 376
                  lb           sp, -117(gp)
                  sb           s6, -23(gp)
                  xori         s1, t1, -552
                  srli         t1, s0, 31
                  addi         t6, s7, -322
                  andi         s8, tp, -1589
                  addi         s0, s4, 565
                  and          t3, gp, t6
                  auipc        s2, 49801
                  lb           a3, -109(gp)
                  lbu          t5, 7(gp)
                  slt          s4, gp, a0
                  lbu          t0, 11(gp)
                  ori          a1, sp, 1351
                  auipc        a4, 462629
                  auipc        ra, 352260
                  lb           sp, -11(gp)
                  ori          t2, s8, -1362
                  slti         a6, a7, -1954
                  lw           zero, -236(gp)
                  sra          s9, tp, a7
                  sh           s6, -74(gp)
                  and          t1, t5, s1
                  lui          t1, 526818
                  lui          s4, 383359
                  srai         t1, s5, 16
                  lbu          s0, -199(gp)
                  lb           a5, -254(gp) #end riscv_load_store_rand_instr_stream_1
                  la           t5, region_0+452 #start riscv_load_store_rand_instr_stream_3
                  srli         s6, gp, 20
                  lb           a1, 195(t5)
                  sb           s6, 91(t5)
                  lb           s11, -140(t5)
                  sb           t6, 107(t5)
                  lh           t1, 112(t5)
                  lb           a6, -144(t5)
                  sra          a6, tp, sp
                  lbu          a6, -183(t5)
                  sb           s10, -217(t5)
                  xor          s4, s7, s1
                  slt          a2, s9, s3
                  or           s1, s11, s7
                  sb           s6, 256(t5)
                  sb           s8, 28(t5)
                  addi         t4, s5, 77
                  lbu          a1, 183(t5)
                  srl          t2, a7, a7
                  srli         s2, gp, 30
                  slt          s9, sp, s5
                  lbu          t1, 171(t5)
                  sh           t5, -248(t5)
                  lb           a2, -72(t5)
                  add          s9, t2, s0
                  slt          a2, a0, s5
                  lbu          t0, -139(t5)
                  sub          s2, a1, zero
                  sll          s1, t2, t0
                  srl          sp, ra, t3
                  sw           a0, 236(t5)
                  lb           a0, 139(t5)
                  lb           s7, 91(t5)
                  sub          sp, s6, s7
                  slt          t1, a2, s9
                  lbu          s7, -240(t5)
                  lh           sp, -226(t5)
                  lui          s0, 785722
                  lui          t0, 485574
                  ori          s2, a2, -621
                  sra          s4, a0, t5
                  add          t6, s8, t2
                  nop
                  lb           ra, -37(t5)
                  lh           t1, 240(t5) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+654 #start riscv_load_store_rand_instr_stream_6
                  lb           s2, 18(sp)
                  sltu         a0, s1, t2
                  lbu          a6, 8(sp)
                  xori         t3, a4, 1730
                  lb           t2, -29(sp)
                  lh           tp, -24(sp)
                  lbu          s7, 46(sp)
                  lh           s4, 16(sp)
                  xori         t6, a6, -1439
                  lbu          ra, -63(sp)
                  xor          zero, a4, s11
                  srai         a1, t6, 29
                  and          s9, a6, a7
                  sb           s0, 57(sp)
                  slli         zero, s2, 13
                  addi         zero, t1, -648
                  xori         a4, t6, 484
                  lui          a3, 289613
                  slli         s8, t1, 30
                  srli         s9, s7, 22
                  lb           a3, -31(sp)
                  add          a6, t5, s5
                  slli         ra, t0, 0
                  slt          s8, gp, s7
                  srl          s8, s5, s2
                  sltiu        ra, s5, -409
                  lbu          a6, 62(sp)
                  sh           t2, -32(sp)
                  lhu          a5, -44(sp)
                  sll          t5, a0, s0
                  sh           a1, -8(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s4, region_1+206 #start riscv_load_store_rand_instr_stream_10
                  lbu          s1, 484(s4)
                  sub          a1, t1, a2
                  lhu          gp, 1544(s4)
                  lbu          ra, 1497(s4)
                  add          a7, ra, s3
                  sh           s5, 224(s4)
                  sb           s7, -48(s4)
                  lbu          a4, 429(s4)
                  sb           t2, 756(s4)
                  sltiu        a4, a7, 870
                  or           t0, a3, s10
                  lh           t5, -104(s4)
                  xor          t1, s5, zero
                  lbu          a2, 1607(s4)
                  srai         t6, s3, 9
                  sll          a4, a7, s4
                  lb           t4, 243(s4)
                  srai         a7, t4, 11
                  lb           a0, 700(s4)
                  add          s9, a5, t5
                  sub          t2, s8, s7
                  lbu          t3, 169(s4)
                  sra          zero, t5, sp
                  xori         t1, t0, -1855
                  slli         t0, t5, 28
                  sb           s10, 1622(s4)
                  and          s7, s10, t4
                  lh           a5, 1344(s4)
                  ori          s0, zero, 1947
                  lb           gp, -61(s4)
                  xori         a3, a1, -1672
                  lbu          t2, 1189(s4)
                  slti         s6, a7, 1904
                  sh           s1, 616(s4)
                  lb           a0, 29(s4)
                  sb           t3, 1221(s4)
                  lbu          t2, 100(s4)
                  lb           zero, 1104(s4) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+827 #start riscv_load_store_rand_instr_stream_5
                  srli         s2, s3, 28
                  sb           s6, 908(sp)
                  lbu          s11, 831(sp)
                  srl          s4, s9, t4
                  lhu          tp, -227(sp)
                  srli         a6, s10, 27
                  sb           s4, -411(sp)
                  lbu          t2, 576(sp)
                  auipc        a0, 240462
                  sb           gp, -70(sp)
                  lbu          s1, -598(sp)
                  add          t0, t0, s7
                  sltu         s1, zero, s5
                  lb           zero, 527(sp)
                  slt          s11, a6, s0
                  lhu          t6, -727(sp)
                  sb           s1, 1091(sp)
                  sb           s4, 1156(sp)
                  lbu          a6, 144(sp)
                  slti         t4, t2, 496
                  lb           ra, 223(sp)
                  and          s11, t2, s4
                  lw           a0, 421(sp)
                  lbu          s8, 902(sp)
                  nop
                  auipc        a2, 272537
                  sra          a7, s10, ra
                  sw           a3, -739(sp)
                  slt          t0, a3, s11
                  lb           t4, 923(sp)
                  lbu          t2, 1086(sp)
                  sh           a5, 93(sp)
                  lb           a0, -528(sp)
                  sll          t1, tp, tp
                  srai         s1, s6, 15
                  srai         a6, t1, 23
                  lw           s6, -663(sp)
                  slli         ra, t0, 11
                  lw           s11, 1161(sp)
                  lb           a2, 646(sp)
                  lb           s1, 1118(sp)
                  auipc        t3, 86993
                  lw           s4, -303(sp)
                  lui          a4, 611470
                  slt          zero, s2, a6
                  lhu          s1, -225(sp)
                  xor          zero, t1, s3
                  addi         a6, s0, 117
                  lh           s0, 541(sp)
                  sra          a6, a6, s11
                  srl          s1, t0, s0
                  lbu          s9, 517(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+795 #start riscv_load_store_rand_instr_stream_7
                  lb           a2, -20(sp)
                  nop
                  lh           zero, -41(sp)
                  xor          t5, s3, s10
                  sb           s3, -16(sp)
                  sb           s11, -144(sp)
                  auipc        a5, 85285
                  lbu          a0, -11(sp)
                  lb           zero, 90(sp)
                  xori         s7, t1, 495
                  sw           t2, 205(sp)
                  ori          t3, s11, -869
                  srli         a7, t2, 31
                  and          s4, t4, s11
                  addi         a4, a2, -1222
                  sw           sp, -147(sp)
                  slli         tp, s0, 27
                  sb           sp, 196(sp)
                  xor          s8, a6, sp
                  lhu          s8, -45(sp)
                  xori         s1, s9, -230
                  slli         s2, t5, 0
                  nop
                  lui          s7, 695522
                  lbu          t5, 208(sp)
                  andi         s4, a3, 731
                  andi         s6, zero, -2045
                  slt          s7, t4, s8
                  xor          t4, s5, t3
                  andi         s7, s4, 1475
                  sll          t3, s3, t5
                  lb           t4, 51(sp)
                  auipc        t5, 795615
                  lb           ra, -82(sp)
                  sh           a7, -65(sp)
                  and          ra, t4, a7
                  srai         t5, s2, 2
                  sll          t1, s11, t0
                  lhu          gp, -215(sp)
                  andi         t2, t6, -941
                  srli         t6, s5, 23
                  lb           tp, -98(sp)
                  sb           a1, 48(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+278 #start riscv_load_store_rand_instr_stream_9
                  slt          a4, t5, s11
                  sltu         ra, a5, a6
                  xor          a7, t3, s8
                  slt          s2, t5, a3
                  nop
                  srl          a6, s5, s4
                  srli         s7, a3, 30
                  sh           s10, 1208(sp)
                  lbu          zero, 657(sp)
                  sw           a1, 50(sp)
                  lbu          t0, 1178(sp)
                  lh           zero, 628(sp)
                  lbu          s9, 937(sp)
                  lb           s1, 56(sp)
                  sb           a3, -234(sp)
                  slt          s7, s1, s4
                  add          a0, t6, a0
                  lh           a2, 190(sp)
                  lb           a3, 1169(sp)
                  sb           s8, 1282(sp)
                  srli         a7, s4, 8
                  lbu          t1, 1690(sp)
                  sltu         ra, t5, a6
                  lbu          a4, 12(sp)
                  slt          t3, t4, s2
                  lb           s11, 744(sp)
                  or           a0, t3, s9
                  slti         t0, a3, 271
                  sub          t4, a3, s5
                  addi         a6, ra, 19
                  xori         s1, t0, -190
                  auipc        s1, 15232
                  lbu          a2, 1473(sp)
                  sw           s8, 1034(sp)
                  lh           s6, 1372(sp)
                  sw           a3, 134(sp)
                  lbu          a4, 1459(sp)
                  lb           gp, 1495(sp)
                  xor          t5, gp, t6
                  lb           t4, 381(sp)
                  nop
                  lbu          gp, 151(sp)
                  lbu          a4, 1407(sp)
                  lbu          zero, 1231(sp)
                  or           t6, s11, a3
                  sll          s7, s9, s8
                  srai         tp, sp, 30
                  srai         a3, s0, 27
                  sw           s11, 1230(sp)
                  sll          s9, s7, s4
                  sb           a7, 1155(sp)
                  xori         t3, a0, -1338
                  ori          a5, s2, 1187
                  slt          t1, gp, s2
                  lbu          t6, 730(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+1127 #start riscv_load_store_rand_instr_stream_8
                  lb           s6, 8(sp)
                  auipc        a1, 1017956
                  srl          s7, s4, t6
                  nop
                  lbu          s0, -4(sp)
                  lb           a0, 10(sp)
                  sub          t4, t2, zero
                  lbu          t6, -16(sp)
                  sb           a0, -11(sp)
                  andi         t2, t3, 1554
                  addi         s7, s8, -908
                  sll          s1, s0, t4
                  lb           a0, 3(sp)
                  lhu          s11, 15(sp)
                  slt          s0, s2, s10
                  lbu          a4, -5(sp)
                  xori         s7, s10, -921
                  lb           t6, 6(sp)
                  sll          t4, s7, ra
                  lbu          s7, 12(sp)
                  sb           s10, -12(sp)
                  lb           gp, 14(sp)
                  slti         s2, ra, 1129
                  ori          a2, s2, 919
                  ori          t4, a6, -1750
                  lbu          s7, -8(sp)
                  lw           s9, 13(sp)
                  lbu          a2, -12(sp)
                  sra          a2, a1, a4
                  lb           a4, -4(sp)
                  srl          s8, a2, s2
                  nop
                  slli         a0, s6, 3
                  lhu          s9, 15(sp) #end riscv_load_store_rand_instr_stream_8
                  andi         sp, gp, 409
                  srai         s11, t2, 13
                  slli         a6, s5, 25
                  or           s8, zero, t6
                  bltu         gp, a5, 14f
                  addi         a2, t5, -1136
                  xor          a6, t4, gp
                  bne          s4, ra, 26f
                  blt          a3, zero, 22f
                  andi         s7, s7, -1918
                  addi         t2, gp, 646
                  addi         a6, s0, 359
                  or           s1, t4, s2
                  sll          s1, s0, ra
14:               bgeu         a4, a6, 25f
                  srai         a4, s0, 19
                  xori         s6, t0, -145
                  bgeu         a3, t3, 23f
                  bge          s1, a7, 27f
                  sltu         ra, s1, s2
                  andi         t0, s10, 2046
                  or           t3, t5, gp
22:               slt          t5, gp, s3
23:               andi         a1, s5, 124
                  bltu         a5, a7, 38f
25:               sra          a1, a4, s0
26:               addi         s8, a0, -1733
27:               sub          s11, tp, s1
                  srl          a4, a5, a4
                  xori         t4, s9, -1986
                  slli         s11, t2, 9
                  sltiu        a7, a4, -878
                  nop
                  sub          a3, s6, t1
                  bltu         s6, a4, 41f
                  slt          s0, tp, t3
                  andi         a2, s11, -1813
                  slli         a0, gp, 12
38:               nop
                  xori         a5, s3, 524
                  blt          a7, a5, 59f
41:               blt          t5, s2, 61f
                  auipc        s6, 733630
                  and          t1, a7, t3
                  slti         t0, a3, 673
                  srli         t1, s2, 26
                  blt          zero, s9, 64f
                  sub          a0, sp, a0
                  sra          a6, a6, a4
                  xor          zero, sp, s0
                  srl          s6, s4, a4
                  srl          a4, s11, a1
                  beq          a0, ra, 66f
                  srai         a0, t6, 23
                  auipc        t0, 895864
                  addi         a7, sp, 417
                  add          a7, a5, s10
                  xor          a7, s7, gp
                  nop
59:               sll          zero, t1, sp
                  and          ra, s10, t1
61:               sltu         gp, t0, s9
                  addi         t5, zero, 278
                  sltu         ra, tp, s4
64:               sll          s11, s5, zero
                  andi         zero, s8, 286
66:               beq          s8, s11, 69f
                  xori         t2, t5, 1081
                  and          zero, a0, t5
69:               add          s6, a5, t1
                  and          s6, s4, s1
                  bltu         s6, t6, 73f
                  add          t4, t0, a6
73:               srai         s2, a5, 7
                  sltu         zero, a2, a7
                  xor          a4, s10, t3
                  srl          s7, t1, s7
                  srl          a7, s0, sp
                  bge          a2, tp, 91f
                  sra          a7, s9, s2
                  slti         s1, a5, 1573
                  slti         s9, s0, -625
                  blt          s6, t1, 83f
83:               xor          s6, s11, t6
                  xori         ra, s4, -1882
                  ori          t2, tp, -1034
                  sltiu        a4, sp, -912
                  sll          s8, s5, s6
                  bge          a4, s6, 89f
89:               nop
                  slli         a6, a0, 12
91:               sub          gp, a0, a0
                  lui          t0, 488613
                  srli         zero, zero, 3
                  bne          a4, a7, 98f
                  xori         s6, s10, -1573
                  auipc        zero, 762475
                  bne          a5, a2, 109f
98:               or           s7, a2, t0
                  bge          a5, s4, 116f
                  xori         a5, s4, 1844
                  srl          s7, a5, s10
                  andi         t1, zero, -1303
                  addi         sp, s1, -124
                  sll          a1, s7, t3
                  slt          s1, tp, s4
                  addi         s0, sp, -1689
                  bge          s1, a3, 117f
                  xori         t0, sp, 1242
109:              blt          a2, tp, 118f
                  sub          ra, s5, s10
                  addi         t0, a0, -2032
                  bge          t3, t6, 129f
                  or           a1, a5, a7
                  and          s1, s9, t1
                  srai         t5, s10, 3
116:              bgeu         t5, s11, 128f
117:              sra          a0, s3, s11
118:              slt          sp, s9, t6
                  bne          s11, s7, 124f
                  andi         a2, s0, -76
                  blt          zero, s8, 130f
                  blt          a4, zero, 141f
                  sra          s11, s10, tp
124:              xor          s9, s5, s8
                  add          t2, s2, t6
                  beq          t3, s5, 140f
                  blt          s11, s1, 146f
128:              ori          a4, s8, 727
129:              xori         s1, a2, 219
130:              sra          a7, a6, s9
                  bgeu         t4, t0, 148f
                  bltu         a0, sp, 142f
                  bgeu         a5, tp, 150f
                  nop
                  bltu         t0, s11, 147f
                  or           a6, a2, t3
                  slti         s9, sp, -1404
                  ori          tp, gp, 659
                  lui          t3, 381009
140:              sltiu        a1, s8, -1150
141:              sll          sp, a3, s4
142:              bltu         tp, sp, 159f
                  ori          a0, s9, 1541
                  add          s11, a4, a6
                  srl          a6, a7, t0
146:              bge          s1, t0, 159f
147:              sra          a5, s4, s1
148:              slli         t4, t5, 18
                  nop
150:              add          sp, t1, a2
                  slli         s9, s1, 10
                  slti         a5, a3, -796
                  bge          tp, t3, 157f
                  srai         s8, t2, 3
                  slli         t1, gp, 13
                  blt          t4, s5, 165f
157:              sub          s8, a0, a0
                  srl          t5, s11, a2
159:              beq          s8, s3, 178f
                  addi         zero, a2, -1292
                  sll          t5, a0, t6
                  lui          s2, 311717
                  auipc        s4, 803203
                  srli         a0, sp, 3
165:              auipc        t5, 468475
                  bge          t5, s2, 185f
                  add          s0, t1, t3
                  ori          t6, s0, -262
                  xor          a1, t0, t6
                  slti         a0, ra, -659
                  lui          s6, 367634
                  blt          t1, s2, 181f
                  slt          s6, s10, s10
                  sltu         t5, s3, s3
                  bltu         a0, s5, 178f
                  srli         t4, a0, 1
                  xor          sp, a4, t6
178:              bne          a5, s6, 179f
179:              lui          t1, 723243
                  or           t2, s5, a4
181:              ori          ra, t1, -1319
                  lui          s1, 879881
                  auipc        t1, 1914
                  and          t0, s1, s1
185:              add          a1, s9, t6
                  auipc        sp, 321771
                  and          a1, t4, t0
                  srli         a6, a0, 6
                  sll          t4, tp, t3
                  bltu         tp, s8, 204f
                  xori         ra, sp, 2047
                  srai         tp, t0, 28
                  add          t6, a4, a1
                  slli         sp, s3, 1
                  sll          sp, s3, a5
                  beq          t4, s5, 208f
                  slt          gp, a0, a6
                  add          t0, s1, a1
                  sra          s6, sp, s11
                  bne          gp, s0, 205f
                  xor          t6, s1, a7
                  ori          gp, a2, 1357
                  or           s2, t0, tp
204:              sll          ra, s6, ra
205:              bltu         t6, gp, 225f
                  xori         t0, a1, 1883
                  xor          t6, s5, a5
208:              or           s4, a3, t5
                  nop
                  or           s2, a2, s6
                  addi         a2, s8, -1614
                  slti         a7, s9, -724
                  lui          gp, 202790
                  add          a7, gp, s5
                  bltu         t3, zero, 229f
                  bltu         tp, s3, 233f
                  add          s4, a2, gp
                  xori         s0, t5, 1627
                  addi         sp, a5, 1782
                  bne          a5, a6, 234f
                  add          t4, s4, s11
                  bne          t3, s9, 223f
223:              sra          a5, t0, s2
                  sll          s2, s2, tp
225:              ori          s1, a4, -916
                  bne          s8, a4, 236f
                  and          t6, s9, sp
                  xor          zero, s2, gp
229:              slli         tp, a7, 20
                  srl          a6, a0, a6
                  bltu         s9, t3, 250f
                  bge          t4, t3, 241f
233:              sub          a3, a5, s9
234:              bgeu         a1, a0, 252f
                  bgeu         a4, s11, 242f
236:              blt          s6, t3, 238f
                  srli         a3, t4, 22
238:              or           a6, t3, a4
                  slli         s7, zero, 19
                  sltu         s11, s4, a2
241:              and          sp, a4, a6
242:              xori         a7, t2, 1730
                  bgeu         t4, t0, 254f
                  slt          s9, a5, t2
                  bge          s1, ra, 251f
                  srli         a5, s2, 16
                  slti         s8, s10, -362
                  bltu         tp, t3, 267f
                  nop
250:              xor          s2, t0, t5
251:              and          t6, a7, tp
252:              sra          s4, t6, s8
                  srli         s1, a2, 11
254:              bne          s11, a3, 268f
                  add          t6, a4, s0
                  xori         s8, zero, 766
                  bne          a4, a3, 276f
                  bne          s1, a4, 267f
                  bne          sp, t1, 278f
                  slti         ra, t5, 1957
                  sra          s7, t5, s11
                  sltiu        s2, t1, -1221
                  andi         t4, t5, 252
                  bne          a4, a5, 284f
                  xor          gp, t5, a4
                  slli         s0, s2, 20
267:              slti         t2, s6, -631
268:              xor          t2, s2, a4
                  nop
                  sub          sp, a4, t3
                  slt          sp, s1, a0
                  nop
                  ori          t5, s7, 1935
                  sll          tp, a4, t4
                  add          s11, t3, s11
276:              srli         t4, s1, 25
                  blt          t0, a4, 289f
278:              bltu         a3, s8, 289f
                  and          a5, tp, s4
                  auipc        gp, 798581
                  sltu         s1, s8, ra
                  srai         ra, t3, 29
                  and          a0, t0, a4
284:              add          zero, t0, a6
                  xori         s4, zero, -931
                  srai         s1, sp, 15
                  srl          s8, tp, ra
                  bltu         s2, t4, 302f
289:              slli         t5, gp, 25
                  andi         a0, t0, 2010
                  xori         a5, zero, 2003
                  sltiu        a0, s2, -1203
                  lui          a0, 603264
                  blt          s3, s10, 304f
                  bne          t0, s4, 304f
                  bgeu         a4, a5, 303f
                  sltu         t1, s2, s0
                  sra          a0, a6, s11
                  xor          a2, t4, s5
                  sltiu        s6, s11, -416
                  and          s8, s4, a2
302:              lui          a4, 348687
303:              bgeu         s2, a4, 317f
304:              bge          s11, sp, 305f
305:              srai         a7, gp, 3
                  nop
                  bltu         a7, zero, 308f
308:              ori          t5, a3, 416
                  ori          s6, gp, -1337
                  sltu         t5, t0, s0
                  srai         s4, s10, 26
                  and          a2, a2, s0
                  slli         a0, sp, 29
                  bge          a1, ra, 319f
                  sub          t2, sp, s6
                  bltu         a0, s2, 329f
317:              sra          t6, s9, s2
                  sub          gp, a5, t2
319:              xori         t3, s11, -195
                  beq          t3, t5, 334f
                  bne          s11, s0, 338f
                  add          t5, t4, s10
                  sll          gp, s2, t4
                  nop
                  srli         a3, sp, 16
                  or           s0, s10, s0
                  slli         a6, ra, 31
                  bne          s8, a4, 331f
329:              add          s8, s8, t2
                  srl          s1, s6, s10
331:              lui          a3, 320298
                  slt          a6, a1, s8
                  and          a5, t4, ra
334:              auipc        ra, 58504
                  slt          ra, t2, s4
                  auipc        s2, 319698
                  slti         s1, a6, 1254
338:              bltu         a3, t5, 348f
                  sltu         a7, t3, a4
                  bltu         a1, a1, 359f
                  sll          s7, s11, a7
                  xor          tp, s10, s0
                  ori          t5, t3, -959
                  lui          tp, 236436
                  slli         t4, a2, 16
                  or           gp, a0, zero
                  bgeu         t5, t2, 361f
348:              bltu         s7, zero, 350f
                  srai         t0, a0, 21
350:              sll          t0, a1, t1
                  srli         a6, s2, 4
                  and          s0, t4, t3
                  sub          zero, t5, a0
                  nop
                  or           s1, s10, t1
                  sra          a7, sp, ra
                  slli         s6, t1, 2
                  auipc        s2, 999098
359:              or           s2, s6, a4
                  bge          a6, a1, 378f
361:              sra          a2, t1, a2
                  andi         a6, t2, 1875
                  ori          a2, s2, -31
                  xori         a3, gp, -1287
                  add          t5, a0, a3
                  sltiu        a0, a7, 1584
                  xor          a3, a6, a2
                  srli         a0, a7, 19
                  bltu         t5, a5, 373f
                  sra          ra, t3, t0
                  sltiu        zero, a2, -1881
                  beq          sp, s1, 389f
373:              slti         s11, t1, 1409
                  srli         gp, sp, 22
                  sltiu        t2, gp, 1535
                  la           sp, region_0+442 #start riscv_load_store_rand_instr_stream_4
                  sb           s8, 88(sp)
                  or           s6, a5, s1
                  srl          t6, a5, s1
                  sll          s11, a3, a2
                  sra          s2, s7, zero
                  srai         a1, s10, 20
                  slli         s8, a3, 4
                  or           s0, s9, t4
                  ori          t1, tp, 1482
                  nop
                  xor          a0, gp, s0
                  srli         s6, s8, 14
                  sll          gp, t1, s0
                  lb           t4, 85(sp)
                  lhu          a6, 84(sp)
                  lbu          s6, 1190(sp)
                  slli         s8, s3, 28
                  sb           a2, 1405(sp)
                  lbu          a7, 1507(sp)
                  srl          s6, s3, a2
                  sub          gp, a1, s6
                  lb           s9, 929(sp)
                  andi         gp, s10, 817
                  lbu          a7, -265(sp)
                  lb           a0, 1339(sp)
                  sw           a7, 1378(sp)
                  slli         t5, a7, 30
                  lhu          t3, 840(sp)
                  ori          t6, t6, 1437
                  xor          tp, a7, s4
                  sb           s4, -55(sp)
                  sw           s7, -126(sp)
                  sb           a3, 1184(sp) #end riscv_load_store_rand_instr_stream_4
                  sltu         sp, t1, s5
                  beq          a5, t6, 389f
378:              ori          t6, t2, -1263
                  or           a5, a6, a0
                  auipc        s8, 451375
                  xori         t3, s1, 1372
                  sra          s0, a1, a5
                  bltu         s7, s0, 389f
                  beq          s4, t2, 401f
                  addi         a4, s5, -1944
                  beq          s1, s2, 395f
                  bge          s7, a4, 406f
                  srli         s11, gp, 8
389:              auipc        s11, 504271
                  or           s4, s2, a1
                  or           s4, a0, t2
                  addi         s8, a1, -699
                  sra          s8, s5, a4
                  ori          a5, s10, 428
395:              srl          a3, a3, s7
                  slli         s0, t6, 12
                  srl          t0, s9, a0
                  bge          t6, t4, 399f
399:              bge          a5, s10, 401f
                  blt          sp, a6, 409f
401:              sltiu        a3, s4, 942
                  slt          s6, s0, t6
                  bge          a2, s5, 415f
                  bgeu         t5, t2, 414f
                  sltiu        s6, a5, 744
406:              ori          t5, a2, -155
                  xori         a5, sp, -33
                  sltiu        t1, a5, 1920
409:              srl          gp, t0, gp
                  or           s2, t6, s8
                  addi         sp, s7, -1494
                  xor          t2, ra, gp
                  nop
414:              srai         t6, s9, 11
415:              slt          s2, a7, s10
                  or           t4, s8, zero
                  bne          t5, s9, 436f
                  and          a6, s3, s1
                  blt          a0, sp, 438f
                  beq          s0, a3, 434f
                  srai         s8, a3, 1
                  srai         zero, zero, 30
                  slt          s11, a1, s11
                  sub          tp, t1, sp
                  add          s7, s6, s8
                  srai         t1, ra, 25
                  srai         t2, t0, 11
                  sub          s1, s9, s8
                  sltiu        a5, s3, 1515
                  srli         s6, sp, 15
                  srli         a3, s10, 25
                  andi         a5, a2, -1382
                  sra          a2, tp, a6
434:              xori         s0, t1, 822
                  bltu         tp, zero, 452f
436:              add          a2, zero, t2
                  ori          gp, s10, 1645
438:              add          s11, s10, s4
                  xor          t1, s7, t1
                  auipc        s0, 437722
                  sltu         s11, s8, a4
                  sub          s6, t4, s3
                  slli         s1, t1, 12
                  xor          zero, s0, gp
                  sra          t2, a6, a1
                  sltiu        a7, s4, 466
                  bne          zero, sp, 457f
                  beq          a5, s2, 453f
                  or           sp, a2, a1
                  sra          a4, s3, sp
                  sub          gp, t1, s11
452:              auipc        a7, 355666
453:              sltu         ra, a4, s0
                  srai         a3, a2, 0
                  slt          zero, ra, s10
                  srli         s11, t1, 0
457:              or           a7, s7, zero
                  or           a5, gp, s0
                  srl          a6, s4, a3
                  xor          s7, ra, t4
                  xor          gp, zero, s7
                  xori         gp, t5, -620
                  add          gp, s11, a4
                  beq          s11, s11, 478f
                  lui          t4, 553497
                  sll          a4, tp, s5
                  beq          s5, s7, 468f
468:              auipc        t6, 388078
                  sra          t4, gp, a5
                  nop
                  beq          s7, s3, 482f
                  nop
                  auipc        t5, 110198
                  ori          t4, s5, -947
                  slti         t0, t1, 1241
                  srai         s0, a2, 6
                  sll          t1, t1, t4
478:              ori          sp, ra, 1725
                  add          t4, a6, t6
                  srl          t1, s3, a6
                  sltu         gp, s4, s1
482:              auipc        a5, 767208
                  srli         sp, a1, 24
                  sll          t2, a5, t0
                  bgeu         zero, a4, 502f
                  lui          a1, 680727
                  auipc        a1, 614642
                  sra          s1, s9, a7
                  ori          tp, a5, -501
                  srli         s11, gp, 22
                  andi         s11, s5, 1360
                  sltu         tp, t6, s6
                  slli         t2, s11, 6
                  bltu         s10, ra, 503f
                  slt          s1, zero, s9
                  slt          s8, s4, a1
                  bltu         zero, tp, 504f
                  bltu         s1, t6, 515f
                  slt          s7, a4, s7
                  bgeu         s4, a3, 506f
                  slt          t6, s6, s10
502:              ori          a0, s0, -1155
503:              nop
504:              sltu         s4, s1, t3
                  beq          t0, t0, 519f
506:              slti         a6, t3, 206
                  andi         a2, s3, 1832
                  bne          a0, s11, 520f
                  xor          t6, s9, a0
                  addi         gp, a5, 271
                  addi         t4, a0, 1241
                  auipc        t0, 490844
                  srl          a7, t2, a6
                  beq          a4, a0, 532f
515:              lui          s6, 962839
                  slli         s0, t1, 15
                  sltiu        t4, t2, -1067
                  or           t3, s4, a7
519:              bge          t1, a6, 538f
520:              or           sp, t5, s3
                  bne          s7, ra, 525f
                  sltiu        gp, s9, 1826
                  bge          t5, s6, 526f
                  ori          s6, s0, -1189
525:              ori          t6, zero, 1017
526:              addi         s0, t2, -1330
                  srl          a5, s1, a4
                  bne          s2, s10, 537f
                  beq          gp, a2, 549f
                  blt          a6, t2, 543f
                  bltu         a3, t2, 545f
532:              beq          t6, s9, 551f
                  andi         s4, a5, -184
                  beq          sp, a4, 540f
                  slli         s9, t2, 21
                  and          s6, t6, s11
537:              srai         t1, sp, 24
538:              slli         s1, s1, 23
                  or           t5, s11, s10
540:              sll          t3, s4, a5
                  add          s11, t2, t2
                  add          a2, a7, s11
543:              sub          s9, a0, t1
                  xor          a2, a1, sp
545:              sub          a2, a4, a3
                  sll          s8, zero, s10
                  add          a1, a5, s11
                  sltu         s11, t0, t3
549:              lui          a0, 898108
                  sub          a1, gp, a4
551:              sltu         a1, tp, s5
                  sltiu        s1, a5, 1602
                  beq          s11, a6, 567f
                  sltiu        s2, a0, 1983
                  xori         a3, gp, 2011
                  beq          s2, s3, 575f
                  blt          s10, s10, 564f
                  auipc        gp, 266626
                  sll          a5, t2, s2
                  bltu         tp, s5, 565f
                  sub          gp, a4, t4
                  sra          s7, sp, t4
                  bge          t4, s11, 564f
564:              sltiu        s4, sp, 1989
565:              bne          t5, t6, 579f
                  lui          s0, 878631
567:              xori         a0, zero, 75
                  andi         s7, s1, 924
                  nop
                  nop
                  xori         a1, a5, 1240
                  bgeu         s7, a6, 584f
                  sltiu        t1, a3, 1158
                  lui          zero, 1016743
575:              bne          s1, s8, 589f
                  xori         s4, zero, -984
                  lui          zero, 768595
                  sltu         a2, tp, s5
579:              sra          a3, gp, t1
                  xor          a6, s2, t1
                  sltiu        tp, s0, 503
                  sra          a5, sp, a1
                  auipc        sp, 462495
584:              andi         t0, gp, 1874
                  bge          s4, t5, 604f
                  bltu         s10, a4, 590f
                  srli         a1, a2, 16
                  srli         a7, t1, 28
589:              sll          t0, s3, a4
590:              sltiu        a5, zero, -1203
                  bne          sp, t6, 610f
                  auipc        a1, 372334
                  sra          t6, t4, t4
                  bge          s3, s9, 595f
595:              bltu         t4, a1, 612f
                  sra          s8, s6, s9
                  bgeu         a6, s8, 607f
                  nop
                  auipc        s0, 511775
                  sltiu        t0, s5, -112
                  addi         a2, a7, -306
                  lui          a2, 711918
                  slt          a7, a5, s9
604:              ori          t5, sp, 1207
                  xor          s4, s3, a2
                  srai         t3, zero, 20
607:              bgeu         t4, s3, 609f
                  xor          t5, s4, a5
609:              addi         a5, s0, 1643
610:              srl          a2, s4, s11
                  blt          a5, s10, 620f
612:              xor          t3, ra, s10
                  slt          t1, s10, a1
                  srai         t3, sp, 16
                  xor          a6, s10, a5
                  auipc        t2, 361512
                  slti         s8, s11, -1421
                  srl          zero, a0, s3
                  slli         a4, tp, 16
620:              sra          t4, s11, a0
                  slti         t4, s7, 974
                  add          sp, t1, s0
                  xori         tp, s7, -610
                  slli         s11, s6, 30
                  nop
                  bge          sp, s6, 635f
                  xor          a4, a0, s10
                  srl          t3, a6, t5
                  lui          t1, 815142
                  bltu         s11, s7, 643f
                  andi         s7, t4, 1534
                  bltu         s5, t4, 651f
                  blt          s10, s6, 636f
                  auipc        a1, 179857
635:              sltu         t6, t0, s9
636:              srli         a4, s2, 10
                  xori         a6, sp, 476
                  sra          t1, s2, s2
                  xor          tp, gp, zero
                  ori          s1, s0, 882
                  srli         a3, t6, 23
                  auipc        zero, 614749
643:              srai         ra, s2, 23
                  and          a3, a2, s1
                  add          a5, gp, a0
                  add          t1, a4, a5
                  lui          zero, 142261
                  slt          sp, t5, t0
                  bltu         a2, s1, 663f
                  bge          sp, gp, 667f
651:              srl          t3, a2, s5
                  xori         a1, a5, -2
                  srai         s2, a6, 23
                  xori         a1, s2, 1842
                  bge          ra, ra, 667f
                  bne          t5, ra, 674f
                  xor          t6, s2, t2
                  srli         a2, a0, 11
                  bltu         a2, ra, 668f
                  ori          s9, a0, 1727
                  auipc        s7, 786981
                  auipc        s2, 498817
663:              srli         s8, t0, 21
                  srl          s1, t4, s6
                  slt          a4, s7, t6
                  lui          t0, 251083
667:              sltiu        tp, s1, 125
668:              slt          t6, zero, t1
                  and          t4, s5, a4
                  slt          a4, a0, s4
                  nop
                  slt          s2, s9, a5
                  and          tp, s9, s2
674:              sub          s8, ra, ra
                  add          s8, t2, a4
                  or           t6, a6, s3
                  slli         a5, tp, 20
                  srli         s8, s7, 15
                  srai         s11, s3, 11
                  srl          s0, a7, a1
                  and          t5, t0, t5
                  bgeu         s7, tp, 699f
                  sub          a0, a1, s6
                  and          s11, a5, a7
                  beq          t5, a1, 696f
                  add          s4, s8, s1
                  andi         s1, s9, -676
                  slti         t2, gp, -577
                  bge          s6, s0, 699f
                  sub          t2, s6, a2
                  sltu         s8, t2, s6
                  bne          s11, a0, 712f
                  srai         a0, s10, 23
                  bge          a2, a6, 697f
                  sub          a2, t4, s2
696:              sra          s9, a2, a7
697:              xori         s0, a4, -1523
                  slt          gp, t3, t4
699:              andi         s8, zero, 1122
                  addi         s7, a2, -231
                  bgeu         tp, s10, 714f
                  slli         zero, a4, 2
                  srli         tp, t4, 30
                  auipc        gp, 887602
                  sll          s8, s8, a2
                  slli         t0, sp, 24
                  ori          s1, t5, -730
                  blt          tp, s4, 717f
                  sltiu        t6, a1, 1664
                  xori         s7, s0, 1465
                  slli         t2, a1, 5
712:              auipc        a2, 299505
                  or           s11, s3, t3
714:              bne          t5, a6, 733f
                  ori          s4, t4, 1614
                  bgeu         t4, s9, 725f
717:              sll          t3, s9, ra
                  srai         zero, ra, 21
                  sra          gp, s6, s4
                  nop
                  and          a0, a4, t6
                  sub          s4, s7, t6
                  sra          a5, s11, a7
                  sll          a5, t5, s1
725:              srli         s2, s8, 13
                  sltiu        a0, s7, -1167
                  sll          a7, t1, t1
                  srli         a7, s3, 6
                  lui          s0, 746843
                  and          t4, t0, a6
                  sltiu        s8, a2, 56
                  add          t5, s2, ra
733:              sltiu        a4, t0, 467
                  bltu         s6, s10, 743f
                  slti         s6, t0, 1905
                  sra          s8, t4, a3
                  sub          t2, a3, s3
                  sltu         t4, s3, t6
                  srli         t4, s3, 9
                  nop
                  blt          a6, s8, 751f
                  auipc        a0, 602344
743:              bge          gp, a0, 762f
                  or           a2, a3, t6
                  lui          s8, 671993
                  blt          a7, t5, 764f
                  sub          s8, a5, s7
                  srai         t6, a1, 10
                  bgeu         t4, s6, 763f
                  blt          s1, a6, 764f
751:              and          a0, sp, t0
                  sltiu        s7, a2, -393
                  srli         t2, zero, 19
                  beq          t3, gp, 755f
755:              slt          a0, s3, t2
                  or           t5, a4, a3
                  bge          s8, zero, 774f
                  beq          gp, s2, 762f
                  lui          a1, 944669
                  bgeu         s9, s7, 779f
                  srai         ra, s6, 26
762:              ori          s2, s7, -1170
763:              sra          a1, s10, s5
764:              add          ra, t3, s6
                  ori          a5, s11, -914
                  bne          a4, a2, 768f
                  bge          a3, s0, 784f
768:              ori          a2, s1, 1102
                  add          t5, zero, ra
                  slt          s2, t1, a0
                  add          zero, a6, ra
                  xor          a5, s10, s9
                  and          ra, tp, sp
774:              srai         zero, s0, 11
                  sra          s6, gp, s4
                  bgeu         a0, s9, 782f
                  sltiu        s0, s0, 613
                  srai         s0, a2, 25
779:              xor          s9, tp, s9
                  bltu         s9, t4, 800f
                  and          s0, a0, s0
782:              auipc        tp, 828307
                  auipc        t0, 373038
784:              blt          a6, s6, 789f
                  bge          t4, s9, 795f
                  auipc        s1, 476104
                  xor          s4, a5, s1
                  srl          gp, s7, tp
789:              lui          t2, 971059
                  la           a7, region_1+1792 #start riscv_load_store_rand_instr_stream_2
                  lb           t2, -401(a7)
                  sb           s9, -315(a7)
                  lb           t2, -216(a7)
                  ori          t3, t1, -1222
                  slli         a1, zero, 12
                  lbu          tp, -1421(a7)
                  sub          t6, s8, t0
                  lw           sp, -1468(a7)
                  lbu          s2, -643(a7)
                  lb           t4, -413(a7)
                  sh           s6, -162(a7)
                  srl          t6, a2, tp
                  or           s0, s9, a2
                  srl          t5, s3, ra
                  lb           s1, -1241(a7)
                  sll          a5, s0, gp
                  sh           zero, -268(a7)
                  srai         a5, zero, 22
                  sb           gp, -986(a7)
                  lui          ra, 225925
                  srai         t5, s4, 21
                  xor          a5, s2, ra
                  srli         t5, s3, 12
                  srl          s11, s2, a3
                  srai         ra, t5, 9
                  addi         t4, a0, -136
                  srl          t0, t4, s3
                  slti         t2, a5, -984
                  xori         s0, t6, -1888
                  nop
                  srai         t1, s4, 0
                  addi         zero, t5, -1689
                  srli         a2, a3, 10
                  lbu          a6, -1503(a7)
                  lbu          s7, -730(a7)
                  sub          s0, s1, a2
                  sltiu        s7, a1, -1113
                  sh           s9, -1138(a7)
                  slt          zero, a3, t5
                  lui          a6, 515917
                  slli         s11, t2, 28
                  sw           t2, -1476(a7) #end riscv_load_store_rand_instr_stream_2
                  bltu         s1, s5, 797f
                  add          a5, a2, t1
                  srli         t3, a2, 15
                  slti         t6, s2, -1834
                  lui          t2, 769103
795:              bne          s8, s9, 807f
                  sra          a7, tp, t4
797:              xor          gp, a0, a3
                  bne          a1, a4, 810f
                  bge          t3, a1, 813f
800:              bgeu         ra, t5, 801f
801:              add          a1, sp, ra
                  bgeu         gp, a3, 813f
                  bne          a2, s0, 822f
                  bge          zero, s1, 818f
                  sltiu        s1, ra, 470
                  ori          t4, a3, 1927
807:              bge          s0, a5, 824f
                  sub          a7, s7, a6
                  addi         t0, a5, 1664
810:              nop
                  xor          s7, s1, sp
                  slli         a3, s6, 5
813:              auipc        t5, 453751
                  sltu         t2, s11, s9
                  bne          ra, t2, 821f
                  beq          s2, s1, 825f
                  slti         a6, a6, -1758
818:              andi         s4, a1, -1277
                  sltiu        s1, t6, 538
                  addi         a5, s11, -436
821:              beq          t5, s7, 831f
822:              sll          s7, t2, s2
                  xori         a7, zero, -1669
824:              bltu         a0, a1, 825f
825:              addi         t0, s3, 73
                  bne          t1, a3, 830f
                  beq          t2, s9, 840f
                  addi         zero, s8, -504
                  beq          s11, s1, 834f
830:              sltiu        t5, t2, 396
831:              slti         a1, t5, 318
                  bltu         s5, s7, 846f
                  nop
834:              sra          zero, a2, s7
                  sll          a1, s6, s2
                  addi         sp, s5, -1100
                  ori          a6, sp, 1492
                  slt          t0, a6, s6
                  or           a7, sp, a1
840:              sltiu        t0, t2, 1690
                  or           s0, s2, a4
                  or           tp, gp, s7
                  xor          a1, s11, s0
                  srl          zero, a6, s11
                  srai         tp, t4, 25
846:              lui          a3, 452174
                  srai         t6, s9, 11
                  or           a2, s11, t5
                  bne          a4, s6, 861f
                  add          s0, s0, a6
                  sltiu        ra, a7, -1726
                  sltu         a4, zero, t3
                  bge          zero, t2, 873f
                  srli         a2, a0, 18
                  bltu         s6, s6, 866f
                  bgeu         a4, a6, 870f
                  sll          t2, a6, gp
                  add          a4, t1, s2
                  add          a5, s9, a1
                  srai         a4, ra, 12
861:              sra          t3, sp, a4
                  or           t0, s11, gp
                  srai         a0, s7, 0
                  slt          t3, t5, s4
                  auipc        t3, 369048
866:              slti         t2, s9, -154
                  ori          s7, ra, -1505
                  sra          a7, t3, sp
                  sll          t5, t1, a2
870:              ori          a5, a1, 2045
                  slti         a5, s1, -175
                  slli         t2, t1, 29
873:              add          a7, a5, s1
                  sra          a6, t6, s3
                  slti         tp, a2, 628
                  slli         s11, t4, 13
                  sra          t0, t6, zero
                  bne          t3, a5, 890f
                  lui          s7, 693194
                  ori          ra, a5, -1824
                  add          sp, t4, zero
                  sltu         s0, s3, a7
                  blt          a2, a7, 892f
                  lui          sp, 20092
                  add          a2, s5, t4
                  sub          a0, s4, s5
                  slti         a5, s8, -1958
                  xor          gp, s0, t5
                  auipc        t5, 421862
890:              slt          a5, t0, t6
                  beq          s7, s9, 901f
892:              srai         t6, t1, 10
                  auipc        t0, 1001480
                  add          a1, ra, s7
                  sub          s0, t1, t5
                  sltu         t5, s9, s1
                  sltiu        a6, t6, 151
                  slli         a2, t6, 6
                  sll          a3, t6, t2
                  blt          t5, s8, 914f
901:              slti         a5, t1, 1142
                  srai         s9, s4, 21
                  xor          ra, sp, a6
                  nop
                  addi         sp, a1, 567
                  lui          s1, 519842
                  nop
                  auipc        t5, 837148
                  or           t4, s0, a6
                  slti         s11, t3, -765
                  or           s0, a6, t0
                  slli         s6, s11, 11
                  xori         s6, a7, 1291
914:              sltu         a0, s7, s11
                  bne          gp, gp, 933f
                  slti         s1, a5, -1940
                  srli         sp, t5, 9
                  andi         t2, s1, 1141
                  srli         a2, gp, 7
                  addi         t0, s4, -1883
                  andi         ra, a3, -1062
                  srai         s9, s9, 9
                  srai         s9, t0, 26
                  beq          s8, a4, 943f
                  bne          sp, s8, 928f
                  srai         a4, a0, 22
                  xori         t5, t4, -738
928:              lui          t1, 909359
                  srl          t1, zero, a1
                  xor          s7, a1, tp
                  sub          ra, s3, t4
                  auipc        s1, 406808
933:              beq          gp, s6, 950f
                  or           zero, t0, a0
                  sub          s4, s11, ra
                  sltiu        t0, a6, -1483
                  auipc        t4, 552389
                  xor          s0, tp, a5
                  bgeu         a6, t5, 956f
                  srli         s6, ra, 29
                  bgeu         s2, ra, 958f
                  bne          t1, a7, 951f
943:              xori         ra, s8, -1077
                  srai         s2, s2, 26
                  sll          gp, a6, a1
                  srl          s8, a7, s3
                  beq          t5, a4, 961f
                  addi         a7, gp, -190
                  blt          t6, t3, 951f
950:              sub          a4, t3, a7
951:              slt          s0, s5, s6
                  xori         a3, a0, -1214
                  auipc        a5, 502328
                  andi         tp, s2, 888
                  and          s11, t3, sp
956:              ori          a7, s8, -936
                  sra          t6, ra, t0
958:              sltiu        t0, t4, 1431
                  add          s2, a5, s0
                  bge          gp, a7, 979f
961:              and          t6, s10, s6
                  bgeu         s4, t0, 969f
                  blt          a5, t2, 982f
                  slli         a3, s1, 3
                  addi         t6, a5, -470
                  xor          gp, ra, t3
                  xor          a6, a0, s9
                  srl          t5, t2, zero
969:              slti         sp, tp, -1767
                  and          t4, t1, a2
                  srai         a5, a0, 16
                  bge          t5, s0, 991f
                  add          ra, s8, a4
                  slti         zero, s11, -1042
                  sltu         a3, t2, a4
                  sub          s9, s4, s8
                  blt          ra, sp, 978f
978:              xor          t2, s7, s8
979:              auipc        a5, 749008
                  or           a3, a1, a5
                  slli         a4, s1, 12
982:              and          a5, a0, tp
                  ori          gp, t6, 723
                  andi         a3, s1, -831
                  andi         tp, a3, -1339
                  sub          s8, t0, zero
                  ori          a5, zero, 797
                  andi         ra, tp, 1635
                  ori          a2, s11, 3
                  lui          s0, 148047
991:              sltu         a6, tp, tp
                  xor          a6, t6, a5
                  xor          s2, s8, a0
                  blt          s2, a1, 1004f
                  slti         a1, a1, -471
                  nop
                  add          s11, a4, t2
                  srli         s1, s9, 19
                  sltu         s6, t0, s0
                  slt          t6, zero, s10
                  lui          t6, 944064
                  slti         s1, a7, -1979
                  srai         tp, s10, 20
1004:             slli         ra, a3, 2
                  lui          tp, 932405
                  or           a5, a4, a2
                  xori         zero, a2, -64
                  blt          a1, s6, 1010f
                  andi         s8, sp, 1105
1010:             add          a2, a5, s8
                  bltu         ra, s0, 1021f
                  sub          a3, s11, t3
                  xor          s6, t1, a7
                  bgeu         t1, s4, 1031f
                  and          a0, a7, s2
                  addi         t2, s0, 1260
                  and          a1, a7, a1
                  addi         a5, t4, -863
                  srai         s7, s11, 30
                  sra          a6, t5, s10
1021:             beq          s8, a4, 1030f
                  bne          s4, s11, 1036f
                  addi         s2, s9, 394
                  slt          a7, s9, a3
                  xori         s8, t1, -1923
                  xori         a2, s4, 1434
                  srl          a3, a1, a1
                  slli         s2, a5, 31
                  xori         s4, s6, 1242
1030:             add          a0, s0, zero
1031:             beq          gp, a4, 1038f
                  beq          a4, gp, 1051f
                  slt          sp, t1, s4
                  or           t4, s10, a0
                  sltu         s7, s7, t6
1036:             and          gp, s8, s5
                  addi         sp, s5, -249
1038:             blt          sp, a2, 1043f
                  bltu         s1, s4, 1053f
                  srl          sp, zero, s6
                  slli         s0, a6, 15
                  sra          s9, t6, s0
1043:             andi         a5, t4, 1950
                  add          s0, a3, t3
                  add          t3, a2, s1
                  sll          a3, a0, a1
                  xor          tp, sp, tp
                  srli         s9, s0, 2
                  andi         tp, s0, -1764
                  sra          a3, a6, a5
1051:             nop
                  ori          a2, a5, 1600
1053:             slli         s9, t6, 29
                  xor          tp, a1, a7
                  sltiu        a0, t0, -279
                  nop
                  srai         t0, s3, 8
                  slli         s7, s6, 7
                  ori          t2, t1, 1930
                  bltu         a0, s6, 1071f
                  slli         t6, s7, 20
                  andi         s8, ra, -979
                  bge          a7, s10, 1077f
                  sra          tp, a6, t2
                  sltu         a1, s6, gp
                  and          t5, s3, t6
                  lui          tp, 1004107
                  beq          tp, a5, 1086f
                  slli         zero, t0, 28
                  addi         a1, s2, 1980
1071:             andi         a3, a5, -1842
                  slti         s11, t1, 459
                  sltiu        s2, a0, -815
                  srl          t1, s8, a3
                  xori         a2, s5, 975
                  sra          a2, a0, a0
1077:             nop
                  add          t3, t2, s11
                  bltu         a7, a7, 1091f
                  slti         a1, s1, 1886
                  bge          s9, ra, 1100f
                  srai         s4, t6, 24
                  slli         a6, s5, 10
                  bltu         t4, t4, 1103f
                  sra          a2, t2, zero
1086:             srl          t0, a0, a1
                  lui          a4, 499538
                  slli         s9, s2, 30
                  srli         s9, a0, 26
                  slti         s2, zero, -519
1091:             or           s11, s3, a6
                  bgeu         t5, a2, 1109f
                  xori         s2, t4, -485
                  add          a6, zero, s2
                  slt          a2, s7, t3
                  sltu         a5, s2, t3
                  add          s2, ra, s10
                  srl          a0, s7, zero
                  auipc        a7, 890257
1100:             xori         t3, t3, 1297
                  srai         t3, t4, 17
                  addi         a1, t6, -1372
1103:             sltiu        s11, a2, -1593
                  srai         a4, s3, 12
                  ori          gp, tp, 1363
                  lui          t4, 1023266
                  ori          t2, gp, 848
                  or           s4, s8, a7
1109:             bge          tp, s5, 1113f
                  blt          a5, a7, 1127f
                  nop
                  ori          s2, t2, 90
1113:             ori          sp, s10, 1642
                  sra          a3, s6, s5
                  nop
                  auipc        s4, 933365
                  srai         tp, t2, 20
                  bgeu         a0, a3, 1121f
                  sltiu        s6, s11, -662
                  bne          s2, a7, 1139f
1121:             sra          t4, sp, a5
                  sll          s11, t3, a5
                  bge          gp, s9, 1124f
1124:             slli         zero, a6, 31
                  slt          a5, a1, zero
                  sub          t5, t0, zero
1127:             andi         s0, s3, 681
                  auipc        s11, 776914
                  srli         ra, t5, 17
                  xor          s8, t2, ra
                  auipc        a3, 765133
                  sub          s6, s8, t0
                  lui          s2, 95030
                  sltiu        a0, s6, -1524
                  sltu         s4, ra, s10
                  xor          s4, ra, t1
                  nop
                  bge          a1, a3, 1152f
1139:             auipc        t5, 269821
                  bltu         s11, tp, 1149f
                  sra          t4, tp, t6
                  sub          a7, sp, s11
                  addi         s4, a7, -1280
                  nop
                  slt          gp, a1, t6
                  auipc        zero, 857975
                  bge          a2, s1, 1159f
                  slli         ra, t2, 3
1149:             slt          t4, a1, sp
                  srai         s4, t6, 22
                  sltu         s1, t4, a6
1152:             slti         sp, ra, 1614
                  add          a5, t6, t6
                  sltu         ra, s11, ra
                  blt          t0, s5, 1175f
                  bgeu         s11, ra, 1169f
                  and          s9, a2, a1
                  bne          s9, zero, 1167f
1159:             or           t3, a2, a2
                  slti         a7, sp, 1217
                  beq          a0, t5, 1167f
                  beq          t4, gp, 1163f
1163:             and          a4, a5, t5
                  nop
                  srai         tp, s8, 11
                  ori          s4, t6, 415
1167:             ori          t6, a4, -1297
                  beq          a3, s2, 1187f
1169:             ori          zero, tp, -209
                  slt          t3, s1, sp
                  srai         s11, a6, 22
                  beq          t4, t6, 1173f
1173:             add          ra, t3, s10
                  xori         s9, s10, 480
1175:             slli         a1, a4, 13
                  bgeu         s6, s8, 1188f
                  slti         a0, a0, 1990
                  sltu         t1, a0, t4
                  or           a3, t1, s7
                  sll          t4, t2, a4
                  sub          s1, t0, t3
                  sltu         a0, t4, zero
                  lui          a0, 157267
                  bge          s4, s4, 1191f
                  blt          s3, a7, 1204f
                  sll          s9, s7, a4
1187:             xori         tp, t3, -298
1188:             bgeu         s4, s8, 1194f
                  slti         ra, s0, -370
                  bgeu         a2, t2, 1194f
1191:             bltu         tp, t0, 1200f
                  slt          a2, t3, t4
                  add          ra, a5, s2
1194:             or           a5, t1, a2
                  xor          t1, gp, s2
                  or           s7, s3, t4
                  sltiu        ra, a4, -1331
                  srai         s9, s2, 5
                  bltu         s8, s5, 1213f
1200:             andi         t0, zero, -1618
                  and          zero, a5, t0
                  srl          t4, a5, a0
                  or           a3, s11, ra
1204:             add          t1, a1, t5
                  nop
                  srai         t4, t6, 8
                  sltiu        s6, s5, 907
                  sra          a2, ra, s7
                  xor          gp, a0, s9
                  slti         ra, tp, 1541
                  slt          zero, a4, sp
                  addi         a3, s9, -376
1213:             and          a6, ra, t4
                  sra          s4, t5, a5
                  slt          t2, s2, s8
                  slt          s0, sp, a4
                  andi         s1, s5, -188
                  srai         s11, t4, 30
                  slt          a6, a5, t4
                  addi         t1, s7, -583
                  blt          t5, zero, 1224f
                  srl          a1, s1, t4
                  lui          t6, 215681
1224:             srl          s6, s5, a6
                  sll          s2, ra, s4
                  or           sp, sp, a2
                  auipc        t5, 379700
                  add          a7, a5, a2
                  srli         s2, t2, 6
                  or           zero, t5, t3
                  srli         a1, a5, 2
                  slt          a1, ra, t5
                  lui          t3, 605862
                  xor          a6, s11, s5
                  nop
                  srai         zero, s11, 0
                  nop
                  auipc        ra, 698696
                  sltiu        gp, t1, 1250
                  blt          s2, a1, 1242f
                  srl          s6, s7, t4
1242:             andi         a5, a0, 784
                  and          a1, a2, a5
                  xor          a0, s3, t3
                  sltu         t6, a7, a6
                  and          ra, t4, s11
                  bltu         t1, s9, 1256f
                  auipc        a2, 628621
                  addi         a5, s7, 1667
                  bne          a6, s8, 1261f
                  nop
                  nop
                  xori         s7, tp, -1649
                  srl          t0, t5, s3
                  srai         a2, s5, 3
1256:             bgeu         s9, t3, 1269f
                  lui          s8, 164345
                  lui          a4, 338546
                  blt          a2, t4, 1276f
                  xori         s11, ra, 28
1261:             nop
                  bge          t2, s9, 1276f
                  sll          s6, gp, a3
                  andi         t2, t4, 1523
                  sltiu        a0, t6, 472
                  sltiu        a5, t1, -458
                  srai         t0, gp, 13
                  xor          a6, s4, a5
1269:             nop
                  auipc        a4, 308081
                  srai         sp, zero, 20
                  and          t4, t3, t0
                  bltu         t5, t1, 1292f
                  srl          a5, s6, zero
                  auipc        a0, 258064
1276:             xor          t5, a7, s4
                  bne          zero, s9, 1291f
                  slli         s1, t4, 25
                  bge          t4, t2, 1299f
                  sltiu        sp, s11, 693
                  slt          s6, s5, tp
                  sra          zero, s9, s7
                  andi         a6, a5, -1676
                  slli         s0, a0, 12
                  srli         s8, s7, 11
                  sra          s2, sp, s11
                  andi         tp, s4, -1714
                  bgeu         a0, a5, 1297f
                  nop
                  srl          t4, ra, a7
1291:             auipc        t0, 968682
1292:             slti         ra, s0, 483
                  ori          t5, s10, 980
                  srl          sp, s6, t1
                  nop
                  sub          a4, s4, t6
1297:             sll          a2, a2, s9
                  add          gp, t2, a5
1299:             sra          a3, s2, s2
                  sltiu        a3, t6, 1535
                  bgeu         gp, a6, 1313f
                  srli         t6, t5, 25
                  auipc        a0, 558037
                  sll          ra, a5, t2
                  srl          sp, s9, a5
                  srl          gp, t4, s8
                  add          t6, s11, a4
                  sll          a5, s11, s8
                  slli         a4, s11, 26
                  srai         a5, s1, 28
                  la           sp, region_1+17 #start riscv_load_store_rand_instr_stream_0
                  andi         s2, s11, -1692
                  lbu          a2, -12(sp)
                  lb           t6, 13(sp)
                  slt          s1, zero, s6
                  nop
                  slli         s1, s5, 11
                  addi         s4, sp, 2000
                  lbu          t5, 22(sp)
                  sra          a7, s11, s3
                  lh           s8, 57(sp)
                  xori         t3, a3, 115
                  auipc        gp, 120001
                  sll          t4, gp, a4
                  add          t0, s9, s6
                  lb           t2, 48(sp)
                  lw           s8, 35(sp)
                  sra          zero, t4, s2
                  nop
                  or           t5, s5, s1
                  srl          t3, s11, ra
                  lb           t4, 38(sp)
                  sb           s5, -16(sp)
                  sltiu        s0, a5, -1195
                  lb           a3, 38(sp)
                  slt          s8, ra, zero
                  lw           gp, 35(sp)
                  slti         s11, a3, 791
                  lui          s7, 241515
                  lbu          a2, 38(sp)
                  sb           s2, 41(sp)
                  lhu          s1, 61(sp)
                  sltu         s8, t2, tp
                  sb           zero, 38(sp)
                  lhu          a5, -7(sp)
                  lb           t5, -2(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         sp, a4, -71
                  and          zero, a6, a7
1313:             sra          a7, s11, s7
                  nop
                  beq          sp, t4, 1329f
                  sltu         t4, s3, s5
                  xori         s6, s5, -1681
                  bltu         s6, s10, 1337f
                  and          a7, s4, t2
                  sltiu        a6, t0, -1834
                  xori         t3, s3, -1886
                  sub          t2, s5, sp
                  bgeu         sp, t3, 1340f
                  ori          s6, s4, -1790
                  srai         a5, a3, 29
                  srai         t1, s11, 31
                  bltu         a7, s11, 1344f
                  ori          a5, a0, 1302
1329:             sll          ra, a2, t3
                  andi         s6, s3, -1975
                  slti         t5, tp, -1748
                  sub          s0, s7, t4
                  ori          tp, zero, -913
                  bltu         a5, tp, 1344f
                  slt          tp, t3, a5
                  bge          t0, a4, 1354f
1337:             slti         a7, a1, -686
                  sltu         ra, a0, tp
                  and          t2, s2, ra
1340:             ori          ra, tp, 196
                  slli         s7, s8, 10
                  sub          s9, s1, t0
                  slt          s2, t2, a2
1344:             srai         t4, a2, 23
                  sra          a3, a6, a6
                  lui          s0, 982922
                  sll          s7, s1, s6
                  sltu         ra, s10, a1
                  lui          t5, 600539
                  add          s1, s10, t1
                  bne          s9, t4, 1361f
                  srl          a2, s1, s8
                  and          a6, zero, zero
1354:             nop
                  bltu         s2, s2, 1356f
1356:             xor          s11, s5, s11
                  andi         ra, s0, 1293
                  ori          sp, sp, 1795
                  slt          s0, s0, s8
                  srl          a2, t4, a4
1361:             sltiu        a1, gp, -1218
                  or           s1, t2, s3
                  xori         a6, a2, 1211
                  bne          ra, t6, 1369f
                  andi         s4, s8, 735
                  lui          s6, 404365
                  slli         gp, s6, 28
                  srl          a5, s5, a6
1369:             srl          s6, ra, a3
                  add          s1, s3, a2
                  sltu         tp, tp, a7
                  blt          t5, s0, 1386f
                  bltu         a3, t3, 1392f
                  auipc        a2, 248919
                  nop
                  sltu         a5, t5, a6
                  sltiu        a4, t2, -919
                  sltiu        t5, t4, 1406
                  sll          t2, s3, s8
                  and          s1, s6, t3
                  addi         t4, s5, 1071
                  slli         s4, s3, 3
                  blt          zero, s11, 1385f
                  bge          s10, t5, 1394f
1385:             slli         t0, s2, 27
1386:             andi         t6, t5, 848
                  sll          tp, s8, t5
                  slt          a5, s3, s11
                  sltiu        t5, ra, -763
                  srl          a0, t4, ra
                  srl          tp, t6, a4
1392:             srl          s6, a4, t3
                  srli         s4, s2, 28
1394:             add          s9, s2, sp
                  sll          s0, s5, a4
                  add          a5, a2, s2
                  ori          t0, gp, -1805
                  bgeu         sp, sp, 1407f
                  bge          sp, s0, 1418f
                  srai         ra, ra, 29
                  slti         a1, t6, 1096
                  slt          sp, sp, s11
                  add          a6, t4, a3
                  sltiu        s1, gp, -1255
                  sra          s2, zero, gp
                  add          a0, s6, t1
1407:             srl          a2, a1, t4
                  ori          ra, s6, 186
                  add          t4, t3, a7
                  srli         a4, s3, 23
                  xor          a2, gp, a2
                  bne          a1, t6, 1426f
                  slti         t2, t6, 610
                  xor          s7, zero, a7
                  slli         s9, a2, 24
                  addi         sp, s7, -1005
                  andi         s9, sp, 1112
1418:             add          t2, zero, s1
                  ori          a3, s11, -1618
                  sltiu        s9, s5, -1479
                  sub          s2, gp, zero
                  slti         t3, zero, -350
                  bgeu         a3, s7, 1440f
                  bne          s9, s4, 1442f
                  sra          s11, t4, s11
1426:             srli         a7, a0, 0
                  and          a2, t0, t5
                  srl          gp, s6, t5
                  bgeu         a2, ra, 1443f
                  bltu         s10, t0, 1447f
                  srl          a5, s9, s1
                  auipc        s0, 145959
                  bge          t4, s11, 1446f
                  and          s7, a6, s10
                  bne          s4, a7, 1449f
                  add          s6, t5, a2
                  xori         t1, sp, 1021
                  sra          a3, s5, sp
                  srli         s8, t2, 1
1440:             slt          s11, t2, t5
                  srai         s9, s4, 21
1442:             beq          a6, sp, 1451f
1443:             sll          s1, a6, gp
                  slt          s4, a6, a7
                  lui          a2, 812162
1446:             nop
1447:             srl          s0, s9, t6
                  add          gp, tp, a1
1449:             srli         t0, s8, 17
                  or           a2, a2, a7
1451:             beq          a7, s8, 1470f
                  slt          sp, s2, t0
                  andi         t4, gp, 325
                  sltu         a3, sp, t3
                  srai         t2, a6, 17
                  xori         s6, t5, 173
                  sub          zero, t5, s3
                  slli         t5, s2, 19
                  srli         t4, s3, 20
                  addi         sp, s11, -981
                  bgeu         s9, t3, 1473f
                  ori          s4, a4, 1118
                  and          a5, s7, a4
                  and          sp, s8, t5
                  srli         sp, t5, 31
                  add          s1, a0, s1
                  srli         t4, t6, 1
                  and          a5, a0, a4
                  beq          zero, t3, 1470f
1470:             add          a4, s11, s8
                  andi         a2, s3, 756
                  bgeu         zero, t1, 1476f
1473:             sltiu        a4, s7, 1433
                  beq          t1, a7, 1475f
1475:             and          t4, tp, a0
1476:             bge          a5, s6, 1496f
                  bge          tp, s0, 1487f
                  ori          t5, t0, -273
                  xori         t4, t0, -1584
                  sltu         t1, a6, s2
                  ori          a1, s6, 1197
                  sub          a4, t2, s0
                  sra          t4, s3, a6
                  xori         a2, a5, 661
                  sub          a2, t4, t6
                  beq          tp, s7, 1491f
1487:             slt          a5, t6, a7
                  auipc        s8, 935327
                  or           s0, s10, s8
                  sltiu        a4, t6, -1038
1491:             slli         a0, s2, 8
                  slti         a6, s7, -186
                  slli         a2, s10, 12
                  add          zero, t1, t5
                  and          a3, s6, t1
1496:             slti         s11, s7, 793
                  xori         a4, t4, 1493
                  auipc        zero, 35385
                  lw           t1, 4(s3)
                  addi         s3, s3, 44
                  andi         s6, s7, 1192
1958:             addi x10, x6, 0
1958:             jalr x10, x10, 0
sub_3:            xori         a0, t3, -545
                  addi         a5, t0, -653
                  ori          s9, a1, 1311
                  sub          s6, t5, a6
                  addi         s3, s3, -12
                  auipc        s11, 1018762
                  sw           t1, 4(s3)
                  ori          t6, s3, -1043
                  srli         a6, a4, 12
                  sra          s8, t5, s6
                  sltiu        a1, s7, -1515
                  la           a0, region_1+122 #start riscv_load_store_rand_instr_stream_1
                  sra          t5, s1, s7
                  sub          s4, t3, ra
                  and          t4, ra, s8
                  lui          a7, 374394
                  nop
                  lb           tp, -10(a0)
                  lb           a7, 45(a0)
                  lb           s7, -1(a0)
                  lbu          a3, 24(a0)
                  sltu         s2, a0, s0
                  xor          ra, s4, t3
                  lb           s4, -25(a0)
                  lhu          gp, -54(a0)
                  lb           t5, -54(a0)
                  srai         t3, s9, 7
                  lb           a5, -14(a0)
                  sll          s6, t1, s8
                  ori          s9, s6, 1072
                  sra          a5, s1, t4
                  sw           s9, -54(a0)
                  sb           ra, 21(a0)
                  sub          t6, t4, t0
                  add          s7, a2, t2
                  xori         s2, a3, 921
                  andi         zero, zero, -47
                  andi         s7, s7, -1913
                  auipc        s8, 406542
                  and          tp, t1, t5
                  lhu          s8, 16(a0)
                  or           s9, gp, t6
                  lh           t2, 10(a0)
                  or           a5, s11, s6
                  sb           s2, -14(a0)
                  lb           s1, -19(a0)
                  lbu          gp, 44(a0)
                  lui          s9, 100822
                  auipc        s0, 906433
                  lh           a7, -28(a0)
                  nop
                  slti         a1, a7, 1312
                  sh           t1, 44(a0)
                  lh           s8, 8(a0) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_0+177 #start riscv_load_store_rand_instr_stream_2
                  slti         t1, s9, -1487
                  lbu          sp, -89(t4)
                  lbu          s8, 25(t4)
                  sll          sp, tp, s11
                  sh           s7, 245(t4)
                  lhu          ra, -73(t4)
                  sb           s7, -176(t4)
                  lbu          s1, 250(t4)
                  slt          t0, a7, ra
                  sub          s8, a1, tp
                  sb           t3, 78(t4)
                  sub          sp, a3, s1
                  sll          s0, gp, s0
                  sltu         a6, a3, t1
                  lh           t0, -143(t4)
                  slt          s4, sp, s5
                  srl          a0, t0, tp
                  lhu          a2, -51(t4)
                  sb           s7, -134(t4)
                  lb           a1, 72(t4)
                  lhu          s9, -157(t4)
                  sb           a6, -22(t4)
                  lhu          a0, 135(t4)
                  lbu          a6, -128(t4)
                  srai         s4, s6, 4
                  slt          s0, t0, zero
                  slt          s2, s2, a7
                  lbu          s11, -122(t4)
                  sh           s10, 15(t4) #end riscv_load_store_rand_instr_stream_2
                  la           a5, region_0+1187 #start riscv_load_store_rand_instr_stream_3
                  sb           zero, -14(a5)
                  lb           s0, 14(a5)
                  lh           s2, 7(a5)
                  lb           t0, -15(a5)
                  lbu          s11, -10(a5)
                  andi         sp, t2, 921
                  sh           s0, 5(a5)
                  lbu          s4, 0(a5)
                  lui          gp, 503412
                  add          a3, t0, t3
                  lui          t0, 575844
                  sb           t5, -12(a5)
                  sltiu        a4, t6, -853
                  sb           a0, -2(a5)
                  lbu          a4, 12(a5)
                  lh           a6, 1(a5)
                  xor          zero, ra, t4
                  lbu          tp, 4(a5)
                  and          t5, s10, ra
                  andi         tp, sp, -168
                  sb           a4, 4(a5)
                  nop
                  slti         s11, s0, -881
                  sra          s0, t6, a0
                  slli         s8, gp, 21
                  lb           ra, -6(a5)
                  lbu          s1, -16(a5)
                  srli         s7, a0, 20
                  lbu          a7, -7(a5)
                  lb           gp, -5(a5)
                  lbu          t6, -8(a5)
                  slti         s1, t3, 397
                  lb           ra, -12(a5)
                  lbu          a0, 9(a5)
                  or           a4, gp, s6
                  andi         a7, gp, -147
                  lbu          s8, 4(a5)
                  slti         t0, t1, -518
                  lb           a7, 14(a5)
                  sb           t0, -4(a5)
                  sw           a5, -11(a5) #end riscv_load_store_rand_instr_stream_3
                  auipc        s2, 617902
                  beq          s11, s10, 18f
                  srai         s2, gp, 3
                  xor          a5, s8, t1
                  beq          s4, t1, 10f
                  bne          t5, ra, 17f
                  bgeu         t4, zero, 19f
                  sltiu        ra, s8, -1434
                  slt          s9, a5, t4
                  bne          a7, a1, 24f
10:               sra          a3, s10, t3
                  and          a5, t1, gp
                  ori          tp, s9, 1104
                  xor          t3, t4, a2
                  add          s9, t3, t6
                  add          a2, tp, s3
                  auipc        t1, 763637
17:               and          t4, t6, a4
18:               srli         a1, s10, 28
19:               slti         a7, ra, -202
                  sltu         gp, s0, s8
                  xor          s1, s3, zero
                  blt          t3, s10, 37f
                  xori         s2, t5, 189
24:               auipc        t3, 1009622
                  blt          t3, s0, 40f
                  or           a1, a3, sp
                  andi         s2, t0, 1070
                  slli         s0, a2, 3
                  blt          s8, t1, 34f
                  or           t5, s5, s3
                  or           sp, s8, a5
                  slt          a0, a4, t4
                  lui          zero, 104793
34:               srl          gp, t5, s11
                  srl          tp, t2, s0
                  sll          t3, t5, s0
37:               slt          tp, s7, t6
                  addi         s6, s8, -1820
                  andi         t3, s0, -1284
40:               and          a0, t3, a6
                  xor          s1, s3, t6
                  sra          a6, s5, zero
                  blt          t0, sp, 58f
                  xori         sp, s0, -1226
                  bne          a3, a4, 55f
                  bgeu         gp, a5, 48f
                  srl          a3, a3, s0
48:               sltiu        a6, t5, 1283
                  and          t2, a0, a7
                  or           s9, s8, sp
                  bltu         t2, a7, 63f
                  sltu         ra, a1, t0
                  xor          a4, a4, t2
                  bltu         a5, a4, 67f
55:               slli         zero, a3, 29
                  sra          s7, a6, a7
                  sub          t5, s4, ra
58:               and          s1, s11, a4
                  slli         tp, t5, 10
                  auipc        s9, 30704
                  slli         s7, t6, 18
                  xori         a6, s8, -1156
63:               auipc        tp, 22417
                  sll          a1, s0, gp
                  srl          t6, t3, s3
                  or           t5, a6, s1
67:               add          a3, t3, a7
                  slt          a0, a3, s7
                  nop
                  slt          s8, zero, t1
                  andi         s2, t3, -646
                  lui          a0, 230496
                  srl          t4, s8, ra
                  sra          gp, a3, a7
                  bne          t1, a1, 85f
                  bge          s10, s4, 82f
                  srai         s9, a2, 12
                  beq          a1, s2, 80f
                  ori          t0, zero, 1993
80:               add          s11, a6, s0
                  xor          s6, t4, t2
82:               sra          s7, a0, sp
                  slli         zero, a1, 27
                  sltu         t1, t2, s0
85:               andi         a1, t4, 1187
                  lui          zero, 725364
                  xori         s11, t4, -34
                  addi         s9, t2, 303
                  xori         gp, t1, 568
                  and          zero, t1, s9
                  auipc        s11, 330758
                  sltiu        t0, s3, -1593
                  srl          t3, s3, zero
                  sltu         zero, a1, a6
                  srli         a6, a0, 30
                  srai         a7, a4, 20
                  slti         zero, zero, -562
                  srl          zero, t4, t3
                  andi         sp, ra, 22
                  slti         s9, s7, 1792
                  sra          s1, a7, ra
                  auipc        t1, 957373
                  lui          sp, 76770
                  lui          s8, 872261
                  blt          s2, a7, 122f
                  slti         t1, a3, -649
                  or           a6, t0, a0
                  bne          a1, t2, 124f
                  lui          a5, 94309
                  sltu         s4, s5, t5
                  slt          s11, a7, s11
                  srl          s4, s9, s5
                  bgeu         t5, s6, 130f
                  sra          s7, s1, s11
                  auipc        gp, 426896
                  bgeu         a6, s11, 128f
                  bge          a0, a3, 135f
                  bgeu         t2, s0, 125f
                  bgeu         ra, s5, 122f
                  sub          s4, s9, t0
                  sltiu        a4, a7, 1540
122:              add          s7, s6, a2
                  sub          ra, zero, a2
124:              sll          gp, s7, a4
125:              addi         a1, s10, 466
                  or           ra, t1, t5
                  addi         a0, a3, 1708
128:              and          zero, t1, a2
                  srl          a1, t5, a0
130:              slti         t5, tp, -1715
                  add          zero, s2, t1
                  auipc        s11, 636888
                  srli         sp, a5, 18
                  slti         s6, a2, 1465
135:              auipc        t1, 378886
                  blt          t3, t5, 138f
                  nop
138:              addi         s6, a6, -1351
                  addi         gp, s11, 444
                  andi         a0, t2, 747
                  xor          a3, s9, t4
                  sra          s1, a3, zero
                  slt          gp, s8, t5
                  lui          s2, 595484
                  la           a7, sub_8
                  slli         s11, a7, 29
                  addi         a7, a7, 512
                  slti         a6, tp, 22
                  bge          a7, zero, sub_3_j8 #branch to jump instr
                  sll          s2, t5, s6
                  or           tp, s1, tp
                  auipc        t2, 96004
sub_3_j8:         jalr         t1, a7, -511 #jump sub_3 -> sub_8
                  slli         a1, s5, 8
                  xori         s8, s6, 1616
                  and          t3, a1, a0
                  srai         s7, zero, 23
                  bgeu         s0, t2, 154f
                  sra          a6, zero, t6
                  blt          zero, s10, 168f
                  bge          t4, s11, 170f
                  or           a1, gp, t2
                  xor          s4, s0, s10
154:              slti         gp, s1, -476
                  lui          s9, 948863
                  srli         a0, a7, 2
                  srai         a1, ra, 13
                  xori         t6, a4, -1107
                  add          s11, s1, t0
                  and          a1, s5, a7
                  sll          t5, t0, sp
                  srl          s7, a2, s0
                  srl          a4, a6, s1
                  slli         t1, zero, 30
                  bne          s2, s2, 176f
                  bne          s4, s6, 174f
                  bgeu         zero, s8, 179f
168:              slti         s8, s0, -754
                  bne          sp, a6, 171f
170:              sltu         sp, t2, a6
171:              sll          s4, t2, a2
                  andi         t5, s3, -1338
                  srl          a0, a2, s3
174:              nop
                  bge          t3, t1, 186f
176:              add          t6, s5, gp
                  sltu         a4, s5, t1
                  bne          s10, s8, 191f
179:              xori         t3, a5, 1259
                  bge          a1, a5, 190f
                  bltu         a3, s8, 183f
                  nop
183:              xori         tp, t2, -443
                  nop
                  sltu         s0, a3, s1
186:              sltu         s0, tp, a7
                  nop
                  bge          a2, gp, 194f
                  lui          t1, 798852
190:              sub          s0, s0, a0
191:              srai         s1, s3, 27
                  xori         t6, t5, -1310
                  sub          s6, t3, s1
194:              add          t1, t0, a2
                  srl          zero, a6, s2
                  lui          a7, 378067
                  bne          s9, t4, 209f
                  bge          a3, s8, 215f
                  and          t2, a7, t3
                  sub          s8, a0, t3
                  slli         t2, a4, 14
                  auipc        gp, 601615
                  sll          t3, t3, t4
                  sub          a0, s2, sp
                  auipc        t5, 691497
                  slt          s7, gp, ra
                  beq          a1, tp, 219f
                  ori          s0, t1, -1330
209:              auipc        zero, 972270
                  sub          a2, a3, sp
                  sll          t2, s11, s8
                  or           s11, s9, a2
                  add          a2, t1, s3
                  andi         ra, tp, -656
215:              nop
                  srl          s2, s6, t6
                  bltu         a0, s11, 225f
                  bgeu         t3, s9, 224f
219:              beq          s7, t4, 235f
                  srl          s0, a0, a0
                  auipc        a4, 883194
                  add          s11, s6, t3
                  auipc        a1, 131185
224:              bge          s0, a0, 229f
225:              blt          s3, sp, 237f
                  slt          t0, s2, a0
                  bge          a6, s4, 242f
                  blt          s2, sp, 246f
229:              sltu         s11, s9, a2
                  and          zero, a4, a7
                  sltu         t1, t3, s4
                  bge          s0, s3, 247f
                  sltu         s9, s8, t2
                  slli         a0, t3, 6
235:              andi         gp, a6, -10
                  blt          tp, a4, 255f
237:              srl          a0, t4, s6
                  xori         a3, s5, 1381
                  add          a1, t6, s1
                  addi         a0, a4, -270
                  sub          a4, s3, s9
242:              xor          s7, gp, a0
                  or           a7, ra, sp
                  sll          s2, s0, sp
                  xor          a1, s3, a5
246:              nop
247:              xor          s7, tp, s6
                  or           tp, t6, gp
                  andi         s0, zero, -627
                  or           s2, a5, s9
                  xori         t3, t2, 409
                  and          a3, t0, s8
                  xor          a6, a4, s6
                  bgeu         zero, t1, 257f
255:              sltiu        a1, a2, 566
                  srl          s4, t3, a5
257:              srli         t3, a0, 9
                  bne          tp, s2, 273f
                  bltu         t4, a1, 276f
                  blt          a7, s7, 267f
                  srli         tp, s3, 8
                  sltu         s0, ra, s4
                  slti         a7, t4, -1050
                  or           a6, sp, t1
                  addi         t6, a3, -1861
                  sra          a4, t5, a4
267:              and          a6, a0, zero
                  xori         a2, a0, 582
                  srl          s8, s7, t4
                  sll          s6, s10, a1
                  beq          s7, s8, 284f
                  sra          t4, zero, s3
273:              nop
                  add          t5, s10, t6
                  addi         s9, a2, 1251
276:              bgeu         a3, s1, 288f
                  and          a0, a2, a6
                  beq          t1, a6, 284f
                  bge          a7, gp, 297f
                  sll          t1, s9, t4
                  bge          s8, tp, 283f
                  slti         zero, tp, 1573
283:              srl          s9, s6, t5
284:              blt          a4, s9, 294f
                  sub          t5, s5, t4
                  add          gp, a7, a2
                  xor          t4, t3, s8
288:              sltiu        a6, a6, -1451
                  srli         s4, s7, 19
                  srli         t5, s8, 1
                  bltu         a2, sp, 306f
                  ori          a7, a5, 1099
                  srai         a3, s7, 27
294:              addi         tp, a6, 1339
                  srli         s6, t2, 6
                  andi         zero, a4, -913
297:              nop
                  bne          t3, t0, 315f
                  sub          s2, t2, t2
                  sltiu        a3, s6, 590
                  blt          t0, a0, 316f
                  lui          a0, 11277
                  srli         s6, s3, 13
                  and          a2, s0, s0
                  addi         t3, a7, -374
306:              or           s7, a4, a7
                  and          s9, a6, s11
                  sra          t3, t1, gp
                  lui          a3, 462269
                  ori          s0, a1, 1225
                  ori          sp, s4, 1714
                  sra          s9, a2, s8
                  slli         a5, s8, 13
                  sra          a3, s0, s7
315:              blt          zero, sp, 318f
316:              lui          t1, 828846
                  slt          a0, s5, a5
318:              slli         a4, a7, 17
                  blt          s5, t4, 331f
                  srai         zero, s10, 18
                  andi         a3, ra, 1110
                  lui          ra, 1024539
                  sub          a1, a2, t3
                  lui          a7, 94302
                  xori         t3, s2, 927
                  sltu         ra, s2, s6
                  bltu         a4, s5, 344f
                  xor          gp, ra, s8
                  srl          s1, t6, t4
                  lui          s4, 260528
331:              bgeu         t6, a3, 339f
                  and          s1, t2, s10
                  blt          gp, a4, 339f
                  sltiu        s4, zero, -1556
                  bltu         a2, ra, 354f
                  sub          zero, t3, s0
                  bge          a6, s4, 342f
                  sub          zero, s6, s7
339:              srai         s2, gp, 23
                  auipc        s8, 539362
                  lui          s11, 305756
342:              lui          t6, 90980
                  sub          s0, sp, t6
344:              bne          s6, a2, 355f
                  bge          a5, sp, 362f
                  slt          s8, ra, s4
                  blt          a1, t4, 360f
                  blt          gp, sp, 360f
                  srli         t5, a4, 2
                  sltiu        a6, a6, 914
                  sub          t3, a4, t1
                  add          t6, a5, s6
                  beq          zero, a0, 360f
354:              nop
355:              sub          a4, s8, a4
                  bgeu         tp, s6, 374f
                  slli         a6, t1, 16
                  sltiu        s6, t0, -1722
                  sltu         gp, a4, gp
360:              xori         a6, t3, -1535
                  lui          t6, 413797
362:              bne          a5, s9, 364f
                  sra          t6, a6, gp
364:              auipc        t1, 822038
                  beq          tp, a2, 380f
                  nop
                  auipc        tp, 61983
                  auipc        s9, 438571
                  sltu         a6, sp, ra
                  srl          t2, s9, s1
                  addi         s11, s4, -896
                  ori          a0, sp, -1749
                  bne          s8, a0, 386f
374:              and          s1, a7, t3
                  sltiu        s4, a1, -478
                  sltiu        a3, a2, -1745
                  la           sp, region_1+824 #start riscv_load_store_rand_instr_stream_0
                  lbu          a1, -41(sp)
                  sh           s8, -64(sp)
                  slli         tp, zero, 30
                  lb           t3, 521(sp)
                  sb           t3, -627(sp)
                  lb           a5, 943(sp)
                  lhu          s4, 176(sp)
                  sb           t4, 966(sp)
                  or           gp, t4, t4
                  lbu          t0, 495(sp)
                  slt          t3, s0, tp
                  sh           a4, 790(sp)
                  ori          a4, s4, -1401
                  andi         zero, t5, -1818
                  sll          a7, gp, s4
                  addi         a0, ra, 1698
                  sub          tp, s3, t6
                  srai         s9, tp, 14
                  sb           a5, -677(sp)
                  lhu          s9, 556(sp)
                  lb           a7, -464(sp)
                  xor          s9, t3, s2
                  sb           ra, -73(sp)
                  lb           a7, -279(sp)
                  lb           a4, 181(sp)
                  sub          t4, s1, a5
                  lbu          s2, 1162(sp)
                  sb           a2, 755(sp)
                  sb           s8, 1057(sp)
                  lb           a1, 1069(sp)
                  sra          t4, t4, t2
                  sh           a1, 718(sp)
                  sw           s9, 64(sp)
                  andi         a2, s6, 1031
                  lb           s8, 226(sp)
                  sw           s11, 612(sp)
                  srai         s1, t4, 27
                  srai         s4, a4, 24
                  lb           t0, 423(sp)
                  and          a3, a7, t0
                  lbu          t4, -703(sp)
                  and          a0, s6, s10
                  lw           gp, 40(sp)
                  lb           s8, 426(sp)
                  lw           tp, -48(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s7, a7, -217
                  ori          s2, a4, -818
                  xor          gp, t3, t4
380:              sll          a7, ra, s0
                  ori          a0, sp, -182
                  lui          s9, 249608
                  nop
                  sltiu        t0, s7, -1246
                  slti         s8, s10, 905
386:              and          t6, zero, s7
                  srai         a2, t5, 4
                  beq          tp, gp, 406f
                  slli         a0, s2, 0
                  auipc        t3, 398288
                  xor          s11, t4, a1
                  add          s7, a1, s3
                  xor          ra, t4, gp
                  sll          a6, a2, s11
                  slti         a4, t0, -682
                  sltu         a0, t0, t0
                  bge          t4, zero, 407f
                  sltu         s2, t6, t5
                  sub          a0, s4, ra
                  bltu         a6, s9, 416f
                  bltu         t5, t2, 413f
                  blt          tp, sp, 408f
                  slt          t0, a4, sp
                  bne          a3, a4, 416f
                  slt          s2, t2, ra
406:              addi         t5, a5, 630
407:              slt          s6, t5, ra
408:              beq          t2, a3, 410f
                  srai         gp, a5, 6
410:              srai         t4, s9, 11
                  ori          t0, t6, 1568
                  auipc        t3, 15911
413:              add          s7, s5, a4
                  slti         a2, s3, -880
                  srli         zero, t2, 14
416:              srl          t5, tp, a7
                  xor          s2, t6, tp
                  xori         a7, s11, 1601
                  bne          a7, a5, 425f
                  sltu         zero, a4, s9
                  add          a4, t4, a7
                  and          a2, a7, s5
                  xori         s2, s11, -1571
                  bge          sp, zero, 441f
425:              bltu         s9, a3, 440f
                  nop
                  srli         a5, t4, 13
                  sltu         s4, s6, s3
                  addi         t1, s1, -164
                  bltu         a6, a0, 440f
                  sra          s2, a3, t3
                  sll          a3, a4, a6
                  slt          a2, s2, t6
                  blt          zero, t5, 449f
                  bge          a0, sp, 437f
                  auipc        zero, 936817
437:              xor          t6, t2, a6
                  or           tp, s10, s6
                  xori         gp, gp, -909
440:              sltiu        a7, t0, -1879
441:              andi         a6, t5, -614
                  xori         a2, s11, 1248
                  bltu         s4, t2, 451f
                  slti         t4, s4, -869
                  blt          t6, zero, 462f
                  slt          t6, zero, t1
                  andi         a4, s9, 970
                  add          t0, zero, s3
449:              lui          t0, 577314
                  xori         s8, t4, 545
451:              add          s0, a4, a5
                  nop
                  bgeu         s3, s11, 471f
                  slti         a5, t3, -1751
                  sub          t3, s1, t0
                  bge          s9, s3, 473f
                  slti         s0, sp, -263
                  and          s6, a1, a6
                  sltu         t2, s2, a5
                  add          s6, a5, a1
                  slti         s8, a1, 758
462:              sra          t4, s4, t1
                  add          a2, s3, zero
                  andi         a4, a4, -105
                  xor          t1, t2, t4
                  nop
                  srai         a2, sp, 18
                  ori          s4, zero, -938
                  sra          t2, t6, gp
                  srli         t4, s0, 0
471:              beq          s0, s0, 482f
                  bne          a4, s2, 487f
473:              nop
                  srl          t1, s10, t2
                  blt          s6, sp, 493f
                  slti         a5, t1, -1182
                  auipc        t2, 262204
                  or           t2, s2, s6
                  bgeu         tp, a6, 485f
                  nop
                  beq          t5, t2, 500f
482:              sltu         s8, s4, s9
                  slli         s8, a7, 11
                  bltu         sp, s0, 501f
485:              sll          s8, a1, t5
                  blt          s6, a7, 502f
487:              slti         t0, s3, 1042
                  sltiu        a2, s9, -888
                  slli         zero, a2, 22
                  srli         t4, s5, 13
                  blt          sp, t5, 497f
                  bltu         s11, a0, 497f
493:              srai         a5, s7, 9
                  bgeu         s0, t6, 508f
                  and          t2, t0, s11
                  srai         s0, t2, 29
497:              slt          t2, s4, a5
                  bgeu         a5, t6, 508f
                  sltiu        t2, s5, -247
500:              lui          s4, 61710
501:              sll          a0, sp, s10
502:              bltu         s11, t3, 508f
                  srl          t1, a6, a3
                  srl          s1, tp, a2
                  srli         t3, s8, 18
                  srai         ra, s11, 19
                  bge          t6, s8, 508f
508:              sub          zero, t0, s5
                  lw           t1, 4(s3)
                  sltiu        s11, a5, -1862
                  sll          s2, t1, a6
                  srli         a5, a6, 15
                  slli         a5, a5, 16
                  addi         t2, tp, -445
                  slti         t0, a0, -2027
                  srl          t0, s8, s1
                  andi         a2, a1, 578
                  sltiu        s6, a2, 2014
                  addi         s3, s3, 12
                  srl          s6, t3, a7
703:              addi x9, x6, 1
703:              jalr x9, x9, 0
sub_10:           slt          a7, a0, s2
                  blt          t1, s0, sub_10_stack_p
                  sltiu        a7, ra, -1740
                  ori          a3, t5, 1540
                  srli         t2, t3, 7
                  andi         s1, s2, 624
                  addi         sp, s3, -339
                  xor          t4, s4, s3
sub_10_stack_p:   addi         s3, s3, -12
                  ori          a3, s9, -1125
                  sw           t1, 4(s3)
                  sltu         t5, s1, s6
                  la           sp, region_0+1246 #start riscv_load_store_rand_instr_stream_0
                  or           s11, s3, t2
                  addi         a7, a4, -1524
                  lbu          a3, 8(sp)
                  lh           a7, -6(sp)
                  lhu          s4, -12(sp)
                  srl          tp, s7, tp
                  and          a6, a2, t1
                  auipc        a2, 372328
                  andi         t1, a7, -834
                  srli         a7, t4, 3
                  sub          zero, a0, a1
                  lhu          a6, 10(sp)
                  xor          t2, s0, t3
                  slt          t3, a5, t1
                  lbu          a1, -1(sp)
                  srli         s9, s11, 16
                  lhu          t5, 14(sp)
                  or           gp, tp, t3
                  sb           sp, 11(sp)
                  and          t5, s2, t2
                  add          gp, s6, t1
                  auipc        a2, 809229
                  lbu          a5, 6(sp)
                  sub          gp, a4, a6
                  srli         a7, t4, 7
                  sw           t6, 6(sp)
                  lb           s4, 7(sp)
                  ori          a3, t1, -1486
                  slt          a5, s4, a0
                  lbu          t6, 13(sp)
                  lui          t2, 793257
                  slti         a0, a7, -266
                  sh           a7, -6(sp)
                  sb           a1, 15(sp)
                  slt          t6, a0, a6
                  slli         a3, a7, 9
                  srai         a2, s10, 26
                  auipc        s7, 299957
                  andi         zero, s11, 1359
                  nop
                  lb           t5, -8(sp)
                  sll          gp, s4, t0
                  sub          s9, s5, a3
                  lbu          s11, 2(sp) #end riscv_load_store_rand_instr_stream_0
                  sub          s1, s0, a4
                  beq          a0, a2, 8f
                  sub          a1, a0, s11
                  srl          t4, a5, t4
                  or           t4, s5, t1
                  auipc        a4, 662773
                  beq          s3, s1, 11f
                  bge          tp, s3, 10f
8:                sltiu        a4, ra, -991
                  or           t4, a2, s1
10:               bne          a0, a6, 13f
11:               and          s4, a1, ra
                  lui          s1, 40091
13:               xori         tp, a6, -1648
                  addi         a4, t2, 332
                  and          a3, t5, sp
                  add          tp, a1, gp
                  slli         a0, a2, 29
                  slt          s7, tp, a4
                  beq          s7, s10, 35f
                  xori         zero, t4, 2041
                  slti         t3, s2, -1951
                  xori         a1, s6, -1636
                  xor          t6, s3, a4
                  and          a6, s4, a0
                  or           zero, a1, zero
                  slt          a4, s0, s11
                  xor          gp, s8, s1
                  bltu         a4, gp, 46f
                  sll          s6, t4, t6
                  xor          a3, t5, a5
                  srai         tp, t4, 21
                  bne          s5, t5, 45f
                  slti         gp, s10, -145
                  srli         s8, t1, 29
35:               sltiu        s6, a3, 1978
                  nop
                  srl          s6, a3, a6
                  bltu         s1, a2, 58f
                  srai         t0, s11, 30
                  auipc        t6, 721771
                  sltiu        t2, ra, 1754
                  nop
                  srai         ra, s11, 6
                  la           a2, region_0+1044 #start riscv_load_store_rand_instr_stream_1
                  andi         t4, ra, -1037
                  sb           a4, -87(a2)
                  or           gp, s4, s5
                  lui          s4, 216822
                  nop
                  lbu          t0, -193(a2)
                  lbu          a4, -80(a2)
                  lw           s2, -232(a2)
                  lb           t6, -89(a2)
                  lhu          t6, -238(a2)
                  sb           a3, 1(a2)
                  lb           t4, 105(a2)
                  lw           s4, 60(a2)
                  or           s11, ra, s8
                  or           sp, s8, s11
                  lbu          t6, -237(a2)
                  nop
                  sltiu        ra, t4, 235
                  lhu          s6, -66(a2)
                  sltiu        a1, s2, -56
                  sltu         s7, a0, sp
                  lbu          t5, 17(a2)
                  lbu          t3, 185(a2)
                  srl          t5, a3, s7
                  lb           gp, -7(a2)
                  sll          s8, t6, s5
                  xori         t4, s2, 766
                  sb           a3, 7(a2)
                  slli         t3, s5, 27
                  sltu         s8, tp, s0
                  sb           s11, -157(a2) #end riscv_load_store_rand_instr_stream_1
                  srli         a2, t6, 17
45:               ori          s0, sp, 544
46:               add          tp, a2, t0
                  bgeu         s1, zero, 57f
                  or           a1, t1, t3
                  and          t3, ra, tp
                  xori         sp, a5, -1916
                  xor          t1, a0, a0
                  beq          s7, s6, 54f
                  bltu         gp, t3, 67f
54:               bltu         s11, a0, 70f
                  srai         s11, s10, 13
                  sll          a5, gp, s10
57:               bltu         ra, tp, 64f
58:               slti         a0, a0, 2020
                  bne          zero, zero, 69f
                  ori          s11, a5, -1008
                  add          zero, t2, t1
                  slli         t5, tp, 9
                  srl          zero, t6, a7
64:               andi         t4, s2, 156
                  srli         s11, s10, 17
                  sub          a3, s0, s10
67:               slti         a4, a1, 1205
                  add          s6, a3, t6
69:               xor          s11, t3, t3
70:               beq          t6, a3, 90f
                  slt          a1, t5, s11
                  slt          a1, t5, t4
                  and          a0, t5, sp
                  blt          s4, a2, 80f
                  sltu         t1, s8, a7
                  nop
                  srl          s6, a2, t1
                  sltiu        zero, s3, -836
                  beq          t4, t4, 98f
80:               slti         t1, ra, 1052
                  ori          s1, sp, -452
                  bgeu         t0, t1, 93f
                  slti         a7, a2, -1141
                  xori         s1, t4, -1528
                  addi         s6, s0, 1351
                  blt          t5, a3, 102f
                  andi         s0, a5, 1085
                  bge          zero, t6, 89f
89:               bltu         s6, s0, 99f
90:               srl          s1, t0, s6
                  ori          a1, a4, 1247
                  nop
93:               and          s4, a3, s6
                  bne          s10, s8, 112f
                  bgeu         a2, t2, 109f
                  srl          ra, s3, t5
                  xor          a4, gp, t1
98:               slt          gp, t2, s7
99:               and          t6, tp, s9
                  srl          t2, a1, s2
                  sltiu        t5, t1, 606
102:              slt          a1, s1, s6
                  bne          a2, t0, 115f
                  xori         t6, tp, -1916
                  xori         t3, tp, 58
                  sltiu        t2, s5, 898
                  bne          s10, s2, 114f
                  ori          s11, s2, 37
109:              beq          tp, t6, 114f
                  sub          a7, a3, s6
                  sra          ra, s9, a0
112:              beq          gp, ra, 130f
                  sub          a6, ra, t6
114:              sub          t0, s9, a0
115:              slt          s7, s0, a3
                  ori          t6, s0, -279
                  bge          s8, t3, 120f
                  sltiu        s11, t0, -136
                  xori         s1, t5, -1164
120:              sra          a7, sp, t5
                  slti         t0, t3, 841
                  blt          t6, a7, 126f
                  bge          gp, s9, 135f
                  sll          t4, zero, s8
                  add          s9, a4, gp
126:              sltiu        t1, a1, 1222
                  bgeu         t6, t2, 147f
                  sub          t4, a7, s9
                  srl          s11, s6, gp
130:              andi         s8, s7, 453
                  andi         a6, a5, -1132
                  srli         s6, s5, 21
                  sltu         tp, a3, gp
                  nop
135:              sltiu        t6, sp, -140
                  sltiu        tp, s10, 1629
                  bgeu         a4, zero, 140f
                  xor          s8, s1, t0
                  sltu         s8, a5, gp
140:              lui          s4, 22408
                  bne          s7, sp, 153f
                  and          t5, t2, a7
                  xori         gp, gp, -1343
                  srl          s2, s6, a7
                  slt          s7, s5, s4
                  bge          zero, zero, 166f
147:              andi         t2, a3, -729
                  xori         s1, a6, 258
                  bltu         t6, a3, 167f
                  sra          gp, s0, a4
                  slti         t6, s7, -828
                  or           s1, s2, s11
153:              srli         t6, s6, 20
                  add          tp, t4, t5
                  xori         t0, a7, -264
                  slt          t6, t4, s4
                  sltu         t5, s1, t5
                  sra          s8, s11, s11
                  slli         s11, a0, 22
                  bne          tp, zero, 174f
                  andi         t0, a4, 686
                  sltiu        a6, tp, -5
                  bne          t0, t2, 176f
                  andi         t4, s8, -1276
                  blt          t3, s5, 171f
166:              bgeu         a0, s10, 169f
167:              blt          a1, a2, 179f
                  sll          s7, t3, tp
169:              and          t3, a2, s10
                  and          s6, s9, s11
171:              bgeu         s8, tp, 182f
                  bgeu         s6, t2, 190f
                  bne          s2, t0, 192f
174:              ori          a2, a4, 1619
                  ori          a7, a2, -1072
176:              srl          s11, s4, s4
                  blt          ra, t1, 195f
                  xor          t6, s4, gp
179:              sltu         t3, tp, s9
                  sll          a3, a7, s4
                  xor          s6, a5, zero
182:              ori          t6, s7, -432
                  srli         t1, sp, 27
                  bgeu         t4, a3, 200f
                  andi         t2, s11, 1399
                  srl          a1, t1, s8
                  addi         s11, s11, -1370
                  blt          a1, s0, 204f
                  sltiu        t1, a6, -1815
190:              add          gp, s1, a2
                  xori         a5, a1, -337
192:              addi         s11, a2, -932
                  add          a7, s6, s11
                  beq          a3, a3, 196f
195:              srai         a0, t0, 21
196:              sltu         t2, s8, s5
                  andi         a7, s11, 463
                  or           a0, a1, s1
                  xor          s11, a7, zero
200:              blt          a7, a0, 205f
                  bne          a6, a3, 211f
                  xori         t1, a0, 840
                  sra          a3, s7, a4
204:              beq          s2, s8, 205f
205:              sll          t0, s2, t4
                  andi         gp, s5, 1803
                  sub          ra, a3, s5
                  ori          t3, a3, -1587
                  bne          t2, a2, 225f
                  and          a1, t0, t3
211:              beq          a1, s0, 218f
                  addi         t0, s2, 1959
                  andi         t2, t1, -458
                  addi         a3, s7, 710
                  bltu         a4, t0, 219f
                  sll          s2, sp, s10
                  auipc        sp, 505206
218:              sub          tp, a5, a5
219:              slli         s7, s9, 17
                  bltu         s1, s4, 230f
                  sll          s0, tp, t2
                  andi         a2, s2, 1364
                  srai         a2, s11, 27
                  addi         s8, s8, 843
225:              add          s7, t5, tp
                  andi         s4, t6, -1758
                  blt          s0, ra, 234f
                  auipc        s11, 740254
                  sltu         s2, s2, tp
230:              bne          t6, a3, 233f
                  bne          a2, s4, 241f
                  addi         s11, a7, 1197
233:              sra          s9, s1, s9
234:              slli         zero, sp, 19
                  slti         a7, s1, -590
                  sltiu        s1, t0, 1854
                  sub          t4, s3, s7
                  srl          gp, t6, sp
                  xori         s2, a5, 164
                  addi         t4, s2, -1650
241:              ori          s1, t1, -1518
                  slli         t6, s11, 25
                  srli         t2, s3, 28
                  sltu         s7, s4, a1
                  sltu         s4, s8, t4
                  slt          gp, t5, a6
                  sub          a7, a2, a7
                  auipc        a0, 355566
                  sltu         tp, s7, t6
                  andi         s11, tp, 1327
                  beq          a0, a7, 265f
                  bltu         a1, t0, 257f
                  sltiu        t1, t2, 1289
                  blt          zero, a1, 261f
                  slt          a3, a3, ra
                  srl          t0, a4, t2
257:              bgeu         a2, s1, 273f
                  bne          ra, a3, 278f
                  sra          a5, sp, s2
                  bgeu         s9, a1, 270f
261:              bne          gp, a0, 266f
                  bgeu         a1, s3, 272f
                  slti         tp, tp, -526
                  srai         s8, a2, 7
265:              addi         s0, s7, -433
266:              or           t2, a7, s6
                  sub          ra, t3, a5
                  lui          s9, 124659
                  andi         t5, a0, 644
270:              srai         a2, a2, 21
                  srl          s2, t4, t0
272:              bltu         s11, a5, 290f
273:              blt          a7, s9, 276f
                  andi         a2, a5, -1257
                  sltiu        s8, a6, -1693
276:              srl          t5, s11, s4
                  bge          s5, s4, 296f
278:              bltu         t0, t1, 292f
                  nop
                  add          s2, s10, sp
                  bgeu         t0, t2, 284f
                  addi         s6, t0, 159
                  sll          s4, t3, a3
284:              slt          a6, a5, s5
                  or           t6, t1, a2
                  lui          t3, 536385
                  sra          s0, a1, sp
                  xor          a6, s2, tp
                  srai         t0, s9, 15
290:              blt          a0, s0, 299f
                  or           a7, gp, zero
292:              bltu         a5, a7, 298f
                  or           a0, s5, a4
                  sll          tp, a5, ra
                  blt          s1, s4, 299f
296:              add          t0, a1, a4
                  sra          s9, a2, t4
298:              blt          a1, a3, 299f
299:              andi         a0, a5, -692
                  srai         s4, a6, 6
                  lw           t1, 4(s3)
                  srai         a0, a2, 16
                  addi         s3, s3, 12
                  srai         a4, t0, 18
394:              addi x15, x6, 1
394:              jalr x15, x15, 0
sub_5:            and          a5, t1, s5
                  lui          s0, 509365
                  bgeu         s9, t2, sub_5_stack_p
                  auipc        s6, 359456
                  sll          s8, s6, t4
sub_5_stack_p:    addi         s3, s3, -40
                  sw           t1, 4(s3)
                  sub          s9, a2, s7
                  lui          s1, 435294
                  sra          t3, s8, t1
                  or           sp, a2, t1
                  sll          s8, a5, t6
                  la           a4, region_0+117 #start riscv_load_store_rand_instr_stream_0
                  nop
                  srli         t0, t0, 9
                  sb           s11, 190(a4)
                  slli         a0, t4, 14
                  ori          s2, t2, 877
                  lw           t3, -53(a4)
                  slli         t1, s8, 25
                  and          s2, t1, s1
                  lui          s7, 396361
                  and          s7, a1, t2
                  lhu          s2, 157(a4)
                  lb           a1, -63(a4)
                  lui          s1, 959258
                  lb           s6, 230(a4)
                  lb           t3, 233(a4)
                  auipc        zero, 4973
                  sltiu        t6, s0, -15
                  ori          zero, a3, 1179
                  lb           t2, 148(a4)
                  sb           t0, 77(a4)
                  sb           t4, -31(a4)
                  slt          a5, s1, ra
                  xori         a5, s7, -472
                  lb           s7, 42(a4)
                  sll          ra, a6, t0
                  lbu          s9, -4(a4)
                  lbu          t6, -111(a4)
                  slti         s8, t0, 1520
                  slli         zero, gp, 0
                  lw           a0, 211(a4)
                  srl          s11, a5, s4
                  sb           s10, -87(a4)
                  xor          s8, tp, t6
                  sltiu        gp, s1, -1983
                  or           a0, s3, sp
                  lh           t5, 225(a4)
                  or           a2, a6, t6
                  add          s11, a5, t2
                  ori          t0, zero, 1716
                  nop
                  lbu          a2, 84(a4)
                  srli         s8, t5, 8
                  slt          t4, a1, t4
                  and          t4, s1, t3
                  lhu          a5, 11(a4)
                  sh           tp, 183(a4) #end riscv_load_store_rand_instr_stream_0
                  sub          ra, s6, s0
                  sltu         a0, t1, a7
                  auipc        a4, 75610
                  add          s7, s0, s4
                  sra          s4, a2, zero
                  xor          t3, s10, t3
                  srli         a6, a5, 1
                  bge          sp, ra, 8f
8:                sltiu        s4, s4, -135
                  and          a1, t0, a4
                  auipc        t4, 354473
                  slt          a1, s5, t5
                  ori          a7, s4, -458
                  bgeu         sp, t5, 32f
                  bltu         gp, s3, 16f
                  srli         a0, t4, 22
16:               and          a0, s0, a2
                  srai         s9, s8, 31
                  or           s8, a2, tp
                  add          t3, a5, sp
                  add          t1, s10, sp
                  addi         s6, s11, 1310
                  andi         zero, a6, 891
                  bltu         a2, t5, 33f
                  beq          t6, s7, 26f
                  bltu         a6, a1, 35f
26:               slli         t2, sp, 9
                  nop
                  xori         t4, ra, 1139
                  bgeu         ra, a3, 43f
                  sra          a5, t0, s2
                  bgeu         a3, s9, 45f
32:               or           s7, zero, t5
33:               blt          s3, a0, 38f
                  xor          t4, s0, a7
35:               sub          s1, a6, a7
                  xori         sp, s5, 962
                  sra          ra, s2, s3
38:               beq          a0, t2, 43f
                  sll          t4, s8, s3
                  ori          s2, s1, -1213
                  bne          s7, s6, 42f
42:               addi         a3, a2, -693
43:               bne          s7, s1, 47f
                  andi         a0, s8, -1396
45:               bne          sp, t0, 62f
                  xor          s8, a2, s4
47:               srli         zero, a7, 25
                  srai         ra, a6, 6
                  sll          sp, gp, sp
                  or           a1, s9, s0
                  addi         t6, gp, 1611
                  lui          t3, 1034527
                  beq          s4, a2, 56f
                  sll          s9, ra, t5
                  bgeu         a1, s7, 59f
56:               addi         t6, ra, 546
                  add          a1, s4, a2
                  slti         tp, s3, -32
59:               sra          sp, s0, ra
                  sll          s7, a6, a6
                  slli         t0, t1, 20
62:               slti         a1, a5, -64
                  slti         a5, a6, 1926
                  lui          a6, 516354
                  nop
                  sltu         gp, s1, t6
                  sra          t1, s11, t5
                  bgeu         t1, t4, 84f
                  slt          t6, s10, gp
                  xor          s2, s9, t0
                  bne          ra, s9, 87f
                  addi         t2, t1, 392
                  nop
                  or           a7, a6, a3
                  and          s8, a5, t6
                  auipc        t4, 404911
                  slli         t1, gp, 4
                  blt          a1, a0, 97f
                  xor          a0, a7, zero
                  or           a7, t0, tp
                  xori         s6, t4, -1412
                  ori          a7, t3, 1624
                  andi         tp, a1, 1470
84:               auipc        t0, 491682
                  bne          s4, gp, 92f
                  sltu         a1, s8, ra
87:               xori         t6, a4, -328
                  slti         a4, t2, -1995
                  blt          t0, s4, 94f
                  bltu         t0, s10, 92f
                  slt          gp, ra, a4
92:               bne          s11, s10, 110f
                  sltiu        t3, s10, -1555
94:               slti         s8, s6, 407
                  xori         a5, t4, -14
                  slt          s11, s3, t6
97:               srai         a1, s3, 22
                  lui          s2, 633634
                  srai         tp, s9, 20
                  andi         t0, a4, -686
                  bltu         sp, s9, 116f
                  beq          a7, s11, 116f
                  sll          s9, s6, a0
                  andi         gp, t5, 515
                  srl          t1, a0, t0
                  slti         s8, a7, -106
                  srli         zero, ra, 31
                  slt          zero, a4, t6
                  srl          s6, s6, a4
110:              slti         s8, a6, -1699
                  bltu         s4, s2, 118f
                  sltu         ra, sp, t5
                  slli         tp, t5, 10
                  sub          s1, t3, zero
                  or           sp, a4, a3
116:              xori         t6, a0, 1380
                  blt          s7, s10, 132f
118:              slti         a6, s5, 1436
                  sra          s11, s2, s8
                  xori         s7, t4, -1198
                  lui          sp, 793156
                  addi         tp, a4, 1359
                  srai         sp, s8, 20
                  slt          a1, s7, s0
                  sll          ra, t4, tp
                  slt          s11, a3, a7
                  slt          a7, s6, s1
                  sub          a0, s1, s10
                  blt          s11, t4, 149f
                  add          t1, s11, gp
                  slli         a3, s2, 30
                  ori          tp, a0, 536
                  and          t0, sp, s4
                  xor          a0, t2, s0
                  slli         a3, s4, 9
                  sltu         sp, a1, s8
                  lui          s9, 356832
sub_5_j11:        jal          t1, sub_9 #jump sub_5 -> sub_9
132:              srl          a3, s3, a5
                  slt          a3, s6, s4
                  sltiu        s4, t2, 1586
                  bgeu         s5, a1, 139f
                  beq          a3, t4, 141f
                  sub          a7, gp, a1
                  sltiu        sp, t3, -1553
139:              add          t6, s9, a1
                  and          t5, s0, a7
141:              add          a6, ra, a7
                  sub          s8, s10, gp
                  sltiu        zero, t2, -568
                  bge          t1, s6, 158f
                  bge          t6, a2, 164f
                  slli         a5, a6, 11
                  beq          s5, t3, 154f
                  and          s1, a1, zero
149:              lui          t4, 475399
                  and          a0, a4, gp
                  sra          t3, t2, s11
                  sll          s7, s1, t5
                  add          tp, gp, a4
154:              sra          t3, s10, s10
                  srl          t0, s11, s10
                  auipc        a3, 737824
                  bgeu         s10, s9, 171f
158:              bge          a5, s0, 162f
                  srli         a3, t3, 4
                  bltu         s9, zero, 179f
                  slti         gp, zero, 1738
162:              srl          t4, s10, s7
                  nop
164:              sub          s11, t1, gp
                  ori          t6, s6, -1813
                  beq          s3, s5, 181f
                  srl          t1, s2, a7
                  andi         s0, s8, -1055
                  and          tp, a0, s2
                  add          a7, zero, t0
171:              ori          s1, s11, -1912
                  bne          tp, t6, 177f
                  bne          s7, a0, 183f
                  and          s9, zero, s2
                  slti         sp, s3, 1151
                  slli         a7, t3, 14
177:              lui          t3, 502228
                  xor          s6, gp, s6
179:              beq          s8, a7, 195f
                  nop
181:              auipc        s2, 15993
                  bltu         tp, s11, 187f
183:              auipc        t4, 167061
                  or           tp, s9, t0
                  nop
                  beq          a0, s0, 190f
187:              bne          s4, s2, 205f
                  auipc        t3, 287024
                  sub          t5, a7, t3
190:              sra          a7, t6, sp
                  lui          s8, 772526
                  bltu         a5, s1, 194f
                  add          a6, s5, a5
194:              beq          a1, s1, 210f
195:              or           s6, s9, t6
                  slli         a0, t2, 10
                  sltiu        a7, s1, 233
                  xor          t2, s6, a0
                  ori          t4, s11, -685
                  sll          s6, s7, s10
                  sll          s9, sp, tp
                  bltu         s1, a1, 207f
                  xori         a5, s9, -662
                  xori         t3, a6, 505
205:              sll          s0, gp, s7
                  slt          s2, s11, s11
207:              srai         sp, t0, 19
                  srl          s4, a4, s2
                  auipc        t6, 159115
210:              sub          t3, s2, t6
                  or           t5, zero, a7
                  addi         sp, t4, 111
                  slti         s11, s1, -1207
                  bgeu         t3, a6, 227f
                  nop
                  slli         s8, s7, 13
                  slti         a5, s0, 1893
                  andi         a1, t5, -629
                  sltu         s2, gp, s0
                  srai         a5, s4, 13
                  slli         a3, a2, 5
                  xori         s6, tp, -849
                  srai         a1, s11, 26
                  beq          s11, s2, 227f
                  xor          a5, t1, t1
                  addi         gp, a2, -1530
227:              slt          gp, t3, s11
                  lw           t1, 4(s3)
                  and          s6, a1, tp
                  andi         s1, a3, -1189
                  addi         s3, s3, 40
                  andi         t3, s7, 456
                  srli         gp, t0, 22
                  xori         sp, s6, -129
                  sll          a1, s2, t5
302:              addi x18, x6, 1
302:              jalr x18, x18, 0
sub_1:            bltu         t1, a0, sub_1_stack_p
sub_1_stack_p:    addi         s3, s3, -40
                  sub          gp, a4, t1
                  sw           t1, 4(s3)
                  slt          sp, ra, zero
                  srl          a3, t6, a0
                  and          a0, gp, a7
                  srl          a4, sp, gp
                  la           a7, sub_3
                  xori         s0, s4, -897
                  addi         a7, a7, -77
                  srai         a6, s7, 23
                  sltiu        a2, s10, 1501
                  slli         a1, s9, 12
                  blt          s6, t2, sub_1_j3 #branch to jump instr
                  srl          t1, t5, t1
                  andi         t4, ra, 805
                  xor          gp, ra, s0
                  xori         s6, t6, -1388
                  addi         sp, t6, -1325
sub_1_j3:         jalr         t1, a7, 78 #jump sub_1 -> sub_3
                  ori          s2, a5, 1717
                  sll          tp, sp, s6
                  slti         s0, a2, -1234
                  srai         t1, s3, 24
                  bne          gp, a1, sub_1_j4 #branch to jump instr
                  lui          t1, 388793
sub_1_j4:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  la           t6, sub_2
                  slt          t1, s7, a5
                  and          s8, s4, s1
                  add          s4, s0, tp
                  xori         t4, a3, 241
                  addi         t6, t6, 51
                  auipc        s0, 629809
                  bgeu         s0, ra, sub_1_j5 #branch to jump instr
                  sub          t4, zero, a7
                  srl          a4, sp, a4
                  sltu         s4, t0, s6
sub_1_j5:         jalr         t1, t6, -51 #jump sub_1 -> sub_2
                  slt          t3, t1, t4
                  srli         tp, s10, 2
                  blt          a6, s11, 12f
                  sll          zero, a0, s5
                  sltiu        a1, s8, -749
                  slli         sp, s9, 4
                  xori         sp, s11, 659
                  beq          t3, a5, 9f
                  bltu         t0, s8, 13f
9:                auipc        t4, 289687
                  or           a0, a1, s5
                  blt          a2, t4, 15f
12:               bgeu         t6, sp, 15f
13:               bne          s2, t1, 15f
                  ori          a1, t1, -1346
15:               srl          t2, t1, s7
                  andi         t3, s8, -1760
                  sltu         s4, s2, s9
                  ori          s6, s5, -1002
                  lw           t1, 4(s3)
                  sltiu        a6, s11, 160
                  add          t3, tp, s2
                  sll          gp, s2, a7
                  addi         s3, s3, 40
                  add          s1, s4, tp
65:               addi x17, x6, 0
65:               jalr x17, x17, 0
sub_2:            sub          zero, t4, t6
                  addi         s3, s3, -12
                  ori          s1, s8, 1570
                  and          s0, ra, t1
                  sw           t1, 4(s3)
                  srl          s6, s0, a3
                  slli         t4, sp, 16
                  add          s6, sp, t6
                  sll          t5, s9, s4
                  slti         s4, t1, 69
                  la           s8, sub_7
                  xori         s1, a0, 1034
                  sltu         t6, gp, a4
                  addi         s8, s8, -544
                  lui          a5, 1008967
                  ori          s0, ra, -1837
                  slti         a3, sp, 1696
                  and          gp, s6, s1
                  sll          s4, a0, s11
sub_2_j6:         jalr         t1, s8, 544 #jump sub_2 -> sub_7
                  sltu         t0, a0, a1
                  or           a6, a1, ra
                  la           s6, sub_5
                  sub          t5, zero, s9
                  xor          t3, t6, a5
                  andi         zero, s8, -627
                  addi         s6, s6, -900
                  sltiu        a5, a6, 297
                  xori         gp, ra, -1589
                  xori         s0, a3, -833
                  ori          s1, s7, 1510
                  bge          s2, a7, sub_2_j7 #branch to jump instr
                  sll          t1, s4, zero
sub_2_j7:         jalr         t1, s6, 901 #jump sub_2 -> sub_5
                  la           s2, region_0+304 #start riscv_load_store_rand_instr_stream_0
                  lui          s6, 370819
                  sra          tp, t6, t4
                  lbu          a7, 12(s2)
                  lb           t6, 8(s2)
                  add          s6, gp, a0
                  slt          gp, s1, a1
                  lbu          ra, 8(s2)
                  nop
                  lbu          a6, 9(s2)
                  slti         t4, sp, -275
                  lbu          zero, -7(s2)
                  xori         t2, a4, -1577
                  sh           s1, -10(s2)
                  lui          t4, 632643
                  nop
                  lw           t1, 16(s2)
                  slt          gp, t5, s6
                  andi         a4, t2, 2014
                  xori         t3, s5, -842
                  sra          a2, s1, t1
                  andi         s0, s5, -1892
                  addi         a3, gp, -1040
                  xori         tp, s8, -1420
                  add          t6, s7, a5
                  sb           zero, 10(s2)
                  sb           s1, 11(s2)
                  and          zero, t5, t1
                  lb           t5, -3(s2)
                  sltu         zero, t6, a2
                  sra          s1, s8, ra
                  sltu         s7, a4, tp
                  srl          s9, a3, a1
                  slli         a1, gp, 1
                  lh           t0, 2(s2)
                  sub          t6, ra, gp
                  lui          a6, 940931
                  sub          s8, a4, a2
                  xor          s0, sp, s1
                  lb           a7, 11(s2)
                  lbu          tp, -9(s2)
                  sll          s0, a1, s10
                  lbu          s9, -3(s2)
                  lb           a2, -9(s2) #end riscv_load_store_rand_instr_stream_0
                  addi         t4, a3, 171
                  xori         a5, a5, 2008
                  add          t0, tp, s3
                  sltu         t2, s0, s8
                  srl          zero, ra, gp
                  sll          zero, gp, tp
                  srli         ra, sp, 7
                  sub          s1, t0, s4
                  andi         a5, s5, -1671
                  blt          sp, t4, 13f
                  auipc        sp, 801074
                  nop
                  and          t4, zero, t6
13:               srl          a2, s5, t6
                  ori          s11, a0, 627
                  addi         s0, s0, 1619
                  blt          a0, t6, 30f
                  and          t2, a5, a3
                  xor          tp, sp, s10
                  andi         a6, s2, -717
                  slt          a0, s6, a0
                  lui          a2, 83557
                  sub          a6, s4, s7
                  slt          a1, t1, a4
                  sub          a7, s6, t2
                  ori          t4, a7, -986
                  slti         a3, t3, -1904
                  auipc        s8, 422723
                  bge          a7, a5, 48f
                  sub          s8, s5, a5
30:               slt          t6, a6, s0
                  nop
                  sub          t1, s8, s7
                  sub          a4, a2, s2
                  srai         s2, t1, 2
                  ori          a4, s10, 1317
                  slt          t2, a1, s8
                  add          s11, t4, t3
                  sra          gp, s3, a1
                  slt          a7, a2, s5
                  nop
                  slt          a6, s2, a7
                  ori          t3, a3, 111
                  sra          a4, s9, s8
                  sra          t1, s4, s4
                  and          s11, s11, zero
                  ori          a6, a6, -1417
                  sra          a5, s10, t5
48:               bge          s6, s2, 63f
                  beq          a4, s2, 60f
                  add          sp, a1, s8
                  blt          s5, s10, 56f
                  ori          s9, gp, -770
                  bgeu         gp, t1, 68f
                  bltu         tp, a2, 65f
                  sra          s7, t5, ra
56:               nop
                  and          s2, sp, gp
                  blt          t1, s3, 77f
                  add          s8, ra, s11
60:               or           s9, tp, s4
                  xor          a6, s11, zero
                  bgeu         s9, gp, 65f
63:               blt          s10, gp, 79f
                  srl          a2, a2, a3
65:               slli         t6, t0, 19
                  and          ra, ra, a1
                  ori          gp, t0, -1030
68:               addi         a6, s8, 475
                  and          s0, s4, tp
                  srai         zero, sp, 18
                  sub          t4, a4, s1
                  auipc        zero, 50605
                  xori         s2, t6, -1471
                  bgeu         tp, s5, 93f
                  lui          s8, 586934
                  xor          t3, a1, a7
77:               srai         a0, zero, 18
                  andi         s2, t1, -1152
79:               slli         t2, tp, 2
                  bge          t3, a0, 85f
                  srai         s0, a4, 9
                  xori         s2, t2, 669
                  addi         s2, ra, 132
                  srli         tp, tp, 10
85:               xori         a6, s8, -1965
                  slli         a0, s2, 29
                  bne          a1, t5, 98f
                  srai         t4, t3, 1
                  add          gp, t1, t6
                  lui          a4, 127687
                  sll          a4, s8, t3
                  sltu         t1, t0, s0
93:               srli         s4, s11, 6
                  sub          t1, a5, a3
                  auipc        t3, 77636
                  nop
                  srai         s7, s0, 1
98:               slt          gp, s3, s0
                  and          a0, s3, t1
                  slt          s2, t4, s7
                  bge          a0, sp, 121f
                  bltu         s1, t3, 114f
                  andi         t6, tp, 457
                  slli         a5, t0, 21
                  beq          tp, tp, 118f
                  srli         s4, t6, 11
                  xor          s4, a2, t6
                  bne          s1, a7, 119f
                  sltu         s4, s1, a0
                  or           t5, t1, a6
                  nop
                  xori         s2, a0, -962
                  sub          s1, sp, s8
114:              nop
                  bltu         s11, s4, 122f
                  sltiu        a6, tp, 783
                  addi         s6, ra, 316
118:              bge          zero, a7, 133f
119:              sltu         a0, s7, s2
                  or           a6, s4, a0
121:              bgeu         s4, tp, 124f
122:              sub          s6, a1, ra
                  lui          zero, 292082
124:              srli         ra, t5, 12
                  slli         t4, s5, 18
                  sra          gp, s5, s6
                  bne          a6, a6, 131f
                  slti         a3, s2, -878
                  beq          s9, gp, 130f
130:              slli         sp, a1, 29
131:              srl          gp, gp, ra
                  and          a7, t2, t2
133:              xor          t1, s1, a1
                  lui          t3, 1009084
                  srli         a2, t4, 19
                  sll          t4, ra, gp
                  slt          a4, a7, a3
                  bgeu         a1, t4, 158f
                  andi         t4, s3, -674
                  srli         t2, s4, 10
                  add          s8, t1, s10
                  srli         t2, t6, 7
                  and          tp, s6, t6
                  lui          a1, 148003
                  bltu         t4, t3, 148f
                  srl          s6, a6, a5
                  sub          ra, s8, t3
148:              sub          a5, s9, a5
                  addi         a6, s6, -741
                  bge          a2, t6, 152f
                  sltiu        a2, s8, 1906
152:              xori         gp, t2, 325
                  ori          s1, zero, -1801
                  sub          s0, s3, t6
                  bne          t5, a5, 173f
                  sltu         s2, s6, a6
                  sub          s6, a0, ra
158:              add          gp, a3, a2
                  blt          s5, s7, 163f
                  blt          s8, t3, 163f
                  slt          t4, t2, t0
                  sll          t0, s2, s4
163:              slt          t0, s1, t4
                  sll          a6, t4, a6
                  or           t1, s0, zero
                  bne          tp, t4, 185f
                  xori         s9, s11, 486
                  bgeu         s8, t0, 184f
                  sltu         s6, s11, t6
                  sltu         tp, a7, s11
                  andi         s8, a6, -497
                  blt          zero, s3, 192f
173:              xor          a4, s11, s11
                  auipc        t6, 144229
                  beq          t6, tp, 180f
                  lui          t4, 928253
                  slt          s1, s9, t1
                  lui          s6, 1001194
                  nop
180:              bltu         zero, s9, 192f
                  addi         tp, a5, -835
                  bne          s3, sp, 201f
                  slti         a3, a7, -189
184:              sub          sp, t6, ra
185:              nop
                  nop
                  slli         s6, s10, 5
                  addi         a5, t6, -703
                  addi         t2, a7, -88
                  sltu         s7, tp, ra
                  slti         s4, a5, 1632
192:              sltu         t2, gp, s5
                  slli         t5, a5, 20
                  ori          s11, s10, 1754
                  slti         s7, gp, -264
                  bge          s4, s10, 203f
                  auipc        t4, 172116
                  slt          a6, t5, a1
                  bltu         t3, t4, 202f
                  srl          t3, t2, s8
201:              ori          s6, a6, 157
202:              sub          s4, tp, zero
203:              sub          s6, t6, gp
                  bne          a5, a2, 219f
                  addi         s4, s3, 1446
                  auipc        s11, 1027014
                  lui          s2, 219500
                  srl          t4, t5, s7
                  bne          s0, s8, 220f
                  sll          a6, sp, a0
                  srai         t2, t1, 14
                  bge          s8, s1, 216f
                  blt          s3, s9, 233f
                  sub          s7, zero, t3
                  sub          ra, s5, zero
216:              blt          a2, t4, 227f
                  sub          t5, a2, ra
                  sra          t4, t2, s4
219:              ori          a7, a3, -1614
220:              bne          a4, zero, 225f
                  srli         s9, s6, 5
                  sltiu        s6, gp, -858
                  andi         gp, s7, -1258
                  xori         a1, a4, 850
225:              bltu         tp, t6, 228f
                  bge          t1, t0, 239f
227:              blt          a2, a3, 228f
228:              andi         gp, t5, 874
                  sub          t5, a5, sp
                  lui          s6, 86320
                  xori         a1, s11, -608
                  sra          s8, zero, t1
233:              and          s0, s10, ra
                  sra          t0, a4, t0
                  bge          ra, t5, 239f
                  bltu         t6, s1, 239f
                  addi         s6, s9, 970
                  sra          ra, a1, t2
239:              slt          s7, a1, a5
                  xori         s2, a1, 1511
                  add          s1, a6, s3
                  andi         s8, t0, -800
                  xor          t5, s10, s7
                  add          s8, t4, zero
                  lw           t1, 4(s3)
                  slli         t5, s5, 17
                  addi         s3, s3, 12
                  auipc        t5, 398814
327:              addi x13, x6, 1
327:              jalr x13, x13, 0
sub_4:            sll          t0, s2, a7
                  srai         a2, s7, 16
                  beq          s5, a3, sub_4_stack_p
                  sll          t0, t0, ra
                  lui          s6, 743797
sub_4_stack_p:    addi         s3, s3, -12
                  sw           t1, 4(s3)
                  srai         a2, a5, 9
                  xor          a6, a2, t0
                  srl          t2, t6, s6
                  andi         zero, t1, 990
                  ori          s9, s5, 564
                  xori         a4, s4, 903
                  bgeu         zero, t4, sub_4_j9 #branch to jump instr
                  addi         gp, t5, 1526
                  srai         s0, sp, 15
sub_4_j9:         jal          t1, sub_6 #jump sub_4 -> sub_6
                  la           s9, sub_6
                  xori         a0, s9, 2027
                  addi         s9, s9, 672
                  auipc        a5, 635886
                  srl          a5, ra, s9
                  nop
                  slt          gp, s0, gp
                  lui          t6, 813932
sub_4_j10:        jalr         t1, s9, -672 #jump sub_4 -> sub_6
                  srai         s0, s1, 24
                  and          t3, t1, s10
                  xori         t1, a2, -811
                  sra          a5, a3, s11
                  beq          s0, a6, 11f
                  slti         ra, t6, 1331
                  blt          s10, s10, 10f
                  xor          s9, s6, a6
                  sll          sp, s6, s7
                  srli         sp, t3, 25
10:               bgeu         s11, s3, 15f
11:               lui          tp, 3907
                  xori         a2, t6, 339
                  slli         gp, a0, 0
                  add          a6, a7, t1
15:               slti         a4, a4, -1335
                  srai         gp, t4, 9
                  sltiu        tp, zero, -1194
                  slti         gp, t3, -152
                  sra          s0, s1, s5
                  slt          s8, t1, zero
                  andi         s4, s5, -148
                  slti         s8, a7, 556
                  sltiu        t2, s7, -61
                  slli         zero, t4, 25
                  srli         t1, s11, 6
                  and          s11, t0, a7
                  sltu         a4, s5, a7
                  or           s2, s5, a6
                  blt          t3, a6, 31f
                  sra          zero, s0, t0
31:               srai         t6, sp, 24
                  xori         t4, t5, -1022
                  bgeu         t4, t6, 37f
                  or           zero, t2, a6
                  srl          s0, tp, s1
                  addi         t5, a4, -683
37:               sll          a6, s4, a2
                  srai         t5, s8, 31
                  lui          t6, 209524
                  bne          sp, s6, 43f
                  xori         s2, s0, -424
                  bne          a0, s6, 57f
43:               beq          s2, a0, 56f
                  blt          a4, s2, 48f
                  beq          a1, s2, 52f
                  addi         t4, a1, -1643
                  nop
48:               nop
                  addi         a7, a1, 1884
                  lui          a3, 826885
                  andi         t1, a2, 1412
52:               ori          s4, s7, -666
                  sub          a5, sp, a2
                  slli         sp, a2, 28
                  srai         s1, zero, 14
56:               andi         t0, t6, -687
57:               sltu         a3, a0, tp
                  and          s8, s8, a1
                  sub          s11, a0, zero
                  bltu         t2, t4, 61f
61:               bltu         a2, a4, 66f
                  slli         s8, s0, 19
                  srli         t0, a3, 6
                  blt          sp, t4, 73f
                  srl          a0, t4, a6
66:               beq          s3, ra, 78f
                  sub          t2, t4, s3
                  xori         a6, t4, 267
                  or           s9, a0, a6
                  lui          t6, 179449
                  sltu         a7, a7, a4
                  bne          s8, s9, 75f
73:               add          a4, s3, t5
                  add          s1, t0, a4
75:               sub          t6, s5, t6
                  srl          t0, s6, sp
                  bgeu         s9, a1, 80f
78:               bltu         t4, t5, 87f
                  sra          s8, s11, t2
80:               nop
                  andi         t2, t0, 1333
                  slli         s6, s7, 10
                  bgeu         s2, sp, 91f
                  lui          zero, 99592
                  nop
                  slli         t3, zero, 4
87:               bge          ra, a4, 88f
88:               or           a6, t0, sp
                  xor          s0, s9, s1
                  sltiu        t4, s1, 246
91:               add          s0, a6, ra
                  andi         a1, t3, 1392
                  xori         s9, a1, 33
                  lw           t1, 4(s3)
                  addi         s3, s3, 12
                  or           a7, s7, t1
                  or           s2, gp, t1
                  sltu         t5, a1, a4
125:              addi x27, x6, 1
125:              jalr x27, x27, 0
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
.word 0x2b25f4e0, 0x4da515dc, 0x2aceb99a, 0x52cb1406, 0xa8d3da4a, 0xc97471c5, 0x06481d9f, 0x91165ac4
.word 0x08afc528, 0x67ee1c6e, 0x7b5c1f49, 0x34348d92, 0xf63f93eb, 0x2a133421, 0xe2a8872d, 0x56691a50
.word 0xdfe17b25, 0x454ac868, 0xaaedea50, 0x4fe9c92e, 0xc8d35851, 0x9a39e773, 0xfc3be7e7, 0xd4e7788b
.word 0xf80aa09d, 0x28266d03, 0x93969059, 0xca1416d3, 0xd91ff2b1, 0xe45ad697, 0xcc5b72da, 0x3d9edc01
.word 0xaab29d3c, 0xc7976168, 0xe8900d95, 0xf4a8bf62, 0xb9df6c8f, 0xe8e4bea3, 0x8a10fe22, 0x3686fb46
.word 0xa41d3705, 0x435712ce, 0x82e25284, 0xa2c6b78f, 0x6499ee4b, 0x0c06f9a6, 0x5b2b73d5, 0x51c07722
.word 0xb3c4d7fd, 0x05f37fad, 0xd259be11, 0x5973b037, 0x3b537024, 0x2c6fb9e9, 0x1e8a5213, 0x578268fd
.word 0x07fb013c, 0x9fa4e5de, 0x88c759bf, 0xabb074c9, 0xf6515439, 0x79c4b17c, 0x653b1b6d, 0x16607d52
.word 0xa5bc4eed, 0x325d22d8, 0xe36f4f66, 0xeb6dd1f2, 0x0f4691d1, 0x4030d332, 0x6fa0986c, 0xafc734b0
.word 0x02a62595, 0xc49c3190, 0x2a5b4a85, 0xe03f45b2, 0xda8596f1, 0xad6795f9, 0x37e72028, 0x487b16e3
.word 0x6bf1d993, 0x90d80658, 0x72d8eab9, 0x191990c9, 0x70d40a69, 0xc6da8f96, 0x6fbba159, 0xe1e917a2
.word 0x73536584, 0x7c4192a0, 0xc5331111, 0x048d0157, 0x33e9f981, 0xba7b5aed, 0x4d8e14cc, 0xa5ba3e66
.word 0x65b81eec, 0x40123135, 0x6b4b9b2d, 0x9ee36a72, 0xab32803b, 0xda82e0ee, 0xc91fc6e8, 0x45f2e665
.word 0x8035640d, 0x616304c8, 0x6e340b8c, 0xe3fd88b0, 0xef992fe6, 0xad9d1d1e, 0xccab88ba, 0x7e283b61
.word 0xefb1fccf, 0x00349572, 0x1597708c, 0xb3193784, 0xa7cfac54, 0x4660174e, 0x4f5b901e, 0xc4b0b315
.word 0xa58e7bfd, 0x8d7dfa2a, 0xd3f428cd, 0xb9cc7e77, 0x9f26862b, 0x01e32696, 0xb809f6e3, 0x22108e50
.word 0x333ef1f3, 0xf81da96f, 0x8603570b, 0x6b4c3fe1, 0x5d5daae6, 0xa469a6d5, 0x76faf045, 0x49992635
.word 0x0cfdd150, 0x1bfd81da, 0x9ca93f8e, 0x4e9bf533, 0xa8c7a40a, 0x57bbc73b, 0x8e3697bb, 0x76dab0d0
.word 0x8e798393, 0xacc3e218, 0x6df3395d, 0x1e793994, 0x99724d22, 0x5e8035b6, 0x0f10b343, 0x525aa346
.word 0xd9fbb876, 0x574275aa, 0x39bd1052, 0xed253ce9, 0x08242afb, 0x96b3d582, 0xd1db1d1e, 0x0ea0c2bf
.word 0x979bef24, 0xfb11e35f, 0x7db55b2d, 0xf6b58650, 0x911bbb49, 0xcbc326e3, 0x07b18154, 0xb5c5adec
.word 0xe73c8d31, 0x2d2a1c24, 0x8f7905ab, 0xe3ea8675, 0x591b6507, 0x35ab4aed, 0x2c182560, 0x58a35028
.word 0x0ea88a9c, 0x571a1df1, 0x169cd122, 0x90c43d0d, 0x52034ffa, 0x3195fcb7, 0x11472c79, 0x429c3fc7
.word 0x6b20406c, 0x4e6a303b, 0x9bc83e84, 0x7e41fe42, 0xcb12ea0d, 0xbaeeab21, 0x310fc34b, 0xba777442
.word 0xba66e9d8, 0x33dd830b, 0xd9168822, 0x4703493b, 0x95df2779, 0x037c081c, 0x85cd076e, 0x652af257
.word 0xf0129b31, 0xe60e9f92, 0x14ecce14, 0xda0dc126, 0xcb554403, 0x10ecb61e, 0x8c3cd2c9, 0xa12773f5
.word 0x0f519e63, 0xf9af4e91, 0xd08e4f15, 0x4a83b5d9, 0xfb98ad61, 0xaae32c0e, 0x31da914b, 0x602476b1
.word 0xdb5e078e, 0x5a520920, 0xbfc7e65b, 0xf8ca3dbf, 0xd8dc1dfa, 0xc92e033b, 0xdb46ae31, 0x7aab6fc8
.word 0x50efe938, 0x52de38f6, 0x7d3fd501, 0xfc0ebeb9, 0xceca4aab, 0x3f5c1c3a, 0xae5e24cd, 0xd91fb993
.word 0x427b9f36, 0xb5b7baef, 0x79feab9a, 0x0ba6f7ca, 0xe6f1eaed, 0x496fb74c, 0x8b4b6c1c, 0x4ebea3d4
.word 0x352f01be, 0xf36e3370, 0xfd32d137, 0x113765e7, 0x783f81fc, 0x00febffe, 0xd195319b, 0x4fde6548
.word 0x88d1a1ae, 0x996cc17e, 0x2346cbc5, 0xd1b4f617, 0x1f1569f2, 0xcc6de288, 0x28a08024, 0xfe960868
.word 0x7afb6561, 0x9d4eb57a, 0xfa92440d, 0x30af2b4c, 0xbfb1c8fe, 0xc8f0a819, 0xbdc9d7bc, 0x9fa6a1d7
.word 0xcf3f0770, 0xcae37c9d, 0x1c15f89e, 0xf23bb40e, 0x5b6e3205, 0x9e6c14f1, 0x1454a9f2, 0x0f21edb9
.word 0x1046896f, 0x976a466d, 0x7e6ed343, 0x02371dc1, 0xe7ff8060, 0xac5926eb, 0xe04ae2f3, 0x1f5e9011
.word 0x1ead9483, 0x117b5392, 0x676d5825, 0x5e6f2197, 0xabf66968, 0x0418a902, 0x3c3c3035, 0xcade39c7
.word 0x31bfc0ef, 0x7faa7e7c, 0x8c78ef66, 0x3432034f, 0xb86a4348, 0x534cb7c7, 0xd0184173, 0x7208d375
.word 0x861abb9a, 0xd250befe, 0x739a2ed7, 0xcc8b7edf, 0x6342360c, 0x3e63ac5a, 0xb51d344f, 0xbee55e8f
.word 0x774d9350, 0xe80d3e96, 0x2a485984, 0x705fb9c2, 0x437cdfa1, 0xf73de9a5, 0x634b6ef0, 0xf9c4e223
.word 0x98bc88ac, 0x29a88239, 0xe615e4f0, 0xb65a3eeb, 0x965d83d0, 0x3329861d, 0x023b0489, 0x1a031bbe
.word 0x408f3ef1, 0xada33bb9, 0x056e2f3e, 0x720fbd29, 0x4b394679, 0x95c3e68b, 0x9d5c11a3, 0x602f1f12
.word 0x505e0457, 0x93952fc5, 0x0f712a56, 0x91a9b882, 0x437cdfde, 0x43f8e716, 0x4e3ec2fa, 0xc96c4b32
.word 0x3fdea9a4, 0xae88d555, 0xd50ca1e8, 0x63a7f02a, 0xd205d2b8, 0xb4711944, 0xf79243f2, 0xb7367570
.word 0x87ddbe34, 0x49110937, 0xb1cba697, 0xde7a885d, 0x7be41156, 0x33d1d21e, 0x8dd6000e, 0x352a5d1e
.word 0x7f0463e0, 0x7711d6b6, 0x95f4334f, 0xb667832e, 0x6ae51771, 0xcaa910ef, 0xfe0516ce, 0xb2d303ff
.word 0x33433dbe, 0x604a310b, 0xfaa0f06b, 0x1cc9bd83, 0xc1abbcb2, 0xb17db12b, 0xaa63349c, 0x02d06de8
.word 0xe6d043a5, 0x8a4c3508, 0x431d40f4, 0x3957fd4a, 0x9ec4d2af, 0xdaa24bc9, 0xe9fae9b0, 0xae850185
.word 0x11aa1d2f, 0x1df89926, 0x87db2bc2, 0xbb1ae89f, 0xba0d418b, 0x0ccfd9e9, 0xe1c53880, 0x4231e72e
.word 0xb30a7232, 0xcfb63fab, 0x63acd5fd, 0xb9b02d0d, 0x956cffc3, 0x948afdf7, 0x8edb0b11, 0x9eb203ab
.word 0xe1a0c422, 0xcdf55eae, 0xe6d47994, 0xc4f65c85, 0x63b66555, 0x50196d5f, 0x97b4857f, 0x63059fcb
.word 0x8d42f9b5, 0xc83a3fba, 0xd86e90b7, 0xf01cca2c, 0xb0d3c7cd, 0x809bffee, 0xa13b29f9, 0xb3565930
.word 0x00f5b9f6, 0x02627972, 0xab93ad5d, 0xebfa56a9, 0xfa3ead82, 0xd795ffe2, 0x79d13212, 0xe2e611d7
.word 0x78be906c, 0xbe04422a, 0x7ceab908, 0xb98f886c, 0xc7a765ce, 0x7b97698d, 0x31c05352, 0xf7b9d650
.word 0xbcde2e59, 0xfa36d6fe, 0x01430e8f, 0x541a9b1d, 0x012e0a55, 0x2459222b, 0xd6e1d8cf, 0xa71807f4
.word 0x360df4d9, 0x827fc4ef, 0x439e48d2, 0x40829ca2, 0x5e91e7c7, 0xc6cb1bc3, 0xe6652702, 0x4c97cd5a
.word 0x7d9970b4, 0x1b9d7839, 0x0cdb433d, 0x7675a9e1, 0x940f4af9, 0x43c2a962, 0xe6fad08b, 0x87175b4a
.word 0x28b8c5a9, 0x81e3b263, 0x6b8512b7, 0xbda5e223, 0x023dd1d2, 0x5fce133c, 0x2390660d, 0xeaa4194b
.word 0x4c4d563f, 0x0df879ff, 0x4f93cfb7, 0x96e8edcc, 0x1e657edb, 0xc288ef48, 0xf62c58e7, 0x8811b66c
.word 0x2e7b3f51, 0x7b184a63, 0x4d82ad87, 0x4be298a5, 0x142f5903, 0xbdf71fbf, 0x74900368, 0xe8920bb2
.word 0x660fca65, 0x009507a4, 0x348b8c0e, 0xad2f9b03, 0xaedffe1b, 0x56fb9b13, 0x44ff65c6, 0x3af834a9
.word 0x263c97aa, 0xbd71eb59, 0x0107572d, 0xd753d032, 0xb6077d3e, 0xf6e534ff, 0x1b82e36b, 0x4620ef5d
.word 0xa84b36da, 0x124421db, 0x16e8d72d, 0xcd1e1611, 0x67d439a3, 0x1eee74e6, 0x6cfe5687, 0xa6a8414b
.word 0x1e522ea4, 0xabc3543d, 0x1d0521d9, 0x1d1f9744
.section .region_1,"aw",@progbits;
region_1:
.word 0xa9158a6e, 0xc6a43712, 0x36985077, 0x387ac03f, 0xc2bd33f4, 0xdf409d0f, 0xf9dc770b, 0xc82284a3
.word 0xcc5d0e04, 0x7f881512, 0x12c3d33e, 0xee7acb2b, 0xdebd5a15, 0xce8a1e57, 0x9f80298e, 0xad81a77c
.word 0x2bd46353, 0xcca4b5be, 0x7a302186, 0x5eeb5b04, 0xf7aaf60e, 0xdf9e2357, 0x60e4c9ad, 0x3b65ed66
.word 0xfd35697a, 0x399ae66c, 0x8b24da7b, 0x9b2a3819, 0xe88ec4f3, 0x13172ab7, 0x4387c48b, 0x5c245f90
.word 0x423e6e78, 0x27cfe7b1, 0xadd553de, 0xdaecaa34, 0x649d872e, 0x607cc2c3, 0x6df0fc8a, 0x44912a4b
.word 0x6e84cd61, 0x3f22009b, 0xde8b019b, 0xee648ee8, 0xc4979b76, 0xed5564a6, 0xeaa5ed76, 0x0f248b16
.word 0xef1565c2, 0xa4671c07, 0xb819b692, 0x9469fd7b, 0xd0e9e188, 0x93ba6cb9, 0xbbfceac6, 0x8578e3e5
.word 0x8233ce2c, 0x1b623c08, 0xd2678829, 0xce372ea3, 0x69b63caf, 0xa2dc7aa1, 0x8ae3840e, 0xd323e87b
.word 0xebc5a3a8, 0x2c8cc789, 0xabd6b7c3, 0x38b64c59, 0xf3cb6886, 0xbe1a5f42, 0x7c7d38b2, 0xc4c066ba
.word 0xb090127e, 0x4697f34a, 0x7df81bde, 0x36d7d4c4, 0x17201068, 0x0c8d0f14, 0x2ef5f2e7, 0xf9b5cc77
.word 0x8c7d8d54, 0x36474c74, 0x78ee6cb5, 0x595c0911, 0x77292937, 0x1ab09ffe, 0x8b52f026, 0xa6646518
.word 0xb70962da, 0x6a3ed4b2, 0x74b94af9, 0x726c433b, 0x63e0eb52, 0x92de8d44, 0x6b130a91, 0xcd173806
.word 0x276d79f1, 0x00b8d392, 0xeeba12e3, 0x6fa013a3, 0xf8627cee, 0xd9cb0c7e, 0x7b8dbaf9, 0x54e10479
.word 0xcaf8c43b, 0xcda0a892, 0x21e10e59, 0x1360084c, 0x3ba35ad3, 0xefb67148, 0x29ab60f7, 0x79ecd799
.word 0x289272db, 0x55bed914, 0x3c2a7367, 0xc361c1a7, 0xca655183, 0x2c1690eb, 0xa3c192f0, 0x48d0f570
.word 0xe1298fb6, 0xe43bd49a, 0x19f6fc6a, 0x46f4da46, 0xb0316494, 0xd72ac6e3, 0x4474d2a7, 0x2448f3ce
.word 0x51b6b4d3, 0xa419fcfa, 0xee9d7701, 0x04a7cc09, 0x498cc6ac, 0x40b48424, 0x99b57477, 0x02b251e3
.word 0x660060af, 0xa00c473c, 0xb0788381, 0x1f3d07df, 0x15880025, 0x20447004, 0x032298ca, 0xf1351ca5
.word 0xbb6c155c, 0x53b071f1, 0x06065bc4, 0x0a12790a, 0xa4a0f374, 0x646bd073, 0xdd34eeeb, 0xd9ce7dca
.word 0x7bc4f8ae, 0x9982f09b, 0x724a50e2, 0xb64e81c5, 0xf5bc65bb, 0xc4754d9b, 0x74e28acf, 0x3645bb39
.word 0x9b3fea24, 0xeb6504bc, 0xc21ac37e, 0x3191bad9, 0xda22c650, 0x262eac26, 0xdb534220, 0x6a0402d8
.word 0x8ffc7941, 0x2a5eb87d, 0x988448a7, 0x1e10dd2e, 0x9d810fb7, 0x87783aa1, 0xeb8e2ba0, 0x683dbf77
.word 0x562b8724, 0x0021da43, 0x4d368975, 0xd1184444, 0xd2cfba7b, 0xd67c3ba1, 0x11df8835, 0xd2528bf1
.word 0x253457e8, 0x5e64f5fa, 0x18d9b8ab, 0xcd54175e, 0xcb100118, 0xc9641cb4, 0x349563cb, 0xd64036ce
.word 0x3d9fbc36, 0x053c356c, 0x04121da6, 0x236c8079, 0x126cc046, 0x40c76062, 0x18b299d5, 0xc89269e1
.word 0x08320319, 0x8c910d18, 0x8d615414, 0x8d8c4ef1, 0xe90bb8b1, 0xcefb8ea4, 0x94a6ae06, 0xfa46e0cc
.word 0xad2e2e1d, 0x0e0e9fc1, 0x85e83c4f, 0x8f3ec1ee, 0x6e4b61f3, 0x4b9b734e, 0x9d48d807, 0x39475d46
.word 0x55b0a2ae, 0x373fede5, 0x444806c9, 0x7ae29223, 0x967de899, 0xd8e96bf2, 0xfe776625, 0xe9c98c48
.word 0x4ca6b7bc, 0xc0f4aa56, 0xc2435a74, 0x2a6c6814, 0xb8252b07, 0x5c46be86, 0x1b92809c, 0xaebd1d4b
.word 0x34eb6d02, 0x50cd2633, 0x1e67deb4, 0x2d369eaa, 0x9fc5d316, 0x4cdc664b, 0x85a07d4d, 0x14c984ca
.word 0xf5f5e193, 0xad4012ae, 0x3b1bdbc3, 0x334935ff, 0x070e365e, 0xf9c25ad2, 0xbc95f79b, 0x11b7f070
.word 0x9da53905, 0xd1f290ff, 0x6794882a, 0xb8145c3e, 0xe704e4e1, 0xd1e1168c, 0x3c7cc29c, 0x80727c51
.word 0x6c5e0be2, 0x7bd284ed, 0x25a685e9, 0x318ff5e1, 0xf2a1eca2, 0x2b8df2da, 0x1e962527, 0xf1112e61
.word 0x81ea4dfb, 0x79a564fd, 0xc70b8ae5, 0x10d6e923, 0x3fd7f660, 0x5258c3fa, 0xd164ee90, 0xf6994b62
.word 0x2cc85dbb, 0x0148423e, 0x5cdb3d3a, 0xd37dd357, 0x12b9a1a8, 0x064c4b19, 0x7f6bf5ee, 0x1430e683
.word 0x0d8985b5, 0x75099cfe, 0x699ed232, 0x439b323b, 0x5d9b529e, 0x4af6830c, 0x1ba74b25, 0xe60794df
.word 0x4af39f50, 0xd02ea3dd, 0x2e40bff3, 0xd6057d88, 0x0d05b997, 0x3dbe46d7, 0xcfafc819, 0x2a4db90a
.word 0xd8d71de9, 0x74e3579f, 0xaa6ef2e8, 0x97f75eb7, 0x64059eba, 0x6cf2aff3, 0x3207cb91, 0x582eadc4
.word 0x347acbd9, 0x38867bd7, 0x8d029395, 0x3f8de395, 0xf0e8a805, 0x01269084, 0x5dd6ddd4, 0xba85e1ac
.word 0x922a3e22, 0x0f5c949b, 0x6ee80d76, 0x43b9f904, 0x01647d50, 0xc29723e4, 0x892de77d, 0x68001a17
.word 0x504e2994, 0x98faac04, 0x5ea500be, 0x7e5eeefb, 0xf0b8d24b, 0x9b219733, 0x4904bd9b, 0xcfe031bd
.word 0xf423738d, 0xb1e3750f, 0x771eb48f, 0x3845e9c4, 0x72c218e4, 0xcd8090cc, 0xf2f4e283, 0xc4fec3b5
.word 0xf64ec9d1, 0x8b7a8485, 0x2143411d, 0x4ec2fb11, 0xb9e72836, 0x00196766, 0x9419a7f9, 0x77d2eedf
.word 0x94648c91, 0xcacdf38c, 0x6e0bca14, 0xc486ed2f, 0xa00e5f39, 0x78a63685, 0x664b9154, 0x06d6b9ed
.word 0xed18e8e3, 0x85bba54a, 0xfbdc36f1, 0xc8652270, 0x6edb6468, 0xb4b093f7, 0x736b8130, 0x6e3b1b6f
.word 0xc24521de, 0xadaf1b56, 0x7b4e39bc, 0x3f93c96a, 0xa603c0ed, 0xb15a8028, 0xa70d9758, 0x0f57771c
.word 0x99d1aba3, 0xfbaabf38, 0xf26008a1, 0x8811b332, 0xeeaa2f47, 0x61eaf767, 0x6c9e7da6, 0x004f4e0b
.word 0xf429efba, 0xf6158123, 0x3a339fb2, 0x3eb0405e, 0x3a73b78b, 0x04c0e158, 0x5b8412f6, 0x29995b4a
.word 0xb33fb98e, 0x23828ca2, 0xd11cf451, 0x174911f9, 0x2c102437, 0x396cded2, 0x2427f081, 0xd7df6df6
.word 0x7cb9936f, 0x4e7879c5, 0xc8bcbde2, 0x7d903d40, 0xed29bedc, 0xb8f4b8e4, 0xea8e9acb, 0xcbfdb954
.word 0x254a1f6e, 0x445130e2, 0xfb73c267, 0xffdc3f2e, 0xf6d16f85, 0xc67a1fc7, 0x7517375a, 0xda5cabd8
.word 0xed8df847, 0x6fb1e471, 0xa0ff5e4d, 0xbce42730, 0x3d32e8b5, 0x89425321, 0x6e1abc9b, 0x2d49acde
.word 0x48b2f6a1, 0xacb51c54, 0x9958cb42, 0xeb7f05d6, 0x588d06b4, 0x1dd9ac03, 0xef2f13ee, 0x9d428777
.word 0x2880b005, 0xf3bab0a9, 0x3a97e55a, 0xbd1bc86f, 0xaf1caadd, 0x543e12e8, 0x6a5baf3c, 0x88f02c71
.word 0xb728d998, 0xa0a2155f, 0x0508ce65, 0x3e859515, 0x1ddb0ba8, 0x3dca0c9b, 0x2a87e9d3, 0x60b93cbb
.word 0x443da2d6, 0xde6e84f8, 0x970567cb, 0x2b512df7, 0x614366a4, 0xdf5106e5, 0x0917234b, 0x7477b81c
.word 0x4963884b, 0x07984976, 0xf80b86d5, 0x7e85c6c3, 0x19f1f61b, 0xd98177b9, 0x24771c02, 0xc6daf0e7
.word 0x06c2ed79, 0x22b74db2, 0x602e2a4e, 0x317bebc0, 0xcdf07056, 0x360f671a, 0x8fdf1ccf, 0x2d94a115
.word 0xb1044dbf, 0xc8d82506, 0x14c7bbf8, 0xcb798909, 0x499a5b7b, 0x376a54ba, 0x5a93b4b5, 0xa3bb7603
.word 0x65f70113, 0x89141410, 0xba8b169a, 0x47b18a1c, 0x81649bc2, 0x6690decd, 0x8fc42454, 0x71b9cd36
.word 0x9f0fcb9c, 0xa30df691, 0x6910e881, 0xfbabdc6f, 0x681b3d33, 0xbac933e4, 0x10ac162e, 0xde2d6691
.word 0x460c3137, 0x7f4f244a, 0x332c2a11, 0x4d64d2b0, 0xbfb251b1, 0xaaf9a353, 0xe9f37bbc, 0xb4a71f6d
.word 0x02b9531f, 0xbbd72a2c, 0x52bab325, 0x77fbc498
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x21, x19, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x16, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x16, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x16, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x16, x17, ecall_handler
                  li x17, 0x1
                  beq x16, x17, instr_fault_handler
                  li x17, 0x5
                  beq x16, x17, load_fault_handler
                  li x17, 0x7
                  beq x16, x17, store_fault_handler
                  li x17, 0xc
                  beq x16, x17, pt_fault_handler
                  li x17, 0xd
                  beq x16, x17, pt_fault_handler
                  li x17, 0xf
                  beq x16, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x19, x21, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x21, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x21, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x19, x21, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x19, x21, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x19, x21, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
