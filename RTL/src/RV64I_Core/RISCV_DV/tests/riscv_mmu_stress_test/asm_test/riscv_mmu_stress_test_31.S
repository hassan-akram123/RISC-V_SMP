.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0xf0a94ef0
                  li x1, 0x80000000
                  li x2, 0xf76184f5
                  li x3, 0xa
                  li x4, 0x0
                  li x5, 0xe2b06920
                  li x6, 0x0
                  li x7, 0x1
                  li x8, 0x65c9fc1a
                  li x9, 0x0
                  li x10, 0xfd89b213
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0xf4f9f3a3
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0xee447663
                  li x17, 0x7
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x6
                  li x23, 0x80000000
                  li x24, 0x8
                  li x25, 0x2
                  li x26, 0x0
                  li x27, 0x8b0f83ad
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xbcab0acd
                  la x31, user_stack_end
main:             andi         s8, t5, 873
                  la           s6, sub_1
                  srai         a2, s6, 24
                  xori         s8, ra, -1750
                  addi         s6, s6, 178
                  auipc        s10, 366501
                  beq          s2, s1, main_j2 #branch to jump instr
                  srai         a1, a2, 13
main_j2:          jalr         ra, s6, -177 #jump main -> sub_1
                  la           t3, region_0+897 #start load_store_instr_stream_1
                  la           a3, region_0+867 #start load_store_instr_stream_0
                  sb           a3, -9(t3)
                  sb           a3, 11(a3)
                  lhu          s3, -5(a3)
                  lb           s1, -36(t3)
                  lh           t5, 3(a3)
                  sb           t6, -31(t3)
                  lb           gp, 7(t3)
                  lbu          gp, -36(t3)
                  lb           zero, -4(a3)
                  lbu          t0, -3(t3)
                  lb           a4, -34(t3)
                  lbu          ra, 12(t3) #end load_store_instr_stream_1
                  lhu          a5, 9(a3) #end load_store_instr_stream_0
                  la           s7, region_0+948 #start riscv_load_store_hazard_instr_stream_0
                  sb           s11, 10(s7)
                  sltu         a2, a1, s9
                  and          s6, s1, s11
                  lhu          tp, 10(s7)
                  lb           s10, -59(s7)
                  lb           s6, -59(s7)
                  add          s3, a0, a7
                  sb           a6, -59(s7)
                  xor          t0, s5, s4
                  lb           a4, -59(s7)
                  lb           t3, -59(s7)
                  sb           a1, -59(s7)
                  sb           ra, -21(s7)
                  sll          s6, t2, s11
                  lbu          a3, -58(s7)
                  addi         s11, gp, -736
                  sh           s2, -58(s7)
                  lbu          a4, -58(s7) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_1+402 #start riscv_load_store_rand_instr_stream_0
                  lbu          s3, 8(s1)
                  sltu         zero, t0, s1
                  sra          a0, t5, s1
                  lbu          a5, -7(s1)
                  srli         t0, a4, 28
                  lbu          s10, 43(s1)
                  lui          t3, 926229
                  sb           zero, 54(s1)
                  sw           s4, 30(s1)
                  addi         t1, a5, -1851
                  ori          s4, gp, -1549
                  add          s11, s5, s2
                  ori          zero, ra, -1694
                  sltiu        s3, s1, -1709
                  srl          a2, s5, gp
                  xor          a2, s6, s6
                  xori         tp, ra, -1502
                  ori          a7, s0, -179
                  sb           s8, -39(s1)
                  sb           t3, 33(s1)
                  lb           tp, -7(s1)
                  srl          zero, a2, s7
                  lbu          s5, -30(s1)
                  sh           a3, 56(s1)
                  sb           t4, 51(s1)
                  lb           s9, 53(s1)
                  slt          a4, s6, a5
                  sltu         s6, s5, a5
                  srai         ra, s10, 29
                  sb           s5, 61(s1)
                  sll          a7, s1, a5
                  nop
                  sb           s2, 29(s1)
                  sh           t3, -14(s1)
                  or           t3, s0, a6
                  sb           s2, 37(s1)
                  lb           a7, -56(s1)
                  lbu          s6, 49(s1)
                  auipc        a2, 82970
                  auipc        s0, 543282
                  lb           s11, -35(s1)
                  ori          a4, a1, -1563
                  sb           ra, 13(s1)
                  sb           s11, 44(s1)
                  lb           a6, -5(s1)
                  sb           a3, 43(s1)
                  sb           t1, 15(s1)
                  sub          a6, t3, zero
                  slti         a6, t3, 742
                  lb           a6, -25(s1)
                  lbu          t3, 57(s1) #end riscv_load_store_rand_instr_stream_0
                  ori          gp, tp, -1424
                  beq          gp, s9, 18f
                  addi         s10, t0, 1519
                  sra          ra, a3, s5
                  nop
                  nop
                  slti         s9, sp, 1396
                  srai         a2, a5, 1
                  bge          tp, t6, 12f
                  auipc        ra, 126505
                  srli         a0, a3, 8
                  sll          s11, a6, s7
12:               sub          t0, t0, s8
                  srai         ra, s3, 15
                  sltu         sp, s7, t2
                  auipc        a7, 86567
                  slti         t0, s5, -91
                  slli         a1, s11, 13
18:               xor          a2, a2, a2
                  lui          s10, 2533
                  xori         a3, a1, 788
                  nop
                  sltu         t1, s10, a7
                  xori         a0, t3, 877
                  slli         ra, s8, 20
                  slti         a7, a6, 128
                  or           sp, ra, s11
                  auipc        a4, 511208
                  auipc        s7, 997473
                  addi         a3, t6, -958
                  lui          zero, 151789
                  slt          s7, ra, s4
                  srl          s8, t0, a0
                  lui          t0, 224436
                  add          s9, t6, t4
                  sltiu        gp, s11, 940
                  or           a1, t4, t6
                  xori         s0, s7, 323
                  ori          zero, t5, -1993
                  xori         a1, s9, 629
                  lui          a4, 617950
                  xori         t2, a6, 722
                  lui          t5, 269038
                  slti         a3, s3, 1466
                  andi         a3, a7, -450
                  andi         a3, tp, 712
                  lui          t2, 775313
                  auipc        s11, 51228
                  nop
                  bltu         t6, s7, 51f
                  and          s1, a4, a6
51:               sll          a5, t3, s6
                  xor          s3, a5, s11
                  la           a0, sub_1
                  sll          s3, t1, s10
                  addi         a0, a0, -360
                  bne          t6, a0, main_j1 #branch to jump instr
                  xori         a2, s7, 198
                  xor          t3, s1, s6
                  and          t3, t6, s0
main_j1:          jalr         ra, a0, 360 #jump main -> sub_1
                  nop
                  sltiu        s7, s3, -1867
                  and          t5, s6, t2
                  andi         a1, t6, -1414
                  slti         s3, a4, 772
                  addi         tp, s3, -1043
                  sll          s1, sp, s4
                  addi         t1, s7, 556
                  blt          gp, a4, 77f
                  slt          tp, ra, t3
                  srai         zero, s6, 11
                  or           t5, s4, a0
                  addi         a7, t6, 17
                  blt          ra, tp, 79f
                  andi         t5, s3, -1597
                  bne          zero, tp, 73f
                  slli         s5, s6, 20
                  blt          s8, s4, 80f
                  or           ra, s9, t2
                  addi         s5, s1, 418
                  sltiu        t5, ra, -2019
73:               or           s7, s3, a4
                  auipc        s9, 911608
                  slti         s8, t2, 1424
                  andi         s6, s5, 1055
77:               slli         t3, s7, 8
                  auipc        t3, 425383
79:               sub          t1, s1, t6
80:               xor          s1, s11, sp
                  sll          s11, t1, t4
                  ori          a7, sp, 1122
                  sltiu        t5, zero, -563
                  slt          s5, s3, ra
                  beq          t4, a1, 103f
                  bge          s10, a6, 90f
                  ori          t0, s3, -1495
                  sltu         s8, t0, s9
                  andi         s6, t3, 254
90:               srai         s8, a5, 20
                  sub          a1, t5, t2
                  srai         s11, t2, 15
                  sra          a2, a0, s11
                  auipc        a7, 689124
                  nop
                  sll          s7, t0, s5
                  bltu         s9, a3, 112f
                  xor          sp, s3, a4
                  bge          s0, t2, 111f
                  beq          t5, t1, 120f
                  slt          gp, t2, s4
                  xor          a5, s5, s3
103:              slt          t5, t6, s9
                  slti         a5, t5, -1795
                  sltiu        s11, s9, -1648
                  sltiu        a2, a3, 612
                  and          s4, tp, s11
                  blt          t1, s4, 120f
                  sltu         s9, t3, t5
                  srl          t1, t1, sp
111:              sra          sp, zero, t0
112:              sll          s11, a6, gp
                  sra          tp, t0, s0
                  bge          s9, a5, 122f
                  bltu         t0, s9, 126f
                  bgeu         s8, t4, 119f
                  bltu         t3, ra, 126f
                  sra          s10, s8, a7
119:              slti         ra, t1, 1132
120:              sub          t2, zero, t1
                  blt          t2, s0, 126f
122:              slli         s5, a5, 10
                  andi         t0, t4, -481
                  lui          s0, 37126
                  auipc        s0, 159258
126:              sll          ra, a1, gp
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sub          t0, s6, t1
                  bgeu         t2, sp, sub_2_stack_p
sub_2_stack_p:    addi         t6, t6, -12
                  sub          a6, a3, tp
                  sw           ra, 4(t6)
                  nop
                  nop
                  srli         a1, s2, 1
                  sub          t0, s4, a0
                  xori         s1, s0, -50
                  srli         tp, a7, 8
                  la           s8, region_1+375 #start load_store_instr_stream_1
                  lb           gp, 824(s8)
                  la           a7, region_1+1918 #start load_store_instr_stream_0
                  la           s9, region_1+1229 #start load_store_instr_stream_2
                  lhu          sp, -526(a7)
                  lbu          s1, -1(s9)
                  lbu          a0, 5(s9)
                  lhu          a3, 235(s8)
                  lbu          tp, 1284(s8)
                  sb           s11, 422(s8)
                  lbu          ra, -7(s9)
                  sb           t6, -246(a7)
                  lb           ra, -1831(a7)
                  lb           s5, -1883(a7)
                  sh           s7, 187(s8) #end load_store_instr_stream_1
                  lb           s4, -93(a7)
                  lb           s4, -1275(a7)
                  lbu          s10, -4(s9)
                  lb           s1, -15(s9) #end load_store_instr_stream_2
                  lbu          a4, -711(a7) #end load_store_instr_stream_0
                  la           sp, region_1+871 #start riscv_load_store_hazard_instr_stream_2
                  lhu          zero, 415(sp)
                  lhu          s4, 415(sp)
                  lh           tp, 415(sp)
                  lbu          t1, 415(sp)
                  lb           s7, 415(sp)
                  lhu          a7, 415(sp)
                  lb           s8, 415(sp)
                  lbu          a7, 415(sp)
                  lh           s5, 415(sp)
                  and          ra, t6, a4
                  sra          a2, a5, t0
                  nop
                  and          t0, s10, s9
                  sh           s5, 415(sp)
                  or           s9, s0, s1
                  lh           t0, 879(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           tp, region_1+1454 #start load_store_instr_stream_1
                  la           a6, region_1+687 #start load_store_instr_stream_2
                  la           t0, region_1+661 #start load_store_instr_stream_0
                  lbu          t5, -37(a6)
                  lbu          s11, -11(t0)
                  lbu          s6, 15(t0)
                  sb           a6, -212(a6)
                  lbu          s5, -246(a6)
                  lbu          a4, 108(tp)
                  lbu          t2, -6(t0)
                  lb           a2, 192(tp)
                  lbu          s4, 367(tp)
                  sb           s10, 213(a6)
                  sb           t6, -10(t0)
                  sb           s2, -817(tp)
                  lb           a2, 241(tp)
                  sb           s10, -24(a6)
                  lb           s8, 2(t0)
                  lbu          a0, 8(t0)
                  lbu          s9, -241(tp)
                  lb           a0, 106(a6)
                  sb           t3, 222(a6)
                  lh           zero, -1190(tp) #end load_store_instr_stream_1
                  lbu          s0, -68(a6)
                  lb           s7, 8(t0)
                  lbu          s8, 6(t0)
                  lw           s7, -15(a6)
                  lbu          a2, 233(a6) #end load_store_instr_stream_2
                  sb           a4, -11(t0)
                  sb           s1, -14(t0) #end load_store_instr_stream_0
                  la           sp, region_1+1579 #start riscv_load_store_hazard_instr_stream_3
                  lhu          s9, -329(sp)
                  lb           a1, -1034(sp)
                  lbu          a3, -1008(sp)
                  lb           s8, -1008(sp)
                  lb           s6, 219(sp)
                  andi         a3, a3, -1568
                  lb           s6, 219(sp)
                  sb           ra, 253(sp)
                  sh           t6, 253(sp)
                  lh           t2, -1401(sp)
                  ori          a4, s4, 1499
                  lh           a5, -1401(sp)
                  lb           t2, -1401(sp)
                  slt          tp, a1, t1
                  srli         s4, s2, 8
                  lb           gp, -543(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t1, region_0+871 #start riscv_load_store_rand_instr_stream_6
                  sub          s0, t6, s8
                  lb           t3, 23(t1)
                  addi         s6, s7, 423
                  sltiu        s9, s3, 657
                  lb           s3, 10(t1)
                  lhu          a6, -11(t1)
                  lbu          s6, 46(t1)
                  lb           a4, -12(t1)
                  srai         tp, a0, 12
                  lbu          a6, -40(t1)
                  lbu          a7, -18(t1)
                  lb           s0, -20(t1)
                  sltiu        a0, a7, 27
                  nop
                  slli         s10, tp, 17
                  sb           tp, -56(t1)
                  or           s9, t0, s8
                  xori         a7, s4, -616
                  xori         a5, s9, 1055
                  andi         s9, a1, 999
                  sub          s6, s10, sp
                  andi         s0, s4, 1664
                  sh           tp, 17(t1)
                  xori         a5, s11, 405
                  sh           t6, -13(t1)
                  sll          a1, sp, t5
                  sh           a0, -49(t1)
                  lhu          s4, 37(t1)
                  sw           a7, -59(t1)
                  slli         s7, s1, 14
                  lb           a5, 52(t1)
                  lh           s8, 1(t1)
                  lbu          a1, 40(t1)
                  sb           a0, 60(t1)
                  slti         s0, s11, 1837
                  lbu          s11, -34(t1)
                  lbu          s4, -2(t1)
                  lb           s6, 28(t1) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1338 #start riscv_load_store_hazard_instr_stream_0
                  lb           a2, 57(sp)
                  sb           t5, 605(sp)
                  lbu          s6, 605(sp)
                  sb           t5, -862(sp)
                  sltu         a5, t3, t6
                  lh           s0, -862(sp)
                  lbu          s4, 611(sp)
                  andi         gp, t4, -1519
                  lhu          t1, -278(sp)
                  sb           s0, -278(sp)
                  sb           t0, -278(sp)
                  slt          a0, tp, t3
                  sh           s6, -1208(sp)
                  sb           a1, -1305(sp)
                  lbu          a3, -1305(sp)
                  sb           s4, -1305(sp)
                  and          s11, t1, s3
                  sb           s2, -1305(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a1, region_1+1558 #start riscv_load_store_hazard_instr_stream_4
                  lbu          s0, 52(a1)
                  lb           s7, -12(a1)
                  lh           s0, -12(a1)
                  sb           s0, -28(a1)
                  lbu          s10, 44(a1)
                  lh           t5, 44(a1)
                  slli         a5, tp, 25
                  slli         zero, s4, 19
                  xor          a2, s6, a5
                  lhu          s8, 44(a1)
                  srai         s7, a0, 31
                  lb           s10, 44(a1)
                  sb           t1, 25(a1)
                  sb           s7, 37(a1)
                  sb           a0, 37(a1) #end riscv_load_store_hazard_instr_stream_4
                  la           a3, region_0+656 #start load_store_instr_stream_3
                  la           a1, region_0+73 #start load_store_instr_stream_2
                  lw           a6, 452(a3)
                  la           t1, region_0+1708 #start load_store_instr_stream_1
                  lbu          s6, -840(t1)
                  lbu          t0, 1225(a1)
                  sb           tp, 868(a3)
                  la           a4, region_0+707 #start load_store_instr_stream_0
                  lbu          s4, 147(t1)
                  lb           s4, 1000(a1)
                  lb           s7, -5(t1)
                  lb           s0, 1034(a3)
                  lbu          a0, 1608(a1)
                  lb           zero, -173(a3)
                  lbu          t2, -355(a3)
                  lb           t3, 1303(a3)
                  lhu          s7, 11(a4)
                  lbu          t3, 25(a4)
                  lh           ra, -45(a4)
                  sb           t1, 91(t1)
                  lb           s0, 565(a3)
                  lw           s7, -944(t1)
                  lbu          t2, 1822(a1)
                  sb           t3, -597(t1)
                  sh           t5, 87(a1)
                  lh           s7, 884(a3) #end load_store_instr_stream_3
                  sb           s11, 104(a1)
                  lbu          s7, -33(a4)
                  lhu          s9, -51(a1) #end load_store_instr_stream_2
                  sb           t3, -218(t1)
                  sh           s1, -1624(t1) #end load_store_instr_stream_1
                  sb           s1, -46(a4) #end load_store_instr_stream_0
                  la           sp, region_1+1498 #start riscv_load_store_rand_instr_stream_3
                  srl          s4, s11, a3
                  lbu          s10, 32(sp)
                  sltiu        gp, a3, 1419
                  slli         s10, zero, 14
                  sh           t3, -64(sp)
                  slti         t2, a5, 541
                  slti         a0, t4, -1105
                  lhu          tp, 26(sp)
                  lb           t1, 31(sp)
                  srli         s10, t5, 27
                  lb           s3, -43(sp)
                  slt          a1, a6, zero
                  andi         s4, s5, -1048
                  slti         t5, a4, 1729
                  lb           s0, 20(sp)
                  srl          s0, t2, s9
                  lw           s8, 26(sp)
                  srai         s1, t2, 1
                  andi         s0, t4, -576
                  srl          s3, zero, s8
                  sltu         t2, a3, a0
                  andi         a5, t2, 383
                  sh           s9, 32(sp)
                  lb           a5, -23(sp)
                  sb           t1, 22(sp)
                  sra          s6, s6, a0
                  sll          a4, a2, s6
                  slti         s9, a1, -1360
                  sh           s0, 64(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s3, region_1+1836 #start riscv_load_store_rand_instr_stream_2
                  sw           t5, -1340(s3)
                  andi         s4, t2, -774
                  sb           t1, -1235(s3)
                  slli         ra, gp, 3
                  sltu         s10, t2, gp
                  sltiu        sp, s2, -617
                  sltiu        gp, ra, -1602
                  sll          a4, s4, zero
                  sub          s8, zero, a4
                  slti         a0, tp, -402
                  lb           a6, -371(s3)
                  sw           a7, -1312(s3)
                  auipc        a5, 732257
                  srl          s0, a7, t4
                  lbu          t0, -794(s3)
                  srli         s4, a3, 29
                  slli         tp, a2, 5
                  sub          s7, s2, s9
                  srli         a6, a1, 6
                  xori         t3, a5, 658
                  lhu          s5, -468(s3)
                  lh           a0, -626(s3)
                  lui          t3, 275804
                  lb           s5, -455(s3)
                  lb           t5, -309(s3)
                  lhu          s11, -1808(s3)
                  sll          t2, s0, t1
                  lb           a0, -1593(s3)
                  sltu         a0, s7, tp
                  lb           s10, -160(s3)
                  xor          s9, tp, t4
                  lb           t2, -782(s3)
                  auipc        a2, 564167
                  sub          a5, a6, t3
                  add          ra, a2, t6
                  andi         a6, t4, -1217
                  andi         t0, t5, -1547
                  xori         sp, a2, 675
                  lb           t1, -907(s3)
                  lh           t3, 94(s3)
                  lb           gp, -678(s3)
                  lh           t5, 60(s3)
                  sra          a0, sp, t5
                  sll          a0, a6, t0
                  nop
                  lhu          a2, 40(s3) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+109 #start riscv_load_store_rand_instr_stream_4
                  lb           t3, 39(sp)
                  lb           t1, -51(sp)
                  srai         ra, tp, 27
                  sra          s3, s6, s4
                  lbu          s6, 12(sp)
                  lb           s5, 60(sp)
                  andi         t2, a1, -342
                  sltiu        t5, a5, 771
                  slti         s3, a2, -349
                  xori         a6, t6, -23
                  add          s11, t1, a7
                  sll          a1, t1, a6
                  lbu          t3, -40(sp)
                  sw           s2, 63(sp)
                  sub          s11, t3, s4
                  sub          s3, s3, a3
                  auipc        t5, 245960
                  or           gp, a2, ra
                  lbu          tp, -12(sp)
                  xori         a4, t6, -931
                  add          s0, t6, ra
                  lbu          s3, -61(sp)
                  sltiu        s10, s3, -568
                  ori          s6, ra, -79
                  nop
                  slt          s4, a0, t3
                  sll          s3, t5, s8
                  sltu         t0, t4, s10
                  lbu          s7, 36(sp)
                  lui          t2, 1022306
                  xori         s10, t5, -665
                  sb           s3, -54(sp)
                  xori         a2, t1, 2032
                  lbu          s11, 27(sp)
                  lbu          a2, 27(sp)
                  xor          t1, t4, a7
                  xor          ra, tp, a5
                  xori         s9, a7, -1818
                  lw           a5, -61(sp)
                  lbu          t5, -15(sp)
                  sh           s7, -57(sp)
                  sub          s11, s3, s2
                  lb           s8, 0(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_1+506 #start load_store_instr_stream_1
                  sb           t1, 9(s10)
                  lw           a4, 14(s10)
                  la           s0, region_1+630 #start load_store_instr_stream_0
                  lbu          a4, 3(s10)
                  lh           a1, 236(s0)
                  sb           a5, 0(s10)
                  sb           a5, -255(s0)
                  sh           t0, 2(s10)
                  sb           s10, -406(s0)
                  sb           a1, -10(s10)
                  lb           s9, -9(s10)
                  lhu          t5, -6(s10)
                  sb           t2, 852(s0)
                  lbu          s3, 7(s10) #end load_store_instr_stream_1
                  lb           s4, -287(s0) #end load_store_instr_stream_0
                  la           a7, region_1+1768 #start riscv_load_store_rand_instr_stream_0
                  xor          gp, ra, s0
                  lhu          t1, 10(a7)
                  lbu          ra, 7(a7)
                  lbu          s5, -1(a7)
                  lb           s0, -15(a7)
                  lui          s3, 155356
                  sb           t1, -5(a7)
                  andi         s11, s4, 1641
                  ori          s7, t2, 1728
                  lbu          sp, 16(a7)
                  sb           a3, -5(a7)
                  lui          a6, 489166
                  xori         t0, t5, 79
                  lb           s9, -15(a7)
                  lh           s4, -14(a7)
                  lbu          s7, -1(a7)
                  srai         s11, s10, 27
                  sb           s11, 1(a7)
                  lbu          t3, -3(a7)
                  slti         a1, s2, 425
                  slt          a4, s0, s11
                  sb           a7, 11(a7)
                  lbu          a5, -10(a7)
                  sb           s8, -15(a7)
                  andi         s8, t1, 1220
                  slti         s5, a7, -1810
                  lb           s10, -5(a7)
                  addi         t2, a1, 1183
                  sll          tp, s1, s10
                  lhu          sp, 8(a7)
                  nop
                  lb           s4, 10(a7)
                  sll          a3, a6, gp
                  lw           s4, 12(a7)
                  sb           s9, -9(a7)
                  lb           s8, 9(a7)
                  lb           t0, -2(a7)
                  sltiu        s4, a7, 1738
                  nop
                  srl          s0, t6, s9
                  ori          s6, a7, -1113
                  lbu          a5, 1(a7)
                  lbu          s5, 5(a7) #end riscv_load_store_rand_instr_stream_0
                  la           tp, region_0+1371 #start load_store_instr_stream_0
                  sb           a0, -390(tp)
                  la           a6, region_0+1303 #start load_store_instr_stream_1
                  sh           s3, 13(a6)
                  lb           s8, -41(tp)
                  sb           s0, 2(a6)
                  lbu          a7, -6(a6)
                  lhu          s4, -555(tp)
                  lb           s9, -726(tp)
                  lbu          s1, 8(a6)
                  lw           s0, 1(a6)
                  lbu          t1, 370(tp)
                  lbu          s11, -645(tp)
                  lh           t2, -7(a6) #end load_store_instr_stream_1
                  lbu          s4, -254(tp)
                  lbu          a5, 596(tp) #end load_store_instr_stream_0
                  la           a6, region_0+1756 #start riscv_load_store_hazard_instr_stream_6
                  lbu          a5, -15(a6)
                  lui          t5, 103139
                  sw           a4, -16(a6)
                  lw           sp, -16(a6)
                  sh           t0, -16(a6)
                  lb           a1, 1(a6)
                  lb           t1, 1(a6)
                  lb           a5, 13(a6)
                  sb           t0, -7(a6)
                  lhu          t2, 12(a6)
                  lbu          ra, 12(a6)
                  sw           s3, 12(a6)
                  sw           a3, 12(a6)
                  sb           t5, 12(a6)
                  sb           t0, 11(a6)
                  sra          s8, s10, gp
                  xor          a1, s9, s11
                  sb           s7, 11(a6) #end riscv_load_store_hazard_instr_stream_6
                  la           a7, region_1+1554 #start load_store_instr_stream_3
                  la           s5, region_1+1139 #start load_store_instr_stream_0
                  la           s0, region_1+453 #start load_store_instr_stream_2
                  lhu          t1, 1013(s0)
                  la           sp, region_1+1582 #start load_store_instr_stream_4
                  sb           t6, -1497(sp)
                  la           s3, region_1+599 #start load_store_instr_stream_1
                  sb           ra, -365(sp)
                  sh           ra, 1443(s0)
                  sb           t4, -31(a7)
                  lbu          t5, -72(s5)
                  sb           s9, -1025(sp)
                  sb           s5, 36(s3)
                  sw           a3, 38(a7)
                  lhu          zero, 44(a7)
                  lh           s9, -137(s5)
                  sb           a6, 1124(s0)
                  sb           gp, 56(s0)
                  lh           s7, -47(s3)
                  lb           a0, -6(s3)
                  sb           s1, 31(sp)
                  lbu          t5, 640(s0)
                  sb           t6, -35(a7)
                  lb           a4, 188(s5)
                  lb           t1, -5(s5)
                  lw           a1, 45(s3)
                  lbu          a3, 252(s5)
                  lb           a0, 438(s0)
                  sb           sp, -68(sp)
                  lbu          zero, 162(s5)
                  lw           gp, -1266(sp)
                  sb           ra, 65(s0)
                  lbu          t3, 474(s0)
                  sb           s5, 30(a7)
                  sb           s11, -1025(sp)
                  lbu          s9, 862(s0)
                  lb           s7, -1125(sp) #end load_store_instr_stream_4
                  lbu          t1, -8(s3)
                  lbu          s1, -9(s5)
                  lhu          a6, 16(a7)
                  sb           a1, -16(s5)
                  lbu          t0, -360(s0) #end load_store_instr_stream_2
                  sb           s5, -13(a7) #end load_store_instr_stream_3
                  lb           gp, -79(s5)
                  lw           a0, -31(s3) #end load_store_instr_stream_1
                  lb           a4, -226(s5) #end load_store_instr_stream_0
                  la           t3, region_0+1739 #start riscv_load_store_hazard_instr_stream_1
                  sb           t1, -2(t3)
                  sb           s6, -2(t3)
                  sb           s5, -2(t3)
                  lb           tp, -2(t3)
                  auipc        t2, 74900
                  sb           s8, -2(t3)
                  lb           s5, -2(t3)
                  lb           s7, -10(t3)
                  lb           tp, -10(t3)
                  sb           t3, -10(t3)
                  slti         t5, s8, 652
                  or           s5, s5, tp
                  sll          s4, t5, t5
                  nop
                  lbu          a5, -10(t3)
                  lb           a2, -10(t3)
                  lb           a3, -10(t3)
                  lb           s5, -10(t3)
                  lb           tp, -10(t3)
                  sb           t5, -6(t3)
                  lb           a3, -6(t3)
                  lbu          s11, 10(t3)
                  lbu          gp, 10(t3)
                  lbu          a5, 10(t3) #end riscv_load_store_hazard_instr_stream_1
                  sltiu        t0, s6, -1174
                  bltu         s0, s10, 13f
                  lui          a1, 328443
                  sll          s5, a7, s7
                  bge          t0, zero, 9f
                  srai         ra, a0, 17
                  and          ra, a3, a1
                  andi         a6, a6, -1769
                  slt          a0, s4, a3
9:                xor          s7, t5, a5
                  xori         zero, s7, 1607
                  or           s4, zero, s4
                  add          t2, t2, tp
13:               sltu         s9, t6, ra
                  and          gp, tp, s4
                  addi         a3, s1, -1778
                  bgeu         tp, a1, 17f
17:               bge          s0, t1, 25f
                  blt          s0, tp, 38f
                  srli         a2, t0, 17
                  slli         s5, t4, 15
                  slt          a3, t2, s6
                  xor          t1, t2, t3
                  add          a5, tp, a5
                  and          s3, a3, t3
25:               srai         s11, s0, 28
                  xor          s4, a0, t4
                  xor          s7, s0, s6
                  la           gp, region_1+1080 #start load_store_instr_stream_2
                  la           s9, region_1+535 #start load_store_instr_stream_1
                  la           a3, region_1+295 #start load_store_instr_stream_0
                  lb           t2, -365(gp)
                  lb           a0, -97(a3)
                  lb           t3, 802(gp)
                  lbu          a6, -325(gp)
                  lb           s7, -45(a3)
                  sb           s9, 226(gp)
                  lbu          tp, -56(s9)
                  lbu          s10, -987(gp)
                  lbu          s0, 4(s9)
                  lbu          s8, -643(gp)
                  lh           s7, -145(a3)
                  lb           t0, -773(gp)
                  lb           s11, -4(s9)
                  lbu          sp, -109(gp)
                  sh           s11, 9(s9)
                  sb           s4, 251(a3)
                  lbu          s7, -16(s9)
                  sb           a7, -6(s9)
                  lbu          s4, -497(gp)
                  lb           zero, 248(a3)
                  lhu          a6, -41(a3)
                  lb           s5, -50(s9)
                  lbu          a1, -34(s9)
                  lb           a2, -124(a3)
                  lb           ra, -877(gp) #end load_store_instr_stream_2
                  sb           a4, -34(s9)
                  lbu          s5, 145(a3)
                  sb           a7, -54(s9) #end load_store_instr_stream_1
                  sb           s9, -148(a3) #end load_store_instr_stream_0
                  xori         s10, s11, -930
                  slti         zero, a1, 1340
                  bge          a7, a0, 41f
                  sltiu        a2, gp, 514
                  sra          s0, a6, zero
                  sll          a1, tp, t3
                  auipc        t3, 237875
                  auipc        s9, 673113
                  add          gp, a6, a3
                  nop
38:               bgeu         s0, s11, 49f
                  ori          s0, s3, 658
                  auipc        ra, 200019
41:               bltu         t0, a4, 59f
                  add          s0, a0, t0
                  la           s10, region_1+643 #start riscv_load_store_hazard_instr_stream_5
                  sb           a5, 1065(s10)
                  sh           s4, 1065(s10)
                  sb           zero, 1065(s10)
                  sh           s1, 1065(s10)
                  sb           ra, -465(s10)
                  slli         s9, t5, 9
                  lb           s8, -465(s10)
                  lbu          t5, -465(s10)
                  lb           t0, -465(s10)
                  sb           zero, -465(s10)
                  lb           tp, -465(s10)
                  sb           s0, 837(s10)
                  sh           s6, 837(s10)
                  lbu          s4, 786(s10)
                  sb           t4, 786(s10)
                  lbu          a1, 786(s10)
                  lui          a5, 456933
                  sb           s2, 786(s10) #end riscv_load_store_hazard_instr_stream_5
                  andi         a2, s9, -1493
                  bge          s9, a1, 50f
                  lui          t0, 90997
                  sltiu        s0, s4, -1000
                  xori         s8, s7, 1351
                  addi         a2, s3, 955
49:               sltu         a3, a2, s7
50:               srli         s1, a5, 29
                  xor          t2, a3, a0
                  andi         gp, gp, 1676
                  sub          a0, t1, s7
                  andi         s11, a3, -1463
                  sll          s7, s6, s10
                  xori         a0, s2, 511
                  addi         s6, s5, 1023
                  slti         s4, a5, -511
59:               blt          s4, s1, 67f
                  sltiu        a3, t1, -1666
                  or           a5, t2, a2
                  beq          s4, t3, 65f
                  or           t0, s2, s6
                  slti         a2, a2, 1224
65:               bltu         a2, s11, 75f
                  slt          a6, a4, t0
67:               srl          s7, t4, a5
                  sub          s11, s7, t3
                  xor          s4, t5, tp
                  lui          t0, 174457
                  slti         s5, s3, 661
                  andi         a3, s1, -1577
                  sub          s10, ra, tp
                  or           t1, ra, s3
75:               slli         s1, a7, 4
                  bgeu         t6, s10, 90f
                  sltu         tp, t3, s7
                  slt          t1, s2, a4
                  add          s10, s1, t6
                  auipc        t0, 476197
                  lui          t5, 454688
                  sltu         a7, s1, ra
                  bgeu         a2, t4, 96f
                  bge          s11, a0, 92f
                  sll          s10, a0, s10
                  xori         sp, zero, 914
                  sltiu        s11, a7, 1797
                  ori          s4, a7, 352
                  srai         a6, s2, 7
90:               bgeu         t1, a4, 104f
                  xor          t1, s11, s0
92:               andi         sp, a0, -1591
                  srai         zero, t2, 24
                  lui          t2, 733643
                  bltu         s9, t1, 97f
96:               sll          s6, t3, a1
97:               slti         s1, a2, -1894
                  srl          ra, sp, ra
                  slt          t1, a6, ra
                  lui          t3, 403210
                  bge          t6, t0, 102f
102:              srl          ra, s1, a0
                  blt          a0, tp, 111f
104:              srl          ra, s3, t5
                  auipc        gp, 602039
                  bgeu         s0, a6, 113f
                  xor          t2, sp, a6
                  xor          a0, t4, gp
                  slli         s5, t3, 27
                  slli         s6, sp, 24
111:              bne          s3, t6, 129f
                  lui          a3, 107201
113:              sra          ra, t0, s0
                  sub          s6, s1, s1
                  srai         s4, a3, 31
                  beq          s5, t5, 128f
                  blt          a6, ra, 120f
                  bgeu         a0, s9, 125f
                  slti         s5, a1, 951
120:              sub          t2, s7, s3
                  or           a5, a2, a4
                  slli         s9, s9, 5
                  sltiu        gp, a5, -1156
                  or           tp, t6, zero
125:              sll          a4, t3, t4
                  slli         s0, t3, 8
                  nop
128:              sra          a7, s11, a7
129:              sra          a0, a4, s7
                  bge          t6, a3, 140f
                  sltu         t3, t4, gp
                  auipc        t2, 682706
                  xori         sp, s8, 1836
                  bne          s3, s4, 141f
                  sltiu        t0, tp, -511
                  la           sp, region_0+411 #start riscv_load_store_rand_instr_stream_1
                  lb           s8, -153(sp)
                  lb           a3, -8(sp)
                  srli         s5, a5, 7
                  lbu          gp, 203(sp)
                  sltu         s8, s8, tp
                  sltu         s9, zero, a0
                  add          tp, gp, t4
                  lb           s11, -43(sp)
                  xori         s11, a1, 405
                  and          a3, t1, zero
                  sub          t0, s11, s8
                  lb           t5, -144(sp)
                  lb           gp, 221(sp)
                  sw           a3, 101(sp)
                  sb           s4, 24(sp)
                  sb           sp, -10(sp)
                  auipc        gp, 1019389
                  slti         t2, ra, -1906
                  andi         t1, s4, -1230
                  add          s10, a7, s2
                  lh           t3, 213(sp)
                  or           zero, a1, s8
                  lui          t2, 890297
                  addi         s8, tp, -1810
                  slli         s7, a5, 18
                  xor          a0, gp, t2
                  srli         s3, s1, 16
                  addi         gp, s2, -418
                  sltiu        a3, s7, -1947
                  sw           t3, -99(sp)
                  slti         s11, zero, 911
                  sltu         a6, t5, s1
                  lb           s0, 121(sp) #end riscv_load_store_rand_instr_stream_1
                  slli         ra, a7, 0
                  nop
                  srai         s7, t5, 26
                  addi         s1, ra, 430
140:              xor          s5, a6, s2
141:              sll          a0, s7, a4
                  add          s9, t6, s9
                  slti         gp, s4, -1335
                  sltu         a0, t6, s4
                  slti         s7, a0, -1104
                  bge          tp, a6, 151f
                  add          s7, ra, a7
                  bge          a4, tp, 159f
                  xor          s0, t2, s7
                  auipc        s7, 825932
151:              lui          a2, 742678
                  bne          s1, a5, 153f
153:              blt          s3, t6, 154f
154:              bgeu         s10, t5, 161f
                  and          s11, s5, t2
                  xor          s11, t2, s4
                  bgeu         a4, s2, 164f
                  sltiu        s9, tp, -398
159:              bne          a5, s8, 179f
                  sltiu        a7, t5, -865
161:              bltu         s1, s0, 173f
                  xori         t3, a3, 81
                  slt          s5, t4, gp
164:              sltu         a2, a4, s8
                  andi         ra, t4, -1622
                  bne          sp, s9, 180f
                  and          a1, t5, s2
                  lui          a3, 769711
                  blt          a0, a6, 187f
                  slti         t2, zero, -399
                  beq          a7, tp, 174f
                  addi         s8, s0, -1884
173:              bgeu         t6, a3, 187f
174:              bne          a3, a3, 179f
                  lui          s1, 785464
                  srli         s3, a2, 8
                  sra          a3, a3, zero
                  bgeu         s5, t1, 185f
179:              bgeu         s0, a2, 181f
180:              xor          s8, s7, t6
181:              srli         a6, a6, 3
                  andi         s11, t2, -502
                  slli         gp, s1, 0
                  and          t1, s0, a4
185:              sll          ra, a2, s9
                  or           a7, a0, gp
187:              slt          t2, zero, a3
                  nop
                  add          t5, gp, tp
                  addi         sp, s5, 1594
                  beq          tp, s10, 192f
192:              ori          s8, ra, 446
                  bge          t3, a0, 201f
                  srai         s7, t5, 27
                  bge          s4, s8, 206f
                  xori         s10, a7, -238
                  sll          a1, a7, t2
                  lui          s8, 312240
                  srl          s7, s1, a1
                  bge          s1, a0, 208f
201:              xori         s6, s1, 705
                  bltu         t6, t0, 213f
                  bge          ra, a1, 214f
                  andi         s11, a6, -1649
                  sll          a2, a0, a5
206:              bgeu         sp, ra, 224f
                  sltu         t5, a4, s7
208:              srai         a3, t5, 8
                  ori          s3, t3, -1957
                  addi         t2, a5, 1709
                  slti         a6, a6, 1950
                  bltu         s7, s4, 222f
213:              slti         a3, a1, -1798
214:              bgeu         a7, t0, 220f
                  and          s10, s8, s10
                  add          s10, t3, s0
                  blt          a6, t6, 218f
218:              addi         s0, s5, -1545
                  sub          s1, a7, sp
220:              xor          s0, s6, gp
                  nop
222:              bge          t4, t5, 230f
                  slt          a2, s10, s3
224:              sra          a5, s5, zero
                  bne          a7, s4, 230f
                  bge          s11, s2, 234f
                  sra          a5, t3, a4
                  xori         t3, s9, -1995
                  srai         zero, s7, 23
230:              xor          a3, s7, zero
                  lui          s4, 190214
                  slti         a7, t0, -621
                  auipc        s10, 480503
234:              sltu         s8, s2, t3
                  bltu         t5, a6, 247f
                  auipc        s9, 205124
                  bge          s2, s9, 247f
                  bge          t2, gp, 251f
                  or           t3, a6, s10
                  sll          a3, s10, a0
                  bge          gp, t4, 242f
242:              srli         a4, a3, 6
                  auipc        sp, 147270
                  andi         s6, a1, 382
                  srl          s1, s1, t4
                  blt          a6, s10, 247f
247:              slt          a0, s6, t0
                  srli         s5, s6, 23
                  ori          tp, s1, -2037
                  beq          a6, t0, 253f
251:              ori          s4, t0, 610
                  andi         a7, t3, 1176
253:              bgeu         t2, s5, 258f
                  andi         s8, gp, -1812
                  blt          s11, a1, 260f
                  add          a6, s11, s6
                  xori         a0, s0, 27
258:              blt          t0, gp, 260f
                  slti         s6, ra, -1307
260:              ori          a2, s5, -523
                  xor          a0, a0, s7
                  auipc        s9, 991570
                  sra          s0, t6, gp
                  add          t1, t0, tp
                  add          s3, t2, a0
                  sra          t0, t3, t2
                  srl          s7, a6, s5
                  sll          s10, t2, s1
                  auipc        s1, 283311
                  xor          s9, tp, s1
                  sll          gp, t6, a3
                  xori         zero, s2, 1539
                  beq          a6, a5, 284f
                  add          s8, t4, t2
                  srl          zero, t3, sp
                  sltu         s5, s4, a4
                  sub          s1, tp, s5
                  blt          s11, t0, 298f
                  lui          s5, 905495
                  addi         t2, s4, 1771
                  blt          a6, a4, 288f
                  ori          s10, s0, 579
                  add          t5, s1, t3
284:              auipc        a5, 353335
                  beq          s1, s3, 293f
                  slt          zero, s9, s3
                  xori         a7, t5, -2013
288:              add          s7, t1, a3
                  bltu         s11, a2, 301f
                  nop
                  addi         s11, s9, 273
                  xor          s7, t2, a7
293:              srai         s3, sp, 13
                  xori         s4, s1, 2040
                  and          s0, t1, t6
                  add          a2, a2, s5
                  blt          s0, s11, 298f
298:              beq          s5, a5, 312f
                  blt          sp, a5, 307f
                  srai         t5, s11, 6
301:              or           a3, t1, t1
                  sub          a7, sp, a2
                  xor          a7, a2, tp
                  slt          s8, t2, s2
                  srl          t1, ra, ra
                  sltiu        sp, t0, 2047
307:              xori         s8, ra, -540
                  sub          a2, t3, t2
                  add          s4, a1, a3
                  lui          t3, 934358
                  sltu         s11, t5, s9
312:              slt          t3, a7, a0
                  andi         s1, s3, 775
                  andi         ra, s8, 1991
                  sltu         s5, gp, s4
                  bne          zero, a6, 330f
                  slli         a6, a2, 20
                  srli         t1, a7, 2
                  srli         s7, t3, 30
                  auipc        a2, 1037931
                  sltu         s9, sp, a3
                  srl          t2, s7, a5
                  add          t5, tp, s0
                  lui          t3, 598144
                  srai         a7, s7, 20
                  lui          s3, 367463
                  slti         a6, s10, 769
                  sll          ra, a7, s4
                  xori         a5, s3, 1637
330:              lui          a3, 367588
                  xori         s1, s10, 1488
                  sub          s1, sp, t6
                  srl          t0, t5, s7
                  sltu         a4, s10, t2
                  sltiu        s4, s6, -1739
                  blt          a3, s3, 342f
                  lui          ra, 246029
                  bltu         s8, a4, 341f
                  sltiu        t3, a2, -1634
                  la           a6, region_0+1309 #start riscv_load_store_rand_instr_stream_5
                  andi         s6, tp, -402
                  lbu          zero, 419(a6)
                  lb           s0, -732(a6)
                  slti         s4, gp, 1297
                  lb           tp, -31(a6)
                  lb           s5, -1284(a6)
                  slt          t3, a2, a5
                  sb           a6, -88(a6)
                  add          t3, a3, s2
                  sb           t1, 44(a6)
                  lhu          ra, 525(a6)
                  lbu          a0, -997(a6)
                  lbu          a3, -890(a6)
                  lhu          t5, -683(a6)
                  sb           zero, -300(a6)
                  andi         gp, a2, 1581
                  lb           a4, -1225(a6)
                  lbu          s4, -239(a6)
                  lbu          s0, 365(a6)
                  sb           ra, 592(a6)
                  sra          s4, s0, s2
                  addi         gp, t1, -1911
                  lbu          a0, -748(a6)
                  or           t3, s4, t5
                  sb           t1, -467(a6)
                  lui          s8, 218016
                  sb           t4, -192(a6)
                  lbu          t5, -139(a6)
                  lbu          zero, -919(a6)
                  sb           a5, -276(a6)
                  add          a5, s3, a1
                  lhu          ra, -15(a6)
                  xori         s10, ra, -178
                  sb           t2, 141(a6)
                  sb           a3, 76(a6)
                  lh           gp, 619(a6) #end riscv_load_store_rand_instr_stream_5
                  ori          a2, s10, -1401
341:              ori          ra, s4, 183
342:              addi         s7, a7, -1771
                  beq          zero, a0, 361f
                  slli         s8, tp, 5
                  sltiu        s3, a7, 70
                  auipc        gp, 764052
                  sltiu        sp, t3, 212
                  addi         a2, s5, 1592
                  sub          s6, a4, s3
                  sub          s9, gp, a3
                  nop
                  sltiu        t2, s10, -1107
                  or           s8, s6, t4
                  bne          a3, tp, 357f
                  beq          s4, t5, 362f
                  bgeu         a3, a1, 369f
357:              slli         t1, s3, 26
                  slli         gp, s5, 26
                  srai         gp, t4, 15
                  andi         s10, s9, -1087
361:              sll          s6, a1, s0
362:              sra          a7, s2, t2
                  srl          s10, t6, t3
                  slti         a4, s0, 1796
                  sra          s9, s3, s1
                  beq          s7, a2, 367f
367:              sltu         a5, s7, s2
                  beq          t3, s10, 378f
369:              sltiu        gp, s0, 279
                  bge          a2, s3, 371f
371:              and          t5, s4, s11
                  slt          t2, a6, s9
                  sltu         s3, t0, t5
                  srl          t0, tp, a0
                  slli         s6, a4, 6
                  or           ra, s7, s10
                  xor          gp, a5, ra
378:              bgeu         a3, s3, 386f
                  and          a5, a5, tp
                  slli         a7, s3, 8
                  sra          t1, s1, a5
                  andi         t1, s1, -779
                  bltu         a0, s3, 384f
384:              andi         gp, s2, 948
                  lui          t5, 436599
386:              slli         sp, t1, 12
                  xori         t2, t6, 1589
                  ori          a5, a7, -1226
                  sll          a3, s11, s6
                  slli         s7, s10, 15
                  srli         t1, a4, 16
                  ori          t5, a2, 1588
                  beq          t4, t5, 411f
                  sltiu        gp, t3, -1831
                  slli         a3, s0, 6
                  bltu         s2, s9, 407f
                  xori         t1, gp, 276
                  bgeu         a1, a2, 409f
                  or           a0, s10, sp
                  bge          s6, a3, 412f
                  ori          s3, t4, 643
                  addi         s3, t6, 579
                  xori         t0, t6, -261
                  slt          ra, s4, s6
                  bgeu         ra, a7, 412f
                  andi         s3, s0, -1677
407:              slti         t3, t3, -668
                  blt          sp, s9, 416f
409:              sltiu        s10, t3, -1067
                  auipc        zero, 1038559
411:              sub          gp, sp, s9
412:              auipc        a0, 755046
                  sltiu        a2, s7, 393
                  ori          s1, s5, -356
                  sll          zero, t1, a3
416:              nop
                  slt          a3, zero, s8
                  bge          s11, t2, 428f
                  srai         a4, gp, 7
                  bne          s9, ra, 431f
                  or           s10, t2, a3
                  slti         a1, a7, 2033
                  sltu         s8, a4, t0
                  sltiu        s7, a5, -1443
                  sltu         s8, s6, s0
                  xori         s11, a1, 462
                  beq          s9, a7, 428f
428:              srli         s5, a6, 14
                  addi         a7, sp, -103
                  blt          a5, s11, 431f
431:              bge          s7, a3, 436f
                  lui          s5, 922146
                  blt          zero, gp, 441f
                  bgeu         zero, a7, 441f
                  sub          a4, s5, t5
436:              slti         s5, a5, -416
                  beq          sp, ra, 447f
                  bge          a7, a5, 452f
                  bltu         t5, s2, 442f
                  xori         t2, s1, -1845
441:              bne          a5, gp, 461f
442:              add          zero, s7, t4
                  slti         s11, t1, 958
                  and          a7, a1, tp
                  slli         t0, ra, 17
                  srli         s6, a4, 31
447:              srl          s10, a0, zero
                  lui          a6, 33652
                  sltu         gp, gp, s6
                  blt          a7, s3, 453f
                  nop
452:              and          t3, zero, t4
453:              bge          s4, s5, 460f
                  add          a7, zero, s2
                  slt          tp, a6, t0
                  bge          s7, a7, 463f
                  beq          a3, a4, 468f
                  srli         s9, a5, 21
                  lui          s8, 807917
460:              beq          t3, s10, 472f
461:              srai         s8, t2, 19
                  andi         a5, ra, 577
463:              slt          s11, sp, s7
                  srai         sp, a6, 3
                  slt          t3, s4, t4
                  blt          t2, s1, 484f
                  sltu         s0, ra, s4
468:              and          a3, s7, gp
                  or           s6, s9, t0
                  auipc        gp, 551977
                  sltu         a5, s4, ra
472:              slt          t1, a0, s8
                  auipc        t5, 1018822
                  srai         s10, s6, 21
                  slt          a3, t4, a0
                  or           a1, s1, a2
                  srli         a2, t1, 16
                  srai         zero, s4, 25
                  sltiu        t2, s7, 1560
                  sltiu        s9, s8, -481
                  slli         a5, t2, 11
                  blt          a2, a4, 493f
                  nop
484:              auipc        tp, 933569
                  addi         a0, s1, -30
                  slti         a1, a7, 1078
                  xori         s6, s0, 1742
                  beq          a5, zero, 496f
                  or           ra, t1, s3
                  slt          a1, s8, t4
                  bltu         a4, s7, 503f
                  sltu         a2, s4, t1
493:              beq          a0, t3, 494f
494:              sub          s8, t4, s11
                  and          s5, gp, s11
496:              or           t1, s9, a4
                  lui          a7, 746550
                  slti         t1, zero, 811
                  lui          t3, 295980
                  slt          gp, s8, a1
                  bltu         a1, tp, 514f
                  xor          a5, s11, a2
503:              beq          t6, s11, 517f
                  addi         gp, t2, 1779
                  andi         a5, a4, 912
                  blt          t3, s1, 516f
                  slli         a4, s5, 7
                  srl          s6, s6, ra
                  slli         s8, a5, 4
                  sltu         s3, a7, t4
                  sll          s8, s0, s11
                  sltu         a3, a1, s0
                  sltiu        a1, zero, -1546
514:              xori         a6, t4, -1570
                  bgeu         s5, sp, 523f
516:              auipc        a5, 933638
517:              srl          a1, tp, a7
                  slti         a5, ra, -844
                  nop
                  ori          t0, t2, -416
                  add          t3, t1, s10
                  srai         t5, a6, 0
523:              slt          zero, s8, s3
                  xor          s5, s8, a3
                  bltu         s0, a6, 531f
                  srai         t0, s7, 7
                  xor          sp, s3, a7
                  bltu         tp, t4, 529f
529:              bgeu         a7, t2, 531f
                  andi         s3, s7, 1597
531:              or           a0, zero, tp
                  sll          a6, a4, a4
                  auipc        s7, 187895
                  auipc        s6, 144903
                  sll          s8, s1, a5
                  nop
                  sub          zero, t3, s11
                  or           s8, t5, t4
                  srai         zero, s7, 16
                  andi         a5, ra, 473
                  sll          s3, s7, t4
                  srli         t2, a3, 5
                  andi         t5, t5, -235
                  bge          t4, s4, 549f
                  srai         s9, t2, 3
                  bge          t4, s4, 554f
                  bltu         ra, a2, 565f
                  lui          gp, 530566
549:              slt          a7, s5, a0
                  lui          a4, 614392
                  blt          gp, s9, 562f
                  xori         a1, t3, -279
                  srl          gp, t6, sp
554:              slt          s7, s3, t4
                  srl          t0, s3, s8
                  addi         a5, t2, -435
                  bgeu         ra, ra, 559f
                  sub          gp, t0, s7
559:              beq          s2, t2, 569f
                  sltu         t3, s7, s3
                  sub          s9, s3, s3
562:              auipc        s11, 925828
                  xor          s9, ra, ra
                  slti         s11, a2, -353
565:              sltu         s7, s8, a3
                  slt          t2, s4, s3
                  or           s7, s9, a1
                  andi         t1, s9, -1237
569:              beq          gp, a7, 570f
570:              and          a5, a7, a3
                  sra          tp, tp, t3
                  bltu         s9, s0, 585f
                  srai         a0, t4, 2
                  sra          s9, a3, t4
                  sltiu        t5, gp, 189
                  bltu         t1, s1, 586f
                  srl          s10, a6, a2
                  slt          s9, s1, s0
                  beq          a0, t3, 591f
                  addi         s7, t2, 308
                  ori          s3, t1, -25
                  blt          s3, s2, 590f
                  blt          a6, s0, 589f
                  and          s11, sp, t2
585:              slli         a5, a7, 8
586:              slti         s4, s5, 137
                  srl          s9, s6, s0
                  xori         a7, t4, -1875
589:              add          t1, s0, s4
590:              and          s3, zero, a5
591:              nop
                  lui          s1, 643548
                  sub          ra, a6, s6
                  ori          t2, a3, 128
                  srl          a0, s11, s3
                  sltiu        ra, s11, -1296
                  beq          a2, a0, 615f
                  blt          a4, t0, 606f
                  add          a0, a4, a4
                  sra          s1, a0, t3
                  slt          t5, s3, t0
                  and          s8, s4, a1
                  xor          s1, a5, s2
                  auipc        s4, 944187
                  srl          a3, t5, a5
606:              xor          s4, s1, a5
                  slti         s6, a3, 1430
                  ori          gp, t2, 1048
                  xori         t0, t5, 770
                  sra          s4, s9, sp
                  bgeu         s11, a1, 619f
                  sltiu        t0, a6, -2011
                  sub          s6, t0, s10
                  slli         a4, tp, 9
615:              ori          s7, t6, -429
                  blt          s1, t4, 623f
                  addi         t3, s7, -1239
                  xori         s10, s5, -20
619:              add          s6, t6, s9
                  xori         a3, a3, -687
                  xor          s1, t3, s2
                  slli         t2, ra, 17
623:              sltiu        a1, s3, 89
                  xor          t0, t4, t3
                  beq          s3, s4, 630f
                  sub          s1, tp, t3
                  sll          t0, s3, s7
                  sll          t5, t6, t2
                  ori          s1, a1, -2028
630:              slt          s6, ra, t1
                  sltu         t5, t3, t5
                  slli         s11, a3, 7
                  bltu         a6, a1, 638f
                  lui          s0, 514580
                  and          s0, t5, zero
                  addi         a4, s3, -1050
                  bltu         s6, sp, 657f
638:              slti         sp, gp, -417
                  add          t0, a0, s2
                  blt          a6, s7, 651f
                  and          s6, s9, ra
                  sll          a2, a7, gp
                  add          s3, s8, s5
                  sltiu        a7, s9, 705
                  addi         a2, s11, 1256
                  srl          t1, a7, ra
                  xori         a6, a2, -1651
                  andi         tp, t1, 481
                  srai         a4, s0, 14
                  sra          s11, s8, t2
651:              bgeu         s3, a7, 654f
                  sub          zero, s7, a3
                  blt          s3, t1, 671f
654:              bltu         tp, t2, 661f
                  bgeu         gp, a1, 669f
                  srai         zero, a0, 9
657:              blt          sp, t6, 658f
658:              slli         s7, t0, 7
                  slli         t1, s3, 30
                  srli         s9, t1, 5
661:              bltu         s7, a6, 662f
662:              slti         s7, t0, 2025
                  bge          t5, t0, 664f
664:              bge          t6, t3, 671f
                  sll          s7, s0, a4
                  or           a3, s10, sp
                  sll          s9, s5, a0
                  auipc        a3, 29180
669:              bltu         a6, sp, 677f
                  beq          s4, t0, 673f
671:              auipc        a7, 485593
                  bltu         a2, t6, 686f
673:              sll          t5, s10, s9
                  sltiu        s9, s11, -1208
                  srai         s7, s7, 23
                  slt          s8, s1, sp
677:              lui          s9, 562334
                  ori          s10, a7, 1626
                  sll          s8, zero, a6
                  xori         a5, t4, -1024
                  xori         a4, s10, 992
                  srl          gp, a5, t2
                  auipc        s9, 293978
                  auipc        a5, 352837
                  ori          s8, s10, 429
686:              bne          a3, s5, 698f
                  beq          s9, zero, 698f
                  and          t5, t3, s8
                  srl          s3, s3, a6
                  add          zero, a0, a2
                  slli         t5, s4, 14
                  addi         a2, s3, -411
                  addi         zero, s10, -1166
                  bge          s0, s10, 705f
                  blt          t0, s9, 702f
                  nop
                  add          s8, s9, s10
698:              sltu         zero, a1, t5
                  add          s5, a6, t3
                  ori          s3, sp, 856
                  auipc        s6, 952187
702:              slt          a1, t5, a0
                  and          tp, a1, a5
                  sub          s10, s11, a0
705:              sll          zero, s10, s3
                  sra          sp, s1, s11
                  sltiu        s11, s8, -109
                  srli         s10, s1, 12
                  sll          zero, gp, s5
                  or           gp, a4, a7
                  xor          a7, s2, s4
                  xori         a3, zero, 534
                  andi         gp, t3, 298
                  sltiu        a2, a3, 1520
                  lw           ra, 4(t6)
                  auipc        a7, 796978
                  add          tp, s10, t5
                  addi         t6, t6, 12
                  sltiu        a7, t0, 1697
                  or           s1, a2, gp
                  srl          t5, a2, a6
1332:             addi x26, x1, 0
1332:             jalr x26, x26, 0
sub_1:            bne          s0, s6, sub_1_stack_p
                  sub          gp, a4, a7
sub_1_stack_p:    addi         t6, t6, -64
                  srai         a3, a0, 13
                  slti         s1, t2, -1516
                  lui          a5, 137221
                  sw           ra, 4(t6)
                  nop
                  xor          tp, s4, s3
                  or           t1, t5, tp
                  srli         a5, t2, 15
                  ori          s6, s4, 329
                  srai         s10, t3, 13
                  la           t1, sub_2
                  slt          t2, t2, a3
                  srli         a3, a6, 6
                  sltiu        s7, t3, 649
                  lui          s4, 489354
                  addi         t1, t1, 581
                  lui          a5, 803986
                  blt          t4, t6, sub_1_j3 #branch to jump instr
                  xori         gp, t0, 62
                  xor          a3, s9, a3
sub_1_j3:         jalr         ra, t1, -580 #jump sub_1 -> sub_2
                  sltu         ra, s6, a0
                  srai         s5, t5, 18
                  slt          gp, a3, s8
                  xor          a6, s2, s3
                  slti         s1, gp, -125
                  la           s11, sub_2
                  auipc        sp, 907742
                  addi         s11, s11, 177
                  lui          t1, 290769
sub_1_j4:         jalr         ra, s11, -177 #jump sub_1 -> sub_2
                  la           tp, region_0+1850 #start load_store_instr_stream_0
                  la           s1, region_0+404 #start load_store_instr_stream_3
                  la           s0, region_0+528 #start load_store_instr_stream_1
                  la           a7, region_0+766 #start load_store_instr_stream_2
                  lb           s10, 14(a7)
                  sb           a1, 29(tp)
                  lw           s4, 1032(s0)
                  lb           s3, 105(s1)
                  lh           t2, -4(a7)
                  sb           s7, 13(a7)
                  lbu          sp, -47(s0)
                  sb           sp, -7(a7)
                  lw           s6, 30(tp)
                  lbu          t0, 1361(s0)
                  lb           a3, -5(tp)
                  sh           a5, 2(tp)
                  lb           a3, 15(a7)
                  sw           a5, -256(s1)
                  lbu          s5, -184(s1)
                  sb           sp, 872(s0)
                  lbu          s10, 53(tp)
                  lbu          s7, -53(tp)
                  lb           a6, 212(s1)
                  lb           s9, 744(s0)
                  sb           s6, -97(s1)
                  sb           t6, -376(s0)
                  lbu          t0, -5(a7)
                  lbu          t3, 730(s0)
                  lw           s3, -14(a7)
                  lbu          s11, -40(tp)
                  sb           t1, -11(a7) #end load_store_instr_stream_2
                  lhu          a1, 180(s1)
                  lbu          s5, 365(s0)
                  lbu          s3, 245(s1) #end load_store_instr_stream_3
                  lhu          s9, 618(s0) #end load_store_instr_stream_1
                  sb           zero, 53(tp) #end load_store_instr_stream_0
                  la           s10, region_0+585 #start riscv_load_store_rand_instr_stream_0
                  lh           s9, 111(s10)
                  nop
                  xori         t1, t6, -672
                  lw           t0, 1287(s10)
                  lui          s7, 899093
                  lbu          s0, 714(s10)
                  sb           a5, -218(s10)
                  sra          a6, t2, s6
                  sb           a0, 839(s10)
                  auipc        zero, 604207
                  and          s5, sp, a7
                  lh           a3, -517(s10)
                  lw           s4, -349(s10)
                  sub          a7, s8, s3
                  sb           a1, -47(s10)
                  lbu          s8, -212(s10)
                  lh           a6, 377(s10)
                  lw           s9, 19(s10)
                  sb           a6, -224(s10)
                  sra          a4, sp, t0
                  srai         s11, s1, 29
                  nop
                  lbu          s3, -378(s10)
                  lbu          s8, 701(s10)
                  lb           s1, 783(s10)
                  sb           s9, 430(s10)
                  sb           ra, 846(s10)
                  slti         t2, a6, 1742
                  sb           s5, 167(s10)
                  lbu          a6, -126(s10)
                  sb           a1, 299(s10)
                  sll          s0, a1, s8
                  slt          t5, a5, t4
                  lbu          s1, 662(s10)
                  lb           s1, -101(s10)
                  sb           a6, 1108(s10)
                  sltu         zero, a5, s0
                  sltiu        gp, s8, -611
                  add          t1, s2, s9
                  sh           s6, 469(s10)
                  slt          t3, s6, s1
                  andi         s0, a7, 930
                  sll          zero, a2, s8
                  lbu          a3, 1182(s10)
                  sb           t5, 462(s10)
                  sb           a1, 1401(s10)
                  sb           s7, 718(s10)
                  lbu          t5, 816(s10)
                  lb           gp, 953(s10) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_0+1401 #start riscv_load_store_hazard_instr_stream_0
                  sll          a4, a1, s2
                  sw           s2, 535(a2)
                  lb           s3, -873(a2)
                  srl          s1, tp, s10
                  lb           s10, -873(a2)
                  andi         a4, sp, -1309
                  sw           sp, -873(a2)
                  lbu          t2, 424(a2)
                  lbu          a1, 346(a2)
                  sh           ra, 95(a2)
                  sb           s5, -1094(a2)
                  lb           t2, -1094(a2)
                  nop
                  lbu          s11, 277(a2)
                  lh           t5, 277(a2)
                  lhu          t1, 277(a2)
                  sub          gp, t2, s9
                  lbu          t0, -1240(a2)
                  slti         gp, s0, -68
                  lbu          s4, -410(a2) #end riscv_load_store_hazard_instr_stream_0
                  sltu         a3, s1, t1
                  slt          t1, s9, s8
                  bge          tp, s2, 4f
                  sll          gp, s5, t5
4:                beq          s5, t1, 18f
                  or           s3, t2, s10
                  bgeu         a5, a3, 17f
                  andi         a5, sp, -406
                  addi         s1, t5, -855
                  bltu         gp, a7, 19f
                  and          t5, s6, ra
                  add          s3, t2, t3
                  xori         t1, a1, 523
                  srai         s6, s3, 25
                  add          tp, s0, sp
                  nop
                  slti         a5, t5, 120
17:               xori         s1, s10, -1804
18:               sra          t1, s4, s0
19:               bge          t2, t2, 30f
                  srli         s1, a6, 10
                  slti         s1, t1, -1890
                  slt          a7, s6, t0
                  auipc        t0, 882651
                  andi         s8, a6, -240
                  bltu         t3, s2, 39f
                  sub          zero, s10, zero
                  xor          s7, t6, a1
                  auipc        s6, 751187
                  slti         a7, tp, -573
30:               slli         s1, a5, 1
                  slti         t3, sp, -1916
                  srai         tp, s10, 3
                  bne          s4, s4, 37f
                  sub          s3, zero, s6
                  srl          s3, t6, s8
                  bne          t0, s0, 52f
37:               nop
                  sltu         s6, zero, s7
39:               or           t1, a5, t6
                  or           s10, s4, t3
                  bne          gp, s10, 53f
                  slli         t2, t0, 24
                  srli         t0, t6, 0
                  beq          tp, s10, 64f
                  andi         s7, s6, 261
                  slti         a1, t2, -467
                  beq          tp, t3, 51f
                  or           s9, ra, a4
                  sub          tp, s11, t1
                  and          s0, a2, s9
51:               slti         s1, a0, -1066
52:               sltu         sp, s5, a5
53:               ori          a5, t2, -69
                  slt          t1, t6, t0
                  sra          gp, a2, s10
                  nop
                  srai         gp, s5, 0
                  auipc        s6, 651190
                  blt          s11, s3, 67f
                  addi         zero, gp, 1444
                  bltu         gp, gp, 79f
                  blt          s6, s9, 68f
                  bge          t5, s5, 74f
64:               addi         s6, tp, 1931
                  or           s3, ra, zero
                  add          gp, s9, s6
67:               nop
68:               add          s3, a0, tp
                  and          s7, s3, ra
                  ori          s6, gp, -1698
                  or           zero, s6, tp
                  xori         s6, s3, 436
                  slli         a4, t4, 23
74:               sra          s5, t0, t0
                  addi         sp, a4, 132
                  nop
                  bltu         s1, s0, 79f
                  bge          a6, s2, 94f
79:               auipc        s11, 685625
                  beq          a3, s2, 82f
                  srli         s1, a6, 2
82:               slli         a3, a4, 25
                  sltiu        a0, s9, 453
                  sltiu        s1, t2, 1089
                  add          a5, s11, s8
                  lui          tp, 508228
                  srli         a2, s3, 30
                  slti         t3, t6, 732
                  andi         a2, s9, 625
                  sltiu        a4, t1, 573
                  andi         s9, s10, -1117
                  beq          a6, s9, 109f
                  nop
94:               sub          gp, t2, a7
                  ori          a4, t1, 489
                  xori         a3, a4, 998
                  slti         s11, t4, 1468
                  blt          a0, t2, 115f
                  srl          a7, s5, gp
                  srai         s7, a3, 8
                  bge          a6, s11, 121f
                  xori         a7, s1, -1352
                  xor          s5, a6, a1
                  slt          t1, t3, s10
                  xori         a5, s10, 1222
                  slt          s1, a7, a1
                  srl          s5, a6, s1
                  nop
109:              nop
                  add          a5, s0, sp
                  sra          gp, s4, a2
                  slti         sp, s8, -2033
                  srl          zero, s8, s5
                  bge          s6, s6, 134f
115:              blt          a0, a4, 124f
                  sll          s10, t0, t0
                  slt          s4, s4, s6
                  lui          gp, 430544
                  sra          gp, s2, sp
                  beq          s8, sp, 134f
121:              ori          a2, t2, -1079
                  addi         a4, t6, -4
                  blt          s8, s11, 139f
124:              slti         gp, zero, -417
                  nop
                  beq          t0, t6, 139f
                  addi         t3, t6, -1440
                  bgeu         ra, t3, 141f
                  sll          t2, s10, s10
                  sll          a5, s5, a7
                  xori         s9, t4, 1502
                  xor          s6, gp, t0
                  lui          ra, 107351
134:              lui          s11, 551458
                  srli         t2, t4, 16
                  xori         s1, t2, -1828
                  beq          s8, s8, 156f
                  beq          t0, s1, 146f
139:              add          a3, a3, ra
                  sll          s9, s9, s5
141:              xor          a3, ra, tp
                  bgeu         s9, sp, 156f
                  bne          s8, t4, 151f
                  add          s10, a4, s7
                  sltiu        a5, s8, 1249
146:              xori         s1, s4, 1457
                  blt          s7, t6, 156f
                  bne          t6, s10, 156f
                  sub          s8, s4, t5
                  srl          s5, t0, t3
151:              bltu         s1, s8, 156f
                  xor          s9, a7, t0
                  slt          s8, s6, s10
                  xori         s4, t0, -1583
                  and          a5, a1, tp
156:              add          a6, a6, s1
                  lw           ra, 4(t6)
                  nop
                  addi         t6, t6, 64
                  srli         a7, ra, 0
                  add          t0, tp, s1
303:              addi x28, x1, 0
303:              jalr x28, x28, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x13, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x13, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x13, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x13, x16, ecall_handler
                  li x16, 0x1
                  beq x13, x16, instr_fault_handler
                  li x16, 0x5
                  beq x13, x16, load_fault_handler
                  li x16, 0x7
                  beq x13, x16, store_fault_handler
                  li x16, 0xc
                  beq x13, x16, pt_fault_handler
                  li x16, 0xd
                  beq x13, x16, pt_fault_handler
                  li x16, 0xf
                  beq x13, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
