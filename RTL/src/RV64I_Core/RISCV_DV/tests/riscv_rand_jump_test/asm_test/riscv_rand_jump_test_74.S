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
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x20, kernel_stack_end

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
                  li x0, 0xe
                  li x1, 0x686128ea
                  li x2, 0x80000000
                  li x3, 0xf1f60ac6
                  li x4, 0xa703b3cb
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x1bb19366
                  li x8, 0xe
                  li x9, 0xfb5b80a3
                  li x10, 0xff790ffe
                  li x11, 0xb
                  li x12, 0xd
                  li x13, 0x0
                  li x14, 0x617eea1b
                  li x15, 0xb
                  li x16, 0x159e0c1d
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x80000000
                  li x21, 0xd
                  li x22, 0x3
                  li x23, 0x4b96ceb8
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0xfffa6920
                  li x27, 0xb
                  li x28, 0xfb563acc
                  li x30, 0xfd119874
                  li x31, 0x70331abb
                  la x29, user_stack_end
main:             la           a4, region_0+1297 #start riscv_load_store_rand_instr_stream_0
                  and          s9, s9, ra
                  lhu          s9, 9(a4)
                  lbu          s7, 2(a4)
                  lui          t3, 398950
                  sb           gp, -15(a4)
                  add          s1, sp, s7
                  lb           t5, -14(a4)
                  auipc        s7, 863623
                  sb           t4, 0(a4)
                  and          gp, s4, a5
                  lh           a3, -9(a4)
                  srl          s8, t2, t1
                  sltu         t3, t3, a5
                  sb           t4, 4(a4)
                  sb           t2, -16(a4)
                  lb           zero, -10(a4)
                  lbu          t0, 6(a4)
                  srli         s7, zero, 22
                  sh           s1, 3(a4)
                  sra          t2, t6, t3
                  lh           t2, -15(a4)
                  lbu          sp, -15(a4)
                  xori         a5, tp, 1123
                  lb           t6, 16(a4)
                  lbu          t1, 2(a4)
                  slti         s8, s5, 1752
                  or           a5, s8, zero
                  lb           s6, 12(a4)
                  sltiu        a7, sp, 1852
                  sb           ra, -4(a4)
                  lbu          s3, 1(a4)
                  lb           tp, -7(a4)
                  lbu          gp, 5(a4)
                  nop
                  sb           ra, 4(a4)
                  lh           a5, -15(a4)
                  and          t5, a2, sp
                  srli         s6, s8, 10
                  add          tp, zero, a4
                  lh           a5, -13(a4)
                  addi         a2, s3, -1901
                  sub          sp, s8, s6
                  sb           sp, -16(a4)
                  lbu          s7, 1(a4)
                  lb           t0, 6(a4)
                  lbu          a5, -10(a4)
                  lb           a0, 16(a4)
                  sb           t3, -16(a4) #end riscv_load_store_rand_instr_stream_0
                  sll          a0, t6, s2
                  andi         s0, a6, -1293
                  or           a4, a0, t0
                  sltu         s0, a7, t6
                  sll          s5, s1, a1
                  bltu         s10, a0, 8f
                  or           a6, sp, ra
                  blt          a5, t5, 27f
8:                andi         a2, a3, 114
                  slli         a2, s9, 28
                  auipc        a5, 126859
                  and          t2, s8, s2
                  blt          a1, s1, 26f
                  slt          s11, a4, t0
                  bltu         s10, a5, 20f
                  srli         s11, ra, 25
                  sra          s3, a5, s6
                  blt          zero, a4, 19f
                  sub          gp, a2, tp
19:               addi         s2, t4, -1569
20:               sltu         s1, t3, a0
                  sltu         t2, zero, s3
                  blt          t2, s8, 26f
                  andi         a6, gp, 1275
                  add          s10, s8, s5
                  nop
                  la           tp, sub_1
                  slt          t6, sp, tp
                  add          s5, sp, s10
                  slli         a1, t2, 3
                  addi         t3, t0, 478
                  srl          s8, a2, a1
                  sll          s8, a1, s5
                  addi         tp, tp, 943
                  or           s11, s10, t6
                  nop
main_j1:          jalr         s7, tp, -942 #jump main -> sub_1
26:               ori          s9, t0, -1945
27:               bgeu         a7, t5, 40f
                  srai         a2, s4, 9
                  srl          t3, s2, zero
                  slt          a4, s10, a4
                  xor          sp, t4, s3
                  slt          a3, a5, tp
                  beq          a3, t5, 48f
                  beq          t0, a5, 54f
                  auipc        s1, 474651
                  slti         s0, a5, -1908
                  srl          t1, s2, a4
                  addi         a6, a7, -556
                  srl          a6, s0, a2
40:               or           a0, s1, s10
                  srl          a7, s0, sp
                  sra          t0, s4, t5
                  srli         a6, sp, 12
                  sub          s8, t5, a1
                  bge          t0, t1, 59f
                  bltu         t5, s11, 48f
                  beq          t2, s10, 64f
48:               sub          s10, a1, tp
                  xori         gp, ra, -1905
                  xori         a7, s1, 1273
                  xori         a6, s2, -1586
                  srai         s7, s11, 7
                  sra          a4, a4, s5
54:               ori          s1, zero, 1792
                  bge          s10, t0, 63f
                  slt          t6, s8, s4
                  xor          s8, s1, s5
                  sub          sp, s8, s3
59:               slli         a2, t4, 23
                  sub          a5, a3, t0
                  blt          s11, t1, 64f
                  or           zero, s9, t3
63:               sll          a6, a5, s6
64:               nop
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xor          a4, s6, t3
                  addi         t4, t4, -8
                  slti         a5, s8, 1741
                  sra          s10, t5, s1
                  sw           s7, 4(t4)
                  addi         t2, a3, 899
                  srli         s2, zero, 31
                  nop
                  la           a5, sub_2
                  addi         a5, a5, 279
                  srli         a1, s3, 1
                  sra          a3, a3, a6
                  addi         a0, t5, 802
                  auipc        s3, 838081
                  srai         s7, t3, 16
sub_1_j2:         jalr         s7, a5, -279 #jump sub_1 -> sub_2
                  srl          s7, t1, a2
                  lui          s7, 104580
                  add          s6, s2, sp
                  bgeu         t2, a7, sub_1_j3 #branch to jump instr
                  sra          s6, tp, s6
                  or           s5, a1, a0
                  xori         zero, t4, 1357
                  add          t2, zero, a7
                  xori         a6, s9, -743
sub_1_j3:         jal          s7, sub_3 #jump sub_1 -> sub_3
                  xori         a7, t6, 1912
                  add          t6, s0, s10
                  bgeu         t0, a7, 10f
                  or           s6, t3, t0
                  blt          sp, s1, 18f
                  bgeu         a5, s3, 9f
                  sll          zero, gp, s3
                  addi         t1, s1, 1196
                  srai         s5, gp, 25
9:                sra          s3, s1, sp
10:               srli         sp, gp, 30
                  slli         a4, s3, 8
                  sra          s2, t5, t4
                  nop
                  and          t3, s11, a6
                  or           t2, s9, s0
                  blt          s6, s2, 21f
                  sltiu        gp, s3, -1823
18:               srli         t6, s2, 16
                  sltiu        a5, a0, -1859
                  auipc        a3, 304202
21:               sra          gp, t5, t5
                  bge          s1, s3, 24f
                  sltu         s8, s1, zero
24:               add          a0, a3, ra
                  sll          a1, s7, t4
                  lw           s7, 4(t4)
                  or           s1, zero, s6
                  addi         t4, t4, 8
                  slti         t1, ra, -1610
                  sll          s5, a7, a3
                  sltu         a5, zero, a3
                  sra          a1, s2, s9
                  slti         s5, s11, -2008
                  andi         t2, s3, -259
61:               addi x27, x23, 0
61:               jalr x27, x27, 0
sub_9:            addi         t4, t4, -12
                  or           s6, s4, ra
                  xori         t2, s4, -595
                  sltiu        s6, t5, 1256
                  sw           s7, 4(t4)
                  srai         a1, a3, 23
                  beq          s1, a7, 20f
                  sub          s3, tp, a7
                  sltu         t6, a0, s3
                  or           a3, tp, a7
                  blt          t0, t4, 8f
                  xor          t5, s9, s5
                  add          s7, sp, s6
                  or           zero, a5, s1
8:                srl          gp, t5, s7
                  bne          a4, s2, 24f
                  bge          s7, a7, 23f
                  or           zero, sp, t0
                  bge          t2, t5, 21f
                  srli         a3, t2, 19
                  blt          s4, zero, 17f
                  srai         s8, s0, 10
                  slt          t2, zero, a7
17:               sll          s7, t2, a1
                  auipc        s1, 899806
                  slt          t6, a0, ra
20:               lui          s7, 227565
21:               and          t6, a2, a2
                  slli         s3, t6, 14
23:               sub          a1, a0, a6
24:               slti         a4, s9, 287
                  slt          s9, s1, s11
                  bgeu         a6, zero, 29f
                  nop
                  sltiu        s10, s5, -1918
29:               bgeu         s7, a4, 43f
                  slli         t0, s11, 26
                  sra          s6, s9, a0
                  add          s5, s1, s1
                  srli         s2, t2, 30
                  blt          a2, t1, 44f
                  ori          s11, s0, -1833
                  or           t0, tp, s7
                  slti         tp, zero, 47
                  bgeu         s11, s3, 45f
                  slli         s3, a5, 31
                  andi         s2, a0, 16
                  srl          tp, a4, a2
                  nop
43:               blt          t3, a2, 53f
44:               bltu         t5, gp, 64f
45:               andi         zero, s9, 432
                  nop
                  ori          s11, t6, 667
                  sra          s3, s8, t5
                  blt          t2, s4, 57f
                  slli         a2, ra, 11
                  bltu         ra, a3, 69f
                  lui          a7, 561812
53:               sltiu        s6, s2, -1831
                  beq          s3, s9, 64f
                  bne          s3, t2, 69f
                  srli         t6, s1, 30
57:               andi         s6, t2, -1797
                  bge          a3, t2, 60f
                  srai         s8, gp, 19
60:               andi         sp, a1, 702
                  sub          a5, t0, s10
                  auipc        gp, 1029519
                  ori          t6, a3, -893
64:               add          s9, a3, t6
                  andi         a0, s4, -469
                  slt          tp, t1, s3
                  bge          t6, gp, 78f
                  add          t3, a7, a4
69:               and          a2, s2, t5
                  bgeu         t3, a1, 81f
                  slti         a6, s4, 1273
                  nop
                  bgeu         s1, tp, 82f
                  slli         s8, a5, 18
                  xori         t6, s0, -460
                  beq          zero, a3, 85f
                  slt          s0, zero, s8
78:               ori          gp, s8, -938
                  srai         tp, a1, 7
                  nop
81:               slti         t2, a7, 1114
82:               beq          a4, s1, 85f
                  sub          s0, s5, t0
                  slti         t5, a5, 677
85:               sll          a5, s11, s4
                  srli         s10, t1, 17
                  lw           s7, 4(t4)
                  sra          t2, t4, a2
                  addi         t4, t4, 12
                  sub          a5, s10, s8
                  xor          a2, a3, t0
                  sra          s6, t0, s3
                  slti         s1, a3, 794
                  slli         t5, a2, 24
                  srai         a7, zero, 9
                  slt          a0, t4, s5
103:              addi x17, x23, 0
103:              jalr x17, x17, 0
sub_6:            xori         t1, tp, 13
                  bge          t0, sp, sub_6_stack_p
sub_6_stack_p:    addi         t4, t4, -24
                  sw           s7, 4(t4)
                  sra          s3, s8, gp
                  slti         sp, s1, -227
                  la           s7, region_1+744 #start riscv_load_store_rand_instr_stream_10
                  lbu          t2, 58(s7)
                  sh           zero, -24(s7)
                  sra          t5, a0, a1
                  lui          s9, 516289
                  sb           t6, 45(s7)
                  sltiu        a7, sp, -1573
                  sh           s10, 10(s7)
                  lbu          a3, 44(s7)
                  lh           s0, -52(s7)
                  xori         a7, a7, 1840
                  auipc        tp, 322293
                  sb           s3, -25(s7)
                  auipc        s10, 103795
                  xori         a2, t1, 1493
                  srl          s2, a6, a0
                  lb           a0, 10(s7)
                  lbu          s2, 49(s7)
                  lh           t6, 56(s7)
                  addi         a0, s11, 1948
                  slti         t3, s7, -2020
                  sltiu        s2, s0, 744
                  nop
                  srli         a4, s7, 13
                  sltiu        a2, a5, -1631
                  slti         gp, a3, -1155
                  sw           a3, 28(s7)
                  ori          s11, t3, -1412
                  lui          s5, 451157
                  sltiu        s6, s11, 1402
                  addi         tp, a7, -805
                  or           gp, s4, s8
                  sw           t6, 52(s7)
                  lw           s9, 40(s7)
                  sltu         s1, t3, s4
                  slli         t5, ra, 7
                  sll          s1, a2, a0
                  lb           s11, -46(s7)
                  lb           t6, 33(s7)
                  sltu         s10, a2, t3
                  sub          gp, ra, ra
                  lhu          t3, -6(s7)
                  lbu          s9, 4(s7)
                  ori          t5, a0, -939
                  lbu          s2, 49(s7)
                  ori          gp, a5, 1729
                  and          t2, t1, a5
                  lbu          gp, -62(s7)
                  sra          t0, s10, sp
                  lb           s1, -4(s7)
                  sb           tp, -23(s7)
                  slti         t1, a6, -1808
                  sb           a5, -60(s7)
                  lhu          s6, -42(s7)
                  sb           t5, -7(s7) #end riscv_load_store_rand_instr_stream_10
                  la           a3, region_1+1701 #start riscv_load_store_rand_instr_stream_12
                  lh           a7, 53(a3)
                  or           zero, t1, s11
                  srl          t6, s9, s5
                  or           s1, zero, t5
                  srli         sp, s8, 31
                  lb           tp, -63(a3)
                  addi         zero, a4, 566
                  sltu         s0, t2, s9
                  addi         a7, a3, 1565
                  lhu          t1, -19(a3)
                  lh           a1, 21(a3)
                  and          a4, a1, s2
                  sltu         t2, tp, s9
                  sb           a3, 48(a3)
                  lb           a5, -54(a3)
                  or           zero, t2, a5
                  srli         s2, a1, 14
                  ori          gp, a2, 1814
                  sb           s2, -61(a3)
                  sb           zero, 62(a3)
                  add          s6, s2, sp
                  sb           a7, -44(a3)
                  lh           s5, 37(a3)
                  sw           a2, 11(a3)
                  sltu         a5, s4, s9
                  sra          t6, zero, s5
                  lbu          a5, 46(a3)
                  lhu          a7, -59(a3)
                  xor          a5, t3, a1
                  lb           t0, -10(a3)
                  lbu          t3, 20(a3)
                  sb           s1, -41(a3)
                  lb           s10, -44(a3)
                  lhu          s1, -43(a3)
                  sltu         s8, t5, s3
                  slt          s3, zero, a5
                  sb           gp, 56(a3)
                  sw           s9, 11(a3)
                  sb           tp, -60(a3)
                  xori         s2, a3, 353
                  slli         s8, s7, 14
                  sll          a1, s1, t4
                  xori         t5, a7, 1542
                  lb           t3, -60(a3)
                  lbu          a2, -13(a3)
                  sb           s7, 14(a3) #end riscv_load_store_rand_instr_stream_12
                  la           a2, region_1+1502 #start riscv_load_store_rand_instr_stream_8
                  srl          s2, s2, tp
                  sh           a1, 28(a2)
                  lhu          a7, -46(a2)
                  sb           gp, 21(a2)
                  lhu          s6, 50(a2)
                  lb           t2, -14(a2)
                  auipc        sp, 270308
                  sub          a7, s8, t2
                  sb           a3, -31(a2)
                  addi         s3, a2, -1079
                  sub          s8, s4, s8
                  lbu          sp, -45(a2)
                  or           a3, s5, s4
                  add          s10, t2, a4
                  srl          a4, a5, s2
                  or           a4, ra, s4
                  sb           a6, -12(a2)
                  andi         a7, s3, -1792
                  sb           sp, -13(a2)
                  sb           s4, -25(a2)
                  srai         t1, s4, 17
                  sb           a7, -16(a2)
                  lbu          t1, 22(a2)
                  lbu          s7, 33(a2)
                  xori         s7, t5, 982
                  sll          gp, a0, t4
                  lb           t2, -41(a2)
                  slt          a7, tp, a3
                  srai         s6, sp, 7
                  lb           a3, 19(a2)
                  sltu         a3, t5, t3
                  sh           t2, -28(a2)
                  slti         s9, t0, -1326
                  lbu          zero, 47(a2)
                  lui          s7, 729894
                  xori         s11, s2, 408
                  lhu          sp, 24(a2)
                  srli         a7, s6, 30
                  ori          s7, s8, 330
                  sh           s7, -20(a2)
                  sb           s9, -50(a2)
                  srai         s6, s1, 9
                  add          t3, t0, a3
                  lh           a0, 18(a2)
                  lb           a5, -55(a2) #end riscv_load_store_rand_instr_stream_8
                  la           t3, region_1+224 #start riscv_load_store_rand_instr_stream_4
                  slt          zero, s0, t1
                  add          a6, s2, s3
                  slti         s5, gp, -1937
                  srai         zero, t3, 31
                  srl          s3, t3, a2
                  sltiu        a6, t2, 1761
                  xor          a0, s10, t1
                  andi         s9, ra, -474
                  andi         t0, s5, -1655
                  andi         a1, ra, 1322
                  srli         sp, t6, 2
                  sltu         s9, s11, t1
                  ori          s1, s3, 84
                  lbu          gp, -172(t3)
                  srl          t2, s4, t2
                  lb           s8, 35(t3)
                  slli         s8, t2, 23
                  lb           a2, 57(t3)
                  lb           a2, -166(t3)
                  lb           a4, 246(t3)
                  addi         s1, t5, 757
                  lbu          t5, -123(t3)
                  xori         s10, t5, 1578
                  lui          t0, 1938
                  sra          a1, t4, gp
                  srli         s6, s9, 15
                  lb           s5, 67(t3)
                  and          s11, s5, a2
                  nop
                  and          a6, a6, a6
                  andi         s7, t6, -1827
                  sw           sp, 180(t3)
                  auipc        tp, 417266
                  andi         s2, t5, -1695
                  lhu          a4, 20(t3)
                  lbu          s2, -147(t3) #end riscv_load_store_rand_instr_stream_4
                  la           t1, region_0+1798 #start riscv_load_store_rand_instr_stream_1
                  xori         t6, a1, -595
                  andi         t5, t0, 1308
                  sb           t6, 20(t1)
                  slt          a3, t4, t2
                  sb           s10, -55(t1)
                  lui          a1, 764271
                  lbu          t6, 12(t1)
                  lbu          a2, -35(t1)
                  slli         sp, s0, 11
                  add          s3, t5, ra
                  lb           a1, -9(t1)
                  sltiu        s10, s5, 343
                  nop
                  lbu          s1, 19(t1)
                  lw           s5, -46(t1)
                  sb           s9, -63(t1)
                  lb           a4, -13(t1)
                  lb           tp, 5(t1)
                  lh           sp, 42(t1)
                  sub          s9, a6, s3
                  lbu          s3, 5(t1)
                  lbu          s8, 19(t1)
                  sb           a3, 13(t1)
                  lw           a3, 22(t1)
                  lbu          s6, -29(t1)
                  sb           s1, 29(t1)
                  andi         a4, a5, 758
                  sh           t2, -4(t1)
                  lh           s7, -54(t1)
                  sb           s10, 59(t1)
                  slti         s3, s5, -148
                  sh           s3, 28(t1)
                  slli         s11, a6, 19
                  lbu          tp, 21(t1)
                  lhu          s2, 10(t1)
                  andi         t0, a6, -1847
                  slt          s0, t2, a1
                  sltiu        zero, s3, 1093
                  add          sp, s8, t0
                  slti         a4, gp, -644
                  slti         t6, t4, 697
                  auipc        a4, 977800
                  lbu          s2, -4(t1)
                  sb           t2, 15(t1)
                  lbu          s3, -16(t1)
                  lbu          s5, 41(t1)
                  sra          s10, s8, s11
                  srai         s7, t1, 10
                  and          s10, tp, s7
                  sltu         s11, tp, s1
                  xori         gp, s11, -442
                  xor          s3, t5, tp
                  addi         sp, a5, -118
                  sltu         a1, t6, t1
                  srl          a0, tp, a4
                  lui          s8, 642701
                  or           a0, s5, s7
                  lb           s7, -10(t1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+957 #start riscv_load_store_rand_instr_stream_2
                  lui          s7, 222272
                  slt          s3, gp, tp
                  lb           a1, 14(sp)
                  sb           gp, -27(sp)
                  lb           s9, 20(sp)
                  or           s0, ra, s3
                  andi         s5, a4, 120
                  lui          s3, 427765
                  xor          t6, s8, s3
                  srl          a3, s10, gp
                  sub          tp, t6, sp
                  sh           tp, -1(sp)
                  addi         a5, a5, 1604
                  sub          a7, s11, a1
                  sra          a1, s11, s4
                  auipc        a4, 1026611
                  auipc        a1, 402368
                  xori         a0, t3, 381
                  or           a0, s3, a4
                  sb           a6, -6(sp)
                  sltu         zero, a5, a4
                  sh           tp, -45(sp)
                  sh           s9, -53(sp)
                  sb           t0, -36(sp)
                  lb           s9, -29(sp)
                  xori         a0, sp, -1060
                  sb           a0, -48(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s3, region_1+1016 #start riscv_load_store_rand_instr_stream_5
                  nop
                  lbu          t1, -2(s3)
                  ori          t2, s2, 1762
                  lhu          a3, 16(s3)
                  lbu          s2, -11(s3)
                  sltu         s10, s0, s11
                  srli         t3, s0, 21
                  lb           zero, 6(s3)
                  sra          t3, a6, s6
                  ori          s8, s0, -988
                  sb           s8, -13(s3)
                  srl          s10, s3, s2
                  add          s5, zero, a6
                  lb           t6, -13(s3)
                  lb           sp, 5(s3)
                  andi         s11, sp, 920
                  srl          a6, s8, a7
                  lb           s6, 5(s3)
                  srai         s2, a4, 14
                  ori          tp, a2, 1165
                  lhu          a3, 0(s3)
                  sra          t3, a7, s0
                  slt          s9, s2, a2
                  slt          s2, t4, s1
                  auipc        a6, 467142
                  add          s7, a1, a1
                  xor          s9, a3, a6
                  slti         a6, s2, 1291
                  lb           s5, -13(s3)
                  nop
                  andi         s0, t5, -100
                  sll          a6, s0, s1
                  lbu          s11, -9(s3)
                  add          s2, s0, a2
                  sltiu        gp, s6, -727
                  add          sp, sp, s11
                  sh           t5, 16(s3) #end riscv_load_store_rand_instr_stream_5
                  la           a7, region_0+1676 #start riscv_load_store_rand_instr_stream_9
                  sb           s8, 113(a7)
                  sb           s3, -333(a7)
                  sh           s11, -1232(a7)
                  addi         a5, zero, 829
                  andi         s7, a2, -1533
                  nop
                  lhu          s3, -1410(a7)
                  lbu          s10, -1226(a7)
                  lw           a6, -1396(a7)
                  xori         s11, a6, 360
                  lb           a0, -835(a7)
                  lb           s1, -1419(a7)
                  lb           tp, -563(a7)
                  lbu          s5, -1207(a7)
                  lb           a4, -231(a7)
                  sb           t2, 248(a7)
                  sub          a3, a3, s8
                  add          a3, s2, tp
                  lbu          t0, -1(a7)
                  srli         t3, a7, 15
                  lbu          gp, -1103(a7)
                  slli         s10, sp, 17
                  lb           zero, -1542(a7)
                  nop
                  slti         s2, s5, 1844
                  lbu          a4, -149(a7)
                  sb           t1, -1599(a7)
                  or           s0, a1, a7
                  lb           sp, 172(a7)
                  xor          s9, a4, tp
                  lhu          sp, -590(a7)
                  and          gp, a0, s8
                  lhu          zero, -1286(a7)
                  lb           s0, -385(a7)
                  sub          s0, s7, t0
                  lbu          sp, -1553(a7) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1862 #start riscv_load_store_rand_instr_stream_7
                  sll          tp, s7, s9
                  srl          a3, s4, tp
                  or           t6, s5, t0
                  addi         s2, gp, 932
                  srl          s5, tp, gp
                  sll          t3, s2, a0
                  sltiu        a0, t3, 209
                  lb           zero, -1491(sp)
                  ori          s2, s9, 492
                  slli         a5, s2, 5
                  sb           gp, -665(sp)
                  ori          s6, a7, -881
                  lbu          s3, -1577(sp)
                  sb           a5, -1211(sp)
                  sll          a0, s4, s11
                  sra          a3, zero, s7
                  lbu          a5, -893(sp)
                  slli         s1, s6, 31
                  srl          s11, gp, a5
                  andi         tp, tp, 502
                  ori          a6, t3, -40
                  xori         a2, a6, -1634
                  lb           a1, -618(sp)
                  srai         s5, s6, 26
                  sb           a1, -1817(sp)
                  sh           sp, -582(sp)
                  slt          s1, a4, a2
                  sltiu        tp, s5, -783
                  auipc        a2, 792920
                  sra          t0, a4, a2
                  andi         s9, t1, 742
                  srai         s6, a7, 14
                  srli         t3, s6, 2
                  sb           t6, -751(sp)
                  sb           a7, -871(sp)
                  slt          gp, t3, s2
                  sb           s4, -96(sp)
                  xori         a2, a0, 688
                  andi         s1, s6, 780
                  lhu          t0, -1474(sp)
                  lbu          s8, -797(sp) #end riscv_load_store_rand_instr_stream_7
                  la           s11, region_1+761 #start riscv_load_store_rand_instr_stream_3
                  lh           t0, -529(s11)
                  add          s0, t4, a5
                  slli         s1, s1, 6
                  lbu          a3, 160(s11)
                  sb           sp, 1037(s11)
                  xor          a7, t6, s3
                  sb           s3, -6(s11)
                  lb           t0, 484(s11)
                  nop
                  sb           s10, 1229(s11)
                  lb           t6, 655(s11)
                  sb           t6, -470(s11)
                  sw           s3, -333(s11)
                  lb           s6, 1066(s11)
                  lui          s1, 239968
                  lbu          s7, -316(s11)
                  lbu          t1, 1168(s11)
                  lbu          s1, -163(s11)
                  sw           s8, 987(s11)
                  sb           t4, -398(s11)
                  sra          zero, s3, a6
                  sb           a4, -165(s11)
                  lb           a0, 817(s11)
                  lh           s0, 351(s11)
                  sub          s3, a6, gp
                  sh           s7, 395(s11)
                  lbu          s9, 73(s11)
                  lb           tp, 569(s11)
                  lhu          a3, -515(s11)
                  add          tp, s0, s5
                  sltiu        sp, s7, 96
                  sub          s10, s4, a4
                  nop
                  and          a1, t3, t1
                  slti         a0, t2, -1262
                  sb           a5, 1037(s11)
                  lb           t2, -114(s11)
                  lbu          gp, -439(s11)
                  sb           sp, -288(s11)
                  srai         a6, gp, 9
                  lh           s6, -183(s11)
                  lb           s7, -170(s11) #end riscv_load_store_rand_instr_stream_3
                  nop
                  or           a6, sp, ra
                  sll          s2, a2, gp
                  srai         s2, s10, 13
                  bge          a5, s4, 15f
                  blt          s11, s9, 6f
6:                blt          tp, s7, 21f
                  bltu         a7, s10, 10f
                  slli         s0, s2, 29
                  andi         t1, a3, 1047
10:               bgeu         gp, gp, 13f
                  and          s7, s10, gp
                  and          s3, a5, tp
13:               and          a2, gp, t1
                  sra          zero, s2, s1
15:               slt          t6, s11, s7
                  bne          s2, s1, 25f
                  srl          t2, tp, a3
                  slti         t6, s11, 870
                  srli         a1, tp, 6
                  sub          a6, ra, gp
21:               slli         a6, t1, 0
                  sub          t0, s9, sp
                  and          s7, ra, s9
                  ori          t6, a0, 1466
25:               bgeu         t3, a6, 34f
                  blt          sp, a1, 38f
                  srl          zero, t3, t0
                  xori         s2, s9, -1099
                  sub          a2, s6, a0
                  srai         s8, t6, 2
                  bge          t2, tp, 41f
                  sltiu        t6, sp, -1673
                  lui          s2, 906194
34:               xor          zero, t0, s11
                  slt          t0, gp, t0
                  srl          a7, t5, a0
                  bgeu         s8, zero, 50f
38:               slti         a7, t0, -1641
                  bne          t3, t5, 52f
                  slt          a4, a0, sp
41:               addi         s3, s8, -735
                  srai         t3, t3, 12
                  slti         s11, t3, -211
                  bgeu         a0, s6, 45f
45:               nop
                  sltu         s10, s9, ra
                  srl          zero, t5, s10
                  auipc        gp, 315935
                  srli         a7, t4, 10
50:               xor          a6, s9, t5
                  ori          a4, s8, 20
52:               beq          t4, a1, 59f
                  slt          gp, a0, gp
                  blt          s5, s9, 61f
                  sltu         a0, t2, a4
                  xori         s8, s10, -187
                  addi         gp, t1, -1408
                  auipc        t0, 29980
59:               srl          t2, s2, a3
                  bltu         sp, s8, 71f
61:               or           s5, s8, s5
                  auipc        a5, 192787
                  or           a6, zero, tp
                  ori          t6, zero, -557
                  and          tp, s7, gp
                  sub          a3, s0, t1
                  and          t5, t5, s7
                  slti         tp, s0, 1102
                  ori          t5, s11, -1114
                  and          a5, t6, s4
71:               lui          a7, 166280
                  xori         s8, s7, -528
                  slti         t5, s11, -496
                  sra          t2, s8, s0
                  auipc        a3, 1001279
                  sub          zero, t2, a1
                  or           s6, t2, a5
                  slli         s6, s7, 13
                  blt          s6, t1, 88f
                  slli         s5, t0, 14
                  sra          gp, s1, ra
                  srl          s9, t1, s2
                  and          s1, tp, zero
                  andi         t6, s10, 1042
                  slt          t2, tp, a4
                  srli         s9, s0, 3
                  auipc        t6, 957974
88:               or           a1, s10, s0
                  and          a0, s11, s9
                  and          t3, s4, s0
                  blt          gp, s7, 93f
                  sub          s3, s4, a2
93:               ori          a1, s6, 1681
                  slt          a5, t0, t2
                  sltiu        a2, t1, 649
                  ori          a4, t4, 999
                  srli         a2, s9, 13
                  srl          a5, t3, s9
                  xori         tp, s4, 1147
                  lui          sp, 662929
                  or           a6, zero, a2
                  xor          a5, s2, gp
                  bltu         s8, a7, 116f
                  sltu         t1, s6, ra
                  beq          t1, s3, 109f
                  beq          t2, s8, 118f
                  slti         a1, a5, 1882
                  andi         a2, s3, -1198
109:              lui          t1, 755607
                  xori         s6, s4, -465
                  add          a4, zero, t3
                  bgeu         s3, a4, 123f
                  srai         t5, a4, 14
                  addi         tp, s7, -1473
                  and          tp, a5, a4
116:              bge          s4, a1, 136f
                  srl          s1, s0, t2
118:              slti         sp, s1, 960
                  sra          t2, a1, a7
                  auipc        s2, 738820
                  addi         s1, a5, -230
                  ori          a0, t5, -1717
123:              blt          sp, s6, 124f
124:              xor          s8, s8, s1
                  and          t5, a4, a7
                  sltu         s10, a6, s0
                  lui          t0, 865657
                  and          s1, s5, zero
                  srli         a5, s0, 30
                  xor          s1, s6, s5
                  andi         t3, t6, 1355
                  or           s1, s11, t1
                  sra          s0, t0, t3
                  andi         a3, s5, 1840
                  andi         t0, a3, 1767
136:              srli         s9, s7, 3
                  sltu         s6, t0, s8
                  addi         s1, s8, 1164
                  sll          zero, tp, t2
                  bne          s5, t5, 141f
141:              xori         s10, t0, -502
                  sll          sp, s10, s10
                  or           a2, sp, t6
                  xor          t6, t1, t2
                  add          a4, a3, a4
                  bgeu         a2, s0, 157f
                  sltu         a1, s2, a2
                  add          s8, tp, gp
                  or           sp, s0, t2
                  bge          t0, t3, 170f
                  sltu         a4, s10, a5
                  sub          tp, s4, s6
                  andi         s9, s3, -309
                  slli         s11, s1, 27
                  lui          a2, 669812
                  bge          s7, t0, 176f
157:              ori          s2, t3, 877
                  andi         s9, s5, -1076
                  bge          s0, sp, 164f
                  bne          s5, s3, 161f
161:              bne          s4, a3, 172f
                  sltiu        s1, a3, 1586
                  sub          s9, t2, s8
164:              blt          zero, t4, 175f
                  sra          a1, a6, zero
                  slt          s1, sp, tp
                  sll          t3, a6, s7
                  sltu         s9, s8, a7
                  srl          s10, a6, s3
170:              xor          a3, tp, s2
                  sll          a2, a4, s11
172:              nop
                  sub          a4, sp, t5
                  bne          t6, t3, 189f
175:              andi         s6, s10, 1288
176:              slli         s10, a6, 0
                  auipc        a7, 174888
                  auipc        t5, 949481
                  or           t3, tp, sp
                  auipc        s1, 859702
                  slti         gp, a3, 650
                  sltu         t2, s4, s5
                  slti         s3, s4, 1727
                  bge          t4, s7, 195f
                  auipc        t3, 486495
                  sll          t6, s2, a3
                  bne          t2, s2, 200f
                  srai         a2, s8, 9
189:              bgeu         s10, ra, 190f
190:              auipc        t2, 94584
                  bne          t0, t2, 200f
                  blt          t0, t4, 201f
                  ori          s2, s3, 539
                  or           a6, t6, sp
195:              sll          a1, s4, a4
                  beq          sp, s9, 198f
                  addi         s3, a1, -431
198:              beq          s9, a5, 202f
                  bge          gp, a2, 204f
200:              sra          t2, a7, s7
201:              sub          t5, a3, s5
202:              beq          a2, gp, 213f
                  slt          s0, a6, a7
204:              ori          s6, a5, -1150
                  auipc        s9, 232717
                  andi         tp, s3, -612
                  sltiu        a6, a2, 1250
                  auipc        s9, 108051
                  sltu         t5, a2, a0
                  andi         zero, a7, 624
                  bltu         t6, s0, 231f
                  bne          t6, zero, 232f
213:              sra          s11, s6, zero
                  srl          t3, t3, t1
                  lui          t2, 361746
                  ori          s7, s4, 1653
                  andi         t3, a7, 9
                  lui          s10, 160073
                  bgeu         t5, a5, 222f
                  auipc        a2, 218921
                  and          s7, s7, s6
222:              and          a2, s4, sp
                  ori          a0, sp, -803
                  andi         a0, s8, 396
                  sub          a3, zero, t3
                  auipc        zero, 68363
                  bge          s9, tp, 247f
                  xor          t2, s0, t2
                  slli         t3, s1, 3
                  nop
231:              addi         s2, a3, 46
232:              srai         s5, s0, 24
                  bne          s2, t0, 234f
234:              bgeu         s0, a4, 245f
                  xor          s3, tp, gp
                  sll          a6, t6, a0
                  addi         a7, t4, 937
                  slt          s6, t1, s10
                  ori          s10, s1, -828
                  or           t5, tp, zero
                  sltiu        a5, ra, 1727
                  srl          a7, s7, gp
                  xor          a0, s1, s10
                  sra          a7, t3, a2
245:              auipc        s5, 354277
                  and          a0, tp, s9
247:              slli         a6, s10, 19
                  add          a6, t2, t2
                  srli         s9, t5, 12
                  bne          t3, a5, 259f
                  nop
                  srl          a0, a6, s4
                  addi         zero, a1, 1768
                  lui          s5, 589966
                  blt          a6, gp, 268f
                  or           a1, s1, a3
                  sltu         sp, zero, a1
                  xori         t2, a7, 1186
259:              srai         t0, t4, 0
                  bge          gp, s3, 273f
                  slti         s10, a7, 1080
                  sltiu        a4, s0, 396
                  ori          sp, sp, 1605
                  add          t0, t3, s10
                  slti         a1, s1, -1278
                  auipc        a4, 902605
                  nop
268:              or           tp, s4, t5
                  bge          a7, t3, 276f
                  bne          s6, a5, 282f
                  srli         t3, sp, 6
                  sltiu        a2, gp, 1911
273:              sltu         s6, a2, s5
                  xor          s8, t2, a2
                  or           s9, a3, s4
276:              sra          s10, a0, s8
                  bne          s6, s5, 278f
278:              blt          a1, a3, 290f
                  srai         t1, s4, 12
                  or           t2, s3, s9
                  auipc        a2, 135677
282:              beq          t6, t4, 283f
283:              and          s2, a4, s2
                  ori          a2, s7, -1188
                  slt          gp, t4, t1
                  add          a1, sp, a7
                  sll          a0, s4, a5
                  slli         s0, a5, 30
                  sra          zero, a1, s7
290:              addi         a0, t3, 253
                  sub          t0, s3, s2
                  bne          gp, t6, 293f
293:              sll          s7, ra, t3
                  srli         t5, a1, 18
                  bge          s11, s9, 305f
                  sra          t3, s5, a3
                  andi         s5, ra, 1181
                  slli         s0, a0, 27
                  sll          t6, s11, t3
                  xori         t5, t5, 710
                  lui          t2, 796993
                  xori         s7, s10, -1674
                  auipc        s11, 878252
                  slli         s3, s5, 22
305:              add          s7, s10, t3
                  beq          t2, tp, 309f
                  srl          t5, tp, s4
                  add          a0, a0, s6
309:              sltiu        s9, s1, -1899
                  auipc        s7, 578622
                  auipc        s3, 271002
                  slt          s1, t0, a3
                  sub          a2, t1, t1
                  bge          a7, s9, 321f
                  lui          s9, 454257
                  slti         s2, s9, -1872
                  sra          a0, s7, a0
                  sra          s7, s11, tp
                  slti         t6, t4, -629
                  sltiu        a4, s10, 1653
321:              srli         t2, t1, 16
                  sll          s1, s6, s11
                  slli         s0, tp, 29
                  sra          s6, s3, s6
                  bltu         s10, t1, 336f
                  nop
                  bgeu         s4, t4, 328f
328:              beq          gp, t3, 340f
                  sra          s0, s11, tp
                  sltiu        gp, a2, -323
                  srl          t5, s0, s0
                  and          s2, ra, s0
                  bltu         s6, s6, 342f
                  add          s6, a5, s6
                  auipc        t6, 984795
336:              bltu         s9, a0, 343f
                  slli         t1, t2, 13
                  andi         a1, a3, -1213
                  addi         zero, a2, 1329
340:              blt          t3, s5, 352f
                  srl          a2, t3, s3
342:              bgeu         t4, t0, 357f
343:              srl          tp, s5, a7
                  bge          a4, ra, 345f
345:              sra          t0, s10, s9
                  srai         sp, sp, 7
                  beq          zero, a5, 354f
                  add          gp, s0, s8
                  nop
                  nop
                  bne          s6, a5, 360f
352:              bge          t3, a7, 355f
                  sltu         t1, s2, zero
354:              sltu         gp, s9, s7
355:              blt          a7, a7, 356f
356:              slli         s5, a5, 12
357:              addi         s2, s2, -1081
                  add          s3, tp, t6
                  nop
360:              blt          s4, gp, 361f
361:              slti         s3, s9, -355
                  addi         s5, a1, -223
                  bltu         a0, a1, 373f
                  srai         s3, t0, 17
                  srl          t2, a4, s7
                  nop
                  blt          t6, s2, 376f
                  srai         sp, s11, 24
                  srai         s11, a5, 17
                  srli         a7, t3, 7
                  addi         s10, t2, -1023
                  sll          t3, gp, a0
373:              auipc        s6, 137062
                  srai         a4, t2, 22
                  bne          s6, a0, 378f
376:              bgeu         s4, a1, 389f
                  bltu         s11, zero, 397f
378:              lui          a4, 397865
                  and          t6, s1, t6
                  srli         t5, zero, 23
                  blt          sp, s3, 394f
                  beq          s0, tp, 395f
                  slt          a3, t3, s0
                  sltiu        s1, s4, -1431
                  bne          s5, t2, 396f
                  xori         t0, s3, 342
                  beq          tp, tp, 391f
                  srai         t5, t1, 19
389:              or           t2, t5, t2
                  slti         a7, t5, 1875
391:              xor          a3, t3, a5
                  andi         gp, s2, 1199
                  srl          gp, t0, s0
394:              slli         t1, s2, 3
395:              bge          s4, t2, 406f
396:              blt          zero, s10, 397f
397:              addi         zero, t4, -1264
                  sub          t2, t4, gp
                  slti         t0, a7, -1331
                  blt          t0, s2, 411f
                  slli         s10, t6, 6
                  bgeu         s0, s3, 422f
                  slti         s1, t3, -1684
                  sltu         sp, s5, a3
                  lui          t1, 577570
406:              slt          s6, a0, s5
                  bgeu         a1, s8, 412f
                  bltu         tp, zero, 419f
                  slti         t6, a1, -796
                  bgeu         a2, s0, 421f
411:              sll          a2, t6, s11
412:              ori          t0, s10, -716
                  add          t1, t1, s9
                  bgeu         sp, zero, 416f
                  sub          zero, ra, s4
416:              slli         t0, a6, 4
                  addi         a3, s8, 451
                  addi         s9, a4, -1045
419:              slli         s5, a2, 16
                  xor          a4, gp, t1
421:              xor          a7, s0, s10
422:              sltiu        sp, s10, -264
                  ori          t1, ra, -961
                  and          s11, t0, zero
                  blt          gp, ra, 445f
                  and          a2, a1, a0
                  add          gp, sp, s5
                  slli         s2, s3, 28
                  slli         s7, tp, 29
                  auipc        s11, 166014
                  xor          s1, t3, ra
                  xor          a6, ra, a2
                  and          t6, t0, a7
                  sltu         zero, t0, tp
                  blt          s10, gp, 446f
                  srli         a6, a1, 6
                  bne          a2, a6, 450f
                  bgeu         zero, s0, 453f
                  lui          s0, 43757
                  add          tp, s8, t3
                  and          s11, a7, a5
                  sub          tp, s2, a3
                  bge          s1, s3, 450f
                  xori         s3, a4, 608
445:              bne          s8, t3, 448f
446:              bltu         a4, s3, 450f
                  srai         s5, s11, 8
448:              srai         s6, t5, 0
                  andi         gp, a3, 1386
450:              slti         a5, s3, -1104
                  xori         zero, a0, 1786
                  slt          s11, t2, tp
453:              add          s11, t4, s2
                  srli         s0, tp, 25
                  sub          s5, t5, s0
                  slti         s3, t5, -696
                  sltu         sp, s4, s9
                  beq          s10, t1, 459f
459:              slli         a7, s4, 7
                  bgeu         tp, s1, 469f
                  bgeu         t0, a6, 462f
462:              bge          t0, a0, 471f
                  srli         s8, a7, 7
                  ori          s0, s7, -158
                  lui          s3, 239961
                  sub          s10, s1, a0
                  sra          s3, a3, gp
                  bne          a1, t2, 480f
469:              sub          a6, t2, t2
                  srai         t1, zero, 15
471:              xor          t1, t6, s9
                  bltu         t2, s0, 473f
473:              slti         a1, t3, 983
                  xori         s9, t1, -1315
                  or           s8, a3, t1
                  blt          s11, t4, 488f
                  sltiu        sp, ra, 2
                  beq          a1, a6, 498f
                  and          s2, a3, s5
480:              bgeu         tp, t1, 500f
                  slti         t5, t3, -692
                  lui          s5, 36098
                  and          sp, tp, tp
                  srli         s2, sp, 24
                  beq          s3, s8, 494f
                  xor          t0, a1, s0
                  ori          s5, sp, 337
488:              srl          t5, t2, s0
                  and          s3, a6, s6
                  sll          t5, s9, s2
                  auipc        s1, 574118
                  nop
                  auipc        s8, 738928
494:              and          s7, s9, sp
                  sra          s6, t4, a5
                  bgeu         a4, a1, 509f
                  or           a4, s10, a0
498:              sltu         a0, a2, s11
                  srl          a4, s5, t1
500:              ori          t2, s1, 1879
                  sll          a3, sp, s1
                  sra          a4, t1, a0
                  slt          a3, a6, t3
                  ori          s0, sp, -1502
                  slli         t2, gp, 7
                  bne          s9, t6, 513f
                  bltu         s3, t2, 518f
                  bgeu         s10, a7, 519f
509:              bltu         a4, s9, 514f
                  blt          s6, a3, 512f
                  or           s0, t3, tp
512:              auipc        t3, 783401
513:              bne          s11, a1, 523f
514:              beq          s7, a6, 517f
                  sltu         a4, s1, t5
                  and          s2, tp, t1
517:              sll          s9, s1, s10
518:              srai         tp, a0, 10
519:              xori         s1, a0, -1117
                  ori          a2, a6, -106
                  lui          tp, 449620
                  srai         s10, gp, 24
523:              sltiu        a6, a0, -1219
                  bge          t2, t2, 525f
525:              xor          zero, t6, s4
                  andi         a2, s3, 913
                  slt          s1, a6, s1
                  nop
                  sra          a7, a1, a2
                  sll          a6, sp, tp
                  andi         a6, a1, 935
                  slt          tp, s8, s9
                  nop
                  or           t3, t1, a5
                  srli         t5, s10, 7
                  nop
                  srli         t3, a0, 10
                  sltiu        s5, s7, 1407
                  add          a0, s2, t0
                  andi         t5, t1, 1265
                  add          a4, t5, gp
                  bgeu         sp, ra, 562f
                  bgeu         a4, t6, 554f
                  bne          a7, a5, 557f
                  slti         a0, s0, -793
                  andi         s1, s4, -1039
                  blt          a1, s1, 558f
                  sra          tp, s10, zero
                  sra          sp, s2, a5
                  bne          a0, a5, 551f
551:              srl          a0, a0, gp
                  xor          gp, s10, s6
                  srli         t3, s1, 15
554:              bne          t5, s5, 565f
                  bge          a6, a1, 559f
                  ori          zero, a3, 853
557:              andi         a3, s3, -1758
558:              sltu         s8, s10, gp
559:              bltu         s10, t0, 569f
                  sltu         s0, s9, tp
                  addi         s0, s10, -221
562:              blt          s9, sp, 564f
                  auipc        s8, 362477
564:              xor          s8, s3, s1
565:              slli         gp, sp, 22
                  auipc        a0, 677938
                  bgeu         s6, sp, 587f
                  slli         t3, tp, 21
569:              bltu         s10, tp, 580f
                  sltu         s5, s6, t6
                  auipc        s2, 801707
                  bne          ra, sp, 592f
                  addi         s11, sp, 1235
                  sra          a0, t3, s5
                  and          a4, sp, t3
                  ori          s6, s10, -478
                  xor          s11, s9, sp
                  slti         gp, t0, -648
                  srai         s8, sp, 19
580:              addi         s2, a3, 1953
                  slli         sp, t5, 25
                  sltu         a3, s9, s3
                  bge          t6, s4, 586f
                  beq          tp, a3, 587f
                  andi         s1, s4, 1418
586:              addi         s7, t1, -1079
587:              bltu         a4, s5, 599f
                  andi         a6, a1, 619
                  addi         t5, s5, -217
                  ori          s8, a3, -95
                  add          t5, s11, a1
592:              srl          t2, s8, s8
                  xor          t3, s2, t6
                  srai         s3, s9, 18
                  ori          s3, s5, -1684
                  bgeu         tp, zero, 597f
597:              or           a0, s0, gp
                  bltu         t5, tp, 609f
599:              srli         s8, s3, 14
                  sltiu        a5, s3, 260
                  slt          s7, a6, gp
                  blt          tp, gp, 615f
                  srl          t1, s5, ra
                  sll          s5, s0, a2
                  srai         s11, a4, 12
                  slli         tp, t2, 6
                  srl          s0, ra, a1
                  sra          s9, s10, t3
609:              xor          s10, a2, s8
                  xori         s1, s7, 521
                  srl          s2, gp, tp
                  xori         a1, t0, 2037
                  slli         s8, a4, 15
                  lui          a5, 912661
615:              andi         t2, s11, -437
                  xori         s7, s11, -1485
                  auipc        a7, 953245
                  beq          s6, s10, 627f
                  nop
                  sub          a3, s11, s3
                  slt          s8, s9, a3
                  sll          a7, t5, t3
                  srl          t3, t4, t6
                  bge          sp, a7, 625f
625:              lui          a1, 475618
                  andi         s2, a1, -387
627:              addi         zero, s8, 1017
                  sub          s7, s10, a6
                  ori          t5, s3, 833
                  nop
                  sra          s0, a0, a3
                  ori          s6, a4, -1099
                  lui          tp, 727516
                  xor          s8, s5, t5
                  auipc        sp, 94888
                  srli         a4, s7, 16
                  srli         a0, a7, 21
                  bne          a6, s8, 649f
                  add          gp, t0, s3
                  beq          s6, a6, 647f
                  srai         s1, t0, 5
                  sltu         gp, a7, tp
                  nop
                  xori         a3, a0, -1833
                  slt          s0, t3, t4
                  xor          s1, s2, t6
647:              lui          t1, 604340
                  xor          zero, t3, a4
649:              sltu         t3, s1, a7
                  add          s5, a3, s9
                  srl          s9, s10, t1
                  sltiu        s8, a6, 1360
                  add          t0, t4, t2
                  slli         t5, s7, 3
                  add          sp, t1, s2
                  slti         t0, s3, 795
                  auipc        tp, 397238
                  auipc        a7, 1032371
                  addi         s3, s1, -336
                  beq          zero, sp, 661f
661:              andi         a0, a1, 367
                  xor          a0, a7, s1
                  bltu         zero, t0, 664f
664:              andi         t0, a0, 774
                  sub          s3, t2, s7
                  sub          t6, s3, tp
                  beq          zero, a6, 668f
668:              bge          s7, a5, 681f
                  sll          a3, s7, gp
                  bltu         tp, t2, 683f
                  beq          s11, t1, 680f
                  lui          s8, 878544
                  blt          s5, s2, 684f
                  auipc        s7, 147786
                  ori          s3, t3, -1441
                  srl          t0, s9, s3
                  xor          s6, a5, s8
                  bge          t6, s9, 698f
                  srli         tp, s10, 16
680:              add          a7, s6, s5
681:              sub          a0, a4, sp
                  sltu         t1, t5, a4
683:              or           a4, s0, a6
684:              ori          s5, s0, 1080
                  srl          t0, gp, s5
                  bgeu         s0, ra, 698f
                  slti         a7, s0, -1832
                  blt          a6, s9, 695f
                  and          s1, s3, s6
                  sltiu        a1, s10, 901
                  srl          tp, a0, a5
                  lui          s1, 557437
                  xor          s5, t6, s7
                  xori         a7, t6, 630
695:              bltu         t3, s8, 710f
                  slli         s11, t3, 18
                  bgeu         s5, a4, 702f
698:              bge          s2, a7, 707f
                  ori          s11, t1, 395
                  add          t1, s6, s10
                  sltiu        tp, a0, 1165
702:              sltu         a3, a1, a0
                  bltu         t6, a7, 716f
                  srli         a6, sp, 30
                  bgeu         t6, s11, 716f
                  blt          s3, s5, 717f
707:              lui          tp, 931884
                  sll          a0, s3, t5
                  sltiu        a4, s10, 190
710:              srai         t6, tp, 2
                  srli         a5, t0, 16
                  bgeu         t0, a6, 732f
                  addi         s9, s3, -1570
                  xor          a4, s3, t3
                  bgeu         t4, s8, 728f
716:              sll          a4, a4, t5
717:              xor          a6, s10, s10
                  slt          a6, tp, t6
                  andi         s5, tp, 1667
                  or           s5, tp, t1
                  andi         s10, t5, 100
                  ori          s11, t4, 149
                  slt          a1, s10, a1
                  srai         t5, t0, 21
                  slt          s0, t3, tp
                  srai         t0, a5, 19
                  srli         t0, s7, 25
728:              or           s7, t1, s0
                  bltu         a4, a5, 730f
730:              nop
                  bltu         s9, a3, 743f
732:              xori         a4, s7, 729
                  auipc        gp, 705943
                  bne          a6, a3, 745f
                  slt          t0, a2, t0
                  sra          t0, zero, zero
                  add          t0, tp, t6
                  bne          ra, s2, 748f
                  auipc        s11, 616456
                  srli         s3, s9, 31
                  auipc        t3, 187743
                  beq          a4, s4, 743f
743:              andi         s6, s6, -1081
                  la           t1, region_0+1444 #start riscv_load_store_rand_instr_stream_6
                  lhu          s1, -12(t1)
                  sb           a7, -5(t1)
                  lw           gp, 12(t1)
                  or           t6, s10, a6
                  sra          zero, a7, t5
                  sh           s6, 14(t1)
                  slti         sp, a4, -478
                  sh           s11, -4(t1)
                  lbu          t6, -9(t1)
                  srli         zero, s6, 8
                  sb           s9, 4(t1)
                  lb           s9, 3(t1)
                  lb           a4, -10(t1)
                  lb           a5, -1(t1)
                  nop
                  xori         a0, t5, 1269
                  slt          gp, a4, s3
                  lb           s0, -7(t1)
                  sra          a4, t4, tp
                  sb           t5, -16(t1)
                  sb           t0, 13(t1)
                  nop
                  sh           t4, -10(t1)
                  addi         s8, a5, 438
                  xor          a0, t4, s11
                  lb           sp, -1(t1)
                  lb           a2, -13(t1)
                  lb           t5, -9(t1) #end riscv_load_store_rand_instr_stream_6
                  andi         s9, t2, 306
745:              blt          a2, t2, 752f
                  nop
                  bge          s11, s11, 748f
748:              bltu         s3, zero, 763f
                  slti         s10, a4, 1860
                  srli         s2, t5, 16
                  slt          a6, a2, s1
752:              andi         a3, t5, 906
                  nop
                  xori         a6, t4, 57
                  addi         s5, a2, -1166
                  ori          tp, s11, 1636
                  beq          s9, s4, 762f
                  andi         t1, a0, 1879
                  srai         t5, a2, 0
                  sltu         a0, s11, s5
                  xor          t6, s7, t6
762:              sltiu        a3, s7, 1085
763:              addi         t6, tp, -200
                  ori          s5, s0, 1670
                  sra          s8, tp, s8
                  lui          s11, 575535
                  srai         t3, t6, 17
                  slt          a2, a4, s8
                  beq          a4, a6, 772f
                  lui          sp, 226781
                  xori         s5, s2, 303
772:              slli         s8, s2, 22
                  add          s1, t4, ra
                  slli         a2, tp, 12
                  slti         s5, a4, 313
                  add          t2, s3, sp
                  auipc        a7, 764167
                  sltiu        s10, s2, -327
                  slli         t6, s11, 15
                  sll          t3, s4, t0
                  srl          a2, s2, s1
                  srli         t5, s1, 11
                  bgeu         t6, s3, 786f
                  srl          s5, s0, s7
                  lui          a1, 737008
786:              blt          a1, s4, 787f
787:              andi         s8, a2, -5
                  nop
                  add          s8, a2, s6
                  ori          t6, s1, 377
                  auipc        t0, 542462
                  beq          t6, a7, 801f
                  xor          a7, s1, a2
                  bne          s6, tp, 796f
                  add          s8, a3, a6
796:              sltiu        t3, gp, -1997
                  sltiu        s5, sp, 458
                  sub          a5, t0, t6
                  andi         a7, a2, -1266
                  bne          zero, s8, 813f
801:              sltiu        s0, a5, 1595
                  srli         s5, s0, 24
                  and          a2, t0, t0
                  auipc        a5, 134398
                  lui          s3, 5730
                  auipc        s10, 943197
                  sll          a3, s5, t1
                  blt          t0, a1, 819f
                  slti         t3, s7, 105
                  sltu         s10, a7, s8
                  srl          sp, a7, t4
                  bne          a1, a6, 832f
813:              sltiu        s3, t3, -1390
                  add          s9, t4, t3
                  bne          t6, a5, 827f
                  sra          s9, a6, s3
                  sltu         t5, a1, gp
                  lui          t6, 373813
819:              sra          a6, a5, s6
                  srl          sp, s8, a6
                  and          a2, s0, s10
                  sub          s0, tp, a7
                  slli         s3, a6, 6
                  xor          a7, a3, s8
                  sll          t1, s4, s2
                  or           t5, a6, tp
827:              sltiu        s7, s11, -1693
                  slt          s11, s10, a2
                  bge          s11, t6, 833f
                  xor          s10, tp, t3
                  bltu         a6, s4, 851f
832:              slti         gp, s3, -1467
833:              sll          a2, s10, s2
                  srli         a2, t3, 14
                  and          a0, sp, tp
                  blt          t4, s7, 845f
                  xor          tp, s0, a5
                  slti         t3, a0, -1301
                  bne          t6, a5, 846f
                  bltu         a7, t5, 849f
                  sra          s1, s6, s9
                  xor          t0, s6, tp
                  sll          s7, tp, s10
                  andi         a3, s11, 1381
845:              auipc        s5, 185158
846:              srli         gp, a4, 14
                  slt          t2, t3, s0
                  bge          t6, s9, 849f
849:              sra          a4, s10, t4
                  andi         t1, t6, -1099
851:              bgeu         a7, s8, 862f
                  srai         gp, tp, 10
                  addi         s2, a0, 1153
                  lui          a6, 375606
                  bge          t3, s9, 860f
                  srai         s2, zero, 2
                  addi         a0, s2, -1373
                  auipc        s0, 181485
                  sltu         a5, s9, t4
860:              sll          a6, s2, a0
                  blt          a1, s7, 872f
862:              slt          zero, t3, a1
                  ori          s11, s4, -1520
                  sltiu        s5, s2, 836
                  sltiu        s2, s2, 1812
                  srli         sp, s6, 17
                  auipc        zero, 800781
                  bltu         s11, s3, 881f
                  xor          s3, sp, t3
                  nop
                  bltu         t0, s3, 880f
872:              sll          s5, a3, s2
                  bgeu         a6, tp, 885f
                  sll          a3, s5, s1
                  sltu         a5, a7, t4
                  bge          a4, a0, 885f
                  add          sp, s11, a7
                  bge          t6, s10, 893f
                  sltiu        s5, a3, -606
880:              beq          t0, tp, 891f
881:              slti         s1, a2, -1061
                  slli         a5, a2, 25
                  bltu         s4, a5, 886f
                  sll          gp, t1, t3
885:              bne          s5, s2, 889f
886:              bltu         a4, a7, 887f
887:              sll          s10, a7, s11
                  bne          t2, a4, 900f
889:              sltiu        s0, s0, 336
                  xor          s1, s8, a7
891:              add          s10, a2, s2
                  slti         gp, a2, 505
893:              xor          t3, t1, s6
                  srli         t5, s3, 10
                  sltu         t5, s4, a3
                  blt          s10, s5, 897f
897:              bge          s2, t6, 917f
                  bltu         s7, a2, 905f
                  sub          a1, a6, a6
900:              nop
                  slti         tp, a5, 97
                  xori         t6, t2, 565
                  slt          s5, t3, s7
                  andi         s7, a4, -351
905:              auipc        s0, 207303
                  lui          tp, 104959
                  and          t5, tp, s0
                  nop
                  and          t1, a4, s11
                  sub          t5, sp, s11
                  xor          t1, t5, s9
                  sltiu        a5, a3, 1110
                  andi         tp, t6, -1836
                  add          a0, a5, a0
                  sltu         a5, s1, s6
                  bge          s1, a5, 929f
917:              lui          t3, 885883
                  lui          s11, 782719
                  srli         a3, a0, 21
                  sltiu        a2, t4, -517
                  srai         t2, zero, 5
                  bltu         tp, t6, 942f
                  sltiu        a1, s3, -396
                  sub          zero, a7, t2
                  bne          t5, sp, 936f
                  add          a6, a7, sp
                  xori         s10, s7, 222
                  auipc        a1, 508035
929:              addi         s7, s6, -334
                  blt          s5, tp, 940f
                  slt          t1, a2, a0
                  xori         t5, t3, 1279
                  xor          s0, s1, s4
                  bge          a6, t5, 947f
                  srai         s2, a5, 30
936:              bne          s3, s4, 937f
937:              srli         t6, a0, 9
                  sltu         s5, zero, s9
                  slti         a2, t6, 1729
940:              slli         s2, gp, 25
                  srl          a2, a7, s10
942:              ori          a3, zero, -738
                  lui          s11, 991599
                  blt          a2, s4, 947f
                  sub          t6, s2, a6
                  srai         s5, t3, 17
947:              add          t1, ra, s8
                  bgeu         s7, tp, 949f
949:              xor          zero, ra, t3
                  and          gp, a5, s2
                  sltiu        s5, gp, -863
                  beq          t2, s5, 963f
                  ori          s11, a7, -452
                  and          t2, t6, a5
                  beq          t0, a6, 962f
                  slt          t6, a5, a3
                  srai         s0, t5, 0
                  nop
                  xori         t2, s3, 538
                  xori         a3, zero, -991
                  sltiu        t1, a6, -1878
962:              andi         t5, s10, 1747
963:              xor          t5, ra, s0
                  srl          zero, a4, t1
                  srl          s1, s4, a6
                  slt          s3, s2, a1
                  slli         t5, gp, 29
                  sra          a7, ra, s5
                  sll          t3, a7, s6
                  sra          t3, a4, a3
                  sltu         a0, s2, t1
                  sra          sp, a2, sp
                  sltiu        s0, s2, -532
                  bge          t0, t5, 983f
                  slt          s7, a6, s6
                  slt          a0, s1, s10
                  blt          s5, s1, 997f
                  sll          s1, s9, t0
                  and          t3, s5, s8
                  slti         a0, a5, -683
                  or           a7, t6, t6
                  xor          a7, t0, t0
983:              sltiu        s6, a5, -26
                  bgeu         s0, s2, 985f
985:              addi         s3, s11, 710
                  srai         a7, gp, 14
                  sltu         s11, t1, t0
                  beq          t1, a3, 990f
                  sltu         tp, a4, ra
990:              and          s9, s10, s7
                  nop
                  xor          s1, a1, a0
                  andi         a4, a2, -5
                  beq          a3, a2, 1005f
                  slti         a3, s0, 702
                  srl          zero, sp, a2
997:              ori          gp, sp, 1184
                  add          s11, t4, s2
                  and          t1, s9, a6
                  srli         a6, s6, 2
                  srl          a7, zero, t3
                  blt          s11, s10, 1009f
                  lui          a7, 1025607
                  addi         t1, s4, -349
1005:             sll          gp, s6, a5
                  srai         s5, t1, 10
                  lui          s11, 539612
                  bltu         s11, t5, 1009f
1009:             addi         a6, a4, 534
                  bne          t3, s3, 1013f
                  srai         a2, t1, 1
                  or           a0, s0, s0
1013:             beq          gp, sp, 1014f
1014:             sll          t6, s3, a5
                  nop
                  andi         t0, t4, 1467
                  slt          a7, s4, s6
                  bgeu         t4, a6, 1029f
                  xori         s6, s0, -427
                  slti         s7, s1, -1184
                  slli         a5, a4, 20
                  srai         s9, s4, 31
                  lui          a5, 140916
                  srai         a7, s8, 19
                  bne          a6, t0, 1034f
                  slti         a7, a6, 2014
                  sra          a4, t4, tp
                  slti         s10, t1, 1115
1029:             srli         gp, tp, 5
                  bgeu         s1, t6, 1035f
                  sra          s3, gp, ra
                  slti         a5, s11, -690
                  sltiu        a3, s4, 153
1034:             or           t2, s11, sp
1035:             and          gp, s9, t2
                  lui          t0, 337737
                  sub          tp, s6, tp
                  sub          s2, a0, s6
                  bne          s8, s2, 1050f
                  or           a1, s7, s2
                  bne          s11, s8, 1042f
1042:             addi         t3, gp, -1734
                  slt          gp, a5, t4
                  slli         tp, t6, 13
                  srai         t0, s3, 9
                  slli         s1, t2, 26
                  xori         s2, s9, 333
                  xori         tp, gp, 1787
                  sltu         s11, t0, s9
1050:             bge          s5, sp, 1059f
                  sra          a6, s2, s2
                  slti         t6, a6, 1293
                  auipc        a2, 400182
                  auipc        tp, 100380
                  bge          s2, s3, 1068f
                  sll          a4, zero, s3
                  add          a3, a3, gp
                  slt          a0, t4, s0
1059:             slti         a3, a0, -121
                  lui          t1, 265996
                  add          a6, s9, a1
                  sltiu        s2, a1, -161
                  bgeu         a0, a6, 1073f
                  bgeu         gp, t0, 1075f
                  slli         a7, ra, 8
                  slli         a7, zero, 8
                  slt          s9, gp, s10
1068:             xor          s0, s4, a6
                  bne          s4, gp, 1089f
                  bltu         s6, s7, 1090f
                  bge          a1, t6, 1084f
                  srl          zero, t1, s3
1073:             nop
                  beq          a2, a1, 1078f
1075:             or           t1, s0, tp
                  sub          a4, s6, s6
                  blt          a2, s11, 1090f
1078:             sub          s10, zero, s9
                  srli         sp, s1, 22
                  xor          a6, sp, t6
                  srl          s10, s3, s9
                  bltu         a0, tp, 1094f
                  sltu         t0, t4, gp
1084:             bgeu         t1, a5, 1104f
                  srli         s2, ra, 6
                  sub          s8, t5, t6
                  xor          s0, s0, t1
                  xor          a0, ra, a0
1089:             bltu         a6, s4, 1090f
1090:             bne          a1, s7, 1091f
1091:             beq          a1, s0, 1106f
                  beq          tp, s7, 1095f
                  srai         t2, s11, 6
1094:             or           t5, gp, a0
1095:             add          s9, a1, ra
                  auipc        tp, 588380
                  srai         a3, s5, 19
                  srai         sp, sp, 6
                  bge          a7, s4, 1111f
                  sub          sp, t6, a0
                  beq          t1, a4, 1108f
                  bltu         s11, t0, 1113f
                  beq          gp, a2, 1112f
1104:             sltiu        a5, a7, 350
                  slt          t0, s5, t6
1106:             ori          t1, s7, -1841
                  nop
1108:             slli         t3, s3, 12
                  beq          a6, t1, 1120f
                  bgeu         sp, a1, 1112f
1111:             beq          t2, a7, 1112f
1112:             beq          gp, a0, 1125f
1113:             andi         tp, s4, -1734
                  beq          a2, s10, 1125f
                  bge          t2, a4, 1126f
                  ori          a6, s8, 1394
                  blt          s5, s0, 1128f
                  bltu         a6, gp, 1127f
                  xori         gp, a7, 1142
1120:             sltu         t0, s4, t6
                  slt          t0, s3, a6
                  blt          s2, a7, 1135f
                  ori          a0, s0, -282
                  or           s2, s0, ra
1125:             ori          t3, t2, -161
1126:             xor          s8, a3, zero
1127:             ori          a2, a3, -2016
                  and          a1, t6, sp
                  la           a5, sub_7
                  sll          s5, s8, s11
                  xori         t1, s6, -348
                  sra          s2, a3, s10
                  lui          zero, 84328
                  slti         s0, a0, -1676
                  nop
                  addi         a5, a5, -955
                  sltu         gp, a1, a4
sub_6_j8:         jalr         s7, a5, 955 #jump sub_6 -> sub_7
1128:             sra          s7, a3, sp
                  nop
                  add          s11, s0, s8
                  bge          sp, ra, 1141f
                  sub          gp, zero, t5
                  sub          s0, s9, s11
                  slli         t5, a1, 6
1135:             sra          a3, t5, gp
                  auipc        s8, 127266
                  slti         s5, a2, 272
                  bltu         ra, ra, 1141f
                  sltu         t1, t4, gp
                  xor          s2, s4, s7
1141:             srai         a5, s3, 13
                  bge          gp, a5, 1155f
                  nop
                  srai         t5, gp, 5
                  bltu         s8, a7, 1165f
                  add          t1, t0, zero
                  srli         s5, s11, 12
                  addi         gp, s8, -1248
                  ori          s1, a6, 1384
                  sltu         s2, t4, a4
                  slli         t6, s10, 13
                  srai         s5, s2, 26
                  srli         s3, s4, 5
                  sltiu        t2, a7, -114
1155:             srli         t0, t3, 27
                  add          t5, s4, s1
                  slli         t2, s1, 12
                  srli         s6, s9, 5
                  or           a1, s11, a1
                  lui          s0, 301514
                  nop
                  bne          a4, s2, 1173f
                  addi         a0, zero, -1029
                  srl          s0, s10, a7
1165:             auipc        a2, 684567
                  bge          s10, t3, 1178f
                  bge          s2, a7, 1178f
                  sltu         zero, s9, s7
                  nop
                  bge          a7, s4, 1190f
                  slli         s7, t5, 23
                  bltu         s4, s9, 1179f
1173:             slli         s8, s1, 14
                  auipc        s5, 545153
                  sll          a5, a5, t5
                  bne          s7, tp, 1183f
                  bge          s3, s8, 1189f
1178:             slli         a6, zero, 9
1179:             and          t1, a1, a7
                  nop
                  ori          s7, s11, 364
                  bltu         t0, a7, 1197f
1183:             srl          s8, s10, a3
                  bne          s3, s5, 1189f
                  auipc        s5, 1006812
                  ori          s8, zero, 170
                  sra          t2, t1, t4
                  bge          s9, t5, 1189f
1189:             nop
1190:             auipc        a4, 977523
                  beq          s9, s7, 1192f
1192:             slli         t2, t0, 30
                  sltu         s10, a0, s5
                  add          s9, a0, gp
                  ori          s5, a5, -647
                  sub          a6, s4, a3
1197:             beq          a0, s2, 1200f
                  beq          s1, gp, 1200f
                  sll          s10, a3, s5
1200:             slt          t6, ra, s4
                  andi         t5, t2, 453
                  slt          s11, t2, gp
                  srl          s6, s11, s7
                  bne          s7, a2, 1208f
                  la           sp, region_1+1926 #start riscv_load_store_rand_instr_stream_11
                  lh           a6, -1140(sp)
                  lh           a2, -1132(sp)
                  sra          s2, t5, ra
                  sltiu        zero, a7, -1834
                  srl          a6, s8, a0
                  srai         a4, t6, 6
                  nop
                  sll          s5, t6, s1
                  sb           sp, -1805(sp)
                  lbu          a3, -222(sp)
                  lb           a7, -643(sp)
                  sll          s9, s10, sp
                  slt          s1, a7, s7
                  lh           zero, -820(sp)
                  sll          s0, s2, s6
                  lbu          s8, -1372(sp)
                  srli         a0, s11, 14
                  lb           tp, -1835(sp)
                  lh           a2, -846(sp)
                  sb           s7, -1673(sp)
                  sra          t5, a4, s7
                  lw           t5, -66(sp)
                  xor          a4, s5, a6
                  sra          tp, s4, a6
                  slli         a2, t1, 10
                  lh           zero, -716(sp)
                  srai         a7, t1, 8
                  sltiu        s5, s8, -638
                  auipc        s0, 354689
                  sb           t4, -773(sp)
                  andi         s9, t4, 1671
                  lbu          s1, -1446(sp)
                  lb           s2, -185(sp) #end riscv_load_store_rand_instr_stream_11
                  lui          a7, 754485
                  ori          s9, a0, 1659
                  srl          s11, a7, t5
1208:             sll          s2, s5, a6
                  slt          t2, tp, sp
                  bgeu         a7, t5, 1219f
                  sltu         s2, s0, a3
                  srl          s3, a2, a5
                  or           tp, a0, t1
                  auipc        zero, 784259
                  add          a2, s11, s2
                  sltiu        s2, s5, 42
                  or           t3, gp, t4
                  slt          tp, s5, a2
1219:             sra          s6, zero, s5
                  bne          s3, t3, 1240f
                  sll          a7, s6, s3
                  bne          a3, s5, 1223f
1223:             slt          s6, s6, t0
                  beq          gp, s11, 1233f
                  auipc        sp, 841113
                  sltu         t2, sp, t5
                  lui          s0, 373712
                  sltu         s10, ra, zero
                  and          s5, s1, gp
                  beq          s11, tp, 1231f
1231:             lui          s9, 468958
                  addi         gp, s5, 1336
1233:             bne          a6, s0, 1234f
1234:             andi         a0, a5, 1784
                  add          a4, s7, s5
                  bge          t1, t1, 1237f
1237:             and          t1, a7, a1
                  slli         sp, s11, 17
                  blt          s8, s4, 1250f
1240:             sltu         s5, t6, s4
                  sra          gp, a2, s8
                  bgeu         a6, s6, 1251f
                  nop
                  srli         s8, s8, 18
                  xori         t1, s4, 1370
                  bne          a3, zero, 1257f
                  slti         s8, tp, 1397
                  beq          s5, s9, 1258f
                  sltiu        sp, s1, -387
1250:             bgeu         ra, s0, 1263f
1251:             sll          s11, sp, s2
                  xori         s6, ra, -467
                  slti         t0, a3, -1480
                  bgeu         tp, a2, 1274f
                  bge          a6, gp, 1258f
                  xor          a1, s10, ra
1257:             slt          s10, a1, a7
1258:             nop
                  sltiu        t5, t0, 534
                  blt          a4, s8, 1271f
                  bgeu         t3, a4, 1262f
1262:             lui          s0, 904513
1263:             srl          s5, zero, a3
                  beq          t3, sp, 1277f
                  srli         a1, s1, 29
                  or           t2, t0, ra
                  sltiu        s1, t3, 470
                  sub          t6, tp, s5
                  slti         a6, gp, 1985
                  bne          a0, s8, 1282f
1271:             srli         s6, s10, 29
                  bltu         ra, t4, 1284f
                  bltu         a3, s7, 1293f
1274:             srai         t2, s6, 17
                  slt          a3, t6, s1
                  sltiu        s7, s11, 1530
1277:             sltiu        s1, t6, 213
                  or           t3, a0, a7
                  bltu         a2, t3, 1292f
                  sltu         s7, s11, a6
                  or           s6, a7, zero
1282:             sltiu        s11, a1, 507
                  slt          sp, s8, t1
1284:             srai         s2, s11, 9
                  nop
                  nop
                  auipc        s6, 814080
                  sltu         s11, s0, a2
                  sll          a5, gp, s11
                  slli         a6, t0, 19
                  or           gp, a5, a3
1292:             and          t3, t2, sp
1293:             addi         zero, a2, 339
                  addi         a1, a2, -1562
                  lui          zero, 167511
                  ori          t2, a5, -728
                  add          a7, s10, s0
                  bge          a5, t2, 1309f
                  blt          s1, s4, 1300f
1300:             beq          a1, s1, 1309f
                  sltiu        t5, t0, 114
                  addi         t5, a0, 1630
                  addi         gp, t4, -394
                  bltu         ra, t4, 1308f
                  sll          a5, t6, s6
                  bltu         t4, a5, 1311f
                  bge          a7, a5, 1309f
1308:             nop
1309:             sra          s1, gp, s10
                  srai         s6, a7, 9
1311:             xor          a4, s11, a5
                  bgeu         sp, s3, 1315f
                  ori          sp, t0, -167
                  srai         s6, zero, 3
1315:             or           s11, s10, s8
                  andi         tp, t6, 1045
                  sll          a4, a0, s2
                  bgeu         a0, s5, 1329f
                  xori         t0, s11, -1987
                  addi         t1, a3, -591
                  beq          t2, t6, 1328f
                  sll          s5, t3, t4
                  ori          a6, t2, -441
                  sltu         gp, s8, t4
                  xori         a4, t3, 1602
                  sltiu        s7, s0, 176
                  slti         a5, a1, -1665
1328:             auipc        s0, 779641
1329:             addi         a5, gp, 711
                  bltu         a5, s10, 1337f
                  sltu         a2, a5, a7
                  bge          s3, t0, 1341f
                  andi         a3, zero, -20
                  blt          t3, t1, 1335f
1335:             beq          a2, s4, 1350f
                  bne          sp, s10, 1356f
1337:             auipc        a3, 285466
                  lui          a3, 519805
                  srl          t6, s5, s1
                  srli         a3, s8, 12
1341:             sll          s11, s6, tp
                  auipc        s11, 466226
                  sra          a5, s8, a7
                  andi         a6, s11, -1045
                  sra          s3, tp, s11
                  sltu         gp, a4, a3
                  sub          s8, gp, s8
                  andi         s2, a6, -39
                  bne          s3, s1, 1360f
1350:             xor          t5, tp, s10
                  srl          a7, a0, s6
                  sltiu        s7, a6, -1655
                  and          s7, a5, t6
                  auipc        a4, 716634
                  nop
1356:             sltiu        t0, a7, -1360
                  andi         t1, s5, -1778
                  sll          a5, s5, s7
                  auipc        s7, 393988
1360:             srl          a0, a2, s3
                  slti         s11, a7, -491
                  srli         a0, s9, 3
                  slt          t6, ra, sp
                  srli         a7, t5, 17
                  bne          a7, gp, 1366f
1366:             srli         s5, t5, 2
                  ori          t1, tp, -1185
                  and          t0, t3, gp
                  auipc        a6, 679938
                  xori         t2, ra, -650
                  xori         t3, s1, -1197
                  blt          a7, sp, 1383f
                  beq          zero, gp, 1385f
                  nop
                  slli         a3, s7, 2
                  bne          a4, a5, 1389f
                  bltu         zero, t6, 1386f
                  bne          s7, s6, 1385f
                  srli         s1, s3, 24
                  and          gp, a5, a6
                  slli         sp, s9, 12
                  ori          t1, a0, -1674
1383:             srai         s11, a1, 3
                  or           s3, s11, zero
1385:             and          s9, t1, a1
1386:             andi         s1, sp, -1796
                  andi         s0, s9, -1220
                  and          tp, a5, sp
1389:             srl          t2, ra, s2
                  bgeu         a2, a6, 1410f
                  bne          gp, s0, 1395f
                  sra          t5, s0, zero
                  srai         s5, s9, 10
                  nop
1395:             sra          t1, zero, s11
                  sll          s8, t2, a3
                  slti         s10, a2, 1253
                  bltu         a4, s1, 1409f
                  sltu         s7, s10, gp
                  bltu         s10, t3, 1407f
                  or           s10, a0, gp
                  bge          a3, s11, 1411f
                  slti         sp, s10, 1073
                  bltu         s2, a7, 1416f
                  bltu         gp, s7, 1414f
                  srli         s5, s10, 16
1407:             add          a7, t6, s3
                  lui          s10, 1734
1409:             andi         t3, s2, -1242
1410:             xori         t5, s6, 1072
1411:             slli         a4, s3, 13
                  bne          t3, s1, 1425f
                  srli         a1, s10, 0
1414:             xori         s8, s2, -1885
                  add          t0, a5, a0
1416:             bge          s10, s5, 1436f
                  slli         t3, a0, 13
                  sltu         s5, s10, a5
                  or           a5, s11, s9
                  xori         s3, s2, -303
                  ori          sp, s10, -1170
                  slt          s10, t1, a1
                  lui          s7, 1045945
                  lui          a7, 976210
1425:             srl          t5, gp, t5
                  sltu         gp, t3, a1
                  andi         s6, s0, -1861
                  sra          t3, s9, s0
                  bgeu         s0, sp, 1430f
1430:             slt          s8, t4, a7
                  sub          s5, a2, s8
                  or           a3, s4, s4
                  xor          s11, s0, a5
                  nop
                  auipc        s2, 646251
1436:             srli         t1, a2, 16
                  blt          t0, s10, 1438f
1438:             slt          t6, s4, s0
                  slli         t5, t0, 5
                  slti         s6, t0, 1503
                  sltu         a2, s2, t0
                  nop
                  beq          t3, ra, 1444f
1444:             bge          t3, s2, 1447f
                  andi         sp, t6, 1672
                  nop
1447:             auipc        s0, 716489
                  srai         t5, a6, 11
                  addi         s1, tp, 359
                  slli         a7, s10, 3
                  or           s10, a3, s3
                  or           a7, gp, t2
                  blt          s3, s6, 1473f
                  or           t2, a4, t5
                  slt          a4, a2, s3
                  sll          s2, a2, a7
                  srl          zero, s2, s5
                  slt          s5, t2, t6
                  sll          s5, s7, ra
                  blt          s9, t5, 1473f
                  auipc        t1, 195927
                  or           s1, a2, zero
                  sltu         a2, t4, a1
                  bltu         tp, a3, 1475f
                  ori          tp, ra, -1892
                  bne          a0, s9, 1467f
1467:             auipc        t1, 519095
                  bgeu         t0, a2, 1473f
                  srai         s10, a7, 13
                  slli         t2, s9, 12
                  lui          s3, 858676
                  lui          s5, 588273
1473:             srli         a2, s6, 5
                  sub          t3, zero, t4
1475:             or           s8, zero, ra
                  add          t5, s6, a3
                  la           sp, region_1+829 #start riscv_load_store_rand_instr_stream_0
                  sb           s6, 244(sp)
                  sra          t2, t6, ra
                  xori         a3, s6, 1931
                  auipc        t2, 425975
                  lui          s2, 501413
                  sb           t6, 160(sp)
                  sw           a2, -69(sp)
                  lbu          t1, 162(sp)
                  sb           zero, -246(sp)
                  xor          a3, tp, sp
                  slli         s0, tp, 17
                  lb           a0, -214(sp)
                  sh           a0, -199(sp)
                  nop
                  lb           t3, -202(sp)
                  sb           s11, 256(sp)
                  lui          t5, 513733
                  sb           a6, 233(sp)
                  lhu          a2, -211(sp)
                  lbu          s6, -134(sp)
                  lbu          s11, -244(sp)
                  lhu          a7, -11(sp)
                  sb           s6, 31(sp)
                  lh           t5, -11(sp)
                  lbu          s11, 89(sp)
                  sh           a4, -243(sp)
                  sltu         t2, a6, t2
                  sb           s7, 138(sp)
                  lb           a1, -150(sp)
                  sltu         t0, t2, ra
                  lhu          s10, 47(sp)
                  sltu         s6, a3, t1
                  ori          tp, s6, -571
                  lw           a6, 147(sp)
                  lbu          a3, 178(sp)
                  sw           a3, 79(sp)
                  lb           s0, -158(sp)
                  sltu         s6, a5, ra
                  lbu          s6, 162(sp)
                  sh           s9, 57(sp)
                  srai         a5, s0, 17
                  lb           s1, 135(sp)
                  auipc        a6, 747183
                  lbu          t2, 249(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         a5, gp, 154
                  ori          a6, s2, 745
                  slli         gp, t4, 5
                  beq          a5, a4, 1483f
                  ori          s5, a2, -143
                  bne          t3, s9, 1493f
1483:             auipc        s2, 522117
                  sltu         a5, a5, s0
                  slti         s3, t5, 1886
                  blt          t6, a2, 1501f
                  sll          s9, s1, tp
                  slli         s7, a3, 14
                  bltu         s0, a4, 1491f
                  srli         a6, a6, 1
1491:             auipc        t0, 974294
                  sltiu        a3, a6, -1978
1493:             sltu         tp, a5, t0
                  sub          a4, s1, s1
                  add          a6, t3, tp
                  beq          s2, ra, 1506f
                  slti         t5, ra, 1470
                  sub          tp, a3, s10
                  addi         s2, ra, -947
                  blt          a7, sp, 1501f
1501:             nop
                  srl          s6, s4, t3
                  sub          t5, sp, s7
                  blt          s2, t5, 1511f
                  bgeu         s6, a0, 1516f
1506:             and          gp, t1, a3
                  bge          s4, t6, 1527f
                  andi         a2, gp, 391
                  bltu         a0, a0, 1524f
                  xori         s5, s2, 329
1511:             blt          s4, s11, 1512f
1512:             sra          s8, a2, s9
                  srai         s8, s4, 16
                  auipc        a6, 988876
                  slli         s5, s0, 3
1516:             sltiu        s7, s8, -1233
                  auipc        s11, 1015219
                  srli         tp, a2, 9
                  sub          a2, t0, s2
                  slli         t5, a3, 11
                  sltiu        s11, s2, 1693
                  sra          s2, s1, t6
                  srai         tp, s10, 6
1524:             sra          a7, s1, gp
                  sll          s11, a3, ra
                  srl          t6, a0, s5
1527:             lui          a0, 678920
                  addi         a4, s5, 1051
                  auipc        t0, 407565
                  srli         a2, s2, 21
                  srli         s2, zero, 2
                  srli         a0, ra, 19
                  bgeu         sp, s3, 1546f
                  blt          a5, t1, 1545f
                  sltu         s6, a5, s9
                  or           s2, a7, t1
                  slli         sp, sp, 24
                  slt          a7, t6, s7
                  bltu         a5, s2, 1549f
                  bge          s7, s7, 1549f
                  or           s3, s9, a5
                  or           s0, a7, t1
                  bltu         a4, t3, 1547f
                  bltu         s0, t0, 1547f
1545:             sltu         a4, a2, s8
1546:             blt          s2, t1, 1555f
1547:             srli         t1, t2, 22
                  addi         a3, s9, -962
1549:             slt          t1, sp, s1
                  bgeu         s8, s2, 1563f
                  bgeu         a4, t5, 1558f
                  slli         s5, s10, 19
                  nop
                  and          zero, zero, a0
1555:             srai         s6, s11, 15
                  sub          sp, zero, a6
                  slti         s8, a3, -846
1558:             beq          a3, a7, 1560f
                  ori          zero, a5, -949
1560:             srai         a6, tp, 11
                  or           s3, a3, zero
                  srli         s6, s10, 4
1563:             xori         tp, t0, -1654
                  srai         s3, a1, 10
                  sll          t1, a2, s10
                  slti         a4, a7, 1133
                  srai         tp, s1, 2
                  lui          s2, 956338
                  xori         a6, a2, 2039
                  bge          s4, s0, 1590f
                  srai         s6, a2, 16
                  sltiu        a1, s8, 912
                  lui          a3, 421625
                  srl          s5, s5, s6
                  srai         t5, a6, 18
                  addi         a5, s10, -255
                  add          s1, gp, s2
                  slt          t3, t1, s6
                  and          t0, t3, s9
                  sltu         s11, t3, gp
                  srai         s9, s3, 29
                  srli         t0, s0, 2
                  bne          a0, a5, 1586f
                  xori         t6, t2, -1806
                  srai         a6, a0, 19
1586:             blt          s9, s0, 1597f
                  bge          s2, s5, 1600f
                  add          gp, s9, s0
                  slli         s6, ra, 8
1590:             sltiu        tp, s1, 1271
                  slti         t2, sp, 1980
                  nop
                  add          a4, t2, t1
                  and          s6, ra, s9
                  and          s3, s1, s1
                  or           gp, t3, a4
1597:             slt          a3, tp, s1
                  srl          gp, a5, t5
                  add          a4, a3, s4
1600:             bne          gp, a1, 1601f
1601:             add          t0, a6, s0
                  slt          t6, s8, t0
                  srli         s6, s7, 0
                  xori         tp, a3, -1208
                  ori          s6, s7, -458
                  addi         a7, a2, -1906
                  srl          s8, gp, s3
                  bge          a3, a4, 1620f
                  slli         gp, s10, 5
                  srli         t0, t5, 22
                  sll          a5, s10, s10
                  slli         s8, s3, 20
                  add          zero, t4, zero
                  ori          tp, s1, 1499
                  nop
                  sub          gp, sp, t4
                  sll          s7, t2, t2
                  slt          a2, t0, t4
                  bltu         s11, s8, 1620f
1620:             nop
                  blt          gp, ra, 1622f
1622:             slli         a0, s11, 10
                  xori         s6, s0, 163
                  slti         t6, ra, 148
                  xori         a3, s3, 1823
                  xori         s9, s8, 1344
                  srai         s10, s11, 23
                  bltu         t1, a6, 1639f
                  ori          a6, t2, 582
                  sub          t6, a0, sp
                  slti         a5, s5, 792
                  srai         t0, s7, 30
                  sra          zero, tp, ra
                  bne          s0, t2, 1643f
                  srai         a7, a1, 13
                  sltu         t0, s7, s8
                  sub          s11, s1, s4
                  slt          s5, t5, a4
1639:             nop
                  bltu         a0, tp, 1652f
                  sra          gp, s9, t0
                  andi         sp, a0, -1957
1643:             bge          t1, a4, 1663f
                  ori          s10, ra, 1596
                  srli         t1, s5, 29
                  srl          s8, s0, t4
                  slti         s1, t2, 746
                  slti         s2, s8, -1988
                  or           sp, s3, a5
                  sra          zero, t6, a4
                  bltu         a4, a6, 1662f
1652:             sltu         zero, t2, a1
                  sra          s11, a1, t0
                  bltu         a1, s10, 1659f
                  and          s6, sp, ra
                  bge          s6, t1, 1665f
                  beq          s11, a1, 1667f
                  blt          a4, s5, 1678f
1659:             or           a5, a2, s3
                  bge          s9, t2, 1661f
1661:             blt          tp, sp, 1670f
1662:             andi         s6, a3, 995
1663:             addi         sp, s8, 1587
                  sra          sp, s3, s5
1665:             slli         t3, s3, 0
                  bne          s10, s1, 1679f
1667:             srli         zero, s8, 15
                  bltu         s0, t4, 1669f
1669:             addi         s11, zero, -579
1670:             srli         s10, s5, 3
                  bgeu         t4, t6, 1674f
                  nop
                  bne          t4, t4, 1684f
1674:             blt          t4, s8, 1675f
1675:             beq          ra, s8, 1676f
1676:             lui          gp, 119039
                  bgeu         t0, t3, 1688f
1678:             lui          s10, 599683
1679:             ori          s7, s4, -519
                  or           a2, s5, gp
                  and          a7, s6, sp
                  beq          a1, a7, 1685f
                  add          s2, s6, s1
1684:             xori         s3, tp, 1315
1685:             or           s7, a1, s7
                  sll          gp, a1, t3
                  bne          s11, t1, 1694f
1688:             lui          t2, 454961
                  slt          s10, zero, a4
                  slli         s5, ra, 19
                  bltu         s7, sp, 1700f
                  bgeu         s8, t4, 1705f
                  nop
1694:             srai         t5, a1, 8
                  nop
                  or           s11, s6, sp
                  lui          a1, 244063
                  sub          a2, a2, a4
                  xori         s0, a2, -357
1700:             lui          s5, 985559
                  or           a2, a0, t2
                  sra          s6, tp, a2
                  sra          s2, s0, t6
                  slli         s5, t6, 9
1705:             or           s2, s0, s7
                  lui          t6, 451719
                  or           a5, a1, s5
                  srai         tp, gp, 26
                  and          a2, tp, a6
                  addi         a4, a6, 1125
                  srli         s7, s5, 31
                  sltu         s11, s5, a2
                  slti         a4, s5, 1747
                  xor          t3, s9, s1
                  slt          s2, s8, a0
                  ori          s11, t6, -1264
                  bgeu         a0, s1, 1728f
                  bge          a5, a4, 1720f
                  or           a0, a3, gp
1720:             slti         t0, zero, 1489
                  add          t1, s0, a7
                  srl          s9, s2, zero
                  auipc        s11, 433641
                  and          a0, a2, s11
                  ori          s6, t1, -1584
                  nop
                  slt          a6, a0, s11
1728:             sltiu        s11, a4, 2036
                  xori         s0, s5, 571
                  bge          a7, t4, 1737f
                  sra          a4, s6, a1
                  or           t6, sp, s9
                  or           a7, sp, t4
                  auipc        s7, 414320
                  sll          s5, s3, s3
                  bge          zero, s10, 1745f
1737:             addi         s3, s5, 1514
                  sltiu        s2, t0, 1023
                  blt          s7, t0, 1745f
                  ori          tp, a0, -1785
                  nop
                  sll          t0, t2, ra
                  auipc        s8, 1001590
                  bge          t2, s4, 1745f
1745:             srl          a4, a0, t2
                  andi         s11, t2, 436
                  sra          a6, s6, s5
                  and          s2, t0, s9
                  lw           s7, 4(t4)
                  addi         a0, s11, -1309
                  addi         t4, t4, 24
                  sub          a1, zero, s9
2310:             addi x26, x23, 0
2310:             jalr x26, x26, 0
sub_8:            or           s9, s3, s9
                  lui          zero, 826160
                  sra          s10, a3, a3
                  slti         s8, t4, 924
                  andi         s8, a5, -1692
                  slli         t0, t5, 29
                  andi         tp, s1, -2006
                  addi         t4, t4, -24
                  sw           s7, 4(t4)
                  add          s3, s5, s2
                  slli         a4, t2, 7
                  slt          s1, s2, s10
                  blt          s6, a0, 11f
                  sltu         s3, s2, s10
                  bgeu         s2, a0, 11f
                  nop
                  bge          a2, a2, 11f
                  bge          s9, a6, 9f
                  xori         a0, s8, -105
9:                addi         a3, a6, -720
                  addi         sp, a3, -1853
11:               and          gp, s4, a7
                  addi         a6, s9, 1457
                  add          a2, s0, a1
                  slt          s5, s4, s7
                  lw           s7, 4(t4)
                  lui          s1, 362542
                  sub          sp, ra, tp
                  addi         t4, t4, 24
                  slti         s5, s1, -1258
                  addi         sp, zero, -1876
                  srl          s9, a5, a4
32:               addi x16, x23, 1
32:               jalr x16, x16, 0
sub_3:            xori         a7, s11, -1448
                  slli         s10, a6, 24
                  slli         a5, s4, 28
                  sra          s1, s11, s0
                  srli         s3, t2, 9
                  bltu         a2, a0, sub_3_stack_p
                  srli         a2, s1, 23
sub_3_stack_p:    addi         t4, t4, -32
                  xor          s10, t0, tp
                  sw           s7, 4(t4)
                  lui          s1, 734281
                  la           sp, region_1+201 #start riscv_load_store_rand_instr_stream_13
                  sb           s10, 15(sp)
                  lb           s0, -9(sp)
                  lui          s2, 795824
                  lhu          s1, 5(sp)
                  lui          a3, 81965
                  lb           s8, 0(sp)
                  sb           s4, 2(sp)
                  lb           s10, -14(sp)
                  lb           s10, -13(sp)
                  auipc        tp, 342697
                  sltiu        s0, zero, 1966
                  lui          s6, 949846
                  nop
                  lw           a1, 3(sp)
                  add          a2, zero, s2
                  sltiu        t1, a0, -1883
                  lb           t3, 12(sp)
                  sll          a7, a6, s5
                  lb           a2, -12(sp)
                  xor          zero, s3, t1
                  srl          t2, a5, s11
                  lb           t6, 8(sp)
                  srli         s3, tp, 5
                  auipc        a7, 804659
                  sh           s7, 7(sp)
                  lbu          t3, -8(sp) #end riscv_load_store_rand_instr_stream_13
                  la           a0, region_1+1344 #start riscv_load_store_rand_instr_stream_0
                  xori         a7, t4, 1393
                  auipc        a6, 168946
                  xor          s10, s11, a2
                  sltiu        s9, s3, 395
                  lbu          t3, -48(a0)
                  and          t3, ra, t6
                  sub          sp, a5, t4
                  lb           s7, 33(a0)
                  sb           a5, 37(a0)
                  lb           a1, -22(a0)
                  lui          t1, 49113
                  auipc        t0, 770713
                  sh           s5, 14(a0)
                  slt          zero, zero, t1
                  xor          s10, t1, ra
                  sra          s8, a6, s2
                  add          t1, s10, sp
                  andi         t0, s7, -1234
                  auipc        tp, 583128
                  lhu          s6, -32(a0)
                  sb           a5, 14(a0)
                  nop
                  sb           s3, -3(a0)
                  lb           s3, -60(a0)
                  and          tp, gp, s8
                  srai         s3, s9, 16
                  and          a1, a2, t6
                  sh           s6, 42(a0)
                  nop
                  sltu         a6, t0, t2
                  sb           tp, 39(a0)
                  sra          s5, s5, t2
                  lhu          s5, -22(a0)
                  srl          t6, t3, tp
                  srli         t5, tp, 1
                  nop
                  sub          a1, a5, gp
                  lb           t6, 29(a0) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+1518 #start riscv_load_store_rand_instr_stream_7
                  sb           s10, 8(s7)
                  xori         s3, gp, 792
                  lb           s1, 10(s7)
                  srl          s0, t6, t4
                  lbu          s0, -9(s7)
                  srli         t1, a1, 6
                  lb           t0, 13(s7)
                  sb           a5, 15(s7)
                  sll          s5, s0, s7
                  lbu          a1, 7(s7)
                  lh           zero, 0(s7)
                  andi         s6, a5, 1697
                  sh           ra, 0(s7)
                  sub          a2, a5, a3
                  sub          s10, s11, s9
                  srli         a3, ra, 18
                  lh           s5, 8(s7)
                  add          t5, t1, s8
                  andi         t5, a7, 364
                  xor          s10, t0, t3
                  slt          a2, s7, s0
                  lb           sp, 5(s7)
                  lhu          s9, 8(s7)
                  xor          s9, s2, a5
                  slt          sp, s0, s9
                  lb           s0, 15(s7)
                  lh           s0, -16(s7)
                  sb           ra, 3(s7)
                  sltiu        a2, tp, -226
                  sw           a2, 6(s7)
                  sub          tp, s2, s0
                  xor          s5, t6, t0
                  srai         zero, a0, 11
                  lhu          s1, -10(s7)
                  ori          gp, t2, 709
                  sll          tp, s2, ra
                  sb           s8, 5(s7)
                  auipc        t5, 509576
                  addi         a2, s4, -1272
                  lb           a5, 12(s7)
                  lbu          tp, 5(s7)
                  xor          t5, a4, t5
                  xori         s6, a1, -18
                  sra          a1, t2, s1
                  sra          s0, a6, t5
                  ori          a5, t2, 1556
                  and          t1, gp, a5
                  sb           s6, -13(s7)
                  sb           t5, -8(s7)
                  lbu          a6, -5(s7)
                  sb           a4, -9(s7)
                  lb           s3, 0(s7) #end riscv_load_store_rand_instr_stream_7
                  la           a1, region_1+1021 #start riscv_load_store_rand_instr_stream_4
                  lh           t2, 55(a1)
                  lb           s3, 21(a1)
                  lw           s10, -29(a1)
                  auipc        t5, 217134
                  ori          s2, s6, -937
                  lb           sp, -46(a1)
                  sb           a1, 2(a1)
                  sb           zero, 54(a1)
                  sh           a3, -59(a1)
                  andi         sp, sp, -1925
                  lb           t2, -60(a1)
                  lb           s3, -22(a1)
                  srai         s11, s1, 24
                  slt          s3, s10, a4
                  sh           s8, 9(a1)
                  sb           t6, 12(a1)
                  srai         a6, a3, 27
                  lbu          sp, 50(a1)
                  or           t3, s4, s2
                  slti         a3, a2, 541
                  lb           s9, 24(a1)
                  lbu          zero, -6(a1)
                  slt          t0, a5, tp
                  or           sp, a6, s2
                  slli         s3, t1, 1
                  sb           t5, 32(a1)
                  sb           s8, -40(a1)
                  sub          gp, s10, t2
                  sra          s1, s1, s1
                  lb           s3, 42(a1)
                  auipc        s5, 864336
                  sb           s0, -63(a1)
                  lb           s3, -22(a1)
                  lbu          zero, -30(a1)
                  sb           s4, -29(a1)
                  xor          s3, s9, s2
                  srli         t6, a7, 29
                  lbu          s0, 62(a1)
                  sb           a2, 54(a1)
                  ori          s5, gp, 553
                  lw           s6, 39(a1)
                  srl          a0, a3, s11
                  lbu          t5, -42(a1)
                  sb           t2, -31(a1)
                  sh           s9, 45(a1)
                  lhu          s10, -61(a1)
                  lb           tp, -45(a1)
                  lbu          a7, 58(a1) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+528 #start riscv_load_store_rand_instr_stream_15
                  sb           s7, 2(sp)
                  lh           a3, 16(sp)
                  lbu          a3, -13(sp)
                  sh           tp, 4(sp)
                  lb           a6, 13(sp)
                  addi         s3, a5, 882
                  xor          s6, s0, t6
                  lb           a0, -13(sp)
                  sb           s3, 13(sp)
                  lui          a1, 632447
                  lhu          t5, 8(sp)
                  lh           s11, 12(sp)
                  and          tp, t3, t6
                  lh           a5, -14(sp)
                  srai         s2, a2, 24
                  lbu          t1, 9(sp)
                  nop
                  lui          gp, 701305
                  sb           t1, 7(sp)
                  srli         t1, gp, 16
                  lh           s7, -8(sp)
                  lbu          t1, -14(sp)
                  ori          a2, t6, 504
                  slt          a7, a1, t2
                  sw           ra, 12(sp)
                  sra          t0, s9, tp
                  sb           s1, -9(sp)
                  lbu          s9, -15(sp)
                  sra          s3, a0, a2
                  srl          gp, s9, t0
                  sb           tp, 9(sp)
                  sltu         s10, a6, zero
                  nop
                  lhu          s7, 8(sp)
                  ori          a3, sp, -1281
                  lb           t6, 1(sp)
                  lb           a0, -9(sp)
                  addi         t6, t6, 980
                  sll          tp, s6, sp
                  sb           s8, -3(sp)
                  srai         a0, t0, 28
                  ori          tp, s1, 592
                  nop
                  lh           t6, -8(sp)
                  xor          t1, t6, s0
                  sh           a4, -6(sp)
                  lb           a5, 13(sp) #end riscv_load_store_rand_instr_stream_15
                  la           s6, region_1+142 #start riscv_load_store_rand_instr_stream_10
                  xori         zero, t6, 552
                  sub          a2, s6, s9
                  addi         a5, s7, -1554
                  xor          gp, t0, a6
                  nop
                  lbu          a0, 40(s6)
                  lbu          s10, 41(s6)
                  lw           s11, 6(s6)
                  lhu          s3, -24(s6)
                  slli         a1, s4, 0
                  slti         tp, s11, -1587
                  lb           s2, -27(s6)
                  lui          s3, 819777
                  lb           s7, -37(s6)
                  lbu          sp, -59(s6)
                  lbu          s2, 41(s6)
                  sub          s8, a3, s9
                  sltiu        gp, s1, -1645
                  lbu          a0, 55(s6)
                  sb           a0, 37(s6)
                  auipc        s10, 1045885
                  sb           s1, -20(s6)
                  sb           t1, -43(s6)
                  sll          s7, s11, t4
                  lb           t2, 43(s6)
                  lb           s10, 48(s6)
                  sh           t1, -46(s6)
                  sub          tp, a1, s5
                  and          t6, a7, a2
                  slli         s11, a6, 0
                  sltu         a3, s3, a4
                  sw           a5, 22(s6)
                  sb           s0, -21(s6) #end riscv_load_store_rand_instr_stream_10
                  la           s11, region_0+1034 #start riscv_load_store_rand_instr_stream_12
                  sra          tp, a1, s6
                  sb           a2, -73(s11)
                  srai         zero, s10, 22
                  addi         s7, a1, -1494
                  sra          tp, s3, s4
                  lb           a2, 412(s11)
                  srli         a1, a6, 19
                  sltiu        s1, a3, -134
                  srl          t0, a7, t4
                  xori         t0, t6, -617
                  or           a4, a6, s10
                  sb           a7, 579(s11)
                  or           a4, s8, a7
                  lb           s2, 753(s11)
                  lhu          gp, 424(s11)
                  srai         a4, gp, 2
                  lb           t2, -759(s11)
                  xori         a7, s7, 1952
                  lb           s7, 37(s11)
                  lbu          zero, 403(s11)
                  andi         t1, s2, 107
                  lbu          t5, 55(s11)
                  lb           a3, -105(s11)
                  slli         s8, s4, 4
                  lhu          a3, 696(s11)
                  lb           gp, -313(s11)
                  lb           a6, -972(s11)
                  srai         a7, s8, 25
                  srai         s2, s8, 30
                  srli         a3, t1, 20
                  lb           s10, 567(s11)
                  lh           t6, -748(s11)
                  sb           s1, 891(s11)
                  lw           tp, -542(s11)
                  addi         s6, zero, -471
                  srli         t2, t0, 18
                  slti         a3, a4, -1971
                  lbu          sp, -698(s11)
                  sb           ra, 638(s11)
                  sb           s5, 489(s11)
                  lbu          a0, -432(s11)
                  lb           tp, -244(s11)
                  auipc        s0, 272489
                  nop
                  slt          tp, s5, zero
                  sb           t2, 844(s11)
                  sltiu        s10, a1, -1517
                  slli         s0, s0, 0
                  lb           s9, 369(s11)
                  slli         t5, a3, 4
                  srl          s3, t6, s8
                  sb           a2, 808(s11)
                  sra          t3, t6, s9
                  addi         t6, t2, -1170
                  lhu          s3, -892(s11)
                  nop
                  sb           s11, -807(s11)
                  lb           t6, -749(s11)
                  lbu          s7, -915(s11) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+513 #start riscv_load_store_rand_instr_stream_1
                  xori         zero, s6, -1090
                  sra          t3, t2, s4
                  sltiu        s5, s9, -941
                  nop
                  sra          s3, t1, s10
                  lbu          t2, 37(sp)
                  lbu          t3, 42(sp)
                  srl          tp, s10, a2
                  andi         a1, a7, -388
                  lb           s6, -9(sp)
                  addi         a5, s4, 206
                  lbu          a6, -18(sp)
                  lb           s6, 14(sp)
                  xori         gp, t5, -960
                  lb           t0, -16(sp)
                  slt          s3, a5, s2
                  lbu          s7, 26(sp)
                  sb           s7, -11(sp)
                  lhu          s10, 21(sp)
                  sb           t0, -27(sp)
                  lbu          zero, 36(sp)
                  slt          a7, a0, t4
                  srai         t0, tp, 18
                  lh           gp, -35(sp)
                  sb           s4, 7(sp)
                  and          a5, t4, s6
                  sltu         t3, t6, t5
                  lb           s7, -16(sp)
                  lh           s5, -17(sp)
                  lh           a1, -19(sp)
                  ori          t6, zero, 1428
                  sh           t4, -61(sp)
                  srai         s10, a7, 27
                  sltu         s3, a6, a7
                  lbu          t3, 12(sp)
                  srli         s6, a4, 28
                  sb           ra, 22(sp)
                  sll          s10, t1, s5
                  sb           s2, 60(sp)
                  lbu          s10, -21(sp)
                  sb           s2, -55(sp)
                  lbu          a0, -57(sp)
                  sra          zero, t5, a5
                  sh           s5, 7(sp)
                  addi         s10, t6, -1473
                  sb           a4, 9(sp)
                  lb           s7, 43(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t6, region_0+1409 #start riscv_load_store_rand_instr_stream_6
                  lbu          t0, 326(t6)
                  lb           s9, -1055(t6)
                  nop
                  or           s10, t0, s5
                  sb           s3, 359(t6)
                  lui          s11, 760406
                  lb           s9, 539(t6)
                  srl          s0, gp, t4
                  addi         a2, s5, -1644
                  slti         s8, t3, 1961
                  auipc        tp, 728000
                  and          t0, s2, a1
                  add          t3, tp, a3
                  and          s7, t3, sp
                  andi         a0, s0, -1702
                  sll          t2, s7, zero
                  lh           gp, -565(t6)
                  lh           s9, -1159(t6)
                  lb           a3, -508(t6)
                  addi         a5, s0, 1679
                  srai         s5, s4, 6
                  lb           t3, -1318(t6)
                  sb           s4, -934(t6)
                  xori         t1, s0, -773
                  and          s10, s3, a3
                  xori         a3, gp, 1034
                  lbu          s0, 517(t6)
                  nop
                  xor          t1, a5, a0
                  auipc        t2, 33748
                  sll          a0, t1, s4
                  sb           a6, -587(t6)
                  sltiu        s0, s10, 314
                  nop
                  lb           tp, -1228(t6)
                  sltiu        a5, t6, 1765
                  and          a5, a1, a2
                  sltiu        t2, s7, 61
                  sh           t4, -791(t6)
                  and          s6, a6, t6
                  srai         s9, zero, 21
                  lbu          t3, -592(t6)
                  lb           t1, -255(t6) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+631 #start riscv_load_store_rand_instr_stream_9
                  sb           a1, 5(sp)
                  sb           gp, -10(sp)
                  lui          a1, 541560
                  sb           t2, -4(sp)
                  lbu          a7, 0(sp)
                  srai         t5, s6, 20
                  sll          a1, a6, a3
                  sra          t6, s6, s0
                  xori         s11, s3, -1494
                  lb           s10, -13(sp)
                  lb           s1, -4(sp)
                  srai         t5, s9, 22
                  sb           t2, 12(sp)
                  srli         zero, a5, 0
                  ori          s10, zero, -1816
                  xor          s10, a3, t0
                  lb           a2, 6(sp)
                  sh           a3, -3(sp)
                  and          s5, t1, s9
                  or           s2, gp, s6
                  lbu          a6, 6(sp)
                  srai         s10, a6, 9
                  andi         s0, a1, -1845
                  sb           t1, 4(sp)
                  lh           tp, -5(sp)
                  lui          t1, 318224
                  ori          a0, ra, 1474
                  slli         t3, t6, 21
                  sw           t1, -7(sp)
                  nop
                  lb           a7, -11(sp)
                  auipc        s11, 400170
                  ori          a1, a6, 1162
                  addi         t0, s2, -595
                  lh           t3, -13(sp)
                  lbu          a2, 4(sp)
                  lbu          s2, -14(sp)
                  srli         s1, t4, 19
                  sb           s2, -9(sp)
                  sb           s8, -6(sp)
                  xori         a7, a0, 1321
                  xor          s3, a3, t5
                  lb           gp, -2(sp)
                  srl          t0, s3, a3
                  slti         a2, tp, 338
                  lb           s0, -6(sp)
                  sb           a6, 7(sp) #end riscv_load_store_rand_instr_stream_9
                  la           gp, region_0+1678 #start riscv_load_store_rand_instr_stream_14
                  sb           s8, 256(gp)
                  lbu          t1, 39(gp)
                  lhu          sp, 184(gp)
                  sh           s6, 214(gp)
                  lb           s6, -193(gp)
                  sb           s3, 131(gp)
                  or           a4, s0, tp
                  or           s3, a1, s1
                  lb           t3, 1(gp)
                  srl          t2, a5, s4
                  add          t1, zero, s11
                  lbu          t0, 8(gp)
                  lb           t1, -211(gp)
                  addi         t5, t0, -192
                  ori          s5, t5, 787
                  andi         s7, sp, 976
                  add          a2, t2, s0
                  lbu          s11, -249(gp)
                  sb           t4, -107(gp)
                  sb           s2, 164(gp)
                  lbu          a2, 104(gp)
                  sltiu        sp, s6, 1401
                  sb           zero, 63(gp)
                  sb           s8, -154(gp)
                  lb           s9, 116(gp)
                  lbu          s0, -253(gp)
                  sw           t0, -230(gp)
                  lbu          t2, -89(gp)
                  lb           s2, 161(gp)
                  xori         a1, t6, -1866
                  lh           a5, 96(gp)
                  sra          s11, s7, s0
                  slt          a7, s0, t0
                  xori         s1, sp, 1206
                  sb           s4, 160(gp)
                  srai         a3, s4, 24
                  lbu          s10, -64(gp)
                  sll          tp, t4, a7
                  lbu          a0, 169(gp)
                  lb           s11, -145(gp)
                  sll          a0, t1, s1
                  sh           zero, -122(gp) #end riscv_load_store_rand_instr_stream_14
                  la           tp, region_1+1204 #start riscv_load_store_rand_instr_stream_5
                  lbu          t0, 7(tp)
                  xori         s2, a3, -935
                  srl          a4, s6, a4
                  lhu          s8, -12(tp)
                  lhu          a7, -10(tp)
                  auipc        zero, 413527
                  lbu          a6, -11(tp)
                  and          s2, a5, a1
                  sll          gp, s9, a4
                  lw           s11, 4(tp)
                  xori         s1, a0, -1285
                  sb           s1, 13(tp)
                  xori         s0, s10, -1713
                  lbu          sp, 9(tp)
                  sb           a0, 3(tp)
                  lbu          a4, -15(tp)
                  lb           t1, 9(tp)
                  lb           a2, 9(tp)
                  lhu          zero, 12(tp)
                  sh           a6, 2(tp)
                  slti         a6, s10, -1406
                  sll          t5, s6, s1
                  lb           t1, 13(tp)
                  ori          t2, s2, -1370
                  lbu          t0, -15(tp)
                  xori         a7, a3, 175
                  lbu          sp, 7(tp)
                  lb           a0, 7(tp)
                  lhu          a6, 6(tp)
                  andi         zero, s7, 724
                  sll          sp, t3, gp
                  slli         a2, a6, 15
                  lbu          s9, -5(tp)
                  lb           s6, -3(tp)
                  srai         s10, s6, 18
                  slti         a3, t5, -1919
                  xori         s1, a6, 1313
                  lb           s1, -14(tp)
                  slt          t5, a2, s0
                  and          s0, a2, ra
                  lhu          zero, 8(tp)
                  lw           s3, -12(tp)
                  sw           t0, 12(tp)
                  sll          s11, a3, a4
                  slt          a3, s11, zero
                  sb           t0, 13(tp)
                  lbu          s2, 11(tp)
                  xor          a2, sp, s6
                  lh           s7, 4(tp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1236 #start riscv_load_store_rand_instr_stream_8
                  sw           t5, 12(sp)
                  srl          t1, s9, a3
                  sb           a7, 9(sp)
                  sra          s9, sp, t0
                  nop
                  lb           a7, -9(sp)
                  lb           s10, 7(sp)
                  srl          a3, s10, zero
                  lbu          gp, 14(sp)
                  sltiu        a7, s6, 187
                  lbu          t5, 16(sp)
                  xori         t6, s0, 771
                  and          a4, s7, s1
                  slli         a2, ra, 26
                  sb           s4, -15(sp)
                  lbu          s3, 3(sp)
                  sh           a5, -10(sp)
                  sll          t6, s10, t2
                  sh           s9, 0(sp)
                  lb           s9, 15(sp)
                  lbu          a6, 8(sp)
                  srl          t1, s2, zero
                  sh           tp, 10(sp)
                  srai         s10, s10, 17
                  lbu          a0, -1(sp)
                  slti         s7, a3, -699
                  auipc        tp, 305344
                  srai         t0, s9, 13
                  lbu          t2, 11(sp)
                  sb           a7, -14(sp) #end riscv_load_store_rand_instr_stream_8
                  la           a2, region_1+1437 #start riscv_load_store_rand_instr_stream_2
                  lbu          a0, -4(a2)
                  sub          s2, s3, s2
                  sub          s9, s10, ra
                  sb           a0, 4(a2)
                  sra          sp, a3, a5
                  add          s7, s6, s4
                  slt          a1, a2, s3
                  lbu          a7, 2(a2)
                  lbu          s8, 6(a2)
                  sll          s5, t6, t1
                  sb           s7, -9(a2)
                  xori         t6, t6, 776
                  slti         s8, t3, -147
                  lbu          s2, -10(a2)
                  sb           sp, -11(a2)
                  srl          s2, a6, t4
                  sw           s4, -1(a2)
                  sb           s6, -7(a2)
                  srli         zero, s0, 30
                  lbu          a7, -12(a2)
                  or           a5, gp, s4
                  andi         zero, s0, 1447
                  xori         sp, s10, -1497
                  lb           t1, 8(a2)
                  srai         s9, t0, 18
                  slt          s5, s9, a2
                  sh           t4, 1(a2)
                  srai         gp, gp, 17
                  sw           t4, 3(a2)
                  lbu          a1, 6(a2)
                  lb           s5, 6(a2)
                  addi         s0, a0, 1133
                  and          a5, t6, a7
                  xor          t3, t2, a2
                  sltu         s6, t1, s9
                  nop
                  lui          s5, 649619
                  srai         t1, t4, 14
                  srai         t2, s1, 14
                  sw           s10, -9(a2) #end riscv_load_store_rand_instr_stream_2
                  auipc        t5, 240192
                  bge          a2, s8, 4f
                  xori         s5, s9, -330
                  nop
4:                sll          s1, s0, t2
                  bltu         a6, t5, 20f
                  xori         a6, t0, -1284
                  slti         a6, t3, 1096
                  srl          s5, a6, t5
                  blt          a6, s2, 24f
                  andi         s11, a7, 1863
                  add          a5, s8, s7
                  or           s10, a0, s2
                  or           a2, ra, t4
                  srai         s10, t2, 10
                  bge          s1, a6, 32f
                  auipc        s3, 46536
                  nop
                  andi         sp, s11, -317
                  slti         s10, a5, 1955
20:               bne          a6, a1, 28f
                  xor          a1, s9, a6
                  sra          a3, a0, s7
                  bne          s2, a4, 37f
24:               srai         s8, s10, 26
                  sll          t1, a1, s1
                  srai         a3, sp, 16
                  slti         gp, s8, 807
28:               addi         t6, t0, 677
                  lui          s3, 221189
                  slli         a6, a6, 11
                  srli         s6, s10, 24
32:               bltu         gp, a5, 47f
                  sub          a7, a5, t3
                  xor          s9, s7, t2
                  srl          a6, a7, t1
                  blt          tp, tp, 42f
37:               sra          s1, a1, a7
                  addi         s7, t5, -1374
                  auipc        s10, 230014
                  xori         t6, a4, 562
                  srli         sp, s9, 11
42:               addi         a5, s4, 1307
                  slli         sp, s9, 2
                  sub          a1, s3, t5
                  sltu         t1, a0, a0
                  slti         sp, a5, -964
47:               sll          t1, s10, a0
                  sub          s3, t5, a1
                  xori         s8, s2, 1218
                  srli         a4, s2, 2
                  auipc        t6, 123196
                  sra          a6, a3, s11
                  xori         s6, s3, -1907
                  and          a3, t1, s7
                  sra          s2, s9, t6
                  xor          sp, t4, s0
                  sub          s3, a7, s3
                  nop
                  blt          t2, tp, 68f
                  ori          t6, s8, 1954
                  slli         t2, a4, 17
                  srli         sp, a3, 11
                  sra          zero, a4, s2
                  srai         a1, s5, 2
                  xor          s8, s10, s2
                  sltu         zero, s3, a1
                  ori          s6, t1, 1394
68:               and          a3, s10, a6
                  slli         s10, s2, 0
                  beq          s7, s8, 90f
                  lui          t1, 59162
                  slt          tp, t3, s9
                  xori         t5, s6, -1965
                  ori          s5, t4, 1759
                  bge          a3, s1, 85f
                  bgeu         zero, a5, 94f
                  srli         a1, t2, 25
                  srl          a3, a0, t1
                  nop
                  slt          s5, t0, s6
                  slt          s11, t2, a0
                  sltu         s7, a5, a2
                  ori          a5, ra, 292
                  bgeu         a0, s8, 92f
85:               lui          s0, 998341
                  sltu         a6, s9, sp
                  bgeu         s4, t2, 105f
                  nop
                  add          t5, s2, s5
90:               lui          t1, 100248
                  srli         a6, t0, 17
92:               sra          a2, t3, a6
                  or           t1, tp, a5
94:               auipc        s1, 908956
                  and          zero, s5, a5
                  nop
                  or           gp, s7, s4
                  blt          s4, t2, 118f
                  srl          s9, t5, a2
                  addi         a7, a4, 724
                  bge          a5, s9, 105f
                  bgeu         s3, a3, 107f
                  slli         a4, s2, 9
                  bgeu         s0, a7, 122f
105:              bltu         s3, s7, 112f
                  blt          gp, a4, 117f
107:              bgeu         t5, s7, 111f
                  bge          t3, a1, 122f
                  sub          a1, s9, t3
                  andi         s9, a1, -804
111:              slti         a1, a4, 369
112:              bgeu         a2, s5, 120f
                  slli         t0, t1, 18
                  bne          s0, s4, 116f
                  sub          a1, a7, a6
116:              nop
117:              sltu         tp, s11, sp
118:              addi         s5, s10, 1179
                  bge          s2, a4, 129f
120:              sra          s5, sp, t1
                  slli         sp, a6, 0
122:              sltu         s8, s8, a2
                  and          t6, s0, s0
                  xor          sp, s4, t6
                  add          s2, a7, t2
                  sltu         s7, s4, a7
                  ori          s3, a1, -1717
                  slt          gp, t0, ra
129:              beq          s0, sp, 145f
                  bne          s0, t4, 139f
                  bgeu         a0, s10, 143f
                  lui          s0, 1026565
                  srai         s9, t1, 0
                  auipc        t2, 300253
                  blt          a2, s4, 141f
                  sltu         a1, t4, a7
                  slti         s3, s3, 90
                  sltiu        a5, t6, 316
139:              sltiu        t6, tp, 737
                  sll          s8, s4, tp
141:              auipc        s3, 620304
                  and          s7, s6, sp
143:              andi         t2, a3, -1288
                  sra          s1, a5, s6
145:              bgeu         s7, a1, 152f
                  sra          a0, a0, sp
                  andi         s10, a7, -55
                  and          t2, s3, zero
                  addi         a2, s10, -633
                  beq          s8, s10, 165f
                  sll          t1, s11, s4
152:              sub          s1, s1, t2
                  srl          s2, a0, gp
                  bge          s3, s10, 174f
                  slt          a6, a3, s10
                  slli         a0, gp, 19
                  auipc        a5, 409711
                  srai         a2, s6, 16
                  lui          s3, 596257
                  sub          s10, a6, t3
                  xori         t6, a2, 1704
                  blt          t3, t3, 172f
                  xori         a4, zero, 935
                  addi         a4, t1, 2017
165:              blt          a7, s2, 173f
                  sra          t6, t5, a2
                  srl          zero, a6, t0
                  sub          gp, ra, a5
                  bgeu         tp, tp, 184f
                  slli         a2, s4, 19
                  nop
172:              slt          s10, s9, s4
173:              sltu         s6, s8, sp
174:              andi         s1, s0, 1270
                  bltu         t1, zero, 185f
                  sltiu        s8, a3, 326
                  add          t5, a7, t2
                  sll          zero, a2, t4
                  lui          s0, 1043046
                  srai         s11, s6, 9
                  auipc        s10, 467817
                  slt          a4, s5, s7
                  beq          t1, s2, 187f
184:              nop
185:              sub          a4, ra, t3
                  beq          s9, a0, 190f
187:              slti         t3, a4, 1665
                  bge          s10, a2, 197f
                  or           t5, zero, s9
190:              slli         s9, s7, 5
                  sra          a6, t0, t6
                  slt          s9, s10, s4
                  slli         t1, a1, 24
                  srl          sp, a7, s8
                  slti         s1, s9, 224
                  slli         t5, s1, 1
197:              beq          s8, s9, 203f
                  slli         a6, t3, 10
                  slt          s11, s1, ra
                  bne          s3, a3, 217f
                  bltu         tp, s3, 208f
                  and          s8, tp, s5
203:              addi         a6, s2, -1724
                  blt          s3, a7, 212f
                  xori         t6, t3, -601
                  srai         a1, s0, 11
                  bltu         t6, a3, 225f
208:              xor          s11, t3, s7
                  bltu         gp, s11, 223f
                  slti         a3, s10, -1662
                  srai         s2, a0, 17
212:              or           t1, s9, s4
                  sltu         a3, a0, s7
                  nop
                  sll          a2, zero, a7
                  addi         s9, zero, -974
217:              ori          t3, sp, 370
                  sltu         a3, sp, s7
                  bltu         a4, s9, 226f
                  addi         a3, s10, 153
                  slli         t1, tp, 26
                  beq          sp, a7, 225f
223:              addi         s10, a6, -2040
                  xor          t0, a0, s8
225:              ori          a4, t1, 160
226:              lui          s5, 919892
                  add          s10, s6, t1
                  srli         t5, a0, 3
                  andi         t3, a3, 196
                  lui          t0, 914734
                  or           s7, t0, ra
                  slli         t0, t3, 12
                  lui          a6, 1024962
                  slli         t3, tp, 29
                  srl          s7, s11, a7
                  xori         sp, t4, 1243
                  or           t1, s3, a1
                  xori         s3, s0, -88
                  add          s10, s10, s5
                  lui          a0, 232894
                  xori         s8, s5, 1233
                  srai         a3, s5, 0
                  bge          zero, ra, 255f
                  nop
                  addi         sp, t0, -1701
                  add          s3, a4, t3
                  nop
                  ori          a7, s11, 549
                  or           t0, t4, s1
                  sltiu        s2, t6, 268
                  auipc        s2, 490747
                  bne          s7, s4, 270f
                  blt          ra, s8, 258f
                  bge          t1, s8, 268f
255:              add          zero, a2, s4
                  slt          s3, t6, s2
                  andi         a7, s4, -741
258:              sub          t5, a3, zero
                  srai         a5, s9, 31
                  ori          tp, a5, -1539
                  sll          tp, s0, s9
                  blt          ra, s9, 282f
                  sltiu        t0, s11, 389
                  andi         s3, t3, -300
                  slli         s11, ra, 28
                  addi         t1, t2, -1246
                  bne          t3, t6, 269f
268:              nop
269:              slti         s8, s6, 944
270:              and          s2, a5, a3
                  slti         s1, t3, 1799
                  add          zero, t6, gp
                  slli         s10, sp, 17
                  sra          s0, s7, s8
                  lui          a1, 667832
                  sltu         s1, a6, a7
                  srl          gp, a6, zero
                  srli         t2, a4, 31
                  srai         sp, gp, 2
                  or           sp, s8, a1
                  sltiu        t5, s1, 1712
282:              addi         t1, s7, 1343
                  xori         s2, a2, 891
                  xori         s0, t6, 1771
                  addi         t6, s1, -1648
                  nop
                  bltu         s2, t5, 295f
                  srai         s10, s5, 6
                  slti         s0, gp, -1053
                  andi         t0, a0, 569
                  or           a1, zero, t2
                  srli         a4, a2, 14
                  sra          s7, s2, s10
                  srai         s5, s8, 31
295:              nop
                  add          s11, a5, sp
                  or           s0, sp, zero
                  andi         t6, a2, 1523
                  srli         a4, gp, 23
                  and          s8, a3, tp
                  addi         s2, t5, 1279
                  slli         s0, s2, 16
                  sra          a3, tp, tp
                  srai         a4, t5, 20
                  nop
                  ori          t3, t5, 620
                  lui          s6, 638190
                  xor          a1, a6, s5
                  add          s1, s7, a3
                  blt          a0, s7, 328f
                  sll          gp, a5, s0
                  xori         s11, t5, 1968
                  sltiu        t2, s11, 663
                  addi         t3, t3, 792
                  slli         gp, s5, 29
                  sub          t6, sp, s7
                  lui          s0, 715335
                  nop
                  sltiu        tp, t4, 1796
                  nop
                  or           a0, tp, s8
                  bgeu         t3, s3, 338f
                  bne          s7, s4, 334f
                  sltiu        s11, s8, -200
                  add          a5, sp, s4
                  bge          s11, gp, 341f
                  addi         s2, tp, 257
328:              nop
                  auipc        a6, 45581
                  srai         s0, t6, 31
                  sll          s1, zero, s5
                  bne          s2, t3, 338f
                  add          a5, t3, a6
334:              sub          a4, s1, s10
                  xori         gp, s8, -1138
                  sltu         a7, s8, s3
                  nop
338:              srai         s1, s6, 28
                  srli         t5, gp, 23
                  srli         t6, zero, 25
341:              andi         t1, s10, 780
                  srli         t0, t4, 6
                  srl          s8, s6, t0
                  srli         t0, ra, 27
                  ori          t3, t3, -1919
                  ori          a3, a3, -1068
                  xor          s11, a7, a7
                  and          s11, s1, s0
                  addi         tp, t4, -1381
                  sltiu        s9, s1, -646
                  sll          t1, s9, a1
                  and          s5, sp, a3
                  slt          t5, a6, s2
                  or           a3, a2, s9
                  srl          tp, gp, gp
                  bltu         a4, t5, 365f
                  slt          s3, s4, s7
                  sub          t1, t5, t0
                  nop
                  beq          s0, a5, 368f
                  sltu         s7, a4, s4
                  addi         a2, s5, 343
                  lui          sp, 150938
                  and          t2, s10, s4
365:              sra          tp, t6, t2
                  srl          tp, s4, s10
                  auipc        s8, 568638
368:              and          s1, s2, s1
                  or           s6, gp, t4
                  lui          s6, 704411
                  and          t0, s7, t2
                  auipc        s0, 1045809
                  xori         s7, a0, 769
                  sll          t3, s8, a4
                  bgeu         a1, s0, 377f
                  slt          a6, s8, s5
377:              srai         s11, s3, 28
                  beq          t5, t3, 396f
                  bltu         a0, t6, 388f
                  addi         s8, t3, 1413
                  bge          zero, a4, 396f
                  and          a2, s4, tp
                  auipc        a7, 352257
                  slt          gp, s1, s9
                  ori          t1, s2, -1944
                  addi         s1, a5, 1632
                  bge          s0, s9, 396f
388:              addi         s6, s1, 2042
                  sub          a5, a0, t2
                  bne          a5, a1, 397f
                  blt          tp, a6, 411f
                  andi         gp, ra, -1730
                  and          gp, a6, a3
                  lui          t0, 1009543
                  xor          s5, t4, zero
396:              bgeu         tp, s9, 406f
397:              slti         s7, s1, -1356
                  lui          gp, 192717
                  auipc        t0, 2308
                  slt          t5, t0, s7
                  bgeu         s4, a5, 407f
                  srai         t5, s7, 10
                  srli         a7, t3, 31
                  auipc        s6, 712518
                  beq          s5, a1, 408f
406:              sub          s10, t4, a4
407:              add          t1, a0, s5
408:              srai         s5, gp, 1
                  slti         s1, s5, 2032
                  srli         t3, tp, 8
411:              sltu         t5, s11, s8
                  slli         s3, t4, 0
                  srli         s5, t1, 31
                  sll          s3, s0, ra
                  add          t2, a6, ra
                  srli         t6, gp, 13
                  bge          a6, tp, 431f
                  bltu         s8, s3, 430f
                  andi         t6, tp, -1494
                  srl          s11, a2, t2
                  sltiu        t6, t3, -418
                  xor          s6, gp, s11
                  or           s5, zero, a4
                  add          tp, s5, a6
                  bltu         s9, t6, 440f
                  auipc        a4, 508817
                  bne          s9, t6, 431f
                  ori          a5, s1, 654
                  sll          a1, s11, s9
430:              sub          s1, a5, s6
431:              xor          t1, s3, s4
                  srl          tp, sp, s0
                  sltu         t3, s11, sp
                  lui          s3, 316717
                  bgeu         s1, s0, 446f
                  xor          s3, a6, sp
                  ori          a1, a5, -522
                  or           s2, sp, s10
                  or           t5, s10, s6
440:              blt          s10, t0, 446f
                  sltiu        a6, s9, -1689
                  sll          t0, gp, a3
                  ori          s1, gp, -216
                  sltu         t6, s6, t2
                  srai         s0, a2, 15
446:              blt          a3, tp, 460f
                  addi         s11, s9, -363
                  auipc        a5, 946271
                  and          t5, a4, gp
                  xori         a3, a1, -1027
                  slti         t0, t6, -1329
                  srli         a7, s3, 12
                  sub          s7, s6, a2
                  auipc        a1, 660765
                  bne          a3, s1, 459f
                  sltiu        a1, a1, 773
                  blt          s10, s5, 467f
                  xori         gp, t1, 537
459:              slti         a4, ra, -592
460:              bne          s7, t2, 465f
                  sltiu        zero, s5, -1613
                  beq          s1, a5, 477f
                  beq          s10, s2, 481f
                  beq          s5, gp, 480f
465:              nop
                  bne          s10, t6, 486f
467:              lui          t5, 1022154
                  and          a4, a7, gp
                  or           t1, t1, s4
                  add          a7, a7, t5
                  slt          a2, zero, a0
                  auipc        t2, 776514
                  or           t0, t4, s5
                  nop
                  sra          s7, ra, a2
                  la           sp, region_0+520 #start riscv_load_store_rand_instr_stream_11
                  sltiu        a6, t1, 1864
                  srli         s8, ra, 8
                  sltu         a6, sp, t2
                  or           s5, a1, a0
                  lbu          a6, -179(sp)
                  lh           s6, -404(sp)
                  lb           s7, -258(sp)
                  sub          a0, a3, s11
                  sb           a1, -454(sp)
                  sw           a7, -428(sp)
                  lui          s9, 684133
                  sub          a6, s1, s4
                  sh           gp, 904(sp)
                  auipc        t1, 1039399
                  slti         s0, t6, 105
                  sra          s11, s5, s1
                  sltu         t3, s3, ra
                  lbu          zero, -487(sp)
                  lbu          s2, 938(sp)
                  lh           t3, 274(sp)
                  srli         a7, s3, 23
                  sll          a5, s7, t5
                  and          s11, s6, a4
                  xori         t5, s4, -507
                  lb           t6, 922(sp)
                  sll          a7, a2, s9
                  nop
                  lh           s6, 1266(sp)
                  srai         s0, a2, 31
                  sub          s8, s7, a1
                  sb           s8, 601(sp)
                  xor          s8, t4, a5
                  sh           t1, 1250(sp)
                  srai         s2, sp, 4
                  sw           t6, 1072(sp)
                  sltu         s7, s6, s1
                  xori         s7, a5, -1614
                  sw           t6, 704(sp)
                  sb           s9, 1363(sp)
                  slti         s5, a3, -2009
                  lhu          s7, 538(sp)
                  srai         t6, s8, 15
                  lb           s2, 641(sp) #end riscv_load_store_rand_instr_stream_11
                  slti         sp, tp, 803
477:              sra          s11, s10, a3
                  xori         s10, s4, 1684
                  bgeu         a5, zero, 496f
480:              bgeu         t5, s6, 498f
481:              sra          s0, s1, t3
                  beq          s7, s4, 489f
                  blt          s3, zero, 491f
                  blt          a6, t0, 492f
                  slt          s1, s1, a2
486:              xor          s5, s10, gp
                  addi         s11, s11, 824
                  xor          a4, t2, tp
489:              add          tp, s4, s7
                  bgeu         t2, t5, 495f
491:              sll          a3, s6, a6
492:              srai         t3, sp, 26
                  ori          t1, a6, -1710
                  and          a5, zero, s9
495:              sltiu        s6, s0, 1973
496:              xor          t5, s5, s3
                  add          t0, s8, t3
498:              lui          a3, 460459
                  addi         t2, s5, 1485
                  bge          s4, s7, 510f
                  auipc        t6, 6885
                  srai         t3, a5, 18
                  bge          a1, t5, 520f
                  blt          sp, s2, 519f
                  nop
                  bge          s11, tp, 517f
                  beq          a6, a6, 525f
                  andi         t0, s6, 462
                  andi         tp, tp, -810
510:              slt          s9, s1, t2
                  addi         s8, a2, -1649
                  sub          gp, s4, t5
                  srli         s5, a1, 1
                  bne          a1, s3, 520f
                  slt          tp, ra, a2
                  sll          a1, s1, t5
517:              sltu         s11, ra, s6
                  bne          t4, s2, 521f
519:              xori         sp, t2, -612
520:              and          a0, s6, s2
521:              lui          t2, 414368
                  and          s8, zero, gp
                  xori         t6, a3, 1927
                  srai         t0, s4, 8
525:              slli         t0, t1, 25
                  srai         t1, s8, 14
                  slti         t0, a6, -140
                  andi         gp, t6, -1205
                  srl          s2, t2, s0
                  sltu         t5, t5, a7
                  srli         a6, t6, 0
                  srai         a3, a6, 0
                  sub          s9, s8, a1
                  slti         s11, a1, 1480
                  sra          t1, s7, s0
                  xori         a0, tp, 290
                  ori          s1, s6, -1796
                  blt          s10, s8, 558f
                  bge          s9, a1, 557f
                  xor          sp, s3, s5
                  or           tp, ra, s5
                  add          a5, s0, s10
                  sll          tp, a4, s7
                  bltu         t3, a0, 548f
                  lui          a1, 963680
                  add          s10, s8, t3
                  slli         a7, t2, 16
548:              beq          s11, s10, 556f
                  nop
                  lui          s7, 163037
                  lui          t3, 636342
                  slti         gp, s2, 1181
                  slli         a1, t4, 16
                  srai         s1, t2, 14
                  and          s6, t1, s3
556:              srl          t0, tp, t0
557:              slli         a3, a4, 17
558:              slli         s7, s11, 31
                  srl          gp, s9, sp
                  beq          s9, s4, 575f
                  bne          s0, s5, 575f
                  ori          t6, s3, 280
                  sll          gp, tp, tp
                  sltu         gp, s7, a2
                  auipc        a5, 360299
                  bge          t4, a0, 584f
                  ori          a5, s4, -844
                  or           a2, a7, s2
                  blt          a2, t6, 577f
                  bne          t2, t5, 577f
                  addi         a7, s11, -1188
                  sltiu        t1, gp, 1774
                  slt          a2, t3, s2
                  srai         a0, a0, 27
575:              blt          a1, s7, 584f
                  slti         a4, a2, -1656
577:              srai         a5, s3, 2
                  blt          s7, tp, 593f
                  bltu         t5, t1, 588f
                  add          a1, s3, a4
                  andi         s0, sp, 1589
                  sub          s9, t6, t3
                  slt          a3, a2, a6
584:              slt          t0, tp, s2
                  xori         gp, s0, -506
                  bge          t0, a5, 600f
                  bge          t4, s5, 593f
588:              auipc        a1, 838387
                  sltiu        s10, t6, -274
                  sll          a6, t4, s4
                  srai         s3, s2, 19
                  beq          a1, s2, 599f
593:              auipc        s6, 986720
                  add          a6, t3, s8
                  slt          s6, t3, s0
                  bgeu         a1, t2, 608f
                  bgeu         s9, s1, 599f
                  or           a6, tp, a7
599:              bge          t2, s10, 609f
600:              andi         a3, s3, -243
                  addi         s6, a4, 1405
                  slli         s11, ra, 3
                  blt          t6, s0, 611f
                  and          a0, s10, sp
                  slli         a4, ra, 18
                  andi         t0, a7, -1303
                  add          s1, a3, zero
608:              bgeu         s5, s11, 628f
609:              bne          t0, t2, 625f
                  srl          s10, tp, s1
611:              beq          gp, t0, 615f
                  addi         s0, a6, 490
                  xori         s2, s10, -902
                  bgeu         s2, sp, 621f
615:              bgeu         a2, s5, 626f
                  sub          s8, a1, s3
                  srl          t3, t2, a0
                  nop
                  slti         t1, t1, -407
                  nop
621:              andi         t0, a3, -1487
                  slti         s10, s9, -745
                  bge          s9, a4, 638f
                  slli         s11, s0, 18
625:              bge          a5, tp, 631f
626:              nop
                  srai         zero, a0, 9
628:              sra          t0, a1, s7
                  srli         s3, a4, 27
                  or           a3, a6, a7
631:              ori          s6, t2, 1821
                  sra          a2, s11, s10
                  bgeu         s11, s5, 640f
                  slli         a2, a5, 30
                  or           t1, s4, s6
                  bge          a0, t2, 656f
                  sub          t3, s6, t0
638:              srai         t1, tp, 17
                  bne          gp, a7, 654f
640:              bge          a3, sp, 658f
                  sra          s9, s1, a3
                  blt          s9, s5, 656f
                  slt          s5, gp, a5
                  auipc        t2, 930009
                  beq          s11, a3, 649f
                  sll          gp, s7, t5
                  addi         s6, s2, 183
                  slt          zero, a7, a6
649:              srli         s9, s10, 13
                  bgeu         s0, tp, 664f
                  sub          a7, ra, s10
                  and          t1, a5, s0
                  sltu         a7, s4, tp
654:              or           a6, s10, s8
                  beq          ra, s9, 663f
656:              lui          t1, 805052
                  or           a4, s2, a1
658:              ori          s5, s7, -1713
                  sltiu        t3, t3, -1132
                  slt          s2, s8, s2
                  nop
                  add          s10, t1, s0
663:              lui          t6, 285228
664:              nop
                  sll          s10, s4, s9
                  sll          s5, sp, a3
                  sll          a1, ra, s2
                  slli         a1, s8, 4
                  addi         t3, s3, 5
                  slti         s2, a2, -161
                  slt          s9, a5, ra
                  sll          sp, s8, s2
                  blt          s7, gp, 688f
                  bgeu         a2, t2, 683f
                  slti         s3, ra, 510
                  blt          zero, t5, 694f
                  sltiu        gp, zero, -1681
                  srli         a7, gp, 4
                  beq          t0, t6, 685f
                  sub          a2, a0, t2
                  sub          s5, s9, tp
                  or           s7, s9, t3
683:              xor          a7, s8, s4
                  sll          a2, a6, t5
685:              bltu         a5, a5, 701f
                  lui          a5, 732295
                  bne          t5, ra, 695f
688:              srli         s5, a2, 22
                  srai         a1, a6, 7
                  srli         gp, a5, 18
                  xori         sp, s0, 383
                  xori         a3, zero, 785
                  andi         s9, s6, -1243
694:              andi         a0, s4, 370
695:              slli         s6, s2, 29
                  sub          s11, a3, s1
                  bgeu         t5, t1, 702f
                  slti         s2, sp, -1450
                  andi         s1, t0, -1410
                  slli         t6, s8, 9
701:              sub          tp, t4, a2
702:              srai         s3, a7, 11
                  auipc        t1, 1015450
                  add          gp, sp, a4
                  xori         s1, s5, -73
                  sll          t5, sp, a4
                  xor          a3, s11, s0
                  xor          s1, sp, t1
                  bne          s11, a5, 719f
                  sltiu        t6, s1, -151
                  srli         s8, s1, 26
                  slt          t0, s1, s5
                  bge          t3, s9, 722f
                  or           a4, s8, a4
                  nop
                  lui          t2, 697802
                  srl          t1, a3, gp
                  andi         tp, s1, -1674
719:              bltu         s4, sp, 723f
                  bgeu         s8, gp, 738f
                  sra          s8, t5, s8
722:              nop
723:              bgeu         t2, a0, 735f
                  slti         a4, t6, -1832
                  srl          s3, a7, s1
                  srli         a1, s2, 24
                  sub          s1, s0, s2
                  ori          t6, t6, -827
                  nop
                  nop
                  bge          t5, t1, 741f
                  slli         s9, t0, 15
                  sltiu        t0, s9, 438
                  srl          tp, a5, a2
735:              and          s0, tp, sp
                  slti         zero, s10, -1181
                  bgeu         t3, s8, 740f
738:              bgeu         t4, s11, 755f
                  sll          s5, s7, sp
740:              addi         s5, gp, -1250
741:              srli         a6, s10, 27
                  bge          s5, sp, 762f
                  or           s2, s1, t5
                  blt          t4, a5, 746f
                  slti         s9, s0, -1699
746:              sub          s5, sp, t4
                  bne          t6, s0, 755f
                  or           s8, t1, s1
                  auipc        t6, 434527
                  sltiu        a0, s6, 1017
                  sub          zero, s2, s1
                  srai         s9, a5, 17
                  auipc        a6, 483964
                  srl          a2, t2, s1
755:              slti         a0, a7, -1800
                  srli         a2, t3, 7
                  srl          s5, ra, s9
                  srli         s8, s7, 30
                  sltiu        s9, t5, 1113
                  and          s6, s3, zero
                  sra          tp, zero, t4
762:              xor          a0, s3, a3
                  ori          s10, a3, -1561
                  bltu         s10, t6, 768f
                  srl          zero, s1, tp
                  srai         t0, s4, 2
                  or           t6, s4, t3
768:              srl          s0, t4, s10
                  sra          a5, a7, t5
                  slt          a0, a6, t2
                  andi         a2, s10, 787
                  slti         zero, s7, 1660
                  and          s9, t5, s3
                  bne          t6, zero, 789f
                  slt          s2, s8, s3
                  srli         t2, t2, 31
                  sltu         t5, sp, a3
                  beq          t1, a6, 796f
                  andi         s6, t2, -973
                  nop
                  beq          a6, s10, 787f
                  auipc        s5, 590038
                  slti         a4, s6, -1200
                  slti         sp, a6, 748
                  slti         s2, s10, 734
                  sltiu        tp, a1, -168
787:              or           a6, ra, s6
                  nop
789:              ori          s10, sp, 1009
                  sltiu        a7, a6, -1870
                  srl          sp, s10, t2
                  slli         t5, zero, 0
                  sltu         s0, a5, tp
                  addi         sp, gp, 476
                  sra          gp, t4, s2
796:              xori         s5, a5, -532
                  or           s1, a2, a4
                  slli         sp, a4, 0
                  srli         a1, s0, 1
                  slt          s10, s2, t1
                  blt          a7, a1, 816f
                  sltiu        t5, a7, 1179
                  xor          s11, t6, gp
                  andi         t6, s3, 1523
                  bgeu         ra, a7, 817f
                  lui          s9, 78146
                  sub          s8, a5, s6
                  sub          gp, sp, t4
                  sltu         s9, s6, a0
                  srli         t0, s5, 12
                  or           s1, t0, s9
                  sra          s0, a2, s11
                  lui          a3, 423523
                  bltu         a1, s4, 823f
                  slli         a1, gp, 28
816:              slli         a0, zero, 16
817:              sub          a0, a2, s4
                  bge          s11, a5, 838f
                  xor          t5, s3, a1
                  lui          a1, 327683
                  lui          t0, 712287
                  xori         s0, tp, 208
823:              auipc        t0, 199508
                  xori         s5, t0, 1682
                  slli         s2, a3, 8
                  sltu         s8, a5, t1
                  auipc        gp, 353106
                  srai         s6, s3, 30
                  slt          t0, t6, a7
                  xor          s6, s6, a1
                  sra          s1, t1, zero
                  bne          tp, a3, 840f
                  auipc        a0, 553672
                  slli         t1, t0, 8
                  bne          s8, a0, 840f
                  ori          a6, a6, -915
                  xor          a7, t3, s2
838:              srli         t2, s10, 31
                  srl          t0, tp, s6
840:              slt          s1, s3, a1
                  auipc        s6, 658855
                  xori         s3, a0, -343
                  ori          a6, a1, 379
                  and          s5, t0, t6
                  srli         s6, s6, 18
                  bne          t3, s10, 862f
                  nop
                  srai         s11, t2, 28
                  sltu         sp, a3, s10
                  andi         s10, s7, -1493
                  add          a7, s1, s1
                  bltu         s1, zero, 863f
                  or           t2, a6, s4
                  xori         s8, zero, -418
                  addi         s2, s2, 633
                  srli         a0, s7, 2
                  bgeu         a5, a0, 867f
                  slti         s8, a7, -1278
                  bne          t2, tp, 876f
                  and          a0, s10, s1
                  auipc        t0, 625388
862:              sll          s11, s6, t0
863:              and          s8, a6, s9
                  xori         s11, s2, 1045
                  sltiu        gp, s8, -214
                  sub          a1, ra, t5
867:              and          t1, t6, s11
                  sltiu        s7, s2, -97
                  ori          s7, a3, 1349
                  and          a6, s9, s6
                  beq          gp, tp, 889f
                  auipc        a5, 1044293
                  addi         s7, s1, 318
                  slli         s7, t2, 12
                  sra          t2, a1, s5
876:              bge          a1, a4, 896f
                  srli         sp, a7, 26
                  andi         tp, s6, -2039
                  sll          t6, a0, a0
                  xori         gp, zero, -1304
                  bltu         gp, tp, 890f
                  auipc        s5, 189486
                  srli         sp, zero, 30
                  xor          gp, s11, s11
                  lui          s10, 396992
                  andi         gp, t0, 900
                  srli         s7, a0, 21
                  addi         sp, s9, -500
889:              srai         s11, sp, 18
890:              srai         a3, s6, 9
                  lui          sp, 1044362
                  srai         sp, s7, 14
                  nop
                  sltiu        zero, a2, 135
                  bgeu         s5, tp, 897f
896:              bgeu         a4, t5, 904f
897:              or           s8, a6, t4
                  bne          a0, t5, 913f
                  bge          t6, sp, 902f
                  addi         s11, s9, 301
                  lui          s5, 314368
902:              auipc        zero, 136712
                  or           zero, s4, s10
904:              sll          s6, s5, a5
                  sltiu        a2, s3, -1517
                  addi         a4, s3, -1623
                  slti         a7, a1, -635
                  sltiu        s11, s7, 365
                  xor          s8, s7, a1
                  nop
                  xor          sp, t2, sp
                  xor          s8, s9, t2
913:              sltiu        s10, s3, 594
                  bgeu         a3, s10, 921f
                  nop
                  or           a3, a5, a0
                  srli         t1, ra, 1
                  addi         tp, t1, 1166
                  auipc        zero, 264501
                  nop
921:              sll          s2, t3, gp
                  srai         a1, zero, 25
                  xori         a1, s10, 396
                  sub          a6, t3, gp
                  sub          tp, a6, s3
                  ori          a6, s9, 956
                  bgeu         a5, gp, 941f
                  sltu         s8, t3, s3
                  sra          s10, a1, t5
                  sltiu        s7, s9, 448
                  sll          t1, s4, s9
                  sltiu        s3, gp, 940
                  sltiu        s9, a5, -47
                  slli         s1, a7, 26
                  sltu         zero, a5, t0
                  or           gp, s9, gp
                  bltu         s3, s8, 944f
                  beq          s9, t4, 942f
                  bltu         a1, a2, 953f
                  blt          gp, s0, 950f
941:              slt          t1, zero, tp
942:              xori         s2, tp, 1908
                  lui          a4, 315440
944:              xor          s1, t4, a7
                  addi         a2, a0, 2013
                  lui          t2, 16140
                  bgeu         a4, s2, 955f
                  sll          s10, s6, s0
                  bne          s10, t2, 967f
950:              slti         t5, t2, 1726
                  or           s3, s11, a4
                  sra          s11, s4, t3
953:              or           s3, s11, gp
                  blt          s9, a7, 960f
955:              xor          a6, t4, s2
                  bltu         s8, a1, 965f
                  slti         t2, sp, 304
                  nop
                  or           s2, t0, s5
960:              auipc        s6, 86573
                  sll          tp, s7, a3
                  or           a3, zero, a4
                  beq          s6, gp, 974f
                  beq          s10, t3, 981f
965:              bne          s9, a3, 980f
                  sltu         a4, a5, t1
967:              bne          ra, t3, 985f
                  ori          s0, a1, -1308
                  add          t3, a4, a6
                  slli         s10, a7, 21
                  lui          a6, 128716
                  sltu         s8, s9, gp
                  srl          s9, a6, t1
974:              auipc        a4, 5435
                  beq          tp, a3, 995f
                  beq          a5, a1, 981f
                  sub          t1, s11, s11
                  xori         a4, t3, 1401
                  addi         sp, s9, 1596
980:              bne          zero, t1, 986f
981:              sub          a3, s2, t6
                  bltu         a5, a7, 986f
                  slt          s1, a5, gp
                  andi         t0, t5, 435
985:              slt          zero, a5, s5
986:              add          a2, a7, t4
                  blt          t2, a5, 1001f
                  ori          a5, a6, -2004
                  andi         t6, t1, -647
                  srl          s11, sp, gp
                  sltu         s6, a0, t2
                  slti         a4, t6, -1163
                  andi         a5, zero, -15
                  and          sp, t5, a3
995:              auipc        s2, 356263
                  beq          sp, gp, 1011f
                  slt          s9, s7, s7
                  sll          a7, t0, s11
                  or           t3, t4, s9
                  xori         zero, a4, -1179
1001:             slti         t3, a5, 1970
                  sltiu        t6, a2, -698
                  nop
                  sra          a4, s6, a6
                  sll          s7, tp, a6
                  slti         a6, t3, -627
                  slti         a3, a5, -1125
                  andi         a3, s3, -856
                  andi         tp, s1, -105
                  lui          t0, 393351
1011:             and          zero, s10, s9
                  or           a0, t1, a7
                  auipc        s9, 102703
                  srai         a6, a7, 10
                  slti         s7, a4, 183
                  beq          gp, s6, 1032f
                  or           zero, s2, a7
                  lui          s0, 8205
                  slt          s5, a0, s6
                  srl          t1, ra, zero
                  slli         s1, a4, 15
                  srli         tp, tp, 13
                  xor          s6, a4, sp
                  or           s6, s2, t6
                  sra          s10, a7, a6
                  bge          tp, s7, 1034f
                  andi         s1, a2, 1440
                  lui          s10, 703046
                  nop
                  add          a2, s4, t1
                  addi         zero, s9, 750
1032:             sra          s3, ra, s3
                  bgeu         s5, s1, 1039f
1034:             auipc        sp, 265740
                  srai         t5, a4, 3
                  xor          a6, t4, a5
                  bltu         t3, s0, 1040f
                  sltiu        t6, s10, 1674
1039:             slti         a1, gp, 530
1040:             xor          s11, s10, sp
                  lui          t2, 295836
                  bne          s4, t5, 1062f
                  slli         s2, s10, 21
                  slt          a4, a5, a3
                  srl          s7, s7, s4
                  bge          t6, t1, 1054f
                  srai         s9, s6, 0
                  auipc        tp, 99524
                  auipc        a5, 705181
                  bgeu         a2, ra, 1052f
                  sra          t1, t2, t5
1052:             sll          sp, s11, a0
                  bltu         t4, a7, 1067f
1054:             auipc        t1, 773639
                  srai         s10, s0, 3
                  blt          s0, a0, 1074f
                  xori         s2, t1, -1721
                  sub          t3, zero, sp
                  beq          a4, s1, 1066f
                  slti         tp, a0, -1423
                  bltu         s7, s10, 1068f
1062:             srli         s8, s7, 13
                  sub          s2, gp, s10
                  beq          s2, a5, 1068f
                  srl          t1, a5, s8
1066:             slli         s6, a4, 31
1067:             sltiu        s7, a3, -1370
1068:             or           s0, t2, zero
                  lui          t5, 887437
                  and          tp, zero, s7
                  andi         s0, s10, -1528
                  xori         s0, t6, -222
                  addi         s8, a5, -362
1074:             blt          zero, t4, 1092f
                  andi         a2, a4, 33
                  bne          s7, zero, 1085f
                  sra          s10, s1, s2
                  xor          t1, a7, sp
                  slti         s1, a0, 255
                  lui          s9, 772156
                  beq          a3, s3, 1093f
                  slli         s7, gp, 8
                  addi         t6, a3, 116
                  sltiu        s7, gp, 1612
1085:             sub          s3, t0, s9
                  and          t0, s11, s8
                  nop
                  sll          a6, t2, s4
                  or           a4, tp, a4
                  auipc        t2, 180772
                  andi         s5, s10, 1818
1092:             nop
1093:             and          zero, t1, a7
                  sll          zero, s2, a1
                  ori          s10, s8, -220
                  lui          s10, 36629
                  slli         s9, s7, 12
                  and          s0, a4, s0
                  slli         a7, zero, 19
                  bne          a1, ra, 1110f
                  blt          a7, s4, 1109f
                  slti         s10, t4, 1622
                  slt          t6, tp, s4
                  bge          sp, s7, 1114f
                  blt          t5, s1, 1120f
                  sub          t6, t4, t3
                  slli         a0, s8, 25
                  beq          sp, s9, 1117f
1109:             sll          a6, s1, s11
1110:             srli         s3, s9, 23
                  add          t0, t5, tp
                  addi         a1, s4, -1046
                  slli         s2, t1, 5
1114:             add          t0, s1, t2
                  sltu         s5, a4, s1
                  sltiu        a5, t0, -1634
1117:             andi         t5, a6, -1963
                  blt          zero, zero, 1128f
                  bge          a6, a1, 1137f
1120:             srl          s0, sp, s6
                  slti         t6, a0, 1911
                  sra          zero, s8, t2
                  sltu         t6, a5, s8
                  srl          tp, t5, s11
                  addi         t6, t2, 1323
                  add          a7, a6, t5
                  sltu         a7, s3, t0
1128:             sub          s2, t3, s9
                  slli         t3, t6, 9
                  nop
                  xori         s2, a5, 2
                  ori          s10, t3, 1125
                  slt          a6, s8, s6
                  xor          gp, zero, a5
                  xor          s6, a3, zero
                  sltiu        a2, t4, 1784
1137:             beq          t5, s0, 1155f
                  slti         a2, t5, -1885
                  bge          s0, zero, 1156f
                  bgeu         s5, sp, 1155f
                  sub          a4, gp, t2
                  sll          s11, a5, sp
                  xor          s10, s1, s0
                  lui          a6, 199528
                  auipc        a2, 89049
                  lui          s2, 163520
                  bge          s3, t6, 1151f
                  bne          s0, s2, 1156f
                  srli         t5, s5, 13
                  srl          t3, s8, s3
1151:             srai         s11, s9, 22
                  bge          s9, sp, 1156f
                  bgeu         a1, zero, 1161f
                  blt          t3, s0, 1163f
1155:             sltu         a6, a6, a7
1156:             nop
                  and          t1, t4, s4
                  sltiu        a7, gp, 1666
                  auipc        tp, 998132
                  lui          s2, 611200
1161:             slt          a1, s5, gp
                  srai         t5, tp, 23
1163:             beq          t2, s3, 1170f
                  auipc        t2, 735111
                  bltu         s8, a7, 1183f
                  bgeu         t0, zero, 1171f
                  bgeu         a6, s0, 1187f
                  srl          t2, a4, ra
                  sltu         a5, zero, s11
1170:             auipc        a7, 439292
1171:             bltu         a6, a7, 1186f
                  sub          a5, s9, ra
                  lui          s8, 911517
                  sra          s7, s11, a4
                  sltu         s10, a6, s7
                  srli         a1, a1, 31
                  srai         s9, a1, 7
                  bgeu         a4, t0, 1192f
                  slli         a0, t1, 9
                  srl          s6, gp, t1
                  nop
                  beq          gp, t2, 1188f
1183:             sltiu        s9, s5, -1794
                  slt          s6, s6, gp
                  srli         a0, s8, 18
1186:             or           s5, a7, a5
1187:             srl          t3, a6, a7
1188:             add          t1, gp, s7
                  blt          s8, s5, 1205f
                  bltu         ra, s10, 1205f
                  srai         t1, sp, 1
1192:             bltu         s2, s7, 1194f
                  add          s7, a0, a7
1194:             xori         a1, zero, -490
                  add          t3, s6, a1
                  bltu         a7, sp, 1210f
                  bltu         a7, a7, 1207f
                  bge          gp, a0, 1201f
                  sltu         s5, a1, gp
                  ori          a0, tp, 1693
1201:             and          t0, t5, zero
                  blt          a0, s2, 1210f
                  auipc        tp, 452328
                  sltu         s5, s2, t3
1205:             sltu         s8, t5, s5
                  andi         s9, s11, -1402
1207:             bne          t2, t0, 1218f
                  lui          a6, 492264
                  sub          tp, t4, t6
1210:             xori         gp, t2, 1842
                  slli         s7, t5, 16
                  sll          gp, t3, s7
                  xor          s2, a4, s0
                  sra          s5, t5, t4
                  slt          s10, t3, s8
                  srai         a1, s2, 14
                  sltu         s9, a0, t5
1218:             nop
                  add          t0, gp, t1
                  xori         s9, a3, -64
                  srli         t6, a7, 10
                  or           s11, a1, t6
                  and          s8, zero, t6
                  srai         a3, sp, 24
                  and          a3, sp, a7
                  sltiu        t3, s6, 1330
                  sra          s11, zero, a1
                  xor          tp, a4, a6
                  blt          s10, s7, 1249f
                  bne          s6, a7, 1237f
                  or           s6, a6, s5
                  srai         a3, gp, 22
                  sltu         s5, s3, a6
                  beq          tp, t2, 1240f
                  slt          t3, a1, gp
                  addi         s9, s6, 1334
1237:             srai         a6, a7, 15
                  srai         t2, s4, 28
                  sub          s7, a5, s2
1240:             srai         s5, s11, 26
                  slti         s3, a5, 937
                  nop
                  addi         s8, t4, -1070
                  or           s5, s6, t4
                  srl          s10, s6, a0
                  bge          s10, s8, 1258f
                  nop
                  srai         a4, s10, 7
1249:             bge          s9, t6, 1259f
                  nop
                  slli         t2, s1, 13
                  ori          gp, t0, 350
                  bltu         s7, s0, 1271f
                  bltu         s11, s6, 1260f
                  bne          s11, s0, 1264f
                  srli         a7, s8, 6
                  ori          a6, a1, -71
1258:             blt          s6, a3, 1266f
1259:             blt          a1, s7, 1270f
1260:             xor          t2, s6, s11
                  bne          s0, sp, 1279f
                  nop
                  bge          a0, s11, 1277f
1264:             add          zero, a4, s3
                  sub          s5, t5, t0
1266:             sltiu        s7, s10, -995
                  bltu         a3, s7, 1283f
                  bltu         zero, t2, 1288f
                  auipc        s10, 238945
1270:             blt          gp, s10, 1284f
1271:             nop
                  bltu         s5, t0, 1275f
                  bne          s5, ra, 1280f
                  beq          t2, a3, 1289f
1275:             sra          s7, a4, a0
                  srli         s8, a0, 16
1277:             blt          s4, sp, 1292f
                  and          tp, a5, a1
1279:             andi         a4, gp, 871
1280:             srl          s1, s10, t2
                  sltiu        a3, s7, -1838
                  bgeu         s7, s10, 1291f
1283:             xor          gp, s0, s0
1284:             bge          a0, s10, 1292f
                  bge          a5, s10, 1293f
                  xor          s6, s3, t5
                  slti         s8, a5, 1503
1288:             sra          a3, s10, s10
1289:             bge          t4, tp, 1309f
                  bltu         s7, t5, 1296f
1291:             ori          s7, s7, -1892
1292:             srli         s11, s2, 27
1293:             ori          s9, s5, 290
                  slt          t2, t2, t6
                  add          t6, s4, a6
1296:             add          t3, s9, t6
                  ori          s0, a7, -776
                  sub          a6, a3, sp
                  lui          t2, 78857
                  and          a6, t0, a1
                  bltu         s2, s3, 1306f
                  bgeu         s3, a3, 1312f
                  lui          zero, 697271
                  srl          s7, t1, a5
                  sll          t0, tp, sp
1306:             bge          s0, sp, 1323f
                  srli         t2, zero, 7
                  add          a2, s8, t1
1309:             xor          t6, t6, s1
                  beq          a7, zero, 1317f
                  auipc        tp, 614018
1312:             andi         a7, a4, 403
                  bge          s4, s5, 1328f
                  sltiu        tp, t0, 1409
                  srai         a4, a5, 8
                  blt          sp, zero, 1320f
1317:             slli         tp, a3, 17
                  slli         a1, s9, 24
                  sub          a3, t1, s5
1320:             sltu         s2, ra, s0
                  blt          a6, tp, 1325f
                  xori         s6, t6, 784
1323:             and          a0, a6, t4
                  blt          ra, a1, 1342f
1325:             bgeu         s9, s7, 1327f
                  sub          t0, s5, gp
1327:             or           gp, s5, a1
1328:             srli         s6, t3, 24
                  lui          s9, 1005632
                  slt          zero, ra, s2
                  slti         a2, s2, 49
                  auipc        t5, 660016
                  slti         gp, s8, 601
                  bne          s5, s3, 1346f
                  xor          s5, a4, t1
                  or           s7, s2, t1
                  srl          a0, s1, zero
                  bne          t4, ra, 1358f
                  slli         t2, s9, 25
                  slli         s0, a1, 8
                  beq          t2, s7, 1356f
1342:             sll          s6, s1, t5
                  srl          s9, gp, t3
                  bltu         a7, s5, 1351f
                  bltu         s10, a1, 1353f
1346:             slt          t1, s11, t2
                  sll          s3, a7, a5
                  srai         s1, a0, 0
                  add          s0, s10, a0
                  slt          a2, s1, s4
1351:             add          s8, t4, s9
                  or           t3, zero, s3
1353:             beq          t3, t2, 1373f
                  andi         zero, t0, -1986
                  bge          s3, s4, 1365f
1356:             addi         s5, s6, 490
                  xor          s10, a4, zero
1358:             slt          s7, t0, s1
                  add          s5, tp, s10
                  and          s3, t1, tp
                  bgeu         s8, sp, 1365f
                  xor          t1, a2, t0
                  slli         t5, s5, 19
                  auipc        s10, 628364
1365:             xori         s8, a4, -529
                  blt          t5, s0, 1376f
                  sra          sp, s10, s6
                  ori          s3, s7, 894
                  srli         t2, a3, 8
                  add          s1, s0, a1
                  auipc        a5, 417585
                  and          s11, gp, s1
1373:             nop
                  nop
                  srai         t2, t2, 24
1376:             nop
                  srl          a7, sp, s8
                  sll          s2, s6, a0
                  add          a6, s2, s2
                  sltiu        t1, t2, 896
                  slli         a2, t0, 2
                  lui          a6, 612229
                  bne          s8, a0, 1394f
                  srai         s6, s4, 19
                  lui          s9, 1031546
                  srai         s2, gp, 9
                  bge          s3, s10, 1391f
                  or           s7, zero, t1
                  andi         a4, s4, -1324
                  bge          s4, t6, 1397f
1391:             xor          t6, t5, s6
                  blt          ra, zero, 1400f
                  andi         s8, a5, 22
1394:             slli         t1, t5, 23
                  bne          s9, s11, 1401f
                  sra          a7, s11, s6
1397:             bltu         t3, t4, 1405f
                  beq          t5, s5, 1401f
                  xori         s9, t5, -861
1400:             bgeu         a5, s2, 1406f
1401:             xori         s7, s11, 1506
                  lui          a4, 346085
                  ori          a0, s9, -249
                  blt          gp, a1, 1420f
1405:             beq          s7, s7, 1414f
1406:             lui          s2, 516632
                  ori          a6, a5, 902
                  slti         s9, s7, -236
                  xori         t6, a7, 649
                  sra          tp, t2, s1
                  beq          a5, s2, 1429f
                  or           s11, s5, s1
                  auipc        t3, 310146
1414:             sub          s9, a3, t6
                  sub          a7, s11, zero
                  slli         a6, s11, 21
                  srli         t2, gp, 1
                  bgeu         a1, s3, 1420f
                  sltu         sp, a6, t0
1420:             sll          s9, s9, t5
                  lui          t6, 1027344
                  slt          tp, s10, s5
                  ori          t0, s2, -1364
                  blt          a3, s0, 1441f
                  slti         s1, s11, 1069
                  srl          s0, t0, a2
                  nop
                  or           s7, t3, sp
1429:             sltiu        s2, s2, -1854
                  andi         a3, s11, -445
                  xori         a6, s0, -605
                  bltu         s4, sp, 1446f
                  or           s0, t6, gp
                  bge          a3, a6, 1443f
                  ori          a2, t2, -956
                  srai         s9, s3, 3
                  srl          a4, s1, s8
                  andi         s7, gp, 1195
                  slt          a3, a3, s0
                  bgeu         tp, s4, 1452f
1441:             slt          s5, s9, t5
                  auipc        s11, 614718
1443:             sub          t0, a6, t5
                  sltu         s7, a7, s11
                  slli         a0, a7, 11
1446:             sltu         a2, a1, s9
                  bgeu         s7, s8, 1461f
                  slt          gp, a5, s6
                  slti         a5, ra, 292
                  xor          s6, zero, sp
                  srl          t5, s8, s2
1452:             andi         a4, a1, 1139
                  xori         a7, s6, -1412
                  bne          a7, s7, 1472f
                  andi         s8, a6, -938
                  sltu         t2, t6, s11
                  or           s8, t4, t5
                  or           s1, s8, s9
                  add          a3, a6, t1
                  bne          s2, s0, 1475f
1461:             auipc        t2, 267763
                  or           s5, t0, a0
                  xori         t6, s3, -1236
                  sltiu        sp, a6, -498
                  bgeu         a5, s4, 1480f
                  sltu         a6, t6, s2
                  sll          s5, s4, s3
                  srai         gp, t4, 9
                  add          t0, t0, tp
                  beq          a4, s10, 1475f
                  bne          t6, t5, 1489f
1472:             srai         t6, a6, 9
                  auipc        t6, 1040574
                  xor          sp, t5, ra
1475:             and          a3, sp, s2
                  srai         t0, s4, 17
                  beq          a5, s0, 1483f
                  lui          t1, 761456
                  slt          zero, ra, a1
1480:             srli         t2, gp, 4
                  srl          tp, gp, s4
                  slti         s7, tp, -1556
1483:             bltu         a2, a1, 1497f
                  lui          a4, 316661
                  nop
                  auipc        t2, 962612
                  auipc        t3, 279001
                  sll          s10, a7, t6
1489:             xori         t5, s10, 1504
                  sub          s10, a4, s9
                  slt          s8, tp, s8
                  lui          s10, 232012
                  lui          s7, 853688
                  or           s3, a2, t4
                  sltu         s11, zero, s11
                  bge          s6, tp, 1511f
1497:             and          a1, a7, a4
                  xor          s8, s5, t0
                  bltu         s10, a3, 1517f
                  nop
                  srli         a0, a6, 4
                  auipc        t0, 311720
                  and          s9, t1, s4
                  sltu         s2, s9, tp
                  or           t6, t1, t5
                  sub          zero, t6, a3
                  sra          a5, s3, s11
                  andi         s11, s10, 2
                  xor          s7, a4, t3
                  auipc        s9, 409870
1511:             lui          s5, 57648
                  sra          a5, t6, t5
                  slli         s2, t4, 25
                  sltiu        a1, t4, 273
                  bne          t0, a5, 1523f
                  srli         s0, t3, 16
1517:             xor          t1, a7, s11
                  auipc        gp, 169349
                  slti         s7, s2, -1227
                  blt          ra, a0, 1524f
                  sub          t5, a7, s2
                  nop
1523:             xor          t6, a2, t0
1524:             xori         a2, a2, -2032
                  slti         zero, zero, -183
                  bge          t0, s5, 1534f
                  bne          t5, t2, 1534f
                  slti         s11, s4, 696
                  bne          t3, t4, 1541f
                  slti         t0, a6, 1191
                  andi         s3, s3, -1231
                  bgeu         a3, s3, 1550f
                  bne          t2, s0, 1538f
1534:             andi         a4, s5, -1593
                  andi         tp, tp, -1014
                  slti         sp, s8, 1617
                  auipc        t0, 824856
1538:             and          a2, s0, t5
                  sra          gp, gp, a4
                  andi         zero, s10, -46
1541:             auipc        s9, 604293
                  bge          a7, t6, 1552f
                  nop
                  slt          a6, s9, t2
                  slli         s2, s3, 15
                  and          s0, sp, a7
                  sra          a1, t1, s6
                  xor          t6, a3, a0
                  srli         a0, t2, 18
1550:             lui          s10, 559643
                  slt          s0, tp, s8
1552:             xori         a1, s1, -1637
                  bne          t3, ra, 1563f
                  nop
                  and          t1, s3, a0
                  add          t5, s4, s7
                  sra          gp, a5, s6
                  or           s1, a6, t2
                  xori         a7, a5, -905
                  nop
                  blt          ra, s7, 1563f
                  srl          s0, t4, a5
1563:             sll          tp, s1, gp
                  srli         tp, t5, 0
                  auipc        sp, 484758
                  bne          t3, s5, 1575f
                  slti         a3, a1, -1171
                  sra          a4, s7, s6
                  blt          zero, s0, 1589f
                  slli         s8, a5, 23
                  sub          gp, s2, a1
                  bne          t0, s9, 1592f
                  sll          s2, t5, a5
                  slli         a6, t6, 18
1575:             bne          s1, s4, 1590f
                  addi         s11, sp, -908
                  bgeu         a5, s4, 1594f
                  sub          zero, a1, t0
                  sll          t6, a6, t3
                  xori         s1, t4, -1559
                  srai         a0, tp, 8
                  srli         sp, a7, 15
                  nop
                  bge          tp, a3, 1588f
                  lui          s1, 708943
                  ori          t1, a7, 1943
                  sll          s1, s3, a5
1588:             bge          s2, s10, 1599f
1589:             sub          a6, a0, t3
1590:             slt          a1, a2, s11
                  srl          sp, a0, gp
1592:             sltu         sp, s2, s8
                  or           a1, s10, a5
1594:             sub          t3, s4, a7
                  sra          s2, s2, s5
                  nop
                  xori         sp, s10, 228
                  addi         t2, s4, -878
1599:             bge          s2, s7, 1615f
                  sll          s0, sp, a6
                  ori          s6, ra, -484
                  nop
                  and          a3, s1, s3
                  srai         a7, a3, 11
                  beq          a3, s6, 1619f
                  ori          s10, t0, -1971
                  ori          gp, s11, -1924
                  bltu         tp, ra, 1614f
                  slt          s6, s9, a7
                  beq          s8, s4, 1619f
                  sll          t5, a6, t6
                  auipc        s10, 567719
                  bge          s6, a1, 1621f
1614:             ori          zero, t2, 903
1615:             sub          s2, a3, t5
                  slti         t2, zero, 1475
                  and          a3, a6, t3
                  sll          s3, s9, a2
1619:             bne          zero, a7, 1634f
                  slti         s9, t0, -1121
1621:             or           a1, gp, s0
                  bne          a7, a0, 1640f
                  addi         a1, a2, -1265
                  sltiu        s10, s0, 484
                  slt          s2, s6, s9
                  nop
                  bgeu         s3, a4, 1630f
                  sra          t1, t3, zero
                  xor          s10, t1, a5
1630:             bge          s0, gp, 1637f
                  add          a0, s6, t0
                  slli         a7, t1, 0
                  ori          s1, s2, -1629
1634:             srl          s3, t6, a0
                  lui          a7, 672032
                  sub          s7, t4, s11
1637:             and          t5, t6, a4
                  ori          s7, s9, 1818
                  xori         a0, t0, 1845
1640:             bgeu         t2, gp, 1642f
                  srai         sp, a1, 7
1642:             lui          sp, 960127
                  nop
                  sll          s5, t0, a6
                  sltiu        t2, s10, -319
                  beq          gp, t6, 1650f
                  andi         a4, t6, 555
                  srl          a3, a0, t5
                  bltu         s4, a3, 1664f
1650:             srli         s5, t4, 3
                  auipc        a4, 88278
                  sra          a3, s9, s2
                  srl          t0, s6, a7
                  bne          t2, a2, 1658f
                  andi         s5, t4, -114
                  sltu         t1, s10, ra
                  bne          s6, s4, 1667f
1658:             blt          s3, t2, 1675f
                  sra          s7, a2, s7
                  sub          s1, t2, t0
                  sll          t6, a1, tp
                  slli         a0, a1, 24
                  sub          t6, a7, sp
1664:             bge          a4, a1, 1671f
                  sub          a3, zero, s5
                  xori         t6, a7, -2009
1667:             and          t0, t2, a2
                  beq          s2, s9, 1677f
                  xor          s1, ra, s2
                  bltu         s2, t0, 1678f
1671:             slt          s6, tp, t1
                  bltu         a2, a5, 1686f
                  addi         t6, s10, 1676
                  and          s1, s5, sp
1675:             srl          a7, s7, t3
                  add          s9, t0, t4
1677:             slli         s2, a7, 18
1678:             slti         a1, s3, 1959
                  bltu         s5, t3, 1685f
                  nop
                  and          a7, s4, s2
                  slli         s3, s10, 18
                  srli         s11, s1, 29
                  addi         s2, t4, -1550
1685:             bne          a7, s1, 1690f
1686:             sltu         a2, t4, s4
                  andi         gp, s2, -46
                  xori         s9, a6, 1382
                  or           a1, sp, t6
1690:             addi         s6, a1, 1006
                  auipc        s5, 904951
                  slti         zero, gp, -846
                  bltu         t2, a1, 1702f
                  nop
                  sltu         s7, t1, tp
                  addi         a5, a6, 375
                  la           t6, region_1+1885 #start riscv_load_store_rand_instr_stream_3
                  sb           t2, -10(t6)
                  xor          a2, gp, zero
                  lhu          s5, 9(t6)
                  lbu          a0, -6(t6)
                  lb           s10, 33(t6)
                  lhu          s5, -23(t6)
                  lh           a3, 53(t6)
                  ori          t2, s10, 1536
                  sb           t0, -8(t6)
                  lbu          a1, 42(t6)
                  lbu          s5, -46(t6)
                  ori          zero, a5, -1496
                  lb           s3, -27(t6)
                  sb           a6, -10(t6)
                  sll          gp, a5, s5
                  and          a4, t1, s10
                  lbu          a6, -25(t6)
                  lh           s7, -17(t6)
                  sub          a4, s8, t3
                  sll          t1, s10, s2
                  lbu          t2, 54(t6)
                  srai         a3, s1, 12
                  xori         a4, s1, -1061
                  srai         a1, s11, 13
                  lbu          s0, 17(t6)
                  sb           s11, -2(t6) #end riscv_load_store_rand_instr_stream_3
                  bne          s5, s7, 1715f
                  or           a5, s8, t2
                  auipc        tp, 50161
                  srai         zero, t4, 6
                  blt          t2, a5, 1712f
1702:             andi         t0, s8, -568
                  slt          gp, s10, a5
                  sra          sp, a4, ra
                  blt          s7, t0, 1725f
                  xor          s10, zero, t3
                  or           s7, s8, t2
                  srli         zero, a5, 21
                  bne          t4, t2, 1724f
                  beq          s10, t6, 1718f
                  auipc        t1, 677056
1712:             beq          tp, tp, 1727f
                  addi         a4, s10, -2016
                  sll          s6, s6, s8
1715:             bltu         s9, gp, 1735f
                  sra          s0, s11, t0
                  srli         a6, t5, 4
1718:             add          s8, s5, t2
                  bge          gp, t3, 1737f
                  sll          s9, s5, gp
                  sltiu        a6, s1, -1227
                  beq          tp, s1, 1740f
                  slti         a3, a2, 498
1724:             bge          s9, a4, 1730f
1725:             ori          s10, s4, -1629
                  xori         tp, tp, 1596
1727:             bgeu         s10, s6, 1737f
                  sltu         t6, t6, a2
                  sra          s2, s2, s10
1730:             nop
                  sltiu        a5, t3, 281
                  xor          sp, s7, a6
                  addi         a3, ra, -447
                  beq          s8, s8, 1742f
1735:             blt          t5, s7, 1738f
                  srl          a5, t3, ra
1737:             sub          s6, t3, s2
1738:             xori         a6, a7, 1616
                  beq          a0, s10, 1746f
1740:             srl          t1, a7, t6
                  sll          s1, t1, t2
1742:             blt          a0, s10, 1758f
                  srai         a7, t1, 19
                  andi         s1, tp, 1368
                  srai         s2, t1, 1
1746:             sra          t0, t2, gp
                  srai         t5, t2, 8
                  nop
                  slli         s0, s6, 18
                  bltu         t5, s9, 1764f
                  bne          sp, sp, 1763f
                  sltu         t0, s6, gp
                  srli         s6, t1, 14
                  xor          t1, s5, s4
                  srai         s10, t4, 27
                  ori          a6, s1, 277
                  ori          s7, t6, 220
1758:             nop
                  slti         a3, s6, 1873
                  lui          a4, 738680
                  bge          tp, s3, 1772f
                  bge          s11, s9, 1771f
1763:             sltu         s10, a6, s8
1764:             sll          tp, t6, s0
                  sltiu        s9, gp, 1913
                  or           t0, s6, sp
                  nop
                  nop
                  ori          tp, t0, 541
                  sll          a2, s3, a3
1771:             srli         t5, s1, 2
1772:             slti         s7, t4, 1177
                  sltiu        s5, s0, 1333
                  slti         a3, gp, -1267
                  xori         t0, t6, 2045
                  andi         s0, t6, -866
                  slti         t5, t1, -1221
                  srli         tp, sp, 5
                  ori          s5, s6, -1299
                  addi         s2, a3, 1082
                  bgeu         s8, s0, 1787f
                  lui          t1, 574008
                  andi         a4, tp, 264
                  xor          t0, t4, a7
                  xori         s3, a0, 985
                  lui          t3, 127590
1787:             andi         sp, tp, 2024
                  sltiu        s5, tp, 1595
                  sltiu        t0, s4, -1923
                  xori         s2, s9, 298
                  slli         t5, t5, 30
                  slt          s10, s5, a2
                  lui          t5, 955179
                  xor          s0, s9, s10
                  blt          s8, a5, 1805f
                  blt          gp, a2, 1801f
                  blt          ra, a5, 1799f
                  bge          zero, s9, 1805f
1799:             add          t6, t3, s9
                  andi         s10, a2, -618
1801:             sltu         s5, t3, a2
                  addi         s1, s2, -1388
                  sra          s7, zero, a7
                  sra          t5, zero, gp
1805:             sll          s11, s8, s7
                  addi         a6, t1, -1159
                  sra          s5, a1, s11
                  sltu         sp, a0, s11
                  slti         s11, s8, 2043
                  bne          s0, a2, 1827f
                  slti         t6, ra, -1807
                  srl          s9, s3, a1
                  blt          a5, a2, 1823f
                  srai         s11, t3, 12
                  andi         tp, a1, -1976
                  ori          a3, a2, -967
                  andi         t0, zero, -996
                  auipc        a2, 928501
                  bgeu         t5, a1, 1828f
                  xor          a0, ra, t2
                  nop
                  or           s3, sp, t5
1823:             bltu         t3, a7, 1843f
                  sra          a0, gp, s3
                  andi         t5, s10, -162
                  xor          t3, a1, t3
1827:             lui          s0, 85514
1828:             bltu         a0, a7, 1832f
                  and          t0, t5, s10
                  xori         s7, s7, -514
                  slt          s9, t1, a0
1832:             bne          s8, t1, 1852f
                  slt          t6, s2, a5
                  srli         s9, t4, 21
                  xori         t3, a5, 66
                  slt          a6, t0, s1
                  sltiu        a3, a6, -894
                  nop
                  bne          s3, a2, 1854f
                  slli         t6, s4, 30
                  and          tp, s10, a4
                  srli         s1, a4, 3
1843:             nop
                  and          s0, a1, s2
                  srli         s8, s11, 9
                  srli         sp, a0, 10
                  sltiu        a1, t6, -1840
                  add          a3, s0, ra
                  auipc        s7, 307176
                  xori         a0, a6, 827
                  sra          sp, t2, a3
1852:             beq          a1, t1, 1860f
                  nop
1854:             and          s1, a5, t6
                  slti         s7, s11, 1694
                  ori          s8, s11, -911
                  sll          a4, a0, a2
                  slti         s11, ra, 1798
                  sub          s10, s6, s7
1860:             andi         gp, t2, -3
                  andi         a7, s1, -1993
                  blt          gp, s3, 1870f
                  bgeu         t1, t5, 1878f
                  sll          a5, s2, t3
                  srli         t1, sp, 24
                  slt          t6, s11, s2
                  bltu         s8, a5, 1885f
                  andi         s1, a6, -1598
                  sra          a0, zero, t2
1870:             slt          s7, s4, s0
                  sll          a3, a2, t5
                  slt          t5, t4, t6
                  add          s10, s11, t5
                  and          s7, t0, gp
                  sltiu        s0, a3, 14
                  sltu         a2, s0, t4
                  ori          a0, s5, 769
1878:             srai         t6, s4, 14
                  srai         s0, a0, 16
                  bne          zero, a3, 1888f
                  slli         s8, t2, 30
                  addi         a3, s10, -1961
                  auipc        s10, 585543
                  slti         a4, a3, -1107
1885:             sub          sp, t4, s6
                  or           s7, t3, s1
                  bgeu         t5, a3, 1893f
1888:             bgeu         a5, s7, 1900f
                  nop
                  slti         s1, a7, -1753
                  bltu         s2, t4, 1906f
                  xor          t2, t4, s5
1893:             sll          s11, ra, a1
                  srli         a4, a2, 15
                  blt          s2, t1, 1909f
                  blt          s0, zero, 1910f
                  xor          t6, s1, t6
                  bge          a7, s4, 1901f
                  bltu         s6, t2, 1917f
1900:             bge          s7, gp, 1916f
1901:             ori          s6, t6, -1053
                  slt          a0, a0, s8
                  slt          t5, s7, tp
                  bgeu         s11, t6, 1908f
                  sltiu        a4, t0, -1346
1906:             srai         t5, s3, 7
                  blt          a4, s6, 1925f
1908:             addi         gp, a5, -1491
1909:             sll          s9, s4, s10
1910:             ori          s9, s1, 1389
                  beq          s1, a5, 1918f
                  slli         a6, t3, 8
                  xori         s3, ra, 1855
                  sll          s0, tp, s10
                  slti         s11, gp, 467
1916:             sltiu        t5, s0, -1509
1917:             slt          a5, t4, t5
1918:             or           s3, t3, t0
                  blt          s9, t1, 1934f
                  sub          sp, s6, t1
                  xori         a5, s0, -572
                  sub          a0, s6, zero
                  andi         sp, s0, 979
                  srl          t1, a3, t3
1925:             sll          s7, a2, s3
                  blt          s2, t6, 1940f
                  ori          zero, s9, 2004
                  bge          a5, a3, 1937f
                  srli         t0, a7, 7
                  lui          t3, 682387
                  ori          t1, s9, 1225
                  slti         t5, sp, -1486
                  bltu         zero, s3, 1942f
1934:             srai         t3, a4, 20
                  nop
                  bne          t0, s11, 1944f
1937:             sltiu        s1, t5, -177
                  xori         a2, t5, 1398
                  sltu         t1, a6, s7
1940:             sub          a4, t5, tp
                  slli         s5, s4, 27
1942:             slli         a4, a4, 6
                  auipc        tp, 200748
1944:             lui          a2, 756087
                  auipc        s11, 252441
                  sra          s7, a3, a4
                  lui          gp, 993939
                  nop
                  bltu         t2, s10, 1955f
                  lui          t0, 438105
                  srai         t2, s9, 13
                  slti         gp, t6, 1058
                  andi         t3, s11, 1355
                  ori          t5, ra, -251
1955:             slt          s7, ra, ra
                  sra          t0, s1, gp
                  sltu         s3, t1, tp
                  bge          s11, t0, 1963f
                  srli         tp, t4, 13
                  bne          s0, a5, 1970f
                  andi         t1, a3, 1298
                  addi         gp, t4, 1189
1963:             bgeu         s8, sp, 1967f
                  sra          s9, t2, s9
                  blt          s6, s3, 1985f
                  beq          a7, s9, 1980f
1967:             add          s8, t3, s5
                  srli         s6, t1, 14
                  or           t1, a2, s3
1970:             bne          t6, t2, 1978f
                  bltu         s1, s6, 1982f
                  xor          a3, s7, s6
                  bne          a4, t4, 1988f
                  blt          t2, t3, 1990f
                  srl          zero, gp, a1
                  auipc        s0, 343765
                  beq          t1, s0, 1995f
1978:             srai         gp, gp, 25
                  slli         s6, tp, 25
1980:             andi         s8, s1, 1377
                  srai         s1, t4, 26
1982:             beq          tp, s3, 1999f
                  sltu         a4, t3, t0
                  ori          a4, tp, -105
1985:             sub          a7, a1, s0
                  slti         zero, t5, -1653
                  sltu         t3, s2, t6
1988:             auipc        s6, 97167
                  srli         sp, t6, 6
1990:             bgeu         a6, s1, 1993f
                  or           a1, s6, s5
                  xori         a2, s8, -1243
1993:             beq          s2, t6, 2000f
                  xor          a6, a7, tp
1995:             nop
                  auipc        s8, 712930
                  srli         s10, a2, 31
                  nop
1999:             nop
2000:             andi         t6, a7, -1974
                  andi         zero, a6, 1167
                  nop
                  and          t0, sp, s2
                  sub          a6, tp, t5
                  slt          s5, s4, sp
                  addi         a5, t2, -545
                  auipc        gp, 415037
                  beq          t5, a4, 2012f
                  nop
                  sltu         s3, s4, a5
                  add          s10, s11, s2
2012:             sll          s3, tp, zero
                  or           tp, t3, s8
                  xor          a6, t2, t4
                  slti         a6, a5, -1367
                  slt          t1, t0, a7
                  nop
                  slli         s0, a5, 31
                  andi         t3, t2, -1441
                  srai         t2, t5, 21
                  auipc        s0, 54775
                  xori         s2, a4, -1875
                  and          a0, s6, s1
                  andi         zero, t2, -1723
                  beq          a3, a6, 2031f
                  blt          a7, s7, 2033f
                  xori         t5, s5, -542
                  beq          a0, s11, 2034f
                  bne          t6, t2, 2034f
                  slt          t0, s3, s6
2031:             slli         a4, sp, 7
                  srli         t2, a1, 8
2033:             sltu         a4, a4, a4
2034:             xori         s1, a4, 851
                  slli         a3, s11, 5
                  slt          t1, tp, s9
                  lw           s7, 4(t4)
                  slt          t0, s0, t2
                  addi         t4, t4, 32
                  add          t3, t2, t0
                  or           zero, sp, s7
2739:             addi x21, x23, 0
2739:             jalr x21, x21, 0
sub_4:            sltu         s1, t1, zero
                  srai         t3, a6, 0
                  srl          s0, s2, s2
                  srli         a2, s1, 6
                  addi         t4, t4, -36
                  srl          t1, a0, t2
                  add          sp, s11, s11
                  sw           s7, 4(t4)
                  nop
                  srli         s10, s8, 26
                  nop
                  srai         t1, t0, 29
                  addi         a2, s9, 1311
                  slt          t6, a1, s5
                  la           a3, sub_6
                  nop
                  sltiu        t2, a5, -1132
                  addi         a3, a3, -624
                  xor          s1, t0, a3
                  sll          s5, sp, tp
                  xor          a2, tp, a1
sub_4_j5:         jalr         s7, a3, 625 #jump sub_4 -> sub_6
                  sll          s3, a4, ra
                  slti         t5, s11, -889
                  lui          a6, 536937
                  sltiu        t2, sp, -1006
                  lui          s1, 1021832
sub_4_j6:         jal          s7, sub_5 #jump sub_4 -> sub_5
                  la           t1, region_1+1752 #start riscv_load_store_rand_instr_stream_0
                  sltu         s2, s8, a3
                  or           t5, a6, a1
                  lb           s3, 63(t1)
                  sll          a7, a2, a4
                  sb           ra, -43(t1)
                  sw           a4, 8(t1)
                  addi         s7, s8, -208
                  nop
                  lbu          a1, -126(t1)
                  lhu          a3, 94(t1)
                  slt          t3, s4, a2
                  xor          s11, s1, t0
                  sb           s7, -160(t1)
                  ori          t2, s9, -1262
                  sra          s6, t5, t5
                  sltiu        s6, t5, -19
                  sb           zero, -71(t1)
                  sltiu        s8, t0, 1651
                  srai         s9, s3, 8
                  sub          a6, t4, s5
                  lb           t5, -74(t1)
                  lhu          s11, 64(t1)
                  sb           s8, 245(t1)
                  sb           t4, 21(t1)
                  nop
                  lbu          zero, 151(t1)
                  lb           a3, 235(t1)
                  sub          s10, ra, ra
                  sb           t2, -77(t1)
                  sltu         t0, a7, s10
                  sb           t5, 109(t1)
                  auipc        sp, 361637
                  sb           s2, -7(t1)
                  lbu          s0, 2(t1)
                  lb           a1, 46(t1)
                  lb           t2, -101(t1)
                  srli         s3, sp, 15
                  lbu          s9, -13(t1)
                  slli         s1, tp, 25
                  lb           a1, -125(t1)
                  add          t6, s6, t3
                  lb           a1, -122(t1)
                  lbu          s6, 97(t1)
                  sb           t5, -161(t1) #end riscv_load_store_rand_instr_stream_0
                  lui          a7, 175769
                  auipc        t0, 205645
                  bne          s6, tp, 8f
                  or           s3, s0, s7
                  sltiu        tp, s0, -1723
                  andi         s11, sp, 1491
                  bne          sp, s10, 13f
                  auipc        s3, 690473
8:                slt          a3, a7, t2
                  bgeu         t5, t2, 25f
                  sltiu        s10, s11, -59
                  bge          ra, s6, 28f
                  sll          a2, s4, zero
13:               xori         sp, s4, -1854
                  or           t1, s6, ra
                  lui          s10, 673116
                  xori         s8, t3, 1613
                  bgeu         s5, a5, 24f
                  bge          s0, s10, 35f
                  sll          gp, s5, s1
                  blt          t3, a3, 27f
                  slti         tp, t5, 73
                  bgeu         ra, s8, 29f
                  bge          s6, s9, 41f
24:               bltu         a3, t2, 40f
25:               sra          s6, gp, s8
                  add          t1, s7, s5
27:               srl          s7, a0, a1
28:               sltu         a4, t6, s10
29:               srl          zero, gp, a0
                  nop
                  sltu         s1, a0, t2
                  beq          a5, t0, 40f
                  sll          s5, s1, a3
                  sltiu        t2, t4, 1419
35:               addi         t1, t2, -1342
                  bne          t3, s1, 53f
                  lui          s5, 176348
                  sra          s8, s1, s9
                  xor          s0, a6, ra
40:               and          a2, s3, s0
41:               bgeu         s9, a1, 50f
                  bge          s4, zero, 44f
                  or           t6, s7, s7
44:               andi         a3, s5, -1704
                  slt          zero, ra, s0
                  blt          a3, gp, 61f
                  nop
                  sll          a5, a4, a5
                  auipc        a2, 134164
50:               sltu         a5, sp, t2
                  bge          s8, s0, 63f
                  sltu         s8, s9, tp
53:               andi         sp, a6, 1267
                  xori         s0, gp, -1398
                  bne          s5, t5, 69f
                  srai         a6, ra, 5
                  sll          t1, a7, a3
                  andi         s6, t3, 1390
                  srai         s8, a6, 5
                  blt          s8, s11, 68f
61:               xori         a7, t0, 1624
                  xor          s5, s4, a1
63:               srai         s9, t5, 6
                  sll          t5, zero, s10
                  sll          a6, a4, s10
                  slti         t6, s11, 1550
                  and          a4, t3, zero
68:               bltu         t3, s7, 76f
69:               sltu         s7, s11, a5
                  slti         s8, ra, -1850
                  or           sp, t1, a2
                  auipc        s7, 370818
                  nop
                  bge          a7, t5, 94f
                  bne          t2, zero, 83f
76:               andi         s11, sp, -698
                  xor          zero, s0, a2
                  beq          a4, sp, 97f
                  add          s5, gp, a2
                  bgeu         t3, sp, 82f
                  lui          a7, 727299
82:               sltu         s7, s10, a7
83:               or           tp, a2, a7
                  ori          s1, s3, -1735
                  sub          t2, t5, s8
                  slt          s10, s4, gp
                  sltiu        t3, s9, 1785
                  or           tp, a4, s7
                  xori         s1, s7, -986
                  slti         tp, s2, 694
                  lui          s11, 877327
                  sra          s7, s8, t4
                  or           t2, a5, a3
94:               srl          s7, t3, zero
                  srl          gp, s11, a0
                  xor          s2, a2, gp
97:               ori          s5, a1, -1039
                  ori          s1, t1, 976
                  sub          a7, zero, t3
                  xor          a0, gp, t5
                  bgeu         t5, t3, 106f
                  sub          s3, a1, a3
                  sltiu        s1, s3, -820
                  andi         a4, s9, -1097
                  bgeu         s11, a6, 123f
106:              srli         a5, t0, 1
                  srai         a4, a3, 6
                  sub          s8, sp, a3
                  beq          t2, t3, 119f
                  auipc        s3, 591417
                  or           a6, t3, ra
                  nop
                  auipc        tp, 27900
                  srli         zero, zero, 13
                  slti         t5, s3, -1738
                  srai         t6, a7, 30
                  slt          t6, a0, s6
                  ori          tp, s5, -946
119:              bltu         a5, a2, 130f
                  xor          s10, s8, t5
                  lui          s9, 833365
                  bge          sp, s6, 137f
123:              addi         a2, a7, -1759
                  sll          s8, t4, a3
                  xori         t0, a4, -1625
                  sltu         s10, a5, ra
                  nop
                  bltu         a5, t4, 132f
                  slti         t1, s4, -360
130:              xor          s8, s3, tp
                  bge          s2, t3, 134f
132:              blt          s10, s10, 146f
                  or           t6, tp, a0
134:              auipc        zero, 577756
                  auipc        s5, 540821
                  slli         a5, sp, 26
137:              bne          tp, t5, 145f
                  bne          s11, a6, 150f
                  blt          t0, s2, 141f
                  slt          t5, s0, ra
141:              add          a2, sp, a6
                  ori          a7, t1, -438
                  or           a2, a5, t3
                  slti         s3, zero, 1511
145:              nop
146:              add          a1, a2, a2
                  sltiu        s1, s10, 1760
                  srai         s5, t3, 12
                  blt          tp, t4, 168f
150:              srli         s0, s11, 16
                  xori         s9, a6, -1275
                  sub          s11, t6, t2
                  andi         t1, t5, -847
                  ori          a1, s1, -81
                  srai         s11, a4, 9
                  nop
                  blt          s7, ra, 161f
                  bltu         t0, s9, 165f
                  xori         s5, t3, -1772
                  or           a7, a6, t1
161:              slt          gp, s7, s2
                  xori         t5, a4, -1855
                  add          s9, s8, a7
                  lui          s3, 495510
165:              andi         s6, t5, 1871
                  beq          s0, a5, 172f
                  slli         s11, s2, 19
168:              bgeu         s10, t3, 186f
                  bne          a0, a3, 172f
                  add          s8, t2, s1
                  ori          s7, a0, -1574
172:              xor          t5, s10, s7
                  bne          gp, s11, 181f
                  xori         s9, t2, 1246
                  addi         s6, a6, 307
                  bltu         s5, s8, 194f
                  bne          a2, a7, 194f
                  slti         a4, s2, -1698
                  sll          s5, t2, t3
                  andi         a1, s7, 487
181:              sll          a2, ra, t4
                  srai         zero, zero, 28
                  bge          ra, t0, 188f
                  srl          a6, t6, t5
                  slt          tp, sp, s5
186:              slt          a2, a0, a7
                  sub          t2, s3, t4
188:              addi         t2, s8, 1045
                  beq          t1, tp, 197f
                  sltiu        t6, s5, -465
                  bltu         gp, a1, 207f
                  nop
                  xori         s1, s10, -2011
194:              bltu         s6, s2, 202f
                  sltu         t1, s10, t2
                  lui          t1, 488054
197:              beq          t1, t6, 206f
                  blt          s10, s2, 215f
                  and          s10, a2, s4
                  or           sp, s0, t4
                  nop
202:              ori          s8, s3, -296
                  lui          tp, 6247
                  sltu         s3, sp, s0
                  blt          s5, t4, 221f
206:              sra          s6, s3, s9
207:              beq          s0, t3, 214f
                  auipc        gp, 853869
                  xor          s10, a4, gp
                  srli         s6, ra, 31
                  slt          a5, t1, t3
                  lui          a1, 583891
                  add          t2, a0, s9
214:              xori         s5, a5, -165
215:              or           zero, a3, t2
                  srai         tp, s4, 28
                  nop
                  and          a2, a1, gp
                  lui          s2, 536903
                  bne          a7, a2, 227f
221:              srl          a7, s9, a2
                  lui          a5, 740784
                  slli         t5, s5, 27
                  slti         s1, a6, -917
                  ori          t1, t3, -1001
                  bltu         t2, ra, 228f
227:              slt          a7, t5, a0
228:              addi         s7, s2, 742
                  blt          a1, s5, 249f
                  and          a7, s6, zero
                  bge          zero, t3, 246f
                  xori         tp, a2, -2045
                  and          s8, s3, a1
                  lui          a4, 312932
                  sra          s10, a0, s3
                  andi         s0, t6, 387
                  or           s11, t0, t5
                  sra          s5, tp, s9
                  ori          s11, gp, -1500
                  auipc        a7, 154016
                  xori         s6, a1, -1762
                  bgeu         s8, s7, 249f
                  add          s10, a3, s4
                  bgeu         s10, sp, 259f
                  nop
246:              nop
                  blt          t1, s11, 264f
                  lui          s10, 292022
249:              bge          t3, ra, 260f
                  auipc        s6, 259188
                  addi         s0, s2, -1409
                  ori          s5, t2, 751
                  srl          s6, sp, t3
                  srli         s3, s4, 22
                  sltu         a3, s11, s4
                  sltu         s3, a2, s1
                  bltu         a6, sp, 267f
                  addi         a6, s5, -1471
259:              sltiu        s5, s8, 1085
260:              sll          a1, s1, zero
                  auipc        s2, 739287
                  bne          t0, a5, 273f
                  sltiu        t2, s3, -1664
264:              bltu         t3, a2, 274f
                  sub          a6, t6, gp
                  sub          a4, s0, s9
267:              srl          s0, t6, t3
                  or           a4, s11, tp
                  and          t2, a0, t3
                  nop
                  slti         a5, a5, 811
                  srli         t5, s7, 11
273:              srai         a6, s8, 30
274:              and          gp, a2, a0
                  sub          s11, s3, t2
                  xor          t6, a1, s0
                  nop
                  slti         a3, t6, 1713
                  bltu         t5, s7, 297f
                  la           sp, region_1+1171 #start riscv_load_store_rand_instr_stream_1
                  lbu          t2, 9(sp)
                  sb           t1, -9(sp)
                  sw           s9, -15(sp)
                  lb           t0, -7(sp)
                  andi         s3, a5, 1770
                  sb           s3, -2(sp)
                  lb           gp, -10(sp)
                  lbu          t1, 8(sp)
                  slli         t2, gp, 18
                  nop
                  xor          a5, t3, s3
                  srai         t2, s10, 0
                  auipc        s2, 35365
                  lhu          a3, 7(sp)
                  sb           gp, -12(sp)
                  lh           t0, 13(sp)
                  sb           s10, 9(sp)
                  lbu          s3, 4(sp)
                  slti         t1, a5, 499
                  sb           s11, -5(sp)
                  sw           s5, -11(sp)
                  lbu          a3, -5(sp)
                  sh           t6, 11(sp)
                  lw           gp, 9(sp)
                  sltiu        s9, t0, -69
                  sb           t4, 10(sp)
                  lb           s1, -12(sp)
                  lw           t6, 5(sp)
                  ori          a4, t2, -358
                  sh           s10, -13(sp)
                  lh           t2, -5(sp)
                  sb           a2, -9(sp)
                  auipc        a3, 108102
                  lb           s3, 3(sp)
                  sb           s5, -10(sp)
                  sb           t3, -3(sp)
                  lbu          t3, -16(sp)
                  srai         t0, tp, 19
                  sb           t2, 10(sp) #end riscv_load_store_rand_instr_stream_1
                  ori          s1, t0, -1294
                  sra          t6, s9, gp
                  sra          a2, t4, t3
                  lui          t5, 96717
                  xori         a2, t1, 1532
                  ori          a4, s0, -1034
                  or           s7, s2, a6
                  blt          s11, s8, 295f
                  lui          t2, 243619
                  slt          zero, t0, a6
                  ori          t6, s10, -557
                  auipc        a7, 526787
                  andi         s3, s11, -1793
                  sltu         s0, a2, a4
                  srl          t2, s2, t2
295:              ori          a4, a1, -1491
                  addi         a1, t2, 53
297:              sra          gp, gp, t6
                  addi         t0, t1, -723
                  sub          zero, a5, a0
                  xori         zero, a4, -377
                  blt          s6, s7, 309f
                  bltu         a0, s4, 304f
                  lui          a6, 878767
304:              or           t3, zero, s3
                  andi         a6, a1, 1847
                  nop
                  slti         s11, s10, 2038
                  sll          t3, a2, s6
309:              nop
                  andi         s2, a6, 643
                  sra          a1, t3, s10
                  srl          s5, ra, s6
                  sra          t1, s1, ra
                  addi         s2, tp, -1233
                  lui          s11, 140282
                  andi         s8, s5, -533
                  slt          t1, t6, gp
                  bge          s5, s2, 319f
319:              add          s5, t3, s4
                  lw           s7, 4(t4)
                  addi         zero, t2, 3
                  sub          sp, t0, a4
                  addi         t4, t4, 36
                  xori         a3, t4, 701
438:              addi x10, x23, 0
438:              jalr x10, x10, 0
sub_7:            addi         t4, t4, -60
                  sub          s3, t3, a4
                  sw           s7, 4(t4)
                  sltiu        t3, a1, 645
                  slt          a7, s6, s5
                  and          a0, s8, t0
                  auipc        t6, 19313
                  ori          s6, s3, -839
                  la           a0, sub_9
                  or           s2, t5, t6
                  lui          s2, 327903
                  addi         a0, a0, -288
                  andi         s0, s0, 63
                  srli         gp, zero, 28
                  andi         zero, a3, -1763
                  sltu         a3, t4, a0
                  sltu         s8, s11, t4
                  bgeu         s7, zero, sub_7_j9 #branch to jump instr
                  addi         t0, s0, 1250
sub_7_j9:         jalr         s7, a0, 289 #jump sub_7 -> sub_9
                  srai         s0, t4, 4
                  xor          s7, s2, s4
                  xor          s0, tp, a4
                  bltu         s5, a6, sub_7_j10 #branch to jump instr
                  and          a6, s11, sp
                  srl          s5, s2, a7
                  nop
                  auipc        t0, 710027
                  sltu         s2, s1, a2
sub_7_j10:        jal          s7, sub_10 #jump sub_7 -> sub_10
                  srli         a6, s0, 16
                  la           t5, sub_9
                  srli         t3, a3, 10
                  addi         t5, t5, 596
                  sltu         a3, t5, a3
                  and          s10, a5, a4
                  bltu         s1, s3, sub_7_j11 #branch to jump instr
                  andi         s8, t5, -755
                  and          s5, tp, s1
                  xori         s1, tp, 1870
sub_7_j11:        jalr         s7, t5, -596 #jump sub_7 -> sub_9
                  sltiu        a0, a6, 1867
                  sltu         s7, a5, t2
                  slli         s8, s2, 14
                  sra          s3, a1, t4
                  sra          s7, a7, s7
                  slt          a5, a7, s3
                  sub          t5, s5, t2
sub_7_j12:        jal          s7, sub_8 #jump sub_7 -> sub_8
                  sll          t2, s4, t3
                  slti         s3, ra, 1692
                  addi         s9, t6, 630
                  sll          a2, s4, a6
                  andi         s3, a3, 1653
                  beq          gp, t1, 7f
                  sub          a5, s9, s3
7:                addi         t2, gp, -199
                  andi         s11, t3, -213
                  slt          s1, s11, a6
                  slli         a6, ra, 17
                  slt          a1, s2, sp
                  auipc        t2, 10176
                  add          a2, gp, sp
                  andi         a5, tp, 1322
                  xori         t3, s10, -1619
                  bgeu         gp, zero, 17f
17:               nop
                  srai         a2, t4, 25
                  auipc        s2, 680967
                  andi         s6, t2, -318
                  andi         s8, a2, -991
                  lui          sp, 548603
                  slli         t5, gp, 12
                  sra          t1, s10, s0
                  sltu         t5, gp, a5
                  sub          s10, a5, t0
                  xor          s11, s2, a6
                  lw           s7, 4(t4)
                  sltu         a0, s9, s11
                  addi         t4, t4, 60
                  sub          a0, s10, s0
                  auipc        t5, 152996
                  srli         t2, s2, 27
83:               addi x23, x23, 1
83:               jalr x23, x23, 0
sub_10:           sltu         s8, s5, sp
                  beq          a0, s5, sub_10_stack_p
                  sub          s3, a1, a6
sub_10_stack_p:   addi         t4, t4, -40
                  sw           s7, 4(t4)
                  andi         t5, a3, -1670
                  andi         s7, a4, 1147
                  bltu         s5, s10, 15f
                  bgeu         a1, t6, 5f
                  bne          s5, s2, 21f
                  add          s1, zero, a7
5:                xori         gp, t0, -1807
                  sltu         s10, s7, t2
                  srli         t5, s5, 10
                  and          s5, a4, a4
                  sra          a2, s0, zero
                  sra          t1, a7, s2
                  bne          a2, a7, 13f
                  sltiu        tp, a3, -1604
13:               xor          a5, s3, a2
                  or           s10, sp, s0
15:               andi         t3, gp, 1257
                  sll          a5, a7, t1
                  bne          s0, s5, 32f
                  blt          s3, sp, 32f
                  and          a4, s1, s1
                  slti         gp, s1, 1238
21:               auipc        s5, 1001781
                  bltu         t1, s4, 32f
                  srli         a0, a2, 6
                  nop
                  addi         s10, tp, 1519
                  bne          a0, s3, 32f
                  auipc        a5, 559090
                  sltu         a3, s8, zero
                  srl          s3, a7, t3
                  or           s0, s7, tp
                  sltiu        a3, a1, 1738
32:               andi         s9, t5, -1396
                  auipc        a0, 787102
                  lui          s10, 168471
                  srai         a0, gp, 20
                  nop
                  lw           s7, 4(t4)
                  addi         t4, t4, 40
                  srli         t2, s4, 2
46:               addi x8, x23, 0
46:               jalr x8, x8, 0
sub_5:            or           t2, a5, t1
                  addi         t4, t4, -48
                  sw           s7, 4(t4)
                  ori          sp, a3, -1272
                  srli         a0, t2, 31
                  ori          s8, zero, 197
                  addi         t6, s10, -1630
                  slli         t3, a4, 8
                  sll          s5, gp, tp
                  sltu         s9, a0, t5
                  srl          a4, t3, s5
                  sltu         s0, s8, a4
                  srli         a7, a2, 1
                  ori          a6, t6, 1001
                  bne          t2, a5, sub_5_j7 #branch to jump instr
                  sltiu        s1, s0, 855
                  slli         a1, a7, 6
                  slti         s7, s2, 534
sub_5_j7:         jal          s7, sub_7 #jump sub_5 -> sub_7
                  la           sp, region_0+1365 #start riscv_load_store_rand_instr_stream_0
                  slti         a5, sp, -1864
                  lb           s2, 13(sp)
                  slli         tp, a5, 17
                  lb           s10, 16(sp)
                  srl          zero, s8, gp
                  lhu          s7, 9(sp)
                  sb           t3, -16(sp)
                  lbu          zero, 14(sp)
                  sb           s7, 6(sp)
                  srai         s8, tp, 21
                  lb           s10, -2(sp)
                  addi         zero, a5, -651
                  srl          t0, a6, t5
                  sh           t3, -15(sp)
                  sb           ra, 12(sp)
                  lb           a3, -7(sp)
                  sb           s5, -5(sp)
                  lbu          a2, -6(sp)
                  sb           s3, -3(sp)
                  andi         s10, t1, 1298
                  andi         a1, s7, -524
                  sb           t4, -12(sp)
                  and          t0, a5, s10
                  lui          t2, 918177
                  srli         a4, s9, 5
                  slt          a1, t4, s0
                  srli         t1, s4, 22
                  lb           t5, -16(sp)
                  lbu          s9, 8(sp)
                  lb           s8, 14(sp)
                  lb           a3, -10(sp)
                  slti         s10, a6, -1979
                  slli         s10, sp, 10
                  sltiu        s9, t3, 626
                  sh           t0, 1(sp)
                  srai         t1, sp, 9
                  sb           s9, -16(sp)
                  lb           s9, 14(sp)
                  andi         s0, s1, -1714
                  sh           s11, -9(sp) #end riscv_load_store_rand_instr_stream_0
                  srli         a4, a2, 27
                  beq          t3, t2, 17f
                  nop
                  xor          s3, zero, ra
                  addi         a4, a1, 1749
                  sll          s6, s8, tp
                  xor          s10, s5, s8
                  srli         s9, s7, 9
                  nop
                  bltu         gp, a2, 24f
                  auipc        gp, 692409
                  xori         s11, a5, 1297
                  nop
                  nop
                  andi         a0, s3, 174
                  sll          t6, a6, s6
                  sltu         s8, ra, a5
17:               andi         s7, zero, -1749
                  add          s9, a5, gp
                  slti         sp, sp, 1077
                  nop
                  sltu         s8, s11, t1
                  auipc        sp, 479726
                  sll          t1, t6, a0
24:               xori         s5, a7, 1255
                  xor          s9, gp, s7
                  bgeu         a2, s3, 31f
                  bltu         t4, gp, 32f
                  auipc        s10, 364079
                  srai         t0, s2, 13
                  bltu         s11, gp, 37f
31:               sll          s5, a7, a2
32:               sltu         t5, s7, s10
                  bne          ra, a5, 53f
                  andi         t2, sp, 212
                  sltu         sp, t5, tp
                  sra          a7, s11, s2
37:               blt          s0, t0, 48f
                  add          t6, s4, t2
                  sub          t6, zero, t2
                  bne          a7, t5, 54f
                  sub          a7, t2, s5
                  slt          s5, t6, t3
                  sltiu        s0, tp, -638
                  srl          s8, s10, a6
                  slti         a4, a1, 783
                  slti         t2, s4, 257
                  sra          t6, ra, s6
48:               add          a2, a5, a1
                  add          s0, s1, s11
                  bge          s10, a5, 57f
                  auipc        a6, 100993
                  sub          a4, t3, a3
53:               slt          s9, zero, sp
54:               bge          a7, a4, 71f
                  sra          s7, s6, ra
                  bne          a3, s9, 74f
57:               blt          t6, s9, 71f
                  sltu         t6, t3, s2
                  lui          s7, 165513
                  addi         a5, a6, 1667
                  srai         s6, a2, 13
                  sltu         tp, gp, s4
                  bltu         s8, a0, 79f
                  nop
                  bgeu         t1, a4, 67f
                  slli         s1, s6, 6
67:               srai         s5, t3, 8
                  nop
                  srli         t2, s1, 0
                  add          s5, s2, s7
71:               and          s5, s10, t4
                  or           s5, s3, s7
                  srli         t2, a7, 11
74:               xor          a3, s6, t0
                  slli         a5, t3, 16
                  bge          s4, t4, 96f
                  blt          t2, zero, 84f
                  nop
79:               sra          a0, s10, s10
                  ori          tp, s7, -1944
                  nop
                  nop
                  bltu         sp, a7, 100f
84:               beq          t3, t2, 101f
                  lui          t1, 640101
                  add          s5, t6, s10
                  lui          gp, 200542
                  add          a3, s0, t1
                  sll          a6, s2, s2
                  slt          sp, ra, t4
                  andi         s7, t0, 759
                  bge          a5, a6, 112f
                  sra          t2, t4, s5
                  srli         s3, t4, 27
                  sra          t2, s6, s1
96:               beq          t6, t4, 99f
                  xor          a6, a5, t3
                  sra          s5, s1, s7
99:               bne          t6, t5, 113f
100:              add          a7, gp, s7
101:              slti         s2, s5, 656
                  nop
                  sra          a7, t2, t0
                  bgeu         s5, s6, 118f
                  nop
                  slli         s2, t5, 23
                  xor          s8, t3, a5
                  sltu         a1, s9, t3
                  or           s3, s10, a6
                  xori         a5, t2, -268
                  sltiu        s7, a5, 372
112:              xor          a0, s11, s11
113:              srl          s9, tp, t1
                  sll          t3, t5, s7
                  andi         t1, s11, 2014
                  sra          s3, t2, a3
                  nop
118:              slli         sp, ra, 6
                  bne          t0, zero, 130f
                  slti         t3, s10, 57
                  sltu         t6, s11, s2
                  sltu         a1, t6, t6
                  xor          s3, a5, s8
                  sltiu        s5, a7, 978
                  nop
                  slti         zero, s1, 1163
                  sub          s2, t1, s0
                  or           gp, a0, s8
                  addi         s7, s9, 737
130:              beq          s3, s7, 144f
                  sub          t2, s1, t0
                  auipc        t1, 945606
                  srli         a4, s6, 31
                  sll          a2, tp, sp
                  bltu         tp, s10, 147f
                  lui          s5, 861786
                  bgeu         t5, s11, 140f
                  bltu         ra, s1, 150f
                  auipc        s2, 320889
140:              lui          sp, 114538
                  addi         a0, zero, 1889
                  blt          s10, t2, 150f
                  xor          s7, t1, s10
144:              auipc        s11, 526733
                  and          gp, s4, s5
                  and          tp, s8, a5
147:              slti         a3, s8, -26
                  ori          s0, zero, 1149
                  bgeu         gp, s4, 152f
150:              xori         sp, s5, 1945
                  addi         a4, zero, 1824
152:              bge          a7, s1, 167f
                  and          a7, t5, zero
                  xor          zero, a3, a3
                  ori          t3, a6, -1163
                  bgeu         s3, a7, 173f
                  sra          t3, t0, a0
                  sltiu        a0, a1, 1512
                  bge          s1, s7, 175f
                  ori          t1, tp, -1249
                  sltu         s3, t5, a6
                  andi         a1, s7, 1126
                  slli         t3, a6, 12
                  slli         s3, t6, 4
                  slt          s10, tp, a6
                  sub          s5, t4, t0
167:              bne          s7, t6, 175f
                  ori          t1, s4, -439
                  sltiu        tp, t5, -2037
                  bne          tp, s4, 175f
                  lui          s6, 781276
                  xori         s1, s7, 654
173:              xor          t3, s9, s11
                  xori         sp, s2, 1610
175:              ori          t2, a7, -947
                  sub          a4, a5, t6
                  sltiu        s5, a0, 562
                  ori          zero, a1, -21
                  srl          a5, sp, a0
                  lw           s7, 4(t4)
                  xori         tp, s8, 1442
                  add          a1, t4, t5
                  sub          t0, s11, t4
                  addi         t4, t4, 48
                  slli         s10, a5, 14
                  ori          zero, t2, -2033
247:              addi x15, x23, 0
247:              jalr x15, x15, 0
sub_2:            bgeu         s10, a3, sub_2_stack_p
                  srli         a1, a0, 2
                  sll          s3, t6, zero
sub_2_stack_p:    addi         t4, t4, -44
                  sw           s7, 4(t4)
                  xor          s8, a0, s11
                  xor          t1, s1, a4
                  la           gp, sub_4
                  srai         s7, t0, 6
                  nop
                  and          s10, a5, zero
                  srl          t1, a5, t3
                  addi         gp, gp, -450
                  ori          a6, s1, -926
sub_2_j4:         jalr         s7, gp, 450 #jump sub_2 -> sub_4
                  la           sp, region_1+1792 #start riscv_load_store_rand_instr_stream_2
                  xor          zero, a6, a2
                  srai         s1, t3, 1
                  sw           s7, 8(sp)
                  xori         a5, gp, 1295
                  nop
                  lbu          a4, 3(sp)
                  srai         s8, s4, 24
                  lb           a0, -13(sp)
                  lhu          a1, -12(sp)
                  sltiu        gp, a4, -834
                  sb           ra, 13(sp)
                  lb           gp, -1(sp)
                  addi         s5, gp, 1435
                  andi         tp, s6, 1414
                  sltu         a1, t1, t2
                  add          gp, a6, s8
                  auipc        a2, 318074
                  or           tp, s11, s10
                  srl          s7, s10, t0
                  lb           s11, 15(sp)
                  lbu          tp, -10(sp)
                  srai         s9, a0, 18
                  sh           s11, 10(sp)
                  addi         a3, s4, -876
                  lh           s10, 10(sp)
                  lhu          s6, 4(sp)
                  add          t1, ra, t0
                  and          s5, t5, t5
                  sltiu        s5, s7, 813
                  or           t0, t2, s5
                  sh           zero, 6(sp)
                  sra          zero, s11, s9
                  lui          s10, 603367
                  slti         t0, s1, -1244
                  lhu          a3, -8(sp)
                  sb           s5, 9(sp)
                  sb           s7, 10(sp)
                  andi         t0, t0, -305
                  sb           s8, 14(sp)
                  lui          tp, 2928
                  sltiu        a4, s6, -1854
                  lui          t5, 722627
                  lhu          gp, -8(sp)
                  lbu          s9, -5(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_1+1588 #start riscv_load_store_rand_instr_stream_0
                  sb           a7, 28(t2)
                  srai         zero, s1, 30
                  slti         s2, s1, -801
                  slt          s11, zero, t5
                  sb           t3, -22(t2)
                  xori         t3, t2, 1057
                  xori         s3, s5, -712
                  srai         s3, a5, 2
                  lh           a4, 22(t2)
                  sb           s2, -13(t2)
                  sb           gp, 47(t2)
                  andi         a7, t1, -1986
                  slti         a0, a4, -2041
                  srl          a3, zero, a1
                  lbu          tp, -22(t2)
                  add          t1, a1, s10
                  sh           t2, 54(t2)
                  sb           s6, 17(t2)
                  lbu          a0, -14(t2)
                  sltiu        t5, t3, -468
                  lhu          a4, -52(t2)
                  lh           t6, 40(t2)
                  sub          t3, sp, t6
                  lb           s1, 47(t2)
                  sb           t3, -43(t2)
                  andi         t0, s6, -114
                  sra          s1, s10, a4
                  ori          s2, t5, 1847
                  xori         s10, a3, 625
                  sb           s9, -63(t2)
                  slt          s3, t6, a5
                  sltu         a0, a2, tp
                  lb           s3, 39(t2)
                  lbu          a4, -32(t2)
                  sb           s2, 49(t2)
                  lhu          sp, 40(t2)
                  andi         a4, a3, -644
                  sub          a6, a1, s3
                  xor          s0, sp, s10
                  slli         gp, s5, 3
                  lbu          a0, -37(t2)
                  sb           a4, -35(t2)
                  nop
                  lh           s3, -20(t2)
                  lbu          s5, 55(t2)
                  sb           ra, -29(t2)
                  addi         tp, t5, 945
                  lb           tp, 2(t2)
                  sb           s3, 64(t2)
                  lhu          t3, 50(t2)
                  sltu         sp, a0, s11
                  or           t3, sp, t5
                  lbu          t0, -39(t2)
                  srai         zero, s3, 22
                  ori          a3, t5, -177
                  lb           a5, 9(t2) #end riscv_load_store_rand_instr_stream_0
                  la           s1, region_1+452 #start riscv_load_store_rand_instr_stream_1
                  lw           a3, 1224(s1)
                  lw           a3, 1044(s1)
                  sll          a7, t1, zero
                  slti         t1, a6, 571
                  lui          s2, 211086
                  lb           s5, 725(s1)
                  lui          s7, 933115
                  sb           t4, 1366(s1)
                  sb           tp, 141(s1)
                  slli         t2, a2, 5
                  lb           a4, -11(s1)
                  sh           gp, -272(s1)
                  and          sp, a5, sp
                  sra          a1, s5, s0
                  or           s7, s8, s7
                  lb           s8, 55(s1)
                  lhu          a2, 954(s1)
                  sub          a0, s7, gp
                  sh           s2, 1224(s1)
                  sub          t2, a4, s10
                  sltiu        tp, a4, -210
                  slli         s3, s0, 20
                  srli         a5, s0, 5
                  srai         zero, s8, 21
                  sub          a2, s3, a0
                  ori          t0, t1, -1606
                  lbu          t0, 951(s1)
                  sltu         t3, gp, s11
                  sltu         t5, s10, a3
                  xor          s6, a5, s11
                  slt          tp, s1, t1
                  slti         a2, t4, 1296
                  lbu          a3, 1315(s1)
                  lb           a0, 171(s1)
                  sb           zero, 873(s1)
                  lb           s11, 509(s1)
                  nop
                  auipc        a2, 18017
                  sb           tp, -146(s1) #end riscv_load_store_rand_instr_stream_1
                  srai         s6, t4, 15
                  sltiu        s6, s6, -1333
                  srli         tp, t6, 1
                  add          a4, s0, a4
                  xori         s2, t4, 1441
                  and          gp, s3, s1
                  beq          s0, sp, 23f
                  bgeu         t3, s11, 24f
                  bge          s9, zero, 15f
                  sltiu        s6, a1, -463
                  slli         s8, a5, 11
                  blt          s3, t4, 19f
                  xor          a5, s6, s7
                  lui          t1, 19091
                  srl          t0, a4, s10
15:               sltu         s8, s11, s3
                  xor          s2, s6, t1
                  xori         s8, a5, -1459
                  srai         t3, t5, 20
19:               addi         a1, a0, -1093
                  slti         tp, t2, 1300
                  sub          t2, a5, s6
                  ori          a0, ra, -2048
23:               srl          s2, t5, a3
24:               bne          a0, s0, 39f
                  sll          a5, sp, a1
                  addi         s8, a1, -333
                  addi         a5, s10, -1873
                  ori          s2, s2, 768
                  sub          s5, t1, s1
                  ori          s5, a7, -1768
                  bge          s1, s6, 33f
                  auipc        s8, 797749
33:               sra          a6, t2, t6
                  slt          s1, t1, t0
                  sll          a2, s11, t1
                  srl          a5, a5, s0
                  slli         t1, ra, 9
                  addi         sp, s6, 1691
39:               srai         sp, s11, 20
                  bltu         s10, t1, 56f
                  sub          s5, a1, t3
                  bgeu         tp, s7, 45f
                  sra          s6, a7, a1
                  nop
45:               or           t1, a0, s4
                  blt          a3, s9, 47f
47:               addi         s10, a7, 1981
                  bge          s4, s2, 49f
49:               srl          s11, s9, s2
                  sub          tp, a3, s2
                  andi         t6, gp, -248
                  sll          zero, s8, t6
                  slli         t3, s7, 10
                  bltu         a1, a3, 59f
                  xori         s2, t3, 423
56:               addi         t6, a0, -84
                  addi         s0, a4, -885
                  sltiu        s9, ra, -501
59:               xor          a5, s3, a5
                  srl          gp, a6, a6
                  nop
                  xori         a3, s11, 228
                  bge          s7, a6, 81f
                  blt          sp, s6, 70f
                  sltu         s6, t0, a5
                  blt          t6, sp, 67f
67:               lui          tp, 832230
                  sltiu        zero, s1, -1198
                  sltu         a6, s6, tp
70:               sltiu        a7, s7, 1104
                  slt          a6, t3, a5
                  xor          a2, s1, s0
                  andi         s5, s11, -332
                  bge          s1, tp, 86f
                  sltiu        s11, a3, 1099
                  blt          s7, t5, 85f
                  auipc        t0, 789220
                  beq          gp, a5, 83f
                  add          s6, s7, zero
                  bne          s3, s11, 88f
81:               slti         a6, s4, 429
                  slti         a1, gp, 1740
83:               bge          s3, s0, 84f
84:               srai         tp, tp, 4
85:               srli         t6, a6, 29
86:               srli         s2, s4, 30
                  or           a5, ra, t1
88:               bge          t6, a5, 89f
89:               sub          t1, a5, s6
                  or           s3, tp, a2
                  addi         s8, a1, -1326
                  srai         a0, s8, 2
                  sltu         t5, a0, a2
                  bne          t6, s1, 108f
                  bne          s11, s11, 105f
                  sra          a6, t6, a3
                  slli         t0, a1, 27
                  add          a3, a4, t0
                  and          tp, s4, s9
                  sltiu        s11, a2, 975
                  srl          t6, s2, s8
                  srli         s1, t2, 14
                  nop
                  or           s10, zero, t3
105:              sltiu        t5, gp, -1109
                  sll          s1, s3, t3
                  bge          a6, t0, 113f
108:              addi         s6, s0, 74
                  auipc        s1, 123613
                  xori         s5, s2, -1518
                  and          sp, a5, a7
                  bge          s2, a6, 122f
113:              andi         s6, t5, -458
                  slli         t0, zero, 12
                  bge          a3, t4, 117f
                  beq          s3, s5, 123f
117:              addi         s6, t4, 826
                  or           s7, s11, a2
                  sub          t2, s10, a7
                  auipc        s10, 518560
                  nop
122:              sll          a6, s2, s3
123:              slti         t1, a3, -1092
                  bne          s9, a2, 130f
                  sub          t5, a2, a7
                  sltiu        gp, a1, 463
                  andi         a2, a5, -643
                  slt          s5, t5, s8
                  xori         a2, a1, -714
130:              srli         t6, a1, 26
                  or           s7, s8, sp
                  auipc        t0, 694833
                  srli         t1, a6, 16
                  beq          zero, s5, 142f
                  sra          s10, t5, t1
                  blt          s1, t0, 152f
                  beq          a3, t5, 143f
                  slti         t6, sp, 803
                  bne          sp, t4, 144f
                  sltiu        a0, s9, 458
                  bgeu         tp, a6, 159f
142:              auipc        s0, 948374
143:              sltiu        s7, t0, 1097
144:              ori          zero, a4, 1437
                  slt          s7, t1, zero
                  add          t5, t4, s11
                  nop
                  and          a6, s2, ra
                  bne          s1, t1, 166f
                  sltiu        a2, t3, -374
                  add          a1, s1, s11
152:              or           a3, s10, s4
                  sltiu        s0, s0, 296
                  add          t3, ra, s1
                  sltu         a3, s0, a6
                  sltiu        s10, a4, -291
                  and          s7, s4, zero
                  add          s1, gp, t6
159:              xori         s6, s0, -886
                  nop
                  sra          t1, sp, s4
                  ori          a6, t0, 1246
                  add          s11, s5, t3
                  bge          t4, s6, 179f
                  srl          s5, t6, gp
166:              lui          s11, 710815
                  bgeu         a1, t1, 174f
                  sll          s9, a3, sp
                  bgeu         a4, t3, 185f
                  addi         zero, gp, -1990
                  sltu         a1, t3, zero
                  and          sp, s6, a5
                  sltiu        sp, a3, -1380
174:              andi         a0, s2, 566
                  sub          a1, s9, s10
                  xori         a6, a1, -1685
                  slti         s3, a5, -1134
                  slt          s10, t6, s0
179:              bgeu         s4, s6, 185f
                  bgeu         t3, s4, 192f
                  sltiu        gp, s7, 1743
                  add          s1, ra, s1
                  xor          t1, a3, s5
                  add          sp, a3, a7
185:              lui          a6, 983178
                  ori          a6, t3, 1309
                  bltu         t0, t2, 190f
                  xor          t2, s4, s2
                  srai         s1, s9, 4
190:              srli         s1, a6, 6
                  ori          a7, a4, -270
192:              sra          s7, gp, s0
                  bge          sp, zero, 200f
                  beq          s1, a1, 211f
                  srl          s11, s3, s0
                  lui          s8, 919164
                  srai         a7, s4, 13
                  sub          s11, a3, t4
                  slti         a5, a3, 1667
200:              srl          t5, a1, a1
                  and          s9, s3, a3
                  sub          t2, s2, a1
                  slli         gp, t4, 8
                  andi         s10, s0, -403
                  nop
                  bltu         gp, s10, 207f
207:              srai         sp, a2, 3
                  auipc        a5, 785802
                  xor          s8, s4, s0
                  nop
211:              sub          s8, a2, s9
                  slti         t2, s10, -662
                  andi         zero, t0, -1221
                  sll          s5, t4, a4
                  add          a2, s5, gp
                  bne          s2, s9, 226f
                  bgeu         t5, t5, 223f
                  bgeu         a5, a0, 219f
219:              blt          t4, t4, 225f
                  and          s11, a6, t4
                  srai         s10, s4, 6
                  sll          s11, t3, s4
223:              bgeu         t2, t4, 231f
                  add          a3, t2, ra
225:              and          tp, a1, s6
226:              srai         a1, s9, 15
                  add          a1, s9, s5
                  beq          a1, t0, 234f
                  srl          s5, a6, s1
                  slt          tp, s8, t0
231:              srli         s7, s10, 5
                  nop
                  auipc        a5, 334297
234:              srai         s9, s7, 31
                  bne          ra, a6, 249f
                  xor          zero, t5, s1
                  xori         sp, t1, 562
                  bne          sp, sp, 239f
239:              srl          t2, a5, a5
                  nop
                  bltu         s9, a2, 243f
                  slt          t0, t0, t1
243:              blt          t1, zero, 248f
                  ori          a5, zero, 1491
                  sltu         s0, s3, a7
                  slli         a3, zero, 29
                  nop
248:              xor          gp, tp, a6
249:              slti         a3, t4, -1119
                  blt          s1, t4, 252f
                  andi         t5, a4, 915
252:              sltu         a3, s10, s11
                  addi         t5, a1, -1734
                  xor          s9, s9, a7
                  srai         tp, ra, 2
                  addi         s6, a1, -2013
                  bgeu         s8, t5, 266f
                  srai         zero, a0, 22
                  andi         t3, sp, -703
                  bge          gp, s6, 276f
                  sltu         s2, a6, s1
                  sub          a3, s4, a6
                  sll          s3, s1, tp
                  and          a7, s8, t3
                  sra          t5, t0, t2
266:              srl          tp, s1, ra
                  blt          a2, t1, 268f
268:              andi         gp, t0, 1516
                  bgeu         a6, a6, 279f
                  lui          tp, 428007
                  bne          a5, s9, 279f
                  nop
                  auipc        t5, 477594
                  xori         a5, s5, -111
                  slli         s9, t0, 28
276:              bgeu         a7, t0, 277f
277:              xor          s7, t2, s0
                  xori         gp, s8, -512
279:              bgeu         s11, s4, 287f
                  sub          s3, a5, a6
                  sltu         zero, s8, s4
                  nop
                  nop
                  nop
                  bne          a2, t0, 287f
                  blt          a6, t4, 300f
287:              xor          a0, tp, a5
                  blt          s0, ra, 291f
                  srli         t0, a7, 0
                  slli         zero, a2, 20
291:              sub          s5, s4, s4
                  xori         s1, a4, -1380
                  nop
                  ori          tp, t0, -1542
                  add          a0, s11, s8
                  bgeu         s7, a7, 313f
                  and          t2, s3, t0
                  or           t3, s9, s4
                  srli         t0, t3, 20
300:              sltu         gp, ra, s1
                  beq          tp, a0, 317f
                  addi         tp, zero, -436
                  sltiu        a3, s0, -909
                  and          a1, zero, a7
                  slli         zero, s7, 20
                  srl          s8, zero, t4
                  sub          t5, t0, s5
                  and          s0, t1, s6
                  andi         tp, s2, 1612
                  slti         s11, gp, -1281
                  slt          s10, t1, a0
                  lui          t1, 954644
313:              sll          s1, t0, t1
                  sll          a0, ra, a7
                  bge          a4, s0, 325f
                  bne          s8, s2, 326f
317:              srli         s0, t1, 7
                  andi         t0, t0, 261
                  sltu         s5, s4, t5
                  andi         s6, t4, -2033
                  sltu         s10, t3, gp
                  sltu         t3, t0, s9
                  sltiu        s9, t5, -1582
                  sltu         gp, a2, a6
325:              sll          s11, s5, a2
326:              blt          s0, t1, 341f
                  addi         a7, t2, -650
                  xor          s7, s6, s3
                  slt          s9, t5, s4
                  addi         t5, a1, 336
                  ori          tp, t2, 1613
                  ori          zero, s5, -1796
                  bltu         s5, s9, 339f
                  andi         s3, s5, 421
                  srl          s3, s10, ra
                  sltu         s7, s11, s8
                  bge          t2, s1, 338f
338:              sra          a7, ra, a5
339:              bgeu         ra, a5, 357f
                  addi         s2, s8, -951
341:              sra          t1, t0, s2
                  beq          a3, t6, 343f
343:              auipc        tp, 682242
                  and          t0, t3, a2
                  add          t3, a4, a2
                  srl          t6, s5, s7
                  blt          t4, a0, 359f
                  auipc        t1, 788169
                  sll          a0, t2, zero
                  nop
                  slti         a5, s0, -1915
                  srli         a7, a3, 26
                  bltu         t0, a7, 361f
                  sub          sp, s2, zero
                  bltu         s7, s5, 360f
                  auipc        a3, 503060
357:              slt          tp, s7, a5
                  sra          a4, s7, t0
359:              andi         a7, zero, 1745
360:              addi         a6, s9, -1780
361:              xori         s10, s4, 1422
                  addi         s2, s0, -2007
                  or           a5, s8, t2
                  slti         s9, a4, 1370
                  addi         zero, s2, -326
                  sub          t0, s8, s3
                  bgeu         s7, s4, 384f
                  or           s6, s6, a2
                  lui          s2, 109420
                  lui          t1, 869600
                  addi         a5, t6, 69
                  sltu         zero, s6, t1
                  slli         t5, s0, 28
                  xor          a4, s9, a5
                  slli         s1, ra, 9
                  sll          s0, gp, t4
                  nop
                  lui          s7, 953040
                  blt          a7, zero, 385f
                  ori          t3, s1, 1826
                  slti         gp, tp, -1309
                  srl          t1, s4, sp
                  srai         s9, a7, 27
384:              slt          t6, t3, a1
385:              ori          s6, zero, -622
                  addi         s0, t6, 1377
                  andi         a7, s5, 516
                  and          a6, s9, t3
                  blt          s5, a6, 396f
                  slti         zero, tp, 68
                  slt          t1, t3, s8
                  andi         t5, sp, 841
                  auipc        t6, 576411
                  bge          t4, t0, 402f
                  or           s9, s1, a2
396:              srli         a3, tp, 11
                  and          a7, a0, a7
                  andi         s2, s1, 875
                  add          t3, s3, t2
                  andi         zero, s10, 404
                  sll          s0, a0, s5
402:              add          a5, a0, t6
                  srli         t2, t1, 7
                  addi         s7, s1, -422
                  srli         gp, a7, 24
                  nop
                  beq          s0, t6, 413f
                  sll          a6, s2, a3
                  ori          t1, a6, -56
                  bge          s2, t4, 416f
                  slti         t6, t0, 320
                  bgeu         ra, s10, 421f
413:              slt          a5, s2, s8
                  srai         a3, t5, 19
                  sltiu        s10, t1, 1538
416:              sub          a6, s3, zero
                  addi         a4, s8, -1726
                  sltiu        s2, t1, 1916
                  nop
                  auipc        t5, 946208
421:              sltiu        a6, t4, -1586
                  slli         a0, s8, 12
                  srl          a4, sp, a1
                  addi         s9, t5, 1062
                  ori          a5, s5, -594
                  or           gp, ra, a2
                  nop
                  sll          tp, s6, t3
                  slti         s3, s7, 1593
                  sub          s9, s0, sp
                  sll          s8, s10, s7
                  andi         tp, t1, 239
                  nop
                  srai         a6, t1, 21
                  srli         t3, s4, 30
                  slt          s0, t4, sp
                  slt          a2, s8, t1
                  beq          s8, sp, 445f
                  slt          a0, sp, t3
                  add          s0, s9, s5
                  or           t3, s10, s5
                  srl          s11, s10, tp
                  xori         s10, sp, 818
                  bgeu         a5, s5, 445f
445:              slti         s3, s3, -529
                  or           sp, a7, t4
                  slt          zero, s9, s3
                  sltu         s7, s9, s6
                  or           s5, s2, a4
                  addi         gp, a6, 658
                  nop
                  sub          s1, zero, s9
                  bge          s0, s3, 455f
                  auipc        s5, 526371
455:              bge          t3, t3, 456f
456:              or           s5, t2, ra
                  sltiu        s7, s11, -1871
                  or           a7, s7, a4
                  blt          s0, t0, 470f
                  srl          t1, s4, a2
                  sltu         zero, t3, t6
                  xor          zero, a6, gp
                  bne          a2, a0, 468f
                  or           s1, a4, s5
                  auipc        s9, 123653
                  bltu         a3, t6, 467f
467:              or           s3, a0, t2
468:              andi         s1, t0, -982
                  addi         a2, t3, -485
470:              nop
                  auipc        a1, 1029221
                  lw           s7, 4(t4)
                  srli         s9, zero, 25
                  addi         t4, t4, 44
                  sll          t2, a7, a4
                  slti         s8, s7, -1558
                  srli         s0, s10, 30
                  or           t1, s0, t5
                  sub          s6, t5, tp
                  nop
                  add          a6, t6, s1
                  srl          sp, a1, t1
640:              addi x28, x23, 1
640:              jalr x28, x28, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_2:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_3:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_4:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_5:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_6:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_7:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_8:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_9:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_10:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_11:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_12:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_13:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_14:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_15:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x7, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x7, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x7, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x7, x21, ecall_handler
                  li x21, 0x1
                  beq x7, x21, instr_fault_handler
                  li x21, 0x5
                  beq x7, x21, load_fault_handler
                  li x21, 0x7
                  beq x7, x21, store_fault_handler
                  li x21, 0xc
                  beq x7, x21, pt_fault_handler
                  li x21, 0xd
                  beq x7, x21, pt_fault_handler
                  li x21, 0xf
                  beq x7, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

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
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
