.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x17, kernel_stack_end

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
                  li x0, 0x9
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xc
                  li x5, 0x77a7f590
                  li x6, 0xa
                  li x7, 0x7bba1d05
                  li x8, 0x9c62b9a7
                  li x9, 0xd629746b
                  li x10, 0xf7e09465
                  li x11, 0x24bd471f
                  li x12, 0xe301f3ef
                  li x13, 0x80000000
                  li x14, 0xfd3470c3
                  li x15, 0x0
                  li x16, 0x1181c342
                  li x18, 0x403c1ecb
                  li x19, 0xb
                  li x21, 0xd07c8363
                  li x22, 0xc
                  li x23, 0x4
                  li x24, 0x9
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0xd
                  li x29, 0x3
                  li x30, 0x5f18caf4
                  li x31, 0xca8fa228
                  la x20, user_stack_end
main:             slti         t6, zero, 1971
                  srai         a3, tp, 19
                  slli         t6, t1, 30
                  auipc        t5, 637082
                  la           a5, sub_2
                  nop
                  sltu         t4, t3, t3
                  addi         a5, a5, 493
                  slti         t0, t5, 1019
main_j2:          jalr         s3, a5, -493 #jump main -> sub_2
                  la           t4, region_1+1010 #start riscv_load_store_rand_instr_stream_0
                  srli         s1, t3, 16
                  lbu          s10, 9(t4)
                  slti         s2, s5, -1407
                  nop
                  lbu          sp, -15(t4)
                  nop
                  lbu          t6, 7(t4)
                  lbu          gp, -7(t4)
                  lb           zero, -2(t4)
                  sb           gp, 16(t4)
                  lb           s0, 7(t4)
                  lh           s2, -2(t4)
                  sh           t2, 16(t4)
                  and          t0, a6, a3
                  xori         zero, ra, 1030
                  xori         s3, a1, -1828
                  slt          s0, a6, a5
                  lh           sp, -6(t4)
                  slt          zero, zero, zero
                  lbu          a3, 11(t4)
                  sra          a6, t6, t5
                  lb           t6, -9(t4)
                  sb           s10, -5(t4)
                  sb           a6, 11(t4)
                  slli         t6, gp, 2
                  add          s9, ra, a4
                  sltu         gp, t2, ra
                  srl          tp, a1, t0
                  lhu          sp, -12(t4)
                  lbu          t5, 3(t4)
                  lb           s6, -12(t4)
                  lh           s2, 14(t4)
                  lui          a1, 627669
                  srl          t0, s10, zero
                  lh           s9, 2(t4)
                  srl          sp, a7, s1
                  sll          s1, t2, s0
                  add          tp, t6, s2
                  sb           tp, -11(t4)
                  sb           a3, -5(t4)
                  slli         s0, s10, 11
                  ori          a6, zero, -943
                  ori          zero, s8, -320
                  xori         s6, t5, 568
                  sra          t2, s7, a4
                  lw           gp, -14(t4)
                  sltiu        a1, s3, -1717
                  auipc        s6, 894234
                  addi         ra, a4, 996
                  lbu          s8, 0(t4) #end riscv_load_store_rand_instr_stream_0
                  auipc        a2, 178089
                  srl          a1, t1, a2
                  nop
                  sub          a0, s4, t5
                  xori         s2, s0, 976
                  sltu         s3, s3, t3
                  bgeu         s5, s0, 17f
                  srai         t0, t5, 7
                  la           s1, sub_1
                  addi         a0, s5, -1878
                  addi         s1, s1, 301
                  srli         s7, s5, 31
                  andi         a5, s8, 1156
                  sltiu        zero, s8, -1220
                  bge          s11, s4, main_j1 #branch to jump instr
                  sltiu        a5, s6, 1499
main_j1:          jalr         s3, s1, -300 #jump main -> sub_1
                  bltu         t2, a4, 14f
                  srai         a2, sp, 11
                  or           t4, gp, t3
                  xori         zero, ra, -1920
                  andi         zero, gp, 1638
                  slli         t6, t1, 28
14:               ori          t4, sp, -341
                  lui          s2, 377601
                  slli         s8, a7, 23
17:               bgeu         s0, ra, 19f
                  lui          s2, 736819
19:               sll          s2, s6, s6
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_6:            lui          sp, 432739
                  andi         s0, a0, -74
                  and          s8, s3, s4
                  addi         s4, s4, -44
                  sw           s3, 4(s4)
                  slt          a6, a6, t2
                  la           t1, region_0+517 #start riscv_load_store_rand_instr_stream_6
                  add          a2, t4, ra
                  nop
                  srai         s2, s7, 29
                  lb           a2, 7(t1)
                  lbu          s7, -14(t1)
                  ori          s8, s11, 973
                  sub          gp, a7, s11
                  nop
                  or           a3, s5, a2
                  andi         ra, gp, -2038
                  ori          t6, a2, 448
                  srai         a1, tp, 30
                  lhu          s7, 9(t1)
                  xor          t0, s11, s0
                  slli         s7, s8, 2
                  slti         s10, a0, 961
                  slli         s3, a6, 25
                  slt          a5, a1, s0
                  sb           ra, -6(t1)
                  lb           s11, 16(t1)
                  lb           a4, 9(t1)
                  xori         s0, t4, -1296
                  sw           t2, -5(t1)
                  lbu          a4, 12(t1)
                  lw           s2, 15(t1)
                  sll          s5, a6, s6
                  lui          a1, 889805
                  xor          s5, s2, s11
                  srl          gp, t2, a2
                  srl          s2, a6, s5
                  sb           t2, -16(t1) #end riscv_load_store_rand_instr_stream_6
                  la           s0, region_1+1829 #start riscv_load_store_rand_instr_stream_12
                  lbu          a2, -1292(s0)
                  sub          t6, s11, s8
                  nop
                  sb           s11, -1100(s0)
                  lhu          s7, -1365(s0)
                  sub          ra, s2, a6
                  sub          a5, t5, s11
                  lhu          a6, -95(s0)
                  srli         gp, s5, 20
                  lh           a6, -93(s0)
                  lbu          sp, -1664(s0)
                  lbu          zero, -607(s0)
                  sb           s10, -1127(s0)
                  sub          t4, tp, a5
                  sltu         s5, t5, s11
                  xor          s3, a2, ra
                  auipc        s2, 585511
                  xori         ra, a7, -1045
                  sw           s3, -1529(s0)
                  nop
                  ori          s9, s5, -1228
                  lw           s3, -625(s0)
                  lui          zero, 680249
                  sb           ra, -934(s0)
                  sltiu        s9, tp, 445
                  auipc        s10, 515277
                  lb           s3, -1426(s0)
                  xor          t0, s10, a2
                  ori          s2, s6, 608
                  sb           t4, -1475(s0)
                  lb           s3, -638(s0)
                  nop
                  sub          t2, t6, zero
                  ori          t5, t1, 1431
                  sltiu        s7, a0, -1330
                  and          s7, s3, t2
                  nop
                  lbu          s8, -1823(s0)
                  srl          a1, a2, s10
                  sll          ra, t5, t6
                  nop
                  lb           a0, -378(s0)
                  add          t2, s11, sp
                  add          s6, a4, a7
                  lh           t0, 33(s0) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1319 #start riscv_load_store_rand_instr_stream_0
                  xor          a0, t0, s6
                  lhu          t0, 379(sp)
                  sh           s9, -1247(sp)
                  auipc        a2, 390739
                  sb           a7, -310(sp)
                  srli         a0, s4, 25
                  sltiu        a0, a7, 798
                  slti         t5, a0, 1241
                  ori          gp, a6, 1684
                  sb           t2, -1100(sp)
                  sb           zero, -48(sp)
                  lb           ra, -1075(sp)
                  slti         a4, s10, 1461
                  ori          a2, s8, -2017
                  sh           s4, -1315(sp)
                  lb           s6, -727(sp)
                  sb           t6, -1182(sp)
                  srai         s11, t5, 15
                  lui          s2, 471916
                  xor          ra, zero, ra
                  lbu          s6, 145(sp)
                  auipc        s0, 953885
                  lb           s8, -1244(sp)
                  lbu          a1, 426(sp)
                  addi         s6, s1, -739
                  sh           s8, -391(sp)
                  lbu          s7, -862(sp)
                  sb           s0, -756(sp)
                  sb           t3, 130(sp)
                  sb           s5, 568(sp)
                  addi         tp, t4, 1859
                  sll          s5, s6, a7
                  lb           t5, -448(sp)
                  lb           s11, -798(sp)
                  lbu          s8, -1122(sp)
                  or           s7, s3, a4
                  slt          s11, a4, t2
                  sra          a0, t6, t2
                  sub          a4, s6, t1
                  lb           a6, -10(sp)
                  xori         s2, ra, 339
                  lh           ra, -455(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+1892 #start riscv_load_store_rand_instr_stream_2
                  sb           s7, 14(s11)
                  lb           t2, 9(s11)
                  lbu          a3, 1(s11)
                  sw           t5, -4(s11)
                  sra          t2, tp, s1
                  lb           a1, -6(s11)
                  lbu          a4, -10(s11)
                  add          s10, sp, tp
                  lbu          t5, 3(s11)
                  lui          a4, 125416
                  xori         s9, s1, 691
                  lw           a5, -16(s11)
                  lw           s0, -8(s11)
                  sb           s6, -15(s11)
                  lb           s9, 9(s11)
                  sw           tp, -8(s11)
                  lbu          s2, -5(s11)
                  lui          ra, 145225
                  lh           a0, 2(s11)
                  or           s0, s2, t6
                  nop
                  xori         s2, s0, 658
                  sh           t3, -10(s11)
                  srai         t0, a6, 31
                  addi         s0, ra, 610
                  add          t0, s7, a7
                  sb           s0, 16(s11)
                  slti         a1, s0, -67
                  sltu         a5, s2, t6
                  ori          t6, a4, 753
                  lb           s0, -14(s11)
                  lb           t0, 13(s11)
                  slt          t1, a0, a2
                  sub          gp, t4, t5
                  lui          t6, 100942
                  lbu          a3, 7(s11)
                  and          s5, s5, s7
                  lb           s8, 15(s11)
                  slti         ra, s10, 1483
                  lb           tp, 1(s11) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_0+645 #start riscv_load_store_rand_instr_stream_8
                  lb           a4, -198(s9)
                  srl          ra, a6, a7
                  sh           a0, -185(s9)
                  lbu          a5, -214(s9)
                  slt          s10, a1, s6
                  sub          ra, a5, s9
                  lb           t6, -176(s9)
                  lb           s6, 182(s9)
                  srli         s6, s11, 8
                  sb           s1, 128(s9)
                  sltiu        s8, a2, -112
                  ori          s0, a2, 1587
                  lui          zero, 813769
                  lbu          sp, 132(s9)
                  lui          s3, 220187
                  lb           t2, -110(s9)
                  xori         a5, t4, 1950
                  srai         a4, a3, 4
                  lbu          s0, 26(s9)
                  lhu          zero, -195(s9)
                  sh           s1, 65(s9)
                  lbu          t6, 16(s9)
                  or           t4, a7, s1
                  lhu          zero, 79(s9)
                  auipc        a5, 559628
                  lw           gp, 111(s9)
                  add          a3, a3, s5
                  sw           a7, -137(s9)
                  lbu          t6, 212(s9)
                  slli         t6, a6, 24
                  srai         t0, s9, 20
                  sub          t4, a6, t1
                  slt          s1, t4, gp
                  lhu          t6, -161(s9)
                  srai         s6, s11, 28
                  sb           t3, -191(s9)
                  lbu          tp, 222(s9)
                  lui          s7, 636468
                  or           t5, ra, a0
                  and          t2, s2, s5
                  sb           a4, -37(s9)
                  andi         gp, a1, -1339
                  lb           s7, -247(s9)
                  lb           sp, 203(s9)
                  sh           tp, 143(s9)
                  sw           t0, -41(s9)
                  lh           s3, 157(s9)
                  lb           a3, -212(s9)
                  and          ra, s11, s11
                  sb           s0, -135(s9) #end riscv_load_store_rand_instr_stream_8
                  la           tp, region_1+214 #start riscv_load_store_rand_instr_stream_3
                  sb           tp, 55(tp)
                  lbu          t2, -39(tp)
                  lb           s1, -22(tp)
                  lb           sp, -1(tp)
                  sra          sp, s0, ra
                  ori          t4, gp, 1141
                  and          s0, s5, a6
                  add          a0, s10, gp
                  sb           s6, 27(tp)
                  sb           a7, -11(tp)
                  lb           s0, 18(tp)
                  auipc        a4, 734857
                  lbu          s3, -57(tp)
                  lb           t2, -7(tp)
                  slt          s8, a0, s6
                  lb           s8, -45(tp)
                  lbu          zero, 7(tp)
                  lhu          a2, 48(tp)
                  sb           s1, -12(tp)
                  xori         ra, s9, 537
                  srli         a4, t2, 19
                  add          a4, s7, ra
                  xori         s5, s11, -244
                  xori         s8, a1, 1683
                  addi         s10, a0, -1136
                  lui          s7, 109476
                  sb           t5, -6(tp) #end riscv_load_store_rand_instr_stream_3
                  la           t6, region_1+1271 #start riscv_load_store_rand_instr_stream_13
                  nop
                  slli         s8, a4, 4
                  sra          s11, s1, a3
                  lhu          gp, -53(t6)
                  slli         a6, s7, 3
                  xor          a5, t6, s2
                  lh           sp, -9(t6)
                  sb           a2, 14(t6)
                  sll          s0, a4, a3
                  lb           s6, -34(t6)
                  lbu          s9, 1(t6)
                  sh           sp, 13(t6)
                  sh           s3, 11(t6)
                  lhu          s7, -13(t6)
                  sltiu        s0, t3, -846
                  slti         s10, s0, 1864
                  xori         t0, sp, -878
                  nop
                  slti         sp, t5, -1382
                  lui          a6, 364982
                  sltu         a3, a2, a1
                  lhu          s11, -59(t6)
                  add          t0, t6, a1
                  sb           zero, -50(t6)
                  lhu          s3, -9(t6)
                  nop
                  lh           gp, 19(t6)
                  lb           s1, -26(t6)
                  lbu          a1, -62(t6)
                  xori         ra, s9, 1130
                  lhu          ra, 45(t6)
                  lw           a4, -63(t6)
                  sb           s7, 5(t6)
                  sh           a4, -5(t6)
                  lbu          s1, -10(t6)
                  lb           s11, 24(t6)
                  sw           s6, 61(t6)
                  lb           a5, 60(t6)
                  sb           s11, -61(t6)
                  lh           s1, -35(t6)
                  sra          a2, a7, s1
                  lb           a6, 45(t6)
                  slti         t4, t1, 660
                  srai         a4, gp, 8
                  lb           t5, 50(t6)
                  lbu          s10, -62(t6)
                  sh           tp, 47(t6)
                  lbu          a3, 12(t6)
                  lui          s11, 238283
                  lb           s11, -61(t6) #end riscv_load_store_rand_instr_stream_13
                  la           a1, region_1+634 #start riscv_load_store_rand_instr_stream_9
                  slt          a2, t2, a4
                  sub          t1, t1, s4
                  sb           tp, -5(a1)
                  lb           tp, 11(a1)
                  lh           s2, 16(a1)
                  add          a3, t5, sp
                  ori          a5, s0, 136
                  sltu         a3, s0, s7
                  lw           a0, 10(a1)
                  sll          t0, t2, a6
                  lhu          s3, -4(a1)
                  lh           gp, -12(a1)
                  xor          t4, tp, a7
                  srai         a3, s1, 15
                  lui          s8, 498091
                  ori          tp, s6, -1973
                  slti         s9, t6, -575
                  sra          zero, s9, a2
                  ori          zero, s3, 1030
                  lb           s3, 2(a1)
                  slli         a3, t4, 23
                  lbu          a6, 5(a1)
                  slt          s6, s9, s0
                  lui          tp, 966014
                  sub          t0, t1, s2
                  lb           a6, 11(a1)
                  xori         s3, t2, 1975
                  lhu          t0, -2(a1)
                  lb           zero, 7(a1) #end riscv_load_store_rand_instr_stream_9
                  la           a4, region_1+1546 #start riscv_load_store_rand_instr_stream_1
                  lhu          gp, 16(a4)
                  lbu          a3, -5(a4)
                  srli         t4, a2, 21
                  srli         ra, gp, 27
                  ori          a2, s5, -2030
                  sub          t4, s0, a4
                  slti         s6, s6, 1756
                  lbu          a0, -12(a4)
                  lb           s0, 4(a4)
                  srl          tp, a6, s8
                  lb           s7, 5(a4)
                  lh           a2, -12(a4)
                  srli         t4, s3, 19
                  lh           s10, -2(a4)
                  sb           t2, -16(a4)
                  sll          t6, s8, s6
                  slli         a3, s7, 27
                  lb           a3, -5(a4)
                  sub          gp, s0, gp
                  lhu          s6, 8(a4)
                  sb           a7, -6(a4)
                  lb           zero, 7(a4)
                  sll          a0, a6, s5
                  lbu          t2, -3(a4)
                  lb           zero, -6(a4)
                  sll          t5, t6, s7
                  sh           t5, 10(a4)
                  lb           a1, -11(a4)
                  srl          zero, t1, tp
                  sh           t4, 14(a4)
                  lbu          s5, -13(a4)
                  sltiu        s1, a2, -249
                  lb           s3, -13(a4)
                  or           s11, s4, s3
                  lb           t4, 11(a4)
                  ori          t4, s3, 1114
                  sub          t1, t6, s3
                  lb           s11, -7(a4)
                  sh           a2, 4(a4)
                  srai         s11, a3, 5
                  lbu          sp, 13(a4)
                  lb           s10, -15(a4)
                  lbu          t1, -15(a4)
                  sh           t4, 12(a4)
                  sb           s0, 6(a4)
                  srli         s11, t5, 19
                  auipc        tp, 407710
                  lb           s1, -11(a4)
                  lhu          s3, 14(a4)
                  lui          s9, 848588
                  lh           s6, 12(a4) #end riscv_load_store_rand_instr_stream_1
                  auipc        s8, 854939
                  sltu         t4, a1, a7
                  srli         s7, sp, 12
                  slti         s0, s8, -1546
                  sltiu        tp, t3, -1790
                  bge          t0, sp, 14f
                  xor          zero, s3, s10
                  bgeu         a5, s8, 23f
                  bltu         a7, t6, 14f
                  bltu         gp, t6, 18f
                  slt          s3, t1, s0
                  add          s7, t3, t2
                  lui          s1, 509078
                  slti         gp, tp, -1657
14:               nop
                  slti         s8, t4, -1586
                  blt          s11, s2, 25f
                  xor          t2, sp, s8
18:               sra          a0, t4, sp
                  xor          a1, s10, gp
                  xor          a1, s4, s4
                  slti         a5, zero, 111
                  srli         a6, s11, 27
23:               srai         s6, sp, 13
                  addi         t0, s7, 842
25:               andi         s7, a4, 553
                  add          a4, a0, s6
                  addi         a1, s2, -736
                  slt          s0, t2, s10
                  srai         t6, gp, 29
                  lui          s11, 168405
                  sra          t4, s7, s1
                  slti         a6, t5, 1547
                  slti         a1, a7, -1506
                  srai         a2, t2, 13
                  slli         s2, s5, 1
                  xori         zero, s6, -1455
                  blt          t5, a0, 47f
                  add          s11, s5, s5
                  sltiu        sp, zero, -1786
                  lui          s5, 265970
                  bltu         t4, t5, 48f
                  slli         a4, a6, 9
                  xor          t4, s1, a0
                  auipc        a4, 450253
                  nop
                  srl          t0, sp, t1
47:               srl          t4, s11, t4
48:               sll          s0, t1, t2
                  srai         s11, a0, 18
                  srl          s7, a2, s6
                  sll          s2, s5, s9
                  and          a1, a3, s2
                  add          s5, s1, s6
                  and          s0, a6, s3
                  or           s11, s11, s7
                  xor          t1, zero, s5
                  sltu         tp, s11, t5
                  slli         t1, sp, 27
                  slt          a0, a1, t2
                  srl          t2, s0, a0
                  sll          t4, a5, a5
                  nop
                  xor          a1, a7, zero
                  auipc        s11, 209120
                  sll          a4, t1, a2
                  srai         s5, a2, 16
                  slti         zero, a5, -1959
                  sra          s3, tp, zero
                  sltiu        s2, t2, 1100
                  add          t5, a2, zero
                  slti         a1, a6, -1620
                  bgeu         t1, s0, 84f
                  sra          s11, s6, a3
                  bltu         t1, ra, 79f
                  beq          zero, t4, 87f
                  slli         a1, t6, 13
                  bne          t4, s6, 84f
                  sltiu        a2, t2, -1290
79:               or           s3, a0, s8
                  beq          t5, ra, 87f
                  slt          sp, a4, s0
                  bgeu         zero, a0, 97f
                  and          s9, t1, gp
84:               ori          a3, a2, 621
                  beq          s0, a7, 88f
                  nop
87:               addi         zero, s11, 927
88:               beq          s6, s9, 98f
                  srl          a2, a0, s1
                  sra          s3, a3, s2
                  lui          t2, 562081
                  srli         s5, s7, 9
                  bltu         t6, s0, 97f
                  bne          s5, s10, 111f
                  or           zero, s0, tp
                  slt          s3, s8, s9
97:               slli         s9, tp, 17
98:               slli         s2, t3, 7
                  and          a3, s2, t0
                  auipc        a2, 489610
                  andi         sp, a7, -1361
                  srai         s11, a3, 13
                  bltu         a7, a4, 109f
                  slt          s10, t4, gp
                  ori          s8, t5, 538
                  xor          s0, tp, t2
                  or           t2, a2, s4
                  addi         sp, t5, -1461
109:              srl          s2, s2, s0
                  slt          a5, s8, a0
111:              add          a4, tp, t4
                  or           t1, s8, t1
                  srl          s5, sp, s4
                  sltu         sp, s8, s9
                  or           t2, s4, t1
                  bne          s11, t1, 127f
                  sltu         s10, ra, a6
                  srli         s2, t1, 31
                  srai         gp, s7, 4
                  and          t0, s4, s4
                  sltu         tp, t4, t1
                  sub          sp, t3, s11
                  srai         s10, t5, 20
                  andi         s7, ra, 1125
                  andi         s2, t5, -1319
                  addi         tp, sp, -2035
127:              or           a4, a4, t2
                  sll          t2, a4, s5
                  xor          a6, s2, s6
                  blt          t3, gp, 144f
                  xori         gp, a6, -419
                  nop
                  xori         a2, s2, -53
                  srai         s11, a3, 1
                  xori         a5, a4, 752
                  and          s9, a2, a7
                  xor          s1, a1, s11
                  and          a2, t3, t2
                  slt          a1, a0, s6
                  add          t4, sp, t3
                  sltu         t2, zero, t3
                  blt          s4, s7, 157f
                  srai         s9, s4, 16
144:              sltiu        s11, s9, -1588
                  srl          t0, s9, sp
                  add          a3, s9, a1
                  bgeu         t2, t1, 167f
                  srai         s6, s2, 18
                  add          zero, s2, s9
                  xor          gp, t4, a5
                  ori          s7, a2, 20
                  sra          s1, s5, s4
                  slt          zero, t3, s7
                  slt          t2, a0, a3
                  srl          ra, sp, zero
                  add          a4, t5, ra
157:              sra          t4, a7, a6
                  and          t5, a5, a3
                  sltiu        zero, t2, -382
                  xor          ra, tp, t6
                  blt          a1, t3, 162f
162:              add          t0, s8, t4
                  sltu         t1, a7, a2
                  slti         s11, s0, -1585
                  and          tp, a6, s8
                  sltiu        a5, s2, -313
167:              add          t1, gp, a5
                  andi         t5, t0, -332
                  andi         sp, a5, -1616
                  add          s5, s9, t5
                  or           a1, t3, t3
                  andi         s6, sp, -1854
                  slli         a2, t6, 10
                  slli         a1, ra, 1
                  lui          a4, 84674
                  sltiu        t6, a6, -1814
                  ori          a0, s6, 1118
                  or           a4, s2, ra
                  bge          a4, s5, 193f
                  add          a4, s6, t5
                  and          t5, s11, ra
                  xori         s0, sp, -1491
                  add          s6, s0, t4
                  xor          t6, a3, s8
                  lui          a3, 502454
                  slli         a4, t1, 23
                  blt          a3, s4, 197f
                  xor          s11, s1, t2
                  lui          a0, 317478
                  slti         a0, s1, -293
                  xor          a3, a3, s7
                  blt          a1, a6, 202f
193:              sll          s2, s2, s8
                  ori          gp, s3, 650
                  sra          t2, a6, a1
                  andi         a0, t0, -1747
197:              bge          s7, a4, 211f
                  sltiu        a1, t6, 506
                  xor          t1, zero, tp
                  slli         sp, s3, 15
                  srl          a5, s8, a1
202:              slti         t6, t6, 447
                  or           ra, a5, s2
                  bgeu         t0, a1, 209f
                  sltu         t0, t4, a6
                  blt          a5, a1, 223f
                  add          t1, sp, s5
                  or           s10, s0, a7
209:              xori         sp, a6, 1807
                  blt          ra, s0, 225f
211:              bgeu         a2, a6, 220f
                  lui          s11, 687444
                  xor          s0, t3, a3
                  srli         s8, a7, 8
                  andi         a6, ra, 1948
                  srl          s7, s4, s4
                  ori          a5, a0, -447
                  lui          s8, 40212
                  and          s9, t0, a6
220:              bltu         a1, t5, 223f
                  sltu         sp, s2, s4
                  sra          s10, a3, s2
223:              xori         t2, ra, -1079
                  sub          s11, a4, s0
225:              beq          t0, a2, 236f
                  add          a2, t3, s0
                  slli         sp, s9, 10
                  beq          tp, sp, 237f
                  add          sp, s3, sp
                  blt          a4, sp, 247f
                  sltu         t6, a0, a2
                  xor          s8, s4, s6
                  or           sp, t2, t4
                  slt          ra, t2, ra
                  bltu         a5, s11, 241f
236:              slti         t6, gp, 1747
237:              or           t4, a3, s4
                  bltu         t4, s1, 248f
                  andi         ra, zero, -1346
                  slt          s0, s10, a1
241:              sra          s11, tp, s8
                  slli         t1, s11, 28
                  slt          t2, s9, t1
                  sltiu        s5, t6, 1610
                  auipc        s8, 934793
                  slti         s9, zero, -342
247:              srl          a3, a3, s4
248:              bgeu         s7, s6, 262f
                  sra          a1, a3, t0
                  auipc        t5, 77883
                  slt          a4, s0, t0
                  sub          s10, a5, s8
                  slt          gp, t2, sp
                  lui          t0, 247082
                  slti         s5, tp, -542
                  andi         s6, s3, -1851
                  sra          t6, t1, ra
                  slti         t6, t3, -70
                  xori         s8, t6, 1468
                  auipc        zero, 924602
                  slt          t4, s10, t2
262:              slli         a5, ra, 5
                  add          tp, s11, a5
                  slti         s7, s11, 1525
                  andi         s1, s5, -474
                  auipc        a2, 64400
                  add          a2, s0, s8
                  sra          s2, t4, a5
                  slt          s10, s3, t1
                  sub          a5, ra, a0
                  sltu         s2, t1, a6
                  bgeu         s1, zero, 287f
                  sll          s8, s10, s8
                  blt          zero, t0, 289f
                  srai         s1, t3, 23
                  beq          ra, a7, 293f
                  auipc        a5, 745403
                  slti         t0, t1, -887
                  slt          s8, a1, s1
                  nop
                  bgeu         a7, a6, 291f
                  srai         t2, s8, 15
                  slt          s10, s5, a3
                  and          t2, s3, s3
                  and          t2, t4, t0
                  slti         a0, s8, -1096
287:              ori          a1, t1, 1949
                  sra          a0, a7, s7
289:              sll          s8, t1, t5
                  beq          a6, gp, 294f
291:              nop
                  xori         s6, a3, 995
293:              srli         t4, s4, 0
294:              slti         t6, t5, 1265
                  bltu         zero, s1, 304f
                  sra          a5, a3, gp
                  slti         s7, sp, -1736
                  bgeu         tp, sp, 308f
                  bne          t5, a7, 300f
300:              sll          t6, a0, a4
                  ori          t1, t0, -1525
                  nop
                  xori         s0, s5, 645
304:              and          s6, a6, t6
                  beq          s6, a4, 315f
                  auipc        ra, 86492
                  andi         sp, t0, -2002
308:              xor          s3, tp, a0
                  slli         t2, s0, 9
                  slli         gp, s4, 10
                  bge          a2, t3, 316f
                  lui          a0, 1011878
                  or           s2, t2, t2
                  sltu         t5, a5, zero
315:              sub          s8, t6, zero
316:              slt          s3, s8, ra
                  bne          s9, s8, 324f
                  sub          s8, a7, s0
                  add          a0, s1, s3
                  and          t0, a5, gp
                  xor          a1, a1, t6
                  or           s7, t2, sp
                  bltu         a7, a1, 339f
324:              sra          a6, s3, a0
                  nop
                  sltu         s5, tp, tp
                  srl          s7, s0, s2
                  xor          s7, zero, tp
                  bltu         t0, s1, 343f
                  srai         s7, a4, 25
                  and          s8, a0, ra
                  srl          a4, s3, a3
                  blt          s5, s7, 345f
                  ori          s8, s0, 813
                  or           t5, s2, a1
                  bgeu         s4, s5, 343f
                  lui          zero, 155900
                  sra          tp, a1, s4
339:              add          s6, a2, s1
                  bne          a0, s4, 355f
                  sltu         s10, a1, s9
                  xor          ra, s5, s0
343:              beq          s10, s2, 350f
                  xor          a4, s10, gp
345:              srai         gp, zero, 3
                  slt          a6, t2, s2
                  or           tp, t1, a3
                  srl          t4, s2, s2
                  auipc        sp, 660140
350:              blt          s3, a4, 356f
                  ori          zero, tp, 1589
                  and          tp, ra, t2
                  ori          a3, a1, 81
                  bgeu         a7, s1, 359f
355:              beq          a6, a5, 367f
356:              xor          t4, s9, s4
                  addi         s3, gp, 1663
                  sll          s7, s9, t1
359:              xor          ra, a0, s7
                  bltu         s4, t6, 380f
                  sltiu        t6, a6, -735
                  slti         a0, s7, -771
                  auipc        a5, 658123
                  srai         s11, a0, 11
                  sub          a2, t5, s3
                  blt          s8, ra, 380f
367:              addi         zero, a4, -354
                  srl          s7, t3, t0
                  srl          a4, t5, a2
                  srl          t5, a6, s1
                  sll          a1, s2, s8
                  andi         a0, t6, -502
                  slt          s5, a3, s5
                  slt          t1, t1, tp
                  srl          s7, s8, s8
                  srli         s7, t4, 20
                  sll          gp, s8, a6
                  slti         s5, t2, -1038
                  sltu         t2, t3, s10
380:              bge          a6, t2, 390f
                  slti         s1, s5, -40
                  ori          t2, s2, -212
                  nop
                  add          s0, t4, s10
                  bne          s11, a1, 399f
                  andi         ra, s2, 560
                  sltiu        a2, s3, -1014
                  xor          sp, t5, t5
                  slt          s11, a7, s1
390:              addi         t4, s1, -1906
                  lui          gp, 325490
                  xori         a3, a3, 1362
                  slt          t2, s0, s8
                  sra          a0, gp, s9
                  slli         s8, s2, 0
                  srl          a4, tp, a5
                  xori         s1, s0, -1885
                  beq          t6, s2, 407f
399:              bgeu         gp, t2, 400f
400:              sub          s10, s1, a7
                  bge          a6, s8, 416f
                  addi         s6, tp, 1793
                  srl          s9, s4, t2
                  andi         a3, s4, -940
                  beq          gp, a5, 421f
                  sltiu        s2, s1, 1064
407:              and          t2, a2, gp
                  slti         s10, s10, -1776
                  sltiu        a4, s11, -1801
                  beq          ra, s0, 413f
                  xori         sp, a7, 886
                  srl          a5, t1, s6
413:              sra          a1, s4, s1
                  bgeu         a6, a2, 428f
                  nop
416:              sll          s10, a3, s10
                  and          s9, s3, a4
                  andi         a0, t6, 226
                  auipc        tp, 347925
                  lui          t4, 711177
421:              slli         s10, s5, 4
                  beq          s3, s6, 432f
                  slti         s10, sp, -990
                  lui          t1, 1046577
                  sra          a2, s8, sp
                  sltiu        s11, t0, -730
                  bgeu         a0, zero, 434f
428:              bne          s11, ra, 443f
                  addi         t6, s4, -1019
                  xor          gp, gp, t3
                  lui          s5, 487959
432:              bltu         t6, s2, 439f
                  sltiu        t0, t1, 484
434:              xor          a5, s3, s6
                  and          s10, a2, s4
                  sub          ra, a7, t2
                  srai         a6, t4, 5
                  ori          s0, tp, -779
439:              ori          s6, t3, 1741
                  slti         t0, t5, 1757
                  xori         s2, a0, 749
                  slli         gp, t2, 18
443:              beq          a6, s11, 453f
                  or           s5, t2, t5
                  sltiu        a1, s6, 627
                  add          t6, t3, s4
                  bne          t1, s3, 452f
                  xori         s6, s3, 1145
                  sll          t4, s11, t5
                  ori          s5, a3, -265
                  andi         t0, ra, 64
452:              sltu         s11, t3, s3
453:              and          t1, s8, sp
                  addi         gp, s10, 1567
                  sll          t1, a3, sp
                  and          t4, s1, s8
                  sub          s2, s11, a0
                  or           gp, s1, s4
                  auipc        sp, 196479
                  beq          s8, a0, 467f
                  bne          s7, a4, 481f
                  blt          s4, s8, 466f
                  sll          s0, a2, zero
                  sltu         t6, a7, zero
                  slli         a3, s7, 8
466:              sra          a3, s10, t0
467:              sra          t0, a0, zero
                  sltu         s7, s11, t1
                  slti         t2, a0, -2039
                  andi         t6, s3, -1724
                  addi         t2, a3, -1707
                  bgeu         t4, a3, 484f
                  xor          s6, t0, t1
                  sub          t2, a5, tp
                  sltiu        gp, a4, 1156
                  sll          s5, t5, s11
                  srli         a6, s5, 4
                  beq          zero, zero, 492f
                  sra          s10, a7, a6
                  add          a0, tp, s7
481:              sltu         t6, t1, t1
                  beq          s3, s4, 492f
                  bgeu         s1, s8, 494f
484:              slt          t5, s6, s8
                  sra          a4, s9, s0
                  sub          s3, sp, s5
                  lui          a0, 762556
                  sltu         s9, t6, s1
                  slti         s5, s9, 691
                  slt          s10, t1, gp
                  add          t6, a6, t6
492:              xori         tp, zero, 799
                  add          tp, t0, s6
494:              srl          gp, zero, a1
                  add          t0, a7, t4
                  auipc        a6, 900556
                  sub          t1, a2, a6
                  bge          s1, gp, 507f
                  sub          a5, s4, t6
                  sra          s5, s9, s4
                  xor          t1, s1, t6
                  addi         s5, gp, -593
                  bltu         a7, a2, 515f
                  andi         s11, s0, -544
                  xor          t0, t4, t5
                  add          s6, s0, s7
507:              auipc        s11, 527494
                  bltu         tp, s7, 525f
                  or           s5, a5, zero
                  bltu         a5, sp, 516f
                  sltu         s8, t3, s4
                  sub          s6, a4, a1
                  bge          s10, s0, 518f
                  bne          t2, a7, 523f
515:              sltiu        t2, s7, 1105
516:              srli         t2, s11, 8
                  sll          a3, s9, ra
518:              srai         s3, s9, 10
                  and          gp, a2, s6
                  add          a4, a6, a2
                  srai         t4, tp, 6
                  sll          zero, t3, s6
523:              sltiu        t6, a3, -22
                  nop
525:              sll          s9, s11, s5
                  srai         s0, s7, 3
                  auipc        s3, 910125
                  sltiu        sp, t2, 622
                  sltu         s3, t3, a3
                  ori          a5, a6, -714
                  srli         sp, t2, 10
                  sub          s5, s4, tp
                  sltiu        s9, s9, -1250
                  slti         a0, t6, -1309
                  slti         s3, a1, -491
                  slt          s1, zero, s4
                  slti         t6, s0, 1791
                  sra          gp, s6, s5
                  xori         s7, a7, 1598
                  slli         sp, s4, 20
                  andi         a3, s4, 759
                  blt          t1, s4, 548f
                  slti         s9, a1, -907
                  and          s3, a1, s1
                  srl          t5, a5, tp
                  bgeu         t4, zero, 563f
                  blt          t5, a5, 562f
548:              xor          tp, s4, s8
                  and          s5, a1, a1
                  ori          a3, t6, -1214
                  srli         ra, t4, 13
                  blt          t6, a3, 558f
                  srai         a2, t1, 24
                  andi         t0, a3, -472
                  nop
                  slti         gp, t3, -586
                  and          a6, s3, s1
558:              addi         t2, gp, 303
                  bne          a0, t0, 569f
                  slli         s10, t3, 12
                  ori          s0, s6, -670
562:              slt          a2, t5, t5
563:              addi         a2, t5, -1675
                  blt          ra, s6, 576f
                  sub          sp, t6, a4
                  slt          tp, s4, t1
                  sltiu        s1, t6, -915
                  slt          s9, s1, t0
569:              slti         zero, a5, -848
                  and          t6, a3, s6
                  bge          s11, s11, 591f
                  blt          t2, s1, 582f
                  andi         a5, t5, -257
                  srai         t1, t0, 17
                  sra          t5, s10, a7
576:              and          t1, a5, t5
                  srl          a0, s2, s7
                  srai         t2, t3, 12
                  sll          s1, sp, t1
                  slti         s5, s3, 451
                  bne          a1, a3, 596f
582:              sll          s8, a2, s5
                  add          a5, s7, s1
                  xori         s8, sp, 22
                  bge          a4, s5, 591f
                  and          s10, ra, s1
                  auipc        s2, 783732
                  sltiu        s3, a7, -199
                  ori          s3, s0, -1992
                  nop
591:              beq          t5, ra, 598f
                  sra          a1, t2, t6
                  sub          t1, s6, s5
                  blt          s8, a3, 608f
                  sub          s9, s3, sp
596:              srai         t5, t5, 13
                  bge          s10, t1, 601f
598:              srai         s6, s1, 8
                  blt          a4, s7, 602f
                  sra          t0, s10, a2
601:              srli         s1, s9, 1
602:              blt          a2, s3, 611f
                  bgeu         a0, s1, 618f
                  nop
                  lui          s5, 146496
                  bgeu         s9, sp, 623f
                  slli         a6, s4, 29
608:              sltiu        s0, s7, -907
                  srl          s9, a4, t4
                  and          a0, gp, s0
611:              sll          s0, sp, a4
                  xori         a3, s8, 1024
                  bne          a5, t2, 618f
                  auipc        s5, 560307
                  xor          t0, gp, s3
                  auipc        s3, 573299
                  sub          tp, s4, zero
618:              beq          s6, a0, 633f
                  nop
                  slti         zero, s1, 1694
                  sltu         s7, s0, t0
                  bne          t3, s3, 632f
623:              bltu         ra, t2, 637f
                  slt          s6, t4, t5
                  bltu         s5, t0, 634f
                  srli         ra, zero, 30
                  srl          s11, zero, s11
                  srli         s10, a3, 9
                  add          s8, a1, tp
                  srai         s3, s5, 25
                  addi         s10, s3, 1187
632:              slli         a0, a7, 15
633:              bgeu         s0, s0, 638f
634:              bgeu         a4, s1, 648f
                  nop
                  sltu         s8, s2, s5
637:              bltu         a7, s8, 649f
638:              sra          a5, t0, zero
                  blt          s7, s1, 646f
                  lui          s8, 257880
                  addi         a3, zero, -855
                  and          s8, t5, gp
                  ori          t0, s8, -2044
                  sra          a4, s5, sp
                  bgeu         s2, s8, 646f
646:              xor          t6, s10, a6
                  srl          s10, tp, a5
648:              auipc        s11, 186264
649:              bltu         s2, tp, 660f
                  sra          a1, a0, a3
                  and          tp, s10, s9
                  srai         s1, s5, 8
                  bne          s7, s6, 663f
                  ori          s9, s8, 1560
                  add          a6, s0, a7
                  xori         s9, t4, -1265
                  bgeu         a3, a6, 664f
                  slt          zero, a6, s0
                  beq          t2, a0, 675f
660:              srai         s7, s5, 6
                  add          t2, t3, ra
                  xori         tp, s6, -27
663:              sltu         a1, sp, a3
664:              addi         tp, s0, -772
                  xor          s1, t0, t0
                  bgeu         s8, ra, 675f
                  nop
                  sltu         s3, a2, s7
                  srai         t2, s6, 17
                  auipc        s9, 882482
                  beq          zero, a1, 688f
                  lui          zero, 207838
                  srli         t4, t5, 30
                  andi         a5, zero, -1311
675:              srli         a3, zero, 21
                  xori         a1, s0, -770
                  bgeu         gp, a2, 687f
                  auipc        a6, 25695
                  sub          t2, t1, s3
                  srai         s1, a2, 18
                  srl          a5, a3, t2
                  slti         s9, a3, -381
                  andi         ra, s4, 1845
                  and          s9, s2, t3
                  slti         a6, a0, 1819
                  srai         s7, a4, 15
687:              xori         s6, ra, -876
688:              nop
                  beq          a0, a0, 698f
                  sll          t5, s4, s7
                  sra          a0, s2, t5
                  andi         s1, s2, 1612
                  sub          t4, t1, zero
                  lui          t0, 1031097
                  srli         t6, zero, 7
                  beq          a6, s9, 703f
                  lui          ra, 339899
698:              blt          s6, s8, 704f
                  beq          s7, s3, 704f
                  sltu         s7, a1, a5
                  sub          t0, s1, sp
                  srai         s7, s9, 9
703:              sub          s10, s4, s4
704:              add          s7, t5, sp
                  addi         t1, t3, -479
                  nop
                  blt          s4, s5, 708f
708:              nop
                  xori         s11, s9, 614
                  sra          s8, s4, a2
                  bgeu         t0, tp, 731f
                  add          a1, t3, s8
                  srli         t2, t5, 15
                  sltiu        s8, a1, 523
                  andi         ra, s7, -1000
                  xor          zero, sp, a5
                  beq          a0, s0, 734f
                  sra          s1, ra, s9
                  and          a5, s4, t5
                  addi         a0, gp, -1724
                  auipc        s6, 846315
                  nop
                  slt          s2, s3, t0
                  srli         s7, t2, 9
                  sltiu        s8, s1, -1505
                  blt          t1, a5, 740f
                  xori         s2, a5, -689
                  and          s8, a3, a1
                  sltu         t6, s11, t3
                  ori          ra, s1, 851
731:              sltiu        sp, a3, 191
                  slt          t0, s11, s1
                  add          s0, sp, t4
734:              sra          a4, sp, t1
                  xori         t1, s7, 413
                  xori         t2, ra, 2007
                  ori          a4, s8, 1277
                  slt          zero, s1, s8
                  bgeu         t4, t2, 751f
740:              andi         a5, t0, 1547
                  slli         t5, a4, 23
                  sub          ra, s10, sp
                  blt          zero, t4, 758f
                  slti         gp, a4, -1389
                  and          a0, s5, t0
                  ori          a0, t6, 487
                  bltu         s6, gp, 758f
                  nop
                  slt          t5, a2, t6
                  sll          s2, a3, gp
751:              srai         s9, s2, 10
                  srai         a4, a6, 12
                  srl          t0, s8, a7
                  sll          s5, s6, t6
                  blt          a5, tp, 760f
                  addi         s1, s4, 715
                  addi         t2, a6, -1202
758:              slli         tp, t5, 24
                  andi         a1, s10, 798
760:              sltu         a4, a1, a1
                  slti         t5, s8, -501
                  beq          s4, s11, 766f
                  beq          t4, s8, 773f
                  and          t5, t4, t5
                  andi         s6, s2, -1314
766:              ori          s0, s0, 706
                  sra          a4, a4, a3
                  or           t2, zero, a1
                  bgeu         a4, ra, 778f
                  blt          t5, s5, 780f
                  beq          s4, a3, 774f
                  bltu         a2, sp, 784f
773:              add          a1, a1, s6
774:              bltu         s7, s11, 783f
                  xori         t2, s8, 1622
                  bge          tp, ra, 790f
                  beq          ra, gp, 783f
778:              xor          s0, sp, t4
                  add          t1, a3, sp
780:              add          s10, zero, a2
                  lui          s7, 439251
                  beq          sp, t5, 789f
783:              slli         tp, s1, 2
784:              slti         t0, s1, 248
                  add          s5, s6, t4
                  andi         t5, a3, -1585
                  srai         t0, t3, 7
                  sll          tp, a5, a4
789:              srl          s1, t2, s5
790:              add          t2, s7, t0
                  srai         s3, s5, 18
                  beq          t1, a7, 807f
                  sltiu        t1, a6, -58
                  srl          s0, s8, s6
                  blt          ra, s9, 809f
                  bne          s6, s2, 813f
                  slli         t6, sp, 1
                  srli         s7, t2, 16
                  or           t2, s7, s11
                  slli         s8, s5, 29
                  sltu         s3, a3, a6
                  srai         s3, a4, 14
                  blt          s4, s1, 819f
                  bne          gp, t3, 819f
                  addi         s11, a2, 270
                  add          t0, s6, s7
807:              lui          a3, 996492
                  andi         s11, t1, -966
809:              nop
                  lui          s5, 407964
                  bgeu         s10, zero, 821f
                  or           a4, t3, s1
813:              lui          tp, 143398
                  blt          a6, s6, 821f
                  or           t6, s8, t5
                  lui          s8, 609869
                  bltu         tp, ra, 823f
                  auipc        t4, 725365
819:              ori          t1, t2, -1799
                  slli         s10, a4, 24
821:              addi         s3, s8, 550
                  or           s5, s9, t2
823:              bne          a5, t4, 833f
                  xor          sp, s5, t0
                  sra          s10, a2, t1
                  srl          s8, a3, s0
                  ori          t0, gp, -982
                  beq          a0, zero, 845f
                  bltu         t1, s7, 843f
                  bgeu         t3, a5, 841f
                  beq          a7, tp, 840f
                  sra          a1, t1, a7
833:              lui          s2, 586636
                  bne          t1, s7, 840f
                  sub          a5, sp, a4
                  xor          gp, s9, s11
                  andi         a4, a2, -622
                  sltu         a3, s4, tp
                  slti         s5, s4, -294
840:              blt          t3, t1, 847f
841:              add          zero, t6, s8
                  bne          t4, tp, 852f
843:              sub          s10, a5, s9
                  sub          t1, tp, s4
845:              sltu         s6, a1, sp
                  bge          a7, sp, 860f
847:              sltiu        a3, s4, 1911
                  nop
                  srl          s6, s2, tp
                  bne          t1, s8, 860f
                  blt          s2, s9, 861f
852:              add          sp, t3, s1
                  sub          t4, t2, ra
                  andi         a6, s1, -1889
                  srl          s10, t4, s2
                  sub          t5, t3, t4
                  beq          s6, t2, 862f
                  srai         s10, s4, 16
                  auipc        t4, 513150
860:              bne          s1, s4, 869f
861:              xori         ra, s3, 410
862:              slt          t1, s9, s8
                  sltiu        s11, tp, -910
                  sltiu        ra, t6, -159
                  srai         t2, ra, 13
                  bne          s11, t5, 881f
                  or           t0, s7, s10
                  bge          a2, a1, 871f
869:              sltu         t0, a7, s7
                  ori          s0, s3, 667
871:              blt          s3, t6, 875f
                  srli         a0, s3, 5
                  sub          a4, s2, s10
                  sll          a4, s0, t0
875:              auipc        s9, 324799
                  sub          s10, t0, zero
                  srai         t6, a5, 31
                  andi         t1, a6, 1224
                  sll          a0, a5, s0
                  sra          a2, s10, s11
881:              sltu         s7, s6, a0
                  bltu         a0, s2, 897f
                  bge          t4, a1, 897f
                  slti         s5, s7, 1232
                  sltiu        s8, t4, -1994
                  lui          t6, 565342
                  srai         s1, zero, 9
                  lui          a3, 227689
                  beq          s5, a0, 898f
                  srai         t5, s5, 1
                  bgeu         t4, t6, 903f
                  srl          s6, s9, s2
                  bge          s8, s4, 900f
                  sltu         zero, gp, a7
                  sltu         ra, s1, ra
                  nop
897:              blt          a3, s3, 909f
898:              srli         a6, t5, 26
                  la           t6, region_1+1912 #start riscv_load_store_rand_instr_stream_11
                  srl          a6, t6, t3
                  lui          a1, 194449
                  slt          s3, a6, t1
                  andi         a6, t2, 1341
                  slli         t1, s4, 2
                  lbu          a2, -25(t6)
                  srai         a0, sp, 0
                  sw           s1, -48(t6)
                  sh           s4, -24(t6)
                  sb           tp, 11(t6)
                  lb           t2, -62(t6)
                  lbu          s2, -18(t6)
                  sb           sp, -5(t6)
                  srl          a0, t5, s0
                  auipc        t2, 445780
                  slli         s8, t4, 24
                  sb           s9, 0(t6)
                  lb           s8, -17(t6)
                  xor          a1, zero, s8
                  lbu          s2, 24(t6)
                  lui          t1, 940532
                  xori         s6, a6, 214
                  slt          s6, s2, s6
                  slli         s2, t1, 28
                  slt          a6, s3, s2
                  sb           s1, -9(t6)
                  sb           a2, 62(t6)
                  lbu          a0, -51(t6)
                  sb           sp, -40(t6)
                  sll          tp, t6, s1
                  sltiu        a6, t1, 144
                  srai         gp, s3, 6
                  addi         sp, tp, 1230
                  srl          a3, tp, a4
                  srl          a4, gp, t5
                  sb           s10, -52(t6)
                  lbu          s2, 59(t6)
                  ori          tp, sp, -910
                  sb           tp, 62(t6)
                  addi         s5, a4, -1968
                  sb           s4, -45(t6)
                  lbu          t4, -55(t6)
                  lbu          s8, 49(t6)
                  lh           s9, -30(t6)
                  lui          gp, 466537
                  lui          s9, 780449
                  lhu          a3, -38(t6)
                  lb           a1, 13(t6)
                  auipc        s7, 772200
                  lh           s0, -64(t6)
                  nop
                  lb           a2, -59(t6)
                  sll          s10, a2, s1
                  lhu          t5, -56(t6)
                  slli         s7, t6, 2
                  lb           t0, 1(t6) #end riscv_load_store_rand_instr_stream_11
                  auipc        t5, 315025
900:              sltiu        t6, s8, 1993
                  blt          s6, s9, 908f
                  sra          s7, a4, t0
903:              sll          s10, a7, sp
                  xori         tp, s6, -1142
                  slli         a4, t6, 29
                  addi         s5, t4, 613
                  srai         zero, ra, 18
908:              slti         s10, s6, 517
909:              sra          s3, ra, a6
                  srl          tp, s9, s10
                  la           sp, region_0+961 #start riscv_load_store_rand_instr_stream_14
                  lbu          zero, 946(sp)
                  slli         a2, a1, 17
                  xori         s3, ra, 325
                  nop
                  lbu          s11, -772(sp)
                  lbu          t1, -166(sp)
                  lbu          a0, -156(sp)
                  add          t6, s5, sp
                  sll          a5, t0, s3
                  addi         a1, t2, -1920
                  lbu          a4, -914(sp)
                  srl          s10, a3, s9
                  lbu          t4, -35(sp)
                  lh           s5, -479(sp)
                  srai         s2, s11, 16
                  sb           ra, 402(sp)
                  xor          t0, a5, s0
                  lbu          t2, -260(sp)
                  sltu         s6, t2, zero
                  xor          t2, s4, a1
                  srl          s11, t0, t6
                  lbu          s3, -635(sp)
                  lbu          t5, -641(sp)
                  sra          t0, ra, s8
                  lui          ra, 835698
                  sb           a4, -811(sp)
                  sltiu        t2, gp, -146
                  slt          a2, tp, s0
                  srl          a0, t6, a4
                  sb           sp, 740(sp)
                  lb           a6, 406(sp)
                  or           t6, s2, sp
                  slt          a4, a3, zero
                  lbu          zero, 930(sp)
                  sll          s6, tp, t1
                  srl          s10, t1, s2
                  andi         t5, s4, -733
                  srli         s9, t6, 26
                  sw           a4, 95(sp)
                  add          a2, a7, s9
                  lhu          tp, 79(sp)
                  slli         gp, a3, 11
                  lbu          s5, -622(sp)
                  sra          a4, t1, ra
                  lbu          a5, -361(sp)
                  sltu         zero, a4, a7
                  lbu          a3, 1022(sp)
                  lh           a3, 345(sp) #end riscv_load_store_rand_instr_stream_14
                  beq          ra, zero, 912f
912:              bltu         t0, tp, 927f
                  bge          a0, s9, 918f
                  or           s8, a0, ra
                  add          t0, a6, s3
                  srl          ra, s7, s5
                  bltu         s0, zero, 937f
918:              bne          s3, s1, 935f
                  add          s0, ra, t5
                  sra          s7, a1, t6
                  srl          s2, a2, s11
                  bltu         s1, t6, 938f
                  sltu         t0, gp, a1
                  and          zero, a4, s2
                  bge          s6, s5, 942f
                  sltiu        a6, a3, 818
927:              sltu         s0, t4, s1
                  andi         zero, t0, 1086
                  blt          s7, s9, 938f
                  auipc        s11, 614817
                  bgeu         a6, a7, 938f
                  beq          a6, ra, 937f
                  lui          t2, 823843
                  slt          a3, t2, a2
935:              lui          t5, 773960
                  xor          gp, ra, t3
937:              slt          t1, s9, a0
938:              sra          tp, t0, t6
                  slt          s3, t2, ra
                  addi         tp, s6, -457
                  slli         a3, t0, 12
942:              ori          s3, a6, 1075
                  bltu         t4, t1, 952f
                  and          a3, t5, s8
                  sll          t1, s8, sp
                  beq          t2, s1, 953f
                  andi         t1, s3, 1554
                  sltu         ra, a0, a5
                  or           s8, s3, s11
                  xor          a4, t3, t6
                  slti         gp, s2, 1562
952:              nop
953:              bltu         t1, t4, 968f
                  lui          s10, 780454
                  sub          t6, s11, s8
                  sra          s11, sp, s0
                  nop
                  sltiu        t6, tp, -1009
                  nop
                  sll          s3, gp, a6
                  nop
                  auipc        a0, 338121
                  blt          t5, s3, 964f
964:              andi         a0, s1, -1063
                  bgeu         t6, a0, 969f
                  blt          t1, s0, 978f
                  or           s6, s0, a4
968:              sra          a5, s7, t6
969:              sltiu        s7, a0, -181
                  srl          s7, s10, s9
                  or           s9, s5, a0
                  or           a3, a2, t2
                  blt          a6, t1, 976f
                  sltu         a6, s1, s2
                  bge          a4, sp, 990f
976:              sltiu        t0, s4, -1391
                  slt          zero, s11, zero
978:              or           a1, s11, s6
                  bltu         a4, t0, 990f
                  or           a5, a4, t0
                  auipc        t2, 422819
                  slli         sp, s10, 16
                  srai         s5, ra, 26
                  auipc        s10, 523934
                  lui          s10, 673196
                  or           s2, s4, s10
                  bltu         s4, zero, 1003f
                  xor          s10, s8, t5
                  slti         s0, a3, -726
990:              auipc        t5, 488419
                  srli         t5, t5, 16
                  andi         s2, s9, 1427
                  and          t6, a0, a0
                  blt          t6, gp, 1000f
                  nop
                  srli         t6, a2, 11
                  xor          a2, s1, t4
                  bgeu         s3, s8, 1012f
                  bne          s7, s0, 1011f
1000:             bgeu         a2, a0, 1015f
                  slti         gp, sp, 1142
                  sub          t5, s4, s9
1003:             sltiu        gp, s5, 642
                  sub          a3, ra, a4
                  bge          a3, a3, 1019f
                  beq          s11, sp, 1026f
                  slt          t2, gp, t2
                  bgeu         s10, s2, 1018f
                  xor          a5, s5, t4
                  nop
1011:             sltu         s11, s9, t5
1012:             sll          t0, s1, s3
                  srli         t0, s1, 26
                  beq          tp, gp, 1024f
1015:             beq          s7, t5, 1025f
                  and          s6, s7, zero
                  srai         t1, a2, 24
1018:             bltu         s1, s2, 1035f
1019:             beq          a0, gp, 1029f
                  auipc        a0, 894708
                  andi         gp, t5, -1316
                  slti         t5, s7, -779
                  srai         a0, s7, 29
1024:             and          a4, t4, a4
1025:             and          t6, s4, s3
1026:             add          t6, t5, s11
                  sltiu        ra, s3, -961
                  blt          sp, gp, 1034f
1029:             srai         s5, gp, 0
                  slt          s10, zero, tp
                  andi         a6, sp, -759
                  sll          gp, a3, s7
                  auipc        a2, 391911
1034:             sltu         t1, a7, t2
1035:             or           a3, s8, s6
                  slti         zero, t2, -765
                  nop
                  sra          a4, a0, s8
                  andi         t6, zero, -1751
                  sll          t1, s7, a3
                  slli         s6, t0, 10
                  bltu         t3, t2, 1047f
                  bgeu         s4, s3, 1050f
                  bltu         a3, t3, 1058f
                  sll          t2, s4, a6
                  slti         s2, t1, 1024
1047:             nop
                  srli         zero, a4, 7
                  sltu         a0, s1, a3
1050:             bne          s0, s2, 1059f
                  sra          a1, s7, s11
                  beq          s5, t3, 1061f
                  nop
                  auipc        t5, 382426
                  bltu         zero, s7, 1062f
                  srai         t4, t3, 19
                  blt          s3, s7, 1072f
1058:             bge          a6, s0, 1072f
1059:             lui          s5, 323245
                  beq          s3, a6, 1077f
1061:             xor          a5, zero, a1
1062:             lui          s2, 803402
                  blt          s10, t4, 1072f
                  xor          s11, s6, a2
                  sll          zero, s3, s8
                  xori         a5, s4, -736
                  lui          a0, 493173
                  nop
                  lui          ra, 122056
                  addi         t0, zero, -1439
                  srai         s8, a5, 16
1072:             blt          tp, t6, 1089f
                  sltu         s7, s9, t2
                  srli         s5, s7, 31
                  lui          s8, 125855
                  srl          t2, t4, s6
1077:             bne          s10, s6, 1083f
                  slli         s1, a6, 4
                  sltu         tp, s5, a2
                  nop
                  srli         a6, s4, 9
                  beq          s5, s0, 1087f
1083:             sltiu        a1, s7, 394
                  xori         zero, tp, 1872
                  srl          s8, s1, a1
                  sll          s7, s1, s2
1087:             sll          gp, s7, gp
                  nop
1089:             slti         sp, s2, 2020
                  beq          s0, t4, 1097f
                  blt          a0, tp, 1102f
                  sub          tp, gp, s10
                  nop
                  nop
                  srl          tp, a7, s4
                  sub          t5, s7, s8
1097:             ori          a6, a3, 910
                  slt          zero, s1, s4
                  ori          zero, tp, -1226
                  xor          s9, a4, ra
                  sub          s1, s5, t5
1102:             addi         s3, t6, -1387
                  lui          s10, 433906
                  slt          s5, t1, s10
                  slti         s1, tp, -561
                  bltu         tp, s5, 1115f
                  auipc        s10, 323684
                  nop
                  bltu         s8, a1, 1114f
                  lui          ra, 289817
                  nop
                  xor          a5, s6, ra
                  xori         a0, a1, 264
1114:             addi         t1, t0, 1586
1115:             and          t6, t6, a3
                  sll          gp, a0, t4
                  srl          a4, s7, t4
                  ori          s8, sp, -533
                  bge          t3, s11, 1133f
                  beq          a4, gp, 1132f
                  and          t5, s10, s3
                  xor          t2, a3, t4
                  slt          s0, s7, s6
                  add          t5, a7, s9
                  sltu         s11, t4, a4
                  and          a6, s1, t1
                  sltu         s6, s0, s1
                  sra          t2, s5, t1
                  bltu         t0, t3, 1139f
                  srli         tp, a0, 20
                  auipc        a4, 989510
1132:             xor          t2, a6, s3
1133:             bge          s9, t6, 1137f
                  srli         zero, s3, 4
                  lui          a2, 420718
                  sll          t0, a0, t0
1137:             beq          sp, a1, 1140f
                  ori          s7, a4, 24
1139:             sll          s2, s9, a1
1140:             bgeu         a3, s7, 1150f
                  srai         a6, s6, 28
                  addi         a3, s4, -242
                  xori         s9, t0, -1439
                  auipc        s3, 941679
                  sra          s2, a7, a1
                  lui          a0, 575658
                  slti         t1, t4, -1887
                  andi         s6, t6, 1118
                  srl          s1, s4, s9
1150:             beq          a2, a2, 1162f
                  bge          a2, a6, 1171f
                  slti         s2, tp, 852
                  addi         a3, sp, 1289
                  ori          t6, zero, -403
                  sra          s3, s0, gp
                  bge          s2, t6, 1171f
                  bne          zero, t2, 1163f
                  sltu         s10, s2, a3
                  slt          s7, sp, s8
                  bgeu         t5, s3, 1176f
                  srl          s8, s0, a7
1162:             slt          s6, s9, a4
1163:             sltiu        s1, ra, 1382
                  bltu         t5, a2, 1171f
                  auipc        s9, 401973
                  and          t6, a1, t6
                  bltu         t4, t1, 1177f
                  bge          s10, s2, 1169f
1169:             bgeu         t4, s1, 1179f
                  sll          t4, t3, sp
1171:             sub          zero, s11, a4
                  slt          zero, t5, s9
                  la           s9, region_0+506 #start riscv_load_store_rand_instr_stream_4
                  ori          a3, s11, 943
                  sltiu        zero, a6, -111
                  lw           s11, 58(s9)
                  sll          s1, t1, s0
                  slt          t4, a3, s10
                  lw           a2, 38(s9)
                  sltu         a3, a6, t0
                  sll          t2, s9, a6
                  or           t1, a5, t6
                  lui          gp, 94037
                  or           ra, a7, a6
                  slli         s5, s0, 19
                  lw           s10, -82(s9)
                  srai         a6, a7, 17
                  or           a0, t4, t5
                  sra          s7, s3, s4
                  nop
                  lw           a5, 62(s9)
                  lb           t5, 87(s9)
                  nop
                  sll          sp, a7, a7
                  lbu          a4, 223(s9)
                  xor          ra, s7, a4
                  srai         t2, a0, 25
                  lhu          a0, -168(s9)
                  srl          t2, a0, s1
                  xor          a3, zero, a5
                  auipc        s2, 64469
                  lb           a0, -28(s9)
                  nop
                  lb           s5, -109(s9)
                  sb           t5, 201(s9)
                  srl          t1, s2, s6
                  sub          gp, s4, t1
                  lbu          t1, -35(s9)
                  or           a2, a0, s10
                  xori         s1, t2, -1575
                  auipc        a2, 283230
                  sub          s1, a7, s0
                  sltu         s8, t4, t2
                  ori          t5, s2, 1481
                  sh           s10, 156(s9)
                  sb           s0, -233(s9)
                  lh           a2, 156(s9) #end riscv_load_store_rand_instr_stream_4
                  and          s7, tp, a1
                  sub          t4, s1, a5
                  sub          a2, s4, s0
1176:             blt          s9, t1, 1190f
1177:             sra          t1, ra, a4
                  bge          ra, t6, 1193f
1179:             srl          a6, t0, s9
                  sra          t5, s7, a7
                  bltu         a1, s9, 1192f
                  xori         s9, a6, -973
                  sll          a0, gp, s0
                  sltu         s7, s7, s4
                  auipc        a2, 940365
                  bne          s1, s6, 1200f
                  bne          a7, s10, 1196f
                  slli         sp, gp, 19
                  bltu         s0, s0, 1196f
1190:             auipc        t4, 342506
                  or           s10, a4, a4
                  la           a6, region_1+513 #start riscv_load_store_rand_instr_stream_5
                  sll          tp, s8, zero
                  lbu          sp, 709(a6)
                  slti         s2, zero, -1505
                  slt          s8, a1, s7
                  xor          s8, s7, s7
                  sh           tp, 865(a6)
                  andi         s3, t2, -918
                  add          sp, t5, a7
                  sb           a6, 761(a6)
                  lb           s7, -20(a6)
                  sb           t4, -180(a6)
                  lbu          s3, -270(a6)
                  lh           a1, -97(a6)
                  lb           a3, 266(a6)
                  xor          a5, sp, s1
                  lb           s11, 286(a6)
                  lb           gp, 680(a6)
                  lh           s11, 175(a6)
                  srai         s5, s1, 26
                  lhu          s5, -149(a6)
                  sub          t2, s8, s0
                  lh           tp, 931(a6)
                  lb           t2, 798(a6)
                  xori         t2, a7, -150
                  add          tp, s4, ra
                  sltu         s9, t5, a5
                  slti         s1, zero, -1087
                  lb           a0, -12(a6) #end riscv_load_store_rand_instr_stream_5
1192:             lui          t6, 71956
1193:             sll          sp, s10, s8
                  srai         s5, ra, 27
                  add          a4, a3, a7
1196:             sll          s5, s5, s5
                  bge          s6, t3, 1203f
                  sub          a6, a4, s4
                  srl          s6, s4, gp
1200:             slli         s1, s0, 10
                  sltiu        s1, s11, 679
                  or           s9, sp, s5
1203:             srli         tp, zero, 5
                  xor          a0, t1, s1
                  xori         s2, t4, 212
                  addi         s1, a3, -871
                  srli         s11, s4, 12
                  bltu         s6, s3, 1224f
                  sltu         s2, t0, t0
                  ori          t6, t5, -515
                  xori         s0, a0, -601
                  sll          s5, s6, t1
                  la           s10, region_0+200 #start riscv_load_store_rand_instr_stream_10
                  lui          tp, 504208
                  lbu          s9, 21(s10)
                  lb           a6, 53(s10)
                  slli         ra, s2, 30
                  lw           s7, 24(s10)
                  lb           s0, -39(s10)
                  sra          s5, s4, a5
                  sh           a6, 36(s10)
                  ori          s9, s0, 188
                  lbu          t6, -35(s10)
                  lbu          a5, 45(s10)
                  or           s0, t2, t4
                  ori          s9, zero, 1520
                  ori          t0, a7, -450
                  sll          sp, s9, a6
                  sltiu        s1, s6, -1754
                  lbu          t1, -21(s10)
                  lb           zero, -63(s10)
                  lb           a5, 5(s10)
                  sb           tp, -30(s10)
                  add          zero, tp, a3
                  addi         s2, tp, 1053
                  lb           a2, 13(s10) #end riscv_load_store_rand_instr_stream_10
                  slti         t0, t5, -863
                  bge          tp, s10, 1231f
                  xori         s10, s3, 1094
                  or           gp, a6, s7
                  andi         s1, t5, 1258
                  srli         s11, a0, 17
                  beq          s11, t3, 1233f
                  add          s6, s4, s11
                  slli         a0, t6, 14
                  nop
                  bge          s6, t5, 1238f
1224:             slli         t1, a7, 25
                  auipc        s7, 95278
                  sll          s5, s2, t2
                  sltu         a4, a6, tp
                  add          s8, s11, s0
                  nop
                  xor          s2, s3, tp
1231:             sub          a1, gp, a3
                  auipc        a1, 802920
1233:             and          t5, t0, a6
                  bgeu         a2, s2, 1249f
                  srl          tp, t3, s10
                  nop
                  xor          t6, s9, s3
1238:             bge          zero, a6, 1250f
                  slti         t5, gp, -1849
                  auipc        a5, 194624
                  sltiu        ra, s6, -1114
                  sltiu        s10, s5, 1369
                  addi         t4, a7, 1587
                  bgeu         t1, a4, 1251f
                  ori          gp, t0, 8
                  addi         s6, s1, -1392
                  bne          a7, s6, 1264f
                  srai         s10, gp, 3
1249:             sltu         s10, t0, s1
1250:             andi         t1, ra, 862
1251:             bgeu         a7, a7, 1252f
1252:             sll          s7, a5, t5
                  andi         t4, s6, 754
                  lui          t4, 556578
                  bge          a0, sp, 1260f
                  sltu         s3, a4, s7
                  sra          s5, tp, sp
                  sltu         s1, s8, s5
                  lui          a4, 10035
1260:             bne          s1, tp, 1267f
                  sub          s9, a1, s9
                  andi         s10, a6, 444
                  srl          s10, s4, s2
1264:             xor          t6, s10, a4
                  addi         gp, ra, 1808
                  xor          t4, s0, s9
1267:             bltu         t1, s0, 1270f
                  nop
                  bgeu         s3, s5, 1279f
1270:             sra          s7, a5, s11
                  add          s8, t4, a0
                  lui          a4, 876859
                  blt          s11, a3, 1282f
                  bne          a6, t5, 1286f
                  bne          s2, s10, 1280f
                  srl          tp, a1, a6
                  nop
                  srli         s9, a7, 26
1279:             nop
1280:             sll          a3, a0, ra
                  sub          t0, a7, t2
1282:             xori         s9, a6, 1108
                  sub          a3, a1, t0
                  bge          a7, a5, 1290f
                  bne          s5, a4, 1294f
1286:             ori          s0, ra, -1062
                  srli         s11, t4, 18
                  bltu         sp, t5, 1308f
                  la           s1, region_0+1335 #start riscv_load_store_rand_instr_stream_7
                  lbu          t1, 14(s1)
                  lbu          t4, -1(s1)
                  lbu          tp, 5(s1)
                  sra          s6, a2, sp
                  srai         a5, a4, 19
                  lb           zero, -9(s1)
                  nop
                  sra          t4, s1, t4
                  lhu          ra, -11(s1)
                  sh           a0, -3(s1)
                  lb           t2, -12(s1)
                  sb           a1, 14(s1)
                  addi         a2, s3, 235
                  sltu         gp, s10, t5
                  lb           s6, -12(s1)
                  lbu          gp, 10(s1)
                  addi         t1, a6, -1389
                  andi         t2, ra, 1781
                  lbu          a0, -12(s1)
                  lbu          s10, -1(s1)
                  and          s6, s9, a2
                  lh           zero, -9(s1)
                  lui          t6, 41069
                  lb           gp, -2(s1)
                  lhu          a5, 5(s1)
                  slt          s10, t0, ra
                  ori          a3, t3, 885
                  and          t6, s4, s5
                  lbu          s10, 6(s1)
                  lbu          sp, 6(s1)
                  srli         a1, a7, 27
                  lbu          s6, 8(s1)
                  or           s11, t0, s10
                  sb           t4, 0(s1)
                  lb           a4, -4(s1)
                  lb           s11, -2(s1)
                  lh           a0, -5(s1)
                  lb           s8, -10(s1)
                  lw           s3, 5(s1)
                  auipc        a1, 432277
                  andi         s7, t2, -1407
                  sb           sp, 10(s1)
                  or           s6, a2, a6
                  sll          a1, t5, a1
                  srai         s11, a7, 4
                  sltiu        s0, t6, 606
                  lb           s5, -11(s1)
                  slti         sp, a7, -1770
                  sb           s7, -11(s1)
                  lb           t2, -6(s1)
                  sb           s10, -11(s1) #end riscv_load_store_rand_instr_stream_7
                  lui          t6, 134711
1290:             xor          s0, t5, gp
                  lui          s8, 544559
                  ori          s3, sp, 562
                  sll          s10, tp, a4
1294:             srl          ra, s3, a0
                  sll          s1, t4, a3
                  xor          a4, s9, a1
                  blt          s2, s2, 1301f
                  and          t0, gp, t3
                  beq          a4, ra, 1314f
                  ori          s8, a1, -2042
1301:             slt          s0, t6, tp
                  sltiu        a0, s9, -119
                  xori         ra, s0, 1173
                  addi         a6, a6, -1791
                  blt          t6, s6, 1319f
                  srai         a6, s2, 24
                  ori          a1, s1, -592
1308:             ori          s6, t6, 402
                  xor          t1, s10, s9
                  bne          s10, a6, 1320f
                  bltu         s11, a2, 1321f
                  andi         s2, tp, -885
                  blt          ra, a3, 1323f
1314:             nop
                  slt          a5, a4, a4
                  add          s7, a7, a3
                  bge          a4, s9, 1323f
                  blt          s8, s4, 1333f
1319:             sll          t5, t2, s1
1320:             slli         zero, a5, 4
1321:             srli         a5, t5, 16
                  xori         a0, ra, 788
1323:             or           a5, s10, tp
                  nop
                  and          a3, s11, tp
                  srai         a2, a6, 26
                  add          s5, zero, s11
                  sltiu        a0, t1, 1598
                  blt          a3, s11, 1339f
                  slti         t1, sp, -100
                  bge          s4, a6, 1346f
                  xori         s6, a0, -314
1333:             sll          s9, a3, t6
                  or           a2, t2, a7
                  slt          t1, a5, s6
                  xor          a3, s5, tp
                  andi         s11, t6, -1587
                  slti         gp, s3, 1798
1339:             beq          a1, t0, 1356f
                  beq          a1, a2, 1346f
                  srai         s5, t0, 21
                  add          gp, s8, t6
                  srai         s8, t1, 4
                  addi         s5, a5, 1989
                  slti         tp, t3, -76
1346:             bltu         s10, a7, 1360f
                  srai         a1, s1, 13
                  and          t1, zero, sp
                  lui          a6, 347274
                  sltu         s11, s2, a3
                  and          sp, t4, ra
                  sltiu        s2, a5, 524
                  bne          a0, t2, 1367f
                  srai         ra, t6, 17
                  sll          s1, t3, s3
1356:             nop
                  lui          s3, 453781
                  ori          a3, s9, -1404
                  sll          s11, a5, s2
1360:             srai         s8, s8, 6
                  sltu         t1, a7, s4
                  nop
                  add          t2, zero, s7
                  srli         s10, s7, 3
                  lui          a1, 1020862
                  sltiu        a4, a0, -1184
1367:             nop
                  bgeu         s5, a5, 1372f
                  sll          a0, t5, s10
                  xor          s7, ra, s5
                  sltu         s1, a5, s1
1372:             slt          t1, tp, s11
                  slli         s2, s7, 4
                  nop
                  bne          s7, ra, 1387f
                  lui          a1, 291070
                  slt          gp, s5, zero
                  sltiu        s7, s11, -1621
                  lui          s6, 469581
                  srl          a3, a0, t6
                  sltu         s1, a4, zero
                  and          s9, s2, s4
                  bgeu         a0, t3, 1388f
                  slli         s5, tp, 20
                  sltiu        t2, s0, -707
                  sll          a4, s5, s5
1387:             and          s10, t6, t4
1388:             nop
                  bgeu         a4, tp, 1392f
                  bltu         a2, s10, 1400f
                  slt          ra, s4, a4
1392:             bltu         s6, s0, 1403f
                  xori         sp, tp, -875
                  sra          ra, s9, a3
                  sll          a4, s7, t3
                  lui          a4, 67478
                  srli         sp, s8, 12
                  sltiu        gp, t5, 855
                  bne          s7, s8, 1404f
1400:             srl          s3, a2, tp
                  sub          s0, t5, s8
                  lui          t5, 391786
1403:             sltu         s11, t1, t4
1404:             srai         a0, a1, 4
                  srli         a4, s0, 9
                  slti         s6, t1, 594
                  sub          s7, a4, s11
                  lui          s7, 28413
                  sub          ra, a2, a1
                  andi         t2, a7, -922
                  srl          zero, a7, sp
                  ori          t1, t0, -967
                  srl          gp, a2, zero
                  sll          s10, s3, tp
                  sltu         s9, a0, s8
                  sll          t0, t1, a7
                  slti         s2, tp, 436
                  sll          t1, s6, s2
                  lui          a5, 32641
                  ori          s2, s1, -1092
                  sltu         t2, s4, s4
                  slti         a5, a0, 1614
                  slli         t2, gp, 6
                  srli         sp, s2, 24
                  beq          t1, a0, 1432f
                  bge          t0, tp, 1442f
                  bgeu         gp, sp, 1437f
                  slli         s7, a1, 30
                  lui          a6, 317003
                  sltu         zero, a1, a6
                  slli         a1, s8, 18
1432:             sub          t1, sp, t1
                  slli         s8, a3, 9
                  auipc        ra, 430704
                  addi         a1, t6, -44
                  bgeu         t6, a0, 1448f
1437:             xor          ra, t3, a5
                  xori         a3, a3, -425
                  lui          s2, 1038575
                  srl          sp, s5, sp
                  beq          a4, s9, 1461f
1442:             srl          a1, a5, s1
                  and          a0, s4, t1
                  auipc        s7, 901406
                  nop
                  bgeu         s3, s0, 1463f
                  and          a1, a5, t6
1448:             ori          s0, s4, 470
                  srl          tp, s7, a2
                  addi         s3, s7, -675
                  sub          s1, zero, a6
                  slt          s0, a4, zero
                  or           a4, s4, a7
                  sltu         a1, s10, s3
                  srl          a5, s8, a5
                  srli         s8, s5, 22
                  nop
                  xori         a1, s4, -1449
                  add          s2, s6, t0
                  auipc        a2, 314360
1461:             slti         ra, s1, 329
                  andi         t4, s5, -605
1463:             add          s7, s4, s4
                  srli         t0, s2, 11
                  auipc        a5, 176341
                  and          s7, a7, t6
                  sltiu        t2, a4, -1468
                  addi         a1, s1, -1296
                  xori         ra, t0, 517
                  auipc        s5, 580587
                  slti         sp, zero, 1557
                  sltu         t6, s4, t6
                  sll          t6, a0, s4
                  add          a6, ra, t2
                  lui          a4, 1186
                  and          s9, zero, a7
                  slti         tp, s9, -1662
                  bgeu         s3, s3, 1488f
                  addi         a5, ra, -712
                  bge          s7, a2, 1481f
1481:             xori         t2, s10, -699
                  xor          s11, t2, ra
                  slti         a4, a4, 1632
                  bne          s8, t5, 1493f
                  beq          a4, s7, 1500f
                  or           a6, a1, a0
                  sltiu        a0, gp, 1399
1488:             sra          a6, a3, s8
                  ori          a6, t4, 1581
                  xor          s8, t5, ra
                  bgeu         a0, s7, 1498f
                  sll          zero, s10, t5
1493:             blt          a4, a4, 1500f
                  srai         s9, t5, 25
                  sra          t0, a5, t6
                  blt          s5, a7, 1505f
                  sltiu        zero, t0, 42
1498:             bne          t4, t2, 1512f
                  ori          a1, a1, 1023
1500:             xor          gp, s8, a0
                  srli         t1, s6, 14
                  bltu         s7, s3, 1511f
                  bltu         s1, t4, 1508f
                  and          t1, t3, t0
1505:             sub          t0, a6, s4
                  addi         a6, t3, -408
                  or           t4, s9, s9
1508:             bge          a1, a2, 1520f
                  sltiu        sp, t5, -1911
                  auipc        s8, 856071
1511:             bge          s7, t1, 1525f
1512:             beq          zero, gp, 1526f
                  srai         zero, s11, 5
                  xor          t1, t6, s0
                  xori         t4, ra, 1304
                  and          s3, a2, t5
                  or           s2, t2, s5
                  srli         sp, a1, 13
                  blt          zero, t4, 1529f
1520:             add          t2, gp, a1
                  lui          t2, 741691
                  andi         a3, a1, -714
                  ori          t4, s1, 825
                  slt          t4, s2, tp
1525:             sub          s2, t3, a5
1526:             or           s11, gp, gp
                  bne          s6, a0, 1533f
                  bne          t0, a0, 1544f
1529:             srli         t5, t5, 1
                  sub          a2, t3, s0
                  bgeu         s3, t5, 1532f
1532:             sltu         a3, a1, a4
1533:             beq          s6, s10, 1543f
                  xor          s2, tp, sp
                  srli         t6, t3, 26
                  srai         s7, s11, 13
                  bge          a4, sp, 1552f
                  blt          a2, sp, 1555f
                  bge          s9, s0, 1548f
                  srl          a2, tp, t2
                  srli         t0, ra, 15
                  lui          t0, 602224
1543:             sra          s3, s7, s2
1544:             srl          a1, t0, a6
                  sll          zero, tp, sp
                  blt          a2, s11, 1561f
                  bgeu         t0, s6, 1562f
1548:             sltiu        s11, s0, 1431
                  bgeu         gp, s3, 1558f
                  and          zero, t5, s3
                  sltiu        t6, gp, 583
1552:             bge          s1, a7, 1557f
                  auipc        a0, 62570
                  sra          t0, a0, zero
1555:             slli         t2, a4, 19
                  ori          a3, s10, 610
1557:             and          zero, s8, s6
1558:             sub          ra, a1, ra
                  sll          a3, a3, a5
                  slt          t1, t1, s6
1561:             bgeu         a2, a7, 1568f
1562:             auipc        s9, 91277
                  sltu         s6, s6, s1
                  bge          a0, ra, 1570f
                  auipc        a2, 629955
                  bge          t2, a5, 1575f
                  and          s0, s8, s1
1568:             bltu         a1, s0, 1575f
                  sll          t2, s7, s2
1570:             andi         s3, a0, 1302
                  lui          t6, 333792
                  blt          sp, ra, 1586f
                  bltu         a5, t2, 1576f
                  slli         s6, s2, 15
1575:             sll          t0, s1, s5
1576:             ori          t0, s3, -1939
                  bne          t1, t3, 1597f
                  sub          zero, s5, s10
                  addi         t5, t0, -352
                  srli         s11, t0, 13
                  srl          t6, s6, t2
                  auipc        tp, 610012
                  slli         s3, t1, 3
                  sltu         s1, s0, s3
                  sll          s1, t2, a5
1586:             or           t2, s7, s5
                  or           a4, a7, a3
                  sll          gp, tp, s1
                  sll          s7, s5, s4
                  sltu         a6, t1, a3
                  sltiu        sp, a5, 284
                  beq          t0, t4, 1596f
                  lui          a3, 87558
                  srai         ra, t6, 17
                  slt          t2, a6, a6
1596:             andi         s7, a3, 977
1597:             bne          a6, s11, 1609f
                  sltu         ra, s2, a0
                  srl          s0, t6, s4
                  blt          s11, s6, 1611f
                  srl          s11, a0, ra
                  bne          s6, tp, 1612f
                  addi         a6, s11, 230
                  add          zero, t6, t0
                  xor          s7, t6, s7
                  sltu         t6, t3, s4
                  slli         a2, t6, 13
                  auipc        a3, 906716
1609:             sub          t0, t0, a7
                  nop
1611:             slt          ra, ra, s5
1612:             slli         s9, a2, 6
                  sra          a1, s6, t1
                  and          t5, s2, a2
                  sra          t0, tp, t0
                  srai         s3, s6, 30
                  bge          sp, a4, 1624f
                  sub          sp, s3, t3
                  sra          zero, a0, s9
                  bge          a3, t2, 1637f
                  beq          a6, a0, 1631f
                  xori         tp, a7, 559
                  slli         s11, t6, 23
1624:             bne          s11, s10, 1631f
                  slti         t2, t4, 713
                  auipc        s6, 100303
                  sltiu        gp, s9, 643
                  and          a5, a7, ra
                  blt          t3, s2, 1641f
                  bltu         t2, s1, 1640f
1631:             xori         zero, s3, -1223
                  addi         s6, s6, -858
                  sra          s0, a7, s2
                  bltu         s2, a7, 1648f
                  bne          zero, sp, 1650f
                  srli         s6, a7, 14
1637:             sltiu        tp, gp, 336
                  bge          gp, gp, 1647f
                  sltiu        zero, s9, -1938
1640:             add          s1, sp, t6
1641:             lui          s0, 1021449
                  srai         ra, s8, 25
                  or           s10, t6, t2
                  sub          s8, zero, s7
                  sub          t1, tp, s2
                  or           s8, a7, s4
1647:             sll          s8, zero, t6
1648:             xori         s10, s9, 1328
                  bltu         s11, t4, 1656f
1650:             slt          t5, t0, s0
                  slli         s3, s6, 9
                  bne          s4, a6, 1657f
                  or           s2, a4, a2
                  srai         t2, a4, 22
                  slli         s0, s8, 19
1656:             add          a4, s9, a1
1657:             sltu         s6, a0, t6
                  bne          s9, t4, 1667f
                  auipc        a3, 942005
                  sub          zero, gp, s0
                  add          a3, s8, s7
                  slli         s0, s2, 10
                  xori         t4, gp, -1757
                  bgeu         a0, a4, 1676f
                  auipc        s6, 683460
                  sub          a5, t0, a7
1667:             bge          a7, a0, 1682f
                  andi         s6, a5, -1968
                  xori         a4, a6, -2015
                  srli         s9, a2, 4
                  blt          a5, a2, 1685f
                  sll          tp, tp, ra
                  ori          t4, t0, 3
                  slti         s9, a1, 1649
                  blt          a1, a2, 1676f
1676:             blt          gp, s1, 1680f
                  sll          a6, s7, tp
                  bge          a2, t1, 1684f
                  or           t5, a0, tp
1680:             add          t1, s7, tp
                  lui          t5, 852301
1682:             sltiu        s11, t5, 1807
                  ori          s10, s7, -1972
1684:             xor          s2, zero, s5
1685:             sub          t0, s11, tp
                  bltu         a4, s4, 1689f
                  srl          t2, a6, a4
                  slli         a4, a1, 10
1689:             bge          zero, a0, 1704f
                  slti         t5, s4, -285
                  srli         a4, zero, 2
                  slli         a4, a1, 29
                  srli         a6, s6, 21
                  ori          t2, ra, 977
                  bge          t4, s9, 1706f
                  srl          s7, zero, s3
                  and          s10, a4, a3
                  xori         t0, s6, 222
                  sltiu        t0, t1, 182
                  lui          t2, 605372
                  blt          a4, s0, 1721f
                  bge          s6, t5, 1711f
                  andi         t2, t0, 592
1704:             srai         ra, gp, 12
                  slli         s11, s2, 20
1706:             srli         s3, t2, 2
                  nop
                  srli         a4, tp, 17
                  bltu         t2, a1, 1725f
                  sll          t5, a3, a1
1711:             sltiu        sp, t1, -37
                  add          a1, s7, s3
                  sll          a4, s10, s6
                  beq          a5, t0, 1724f
                  lui          a2, 576336
                  nop
                  slt          sp, a6, s9
                  or           a1, t0, ra
                  add          s2, ra, zero
                  srli         t2, a3, 2
1721:             xor          a4, s10, gp
                  addi         a0, s0, -193
                  sub          ra, s9, t5
1724:             bgeu         s8, s2, 1730f
1725:             slti         sp, s7, 1944
                  andi         s3, a0, -577
                  sll          t0, gp, a5
                  bge          s0, s1, 1733f
                  or           s10, s1, zero
1730:             sra          s8, s8, a5
                  sll          a5, t0, a1
                  sll          t2, a2, s8
1733:             slli         sp, a3, 20
                  addi         a6, s3, -1007
                  srai         s11, t1, 11
                  srai         s0, t4, 7
                  blt          s11, a6, 1744f
                  addi         a6, a0, -1590
                  auipc        s9, 540411
                  sub          s6, a0, t3
                  srli         s2, t3, 27
                  or           s9, s10, zero
                  sll          t1, s2, s3
1744:             bne          sp, a2, 1761f
                  auipc        a6, 349053
                  ori          s7, s7, 977
                  or           s2, zero, s1
                  bne          s7, t4, 1758f
                  andi         s5, s1, 1085
                  sub          t6, a0, t5
                  sra          zero, s2, gp
                  nop
                  bne          s10, gp, 1767f
                  add          a1, a5, s5
                  bgeu         t2, a5, 1772f
                  srli         a6, t1, 13
                  lui          t2, 25778
1758:             blt          s5, sp, 1768f
                  xor          t4, t2, s5
                  lui          s2, 1014439
1761:             sltiu        t2, s3, 1616
                  sltiu        a2, a0, 774
                  bne          t4, t2, 1777f
                  auipc        a2, 660673
                  or           t6, t4, s1
                  sll          s2, a3, a6
1767:             sltu         s1, s1, a4
1768:             nop
                  sub          t5, zero, s9
                  xori         t2, s10, 280
                  srl          s8, s11, s6
1772:             andi         t5, tp, -406
                  sra          sp, s1, t2
                  nop
                  and          a1, s11, s9
                  xor          a6, s5, s0
1777:             slti         s8, s3, 302
                  andi         gp, t4, -255
                  srai         s5, s3, 0
                  addi         ra, ra, 1959
                  sltu         t2, s0, s4
                  sll          s6, s9, s4
                  ori          t4, t4, 677
                  sltu         a2, s3, a6
                  slli         s7, a1, 30
                  sltiu        s10, s6, 1214
                  srl          t0, zero, sp
                  bge          t1, s6, 1803f
                  bne          a6, a5, 1794f
                  sll          t5, sp, t5
                  sltu         a0, a5, s2
                  lui          tp, 471602
                  andi         s10, zero, 1846
1794:             slti         t4, s11, -1548
                  and          s0, s10, zero
                  bne          t5, s2, 1802f
                  sltu         s0, t4, s2
                  srl          a3, s3, t0
                  sltiu        ra, t5, 416
                  and          a3, a0, t4
                  add          s2, zero, s0
1802:             srai         s10, s11, 24
1803:             addi         a5, s0, -973
                  sll          t6, a5, s10
                  blt          t2, s10, 1811f
                  bgeu         s3, a6, 1816f
                  slli         ra, a1, 11
                  and          a4, a7, a1
                  andi         s1, s6, 39
                  blt          a2, a6, 1820f
1811:             sll          s10, s4, s8
                  ori          s0, s10, -1114
                  sll          a2, t4, s4
                  andi         s9, s10, -934
                  sub          ra, t1, t3
1816:             slti         t4, s10, 1345
                  bltu         s10, tp, 1834f
                  addi         s2, s5, 1668
                  sra          gp, s2, a0
1820:             sll          t4, s2, a6
                  nop
                  auipc        a4, 563699
                  sltu         t0, tp, s10
                  xor          s3, s4, tp
                  beq          t6, zero, 1832f
                  bge          a6, s7, 1829f
                  auipc        tp, 843220
                  andi         s10, t4, 1777
1829:             slti         a3, a7, 395
                  lui          s2, 622548
                  andi         a2, a2, -1460
1832:             slt          s6, s7, s6
                  add          sp, t6, s3
1834:             blt          a4, a3, 1839f
                  blt          a4, s7, 1846f
                  slli         s6, s6, 21
                  srli         s9, s0, 4
                  bne          s1, a6, 1854f
1839:             addi         a0, s0, 1002
                  or           a1, s9, a7
                  andi         s10, s10, -1003
                  bgeu         s11, t6, 1856f
                  lui          s1, 485730
                  sll          sp, gp, t3
                  sll          t5, a3, s6
1846:             srai         s7, s11, 23
                  xor          a4, a5, s7
                  or           a2, a4, s1
                  sll          s5, sp, a5
                  blt          s10, gp, 1857f
                  slt          a3, s2, t4
                  slli         t5, s2, 19
                  slli         zero, s5, 23
1854:             auipc        a0, 562592
                  srl          t5, sp, s3
1856:             slli         t4, s11, 26
1857:             or           s9, s2, s3
                  beq          s6, s1, 1859f
1859:             srli         s7, s7, 13
                  sll          s6, tp, s6
                  bge          s6, s1, 1881f
                  ori          s6, s5, 100
                  sra          s7, s11, s11
                  blt          a2, s4, 1874f
                  xori         t6, a3, 1929
                  lui          a5, 996892
                  srl          tp, s10, a7
                  and          a5, a6, gp
                  and          s11, s2, s8
                  ori          s2, t4, 262
                  sltu         s6, s10, a4
                  nop
                  sra          ra, t1, a2
1874:             blt          a3, s2, 1883f
                  andi         a0, s8, -1943
                  or           s9, t3, s7
                  or           t2, s9, a6
                  sub          s5, a7, s8
                  srai         t0, ra, 11
                  xor          a3, t3, zero
1881:             bgeu         t2, a3, 1890f
                  lui          a6, 945716
1883:             slti         sp, a5, -1472
                  add          t6, s4, s2
                  srl          s0, a0, t3
                  xori         s11, a2, 203
                  sltu         s0, s11, a1
                  or           t6, s10, s9
                  bne          s3, s9, 1903f
1890:             bge          s10, a1, 1899f
                  srli         s6, s10, 28
                  slli         a4, tp, 16
                  bge          a0, zero, 1908f
                  lui          zero, 129579
                  auipc        gp, 646910
                  sub          zero, t3, s0
                  sll          s9, s4, a1
                  or           t1, s11, a2
1899:             beq          a6, a0, 1911f
                  beq          zero, zero, 1910f
                  sra          t1, zero, t1
                  sub          t1, a6, t1
1903:             srl          s5, a7, s4
                  sra          a3, sp, s11
                  and          s9, a6, s0
                  slti         ra, zero, -1700
                  srli         s10, a2, 20
1908:             srl          a5, a3, gp
                  auipc        ra, 611195
1910:             bgeu         a0, zero, 1927f
1911:             slli         s11, t0, 14
                  add          a0, a0, s1
                  sltu         s1, s6, t5
                  beq          a0, t0, 1926f
                  bgeu         t2, t6, 1919f
                  bne          s11, zero, 1923f
                  srli         tp, t2, 0
                  blt          a6, s3, 1933f
1919:             andi         s10, t5, 575
                  addi         s1, s6, -1256
                  bge          t4, a1, 1933f
                  and          a1, t3, s5
1923:             bgeu         a1, s4, 1930f
                  auipc        s5, 622404
                  bgeu         t3, a4, 1939f
1926:             bgeu         ra, s0, 1938f
1927:             nop
                  sra          tp, a5, gp
                  bgeu         a5, t0, 1944f
1930:             sra          t5, t6, t2
                  beq          a0, t6, 1940f
                  sra          s3, t0, a3
1933:             sra          t2, ra, s9
                  bltu         t2, a0, 1940f
                  bne          t2, s0, 1946f
                  addi         t5, t1, 1671
                  and          a5, s8, s1
1938:             xor          t0, s0, a0
1939:             nop
1940:             sll          s1, a2, s1
                  sub          a0, s7, a0
                  sltu         s6, t4, tp
                  sltu         t1, t2, t5
1944:             srai         s9, sp, 28
                  nop
1946:             sra          s0, t0, a2
                  addi         s2, tp, 748
                  slt          s6, t3, a0
                  addi         s11, a2, 1554
                  srai         t6, a6, 25
                  srai         a3, s11, 27
                  bgeu         t4, t0, 1959f
                  srli         zero, sp, 22
                  srai         t4, t6, 25
                  slt          s2, t3, s5
                  and          s6, s10, a1
                  xor          ra, a2, s4
                  slt          sp, tp, t2
1959:             andi         s0, a4, -1569
                  xor          a1, t2, t5
                  sub          t1, t2, t6
                  sra          s6, sp, s11
                  and          a2, a4, s8
                  sltiu        s3, a3, -1171
                  slti         t2, t4, 435
                  and          a0, a3, gp
                  andi         s5, s11, 1900
                  slli         a0, zero, 19
                  blt          t3, tp, 1972f
                  and          t2, t1, s4
                  auipc        t5, 1034485
1972:             auipc        a5, 267051
                  blt          gp, gp, 1983f
                  ori          t5, s9, -578
                  bne          a0, s1, 1979f
                  lui          a6, 232906
                  sltu         zero, s0, t6
                  beq          s11, s6, 1983f
1979:             xori         t4, s0, -1977
                  sltu         a3, t6, s4
                  beq          t5, zero, 1988f
                  srai         t2, t3, 13
1983:             sltu         s0, gp, ra
                  sub          a6, sp, s8
                  slt          a4, s11, a2
                  sltiu        gp, s10, 1049
                  ori          sp, s11, -1025
1988:             ori          t1, sp, 1341
                  slt          t2, s10, s0
                  and          t5, a1, s4
                  lui          sp, 716291
                  auipc        t1, 8483
                  lw           s3, 4(s4)
                  addi         s4, s4, 44
                  nop
2632:             addi x14, x19, 1
2632:             jalr x14, x14, 0
sub_10:           blt          tp, s0, sub_10_stack_p
                  xor          t5, s6, s11
sub_10_stack_p:   addi         s4, s4, -40
                  sra          t0, s1, s6
                  sw           s3, 4(s4)
                  nop
                  srli         sp, t3, 26
                  la           sp, region_0+1382 #start riscv_load_store_rand_instr_stream_1
                  sll          gp, s11, s0
                  lui          t1, 364933
                  lb           a6, -180(sp)
                  sltiu        s10, t3, 766
                  andi         t1, s9, 1050
                  slli         a1, s0, 22
                  lbu          tp, -100(sp)
                  sra          s1, a4, gp
                  sh           s7, -52(sp)
                  auipc        t6, 424395
                  lb           t0, -91(sp)
                  sra          a2, t3, a1
                  srai         tp, zero, 5
                  or           a2, sp, a7
                  sub          s9, s9, sp
                  or           t6, t6, s2
                  andi         gp, t2, 1056
                  sh           a6, -100(sp)
                  sh           t4, -146(sp)
                  sltiu        zero, s0, -478
                  srl          s6, a6, s5
                  srl          s2, a4, gp
                  andi         t1, a0, -36
                  and          s5, a3, gp
                  sltiu        s1, t2, 786
                  xor          s3, s6, s4
                  auipc        s6, 71081
                  lbu          t1, 67(sp)
                  xori         t4, a4, 891
                  lb           t1, 200(sp)
                  lui          gp, 289443
                  lhu          gp, -92(sp)
                  lh           a3, 56(sp)
                  sltiu        a1, t2, 1823
                  sw           s7, -10(sp)
                  sltiu        s0, s0, 434
                  sltiu        t4, a7, -81
                  lbu          a5, -119(sp)
                  sll          a5, a1, s10
                  lh           s6, 62(sp) #end riscv_load_store_rand_instr_stream_1
                  srli         t0, a4, 20
                  lui          t1, 68167
                  addi         a3, t4, -627
                  lui          a6, 514785
                  xori         a6, sp, 480
                  bne          a7, t3, 14f
                  andi         s7, s9, 579
                  beq          t1, zero, 26f
                  bne          sp, t6, 18f
                  srl          t0, s1, a4
                  andi         a5, t2, -1321
                  srai         t4, s5, 19
                  ori          s0, t5, 1028
                  slti         s1, t1, 543
14:               auipc        s3, 247409
                  sub          t4, a3, s9
                  sltu         a4, t6, t1
                  bltu         a7, a6, 25f
18:               ori          zero, gp, 2038
                  blt          ra, sp, 29f
                  bltu         t4, a2, 30f
                  sltu         a6, sp, a3
                  xor          a5, s8, a5
                  slt          s5, a2, a4
                  xori         s5, zero, 1542
25:               slti         t6, t0, -1271
26:               sltu         a4, t6, tp
                  beq          tp, s4, 40f
                  sltiu        zero, a1, -1136
29:               ori          a3, a5, -1359
30:               bgeu         s6, zero, 37f
                  auipc        tp, 189395
                  sll          ra, s8, tp
                  blt          t5, s5, 48f
                  sltiu        a1, t1, 1598
                  slli         t6, s4, 31
                  auipc        t6, 901155
37:               add          s0, s11, a0
                  srai         t2, s8, 14
                  blt          s7, t2, 42f
40:               bne          s9, s3, 60f
                  sub          t6, t1, s0
42:               add          sp, gp, s2
                  sltiu        a6, a2, -600
                  beq          s7, s2, 61f
                  andi         tp, t0, 1665
                  sltu         a0, t1, sp
                  sra          zero, t1, t3
48:               srl          s10, s10, s0
                  bgeu         a1, a6, 68f
                  or           t1, t4, t0
                  lui          gp, 922620
                  ori          s0, t2, -1646
                  srl          a5, t6, t3
                  srl          s10, s5, t0
                  beq          s8, a4, 72f
                  sltu         s0, t5, ra
                  lui          t4, 875200
                  slti         ra, s5, 142
                  slt          s0, ra, ra
60:               sra          s1, s4, s8
61:               sub          a0, s4, zero
                  add          s1, t5, s8
                  sub          zero, a7, a4
                  andi         s1, s0, -1403
                  sub          s8, s6, a7
                  bne          s5, gp, 67f
67:               bgeu         ra, s1, 79f
68:               srli         a4, s10, 27
                  slt          s10, ra, ra
                  bgeu         gp, s2, 78f
                  xor          sp, t4, s7
72:               srli         a6, sp, 23
                  beq          a5, a2, 79f
                  sub          a5, s3, s7
                  andi         a0, s10, 1880
                  and          gp, a0, s0
                  andi         s10, a3, 322
78:               auipc        tp, 743241
79:               srli         s7, s10, 8
                  add          t0, a3, s0
                  sll          s5, s5, t6
                  xori         tp, s6, 528
                  addi         a2, t6, -1547
                  xor          a4, t4, t2
                  and          s5, ra, t6
                  beq          gp, a4, 99f
                  bgeu         t3, t2, 107f
                  auipc        t0, 6318
                  sltu         s5, a3, zero
                  bltu         a1, gp, 92f
                  ori          s2, s0, -1352
92:               blt          s5, s5, 100f
                  andi         s8, s5, -1644
                  bgeu         t0, s6, 102f
                  srai         s11, t5, 24
                  bge          t2, s0, 97f
97:               slti         s3, sp, -517
                  nop
99:               ori          ra, s10, 949
100:              slt          a6, s4, a3
                  srai         s5, a5, 15
102:              sltiu        a5, s11, -346
                  blt          a0, t2, 108f
                  addi         s9, s5, -1124
                  bgeu         a2, a7, 107f
                  sub          a2, gp, a2
107:              addi         t0, t6, -1152
108:              bne          a1, s7, 124f
                  srl          a2, s8, t2
                  sltu         s3, a7, s8
                  or           s1, zero, t3
                  and          zero, tp, s4
                  and          t2, a5, s4
                  andi         s0, s3, 420
                  slli         t4, t4, 6
                  add          a4, t2, a1
                  slli         s2, t1, 6
                  auipc        tp, 322335
                  bne          s3, t1, 130f
                  andi         t5, gp, -108
                  beq          gp, a2, 134f
                  srai         a1, t5, 6
                  auipc        s0, 608258
124:              sltiu        t4, s6, -991
                  bltu         a5, s6, 132f
                  nop
                  ori          t1, s9, -478
                  xori         s2, s1, 679
                  bne          a3, ra, 142f
130:              bgeu         a7, s6, 135f
                  bgeu         s4, s2, 133f
132:              and          a3, t6, s6
133:              lui          gp, 257269
134:              addi         a0, s3, 30
135:              sub          s5, s9, s8
                  bgeu         t6, s10, 146f
                  blt          s4, gp, 146f
                  or           s6, zero, gp
                  ori          a2, s8, -525
                  bgeu         tp, t1, 143f
                  la           sp, region_1+1029 #start riscv_load_store_rand_instr_stream_2
                  lb           t6, 0(sp)
                  lbu          t1, -8(sp)
                  slt          a4, a3, s10
                  lw           tp, -5(sp)
                  slti         a2, a5, 1135
                  srai         s2, a7, 20
                  lb           s5, 6(sp)
                  xori         s7, a2, 1637
                  sub          a3, s1, s1
                  srli         t0, t4, 4
                  and          t5, t4, sp
                  ori          a0, t2, -326
                  auipc        tp, 504002
                  sh           ra, 1(sp)
                  addi         s1, s4, 1381
                  xori         a5, t2, -1929
                  lh           s11, -1(sp)
                  nop
                  ori          a6, zero, 1374
                  andi         a2, s5, -1433
                  xori         s0, a7, 1330
                  add          s10, s7, s5
                  slt          s6, sp, t1
                  or           s9, ra, s10
                  lui          s3, 95959
                  and          a1, s1, a6
                  sw           t4, 3(sp)
                  sb           a4, -12(sp)
                  sw           s1, -1(sp)
                  lui          a4, 357424
                  sltu         tp, t4, zero
                  auipc        ra, 514187
                  lb           s11, -16(sp)
                  auipc        t4, 687057
                  sltu         tp, t3, gp
                  srl          a1, t4, t6
                  lbu          s11, 5(sp)
                  lb           a4, 14(sp) #end riscv_load_store_rand_instr_stream_2
                  slt          s7, t2, t1
142:              bne          a4, t2, 153f
143:              sltu         a6, a7, a0
                  srai         a6, s5, 7
                  xori         a2, a2, -1076
146:              auipc        t0, 1036232
                  lui          tp, 719445
                  add          a4, a6, t5
                  ori          a2, sp, -424
                  andi         s5, t4, -1736
                  andi         a0, a7, -452
                  srai         t2, t0, 3
153:              bne          s6, s3, 154f
154:              xor          s2, ra, s6
                  add          t6, zero, a5
                  bgeu         t5, ra, 164f
                  xori         s0, s11, 1348
                  sll          a4, t0, t6
                  srl          t6, a2, t6
                  sub          gp, sp, t5
                  auipc        t6, 1030057
                  bne          s11, s4, 170f
                  xori         s7, a3, 78
164:              nop
                  ori          a5, s5, -1100
                  beq          a4, s10, 182f
                  bltu         sp, s3, 182f
                  bne          t0, s8, 188f
                  slli         t5, s10, 19
170:              sltu         a0, s4, sp
                  srl          s0, a5, t5
                  srl          ra, gp, a7
                  addi         s1, t4, -523
                  and          s8, a7, s7
                  srl          s11, s2, t0
                  slti         s10, a1, 260
                  sltiu        s6, a4, 954
                  or           t2, a2, s3
                  srai         a5, zero, 25
                  lui          zero, 273235
                  xor          s10, s0, a2
182:              sltiu        zero, a4, 998
                  and          s6, s4, s4
                  xor          gp, s5, s1
                  la           s0, region_1+470 #start riscv_load_store_rand_instr_stream_0
                  lhu          s1, -22(s0)
                  or           t2, s2, a1
                  slli         t6, gp, 1
                  addi         zero, s11, 1635
                  sra          sp, gp, a5
                  srli         s1, t5, 16
                  srai         ra, s5, 22
                  addi         s5, t3, 396
                  sb           t2, -7(s0)
                  auipc        a4, 547809
                  slli         a4, sp, 6
                  sltiu        s5, gp, 1024
                  sh           t4, -12(s0)
                  auipc        t5, 30367
                  and          s3, a3, a5
                  lb           t2, -48(s0)
                  auipc        s1, 383859
                  slli         s3, s8, 29
                  lbu          s3, -45(s0)
                  lb           a3, 40(s0)
                  or           gp, tp, s4
                  and          a4, t4, a0
                  addi         t0, s4, -1015
                  lhu          zero, 44(s0)
                  sub          s9, t5, t5
                  srli         t4, s0, 29
                  lbu          gp, -41(s0)
                  srai         s10, sp, 3
                  xori         sp, t0, -1412
                  sll          a3, t5, s4
                  sw           t3, -46(s0)
                  sb           t2, 19(s0)
                  lui          s1, 265546
                  lb           s3, 39(s0)
                  sll          s5, s4, zero
                  addi         tp, t3, 815
                  sll          s2, s8, t1
                  lb           t1, -2(s0)
                  ori          t1, s9, 1881
                  sll          sp, a6, s4
                  sb           sp, 64(s0) #end riscv_load_store_rand_instr_stream_0
                  addi         a3, a5, 517
                  or           s5, tp, s11
                  sub          t1, gp, s5
188:              xor          t0, a0, a3
                  ori          s3, t1, 2024
                  sub          t4, t0, sp
                  srli         s6, t3, 7
                  sub          a0, s2, t2
                  srai         a4, s10, 0
                  and          s5, s6, s9
                  blt          a2, t3, 201f
                  blt          a5, t1, 204f
                  addi         s0, s11, 1528
                  sltiu        s10, s4, 927
                  nop
                  auipc        gp, 402061
201:              slti         t6, t3, -1397
                  slli         s3, a1, 2
                  blt          a4, s0, 216f
204:              sltiu        ra, t4, -462
                  srli         s8, a7, 15
                  or           a1, t0, s2
                  and          s6, s9, s1
                  sll          a0, a0, t4
                  srai         s2, s0, 15
                  sra          a1, t3, a3
                  addi         a5, a6, -1853
                  nop
                  add          s1, t2, tp
                  sub          t4, t0, s2
                  xor          zero, s1, s2
216:              bltu         a1, a2, 233f
                  lui          a6, 740004
                  addi         s6, s5, 1580
                  bltu         a2, a4, 231f
                  xor          s3, a1, a6
                  bne          s10, s4, 234f
                  slli         a2, a7, 28
                  srai         gp, s9, 25
                  and          a5, s8, a2
                  xor          a4, sp, s8
                  ori          tp, s1, 189
                  add          a1, s3, s2
                  sll          s8, s0, tp
                  sub          t4, gp, a1
                  srai         s3, a7, 23
231:              xor          s1, s0, t3
                  slti         s5, t1, -683
233:              lui          t5, 587091
234:              xori         t6, s8, -2045
                  bltu         t6, s11, 242f
                  nop
                  blt          tp, t4, 238f
238:              sltiu        t0, t5, -1583
                  add          zero, a4, a5
                  srl          zero, s11, t5
                  sltu         t1, a7, t5
242:              auipc        t5, 378254
                  xori         s9, ra, 761
                  srai         s11, t2, 15
                  sll          sp, s4, t6
                  auipc        t1, 805359
                  slti         s1, s4, 1689
                  addi         s7, a2, 979
                  bge          t0, t6, 266f
                  add          a0, s11, s8
                  and          zero, a4, s4
                  add          a0, a1, s11
                  sltiu        s11, a2, 1851
                  blt          t3, s0, 262f
                  slli         a2, s7, 17
                  slt          s6, t6, a5
                  sltu         a6, a5, a5
                  nop
                  slli         t5, s5, 26
                  sub          a4, s3, s3
                  bgeu         ra, t2, 280f
262:              slt          s11, a6, gp
                  sltu         s6, s10, t0
                  bgeu         t5, t0, 283f
                  andi         s10, tp, 1664
266:              sra          s10, a5, s11
                  blt          t6, s5, 269f
                  sltiu        a3, s7, -1842
269:              sub          s7, s2, s1
                  sub          a0, s4, a3
                  auipc        s5, 266718
                  slt          s2, a0, a4
                  or           s5, t4, s10
                  addi         a0, s10, 967
                  add          t0, s0, t6
                  sltiu        s3, s5, 118
                  sub          ra, s8, s1
                  slt          s10, s1, t5
                  blt          a6, s2, 299f
280:              sra          tp, s3, t0
                  slt          s8, a6, a0
                  xori         t2, a6, -1748
283:              blt          s9, a4, 290f
                  or           a6, s6, s8
                  auipc        t6, 210792
                  xor          t1, tp, gp
                  slti         t5, t3, 211
                  sra          a6, t2, sp
                  beq          s3, t4, 299f
290:              sll          a2, s11, a2
                  add          s3, s9, a6
                  nop
                  bge          zero, s0, 303f
                  slt          s2, t5, s9
                  lui          t2, 302893
                  sub          s1, t4, s1
                  bgeu         s8, s8, 310f
                  add          a2, sp, a1
299:              xor          t4, t5, s10
                  add          s7, ra, a5
                  and          t5, t5, t0
                  and          a3, a0, sp
303:              blt          s8, sp, 313f
                  auipc        gp, 396443
                  add          t6, t4, zero
                  sub          s0, t5, a5
                  add          t6, a3, t5
                  or           s0, s3, t1
                  srai         a1, t5, 2
310:              bltu         s3, zero, 312f
                  sra          s10, sp, s5
312:              auipc        t5, 822675
313:              lui          a0, 830995
                  sub          t1, a3, s5
                  ori          s9, s10, -28
                  xor          s7, a6, t4
                  slli         t5, t0, 22
                  sub          gp, s2, s4
                  slti         s2, t3, -572
                  slti         s2, ra, 669
                  addi         s5, s6, -1683
                  sra          a4, s4, sp
                  sll          s5, a2, t0
                  bgeu         s9, t1, 340f
                  nop
                  bge          s2, gp, 333f
                  slt          tp, ra, sp
                  sra          s6, t5, a5
                  xori         s6, sp, -332
                  blt          a7, s4, 341f
                  srai         a6, a5, 13
                  sub          t0, a4, s5
333:              sub          t2, s10, t6
                  nop
                  andi         t5, zero, -623
                  blt          a6, s8, 355f
                  srli         s5, a2, 20
                  auipc        s0, 214436
                  bge          s9, t4, 358f
340:              sra          s2, a6, sp
341:              bne          a0, s4, 358f
                  nop
                  bgeu         a3, a0, 363f
                  auipc        t2, 128395
                  srai         s3, s0, 19
                  srl          t0, gp, s3
                  bne          a1, gp, 355f
                  bgeu         s0, t1, 357f
                  xori         t1, t3, -1590
                  slli         t0, gp, 5
                  sub          s5, a2, t3
                  andi         t2, s6, -1931
                  slt          a6, gp, s2
                  bltu         s0, a1, 371f
355:              bne          t0, s8, 361f
                  bne          s8, s9, 363f
357:              lui          s5, 17840
358:              slt          t0, a4, a0
                  slt          t0, t3, s9
                  and          s2, s4, a7
361:              nop
                  blt          a6, s0, 374f
363:              or           a6, s6, s0
                  nop
                  srl          zero, tp, a6
                  addi         a5, a6, -1016
                  sll          a3, s9, sp
                  add          t0, t5, a2
                  slli         a4, s9, 1
                  slti         a5, a5, 450
371:              srli         s10, a6, 29
                  sub          gp, s11, ra
                  slli         s11, s3, 17
374:              srl          sp, t3, sp
                  slli         s8, s2, 15
                  lui          s10, 836383
                  auipc        a4, 793126
                  lui          s9, 922477
                  sra          a3, s2, t4
                  srl          t6, a3, a3
                  or           a3, ra, ra
                  slt          s0, a5, s0
                  and          tp, t3, s1
                  bgeu         t6, tp, 404f
                  sra          s0, ra, s0
                  sub          ra, a3, a3
                  bne          tp, s1, 388f
388:              nop
                  bltu         s1, t5, 394f
                  slt          a0, a7, s1
                  and          t1, t1, tp
                  sltiu        a6, t6, 1819
                  andi         s11, a3, -580
394:              sra          t4, a7, zero
                  nop
                  sll          gp, t1, t5
                  and          gp, t6, t0
                  lui          t5, 352972
                  sltiu        a2, sp, -38
                  nop
                  xori         t2, gp, -1426
                  beq          s1, gp, 410f
                  bge          s0, a2, 413f
404:              srai         tp, zero, 5
                  ori          s9, t5, 1515
                  lui          s8, 1007264
                  xor          s1, t4, s1
                  nop
                  slt          s8, a1, tp
410:              srl          gp, a3, s10
                  sll          s10, s5, t6
                  bgeu         gp, a6, 413f
413:              sltiu        s11, t6, 595
                  bge          t4, s11, 429f
                  xori         ra, s3, 1464
                  auipc        s0, 923487
                  sub          t2, s8, a4
                  srli         s7, a5, 6
                  auipc        t1, 989045
                  sll          t5, s4, a5
                  andi         s2, t6, -226
                  blt          a2, s3, 435f
                  slt          s0, a5, a2
                  andi         a4, a4, 1829
                  add          t2, a7, t1
                  slti         t2, t4, -239
                  srai         gp, tp, 2
                  andi         tp, a3, 559
429:              slli         a0, t3, 31
                  xori         s2, s0, -357
                  beq          gp, tp, 441f
                  slti         t0, a7, -298
                  andi         s5, sp, 96
                  ori          a0, tp, -1913
435:              slli         t6, t6, 3
                  slli         s6, s11, 24
                  ori          a0, s11, 520
                  srli         s2, t5, 22
                  ori          sp, s4, 2046
                  xori         tp, a1, -1976
441:              sra          gp, a0, a1
                  sltiu        s7, s8, 1441
                  nop
                  nop
                  sltiu        a3, s10, 1211
                  xor          a5, s6, s0
                  slli         s0, s0, 23
                  ori          a1, ra, -1649
                  xor          a0, t2, t2
                  blt          s7, t5, 463f
                  nop
                  xor          a1, sp, s2
                  bge          a5, s1, 461f
                  xori         s10, t1, -878
                  and          ra, t5, s1
                  addi         t6, s0, -90
                  bltu         sp, t2, 460f
                  or           s5, t3, s2
                  blt          s11, t3, 467f
460:              bltu         sp, s1, 462f
461:              xor          s8, s9, s8
462:              srli         t6, s6, 1
463:              bne          s8, ra, 470f
                  ori          a5, s4, -980
                  lui          tp, 824400
                  lui          a1, 447682
467:              sub          a4, a6, a4
                  bne          s11, a5, 470f
                  bltu         a7, a4, 470f
470:              xori         t2, s11, 915
                  slt          a1, s2, gp
                  and          a5, a3, s10
                  sltiu        a2, s0, -1780
                  lw           s3, 4(s4)
                  addi         s4, s4, 40
                  nop
606:              addi x22, x19, 1
606:              jalr x22, x22, 0
sub_8:            sra          s11, s11, t6
                  bne          zero, zero, sub_8_stack_p
                  srli         gp, s2, 2
sub_8_stack_p:    addi         s4, s4, -8
                  sw           s3, 4(s4)
                  ori          s8, t3, 80
                  srli         s1, s1, 30
                  slti         a3, t4, 1571
                  xori         t0, s10, -660
                  blt          t4, s4, 5f
                  sltiu        s3, s1, 1550
5:                andi         t4, s4, 661
                  srai         a1, s4, 1
                  slti         a3, t3, 235
                  srli         s2, zero, 13
                  sub          s7, ra, s10
                  lui          s9, 84483
                  lw           s3, 4(s4)
                  sll          a0, s0, s8
                  slt          gp, s4, t4
                  sub          a3, s4, s10
                  addi         s4, s4, 8
                  auipc        s11, 504358
                  srai         s1, s4, 20
24:               addi x21, x19, 0
24:               jalr x21, x21, 0
sub_1:            addi         s4, s4, -28
                  srli         a3, s9, 21
                  sw           s3, 4(s4)
                  add          a6, sp, s4
                  srli         a4, s6, 9
                  ori          t5, s9, 1987
                  lui          s9, 152007
                  la           t1, sub_3
                  srli         tp, a7, 3
                  andi         zero, t0, -1787
                  addi         t1, t1, -439
                  sub          a1, a3, a3
                  sll          s2, a7, s7
sub_1_j3:         jalr         s3, t1, 440 #jump sub_1 -> sub_3
                  bgeu         s11, t0, 9f
                  add          a0, sp, a5
                  bge          s9, s2, 9f
                  ori          s11, s5, -85
                  and          s1, a1, s4
                  xor          s8, s8, s0
                  srai         s9, a4, 2
                  bgeu         ra, t0, 9f
                  slli         t1, s2, 21
9:                slt          s10, t5, a1
                  lui          zero, 50629
                  lw           s3, 4(s4)
                  add          s0, t5, ra
                  slt          s9, s10, s2
                  sltu         gp, t2, sp
                  or           t2, ra, t4
                  nop
                  addi         s4, s4, 28
                  sub          a5, s10, s4
33:               addi x11, x19, 1
33:               jalr x11, x11, 0
sub_4:            sll          s0, a2, s11
                  addi         s4, s4, -48
                  sub          a6, gp, t4
                  sw           s3, 4(s4)
                  slti         s0, s1, -954
                  sltiu        s1, s4, 559
                  sub          s9, s0, a2
                  ori          s5, t5, 1283
                  addi         sp, s5, 1206
                  la           sp, region_0+1309 #start riscv_load_store_rand_instr_stream_2
                  addi         a4, s7, -51
                  sb           s7, -40(sp)
                  srl          gp, tp, tp
                  auipc        ra, 745588
                  sb           s11, 44(sp)
                  srai         a4, s7, 2
                  lui          s5, 910830
                  srl          t2, t1, s10
                  sb           s5, 7(sp)
                  sltu         a0, s11, a6
                  ori          s10, a5, -442
                  lb           s6, -47(sp)
                  lbu          a2, -26(sp)
                  lbu          zero, -15(sp)
                  sb           s2, -59(sp)
                  srli         s9, s4, 25
                  xor          a0, t4, a5
                  lw           t6, 11(sp)
                  xori         t5, s5, -1504
                  lui          a5, 29454
                  lbu          s3, -5(sp)
                  lh           a2, -7(sp)
                  lh           s5, -39(sp)
                  sb           t3, -36(sp)
                  sh           zero, 59(sp)
                  lbu          s6, -48(sp)
                  sra          s9, s0, a5
                  xor          t2, a0, gp
                  andi         s1, t6, -426
                  lh           t0, -25(sp)
                  srai         s0, a0, 11
                  lui          t2, 617905
                  xor          t0, a3, s2
                  sltu         t4, s11, t3
                  lb           t1, 1(sp)
                  lw           t4, -57(sp)
                  lb           s0, 9(sp)
                  sb           s0, -35(sp)
                  lbu          a5, -44(sp)
                  lhu          s7, -27(sp)
                  lbu          a1, -54(sp)
                  nop
                  sb           t0, -53(sp)
                  sh           t5, -29(sp)
                  lui          a4, 429341
                  nop
                  sb           s3, -38(sp)
                  sltiu        tp, s3, 301
                  srli         a2, a6, 9
                  srl          s9, t6, t3
                  ori          s9, a7, 1955
                  slti         s2, a0, -441
                  sb           s5, 41(sp)
                  addi         s0, s1, -612
                  sltiu        a2, s5, 566
                  lhu          t2, 7(sp)
                  sb           t3, 21(sp)
                  lbu          t4, -42(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+17 #start riscv_load_store_rand_instr_stream_1
                  sb           s6, 1568(sp)
                  lb           t4, 6(sp)
                  sw           a3, 1827(sp)
                  ori          s10, gp, -1332
                  lh           s1, 1341(sp)
                  srai         s9, t6, 21
                  lbu          t6, 1098(sp)
                  andi         tp, s11, -1724
                  slli         t6, sp, 22
                  andi         a1, t3, -1665
                  sltu         t5, s9, gp
                  andi         s0, s8, 1538
                  sub          t0, s1, tp
                  or           s9, s5, zero
                  addi         a6, a6, -1622
                  lbu          gp, 875(sp)
                  sh           a1, 435(sp)
                  sh           t3, 767(sp)
                  slti         s6, t1, -1076
                  sub          a6, t6, a4
                  sb           sp, 362(sp)
                  srli         gp, s1, 6
                  nop
                  srai         t4, tp, 8
                  sll          s11, a4, s6
                  lbu          s6, 406(sp)
                  xori         s9, s5, 1604
                  srl          t4, gp, s9
                  sb           sp, 1608(sp)
                  lbu          t2, 344(sp)
                  sh           sp, 1597(sp)
                  lw           s2, 1063(sp)
                  sltu         a4, s11, t0
                  add          a2, a4, s1
                  xor          a4, t3, s5
                  and          t4, t2, zero
                  lui          t5, 57530
                  lui          a1, 264059
                  lhu          s0, 1489(sp)
                  lh           s9, 665(sp)
                  srl          a3, s7, t3
                  and          s10, t2, s10
                  add          t4, s4, s5
                  sh           s9, 1727(sp)
                  sb           s9, 1621(sp)
                  lb           t4, 644(sp)
                  ori          t4, a3, -367
                  lbu          a0, 1322(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t2, region_0+1070 #start riscv_load_store_rand_instr_stream_0
                  sb           t2, 15(t2)
                  xor          gp, sp, gp
                  sll          s5, s7, s0
                  lw           a1, -2(t2)
                  lui          tp, 589428
                  slti         s8, t0, -1044
                  addi         a3, s3, 1531
                  sltu         a2, t2, s7
                  sb           ra, 4(t2)
                  xor          a0, s0, s11
                  slti         a1, s5, 450
                  sltu         s3, a5, a0
                  xori         t1, s6, 1091
                  auipc        t6, 637900
                  lbu          s10, -11(t2)
                  and          tp, a6, s6
                  slti         t4, s4, -1949
                  auipc        s10, 103860
                  addi         t0, s9, -71
                  sh           s9, 12(t2)
                  sb           s3, 11(t2)
                  lbu          t0, 9(t2)
                  xori         s5, sp, 1644
                  lb           a3, 7(t2)
                  slti         s6, tp, -278
                  sltiu        t1, s6, -200
                  lhu          gp, -16(t2)
                  add          s6, gp, t6
                  lbu          s8, -3(t2)
                  or           a1, s5, t5
                  lh           t0, 0(t2)
                  sw           s1, 14(t2) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+849 #start riscv_load_store_rand_instr_stream_9
                  xori         a6, gp, -340
                  lh           tp, 1095(s3)
                  addi         s7, t2, 1718
                  sll          ra, t0, s0
                  lh           t5, 197(s3)
                  auipc        a4, 856052
                  sb           a3, 621(s3)
                  sltiu        zero, a5, -1543
                  srl          t5, a1, t6
                  sub          s8, a3, gp
                  slli         s9, a3, 24
                  sb           s1, -522(s3)
                  srli         zero, a2, 25
                  lb           s11, 1102(s3)
                  sub          s0, sp, s6
                  lb           a4, 192(s3)
                  srai         s8, s3, 25
                  lbu          a1, -776(s3)
                  andi         s6, s1, -864
                  slti         a3, s5, 324
                  sltu         a4, gp, s3
                  sra          s7, t3, gp
                  lui          a6, 403807
                  sh           s11, 561(s3)
                  or           t0, gp, s6
                  and          t5, t1, a2
                  lui          s11, 81497
                  auipc        s9, 45384
                  xor          tp, t3, a4
                  lb           s1, -442(s3)
                  srai         a6, t6, 5
                  lbu          s1, -712(s3)
                  and          s1, a0, s4
                  lbu          s11, 872(s3)
                  srli         s2, t1, 4
                  sb           t6, 288(s3) #end riscv_load_store_rand_instr_stream_9
                  la           t6, region_0+1400 #start riscv_load_store_rand_instr_stream_6
                  addi         a0, t4, 494
                  sw           tp, 512(t6)
                  lbu          t4, 553(t6)
                  sb           t1, -169(t6)
                  xor          s9, s11, a1
                  xor          s1, s3, a6
                  ori          s2, t3, 300
                  srli         s10, ra, 19
                  lbu          a4, -721(t6)
                  sh           ra, -480(t6)
                  sltu         a5, t0, t5
                  sb           s0, 264(t6)
                  nop
                  sltiu        a6, t1, 380
                  srl          s10, a2, t2
                  srl          zero, s0, s9
                  addi         t5, s0, 1098
                  lbu          s1, 255(t6)
                  srai         t2, sp, 3
                  sb           a3, -626(t6)
                  sb           s7, -394(t6)
                  lbu          s1, 361(t6)
                  sw           t5, -536(t6)
                  sb           sp, -892(t6)
                  slli         t0, tp, 19
                  sw           tp, -1012(t6)
                  sltu         s8, s7, s10
                  lb           a1, -1381(t6)
                  lbu          s2, 74(t6)
                  sltiu        a2, gp, 1222
                  slti         s5, a5, 1236
                  auipc        t2, 214852
                  sb           t1, 10(t6)
                  lbu          s8, 117(t6)
                  and          a6, t1, t2
                  lbu          t5, -1350(t6)
                  sb           s9, -587(t6)
                  sub          t0, zero, ra
                  lbu          t4, -665(t6)
                  sll          s3, t6, s1
                  nop
                  lb           zero, 101(t6)
                  lb           t2, -1040(t6) #end riscv_load_store_rand_instr_stream_6
                  la           s0, region_0+103 #start riscv_load_store_rand_instr_stream_3
                  sltu         t6, a7, t4
                  or           s1, a6, s7
                  and          t5, zero, gp
                  sb           a6, 6(s0)
                  lbu          ra, -3(s0)
                  lb           a2, 16(s0)
                  xor          s6, a6, gp
                  xori         t2, sp, -228
                  srai         t6, a5, 3
                  addi         s5, a5, 376
                  lbu          a6, -1(s0)
                  sh           s9, -5(s0)
                  srli         a4, t1, 17
                  lui          tp, 950002
                  sra          a3, a6, a6
                  lb           a3, -1(s0)
                  sltiu        s11, t6, -1895
                  sb           s9, 14(s0)
                  lb           gp, -16(s0)
                  lb           s5, 7(s0)
                  lb           s7, -11(s0) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_1+250 #start riscv_load_store_rand_instr_stream_7
                  and          t6, s3, s11
                  sb           a3, 113(a0)
                  addi         s11, ra, 836
                  lb           s0, -176(a0)
                  sb           s10, -160(a0)
                  slt          s3, t3, t0
                  auipc        t4, 457166
                  sb           s3, 13(a0)
                  and          tp, a1, s6
                  sh           sp, 244(a0)
                  lh           s5, -142(a0)
                  lb           ra, 47(a0)
                  slli         s5, s4, 9
                  sh           gp, 92(a0)
                  andi         a1, s11, 441
                  lbu          a3, -149(a0)
                  slti         s11, t5, 476
                  lb           a4, 110(a0)
                  lbu          ra, -129(a0)
                  lh           t6, 86(a0)
                  andi         sp, t5, 237
                  slti         s3, a7, -208
                  lbu          s3, 149(a0)
                  slli         ra, a2, 15
                  lhu          a3, 76(a0)
                  lb           t1, -155(a0)
                  lb           t5, -178(a0)
                  lbu          ra, 44(a0)
                  lh           s7, 66(a0)
                  slt          t1, a7, s4
                  auipc        s5, 981780
                  lb           ra, 201(a0)
                  lb           s8, 127(a0)
                  sh           s9, 14(a0) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+1262 #start riscv_load_store_rand_instr_stream_4
                  sltiu        ra, ra, -1118
                  lb           a4, -8(sp)
                  xor          s2, s7, s4
                  sw           s4, 10(sp)
                  lbu          s9, 23(sp)
                  sb           a5, -29(sp)
                  sw           a6, -14(sp)
                  sltu         s7, s3, t0
                  andi         a1, s7, 1378
                  sw           zero, 58(sp)
                  auipc        t6, 971502
                  lb           s9, 54(sp)
                  lb           s6, -27(sp)
                  lb           zero, 47(sp)
                  sb           s1, -53(sp)
                  slli         t1, a4, 0
                  lb           s11, -23(sp)
                  xori         t4, s6, -38
                  andi         s0, s10, 1147
                  sb           t0, 17(sp)
                  lbu          s9, 1(sp)
                  nop
                  lh           a6, -42(sp)
                  lb           t0, 28(sp)
                  nop
                  addi         t2, t2, -1740
                  slt          s5, t4, t6
                  sltiu        s10, s0, 26
                  sltiu        s7, s9, -1257
                  lhu          a5, -44(sp)
                  sll          a2, s7, t3
                  lw           t4, -38(sp)
                  lbu          ra, 46(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1771 #start riscv_load_store_rand_instr_stream_8
                  lb           a3, 64(sp)
                  lb           a6, 49(sp)
                  sb           sp, 58(sp)
                  sb           s1, -47(sp)
                  lb           s3, 24(sp)
                  sltiu        s11, t5, 710
                  lbu          tp, 27(sp)
                  andi         t1, t5, 1425
                  lbu          t0, 16(sp)
                  srli         t1, s6, 31
                  andi         ra, sp, -1067
                  lh           tp, -25(sp)
                  sh           s9, 43(sp)
                  sll          gp, s8, t0
                  slt          t0, s0, s4
                  sw           a2, 1(sp)
                  srli         s6, t5, 12
                  srl          a0, s11, zero
                  sra          t2, s0, s2
                  lui          s10, 176740
                  ori          a0, a1, 1818
                  slt          t6, s1, s7
                  lbu          s5, -40(sp)
                  sltiu        s11, t5, 1758
                  lb           a0, -10(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s1, region_0+520 #start riscv_load_store_rand_instr_stream_11
                  sra          t2, a3, s6
                  lui          tp, 397250
                  slli         t0, s10, 23
                  ori          sp, gp, -512
                  addi         s9, a0, -1442
                  auipc        a1, 722550
                  add          s7, ra, s0
                  lw           s10, 120(s1)
                  lb           a5, -69(s1)
                  srl          s0, t6, s1
                  lui          a0, 699595
                  lh           s5, 122(s1)
                  sll          t2, zero, a0
                  xor          t4, s11, a7
                  lbu          a1, -18(s1)
                  or           a1, s8, t4
                  lhu          a0, -162(s1)
                  lb           s8, -253(s1)
                  sb           t3, -227(s1)
                  slti         a2, a2, 565
                  lhu          s11, -18(s1)
                  xor          ra, a4, s10
                  srai         s10, s6, 30
                  xor          t5, s8, t4
                  sltiu        t6, s2, -1044
                  srai         a1, a4, 7
                  lb           gp, -27(s1)
                  lw           t6, 224(s1)
                  lui          t1, 289765
                  lh           s7, -136(s1)
                  lb           s11, 71(s1)
                  srli         s5, s5, 16
                  lhu          s5, -42(s1)
                  lb           gp, 145(s1)
                  sltiu        a4, s7, 527
                  lb           gp, -133(s1)
                  and          a6, s9, a2
                  sltiu        a6, t4, -795
                  auipc        t2, 688739
                  andi         ra, t2, 93
                  lb           s2, -172(s1)
                  slt          s8, a6, t1
                  nop
                  lh           s5, 90(s1)
                  lbu          s11, 211(s1)
                  sb           gp, -60(s1)
                  sub          t2, t1, t5
                  lbu          gp, 181(s1)
                  auipc        a4, 22428
                  and          a3, a2, s10
                  lbu          a3, -205(s1) #end riscv_load_store_rand_instr_stream_11
                  or           t4, zero, t6
                  bgeu         ra, a0, 5f
                  ori          s5, s2, -1604
                  lui          t2, 177513
                  sll          t2, a0, s2
5:                addi         t4, s10, 434
                  sltiu        s2, a3, -1066
                  bne          t5, s0, 26f
                  xor          t0, a1, ra
                  srai         s11, a6, 4
                  srli         t1, s9, 21
                  ori          t0, s9, -1715
                  bgeu         t1, s9, 13f
13:               slt          s3, zero, t6
                  beq          t0, a4, 16f
                  nop
16:               srl          ra, t4, t6
                  slti         s9, t3, -1929
                  sltiu        sp, ra, 382
                  srai         a5, s2, 18
                  bne          tp, tp, 34f
                  slt          a0, sp, a7
                  blt          a0, a0, 38f
                  beq          s4, s11, 30f
                  bltu         t5, a4, 36f
                  sra          t4, s8, t6
26:               bgeu         t2, s7, 42f
                  bltu         t5, s11, 32f
                  addi         s3, t3, -1259
                  or           ra, s9, a7
30:               sra          s7, a0, s4
                  bgeu         s4, gp, 41f
32:               lui          gp, 223062
                  slti         a1, s9, -510
34:               andi         ra, a4, -1251
                  add          a0, t0, t6
36:               bgeu         t4, t1, 45f
                  sra          s6, s8, s7
38:               xori         t5, ra, -308
                  srl          t6, t0, s2
                  and          t2, t6, s7
41:               sll          t5, gp, t3
42:               andi         s9, s11, 1336
                  sub          s2, s3, s8
                  xor          s7, s6, zero
45:               blt          t5, gp, 53f
                  ori          s10, a3, -1887
                  blt          t5, sp, 50f
                  sltu         t2, s7, t3
                  srai         t5, s11, 29
50:               sll          gp, ra, t5
                  bltu         a7, t0, 55f
                  beq          t6, gp, 55f
53:               bge          a2, s7, 68f
                  sra          gp, a0, t2
55:               addi         t0, s1, -329
                  sll          s8, s9, s3
                  beq          t4, t3, 58f
58:               srli         sp, s2, 10
                  addi         a0, a0, 550
                  srli         s1, s5, 7
                  srli         s11, gp, 18
                  addi         s10, a3, -719
                  or           a1, t4, a0
                  bgeu         s11, t2, 72f
                  add          a1, s9, t4
                  addi         s11, t0, -1163
                  sra          s6, t3, sp
68:               sltiu        sp, a7, -32
                  nop
                  slti         s11, s1, -76
                  sltu         s2, s1, a4
72:               slli         s6, a6, 13
                  bge          a3, s10, 93f
                  nop
                  lui          t6, 58446
                  beq          a1, a0, 91f
                  ori          s11, t5, 1218
                  addi         a3, s3, 1168
                  andi         sp, a4, 1196
                  and          t6, s6, s3
                  nop
                  addi         t4, a6, -1664
                  xor          s3, t1, sp
                  sltu         s5, a6, s1
                  bge          s6, s11, 102f
                  bge          a1, a6, 89f
                  sltiu        t4, s9, -379
                  bgeu         a4, s6, 97f
89:               ori          a4, gp, 209
                  or           s11, a7, a5
91:               addi         gp, t3, -1510
                  or           s10, ra, gp
93:               srli         a5, t5, 8
                  lui          s8, 719281
                  or           a3, s11, s11
                  xori         gp, a3, -520
97:               beq          s9, tp, 111f
                  xor          s10, t6, s0
                  auipc        zero, 667376
                  auipc        s3, 747945
                  xori         a1, s3, -153
102:              nop
                  xori         tp, s11, -1866
                  sra          s11, t0, s4
                  slti         t2, a0, 1789
                  slli         t0, s2, 0
                  beq          s1, sp, 109f
                  xor          s2, s10, s9
109:              bltu         ra, s4, 121f
                  sltiu        ra, sp, -1744
111:              sub          t4, a3, zero
                  addi         s10, a4, 694
                  beq          s5, zero, 129f
                  addi         a2, s10, -1558
                  beq          s6, a6, 131f
                  blt          ra, s4, 127f
                  slli         t4, s2, 24
                  sltiu        gp, a5, -384
                  bge          a6, a6, 133f
                  auipc        s6, 718707
121:              sltu         s3, t6, a7
                  bltu         a0, a5, 137f
                  sra          s9, t3, a3
                  andi         s5, a7, -1032
                  nop
                  sltu         t1, a3, s10
127:              srl          s7, s11, t4
                  ori          a5, s2, -1473
129:              bgeu         ra, s7, 137f
                  srli         a1, a2, 25
131:              sll          s11, t2, t5
                  xori         s5, a6, 1775
133:              xori         s5, s11, -1745
                  sra          s0, zero, s11
                  or           a5, s10, t4
                  bne          a4, t5, 156f
137:              auipc        s5, 126925
                  sll          s3, s6, s4
                  lui          s2, 1034323
                  addi         s1, s7, 1064
                  lui          tp, 642664
                  xori         s10, a6, 105
                  nop
                  and          ra, t3, s10
                  srai         s2, a6, 0
                  sra          s9, s3, s7
                  beq          s4, t3, 159f
                  slt          s10, a7, t6
                  sltu         a3, t0, a0
                  lui          s6, 532621
                  auipc        s11, 305549
                  ori          s8, s2, -293
                  bge          a7, s4, 157f
                  sll          sp, a0, t3
                  nop
156:              beq          a0, a0, 172f
157:              auipc        a4, 1041810
                  srli         t4, s8, 0
159:              slli         s0, zero, 1
                  blt          s2, a4, 164f
                  sltiu        s11, s8, -479
                  or           ra, t5, s3
                  srai         gp, s4, 25
164:              sub          t0, s2, s9
                  sltu         s1, a1, s8
                  xori         gp, s7, 537
                  srai         s0, t1, 12
                  srli         s8, s6, 15
                  sltu         a3, a4, s8
                  bne          s6, a2, 181f
                  bltu         zero, a5, 185f
172:              xori         t0, a2, -1589
                  blt          a1, t1, 181f
                  sltu         ra, s6, s10
                  blt          sp, s6, 178f
                  bgeu         s11, sp, 192f
                  bne          s6, s5, 182f
178:              lui          s11, 69836
                  add          s7, a7, t4
                  auipc        a4, 728950
181:              blt          s10, s5, 182f
182:              slli         tp, zero, 14
                  sltu         zero, s9, s9
                  bne          s1, a5, 200f
185:              add          s6, gp, ra
                  bge          sp, t4, 189f
                  lui          s9, 996586
                  addi         ra, s7, 1542
189:              blt          a6, a5, 199f
                  bne          a0, s2, 199f
                  bltu         s8, t1, 193f
192:              blt          a3, s4, 201f
193:              srai         a3, t2, 24
                  sltiu        s7, s6, -1403
                  and          tp, s0, s7
                  bge          tp, a3, 215f
                  and          s3, tp, t0
                  sll          s9, a7, a7
199:              nop
200:              sub          ra, s0, s7
201:              bne          a0, t1, 216f
                  sltiu        gp, ra, -654
                  bne          t4, t4, 215f
                  srl          ra, s3, t6
                  sltu         s5, s3, s5
                  nop
                  srl          s11, ra, sp
                  sltiu        a5, t2, -584
                  srl          s11, s3, a5
                  or           s5, zero, s5
                  beq          t5, gp, 218f
                  sll          a5, a3, tp
                  or           s6, s0, a1
                  and          t5, s6, t0
215:              and          s9, a4, s5
216:              slli         s5, a7, 3
                  bltu         s9, s10, 219f
218:              xor          gp, a5, a4
219:              add          tp, t1, s1
                  sra          a0, t2, gp
                  xor          s5, t2, a7
                  slti         t0, t1, -663
                  bltu         t3, t5, 240f
                  sra          s8, tp, a3
                  slt          a6, t6, s3
                  bne          zero, s8, 227f
227:              sll          ra, a4, s9
                  auipc        s10, 721883
                  sltu         t4, s5, s10
                  slti         a5, sp, 1784
                  addi         s11, t4, -1823
                  srli         gp, s9, 1
                  srl          t0, s5, a5
                  slli         t0, a7, 31
                  and          t5, a5, a4
                  bne          s7, a3, 239f
                  bltu         a4, a1, 253f
                  slt          a4, s2, s2
239:              bne          t1, a4, 243f
240:              bltu         s6, a7, 254f
                  bltu         s11, s4, 242f
242:              lui          gp, 701736
243:              bne          s11, s5, 259f
                  beq          t1, gp, 260f
                  bltu         gp, s9, 254f
                  sltu         a2, a7, sp
                  lui          t1, 227127
                  sll          tp, sp, a2
                  slli         s6, s11, 26
                  sub          s8, t3, t6
                  or           ra, sp, a6
                  bgeu         s6, s10, 271f
253:              xor          a2, s9, s3
254:              bge          s0, s1, 269f
                  auipc        sp, 836233
                  lui          t2, 420976
                  sltu         a6, a7, ra
                  bltu         a5, t4, 278f
259:              sub          s11, a2, a6
260:              sltiu        s2, t0, -756
                  srai         a6, s1, 6
                  andi         ra, s2, -242
                  addi         s9, s11, -179
                  sltiu        s6, tp, -861
                  bgeu         s4, ra, 266f
266:              srli         t2, s11, 10
                  slli         t0, a1, 15
                  or           s0, s3, t4
269:              slt          gp, s6, a6
                  auipc        s3, 817303
271:              sll          s6, s3, t0
                  addi         s6, a5, -1310
                  sra          t5, sp, a5
                  srl          a3, s3, a6
                  or           s9, s5, t2
                  sltu         s1, s6, s10
                  srai         a6, a2, 29
                  nop
                  beq          s3, s7, sub_4_j7 #branch to jump instr
                  slti         gp, ra, -1137
                  srai         t0, zero, 27
                  and          s6, t1, s7
                  slli         s9, t6, 4
                  srai         s2, t5, 25
sub_4_j7:         jal          s3, sub_5 #jump sub_4 -> sub_5
                  beq          t2, sp, 284f
                  srli         zero, a5, 1
                  beq          s8, zero, 292f
278:              xori         tp, a2, -1922
                  or           s1, t3, s3
                  lui          s3, 218580
                  sub          t5, s0, s6
                  sub          t1, a0, s1
                  sll          s9, t2, a2
284:              slli         s0, sp, 16
                  nop
                  bne          a4, a5, 289f
                  sltu         sp, a1, s7
                  sll          s11, ra, s10
289:              slli         s1, t4, 1
                  xori         s7, a7, -1550
                  xor          s2, t4, tp
292:              bne          s8, s10, 296f
                  ori          s3, a0, -593
                  bgeu         t2, t4, 296f
                  beq          s5, a2, 298f
296:              slli         gp, s5, 14
                  srai         t6, a3, 27
298:              andi         a1, t1, -1228
                  add          s7, zero, s1
                  srl          t1, t3, sp
                  srai         tp, s8, 14
                  add          a1, s6, s6
                  srl          s0, s1, t1
                  lui          t5, 967950
                  slti         s7, sp, 1501
                  bgeu         a0, ra, 318f
                  auipc        a2, 990875
                  sll          a6, s0, s8
                  ori          s8, t5, 996
                  slli         t5, a7, 26
                  bge          sp, ra, 319f
                  sltu         t6, t4, zero
                  srai         a3, t6, 23
                  beq          s8, s3, 330f
                  or           t6, s2, sp
                  sub          s3, t1, tp
                  andi         s1, a1, 385
318:              sll          zero, s0, s4
319:              slli         a0, s7, 7
                  slli         t0, a0, 11
                  addi         a1, a0, -166
                  sll          t5, t0, ra
                  beq          ra, a0, 335f
                  xori         t4, t0, -965
                  bltu         ra, s8, 339f
                  slt          t1, s8, s7
                  bltu         t4, sp, 337f
                  bgeu         s3, zero, 330f
                  andi         s5, sp, 237
330:              slli         s5, t3, 21
                  ori          gp, t3, -877
                  srai         a5, a0, 24
                  nop
                  sll          s6, t1, t1
335:              srli         zero, s1, 1
                  srli         zero, s6, 22
337:              blt          s1, t4, 353f
                  nop
339:              slti         s5, s0, -446
                  xori         s6, a3, -1900
                  xori         a6, sp, 502
                  srai         a6, t0, 23
                  bge          a0, t1, 346f
                  beq          tp, t6, 361f
                  ori          t4, s11, 180
346:              addi         zero, sp, -1325
                  or           a5, s7, a6
                  sll          s6, a1, s0
                  xori         s8, s2, 7
                  andi         s6, a7, -1259
                  blt          a1, tp, 358f
                  auipc        t6, 103039
353:              add          tp, t1, gp
                  addi         s10, gp, -1127
                  srl          t5, a6, a0
                  srli         t6, s4, 20
                  ori          zero, t0, 1119
358:              sub          s7, s11, t2
                  sll          t6, s9, a0
                  sub          t0, t4, s7
361:              srai         a2, t6, 9
                  lui          s1, 736077
                  slti         gp, t5, 1990
                  ori          a3, t2, 1713
                  bgeu         t5, s7, 373f
                  xor          s0, a2, s11
                  srai         t5, t1, 24
                  bne          a2, a3, 373f
                  sra          s9, t6, s10
                  xori         sp, s11, -1070
                  lui          t5, 331298
                  sltu         t4, sp, s2
373:              bgeu         s0, a2, 384f
                  addi         tp, a4, 2025
                  bne          s10, a0, 391f
                  add          s5, a3, ra
                  lui          t4, 928129
                  sltu         s9, t3, a6
                  ori          s0, t1, 1824
                  srli         s2, ra, 30
                  sra          s6, t0, a2
                  nop
                  add          a3, s5, a1
384:              ori          s0, t6, 818
                  slt          zero, t1, s0
                  sra          a6, a2, t2
                  sltu         t2, t5, t6
                  slti         s7, s4, 1920
                  srai         s10, s7, 2
                  srai         s5, s0, 28
391:              sub          s7, tp, s6
                  srai         t6, s10, 18
                  blt          s7, sp, 405f
                  nop
                  auipc        a6, 305518
                  add          a0, a7, t0
                  blt          t0, a6, 413f
                  nop
                  auipc        s0, 483520
                  or           a0, a2, t4
                  or           s0, s0, t4
                  bgeu         s8, t4, 412f
                  xori         s10, s8, -1494
                  andi         s10, s1, -1085
405:              bltu         s1, s0, 425f
                  bne          gp, a2, 415f
                  bgeu         s5, t3, 421f
                  slti         sp, s8, 479
                  xori         t0, s8, 2008
                  slli         s0, t0, 3
                  sub          a2, s5, ra
412:              beq          s2, t1, 420f
413:              srli         zero, s3, 28
                  bne          a3, t1, 417f
415:              add          s7, a6, ra
                  sub          a4, sp, s11
417:              addi         s5, a7, 677
                  andi         zero, a3, 1589
                  bne          ra, s4, 433f
420:              bge          s6, zero, 437f
421:              andi         t6, a6, 73
                  sltu         s7, t0, s7
                  addi         sp, a1, 1409
                  addi         t4, t3, -1826
425:              auipc        s7, 823733
                  add          a0, a3, a5
                  bgeu         s5, s5, 434f
                  slli         t6, t0, 27
                  srli         a5, s11, 0
                  ori          t0, t2, -1381
                  srl          a2, a6, t3
                  ori          a6, a3, -1029
433:              andi         ra, s10, -1025
434:              addi         t0, s3, 937
                  slti         t4, a7, -1051
                  sra          s2, t1, s6
437:              sra          s3, gp, t6
                  nop
                  srai         s9, t4, 1
                  beq          tp, a4, 445f
                  slli         ra, s2, 19
                  sltiu        zero, s7, 1338
                  auipc        s1, 98373
                  bltu         s3, s11, 459f
445:              srl          s7, zero, t5
                  auipc        sp, 928240
                  bltu         tp, s8, 466f
                  or           s3, a6, t2
                  slt          t5, s10, s3
                  add          a5, a1, s7
                  sll          s6, a7, zero
                  xori         s0, a2, 1903
                  sra          a5, t6, a0
                  auipc        a0, 629712
                  andi         a2, a5, 1749
                  or           sp, a6, s7
                  auipc        s1, 1013887
                  beq          a1, s6, 466f
459:              sub          s5, s8, t3
                  sll          s3, s9, a7
                  xori         s5, s4, -515
                  bgeu         t3, s5, 474f
                  sra          a6, a4, t5
                  andi         s8, s4, 1203
                  xori         a1, ra, -1994
466:              bgeu         a2, s4, 482f
                  bne          t3, tp, 471f
                  bne          a7, t0, 483f
                  add          ra, s9, a4
                  and          s11, s4, a3
471:              andi         a4, s6, -244
                  blt          gp, s4, 476f
                  sltu         s10, t5, tp
474:              andi         tp, a1, 1176
                  srl          sp, a1, a4
476:              sra          a2, s0, zero
                  slt          t4, ra, zero
                  auipc        a2, 461006
                  ori          a1, s10, 1619
                  addi         t1, a1, 1395
                  srl          a5, a0, s8
482:              slli         a1, a0, 12
483:              bltu         s4, s10, 486f
                  auipc        t5, 904461
                  bltu         s6, s3, 487f
486:              slti         a2, s8, 1799
487:              slt          s1, a0, s4
                  beq          a7, a1, 499f
                  blt          a4, tp, 490f
490:              xor          a2, s3, a7
                  nop
                  bgeu         a3, ra, 493f
493:              sltu         sp, t6, t6
                  add          t2, sp, t1
                  bgeu         s9, a7, 497f
                  blt          t1, sp, 505f
497:              srli         t0, s4, 4
                  xor          a2, a1, a5
499:              bltu         sp, t6, 502f
                  xori         s5, s2, 1031
                  xor          t6, a0, a1
502:              bne          a1, s2, 518f
                  srli         t0, a3, 13
                  slti         s5, s0, 1935
505:              and          s1, a1, s10
                  xor          a0, a3, a4
                  or           t2, a4, t5
                  addi         zero, a2, 1377
                  slli         a4, t2, 3
                  ori          ra, a7, 975
                  bgeu         a0, tp, 512f
512:              nop
                  sub          ra, ra, a6
                  bne          a7, t1, 523f
                  sub          gp, t4, t4
                  bgeu         sp, t5, 531f
                  slt          s11, t1, t2
518:              bgeu         a3, a6, 526f
                  sll          sp, a6, sp
                  sltiu        s11, s0, 225
                  andi         s8, s8, 1816
                  blt          s5, s3, 524f
523:              sub          tp, t5, a7
524:              sll          s5, s0, s3
                  xor          tp, s9, a1
526:              srl          gp, s0, s5
                  xor          t4, s3, a4
                  nop
                  add          s3, s9, sp
                  ori          gp, t4, -1636
531:              bne          t1, t4, 535f
                  srai         gp, s8, 26
                  sub          s8, a0, t0
                  addi         s11, tp, 887
535:              bgeu         a2, s1, 554f
                  lui          a4, 717210
                  ori          a5, s3, -404
                  add          s11, a3, s1
                  slti         zero, t2, 1866
                  sll          tp, t1, a2
                  addi         zero, t5, 1455
                  or           t4, a1, t5
                  xori         s8, s10, 1972
                  sub          s1, s6, s5
                  bge          s9, s0, 552f
                  sll          s11, s11, s0
                  xori         a1, a4, -1554
                  nop
                  slt          s10, t3, a6
                  slli         sp, s7, 23
                  lui          t4, 767891
552:              blt          s5, s3, 566f
                  nop
554:              beq          s7, t4, 557f
                  srl          s1, s8, s10
                  andi         t6, s6, -384
557:              srli         t5, s1, 20
                  sll          s7, s5, ra
                  xori         s7, zero, -810
                  sub          tp, s5, ra
                  bne          s6, tp, 573f
                  sltu         a4, t6, s9
                  sub          a6, a4, a7
                  sltiu        s0, s9, 885
                  sub          a0, a7, t1
566:              bge          t2, ra, 581f
                  andi         t1, s11, 878
                  srl          t6, t4, a0
                  bltu         t5, a7, 572f
                  sra          s9, s8, s1
                  sra          s7, t5, t0
572:              slli         a3, tp, 3
573:              bge          s4, s8, 589f
                  sltiu        t1, s6, 1108
                  srai         s8, s10, 4
                  sra          t2, t5, t3
                  slti         tp, s5, -528
                  nop
                  sltiu        s6, s10, 1833
                  and          s2, tp, s10
581:              srl          t4, a2, s5
                  bne          s0, t5, 590f
                  bltu         a6, sp, 600f
                  slli         t2, gp, 15
                  bge          t3, s11, 597f
                  sltu         zero, t2, s9
                  bgeu         t4, a1, 603f
                  xor          a4, a3, s6
589:              srl          a4, s2, a5
590:              sltu         s7, s8, s5
                  xori         s6, sp, 468
                  srai         a0, t1, 27
                  bge          t5, a4, 596f
                  addi         s3, s11, -622
                  xori         s1, t4, 525
596:              xor          gp, s1, s0
597:              bge          s1, s11, 606f
                  sltiu        gp, a3, 1158
                  slti         zero, t1, 1082
600:              bge          a1, s6, 610f
                  bge          s8, s1, 617f
                  slti         s9, t4, -1030
603:              beq          s1, zero, 619f
                  lui          t2, 889639
                  addi         s6, sp, -753
606:              bgeu         s6, s10, 626f
                  slli         t4, t4, 12
                  bgeu         s7, a3, 613f
                  beq          a4, s5, 611f
610:              sltiu        a3, sp, -807
611:              beq          a0, s0, 615f
                  blt          s4, a4, 613f
613:              bne          t2, a2, 627f
                  ori          t6, ra, -1153
615:              bgeu         s6, s10, 626f
                  beq          s2, s2, 618f
617:              bne          tp, t3, 633f
618:              blt          t1, tp, 628f
619:              sll          s6, t3, t6
                  srli         a2, a0, 2
                  srai         s5, t1, 18
                  slti         a0, t4, -1335
                  srl          a4, t5, a1
                  slli         a3, gp, 23
                  beq          t6, a2, 644f
626:              srli         ra, gp, 31
627:              nop
628:              sltiu        a6, s4, -706
                  sltu         t0, gp, t4
                  sll          a3, zero, sp
                  ori          a2, a5, 986
                  bltu         t5, t4, 647f
633:              blt          s7, s2, 649f
                  sll          t4, s7, s8
                  bltu         s8, s3, 647f
                  xori         t2, a6, -1685
                  bge          a1, a2, 644f
                  srl          a5, s3, a2
                  andi         a1, t3, 1808
                  sltiu        a3, s8, -1778
                  bltu         a4, t3, 649f
                  ori          t0, a0, -1117
                  and          s2, sp, zero
644:              and          a3, a4, t5
                  srli         s3, s6, 26
                  beq          tp, s2, 650f
647:              slli         a4, t4, 22
                  beq          s0, a1, 665f
649:              or           a3, s2, t4
650:              add          s8, t5, s3
                  addi         a1, s10, -81
                  slti         a6, t5, -161
                  blt          t6, a4, 667f
                  srli         s11, sp, 10
                  addi         a2, a3, 564
                  or           zero, zero, s11
                  sltiu        s9, a1, 1365
                  bne          s7, s9, 666f
                  xor          a2, s2, a3
                  xor          a3, gp, sp
                  srli         t0, s1, 9
                  slti         t6, s1, -970
                  nop
                  srai         a6, s0, 17
665:              srl          ra, s6, a3
666:              xor          t1, a3, s6
667:              or           s9, t2, s11
                  ori          a2, s5, 1361
                  or           t5, t3, t2
                  bltu         s9, s5, 684f
                  bne          s3, a0, 673f
                  blt          t4, s11, 684f
673:              xori         a0, gp, -1129
                  bne          s6, s6, 679f
                  srl          s0, t6, ra
                  srl          a1, s7, s6
                  lui          a1, 624620
                  lui          t1, 936419
679:              lui          s6, 815283
                  sra          s1, ra, t5
                  srl          sp, t1, s9
                  sltiu        s2, s8, -1334
                  srli         s6, a7, 1
684:              sub          s3, s10, a5
                  slli         t5, tp, 18
                  slti         a5, t6, 1975
                  blt          a1, t5, 707f
                  nop
                  bltu         ra, a0, 692f
                  xori         s6, s4, 1634
                  andi         ra, s7, 735
692:              bne          gp, s2, 693f
693:              slti         s1, sp, -1070
                  slt          s3, a2, s11
                  slt          s8, zero, t3
                  bge          s9, t0, 700f
                  srli         sp, t3, 24
                  sra          a3, t0, a3
                  slt          s11, a5, t1
700:              and          a3, gp, t5
                  bltu         s11, s3, 717f
                  slli         gp, t3, 12
                  auipc        t2, 897910
                  srli         t1, t5, 12
                  beq          s6, s10, 714f
                  srl          a5, a4, zero
707:              slti         zero, t5, 550
                  sll          a4, s6, a7
                  slt          gp, zero, s9
                  add          t2, s7, s6
                  xori         s5, a4, -793
                  sll          t5, s2, a5
                  bne          s3, a5, 724f
714:              slli         gp, s10, 24
                  beq          zero, t5, 718f
                  sltiu        s2, ra, 313
717:              bltu         s1, s9, 733f
718:              andi         a0, a5, 1854
                  ori          ra, s1, -369
                  sltiu        s9, s3, 1351
                  and          ra, s8, t1
                  auipc        tp, 552651
                  bge          t1, s9, 738f
724:              xori         ra, s11, -838
                  srli         s8, s6, 29
                  nop
                  nop
                  ori          t2, t1, -1306
                  sra          s1, tp, a5
                  bge          s7, t1, 739f
                  addi         s10, a0, -1481
                  la           t6, region_0+241 #start riscv_load_store_rand_instr_stream_10
                  sb           a7, 86(t6)
                  sw           s4, -97(t6)
                  nop
                  slti         sp, zero, -1645
                  sb           t1, -72(t6)
                  lb           s11, -226(t6)
                  lui          s5, 980213
                  sll          zero, a3, a5
                  slti         s1, s10, -1698
                  slt          s9, tp, tp
                  lbu          tp, 237(t6)
                  lbu          a0, 248(t6)
                  sltiu        a2, tp, -1286
                  lbu          a3, 208(t6)
                  srl          s7, t2, s0
                  srli         s8, t4, 30
                  andi         a5, s1, -1940
                  and          t1, s7, s9
                  nop
                  xor          t1, t5, s1
                  sh           t2, 81(t6)
                  srai         s5, s11, 20
                  nop
                  sll          a2, a0, a5
                  sb           t0, -72(t6)
                  andi         s0, s6, 35
                  srli         s10, s4, 31
                  sub          sp, a0, a2
                  xor          a1, a4, tp
                  lb           ra, -52(t6) #end riscv_load_store_rand_instr_stream_10
                  beq          s4, a4, 733f
733:              xor          s1, t6, a3
                  bgeu         tp, s6, 737f
                  bne          s6, a0, 738f
                  bge          s8, tp, 752f
737:              bge          s7, t2, 742f
738:              slti         t6, sp, 1222
739:              lui          a4, 58007
                  sub          s6, a3, s4
                  sltu         s10, t5, ra
742:              sltiu        gp, t3, -684
                  lui          gp, 436115
                  sll          t1, t4, s9
                  xor          s11, s7, a3
                  bne          a5, t5, 756f
                  slli         s5, s9, 14
                  xori         s9, t5, 466
                  auipc        s9, 301865
                  srli         sp, t4, 26
                  xor          a2, s4, tp
752:              bltu         a4, s3, 768f
                  sltu         t5, zero, s5
                  or           t1, s7, zero
                  auipc        t5, 253329
756:              srai         a2, s2, 31
                  sll          a0, s0, a7
                  srl          t0, s3, s4
                  beq          ra, zero, 774f
                  srli         s8, t0, 4
                  ori          a1, t4, 898
                  srai         a5, ra, 5
                  bgeu         t1, s7, 765f
                  sra          gp, s6, s1
765:              add          s9, s5, s10
                  nop
                  beq          ra, a6, 787f
768:              lui          s7, 703708
                  auipc        gp, 512715
                  nop
                  sltu         t0, t1, t3
                  bge          s1, s8, 781f
                  bne          s10, s4, 790f
774:              sltu         s1, t5, a3
                  ori          t4, a0, 1639
                  slt          a0, s2, a1
                  sltu         s10, s10, t2
                  ori          s5, s11, 967
                  sltiu        a3, gp, 62
                  blt          a6, s0, 781f
781:              add          t6, s3, s2
                  sub          ra, gp, t5
                  beq          s10, t3, 797f
                  bgeu         t4, s2, 785f
785:              lui          a1, 857604
                  bgeu         s0, gp, 793f
787:              nop
                  and          s1, tp, t1
                  lui          t4, 790807
790:              beq          s2, t2, 806f
                  srl          gp, a5, a1
                  beq          s3, t0, 808f
793:              andi         t2, t3, -991
                  xori         s7, a2, -993
                  xori         s1, s11, 1405
                  blt          zero, s2, 810f
797:              sll          s1, a1, a6
                  slt          zero, s0, a2
                  bne          s7, t3, 803f
                  slti         ra, s6, 1717
                  bne          a0, s6, 805f
                  beq          t0, a6, 810f
803:              sltiu        a3, a3, 417
                  add          s3, a4, s0
805:              bgeu         t6, s8, 808f
806:              bge          a5, t1, 818f
                  xor          ra, ra, s11
808:              slt          s2, s9, t2
                  auipc        ra, 812230
810:              slt          s8, s0, t4
                  slli         a3, gp, 29
                  and          s9, s9, s9
                  bgeu         s3, s3, 822f
                  xor          t6, t6, t0
                  andi         s0, s11, 76
                  nop
                  bge          a6, a4, 828f
818:              beq          a5, s8, 821f
                  bge          s5, s7, 831f
                  sltiu        s5, s4, -1424
821:              bge          a7, t3, 829f
822:              bne          s1, a1, 824f
                  xori         a4, ra, 184
824:              sltiu        tp, s9, -1278
                  or           a4, s9, s0
                  sub          s1, t6, s7
                  bgeu         s4, s9, 846f
828:              srl          a4, t5, s10
829:              bgeu         s11, s1, 844f
                  xori         ra, s2, -816
831:              sll          a6, zero, s8
                  sltiu        t2, a0, -1350
                  bltu         t0, zero, 835f
                  bne          a4, s1, 849f
835:              bne          s6, ra, 846f
                  slli         zero, ra, 3
                  beq          a2, t1, 847f
                  srli         t1, s0, 18
                  sll          gp, zero, s7
                  sra          t2, a3, t4
                  blt          a7, t4, 842f
842:              bgeu         s6, a3, 854f
                  xor          t5, s0, s5
844:              xori         tp, s11, -4
                  sltiu        t1, t4, 163
846:              xor          s7, s4, t3
847:              andi         s1, s3, 222
                  bne          t5, a1, 864f
849:              bge          s6, t4, 854f
                  srai         s7, s4, 24
                  nop
                  ori          t2, gp, -1335
                  sra          s11, a4, s9
854:              lui          a3, 196178
                  blt          ra, gp, 857f
                  bne          t5, t3, 857f
857:              xori         s1, t5, 779
                  slt          a0, s1, s7
                  sltiu        s9, a4, 1420
                  lui          a4, 313199
                  sll          t6, s0, s0
                  beq          s2, s6, 870f
                  lui          s3, 574837
864:              slti         a3, s10, 159
                  bne          a2, s5, 868f
                  beq          t5, s6, 880f
                  sub          a4, gp, a4
868:              addi         s1, t0, -597
                  nop
870:              sub          t5, t0, t6
                  bne          s5, s1, 885f
                  and          t0, s0, s2
                  auipc        sp, 499050
                  auipc        s1, 569381
                  bge          t4, a4, 879f
                  srai         tp, t0, 14
                  lui          a5, 109097
                  lui          t4, 256607
879:              srai         a1, s10, 17
880:              add          t1, gp, a6
                  sll          s5, zero, tp
                  andi         s3, s8, -1262
                  bgeu         ra, ra, 899f
                  slt          t6, a0, s0
885:              bge          s6, s9, 900f
                  srli         t6, a3, 31
                  sra          t2, zero, a4
                  slti         t2, tp, 1052
                  bgeu         gp, s9, 905f
                  slti         a1, s5, -1169
                  slt          s5, s2, s4
                  or           zero, s3, s4
                  srl          tp, a1, s6
                  xori         ra, gp, -885
                  bge          s11, s6, 911f
                  bge          a2, t3, 908f
                  sra          a1, t2, a0
                  sll          s2, t3, s5
899:              sltu         sp, ra, s5
900:              slli         s6, s11, 21
                  blt          a1, a2, 909f
                  and          t1, s2, s2
                  lui          gp, 93054
                  sltu         a0, s3, s4
905:              addi         a2, ra, 1896
                  and          s9, t4, t5
                  xori         s7, s0, -940
908:              addi         tp, s0, -37
909:              slli         s2, s7, 0
                  slt          s5, ra, s9
911:              xori         a0, tp, 1559
                  slli         ra, a7, 31
                  or           ra, s5, a5
                  slli         a4, s4, 7
                  bne          s5, t6, 922f
                  bne          s7, t4, 919f
                  sub          a0, a0, a7
                  sltu         a6, gp, ra
919:              xor          a0, zero, s10
                  xor          t5, s8, a4
                  bge          t5, s5, 940f
922:              sll          a3, a3, zero
                  add          a2, t4, a0
                  srl          s6, s5, s2
                  bne          t6, s4, 945f
                  bne          ra, s1, 929f
                  bltu         a4, s8, 936f
                  sra          gp, tp, zero
929:              bne          a5, s5, 938f
                  or           s8, a2, sp
                  or           s0, s2, s5
                  srl          s8, s7, a1
                  blt          s8, t0, 950f
                  srai         t0, tp, 7
                  xor          zero, s6, s7
936:              sll          a4, t5, s5
                  slli         gp, s7, 4
938:              bne          a4, t1, 942f
                  lui          s0, 534932
940:              lui          t4, 286951
                  auipc        s9, 68120
942:              srai         zero, a0, 22
                  srai         s11, s5, 2
                  slt          t1, a5, s0
945:              bne          ra, a1, 948f
                  or           a2, s0, s10
                  srli         sp, t5, 3
948:              slti         sp, s4, -2017
                  sltiu        tp, s1, 333
950:              bgeu         a1, ra, 962f
                  slt          s0, t1, s0
                  andi         s8, tp, -1970
                  xor          s5, s10, t3
                  xori         s8, tp, -633
                  ori          a2, s10, 1502
                  sra          gp, t5, s5
                  blt          s0, s6, 971f
                  bne          a5, s7, 974f
                  auipc        a1, 101240
                  sub          gp, tp, tp
                  or           tp, t0, zero
962:              bge          t0, t4, 970f
                  nop
                  and          s6, zero, s10
                  bge          s4, t0, 968f
                  srl          gp, t3, s6
                  srli         s3, sp, 15
968:              srai         s0, s1, 24
                  xori         s6, s5, 1302
970:              sltu         s1, s0, t4
971:              srli         t4, s11, 24
                  sra          s0, a1, s4
                  srl          t4, gp, t3
974:              or           gp, s3, s0
                  ori          s10, s11, -288
                  slti         zero, a6, -1233
                  srai         s2, t5, 10
                  sll          a0, t4, gp
                  srli         s2, t3, 12
                  andi         s9, gp, -1218
                  srli         a2, gp, 30
                  and          t1, t0, s11
                  sltiu        a3, a2, 1287
                  bgeu         t0, s1, 1000f
                  sll          s7, sp, s3
                  addi         s0, s7, 1799
                  sltu         s5, a6, t0
                  bge          a5, a3, 1003f
                  bgeu         a4, a3, 1005f
                  beq          a5, t1, 1004f
                  bgeu         s1, a3, 992f
992:              nop
                  andi         t1, a6, 798
                  srai         a4, a4, 30
                  sub          t0, t2, tp
                  xori         t1, s5, -1676
                  beq          a7, t0, 1009f
                  addi         a6, s6, 858
                  blt          t3, ra, 1008f
1000:             or           gp, tp, sp
                  sll          gp, t4, a7
                  slli         tp, t1, 29
1003:             auipc        ra, 324598
1004:             bltu         a0, a2, 1014f
1005:             slti         a4, s8, -462
                  add          tp, a6, a4
                  slt          s9, s10, a2
1008:             auipc        s3, 1036493
1009:             bge          a6, s9, 1011f
                  slli         a2, t3, 19
1011:             xor          s6, a5, t0
                  lui          s0, 39093
                  or           s11, s8, t0
1014:             srli         s6, s6, 22
                  bge          gp, s1, 1019f
                  bge          s2, a5, 1027f
                  or           t0, s2, t5
                  andi         s6, a3, 1300
1019:             xori         t6, t5, -1599
                  bge          s4, s8, 1035f
                  bge          s9, s2, 1024f
                  andi         s2, a1, 2032
                  ori          zero, tp, -2001
1024:             srl          t6, a2, s7
                  sub          t0, t0, gp
                  blt          s11, a4, 1034f
1027:             srai         t2, t1, 19
                  auipc        t0, 763131
                  and          t2, t6, zero
                  bltu         s0, s3, 1049f
                  sub          s7, ra, s5
                  blt          a4, ra, 1033f
1033:             ori          a4, a4, 434
1034:             blt          zero, a0, 1039f
1035:             slli         ra, a2, 26
                  or           sp, t1, s0
                  add          a1, s0, s5
                  sub          t5, t3, s5
1039:             srai         s6, gp, 9
                  srl          t2, a5, gp
                  srl          t5, a3, a5
                  srai         s9, t4, 15
                  xori         s2, t2, -1105
                  slt          zero, s4, tp
                  blt          tp, s11, 1065f
                  lui          t4, 1004970
                  slli         a0, a1, 11
                  bne          s8, s2, 1064f
1049:             andi         zero, t2, -94
                  bgeu         s11, t4, 1052f
                  xor          s11, s9, s0
1052:             slti         a6, gp, 563
                  sub          t1, s3, a6
                  add          a3, a1, t3
                  sltiu        a2, s3, 420
                  xori         t2, t0, -176
                  bge          t1, s1, 1061f
                  srai         s6, a5, 7
                  xori         s10, gp, 321
                  andi         t1, gp, 1815
1061:             bltu         s3, a7, 1070f
                  srl          s11, ra, s5
                  xor          s8, gp, a2
1064:             srli         gp, s9, 28
1065:             auipc        a4, 12656
                  srl          a6, s4, t5
                  xori         tp, t1, 566
                  sra          tp, a7, t3
                  sub          a5, t4, t6
1070:             slti         s2, s6, 1412
                  sra          s5, a6, s0
                  sltiu        t6, s7, 1775
                  xor          gp, a4, s5
                  sub          a3, a7, a6
                  bge          s7, s10, 1082f
                  blt          sp, s9, 1093f
                  ori          a2, t2, 1720
                  xori         a1, a2, -1992
                  beq          s9, a3, 1080f
1080:             bne          gp, t2, 1100f
                  blt          t1, a2, 1095f
1082:             slt          ra, s3, a3
                  slt          tp, ra, a1
                  bgeu         gp, a1, 1088f
                  ori          s8, t5, -235
                  bgeu         a6, s0, 1101f
                  srli         s7, s7, 24
1088:             bgeu         a6, t1, 1091f
                  lui          a2, 445759
                  bne          s11, a7, 1102f
1091:             lui          s9, 223234
                  sub          s1, s4, a7
1093:             slt          gp, t1, tp
                  or           zero, t2, sp
1095:             auipc        t5, 348032
                  slti         sp, a2, -484
                  sub          s7, a2, a4
                  addi         s7, a1, 1338
                  sll          t1, t4, s11
1100:             or           a5, s11, t6
1101:             slli         a3, t1, 7
1102:             lui          s5, 503260
                  slli         t2, s10, 30
                  sra          sp, gp, s2
                  sltu         s7, s8, t3
                  auipc        t5, 160876
                  bne          t2, s1, 1117f
                  lui          a6, 921010
                  auipc        a5, 427011
                  beq          s3, a0, 1112f
                  ori          a1, s6, -778
1112:             andi         a0, s6, -318
                  lui          s9, 85144
                  sub          s10, a6, s9
                  bltu         tp, s6, 1119f
                  bge          s2, t4, 1119f
1117:             blt          a4, s8, 1120f
                  xori         sp, a5, -920
1119:             xor          s3, a1, t1
1120:             auipc        ra, 951858
                  sub          s6, t2, t3
                  addi         s7, a0, 1386
                  ori          gp, a5, -91
                  bne          a5, a6, 1139f
                  srli         s9, s6, 18
                  srli         zero, tp, 13
                  slti         s6, t0, 1438
                  andi         s6, t3, -580
                  sub          t1, tp, t2
                  sub          ra, s8, t2
                  srl          gp, s9, s5
                  sltiu        t6, s1, 805
                  sra          a3, t1, s5
                  srai         s3, sp, 11
                  bge          a5, gp, 1144f
                  nop
                  slli         t1, s3, 4
                  lui          s7, 602711
                  sub          t0, tp, t0
                  xori         t1, a2, 662
                  slti         t0, sp, 1264
                  slti         tp, s5, -1012
                  srli         a5, a5, 12
                  sltu         a6, s9, s8
                  srl          a4, a7, s6
sub_4_j6:         jal          s3, sub_6 #jump sub_4 -> sub_6
                  slli         zero, a3, 10
                  srai         tp, s8, 12
                  bge          a4, s10, 1146f
1139:             srai         s6, tp, 4
                  sub          a1, a3, t2
                  blt          t3, t1, 1153f
                  bne          a0, a1, 1161f
                  srl          s6, t0, a3
1144:             sll          a3, t4, s3
                  add          t1, s6, tp
1146:             andi         t4, sp, -1068
                  bgeu         t2, t5, 1163f
                  sra          s3, t0, s5
                  add          s8, a1, tp
                  and          s3, t6, s5
                  sll          s8, t0, s11
                  lui          t4, 45568
1153:             slti         t2, s3, 1828
                  or           t0, gp, a6
                  lui          t2, 817730
                  blt          tp, a1, 1172f
                  xor          s1, s9, s8
                  sltu         s9, s5, a2
                  slli         a6, a6, 9
                  sub          s7, s5, a0
1161:             srli         gp, a0, 10
                  sra          t6, a7, s9
1163:             slt          s1, t3, a7
                  bgeu         a3, s2, 1171f
                  slti         a2, t1, -1498
                  sltiu        t6, s5, -1055
                  srli         t0, a4, 10
                  and          t0, zero, t0
                  xor          a1, s7, s5
                  sltu         a1, sp, s7
1171:             bge          s4, a3, 1172f
1172:             sll          s9, t1, s2
                  sub          t4, s6, s1
                  sll          s10, a3, t3
                  slt          a3, s1, s8
                  sra          a0, a6, zero
                  beq          s6, s10, 1193f
                  srai         t5, t3, 17
                  bltu         s9, a5, 1195f
                  srl          t6, a4, t0
                  sltu         s11, s0, s6
                  sub          tp, s2, gp
                  nop
                  bltu         a2, a5, 1195f
                  srai         s8, a6, 21
                  slli         a1, s5, 29
                  nop
                  nop
                  andi         a4, t3, -1243
                  blt          t1, a7, 1195f
                  bne          s3, t2, 1205f
                  bge          gp, s4, 1201f
1193:             add          a2, s4, tp
                  blt          t5, t2, 1211f
1195:             add          t0, ra, s6
                  srl          s2, t1, a4
                  xori         zero, s10, 519
                  slt          s8, tp, t6
                  sra          a1, s2, s5
                  auipc        a3, 408527
1201:             bltu         a1, a1, 1203f
                  ori          s7, s6, -324
1203:             or           a4, s3, s10
                  sra          s0, tp, s0
1205:             beq          s3, s8, 1213f
                  slti         a1, t6, 90
                  ori          a6, gp, 1264
                  and          s0, ra, zero
                  beq          t5, a6, 1220f
                  slti         ra, t1, -1808
1211:             srai         s11, a5, 22
                  sll          tp, a4, s8
1213:             xori         a4, a6, -1488
                  srai         s7, s0, 23
                  sltiu        gp, tp, 457
                  bne          a3, a5, 1218f
                  beq          s6, t6, 1234f
1218:             xor          s5, s0, ra
                  slt          a1, a5, a4
1220:             xori         s7, s11, 1574
                  bge          s5, s0, 1225f
                  sltiu        t1, a4, 572
                  sltiu        s9, t2, -1512
                  bgeu         gp, s7, 1225f
1225:             and          a0, t0, s11
                  xori         s8, ra, -459
                  xor          tp, a4, t5
                  sltiu        zero, s4, 104
                  sltu         s11, s9, gp
                  slli         t6, s0, 14
                  sltiu        t0, zero, 1413
                  auipc        t6, 631973
                  srl          a1, a2, s5
1234:             slt          t4, tp, s9
                  srai         tp, a2, 10
                  slt          ra, s3, s10
                  ori          s5, tp, 953
                  blt          s0, t1, 1241f
                  auipc        a1, 712912
                  sll          a2, t4, s11
1241:             addi         s10, t5, -821
                  xor          s8, a5, t1
                  xor          t1, s11, a0
                  and          ra, a6, tp
                  slti         t0, s0, 1887
                  xori         t1, a3, 1782
                  or           sp, t5, sp
                  blt          s9, a7, 1256f
                  add          t4, tp, t6
                  xori         s11, s11, -1033
                  blt          s4, gp, 1265f
                  blt          a2, t3, 1257f
                  srai         t6, a4, 31
                  ori          t4, s2, 442
                  bne          s5, s6, 1270f
1256:             and          gp, t6, s0
1257:             sub          s2, s11, t0
                  bne          gp, s9, 1266f
                  srli         s0, a2, 13
                  srai         zero, t0, 23
                  slli         zero, s10, 11
                  sll          t0, s4, t2
                  srli         zero, a0, 2
                  andi         s6, a6, -1052
1265:             addi         s0, s4, -405
1266:             sub          t1, s5, a4
                  srai         zero, tp, 7
                  slti         s5, zero, -1685
                  bge          t4, a0, 1272f
1270:             auipc        tp, 118767
                  bge          s0, s11, 1283f
1272:             sra          s3, s9, sp
                  sra          a0, s10, s6
                  beq          s7, s3, 1294f
                  sltu         t1, a4, s9
                  addi         s2, t6, 2041
                  xori         s2, a0, 1671
                  bne          zero, a1, 1294f
                  and          t0, zero, s11
                  slli         s9, s9, 18
                  sltu         a0, gp, s4
                  andi         s8, s0, 734
1283:             and          a6, a3, t2
                  ori          t0, s0, 1937
                  srli         sp, s9, 6
                  addi         s6, s1, -1099
                  bge          a6, a6, 1296f
                  and          s9, a3, a4
                  andi         t0, s11, -1435
                  srl          a5, a7, s11
                  slli         a0, s11, 9
                  add          ra, t5, t5
                  srai         a3, a4, 7
1294:             slti         s9, a6, -981
                  xori         s2, a7, -2012
1296:             srl          s2, s7, t2
                  bgeu         t6, s2, 1298f
1298:             bge          s10, zero, 1307f
                  sltu         s9, s2, s7
                  srai         a2, s4, 1
                  bltu         a2, t2, 1317f
                  sll          t1, sp, t0
                  lui          t0, 95076
                  sub          s8, s5, a3
                  and          t2, s1, t0
                  bge          s2, s8, 1313f
1307:             slli         a2, gp, 26
                  srli         t6, a4, 5
                  auipc        a3, 274067
                  xori         t4, gp, 1961
                  bne          t5, t2, 1327f
                  bgeu         a0, t4, 1326f
1313:             srai         a4, a1, 16
                  sltu         s9, s9, s3
                  nop
                  sll          gp, t1, sp
1317:             slti         s0, a0, 1294
                  add          a6, a0, s8
                  bge          a6, s1, 1331f
                  bltu         t0, s9, 1339f
                  slti         a5, s11, 1897
                  slli         t5, a7, 18
                  sll          t2, s1, t0
                  sll          a1, t3, a7
                  bge          s7, a7, 1328f
1326:             auipc        t1, 20777
1327:             beq          a6, zero, 1331f
1328:             slli         a2, a2, 2
                  beq          a5, s2, 1345f
                  bge          a4, t6, 1345f
1331:             addi         s11, a7, 341
                  addi         a1, t0, 657
                  auipc        s8, 841953
                  slli         gp, t0, 18
                  and          a5, s8, t3
                  sub          a1, s3, tp
                  or           ra, ra, gp
                  xori         a2, s4, -261
1339:             slti         s3, s4, -1206
                  auipc        s0, 246287
                  add          a5, s6, a6
                  nop
                  addi         s1, gp, -156
                  add          tp, a2, a6
1345:             srl          gp, s1, a6
                  sltiu        ra, s10, -405
                  xori         a3, t1, -505
                  srai         ra, t4, 2
                  ori          s6, s5, -504
                  srli         tp, s10, 18
                  srl          s10, s4, a7
                  blt          zero, ra, 1354f
                  auipc        s5, 952816
1354:             sll          s5, s10, s5
                  sra          a4, s2, a4
                  slt          a4, s9, zero
                  andi         s3, s0, -161
                  nop
                  sltu         s1, a0, a0
                  srli         s0, a3, 3
                  bgeu         zero, s8, 1371f
                  andi         s10, s4, -1618
                  bltu         t4, a2, 1375f
                  addi         t2, s1, -1683
                  or           t0, s8, s5
                  auipc        s2, 335865
                  blt          a7, ra, 1383f
                  sltiu        a3, s11, -1371
                  or           tp, s9, t1
                  sltu         t6, a6, s1
1371:             or           s3, s3, s2
                  sra          s9, a7, t5
                  or           t5, t2, s1
                  and          t6, t2, s4
1375:             auipc        s0, 590224
                  sltu         zero, s2, s6
                  nop
                  lui          s1, 213002
                  xor          t0, s7, s6
                  slli         s6, s10, 4
                  and          t0, s8, gp
                  srai         ra, t0, 21
1383:             bltu         t0, a2, 1391f
                  sltiu        s7, s0, -8
                  sra          t1, s8, a7
                  xori         tp, t5, -1746
                  srai         sp, a7, 3
                  sltiu        a0, s10, 155
                  auipc        a4, 1007172
                  bltu         s8, a2, 1410f
1391:             srl          t5, a7, t0
                  sltiu        t2, s0, -902
                  beq          a6, s1, 1409f
                  lui          t1, 945676
                  srl          s3, s4, a7
                  srai         t6, a5, 8
                  or           ra, s1, t1
                  beq          a2, s1, 1403f
                  auipc        s8, 665964
                  srl          t5, a4, a7
                  srai         a4, s7, 22
                  sltu         a4, t2, s11
1403:             blt          a2, s5, 1404f
1404:             sltu         t6, a7, t4
                  xor          gp, a2, s8
                  xori         s0, zero, -48
                  bne          zero, a0, 1410f
                  lui          s11, 668104
1409:             bgeu         t6, t4, 1425f
1410:             bne          t6, a2, 1417f
                  slt          a6, s10, t1
                  andi         a5, t0, 577
                  xori         a0, s6, -27
                  and          s1, s5, gp
                  slt          t5, s3, a2
                  sra          t2, t2, s10
1417:             bltu         a6, tp, 1431f
                  or           t6, a2, s10
                  addi         s6, s10, -36
                  srai         a1, a5, 13
                  slt          a0, a0, sp
                  add          s3, a1, t2
                  slt          t5, s10, a3
                  sll          gp, s5, s9
1425:             blt          t4, s4, 1428f
                  auipc        s7, 369489
                  slt          s8, t4, a3
1428:             lui          s9, 854464
                  andi         tp, zero, 398
                  bge          s4, s3, 1440f
1431:             auipc        tp, 1042934
                  andi         a5, t3, 1635
                  blt          s3, a7, 1449f
                  srai         ra, s8, 1
                  bltu         a4, s6, 1436f
1436:             blt          s8, zero, 1438f
                  addi         a5, s9, -81
1438:             lui          t4, 194677
                  nop
1440:             lui          a6, 631712
                  blt          a2, t4, 1455f
                  slt          zero, t0, a3
                  addi         t6, a3, 542
                  auipc        s3, 725515
                  slli         a2, s6, 11
                  xor          s6, s10, t1
                  slli         t1, s9, 0
                  srai         s10, sp, 18
1449:             slt          t6, s11, t4
                  bge          a1, a0, 1454f
                  add          zero, s2, s9
                  add          s10, sp, a5
                  blt          s1, s11, 1462f
1454:             andi         a6, t1, 1781
1455:             sll          a2, t2, s4
                  sltu         a4, a5, a2
                  slli         a4, s8, 31
                  beq          s3, t1, 1469f
                  blt          sp, sp, 1474f
                  xor          s2, ra, t2
                  slti         s9, gp, 278
1462:             beq          s3, s11, 1466f
                  xor          s0, sp, s3
                  lui          a1, 869941
                  bge          t5, a1, 1480f
1466:             srli         t6, a6, 14
                  bne          ra, a7, 1479f
                  bltu         gp, t5, 1487f
1469:             sub          t1, a4, a1
                  xori         gp, t6, -1441
                  srli         a4, zero, 31
                  xor          a0, t2, s7
                  srai         t5, tp, 21
1474:             add          t0, s7, s3
                  srai         s3, sp, 10
                  sub          t5, a3, gp
                  srai         ra, s11, 10
                  bge          gp, s2, 1495f
1479:             bge          a4, t2, 1481f
1480:             sll          a3, t3, sp
1481:             and          t2, sp, a7
                  nop
                  andi         s8, a0, -981
                  add          s10, t0, a3
                  srai         a1, s1, 21
                  nop
1487:             andi         gp, a1, 335
                  and          tp, t5, t4
                  sltu         s1, s10, t6
                  srl          s7, s10, a4
                  bgeu         t1, zero, 1500f
                  bltu         a7, t4, 1500f
                  or           t4, a3, t0
                  slt          s3, s9, t4
1495:             add          t6, s0, s9
                  srli         zero, a5, 14
                  sltu         s10, t2, a6
                  lui          s2, 66856
                  nop
1500:             srai         a6, a6, 23
                  bne          gp, ra, 1504f
                  bne          a6, a5, 1519f
                  la           sp, region_0+990 #start riscv_load_store_rand_instr_stream_5
                  lb           s6, 8(sp)
                  lh           s9, 62(sp)
                  slti         a3, t0, 60
                  lb           s11, 22(sp)
                  sh           t2, 52(sp)
                  ori          s6, sp, 339
                  srai         ra, t6, 11
                  lh           t5, -58(sp)
                  lb           a4, -15(sp)
                  lb           t1, 8(sp)
                  lbu          tp, 53(sp)
                  xor          tp, a7, t1
                  sra          tp, gp, t4
                  lh           s9, -18(sp)
                  slli         s8, tp, 7
                  lb           gp, 21(sp)
                  slli         gp, t6, 1
                  srl          s10, tp, gp
                  ori          s9, s0, -1423
                  ori          t6, t1, -2037
                  sb           s4, 41(sp)
                  sltu         a0, s6, s9
                  sub          t2, s0, t0
                  sb           t5, -19(sp)
                  sb           a7, -1(sp)
                  lb           tp, -30(sp)
                  andi         ra, a1, -1861
                  sll          t5, gp, s0
                  lb           t6, 45(sp)
                  xor          t5, a7, a6
                  sh           a2, -38(sp)
                  lbu          s11, -61(sp)
                  ori          s9, zero, 1671
                  lb           s7, -59(sp)
                  lb           s6, -27(sp)
                  slti         a1, s7, -102
                  lbu          s6, 55(sp) #end riscv_load_store_rand_instr_stream_5
                  and          t6, a0, s2
1504:             bgeu         s3, t3, 1524f
                  blt          a5, s1, 1506f
1506:             auipc        a2, 853256
                  srl          s8, tp, s0
                  or           s8, a2, s7
                  sltiu        a3, t3, 273
                  lui          s8, 97045
                  and          tp, s6, t5
                  xori         a2, a3, -1506
                  ori          a4, s0, -532
                  srl          t6, t5, a5
                  addi         t1, a6, 1895
                  sra          s8, t5, s9
                  slti         a0, s8, -952
                  addi         t1, a5, -1566
1519:             bge          a0, a7, 1523f
                  srl          t5, t2, s3
                  addi         s6, s11, -389
                  xor          s5, s1, a3
1523:             or           t4, s8, a7
1524:             sltu         t5, s2, s7
                  slti         a0, s3, -252
                  slti         a0, s10, 835
                  srli         s10, a4, 5
                  bgeu         s11, a4, 1542f
                  lui          gp, 346484
                  xori         a6, a4, 417
                  bgeu         a2, s1, 1532f
1532:             bltu         t6, a6, 1536f
                  lui          a0, 349154
                  srai         a5, s7, 2
                  sll          a1, s2, s11
1536:             beq          a3, s9, 1541f
                  srl          t6, a7, a3
                  srli         a6, s2, 5
                  bgeu         s5, a1, 1546f
                  lui          s2, 711718
1541:             or           tp, t4, s9
1542:             lui          s1, 762752
                  bge          t1, s1, 1562f
                  blt          s11, a7, 1560f
                  sub          ra, t2, s10
1546:             bltu         a3, s0, 1561f
                  sll          a1, a3, s2
                  srl          a1, tp, s9
                  sll          t6, t2, t4
                  ori          s11, t5, -1151
                  add          s11, zero, t5
                  xor          a5, t2, s9
                  slt          a1, s0, gp
                  sub          s0, s10, a5
                  lui          a0, 367068
                  slt          ra, a0, a7
                  lui          ra, 320221
                  xor          s11, ra, s10
                  nop
1560:             sll          t0, zero, s11
1561:             xori         s8, tp, 450
1562:             xor          t6, s10, s1
                  add          s3, s5, s3
                  srli         zero, ra, 9
                  slt          a6, gp, tp
                  slt          a1, s6, ra
                  bltu         t4, zero, 1569f
                  xor          s3, a5, s6
1569:             ori          a1, t2, 2015
                  srl          s10, a2, t4
                  bgeu         t5, t5, 1572f
1572:             auipc        t6, 490666
                  lw           s3, 4(s4)
                  add          s11, s0, tp
                  addi         s4, s4, 48
                  slli         s10, a5, 16
                  sltiu        a3, t4, -82
                  ori          s8, tp, -1059
                  or           a1, s9, s6
2071:             addi x21, x19, 0
2071:             jalr x21, x21, 0
sub_7:            or           t1, gp, t2
                  bge          a1, s3, sub_7_stack_p
sub_7_stack_p:    addi         s4, s4, -60
                  sub          s1, s9, t4
                  ori          a2, s2, 1751
                  sw           s3, 4(s4)
                  sltiu        a1, a4, 1121
                  sll          t2, a6, a6
                  lui          s11, 852724
                  xor          gp, ra, a1
                  sub          t4, s8, s11
                  auipc        s2, 226704
                  or           a0, a4, s4
                  xori         s10, t0, 1795
sub_7_j9:         jal          s3, sub_9 #jump sub_7 -> sub_9
                  srl          s7, tp, s9
                  addi         a4, a3, 623
                  sub          t5, s7, s2
                  addi         a1, sp, -151
                  nop
sub_7_j10:        jal          s3, sub_8 #jump sub_7 -> sub_8
                  auipc        s2, 366898
                  xori         zero, t0, 1889
                  sub          a2, a4, t0
                  add          a3, a6, sp
                  sub          s6, t3, s0
                  lui          t1, 373083
                  slt          s7, t1, t1
                  srli         s6, a5, 25
                  add          s9, a7, t6
                  srli         s5, s0, 29
sub_7_j11:        jal          s3, sub_10 #jump sub_7 -> sub_10
                  slti         tp, a6, -1890
                  beq          s4, s11, 2f
2:                bge          s8, ra, 6f
                  lui          a0, 935620
                  srli         a6, a5, 28
                  blt          zero, tp, 21f
6:                srai         s11, s2, 6
                  sra          t6, s5, t3
                  bge          a1, s1, 14f
                  ori          t1, s7, 1047
                  slti         s7, a4, -1607
                  ori          a6, s8, 500
                  or           a6, s0, t6
                  ori          a5, s3, 1030
14:               bge          s2, t6, 31f
                  bne          gp, t5, 21f
                  and          a2, zero, t5
                  bgeu         a1, sp, 21f
                  bltu         a1, t5, 33f
                  slt          a4, s7, s0
                  sra          t1, a4, s7
21:               or           s8, t5, s1
                  andi         a6, a2, -1405
                  slli         t6, t6, 28
                  bge          ra, a7, 31f
                  xori         s8, s2, -229
                  add          tp, t5, ra
                  bge          a4, s1, 30f
                  bge          sp, a4, 31f
                  slt          a2, s2, t5
30:               xor          s3, s0, a1
31:               bge          a1, zero, 48f
                  slt          s11, s1, a3
33:               sltiu        s5, s7, 249
                  sra          a4, s3, s10
                  bne          a4, a2, 49f
                  bne          zero, t3, 49f
                  addi         a3, ra, -311
                  bgeu         t3, zero, 49f
                  slti         s7, s2, -601
                  sll          s7, s8, a3
                  sltiu        zero, sp, -1010
                  srl          t1, a3, t3
                  ori          s7, a5, -1834
                  andi         s9, a3, -1681
                  blt          ra, t0, 49f
                  and          t5, t3, s6
                  srai         s2, t4, 22
48:               srli         t2, s1, 13
49:               srli         s10, s10, 7
                  lw           s3, 4(s4)
                  auipc        tp, 1039841
                  srl          s10, s11, s7
                  addi         s4, s4, 60
                  or           a1, t2, a5
                  sltiu        a3, s9, -1449
                  andi         t0, s2, -1376
                  srai         t5, t0, 13
90:               addi x11, x19, 0
90:               jalr x11, x11, 0
sub_9:            bgeu         sp, s2, sub_9_stack_p
sub_9_stack_p:    addi         s4, s4, -28
                  sltu         s11, t4, s4
                  sra          s5, a3, sp
                  slli         a6, t1, 18
                  auipc        s2, 965526
                  sra          s8, t2, s7
                  andi         a2, ra, -440
                  slli         s11, s8, 17
                  xori         s6, t4, -953
                  sw           s3, 4(s4)
                  xori         t4, sp, -896
                  bge          s3, s11, 18f
                  xori         t2, gp, -280
                  srli         t0, t4, 1
                  lui          sp, 941225
                  addi         a3, a6, 753
                  slli         s0, ra, 25
                  srai         s6, t4, 29
                  srai         s2, s5, 21
                  srl          t2, s2, a2
                  slt          s7, s11, a7
                  slli         t1, t0, 30
                  sltu         s5, t0, s0
                  sll          a0, s9, s9
                  add          a1, s4, t4
                  xor          s1, s9, s7
                  addi         s6, s4, -981
                  slti         s2, a2, -54
                  slt          a2, a1, gp
18:               lui          a0, 492653
                  srai         a0, s1, 31
                  srli         sp, t5, 29
                  slt          a2, s6, sp
                  and          s9, t1, a5
                  srai         ra, a4, 12
                  andi         s8, t5, 1618
                  addi         s6, s11, 564
                  slti         s10, a6, -336
                  add          a2, t2, t3
                  lui          a6, 803333
                  lui          s11, 263632
                  and          s10, ra, a7
                  add          a1, t2, s11
                  slti         s2, tp, 1459
                  sra          s2, s1, s4
                  bgeu         s10, a1, 41f
                  sll          zero, t5, s7
                  sltiu        s11, a0, -766
                  sll          t4, a0, s8
                  addi         s8, a5, 48
                  slti         s10, a3, 1877
                  srl          t6, a3, t2
41:               xor          a4, zero, s2
                  auipc        s5, 899742
                  lw           s3, 4(s4)
                  auipc        t0, 434381
                  slli         s2, s4, 16
                  addi         a3, s7, 828
                  addi         s4, s4, 28
                  xor          a1, s6, t5
61:               addi x27, x19, 1
61:               jalr x27, x27, 0
sub_2:            addi         s4, s4, -64
                  slli         s8, s11, 14
                  sw           s3, 4(s4)
                  nop
                  slti         t5, a0, -1051
                  slti         s0, gp, 1568
                  la           ra, region_0+1337 #start riscv_load_store_rand_instr_stream_0
                  lui          sp, 699633
                  nop
                  lui          t1, 827956
                  xor          a1, gp, a7
                  xori         t4, s11, 1896
                  sra          s10, a6, a5
                  slli         sp, t6, 14
                  andi         t4, a1, 984
                  xori         s10, s5, 1923
                  srai         s6, t6, 25
                  ori          t5, a4, 1013
                  xor          s8, t2, s1
                  lbu          t6, -12(ra)
                  srl          s6, ra, t1
                  srai         t2, s5, 21
                  lb           s6, -32(ra)
                  auipc        a4, 299574
                  sb           tp, 10(ra)
                  lh           s10, -49(ra)
                  andi         s1, gp, -350
                  sb           t3, -63(ra)
                  lb           a4, -62(ra)
                  slti         t2, s1, 1041
                  srli         a1, a1, 15
                  sltiu        s8, a6, 620
                  xori         s2, a2, 188
                  sb           a2, 4(ra)
                  add          a5, s6, t3
                  lh           a3, -35(ra)
                  lhu          s10, 5(ra)
                  sh           s10, 17(ra)
                  andi         t6, sp, 1055
                  add          t1, s8, s5
                  add          a3, a3, a1
                  add          s5, s10, a5
                  lb           s3, -12(ra)
                  lb           a0, -2(ra)
                  lbu          t0, 30(ra)
                  xori         s0, a5, 1561
                  slt          zero, s3, a4
                  sub          gp, a5, t5
                  andi         s6, t1, -155
                  sb           s7, -41(ra)
                  lhu          s0, -11(ra)
                  lbu          s10, 23(ra)
                  ori          s6, a5, 1185
                  sb           t5, 46(ra) #end riscv_load_store_rand_instr_stream_0
                  auipc        s2, 844986
                  bne          t5, t1, 15f
                  andi         sp, s4, 807
                  srl          t6, a6, a0
                  xor          s7, a7, s4
                  sub          s5, s7, s8
                  or           a3, s7, tp
                  slt          s5, a5, s9
                  bge          t5, a0, 20f
                  xori         gp, a1, -503
                  add          s10, s0, t4
                  beq          t3, ra, 19f
                  andi         s2, t4, -1738
                  srl          a1, a0, ra
                  lui          t1, 54565
15:               blt          s1, gp, 34f
                  sltu         s5, s9, s4
                  add          t0, sp, s8
                  bltu         tp, zero, 28f
19:               andi         t2, a3, -1266
20:               addi         s7, t0, -1252
                  slli         s11, s7, 24
                  lui          gp, 745360
                  beq          s11, s3, 29f
                  blt          a2, s8, 25f
25:               ori          a1, t6, -1170
                  sra          s9, a2, a2
                  nop
28:               bgeu         t3, a3, 33f
29:               srai         s0, s1, 18
                  sll          t4, a4, t1
                  addi         s8, s5, 623
                  auipc        a2, 166704
33:               ori          s10, s1, -466
34:               sltiu        s10, s11, -40
                  and          zero, a4, s4
                  auipc        a3, 619952
                  slti         t0, t4, -1117
                  addi         s9, s5, 836
                  slli         t0, a1, 14
                  srai         a4, t1, 30
                  andi         t1, s10, 935
                  lui          sp, 587439
                  auipc        a5, 541520
                  srai         a6, a2, 9
                  slti         s8, zero, -116
                  bgeu         a3, s6, 50f
                  lui          a0, 999537
                  srai         s2, gp, 16
                  xori         s0, a0, -599
50:               blt          t4, t5, 69f
                  beq          t2, a7, 56f
                  bltu         s8, a3, 68f
                  beq          a6, t5, 54f
54:               or           t1, s1, t3
                  beq          t0, s0, 58f
56:               srai         s3, a3, 14
                  beq          t6, s2, 68f
58:               xori         s0, a0, 1122
                  or           a6, s5, gp
                  slti         s7, s2, -816
                  auipc        s11, 1005948
                  andi         a1, gp, -1104
                  addi         t1, a6, 466
                  beq          s5, t2, 81f
                  andi         a0, a2, -1735
                  sra          s10, a2, a5
                  bltu         zero, s7, 71f
68:               sltu         a5, a2, s10
69:               sra          s10, t6, s6
                  srai         sp, s3, 2
71:               bltu         t1, s7, 79f
                  bltu         s3, a2, 89f
                  xori         t5, s8, 534
                  bge          gp, t0, 84f
                  add          t1, t2, sp
                  blt          zero, t2, 81f
                  slli         s7, t4, 23
                  la           sp, sub_3
                  auipc        t4, 248669
                  srai         s5, s0, 20
                  nop
                  slti         t1, s8, 987
                  addi         s5, s2, -1646
                  addi         sp, sp, 683
                  sltiu        a0, s11, -1082
sub_2_j4:         jalr         s3, sp, -683 #jump sub_2 -> sub_3
                  lui          t2, 512892
                  nop
79:               or           a3, s11, t0
                  or           zero, sp, a5
81:               xor          t0, t6, zero
                  slli         a5, s10, 10
                  blt          s11, t3, 102f
84:               bltu         t6, a4, 86f
                  lui          a2, 252465
86:               add          s11, s11, t5
                  slt          gp, s2, s1
                  slt          a3, a2, tp
89:               blt          t0, a3, 106f
                  srli         s10, s10, 8
                  slti         zero, a6, -1788
                  slt          s6, s8, s1
                  xor          t0, s4, s8
                  sll          s7, t0, s8
                  or           a3, tp, a4
                  srai         s9, s5, 26
                  sltiu        s9, a4, 1418
                  xori         s5, t1, 1335
                  and          s6, t1, s7
                  addi         a2, gp, -1697
                  addi         s10, s4, 1799
102:              beq          sp, s7, 114f
                  bge          t4, t0, 116f
                  slli         s6, t0, 28
                  sra          a3, t3, s1
106:              sll          s8, s6, s3
                  bltu         s6, a6, 108f
108:              sltiu        s0, s5, -1534
                  sub          s2, s8, s10
                  bge          s6, zero, 115f
                  bne          ra, s0, 127f
                  add          s8, a6, s10
                  nop
114:              slli         t5, tp, 19
115:              sltu         a3, a2, s3
116:              bne          sp, zero, 121f
                  sub          s3, zero, t2
                  xor          t2, s8, tp
                  bge          s8, s10, 129f
                  auipc        sp, 119330
121:              blt          a4, tp, 129f
                  sra          s10, a1, t6
                  bge          t5, s9, 142f
                  add          a5, s5, t5
                  bge          a5, s0, 131f
                  ori          a3, t1, -367
127:              lui          s3, 871705
                  slti         s3, a6, -1991
129:              nop
                  srai         sp, gp, 7
131:              addi         s9, s6, -1132
                  nop
                  auipc        s11, 257726
                  or           s2, s8, t4
                  bltu         a2, t0, 154f
                  srai         a3, ra, 19
                  or           t0, t5, s10
                  srli         a1, s3, 4
                  xor          t6, t1, a6
                  addi         sp, t3, -550
                  srli         s0, s1, 7
142:              lui          s3, 918463
                  addi         gp, sp, 177
                  nop
                  bge          s2, s3, 157f
                  slti         a6, t2, 987
                  xor          a6, s6, s2
                  lui          s9, 600204
                  sub          sp, s3, a1
                  slti         ra, t0, -1149
                  sll          s3, tp, s5
                  srai         t1, s1, 3
                  slti         sp, a7, -795
154:              andi         tp, a3, -2035
                  sll          a4, sp, s11
                  xori         t4, t2, 421
157:              auipc        s2, 160647
                  slti         a6, tp, -611
                  slli         zero, s5, 17
                  srai         s1, t0, 0
                  sra          a4, t5, t1
                  srai         s0, a0, 24
                  bltu         s3, gp, 166f
                  xor          a0, a0, a4
                  slti         ra, a6, 1365
166:              srai         s1, s6, 19
                  bge          s9, s0, 168f
168:              srl          s0, t5, a3
                  sltiu        s11, a3, -1572
                  lui          s11, 468171
                  sra          s9, t5, t6
                  ori          s11, zero, -1907
                  bge          s11, a0, 190f
                  nop
                  bne          t1, zero, 191f
                  ori          t6, t5, -1196
                  sltu         sp, sp, s6
                  xori         a5, a0, -1905
                  xor          a3, s5, s1
                  ori          t1, a5, -1473
                  and          zero, s7, s6
                  or           sp, a3, a1
                  sltiu        t6, ra, 1063
                  beq          t4, a1, 201f
                  bgeu         s3, zero, 198f
                  sltu         ra, s11, t3
                  sltu         sp, t5, t3
                  bltu         ra, s10, 204f
                  blt          t5, t3, 199f
190:              bge          a6, s7, 195f
191:              sll          s8, t5, a6
                  auipc        s8, 903493
                  sra          s6, gp, s5
                  slti         s7, t0, -2045
195:              auipc        s10, 1004696
                  xori         s2, t3, 2034
                  and          s0, t1, gp
198:              and          a6, s3, tp
199:              addi         s8, t1, -587
                  add          s3, t0, a6
201:              srli         s0, tp, 21
                  slt          s8, t2, a1
                  bne          tp, t1, 206f
204:              lui          a4, 584982
                  bne          s0, s8, 206f
206:              slt          a6, a2, a6
                  lw           s3, 4(s4)
                  slt          zero, ra, s4
                  xor          a3, a4, a4
                  andi         a5, s4, -864
                  srai         a3, s1, 15
                  lui          t0, 154788
                  addi         s4, s4, 64
                  xori         s8, a2, -723
                  srai         a0, s7, 30
                  andi         t4, t5, -873
281:              addi x3, x19, 1
281:              jalr x3, x3, 0
sub_3:            srai         t0, t3, 23
                  bgeu         s5, s2, sub_3_stack_p
                  srai         a2, t6, 11
sub_3_stack_p:    addi         s4, s4, -60
                  lui          a6, 764602
                  sltiu        s7, a7, 457
                  sw           s3, 4(s4)
                  slti         t2, a0, 1679
                  andi         s8, s11, -879
                  or           t2, s4, sp
                  add          a3, a5, a3
                  la           sp, region_1+1131 #start riscv_load_store_rand_instr_stream_2
                  add          ra, tp, s11
                  ori          a5, a0, 1658
                  lb           gp, -225(sp)
                  lb           t1, 158(sp)
                  srli         a5, zero, 26
                  lb           s7, -17(sp)
                  lb           s1, -226(sp)
                  lhu          s1, -223(sp)
                  srl          t2, s7, s1
                  sb           a1, -66(sp)
                  sb           t1, 214(sp)
                  addi         s2, t1, -1790
                  sra          gp, t4, a4
                  sh           a0, -233(sp)
                  sh           a0, -245(sp)
                  lbu          a3, 29(sp)
                  sb           sp, 124(sp)
                  and          ra, a2, ra
                  add          t0, sp, t6
                  or           a1, s9, s7
                  or           a2, a1, s2
                  lb           t6, 137(sp)
                  lbu          a4, -239(sp)
                  lhu          s10, -109(sp)
                  lb           s2, -110(sp)
                  sb           t0, -142(sp)
                  xori         ra, sp, -384
                  sb           s4, 26(sp)
                  sub          s1, t2, a6
                  or           s10, t5, a2
                  andi         a3, ra, 1513
                  lb           s2, 215(sp)
                  lb           gp, 192(sp)
                  lbu          s6, 43(sp)
                  lh           t4, -217(sp)
                  lbu          s2, -150(sp)
                  or           s6, s1, s1
                  xori         t2, t2, 1909
                  sltiu        a0, t6, -310
                  lb           s11, -188(sp)
                  ori          t0, s4, 94
                  slli         t4, ra, 0
                  lh           zero, 227(sp)
                  lb           zero, 194(sp)
                  or           s11, s2, s7
                  or           t1, a0, t0
                  lh           a1, 167(sp)
                  srli         s3, s5, 15
                  sra          t4, s6, t4
                  lh           t4, -143(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1389 #start riscv_load_store_rand_instr_stream_1
                  addi         a2, s2, -436
                  nop
                  lbu          tp, -12(sp)
                  slti         t0, t3, 213
                  nop
                  sltiu        s2, t3, 902
                  lb           a0, -2(sp)
                  lbu          a1, -6(sp)
                  lbu          ra, -4(sp)
                  sb           a6, 15(sp)
                  lb           s1, 0(sp)
                  sll          t1, s4, a3
                  lb           s0, -4(sp)
                  addi         t5, s11, 915
                  sb           s11, 10(sp)
                  slti         a1, a7, -1225
                  sb           a7, 12(sp)
                  sb           s5, -1(sp)
                  srli         a4, tp, 14
                  add          a5, a2, s10
                  sub          tp, a5, s8
                  sb           zero, 4(sp)
                  lb           s1, 10(sp)
                  and          gp, s0, s10
                  lbu          s5, -6(sp)
                  sh           t1, -3(sp)
                  sb           t5, 16(sp)
                  lb           a2, -4(sp)
                  lui          zero, 280140
                  lhu          t5, 13(sp)
                  lbu          s11, 4(sp)
                  lb           zero, 3(sp)
                  slli         ra, a0, 31
                  lb           a6, -16(sp)
                  lbu          a6, -6(sp)
                  nop
                  sltu         s3, a6, t3
                  ori          ra, s2, 1075
                  sltu         t0, s7, a1
                  lb           s3, -2(sp)
                  or           a3, s6, s1
                  lbu          a3, 14(sp)
                  nop
                  sb           gp, 4(sp)
                  lbu          ra, 6(sp)
                  sb           t1, -10(sp)
                  sb           a4, 8(sp) #end riscv_load_store_rand_instr_stream_1
                  nop
                  nop
                  xori         t0, a2, -693
                  xori         a3, sp, 1503
                  and          tp, a7, a2
                  slt          s10, t2, s9
                  slt          s9, s0, t0
                  ori          t2, zero, -889
                  bltu         s11, sp, 21f
                  srl          a4, a1, tp
                  xor          gp, a3, s1
                  srl          s8, t5, s7
                  auipc        s1, 725305
                  sub          t0, s6, a0
                  lui          a6, 851198
                  bltu         a2, zero, 16f
16:               add          a3, t0, ra
                  andi         a4, a0, 1634
                  lui          t6, 976189
                  bgeu         a1, s10, 34f
                  srai         a6, a3, 10
21:               sltiu        a1, ra, 893
                  nop
                  bne          s4, s7, 31f
                  sra          tp, tp, s9
                  sub          s3, s6, s10
                  xori         s2, s9, 1629
                  or           a0, s3, s9
                  bltu         ra, s7, 32f
                  beq          s6, t4, 45f
                  slli         a5, s5, 11
31:               or           s9, a6, t6
32:               add          t2, t5, t1
                  addi         s6, s4, 385
34:               lui          t1, 228324
                  sub          t0, s11, s2
                  sra          ra, a1, a6
                  xori         t2, a5, -516
                  srl          a2, s1, a2
                  srli         t1, t3, 24
                  ori          t1, s4, 632
                  sltu         s1, a1, s0
                  or           sp, a6, a6
                  ori          a5, a6, 925
                  sll          sp, t2, a4
45:               srli         a4, t0, 5
                  or           a6, zero, s8
                  bge          s0, t4, 58f
                  sll          t6, s2, t6
                  slli         a2, s10, 5
                  bge          zero, s0, 59f
                  slti         t4, t2, 853
                  beq          s9, t1, 66f
                  or           s7, zero, s2
                  add          t4, s8, a2
                  sltu         t0, zero, s2
                  xor          s7, a3, a4
                  sll          s6, ra, t1
58:               auipc        t6, 31370
59:               and          ra, s9, a4
                  ori          s3, s1, 1842
                  blt          sp, gp, 78f
                  bne          t4, a5, 78f
                  nop
                  bne          t1, a4, 79f
                  sltu         t2, t5, a1
66:               blt          a2, a1, 86f
                  sra          s5, s2, t4
                  sltu         s6, a0, s10
                  or           t1, sp, ra
                  slt          a6, s8, a4
                  lui          t4, 461238
                  sra          sp, s10, s7
                  or           zero, s4, a2
                  sub          zero, t5, s0
                  ori          s1, t4, -344
                  sll          t4, t3, s7
                  slli         t5, s5, 12
78:               bltu         s1, s8, 96f
79:               ori          t5, t5, 1639
                  srai         s6, a0, 15
                  add          s0, s8, s8
                  add          sp, a7, a1
                  bne          t2, s5, 89f
                  blt          a5, a4, 89f
                  add          zero, zero, s7
86:               slt          s6, tp, s5
                  srl          zero, a1, s1
                  bgeu         a5, a0, 101f
89:               bge          ra, t3, 91f
                  nop
91:               sll          s1, s7, s2
                  or           a1, s2, a2
                  sub          a2, s6, a3
                  ori          a0, a4, 849
                  slt          s6, s6, t2
96:               bltu         s6, s2, 105f
                  srli         t2, s9, 31
                  bne          s7, tp, 118f
                  bltu         s8, s10, 117f
                  and          s6, t5, tp
101:              ori          a4, s0, -1815
                  bltu         t4, a1, 118f
                  sra          s10, a7, zero
                  bgeu         s10, t2, 119f
105:              bge          s2, s7, 113f
                  and          t6, tp, t3
                  andi         a2, s11, 338
                  srl          s8, t6, s1
                  auipc        t0, 277738
                  add          a1, a1, s2
                  beq          s7, s9, 123f
                  beq          s6, a2, 117f
113:              ori          s7, s4, -878
                  sltiu        t2, t6, 139
                  srai         s2, a7, 7
                  sra          a1, tp, s8
117:              bltu         a1, a4, 122f
118:              beq          tp, a5, 125f
119:              ori          s0, a4, 983
                  auipc        sp, 981554
                  sra          s3, a7, t2
122:              bltu         ra, s5, 140f
123:              blt          s3, a2, 135f
                  srl          t6, t4, a7
125:              sltiu        zero, a6, 1308
                  bltu         zero, zero, 127f
127:              sll          s5, s6, t0
                  sltu         a3, s10, s10
                  sltiu        s10, t4, -1710
                  sltu         tp, t5, t2
                  slli         sp, t5, 16
                  sub          zero, t3, a7
                  ori          t1, a7, 45
                  or           t0, a6, t1
135:              bgeu         t0, a3, 150f
                  and          gp, a2, zero
                  add          t4, t5, t3
                  sra          s0, s6, s2
                  slli         a2, t0, 16
140:              srai         s3, s8, 24
                  xor          s11, t3, t5
                  bltu         zero, s10, 154f
                  xor          a6, t5, s2
                  xor          s2, t3, s4
                  bltu         s9, s1, 147f
                  xor          s3, s7, t0
147:              xori         t6, s2, 1329
                  lui          s6, 150488
                  bgeu         s4, zero, 166f
150:              beq          t5, a1, 158f
                  srli         ra, s5, 7
                  auipc        s2, 41740
                  bltu         s11, s2, 158f
154:              sltiu        zero, t0, 1420
                  sltu         t1, t4, s5
                  blt          s8, tp, 172f
                  sra          zero, t4, a5
158:              slli         t2, sp, 12
                  blt          t1, sp, 173f
                  slti         s6, a6, 1970
                  andi         t6, s9, 1286
                  sra          a5, t3, zero
                  slt          s8, s4, t6
                  lui          sp, 28037
                  sltu         s5, a3, zero
166:              xor          s10, a6, s6
                  lui          sp, 214815
                  sltu         a4, s3, s1
                  sll          a2, a7, sp
                  slt          s7, zero, s10
                  lui          t0, 807762
172:              add          a2, t1, s6
173:              or           a6, s4, s11
                  add          s7, t4, s7
                  srai         s11, tp, 26
                  slt          s3, t6, sp
                  xor          t6, s10, s8
                  and          a4, s5, s8
                  sltu         a4, a5, sp
                  slti         t0, s5, 55
                  ori          s11, t2, -479
                  andi         tp, s1, -1351
                  xor          s2, s3, t5
                  sltiu        s9, t6, 305
                  srli         s9, s3, 5
                  srai         t4, s2, 11
                  srai         gp, s0, 10
                  slt          gp, s4, a7
                  beq          s4, gp, 194f
                  nop
                  slti         t2, t2, 1850
                  bge          gp, zero, 196f
                  bltu         s2, s11, 211f
194:              bltu         a0, a1, 214f
                  bne          t2, a3, 204f
196:              slt          tp, t2, s0
                  sra          a4, s8, s9
                  or           s3, ra, s0
                  sll          s6, t3, ra
                  and          a0, s4, a5
                  blt          s2, t6, 219f
                  bltu         s7, ra, 220f
                  slt          ra, t5, ra
204:              slt          t1, s6, a4
                  xor          t1, s10, ra
                  or           s6, t0, s9
                  sll          s11, a1, s6
                  lui          s8, 229696
                  slli         sp, s6, 7
                  lui          a3, 62117
211:              addi         t0, gp, -1907
                  la           sp, region_0+776 #start riscv_load_store_rand_instr_stream_0
                  nop
                  lb           t0, -230(sp)
                  lhu          a4, -54(sp)
                  xor          a0, t1, t5
                  add          a5, s11, t3
                  lbu          t4, -223(sp)
                  sb           a5, -98(sp)
                  srli         t2, t2, 2
                  lb           s11, -114(sp)
                  srai         s1, a4, 18
                  nop
                  srai         a5, s7, 20
                  lb           s9, 77(sp)
                  sh           s8, -130(sp)
                  lb           s1, -102(sp)
                  lbu          s0, 105(sp)
                  nop
                  sb           s5, -239(sp)
                  and          a3, a3, s0
                  addi         s6, a4, 888
                  lhu          s5, 194(sp)
                  ori          s1, sp, 180
                  sb           s4, 85(sp)
                  slt          s8, s8, s9
                  lbu          tp, -23(sp)
                  sb           a2, 204(sp)
                  sb           t3, 233(sp)
                  lb           s10, 21(sp)
                  slt          zero, s7, s3
                  sb           s10, -169(sp)
                  lbu          s6, -35(sp)
                  sub          t6, zero, a3
                  lbu          s2, 215(sp)
                  sb           a0, 127(sp)
                  sb           a3, -23(sp)
                  lb           gp, -106(sp)
                  srl          s6, t5, sp
                  sb           t0, 5(sp)
                  slli         a6, a5, 12
                  sw           s7, 16(sp)
                  lbu          t0, 45(sp)
                  sb           s0, 183(sp)
                  sra          zero, t5, a7
                  slti         t5, ra, 355
                  sra          t5, a2, s7
                  lbu          s7, -37(sp)
                  slti         a4, a0, -559
                  sb           tp, 71(sp) #end riscv_load_store_rand_instr_stream_0
                  srl          s10, s8, gp
                  auipc        s9, 319402
214:              xor          s0, a2, ra
                  xor          s8, zero, a0
                  sltu         a1, s9, a5
                  nop
                  add          s8, s8, s0
219:              add          a3, t5, a2
220:              or           t6, s8, s3
                  auipc        t2, 113284
                  srl          t6, s3, s10
                  slti         t0, t5, 61
                  lui          t4, 848876
                  xori         s6, t6, 517
                  slt          s2, a3, a6
                  ori          s1, gp, -542
                  bne          t4, zero, 236f
                  slli         ra, s4, 19
                  addi         t1, s2, -143
                  or           ra, t2, a4
                  srai         t4, s9, 28
                  beq          t2, s8, 245f
                  sll          t5, s8, gp
                  sltiu        a4, tp, -140
236:              slt          a2, a1, s10
                  bne          a3, s10, 250f
                  bltu         t0, ra, 253f
                  nop
                  sll          a4, zero, t3
                  bltu         a2, t2, 250f
                  sub          gp, s6, a7
                  auipc        a3, 16041
                  sll          gp, s9, s6
245:              auipc        a1, 131975
                  lui          t4, 456130
                  sra          tp, s6, t5
                  and          t2, ra, t5
                  bltu         a1, a5, 265f
250:              and          s7, tp, ra
                  xor          a6, s3, a1
                  add          s8, t5, s6
253:              andi         a0, s8, -1167
                  bgeu         t6, t2, 269f
                  blt          t5, a7, 260f
                  andi         zero, s3, -128
                  addi         zero, s0, -1807
                  sra          tp, sp, s11
                  andi         tp, s8, 449
260:              add          s2, t0, t0
                  bgeu         s1, a4, 267f
                  slt          t4, s5, s4
                  and          ra, ra, t5
                  ori          sp, a7, -1088
265:              addi         s3, tp, -1818
                  add          s3, s11, s4
267:              srl          gp, a0, a2
                  and          sp, s8, t6
269:              slti         s1, a5, -503
                  blt          a7, s4, 290f
                  sll          sp, a5, tp
                  bne          t0, s7, 283f
                  slli         s10, s8, 27
                  add          s6, t6, t6
                  bgeu         s2, a4, 282f
                  bge          gp, a4, 289f
                  bltu         t2, s10, 293f
                  slti         t1, s11, 512
                  ori          t5, s9, 854
                  auipc        a3, 1046527
                  xori         s0, a1, -1541
282:              bge          s2, gp, 296f
283:              sra          s9, a3, tp
                  sltiu        a6, ra, -1807
                  ori          a3, s9, -675
                  nop
                  srl          a1, s1, t1
                  bltu         tp, s3, 292f
289:              slt          a4, s11, s3
290:              addi         s5, s3, 994
                  bgeu         ra, t0, 296f
292:              addi         t6, s9, -1051
293:              bgeu         tp, t6, 305f
                  auipc        a6, 375361
                  sltu         a2, tp, zero
296:              or           a4, s4, a0
                  srai         t6, s2, 23
                  and          s5, s9, s10
                  slti         a0, a2, 1653
                  bne          s1, s9, 316f
                  bltu         zero, s11, 314f
                  sll          s0, s6, t1
                  sub          t4, tp, s9
                  and          tp, s7, s11
305:              sll          s2, a6, s3
                  lui          sp, 311299
                  sll          a0, zero, t3
                  slti         s3, t1, -35
                  srai         t0, s7, 1
                  xor          ra, a0, s5
                  auipc        t4, 47129
                  beq          a1, t3, 328f
                  sltiu        s11, s9, 1328
314:              xori         s5, tp, -1584
                  srai         s11, s9, 9
316:              and          a1, gp, a3
                  and          sp, a7, s6
                  and          a0, a0, t5
                  sub          t4, t4, a6
                  sltiu        a0, s8, -1481
                  bltu         t1, s6, 322f
322:              slti         t6, s2, -1389
                  xor          a4, a0, s3
                  sltiu        t2, s0, 513
                  auipc        a6, 85005
                  bltu         sp, a0, 341f
                  sll          ra, t3, a5
328:              bne          s2, s6, 330f
                  add          t1, sp, s1
330:              bgeu         gp, s9, 337f
                  addi         s5, a3, 610
                  srai         s2, s5, 12
                  xor          sp, s5, s5
                  or           t4, t6, tp
                  or           a6, t1, a7
                  xor          a1, s9, t6
337:              nop
                  bgeu         a6, s5, 347f
                  bne          a1, a3, 354f
                  bne          a3, s6, 352f
341:              xor          t5, a7, zero
                  srli         t6, s3, 3
                  sub          s11, a1, s5
                  addi         a3, tp, -88
                  sub          s8, tp, sp
                  andi         s1, s9, -39
347:              or           a0, t2, tp
                  beq          a0, s6, 363f
                  sub          t4, a4, s11
                  srai         s2, s9, 1
                  nop
352:              xori         t5, s10, -1517
                  beq          s7, zero, 373f
354:              xor          a5, t1, zero
                  or           s2, s8, s10
                  srl          a5, a5, tp
                  auipc        s6, 878189
                  beq          s0, a6, 369f
                  beq          zero, a3, 364f
                  or           s2, s10, t2
                  xori         t2, zero, 851
                  sltu         s7, s5, s4
363:              xor          s7, a2, s10
364:              bge          zero, s9, 369f
                  blt          s6, s6, 381f
                  sra          a6, zero, s2
                  beq          a4, s1, 376f
                  bgeu         a1, a6, 386f
369:              slli         a6, s11, 25
                  and          s7, t0, a4
                  slli         s8, s1, 19
                  bltu         s9, ra, 390f
373:              bgeu         s1, s6, 379f
                  and          s6, t2, s4
                  andi         s7, a1, 1082
376:              bltu         a6, t2, 389f
                  bge          s1, s4, 394f
                  add          gp, s3, s7
379:              andi         t4, t6, 630
                  sub          ra, t3, s4
381:              sub          s3, sp, zero
                  slt          a4, tp, s4
                  sltiu        a0, t5, 1293
                  bltu         a4, s3, 392f
                  blt          a6, s9, 405f
386:              slt          t6, t6, s5
                  andi         ra, zero, 772
                  xor          s0, t4, a5
389:              bgeu         s7, s9, 397f
390:              slt          s2, ra, s2
                  bltu         t3, a6, 409f
392:              slti         sp, a1, 119
                  sub          zero, t0, a2
394:              addi         t4, t4, 21
                  sll          t5, sp, a7
                  auipc        a4, 561996
397:              nop
                  sltu         s11, s5, t2
                  sub          t1, ra, a6
                  add          tp, s0, s8
                  sltu         a6, a2, sp
                  lui          tp, 1047368
                  xori         t2, s1, 1725
                  sra          t6, s5, s1
405:              auipc        s2, 665638
                  slli         t0, a3, 6
                  slli         a0, zero, 12
                  and          t4, t3, t0
409:              beq          s4, s3, 421f
                  xori         a2, a0, -1179
                  srli         a5, t2, 26
                  sub          a5, a2, t6
                  ori          s0, t2, 1213
                  sltiu        t1, s2, -654
                  add          a4, t0, s8
                  sll          a1, a1, a2
                  nop
                  xor          s6, t1, zero
                  lui          gp, 688930
                  bltu         a7, s4, 434f
421:              slli         t5, a7, 17
                  add          s0, gp, s9
                  andi         t1, t0, 288
                  slti         t4, a0, 482
                  and          sp, a7, s3
                  bltu         s3, s5, 444f
                  slti         s1, s4, 157
                  sll          t4, s6, s9
                  ori          t5, s0, -268
                  slli         sp, t0, 22
                  srai         gp, gp, 11
                  srl          ra, ra, s9
                  bge          a0, t4, 446f
434:              or           s9, t1, t3
                  addi         a6, s6, -1012
                  bne          a5, sp, 453f
                  slt          t5, a6, s0
                  add          t4, s11, s6
                  auipc        s8, 457421
                  sltiu        t2, sp, 1702
                  srai         a6, t0, 4
                  lui          s1, 300039
                  ori          t4, t4, -1423
444:              srli         s9, s6, 13
                  sub          a0, a0, t5
446:              srli         a5, s10, 2
                  slti         s5, s3, -316
                  sub          tp, sp, s7
                  or           t0, s3, s10
                  srli         s3, ra, 3
                  addi         t0, t0, -1466
                  slti         t4, s7, -1168
453:              sll          zero, s9, a3
                  xori         a3, s5, -1055
                  ori          a2, a0, 1699
                  ori          s7, a4, -195
                  bge          s0, a5, 465f
                  sll          s5, t1, s9
                  bltu         s11, t0, 468f
                  xori         a3, s0, -932
                  sltu         tp, a2, s11
                  lui          t4, 40270
                  sll          a1, s7, s2
                  andi         t1, tp, 1152
465:              or           zero, t6, a1
                  sltiu        s6, s1, 1732
                  or           a1, a1, s7
468:              srl          a5, t5, s4
                  auipc        s10, 394716
                  sltiu        s2, a1, -1968
                  srl          sp, a5, gp
                  lui          t4, 193905
                  beq          a1, t2, 486f
                  xori         s9, ra, 44
                  ori          s5, t4, -1563
                  srl          t2, sp, s2
                  ori          s7, s1, -1243
                  sltu         gp, s0, gp
                  srli         t2, a3, 12
                  srai         a2, s3, 25
                  sub          t2, s8, s6
                  slli         s6, sp, 25
                  xor          s0, a4, s6
                  sltu         t6, a4, s4
                  xor          t4, t4, s4
                  sltiu        a0, t0, -1872
                  srai         a1, s8, 18
                  nop
                  la           ra, sub_4
                  and          s1, s4, sp
                  addi         ra, ra, -13
                  addi         t0, s10, 1672
                  slli         t5, s6, 9
                  ori          a3, a3, 1890
sub_3_j5:         jalr         s3, ra, 14 #jump sub_3 -> sub_4
486:              nop
                  nop
                  srli         a6, s4, 13
                  blt          s6, a4, 496f
                  slli         s6, a2, 14
                  sltiu        s11, s5, 904
                  bgeu         s1, t1, 496f
                  ori          s2, a3, 1720
                  sltiu        s2, s8, 145
                  xori         s1, s7, -358
496:              auipc        tp, 544354
                  srli         s5, tp, 22
                  lw           s3, 4(s4)
                  sltiu        s8, a7, 1376
                  sra          s1, s7, t4
                  or           zero, s11, s10
                  andi         s5, t6, -1997
                  addi         s4, s4, 60
                  lui          s8, 458974
                  sll          gp, t6, s5
                  sra          s2, s1, tp
676:              addi x29, x19, 0
676:              jalr x29, x29, 0
sub_5:            or           t4, a3, a7
                  addi         s4, s4, -20
                  sub          t6, tp, a7
                  andi         zero, a2, 431
                  andi         t5, a1, 1681
                  sw           s3, 4(s4)
                  srl          s1, a6, s0
                  bltu         s5, a4, sub_5_j8 #branch to jump instr
                  srai         s8, a6, 16
                  sub          zero, s3, t2
                  or           a3, t6, sp
                  ori          a4, a0, -838
                  nop
                  or           s9, t3, a6
                  slli         zero, s4, 11
                  srai         a4, s1, 6
                  sra          s1, a5, zero
                  or           s7, a3, s7
sub_5_j8:         jal          s3, sub_7 #jump sub_5 -> sub_7
                  la           s5, region_1+326 #start riscv_load_store_rand_instr_stream_0
                  lb           s9, 1143(s5)
                  lhu          zero, 1544(s5)
                  lw           s7, -74(s5)
                  sb           s1, 982(s5)
                  ori          s0, a1, 1283
                  sb           t1, 875(s5)
                  slti         s2, gp, 989
                  lbu          sp, 1215(s5)
                  lbu          a0, 1432(s5)
                  sra          a3, s0, t3
                  lb           ra, 1645(s5)
                  lb           a2, 1065(s5)
                  andi         s0, s3, 2
                  srai         t2, ra, 13
                  lbu          t0, 987(s5)
                  lbu          s10, 767(s5)
                  sltu         t5, t6, t5
                  slli         a5, s9, 21
                  lb           t5, 1180(s5)
                  lh           gp, -182(s5)
                  lui          a1, 107361
                  srai         a5, a7, 22
                  lb           s9, 183(s5)
                  lbu          s3, 1325(s5)
                  slli         a3, gp, 27
                  sb           s2, -197(s5)
                  add          t1, a6, s6
                  slti         t1, s7, -1991
                  lbu          a5, 497(s5)
                  srl          a5, s0, s1
                  lbu          s9, 1593(s5)
                  addi         a6, gp, -1855
                  lbu          t6, 954(s5)
                  sltiu        a4, s0, -1158
                  sltu         a0, zero, t1
                  lhu          t0, 1250(s5)
                  slli         a6, a0, 18
                  sb           a7, -41(s5)
                  lh           t5, 978(s5) #end riscv_load_store_rand_instr_stream_0
                  srai         a2, s4, 9
                  andi         s11, s7, -874
                  bgeu         a5, a2, 22f
                  slli         ra, a1, 0
                  or           s9, s0, a4
                  slti         gp, a2, -252
                  xori         s9, t0, 1694
                  blt          a0, s0, 10f
                  bltu         a2, s1, 13f
                  sra          tp, tp, t1
10:               blt          s10, gp, 25f
                  srai         s0, a6, 6
                  srai         s7, t0, 29
13:               srai         s6, a5, 22
                  sll          s8, t4, s4
                  nop
                  sub          s1, s1, a2
                  ori          t6, a7, 80
                  auipc        t0, 125653
                  blt          s9, t0, 27f
                  ori          t0, t6, -1752
                  blt          s4, s2, 34f
22:               bne          a1, a5, 40f
                  bgeu         t5, ra, 37f
                  nop
25:               slti         t5, a4, 367
                  xori         a3, s9, -84
27:               xori         s1, s8, 1818
                  andi         t0, s5, 80
                  sub          s9, a1, a4
                  addi         a1, s0, 236
                  andi         a0, s4, -229
                  nop
                  lui          zero, 154112
34:               slt          s3, a1, s2
                  slli         tp, t2, 5
                  sltiu        a6, tp, -993
37:               blt          s9, s6, 41f
                  slli         t1, s2, 19
                  beq          s9, t3, 45f
40:               sra          a6, t4, s6
41:               slti         s3, s0, 1
                  sll          s11, sp, t3
                  xori         t1, t0, 1240
                  bgeu         a4, t6, 57f
45:               srli         s9, s10, 18
                  lui          a4, 701233
                  lui          a2, 523697
                  nop
                  sra          t4, s1, ra
                  bltu         s7, s7, 63f
                  nop
                  and          a0, s7, s6
                  or           t0, zero, a6
                  xori         s9, a7, 754
                  addi         s11, s3, 267
                  ori          t2, s10, -786
57:               or           s0, a1, s7
                  slt          t5, gp, t1
                  bne          a4, a2, 71f
                  sll          s3, gp, s5
                  slt          s2, s7, tp
                  srl          t2, ra, t4
63:               andi         s7, tp, -1646
                  bne          a6, s8, 70f
                  blt          s6, a6, 85f
                  xor          t1, s4, tp
                  addi         a2, a2, 523
                  beq          a3, s6, 80f
                  srl          tp, a7, s0
70:               slli         s7, t6, 9
71:               slt          t1, s4, s7
                  sltiu        t6, a4, 44
                  xori         s0, s10, 336
                  nop
                  srai         s5, s4, 18
                  sra          t0, t3, t2
                  beq          t1, s0, 83f
                  slli         a6, gp, 3
                  ori          t2, t3, -739
80:               sltu         s11, s9, s8
                  sll          s1, t6, tp
                  xor          a6, s1, tp
83:               xori         t6, a5, -1453
                  or           t2, t6, s10
85:               andi         a3, s4, 1041
                  beq          t5, a5, 98f
                  bge          s7, a4, 96f
                  lui          s7, 367757
                  bgeu         a6, a0, 92f
                  add          t2, a6, t3
                  or           sp, gp, t4
92:               sll          t6, s6, t4
                  or           t1, zero, s5
                  srai         gp, a3, 18
                  sltiu        s3, s2, -1594
96:               sub          a4, t4, s3
                  xori         zero, s1, -1234
98:               add          gp, t0, t2
                  ori          s10, s0, 941
                  xor          sp, a2, t2
                  sltiu        a1, a0, -534
                  sltu         tp, s0, s6
                  and          t0, s6, s2
                  bge          s10, s9, 105f
105:              slli         s1, t5, 3
                  ori          s3, tp, -1854
                  addi         s1, s2, 1990
                  srai         zero, a2, 8
                  auipc        t6, 38767
                  or           s0, t1, s9
                  sra          t0, s10, t5
                  srli         s1, a4, 20
                  and          t0, s10, a1
                  sltiu        s2, s1, 1035
                  and          t5, a7, sp
                  slt          s2, gp, zero
                  sub          a2, a1, a5
                  bne          s2, a5, 122f
                  bne          s5, s0, 122f
                  lui          t6, 93188
                  auipc        s5, 95808
122:              addi         s10, s3, -1385
                  bltu         a2, a3, 124f
124:              ori          s6, a4, 420
                  slt          t1, a3, a3
                  sltu         t1, s5, s5
                  lw           s3, 4(s4)
                  srl          t0, a3, t5
                  sll          s2, tp, s3
                  addi         s4, s4, 20
                  add          t0, a1, a5
                  sltu         gp, t5, a3
                  slli         gp, s11, 4
                  addi         a6, a7, 214
194:              addi x15, x19, 1
194:              jalr x15, x15, 0
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
.word 0x87b9d213, 0x8d734d76, 0x5780f3ab, 0xc1319162, 0x21c5364a, 0xa335eca8, 0xf6bff0b2, 0xdf8e3364
.word 0x37bc818e, 0xbb3b92bc, 0xb9617edf, 0x7bf49107, 0x389e3b23, 0xccc995cf, 0x7b5237b3, 0xd8061f63
.word 0xc4113623, 0x63ed308f, 0xc6816ab0, 0x47c7120b, 0x0e7958e3, 0xb2e023ee, 0x3bf9316c, 0x55ede6f6
.word 0xc25924c9, 0xc1baff91, 0xcd8db28e, 0x2ca5cc0f, 0x868cfb8b, 0xa315905b, 0x73141609, 0xbc32cda3
.word 0xfd24b4e5, 0x9a4ac61e, 0x5adfc2d3, 0x627a0dc1, 0x7fbc1627, 0x848270c3, 0x11ae9add, 0x2fdcb6b6
.word 0x55abbe7a, 0x8bbac11d, 0x665c0ac4, 0x12d9ed24, 0x8e9c4f2d, 0xe229b4a9, 0xda11ce7b, 0xe8285581
.word 0x2b21736f, 0x1ca4764d, 0x5af84e4d, 0xd8eb7d20, 0xca565616, 0x2b1d9ff8, 0x7e8f6f57, 0x23cddc11
.word 0x781a777d, 0x4f7ff1ed, 0xaee54984, 0x6f5c5abf, 0xb224515f, 0xad26a573, 0x619c7f7f, 0x588ff558
.word 0x2b1ed8d3, 0x48a6561e, 0x6e3a53d7, 0x6816f380, 0xfe359e33, 0xc309ac1b, 0x064242cc, 0xccaa9659
.word 0xd02b72bb, 0xc59301a1, 0x13afbcf1, 0x82b0d827, 0x37b9cd71, 0xee7679d3, 0x474ec520, 0x646e623f
.word 0x9e96e029, 0x010db36c, 0x3480079e, 0x231f4504, 0x090c537b, 0x3ae0e128, 0x45131c0a, 0xd69f5703
.word 0xe1a7d586, 0xc9df0834, 0x4fdfcfdb, 0xb4472d88, 0xa088f160, 0x25d7f3b2, 0x3383b7b0, 0xbd2d34a3
.word 0x97be250b, 0xa6e5791a, 0x04239b4d, 0x94028972, 0x43e2026b, 0xb69b3d2f, 0x08691343, 0xf454f336
.word 0x95eaa071, 0xdd8a1f7a, 0x23b8c979, 0x168a75ed, 0x9eac3dd9, 0x2bd069cc, 0xf83cff8a, 0x74323ddd
.word 0x20deaa80, 0x3150a388, 0x8e2c52c8, 0x505cc8d8, 0x3987b71e, 0x86cb1d53, 0x280cea72, 0xa13dd49d
.word 0xb934a71f, 0xa3f01c68, 0xa64618aa, 0x02579562, 0x939d4280, 0x62d8ba98, 0x157f0696, 0x96de3357
.word 0x74821c0d, 0x1f6f9e36, 0x9903623b, 0x23b03e25, 0xb368b347, 0xbf9ed858, 0x256e962c, 0xe5557efb
.word 0x389dbf81, 0x2fff630f, 0x78c41531, 0x9d9a59d3, 0x562973e5, 0x960a470d, 0xeadf19d0, 0x84bd8077
.word 0xadb8916a, 0x017b327f, 0x3cdf623c, 0x94cab05c, 0xa4c5ab3e, 0xa592ac32, 0x3ccb8e5d, 0x9f4500b1
.word 0x1c0de798, 0x0c871f6d, 0xcd23248c, 0x874c5352, 0xf0373406, 0xeab84965, 0xb07113e8, 0xcf1823c4
.word 0x2979a3e6, 0xc370df27, 0xdbc4f3d2, 0x1e706c30, 0x8f9b61b7, 0xc93d247c, 0x82febc30, 0x4bcf4fd6
.word 0xd9a6c1f3, 0x20814970, 0x0ee4cb20, 0x91a5f287, 0xac24350a, 0x5d1ee451, 0x7a9a82b1, 0x323ad044
.word 0x5a1dee4b, 0xb5cd9925, 0x9d96e1e5, 0x6afd1e54, 0x5bdded18, 0x9f08865a, 0xad70f409, 0xa5151ee2
.word 0x4847218d, 0x68539602, 0x5144d284, 0x9695fba1, 0xaf49f75f, 0xc364202d, 0x14730106, 0x217c1185
.word 0x21fbae44, 0xb13a7bef, 0x70948db9, 0x45b6300b, 0xd75c3c3a, 0x322572c0, 0xc44e76ab, 0x0194527c
.word 0x38c2c2c8, 0x3cb882ea, 0x61dc8ea7, 0x98899145, 0x8723cbd2, 0xd343a3a8, 0x05c5e6c2, 0x8d434eb2
.word 0x70e5b4ce, 0x4c3934eb, 0xf1f604dc, 0xd716c074, 0x58cd6026, 0xa2c4103e, 0xa8ad62d3, 0xa8b4875c
.word 0x0b259643, 0xa947efd9, 0xad25c522, 0xc50bbc29, 0x9e263a81, 0xe5b1f90a, 0x791f12ca, 0x215f2780
.word 0xc888114c, 0x25d2200b, 0x9d7f857c, 0xfec4203c, 0xb828e008, 0xb6c0e0c1, 0x41b5178d, 0xa42d4a45
.word 0x623711a7, 0x0eba72de, 0xa6a52072, 0x5c4bc4c9, 0x5c77d003, 0x185e7f70, 0xbe69fd4d, 0x5b32e164
.word 0x6db54ae0, 0x37b72ab2, 0x7299834f, 0xd560cd19, 0x0c5919ed, 0xbf563317, 0xc65cbcab, 0x7b70ae70
.word 0x2b34da94, 0xa5c88db7, 0xf6206374, 0x8ed3c274, 0x6cb65e6e, 0x14bad871, 0x4ed328ca, 0x7a142705
.word 0xc0009d3e, 0x3460c1f9, 0x5d8239fd, 0x53c71751, 0x990f2ba4, 0x1d8e3e48, 0xfe95ea52, 0x439f0958
.word 0x9516e01a, 0x1c230bf5, 0x967440f4, 0xb0914da1, 0x867a8b5e, 0x5020bf84, 0x9b91ae42, 0xdc948430
.word 0xa7d39e6f, 0x614a91be, 0x48333130, 0xa428c071, 0x06cf3aa7, 0x6b093c42, 0xe93d6c7c, 0xfe915049
.word 0xe3d77882, 0xdf5c170a, 0xa829363a, 0x9b30346b, 0x4cb4fbad, 0x9fc0e362, 0xceba65e2, 0x53f36aa5
.word 0x15d546e6, 0x2916412c, 0xb04d54b2, 0xf6d6f0ff, 0x9159bbfa, 0xbdc99ba6, 0x28912d6f, 0x4fcc1274
.word 0xe0a5dacb, 0xdf64f314, 0x00a46ed3, 0x3126aa1d, 0x6c2b724a, 0x383f2299, 0x78e457e1, 0xd4d7a676
.word 0xf491a778, 0xd989d2a9, 0x7c094932, 0x9fa65e61, 0xd87d1646, 0xb39a79cb, 0x1aa188e1, 0xa1e63b7b
.word 0x0dc5c087, 0xcf394e6d, 0x573aeec2, 0x0bfcf174, 0x747c4f3c, 0xc5ee4e49, 0xc7ae640b, 0x66eefc20
.word 0x25791f95, 0xee66c78f, 0x2796f3b4, 0x0e102918, 0x9a7dae5e, 0x4b52310b, 0xf56a2d77, 0x1d88313c
.word 0xaec64aff, 0x27e7d203, 0x6042b6a8, 0xd8458726, 0xa8536c6c, 0xc1587ee9, 0x69bcd7a4, 0xe8eae89f
.word 0x1ab300c3, 0x257eed30, 0x24d51de3, 0x4e8d9d5e, 0xd4eff435, 0x71f6c59f, 0x2c4acd71, 0x20112210
.word 0xfb08f34e, 0xd4e0b936, 0x745adae6, 0x3116774b, 0xd0a6bc83, 0x6a2243b2, 0x6d70169b, 0xc3a5bcb3
.word 0xd3426b38, 0x1e1cebff, 0xfb2743b5, 0x0b94cccf, 0xde9b43b3, 0x08f9c061, 0x6f222aa8, 0x076e96bb
.word 0xdca447f9, 0xa765780c, 0x084cd8a7, 0x358a4228, 0x6d2289ad, 0x39b0632e, 0x5755faff, 0x5132ddbd
.word 0x5b642715, 0xfc2c18f1, 0xc451fd01, 0x90d36149, 0xf8c0e5d0, 0xa247743f, 0xc01aa876, 0xe74b900c
.word 0x907d875f, 0x421a4b91, 0x46b5bebc, 0x7cc3264f, 0x8b8cb99a, 0xfa7144a7, 0xce85b5af, 0xdf07de19
.word 0xe4f76bb5, 0x310cdaf3, 0x023a37c3, 0x809f9421, 0x1ae71d93, 0xe44810a9, 0xed8a02d2, 0x3880947f
.word 0x333392c0, 0x15a485eb, 0x7a19c2b7, 0xc00f849f, 0xd17a5588, 0x8ae8a561, 0xf9c64bf9, 0xe35f239e
.word 0x3cdd848d, 0x815dc200, 0x7709752d, 0x85e2f6ae, 0x7705ef23, 0xa091b9f3, 0x35599d05, 0x43d48bb3
.word 0x0d4d1a7e, 0xa2290155, 0xd4d5fdbe, 0x12cd39aa, 0x3cec7a7f, 0xe4c5cf0d, 0xbceb0e14, 0x1a47cde5
.word 0x00c26ce0, 0xa7c5ef5b, 0xb117ebe9, 0x3d4e8a29, 0xfe28c394, 0xc07fc640, 0x4d704cf0, 0x49da564b
.word 0x300f395f, 0xf2eddf0b, 0xd9020368, 0x3790e1eb, 0xbda905eb, 0xa90a2879, 0xc1270b8a, 0x1aee7ae5
.word 0xbff1f4d2, 0x9ecb52b3, 0x2df11b0d, 0x4075f0e2, 0xf53923c7, 0x677ad1f1, 0xa1fc3283, 0x42cf71ac
.word 0x5e57d723, 0x2bfcb127, 0x66471d99, 0x0cfa83c8, 0xd97f8e9e, 0xb10bf911, 0xed896cf4, 0x04fbaa51
.word 0x3d99367b, 0x7912fd45, 0x441e35d8, 0x0bf0199d, 0x20738dac, 0xf399221c, 0x9083f44c, 0xd14e57f7
.word 0xd03f5686, 0xc9030e42, 0x664b325f, 0x97462fb9, 0x0aeb7a6d, 0x40f0b8be, 0xb9a7c1e2, 0xeecbd4c6
.word 0x00fff685, 0xce5d1807, 0x4ee49db4, 0xf8506874, 0xd1d6b548, 0x350690eb, 0xd8240675, 0xc551ef03
.word 0x4a3df989, 0xfed49d22, 0x606bd829, 0xefcbfaee, 0xf73d8b94, 0xf57691a1, 0x57376a19, 0xc23fe6d0
.word 0xf08b9977, 0xd2880f32, 0x267e8a29, 0x2854cd91, 0x9daed2ab, 0x89b8cba5, 0x8f1c09f6, 0xb8e327cd
.word 0x6ff43567, 0xf0880c0b, 0xd0e1ce8e, 0x937f56cf, 0x0371f7f7, 0x52bfe117, 0xaf0410a9, 0x01f9c733
.word 0x380f055c, 0xbbd47f03, 0x0f35f434, 0x30945723
.section .region_1,"aw",@progbits;
region_1:
.word 0xc3a1dd0e, 0x36163d3f, 0x167dc1f4, 0x2d4c7109, 0x8d9f111f, 0xfe90e141, 0xab6d0006, 0x72cb0aa3
.word 0xfa5cb5bd, 0x04ff3906, 0x4c0dd69c, 0x7e57277f, 0x12a485bd, 0x5893f844, 0x9b57aed3, 0xb86c6394
.word 0xee7cae31, 0x0bbca9b4, 0xa6eb6bda, 0x09c47c50, 0x3b5602ad, 0x642748ef, 0xfc483d78, 0x9768433a
.word 0xcf4d3e73, 0x765ae85d, 0x252d6771, 0xf16adbab, 0x55258dde, 0x8e41ff4d, 0x08c8dd7d, 0x3bbc2fb6
.word 0x1887fa7a, 0x84caa2c1, 0x8027c9a8, 0x567c5472, 0x61fefca2, 0x7ef94c75, 0xc20ed664, 0x6aea5c81
.word 0xdef13004, 0x6f1c8064, 0x73a70517, 0xeeba1366, 0xf1718902, 0x5c10af5f, 0x58930c6e, 0x64ff474f
.word 0xd72d4244, 0x96cd7ca0, 0x6cebcb56, 0x1aeb4bc3, 0x2bde2247, 0xf6f42c7d, 0x97819411, 0x93af7dd6
.word 0xff60db16, 0x361b5dd3, 0x94a8a3d4, 0x81198ff8, 0xd56f8c66, 0xb4404bd7, 0xabf25702, 0xfa670b25
.word 0x7dd70e87, 0xa9ef6830, 0x260d5a85, 0x556352b1, 0x5d110526, 0xcf8239c9, 0xf91a5bad, 0xb277c58a
.word 0x2e3302c2, 0x7b6ff2d7, 0x95a266db, 0xb6c10df3, 0xd992dc09, 0x6904a0d0, 0xd7e70741, 0xf5838e40
.word 0x97b9d104, 0xe95c114b, 0xb6f9298e, 0xc4fe5edd, 0x13904b3b, 0x59da0879, 0xa2180c33, 0x3c8fb91e
.word 0x33cc68f5, 0xbe5dc570, 0x6e35296d, 0x7b2e7d24, 0xc011d610, 0x0f6d6366, 0x4e8471f4, 0x785077d4
.word 0x8642afd0, 0xd85ba92b, 0x45bfa93c, 0x08ce5db1, 0x8c9356a4, 0x6422f51d, 0xc86a9080, 0x44e0f329
.word 0x50bd3627, 0x94a91008, 0x63b448f7, 0xd2c5f7bd, 0xdb971791, 0x77282a1f, 0xfc2a7e8c, 0xd71d6e00
.word 0x78f8bd39, 0xa502706b, 0x9ec87bd8, 0xca513e9a, 0xdb18140c, 0x90a6e535, 0x6f1da4b0, 0xbe7f7d79
.word 0x2160723c, 0xda86bcc4, 0xd9366c7a, 0x0a5d02af, 0xa29dc40a, 0xcc1aad0b, 0x019b61eb, 0xc5d39a5a
.word 0x75f6bbde, 0x23f08ea3, 0x02076d3e, 0xcdb96f1f, 0xe16aa9a5, 0x179683af, 0xa90d7617, 0xaf8c0a99
.word 0x4dd35304, 0x09814dd9, 0x05b6c860, 0xee915041, 0x2b482faa, 0x38a20a81, 0xada57005, 0x76baa091
.word 0xeabcad4d, 0x34ee576c, 0x0b576fbe, 0x93bd555c, 0x266252c5, 0x1c589c0a, 0xbfbfee4d, 0x88c08a42
.word 0x5d533ff9, 0x4ad46ea9, 0xb6eebc47, 0x9224ed05, 0xa09f7a28, 0xf1e5b1d5, 0xbeb97cba, 0x97bb743f
.word 0x43c41c77, 0x68bc44c7, 0x8e4ccba1, 0x527b69bb, 0x5f8e64ad, 0x77dc823f, 0xadf3d0c3, 0x78ca2df4
.word 0x2156a9bd, 0xb5bac182, 0x84a9bc08, 0x5bc08797, 0x6fc59fe9, 0x9c3d4c80, 0x7a2bd769, 0x5ee1eab6
.word 0xe9d1ca66, 0x555e00c9, 0xdcd879ff, 0xa3b6df61, 0xf3eb686f, 0xcc7e4c39, 0x07b0a1d1, 0x82d21212
.word 0x667863d5, 0xb3933cf3, 0x128bb220, 0x18c68723, 0xe8a2eb3f, 0x36b25dd1, 0x9784b691, 0x61af9c8c
.word 0x21adbe50, 0x3d7dafd7, 0xc775f4d9, 0xfa82f4f3, 0x10bb1d44, 0xf2fb4f5f, 0xb4734221, 0x2b648919
.word 0x59faefb5, 0x88d87d3f, 0xa76a240b, 0xf4dfce8c, 0xcb014d03, 0x3c8910f1, 0x5b884820, 0x70dd02de
.word 0x3408c122, 0x3ddc981d, 0x47c70fd8, 0xf370b77c, 0x71c495c4, 0x5ecdb9d8, 0x520d9f68, 0x54965743
.word 0x5ac4e73a, 0x8578fa32, 0x9f9709a7, 0xb19ce599, 0x4175c9b3, 0x137fecb4, 0x6176abbf, 0xa46fffb7
.word 0xa7430974, 0xe26b33c2, 0x5a395407, 0xcb6cbedf, 0x61deab1e, 0xf72ad704, 0xc2567e29, 0x2ba68f78
.word 0x4c27f318, 0xa3de3b64, 0xeaaae566, 0x49e35d97, 0x8bd6e4f3, 0x4268b65f, 0x2b1351de, 0x9465cc9d
.word 0xa88fb915, 0x82c63db4, 0xcaa831d5, 0x114c10d1, 0x1d2477d5, 0x36a3f17a, 0x550eb7fa, 0xb03d8efa
.word 0x239b45e6, 0x308d1e38, 0xf8fbbba1, 0xb76191c2, 0x4d622b4b, 0x97381ae4, 0x5d334ea4, 0x86a80a91
.word 0x73ecd49a, 0x2fc914de, 0x505cb10f, 0x70469ca8, 0x0314e628, 0xdbb043b4, 0x6129db6c, 0x56ff2b5c
.word 0x9c4f1bf0, 0x406646d1, 0x99732319, 0xa104b137, 0xdfc29b01, 0x985407b0, 0x688a3e5f, 0xe12e3513
.word 0xb4f4d505, 0x4f7e5c30, 0x9cca5426, 0x359dc77d, 0x040353ae, 0xf8e43e70, 0xc503aecd, 0x3dea6ea1
.word 0xb683c165, 0x0334c87b, 0xc203f107, 0xf6183691, 0x019409a3, 0x3d20fe7a, 0x51652f70, 0x8a2e6472
.word 0x637e652c, 0xb69c5108, 0xeb14757f, 0x6fe15b03, 0x0c5f142b, 0x9266129e, 0xc513ae4a, 0x55edc9ea
.word 0xafbe55c5, 0x27150d6e, 0x26331685, 0xe7e3672d, 0xbcbbcd06, 0x3ab1e59b, 0x164b6fa7, 0xbd39cb50
.word 0x3aff864f, 0x1f3f4f1f, 0xc2e08b88, 0xf4ce3156, 0x083a39f5, 0x62682fec, 0x81a0952c, 0xc2853941
.word 0xe985a1ff, 0x35dfec57, 0x2c88aead, 0xb9bf6a26, 0x36804e33, 0x35a336c1, 0xd7ee375a, 0x56b03fc7
.word 0xd0e1740d, 0x3d766220, 0x2a58e2ff, 0x496f17a1, 0xb2b36622, 0xc5a3bad9, 0xbfcfc067, 0xed5bb980
.word 0x788424ec, 0x70d8401b, 0x98359693, 0x6849db40, 0x83817757, 0xc76f54d9, 0x941d8293, 0x8a1feb13
.word 0x4b43d603, 0xa5ef8fef, 0xd8e0d4cc, 0x476fa01b, 0xdcc48994, 0x4c28c28c, 0x86d97d54, 0xcb8f8d76
.word 0x7702930b, 0x78499bae, 0x5409b3c2, 0xf3035e8c, 0xeaddbdbb, 0x7009207f, 0x9e6e55e8, 0x24a4ffe4
.word 0x73ec627f, 0xb31b51bc, 0xedb0fee1, 0x9b6a2b6f, 0x7ef20e3e, 0x183eb5ae, 0xf685f2e7, 0x45e08720
.word 0x3417aff4, 0x0fbf9f5a, 0x6c9d9236, 0x51165053, 0xf9ffb81e, 0x8f432b00, 0x9748c452, 0x73897e7f
.word 0x4ce1c799, 0x1ce86b0c, 0xdb282d10, 0xe712e726, 0x899d3acc, 0xb6c99687, 0xaeaacb13, 0x4bc8be81
.word 0xcb4203d4, 0xa76372c8, 0xaa83c105, 0xf0fe7519, 0xdb2c2b7a, 0x5915c678, 0x7f4888b3, 0x5db2994b
.word 0x436f60d6, 0x93ce75d4, 0x5945c5dc, 0xa3928b2b, 0x75e17657, 0x1e351ef0, 0xd5e77729, 0xc1585c97
.word 0x76564a2e, 0xe8fcef2c, 0x0ef5e5c9, 0xf37253c2, 0x47e4d9dc, 0x27581124, 0xb6eb29ba, 0x6727a2e3
.word 0x8e87ea1f, 0x6ce0d014, 0x35bc3da8, 0x32670900, 0x134bbf84, 0x678fe349, 0x3b868ed3, 0x2fc8aa2d
.word 0xf79da483, 0x96e9bb2a, 0xcdcfc82f, 0x2d2b93fd, 0xc06efa37, 0x1a7d02d6, 0x259f9f82, 0xb2b4ecb4
.word 0x9e09c7a7, 0x25c3ffc1, 0x50f88c72, 0xe3cc570e, 0x07b335fa, 0xfabbea1a, 0xf45f84bb, 0xc7998c44
.word 0x521b04ed, 0x03d8a2d9, 0xbe101f9b, 0x93c1122d, 0x76d4be89, 0x0b35009a, 0x7aa90c52, 0x302dc47e
.word 0x140c8f06, 0x1df2ad5f, 0x72fe59a9, 0xd08df042, 0xc09b3fca, 0x5b0b6ca3, 0x763fc9df, 0xc8a919b9
.word 0x61302864, 0x4739c242, 0x4d4da68a, 0x5380ae06, 0x8a67fd40, 0x24d33c4f, 0x4c985876, 0x2ede87e2
.word 0x6af93e12, 0x58a7ac61, 0x67cc3c42, 0xd1576d8c, 0x77b7c8e7, 0x172a3cc3, 0x81ce451c, 0xe72135c1
.word 0xfe61dad7, 0xab707b04, 0xb5ce721d, 0xb156aaa0, 0xe50c29cc, 0xefa00eff, 0xdccda456, 0x6e4688b9
.word 0x40f5039a, 0xc1f1afc9, 0x1f53924e, 0x6a9801fe, 0x6bb4cc76, 0xb048d9f4, 0x85327928, 0x3acab3bc
.word 0x2e02995d, 0x1b15de8d, 0x0795f312, 0xf96efac1, 0x018e1cb5, 0x38f4e9f2, 0x4bc9e66a, 0xa42bc5c7
.word 0x9aaaca0b, 0xa4659a02, 0x250df253, 0xeb4148cb, 0x473606dd, 0xac1749ff, 0x78d006b4, 0xafb109d5
.word 0x6bd78221, 0x16a4e5c9, 0xcc9e04d6, 0x23469b8f, 0x016c3458, 0xc3f51a19, 0xbd17756a, 0x4e2bdc23
.word 0xf40b6459, 0x0cf070fa, 0x9b4da8cf, 0x7cbfd07a
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x17, x20, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x7, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x7, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x7, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x7, x24, ecall_handler
                  li x24, 0x1
                  beq x7, x24, instr_fault_handler
                  li x24, 0x5
                  beq x7, x24, load_fault_handler
                  li x24, 0x7
                  beq x7, x24, store_fault_handler
                  li x24, 0xc
                  beq x7, x24, pt_fault_handler
                  li x24, 0xd
                  beq x7, x24, pt_fault_handler
                  li x24, 0xf
                  beq x7, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

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
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x20, x17, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
