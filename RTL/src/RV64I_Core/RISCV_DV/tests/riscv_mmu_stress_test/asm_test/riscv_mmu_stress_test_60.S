.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
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
                  li x0, 0x8
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xf4f1d0c3
                  li x4, 0xbb4d6cb0
                  li x5, 0xf2a5f488
                  li x6, 0x0
                  li x7, 0xf42e8709
                  li x8, 0xf2d1a7a0
                  li x9, 0xf7884e9c
                  li x10, 0x80000000
                  li x11, 0xa881010d
                  li x12, 0x80000000
                  li x13, 0x5b282a7c
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0x38b927d6
                  li x17, 0x3680aed4
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x7
                  li x23, 0x80000000
                  li x25, 0x0
                  li x26, 0x4
                  li x27, 0x0
                  li x28, 0x923b0b48
                  li x29, 0x6
                  li x30, 0x58285fd2
                  li x31, 0xc2c53c68
                  la x24, user_stack_end
main:             xori         gp, s7, -109
                  la           a3, sub_1
                  slt          t5, t3, s1
                  nop
                  addi         a3, a3, -574
                  add          a7, s10, a3
                  bgeu         a4, s2, main_j2 #branch to jump instr
                  ori          zero, s8, -296
main_j2:          jalr         t2, a3, 575 #jump main -> sub_1
                  la           t1, region_0+1869 #start riscv_load_store_rand_instr_stream_0
                  sb           t3, 83(t1)
                  sltu         a3, a5, t5
                  nop
                  srl          t2, zero, a5
                  lbu          t2, 99(t1)
                  lb           s4, -212(t1)
                  lb           a1, 90(t1)
                  auipc        t3, 79015
                  lb           a4, -42(t1)
                  lh           gp, -93(t1)
                  ori          t4, a3, -1509
                  lbu          a7, -178(t1)
                  andi         a3, s1, -740
                  sll          t6, t4, a6
                  sb           a7, -218(t1)
                  sltiu        zero, s1, 224
                  lbu          t3, 48(t1)
                  add          t2, t6, zero
                  sb           a4, -240(t1)
                  lbu          s7, -230(t1)
                  sb           a2, -164(t1)
                  nop
                  sb           s3, -222(t1)
                  sltiu        s6, tp, 359
                  lbu          a2, 110(t1)
                  sltu         a7, zero, s8
                  auipc        s11, 534372
                  add          s10, s11, a2
                  sb           s2, -140(t1)
                  lb           s4, 40(t1)
                  srai         a2, t2, 24
                  lb           a7, 126(t1)
                  lb           s6, -184(t1)
                  sltu         a5, s5, s10
                  srli         a4, s7, 2
                  sw           s3, -13(t1) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+585 #start load_store_instr_stream_0
                  la           gp, region_1+1438 #start load_store_instr_stream_1
                  lbu          t2, -9(gp)
                  lb           t3, 9(gp)
                  sb           s8, 40(t5)
                  sw           a4, 10(gp)
                  sb           t0, 46(t5)
                  sb           zero, -11(gp)
                  lh           tp, 27(t5)
                  lbu          ra, -53(t5)
                  lb           s11, 23(t5)
                  sh           s9, -35(t5)
                  sb           t0, -9(gp)
                  lw           sp, -41(t5)
                  lbu          sp, -4(gp)
                  lb           s9, 12(gp)
                  sb           s3, -16(gp) #end load_store_instr_stream_1
                  sb           a3, -60(t5)
                  lb           a0, 36(t5) #end load_store_instr_stream_0
                  la           sp, region_1+1020 #start riscv_load_store_hazard_instr_stream_0
                  sb           t4, 1(sp)
                  lbu          s11, 1(sp)
                  sb           a0, 1(sp)
                  lb           a0, 13(sp)
                  lb           gp, 7(sp)
                  sb           s8, -3(sp)
                  lbu          a1, -3(sp)
                  sb           a7, -3(sp)
                  lbu          tp, -3(sp)
                  lb           a0, -3(sp)
                  add          s7, s4, a6
                  lb           a0, -3(sp)
                  lb           s9, -3(sp)
                  lbu          t2, -3(sp)
                  sb           t6, 16(sp)
                  lbu          t3, 16(sp)
                  sb           ra, 3(sp)
                  sb           ra, -3(sp)
                  lbu          t5, -3(sp)
                  sb           t2, -3(sp) #end riscv_load_store_hazard_instr_stream_0
                  sub          t6, a0, t4
                  add          tp, t0, a0
                  sra          a5, s4, a4
                  slti         s6, t3, 117
                  slli         a6, s2, 29
                  andi         zero, s7, -1276
                  slti         ra, gp, -372
                  srai         sp, tp, 6
                  lui          t1, 759137
                  sra          s4, gp, a1
                  and          a3, tp, ra
                  beq          s7, a1, 18f
                  bge          a6, s9, 17f
                  slti         t6, t4, 949
                  andi         s6, a5, 337
                  and          s6, t0, sp
                  ori          s3, t5, -1522
17:               sltiu        s0, sp, 1112
18:               xori         s0, s6, -648
                  nop
                  addi         t5, t3, -428
                  bltu         t3, a6, 38f
                  blt          s4, tp, 30f
                  srl          tp, a7, t4
                  bge          s4, s2, 32f
                  sltu         a4, s0, zero
                  addi         a7, s3, 1905
                  andi         a2, s9, 1096
                  srai         gp, zero, 2
                  srli         a4, s0, 10
30:               blt          zero, a1, 39f
                  and          t1, ra, a2
                  xori         s4, a2, 1653
                  and          s0, a6, a0
                  la           s5, sub_2
                  addi         s6, tp, 2004
                  xori         a0, ra, 1599
                  and          gp, sp, ra
                  srl          tp, s4, a6
                  slt          a1, s5, s3
                  addi         s5, s5, 575
                  lui          t2, 951783
                  sltiu        gp, s10, -635
                  srli         a5, s11, 11
main_j1:          jalr         t2, s5, -574 #jump main -> sub_2
32:               xor          t5, a3, gp
                  lui          a7, 801400
                  bgeu         a6, ra, 54f
                  sra          a3, s1, a4
                  srli         s0, t6, 28
                  srai         a1, s7, 26
38:               xori         s1, t6, 1860
39:               sltiu        a5, sp, -1983
                  and          zero, tp, t3
                  srli         s0, ra, 27
                  slt          gp, a3, s11
                  ori          s5, s2, 1170
                  bne          zero, zero, 48f
                  sll          t2, t4, s7
                  beq          s4, s11, 50f
                  bne          t0, tp, 55f
48:               beq          t6, sp, 52f
                  blt          t2, a1, 55f
50:               srl          gp, s9, sp
                  xori         a4, t4, -1562
52:               slli         s5, tp, 6
                  sltu         s5, a2, gp
54:               sltiu        a0, a5, -1436
55:               andi         gp, a5, -1602
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xori         s0, a3, -1303
                  srai         zero, s9, 24
                  addi         s8, s8, -16
                  and          a2, sp, t6
                  and          t1, s11, t2
                  sw           t2, 4(s8)
                  sltu         sp, a5, s7
                  la           sp, region_0+715 #start riscv_load_store_hazard_instr_stream_2
                  lbu          a3, -544(sp)
                  sb           s3, -336(sp)
                  lb           tp, -38(sp)
                  lbu          a2, -20(sp)
                  lbu          t2, -20(sp)
                  lbu          gp, -20(sp)
                  lb           a6, -20(sp)
                  lbu          a2, 621(sp)
                  lw           a6, 621(sp)
                  sw           zero, 1017(sp)
                  lhu          a4, 1017(sp)
                  sw           gp, 1017(sp)
                  sh           a0, 1017(sp)
                  lbu          t4, 1017(sp)
                  lbu          tp, 1017(sp)
                  lbu          s6, 100(sp)
                  or           a1, t2, a3
                  sb           t3, 100(sp)
                  sb           s2, 100(sp)
                  lbu          s7, 100(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a5, region_1+124 #start load_store_instr_stream_1
                  la           s9, region_1+1153 #start load_store_instr_stream_0
                  sb           ra, -17(a5)
                  lb           t1, -51(a5)
                  sb           t5, 72(s9)
                  sb           gp, -23(a5)
                  sb           t2, -36(a5)
                  sb           t3, 44(s9)
                  lhu          s4, 49(s9)
                  lb           s4, 47(a5)
                  sb           t6, -48(a5)
                  sb           zero, -6(a5)
                  lb           a4, 160(s9)
                  lbu          a2, 82(s9)
                  lhu          gp, -54(a5)
                  lbu          s1, 6(a5) #end load_store_instr_stream_1
                  lhu          tp, -139(s9)
                  lbu          s6, 226(s9) #end load_store_instr_stream_0
                  la           sp, region_0+1921 #start riscv_load_store_hazard_instr_stream_1
                  sb           t0, -66(sp)
                  lb           t5, -222(sp)
                  lbu          t3, -222(sp)
                  lbu          a7, -222(sp)
                  lbu          ra, -222(sp)
                  sh           a6, -195(sp)
                  lh           a3, -127(sp)
                  nop
                  lh           zero, -127(sp)
                  sh           s0, -127(sp)
                  sh           s7, -127(sp)
                  sb           s0, -127(sp)
                  lh           a0, -127(sp)
                  lhu          a7, -127(sp)
                  lb           t4, -127(sp)
                  lhu          a0, -127(sp)
                  lbu          a3, 12(sp)
                  lb           t2, 12(sp)
                  lbu          zero, 12(sp)
                  sll          a5, t5, s0
                  lb           gp, -218(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a2, region_0+838 #start riscv_load_store_hazard_instr_stream_3
                  sh           ra, -230(a2)
                  lbu          a4, 165(a2)
                  sh           t1, 758(a2)
                  lh           t1, 758(a2)
                  lbu          a3, 217(a2)
                  sb           s6, 429(a2)
                  sb           t6, 429(a2)
                  add          a0, s5, s9
                  lb           s5, 1110(a2)
                  lhu          s1, 1110(a2)
                  sw           s3, 1110(a2)
                  lhu          zero, 1110(a2)
                  lbu          s9, -473(a2)
                  lb           a7, -473(a2)
                  lb           a3, -473(a2)
                  lbu          s6, -776(a2)
                  lbu          sp, -285(a2) #end riscv_load_store_hazard_instr_stream_3
                  la           s4, region_1+1239 #start riscv_load_store_rand_instr_stream_0
                  sll          t2, t3, s9
                  lh           gp, 163(s4)
                  andi         s7, a4, 1961
                  and          a5, s2, a7
                  sb           s5, -62(s4)
                  sw           t0, -127(s4)
                  lw           s7, 189(s4)
                  lbu          zero, -145(s4)
                  srli         zero, a2, 2
                  auipc        t4, 57133
                  slt          s5, s7, s2
                  srai         tp, s10, 12
                  slt          ra, t0, sp
                  lhu          s7, -7(s4)
                  sb           a4, 85(s4)
                  lui          a5, 260944
                  lbu          a1, 162(s4)
                  sltiu        t2, a2, -2031
                  slli         ra, t0, 6
                  slti         sp, t2, -763
                  slli         t6, a2, 31
                  sltu         a5, a3, s7
                  auipc        s1, 287371
                  sra          s7, a4, s3
                  lbu          a7, 56(s4)
                  slli         t4, a6, 12
                  sh           a3, 93(s4)
                  sb           gp, 71(s4)
                  lbu          t6, 18(s4)
                  sltu         tp, s8, s5
                  nop
                  lb           s5, 147(s4)
                  xor          a0, zero, s7
                  lui          tp, 569929
                  sltiu        tp, sp, 1793
                  lh           ra, -127(s4)
                  ori          s3, s8, -779
                  lbu          ra, 254(s4)
                  lb           s11, -254(s4)
                  add          zero, s5, s11
                  ori          t5, s9, -1679
                  srai         gp, s3, 27
                  slt          t2, s5, a1
                  sb           s6, -78(s4)
                  sb           s5, -142(s4)
                  ori          s10, t0, -345
                  slti         a7, tp, -1731
                  sb           tp, -205(s4)
                  lh           s11, 121(s4) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+1745 #start load_store_instr_stream_2
                  la           sp, region_0+80 #start load_store_instr_stream_1
                  la           t3, region_0+1178 #start load_store_instr_stream_3
                  lh           s7, -8(sp)
                  lbu          a4, -14(t1)
                  lb           a2, 14(t3)
                  la           s5, region_0+138 #start load_store_instr_stream_0
                  sb           t5, 0(t1)
                  sb           s1, 36(s5)
                  lbu          s6, 8(t3)
                  lbu          t4, -12(t1)
                  lh           s0, 12(t3)
                  sb           sp, 10(t3)
                  lbu          t6, -6(t1)
                  lhu          s7, 7(t1)
                  lh           s7, -12(sp)
                  lb           s4, -12(sp)
                  lw           ra, 134(s5)
                  lh           t2, -13(t1)
                  sh           t3, 6(sp)
                  lb           a7, -115(s5)
                  lb           zero, -9(t3)
                  sb           s6, -5(sp)
                  sb           s7, -5(t3)
                  lh           t4, 10(t3)
                  sh           s8, 13(t1)
                  lw           a6, -14(t3)
                  lb           a1, 71(s5)
                  sb           s2, 9(t3)
                  lbu          s7, 7(sp) #end load_store_instr_stream_1
                  sh           a1, -8(t3) #end load_store_instr_stream_3
                  sb           s3, 5(t1) #end load_store_instr_stream_2
                  sb           sp, 55(s5) #end load_store_instr_stream_0
                  la           t4, region_0+1657 #start load_store_instr_stream_0
                  lw           t5, -5(t4)
                  la           t3, region_0+914 #start load_store_instr_stream_1
                  lbu          ra, -37(t3)
                  sb           zero, 195(t3)
                  lb           s3, 192(t4)
                  lb           a0, -1229(t4)
                  sb           t0, -671(t4)
                  la           a7, region_0+639 #start load_store_instr_stream_2
                  lb           tp, -221(a7)
                  sb           s1, -1404(t4)
                  lbu          s7, -1274(t4)
                  lh           a0, -232(t3)
                  sb           s10, 1004(a7)
                  lb           s6, -351(t4)
                  sh           sp, 87(a7)
                  lh           s4, 149(t4)
                  sh           s8, 215(a7)
                  lh           tp, 228(t3)
                  sb           s2, 200(t3)
                  lbu          zero, 154(t4)
                  sb           a4, 291(a7) #end load_store_instr_stream_2
                  lb           s10, -91(t3) #end load_store_instr_stream_1
                  lb           s3, -63(t4) #end load_store_instr_stream_0
                  la           sp, region_0+1054 #start riscv_load_store_rand_instr_stream_3
                  nop
                  sb           s9, 224(sp)
                  ori          t2, t2, -1275
                  sb           t5, -127(sp)
                  lw           t1, 138(sp)
                  lbu          t4, -84(sp)
                  addi         t6, t6, -1656
                  sh           s7, -96(sp)
                  lui          ra, 275126
                  sra          a1, s1, s8
                  lui          a3, 943283
                  sra          s5, s2, t1
                  sra          ra, a6, s3
                  lbu          a4, 25(sp)
                  lh           t1, 142(sp)
                  lh           ra, 212(sp)
                  sub          t4, s5, t6
                  lh           s6, 92(sp)
                  xor          s10, s3, s11
                  lb           a6, 135(sp)
                  lbu          s10, -35(sp)
                  or           s7, sp, ra
                  sub          s3, s11, tp
                  ori          s4, t6, 881
                  lb           t1, 197(sp)
                  srli         s1, s8, 9
                  srli         t3, a4, 21
                  sb           a2, 253(sp)
                  add          a5, t0, s1
                  slli         s6, s8, 18
                  lb           s10, -116(sp)
                  sb           a1, -155(sp)
                  sh           s1, 132(sp)
                  sh           t0, 122(sp)
                  nop
                  sb           s4, -37(sp)
                  slt          a1, s4, s3
                  srl          a7, t6, s2
                  sll          a6, a3, s1
                  srl          s6, a2, s1
                  sh           t0, 38(sp)
                  lb           s6, -25(sp)
                  lb           s5, 45(sp)
                  lbu          s4, 234(sp)
                  lb           gp, 111(sp)
                  auipc        a4, 419421
                  lbu          a1, 29(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a1, region_1+905 #start riscv_load_store_rand_instr_stream_2
                  sltu         s4, t1, a4
                  nop
                  lhu          gp, 29(a1)
                  xor          zero, ra, a0
                  sb           s5, -8(a1)
                  slt          s4, s0, a7
                  sra          s9, t3, s10
                  lw           t6, 127(a1)
                  lb           s9, 222(a1)
                  sra          sp, a0, s6
                  ori          sp, s2, -69
                  sb           gp, 76(a1)
                  lbu          t4, -14(a1)
                  slli         s6, ra, 11
                  or           s11, s7, s11
                  and          s1, s11, a2
                  auipc        s3, 120951
                  andi         s11, ra, -1988
                  srli         s11, ra, 27
                  lbu          s7, -74(a1)
                  sb           t1, -140(a1)
                  and          a0, gp, s6
                  and          s0, s3, t3
                  srli         s0, t5, 0
                  lui          a7, 915864
                  add          zero, s3, tp
                  sh           s3, -93(a1)
                  sb           sp, 48(a1)
                  sb           s5, -142(a1) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_0+626 #start load_store_instr_stream_1
                  la           t3, region_0+752 #start load_store_instr_stream_2
                  lhu          a2, -26(t2)
                  la           s11, region_0+0 #start load_store_instr_stream_0
                  sw           t3, 124(s11)
                  lbu          a0, 3(t3)
                  sb           t2, 15(t3)
                  lbu          a5, 45(t2)
                  lb           t1, -11(t3)
                  lbu          s9, 173(s11)
                  lb           a3, -49(t2)
                  sb           t1, 182(s11)
                  sh           s7, 14(t3)
                  lb           s9, -37(t2)
                  sb           a4, 26(t2)
                  sb           zero, 23(s11)
                  lhu          a1, 210(s11)
                  lh           a0, 66(s11)
                  sb           ra, 27(t2)
                  lhu          a6, 8(s11)
                  sb           a6, 25(s11)
                  sh           s8, 24(t2)
                  lbu          s0, 15(t3)
                  sb           a3, -12(t3)
                  lhu          a1, 24(t2) #end load_store_instr_stream_1
                  lhu          gp, -6(t3)
                  sb           s5, -15(t3) #end load_store_instr_stream_2
                  lhu          t5, 156(s11) #end load_store_instr_stream_0
                  and          sp, a7, s11
                  sll          s7, a2, a3
                  blt          t0, zero, 13f
                  nop
                  slli         s0, t5, 29
                  lui          sp, 197201
                  bltu         s8, tp, 17f
                  xori         t5, ra, -1728
                  bge          t1, s10, 25f
                  srli         t1, s1, 8
                  slt          t5, a4, s1
                  srli         t6, s2, 23
                  lui          t4, 633776
13:               slti         s9, s8, -1884
                  sltu         t1, a0, gp
                  beq          zero, s3, 21f
                  xori         a6, s5, -481
17:               xor          a5, t6, s3
                  ori          s4, s6, -412
                  sra          s9, s8, t6
                  bgeu         t0, a3, 32f
21:               blt          t5, s6, 27f
                  bge          a2, s2, 27f
                  ori          s3, s9, -1533
                  and          s5, s0, t4
25:               bltu         s11, t1, 26f
26:               blt          t5, a6, 40f
27:               sltu         a5, s3, zero
                  sub          a3, t5, gp
                  sll          s3, zero, a2
                  bne          a6, s9, 40f
                  sll          s3, a6, a4
32:               slti         t5, a2, 93
                  slt          a3, a0, t1
                  xori         zero, s7, -850
                  add          ra, s6, s9
                  or           a3, t0, a2
                  xor          a4, t6, a1
                  bge          a7, s0, 47f
                  srl          a0, s9, s2
40:               sub          s11, t1, s3
                  sltu         a4, tp, s0
                  slt          s9, a5, t4
                  auipc        s7, 258339
                  sll          s1, tp, s7
                  sub          s7, sp, s0
                  ori          a7, s0, 153
47:               auipc        ra, 174259
                  sltu         zero, s9, s8
                  srl          s5, tp, s11
                  slli         s11, ra, 18
                  srai         s10, a5, 25
                  and          zero, t2, t0
                  nop
                  bne          a6, a1, 55f
55:               srai         tp, a2, 10
                  bgeu         sp, s8, 71f
                  ori          t3, s4, 774
                  lui          s0, 679196
                  sltiu        s1, s10, -1633
                  auipc        s3, 339300
                  sltu         a1, t5, a5
                  beq          a4, a6, 79f
                  sltu         s6, t0, s7
                  srl          a0, a6, s7
                  nop
                  bltu         s1, ra, 70f
                  xor          tp, s3, a5
                  or           t2, t5, t4
                  auipc        a4, 208651
70:               bge          a3, s5, 87f
71:               xori         ra, s9, 194
                  bge          s8, a4, 87f
                  slti         a7, s8, -606
                  srli         a2, t5, 17
                  bge          a2, a4, 88f
                  srli         t5, s5, 25
                  lui          a6, 632792
                  bltu         a1, s0, 94f
79:               and          t4, a7, s2
                  bgeu         a2, tp, 90f
                  bgeu         s3, s10, 85f
                  sra          s3, s7, a0
                  and          s0, a5, s1
                  bgeu         a4, s9, 104f
85:               andi         s10, s3, 1273
                  and          s5, a7, tp
87:               blt          ra, sp, 106f
88:               auipc        s3, 91546
                  slti         t2, s2, -1813
90:               addi         s10, a3, -1207
                  auipc        s5, 37886
                  ori          s10, a0, 525
                  lui          t5, 632170
94:               xori         t4, s6, -1121
                  bgeu         ra, a5, 114f
                  xor          a3, t6, s1
                  ori          a3, a6, -466
                  blt          t6, t5, 103f
                  sll          s9, ra, t1
                  add          a6, t5, s2
                  sll          a3, s4, tp
                  andi         s4, s9, -1358
103:              add          s4, t0, gp
104:              sub          a3, t1, a5
                  ori          s6, a7, -1199
106:              bgeu         s8, s3, 116f
                  slt          a6, s1, s0
                  srl          s3, t0, s2
                  add          s7, s5, s1
                  sltu         a3, a4, s7
                  beq          t3, s5, 123f
                  srli         t1, s10, 29
                  bgeu         s7, s10, 128f
114:              sll          a3, s1, t6
                  andi         s0, sp, 1040
116:              lui          sp, 958703
                  slt          s4, s9, a4
                  nop
                  nop
                  nop
                  slti         s0, gp, -629
                  sltu         a4, sp, a3
123:              srl          t4, s2, a6
                  ori          s5, ra, 1500
                  or           t3, t6, s0
                  nop
                  sra          a3, a3, s2
128:              addi         s7, a0, 1793
                  slli         s11, t2, 23
                  bltu         s5, ra, 132f
                  slli         t4, s10, 24
132:              addi         s5, t3, -581
                  xori         t4, s7, 389
                  xori         a4, a1, 539
                  xori         s4, gp, 793
                  ori          s9, s0, 1772
                  auipc        sp, 242737
                  sub          t3, t6, s11
                  sltiu        s1, s10, 714
                  srl          sp, a7, a0
                  auipc        a1, 112837
                  add          tp, a7, s10
                  beq          t3, a3, 160f
                  addi         s9, s8, 392
                  srl          s10, s11, zero
                  slti         zero, a5, 673
                  beq          a0, a7, 164f
                  nop
                  srli         a0, zero, 5
                  bge          s10, s7, 160f
                  slt          gp, s4, s7
                  ori          gp, tp, 371
                  srai         s1, t4, 16
                  sll          t6, a3, s4
                  slt          t6, t4, s3
                  addi         t1, tp, -940
                  beq          t5, ra, 174f
                  beq          gp, s8, 159f
159:              srli         s9, s8, 11
160:              srli         s1, s8, 22
                  ori          t3, t5, -583
                  and          s7, t2, s10
                  slli         t3, s8, 7
164:              lui          a2, 633581
                  ori          s1, t2, -935
                  xori         t5, t1, 1309
                  beq          s6, s4, 179f
                  xor          s4, a5, a5
                  sub          tp, s4, s1
                  sltu         a4, s7, ra
                  slti         a7, a1, -1049
                  beq          zero, tp, 182f
                  andi         s1, a0, 1105
174:              bne          t3, tp, 188f
                  slti         a3, gp, -589
                  slt          a7, t5, a3
                  nop
                  bne          s6, s7, 180f
179:              srli         a3, a7, 20
180:              auipc        a0, 781836
                  sra          a0, s5, t2
182:              blt          s9, a6, 187f
                  beq          s4, s4, 198f
                  slt          a5, s7, sp
                  bgeu         zero, s6, 201f
                  auipc        t1, 150198
187:              bltu         a4, s4, 191f
188:              bltu         zero, a3, 189f
189:              sub          a3, s7, t3
                  bltu         a4, a7, 209f
191:              nop
                  bltu         gp, t3, 209f
                  srai         zero, s2, 3
                  andi         s9, s1, 225
                  bgeu         t2, a1, 200f
                  slli         t2, s8, 31
                  slti         s7, a3, -105
198:              srli         t6, s6, 15
                  sub          a6, a5, t2
200:              srai         gp, gp, 24
201:              and          sp, s5, s1
                  auipc        tp, 720558
                  or           sp, a3, t4
                  sltiu        s0, a1, -655
                  srl          t3, t4, t4
                  sra          t1, ra, t5
                  lui          s9, 199593
                  sll          t4, gp, sp
209:              nop
                  slti         s10, t4, 1911
                  xori         a6, s4, 1302
                  nop
                  slti         t1, a1, 864
                  blt          s6, a7, 224f
                  slli         s6, a0, 14
                  srai         s7, s11, 9
                  srai         s11, tp, 12
                  or           a1, sp, a7
                  bne          s3, t2, 234f
                  auipc        a4, 460289
                  bltu         a1, a7, 227f
                  sltu         a0, a7, t4
                  slt          s7, tp, s0
224:              and          a3, s4, s7
                  bge          a2, s8, 240f
                  bgeu         s3, a1, 238f
227:              bgeu         s1, t1, 240f
                  or           a6, gp, t3
                  sub          s1, s1, a3
                  slti         zero, a4, 1803
                  beq          s1, t3, 250f
                  bne          s8, s3, 252f
                  lui          a3, 811973
234:              or           t6, a7, zero
                  slti         s10, ra, 1300
                  blt          s7, a5, 247f
                  add          t3, a3, zero
238:              nop
                  bne          t0, a1, 245f
240:              bgeu         s10, a4, 251f
                  nop
                  or           t3, a4, s1
                  add          t4, s1, s10
                  beq          s7, s7, 261f
245:              andi         s11, a6, -512
                  lui          a5, 405986
247:              add          s7, t0, tp
                  sra          s6, t6, t5
                  slt          s4, sp, t2
250:              srl          gp, s7, t3
251:              slt          s7, zero, a5
252:              lui          a5, 338787
                  addi         zero, a0, -956
                  ori          s11, s10, -1723
                  nop
                  sll          s5, t4, a2
                  nop
                  srli         sp, t1, 0
                  addi         t1, s7, -302
                  and          s10, s1, t1
261:              srli         a6, a7, 26
                  xor          ra, s8, a6
                  nop
                  srai         s4, t2, 11
                  slti         s9, s10, 1307
                  andi         s1, s9, 2012
                  bge          s5, s3, 271f
                  sll          gp, t2, zero
                  nop
                  srl          s6, s9, s0
271:              nop
                  beq          s10, a3, 281f
                  or           t4, t2, ra
                  sub          a6, t6, t3
                  bge          s3, s5, 287f
                  la           a3, region_1+356 #start riscv_load_store_hazard_instr_stream_0
                  sltiu        tp, s3, -729
                  sb           s5, -7(a3)
                  lw           s6, -24(a3)
                  lbu          s11, -25(a3)
                  lb           sp, -25(a3)
                  or           sp, a6, s2
                  sb           zero, -25(a3)
                  lb           s7, -25(a3)
                  lw           s6, 52(a3)
                  lui          a5, 571333
                  lhu          a5, 52(a3)
                  lbu          tp, 53(a3)
                  sh           s10, 52(a3)
                  lbu          s5, 52(a3)
                  or           s5, tp, zero
                  sh           a0, 52(a3)
                  lbu          s6, -3(a3)
                  lbu          t5, -35(a3)
                  sb           a3, -35(a3)
                  or           s10, gp, t3
                  lbu          s10, -33(a3)
                  sb           ra, -33(a3) #end riscv_load_store_hazard_instr_stream_0
                  slti         t3, t3, 639
                  add          s6, s4, s4
                  andi         s11, a0, -710
                  lui          s9, 688265
                  slt          t1, s1, s10
281:              slti         s1, s1, 557
                  sltiu        tp, s7, -971
                  lui          sp, 848523
                  bgeu         a1, s8, 295f
                  sub          a6, zero, a7
                  and          s3, s10, a4
287:              nop
                  bltu         t1, ra, 289f
289:              sll          sp, sp, s4
                  blt          t2, s4, 307f
                  sra          s7, s7, t3
                  xor          a5, a7, s5
                  beq          s9, zero, 294f
294:              sltu         zero, s3, a5
295:              sra          s1, a3, gp
                  lui          t2, 979007
                  beq          a2, t3, 314f
                  sltiu        a2, s8, 1737
                  sub          s0, a7, ra
                  auipc        t1, 764652
                  blt          s2, s11, 310f
                  sub          a6, s5, s11
                  auipc        a5, 614579
                  srli         a5, t1, 4
                  auipc        a5, 710257
                  blt          a4, s11, 325f
307:              bgeu         ra, t0, 311f
                  or           s0, s2, sp
                  srai         s4, zero, 5
310:              and          t4, s8, t6
311:              slt          zero, a2, zero
                  bge          a4, s2, 322f
                  ori          s7, s5, -680
314:              bltu         s0, s3, 324f
                  slti         t1, t1, -1292
                  sub          s3, a5, a6
                  or           t2, sp, a0
                  srl          tp, s5, s5
                  sltu         a0, t4, a2
                  bltu         s9, s3, 333f
                  sltu         gp, s4, s8
322:              slti         a0, t1, 1554
                  xor          s4, s11, tp
324:              sltiu        tp, t5, 959
325:              srl          t6, t3, t3
                  add          ra, t6, s11
                  or           t3, sp, a3
                  slli         a7, t1, 30
                  beq          s8, s11, 335f
                  addi         t5, zero, 682
                  slli         sp, s0, 7
                  srli         t2, a3, 3
333:              addi         a1, a4, 64
                  srl          s7, tp, a6
335:              blt          s1, a4, 350f
                  slti         tp, t2, -950
                  bge          s0, t1, 352f
                  sltiu        sp, s8, 579
                  andi         gp, a3, -1802
                  add          s5, a2, t0
                  slt          zero, t6, s2
                  slti         t4, a6, 1984
                  sltiu        a2, t1, -1711
                  sub          a0, t1, t3
                  bne          t2, t4, 362f
                  sll          s3, sp, s6
                  srli         sp, t0, 15
                  sll          s11, t0, t1
                  sltiu        a3, a1, 1644
350:              sll          s10, s2, zero
                  srli         a3, t6, 3
352:              xor          s11, a5, a5
                  slli         t6, zero, 2
                  andi         s6, a0, -187
                  and          a2, s3, s7
                  lui          tp, 885622
                  andi         s10, tp, 2015
                  blt          a7, a4, 370f
                  slli         s4, s4, 4
                  srl          sp, sp, zero
                  sra          s9, s1, tp
362:              bne          a4, s5, 368f
                  bne          a7, s6, 374f
                  slli         t1, s11, 16
                  beq          t5, s5, 370f
                  ori          s9, t3, -910
                  slli         t6, s2, 21
368:              slt          s1, s9, t6
                  lui          s4, 399565
370:              bne          s0, tp, 380f
                  slt          s3, a7, s5
                  xori         zero, s2, 1760
                  nop
374:              sll          s0, a6, s1
                  slt          s6, t2, sp
                  add          tp, s3, t6
                  srli         s0, s5, 16
                  beq          a3, sp, 393f
                  sra          t4, a4, a1
380:              xori         s0, s9, -966
                  sub          a7, s1, a3
                  or           t3, s10, gp
                  nop
                  beq          s0, t5, 403f
                  bgeu         gp, s8, 390f
                  lui          s10, 519920
                  bltu         a7, a1, 389f
                  sll          sp, s10, s8
389:              nop
390:              andi         s10, a2, -1930
                  blt          t1, s9, 395f
                  bgeu         s11, s9, 408f
393:              xori         s11, a2, 1383
                  slli         s7, s8, 2
                  la           a0, region_1+240 #start riscv_load_store_rand_instr_stream_1
                  xori         s3, s0, 1878
                  lui          s4, 609399
                  add          t5, zero, a5
                  lbu          a3, 36(a0)
                  slli         t1, tp, 14
                  andi         a7, a5, -156
                  nop
                  sb           t1, -22(a0)
                  lui          zero, 98582
                  slli         a7, a2, 30
                  srli         a6, s2, 21
                  xor          s10, a6, s6
                  lbu          s11, -38(a0)
                  sh           a3, -14(a0)
                  srl          s1, t5, a3
                  srai         t2, s4, 6
                  slti         ra, s10, -1970
                  xori         s7, t1, -1800
                  ori          t6, s1, 150
                  add          t6, t5, s10
                  auipc        sp, 16163
                  sltiu        a2, s9, -803
                  sb           a6, 47(a0)
                  nop
                  sltiu        s7, s3, -1001
                  lbu          gp, -27(a0)
                  sw           a1, 48(a0)
                  lui          t6, 23200
                  slt          s5, t3, s11
                  slli         s10, t1, 12
                  addi         a1, t3, -1917
                  lhu          a7, -32(a0)
                  lw           s11, 0(a0)
                  and          s3, a6, a5
                  sb           s2, -2(a0)
                  slt          s10, a0, zero
                  sb           s6, -29(a0)
                  auipc        s10, 684888
                  srl          a4, gp, t1
                  lh           s0, -48(a0) #end riscv_load_store_rand_instr_stream_1
395:              bltu         tp, s9, 412f
                  slt          ra, a4, s10
                  sltiu        a1, a1, 992
                  sra          a0, a0, s8
                  slli         s10, s6, 13
                  srai         s6, s7, 16
                  srai         t2, a4, 0
                  andi         t1, ra, 1947
403:              bgeu         a2, s2, 423f
                  auipc        s6, 217261
                  xor          s1, t4, s1
                  ori          s10, a7, -364
                  xor          t5, zero, t3
408:              xor          zero, a7, t6
                  sub          s9, a2, s11
                  beq          a2, t2, 424f
                  srai         a5, s3, 18
412:              bltu         a5, t1, 427f
                  sltu         s5, t1, s1
                  blt          t1, t4, 431f
                  andi         s0, s5, 1596
                  slti         t4, s9, 287
                  bgeu         tp, s3, 432f
                  lui          s9, 80433
                  xori         s1, tp, 1716
                  sub          t3, ra, a1
                  andi         s3, a5, 487
                  and          s10, a2, a0
423:              blt          s6, a6, 434f
424:              slti         ra, gp, -1691
                  bltu         a2, s2, 426f
426:              bge          a6, a1, 430f
427:              srai         tp, zero, 19
                  bltu         a6, s8, 440f
                  andi         s9, zero, -473
430:              auipc        gp, 23552
431:              bgeu         ra, t2, 441f
432:              andi         zero, t2, -262
                  ori          s5, s10, -1209
434:              sra          sp, s2, s4
                  auipc        a0, 337862
                  andi         t2, s5, -960
                  bltu         sp, a0, 445f
                  slt          a4, s11, s1
                  bltu         s4, t1, 443f
440:              bne          ra, a5, 441f
441:              andi         a4, s11, 1682
                  bge          s5, s4, 445f
443:              srli         a5, zero, 17
                  sltu         a7, t2, a0
445:              slti         a6, t5, -111
                  lw           t2, 4(s8)
                  and          gp, s2, s7
                  slt          ra, s0, s10
                  sltu         t5, s1, s2
                  addi         s8, s8, 16
                  sltu         s6, s5, s7
                  slti         t1, s11, 1226
                  xori         a0, a7, 1760
817:              addi x29, x7, 1
817:              jalr x29, x29, 0
sub_1:            addi         s8, s8, -44
                  sub          a7, a3, s5
                  sw           t2, 4(s8)
                  and          s4, t6, s8
                  srai         s1, s11, 15
                  add          s3, tp, a0
                  srai         sp, t5, 3
                  lui          a7, 687185
                  lui          tp, 7571
                  srai         sp, t2, 15
                  slt          gp, s8, a4
                  la           sp, region_1+439 #start riscv_load_store_hazard_instr_stream_1
                  sb           t6, -256(sp)
                  sh           s2, 55(sp)
                  sh           gp, 55(sp)
                  lhu          a4, 55(sp)
                  sb           a6, 55(sp)
                  lhu          s7, -45(sp)
                  slli         a0, a6, 27
                  and          t5, a5, a1
                  sb           gp, 8(sp)
                  lh           s9, 189(sp)
                  sw           zero, 189(sp)
                  sb           s7, 117(sp)
                  xori         s10, s2, 174
                  lbu          a2, -68(sp)
                  lbu          t1, -68(sp)
                  sb           a1, -68(sp)
                  sb           a2, -68(sp)
                  lbu          gp, -134(sp)
                  sll          ra, s6, s3
                  sb           s9, -134(sp)
                  lb           gp, -134(sp)
                  sb           t0, -134(sp)
                  lb           zero, 202(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+1504 #start riscv_load_store_rand_instr_stream_3
                  sh           t3, 0(sp)
                  srai         t1, a3, 17
                  lh           t5, -62(sp)
                  lw           s11, -16(sp)
                  and          s1, t6, s10
                  lbu          a5, -33(sp)
                  lb           a7, -11(sp)
                  srai         s7, a7, 19
                  lb           a4, -61(sp)
                  sll          a2, s8, tp
                  sra          a6, ra, t1
                  lbu          s10, 24(sp)
                  lbu          s9, -34(sp)
                  sb           a3, -46(sp)
                  ori          t6, s4, 269
                  lbu          s1, -11(sp)
                  auipc        t2, 903102
                  srai         a4, a6, 6
                  auipc        a1, 606843
                  sh           gp, 32(sp)
                  addi         s0, a1, 1914
                  lbu          a0, -63(sp)
                  lbu          s0, -14(sp)
                  lbu          s7, 40(sp)
                  lbu          s3, -24(sp)
                  add          s11, gp, s3
                  sb           s6, 63(sp)
                  sra          s9, s11, ra
                  or           a5, a1, t1
                  slti         a1, a7, -441
                  nop
                  slti         s7, t6, -1046
                  lb           s4, 21(sp)
                  lb           s6, -33(sp)
                  lb           a0, 53(sp)
                  lb           t6, -36(sp)
                  sb           a5, 64(sp)
                  add          t5, s2, ra
                  ori          a1, s6, 626
                  sh           t6, -14(sp)
                  lb           s0, -35(sp)
                  srai         s4, s1, 2
                  sb           s2, -48(sp)
                  sll          a4, s5, t2
                  slt          a4, s10, s1
                  addi         s0, s4, 386
                  sh           s2, 14(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_1+93 #start load_store_instr_stream_2
                  la           s5, region_1+258 #start load_store_instr_stream_1
                  la           a4, region_1+1874 #start load_store_instr_stream_0
                  lbu          ra, -26(a6)
                  lb           a5, -43(s5)
                  lb           tp, -5(a4)
                  lbu          a0, 234(a6)
                  sb           gp, 1(s5)
                  lhu          s0, -58(s5)
                  lhu          a2, -18(s5)
                  sb           ra, 19(a4)
                  lbu          a1, -23(s5)
                  sb           s10, -28(a6)
                  lb           t3, -36(a4)
                  lbu          sp, 47(s5)
                  sw           t1, 171(a6)
                  lbu          ra, 158(a6)
                  lbu          a0, -56(a4)
                  lw           s1, 58(s5)
                  lb           a3, 43(s5)
                  lh           s9, -43(a6)
                  lbu          sp, -59(s5)
                  lbu          t6, 47(a4)
                  lhu          s4, 29(a6)
                  lh           gp, -16(s5) #end load_store_instr_stream_1
                  lb           s7, 47(a4)
                  lb           s6, 34(a6) #end load_store_instr_stream_2
                  lbu          a1, -21(a4) #end load_store_instr_stream_0
                  la           a3, region_1+595 #start riscv_load_store_hazard_instr_stream_2
                  sh           tp, 769(a3)
                  addi         s10, sp, 656
                  lbu          a2, 769(a3)
                  lbu          t3, 769(a3)
                  srl          t1, t0, s3
                  sh           s5, 769(a3)
                  lb           t3, 431(a3)
                  sh           s8, 431(a3)
                  sb           tp, 102(a3)
                  lb           a0, 102(a3)
                  sb           s4, 102(a3)
                  and          t3, s3, s2
                  sb           s11, 102(a3)
                  sb           tp, 102(a3)
                  sb           zero, 102(a3)
                  srli         a0, a4, 26
                  sb           tp, 102(a3)
                  lbu          a7, -134(a3) #end riscv_load_store_hazard_instr_stream_2
                  la           s0, region_0+880 #start riscv_load_store_rand_instr_stream_1
                  sb           a7, -5(s0)
                  lw           s4, -20(s0)
                  xor          ra, t6, a7
                  slli         a1, a5, 2
                  lbu          s10, 64(s0)
                  lb           s5, -6(s0)
                  sll          tp, a2, tp
                  lbu          t5, -27(s0)
                  sb           t1, 62(s0)
                  andi         t3, gp, -1292
                  srl          a4, a0, t2
                  slti         sp, t5, -1472
                  xor          a7, t2, s6
                  sw           t0, -16(s0)
                  lbu          sp, 24(s0)
                  sltu         tp, s4, a0
                  auipc        s7, 570366
                  lb           s9, -29(s0)
                  nop
                  and          sp, zero, gp
                  andi         a7, s5, -74
                  lbu          a7, 50(s0)
                  addi         a2, a3, 1084
                  lbu          zero, 29(s0)
                  lh           ra, 40(s0)
                  lbu          s1, -51(s0)
                  addi         a7, t4, -494
                  sb           t6, -43(s0)
                  lbu          s9, 31(s0)
                  sb           s9, -34(s0)
                  lh           t1, -2(s0)
                  lbu          s1, -3(s0)
                  auipc        t6, 704728
                  xori         s7, t0, -1035
                  lb           a1, 6(s0)
                  lhu          s6, 34(s0)
                  sltu         ra, a4, sp
                  lhu          t6, -42(s0)
                  sub          t1, s8, a3
                  xori         sp, tp, 402
                  lhu          s10, 30(s0)
                  srli         sp, s10, 18
                  xori         a6, s5, -1627
                  sh           s6, 22(s0)
                  srl          s4, s6, s9
                  srai         t5, tp, 13
                  slti         a6, zero, -475
                  lbu          s11, -28(s0)
                  sw           t1, 16(s0)
                  sw           s8, 64(s0)
                  srl          t2, gp, s7
                  lb           ra, 6(s0)
                  sb           a1, 12(s0)
                  lbu          s4, 31(s0) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_0+1244 #start load_store_instr_stream_1
                  la           t2, region_0+509 #start load_store_instr_stream_0
                  sb           a0, 1404(t2)
                  lb           tp, -256(s11)
                  lb           s0, 29(s11)
                  lb           s3, -106(s11)
                  lbu          s3, -16(s11)
                  lh           gp, 23(t2)
                  sh           s8, -170(s11)
                  sb           s6, 87(s11)
                  lb           t6, 1379(t2)
                  lh           a5, -160(s11)
                  sh           s4, 94(s11)
                  lb           s0, 61(t2)
                  lbu          s1, 49(s11)
                  lbu          t4, 1136(t2)
                  sb           a0, 41(s11) #end load_store_instr_stream_1
                  lhu          a1, 335(t2) #end load_store_instr_stream_0
                  la           s6, region_1+194 #start riscv_load_store_rand_instr_stream_2
                  lbu          s1, 993(s6)
                  srli         a5, s3, 6
                  xori         s9, s6, 1200
                  sb           t5, 1153(s6)
                  sub          a2, s9, a0
                  andi         a0, t0, -1070
                  andi         s1, a7, 428
                  lbu          s10, 391(s6)
                  lb           zero, 1027(s6)
                  slti         t5, sp, 1851
                  lh           t1, 716(s6)
                  xor          a6, a1, s3
                  lbu          s1, 47(s6)
                  lw           ra, 134(s6)
                  add          a1, s3, s8
                  srli         a3, a4, 2
                  slt          a2, s2, a7
                  sll          t4, s4, t5
                  slti         a6, a1, -736
                  lbu          a1, -71(s6)
                  lui          t3, 250122
                  lh           gp, 580(s6)
                  sw           t2, 1386(s6)
                  auipc        a7, 824313
                  lbu          gp, 1653(s6)
                  ori          s4, sp, 1645
                  addi         ra, t1, 1811
                  lbu          ra, 23(s6)
                  srli         a2, t1, 1
                  lb           s9, 540(s6)
                  lb           s5, 1323(s6)
                  sb           sp, 1793(s6)
                  lbu          t6, 31(s6)
                  lb           s3, 1263(s6)
                  lb           t3, 829(s6)
                  lbu          s5, 102(s6)
                  sb           a3, 799(s6)
                  sb           s0, 1237(s6)
                  lbu          a5, 1539(s6)
                  srl          tp, a6, s1
                  sb           t4, 476(s6)
                  lbu          a0, 1361(s6)
                  lbu          a0, 585(s6)
                  slt          t5, s9, s6
                  lbu          t5, 685(s6)
                  sra          t6, s5, s8
                  srl          a0, s0, t0
                  lbu          s0, 399(s6)
                  lb           tp, 983(s6)
                  sub          t1, a6, t5
                  sb           s7, 337(s6) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_1+97 #start load_store_instr_stream_1
                  lbu          a1, 46(t1)
                  la           t6, region_1+987 #start load_store_instr_stream_2
                  la           gp, region_1+951 #start load_store_instr_stream_0
                  lbu          t4, 118(t1)
                  lbu          s5, -58(t6)
                  sh           s9, 195(t1)
                  lb           s9, 107(t6)
                  lbu          zero, 196(t1)
                  sb           a3, 118(t6)
                  lbu          a5, 69(gp)
                  lb           s9, 144(t6)
                  lbu          t3, 152(t1)
                  lbu          s5, 198(gp)
                  lbu          s4, -248(gp)
                  sb           s11, 88(t1)
                  lb           s9, -182(t6)
                  lhu          a1, -63(t6)
                  lb           s6, 118(gp)
                  lbu          t4, -90(t6)
                  sb           s6, -30(t1)
                  lb           a1, -172(t6)
                  lbu          a2, -42(t6) #end load_store_instr_stream_2
                  lbu          s9, 166(t1) #end load_store_instr_stream_1
                  sb           t6, 222(gp)
                  lh           s5, -99(gp) #end load_store_instr_stream_0
                  la           ra, region_0+1490 #start riscv_load_store_hazard_instr_stream_0
                  sb           t2, 7(ra)
                  or           s7, t2, s1
                  lbu          t3, 7(ra)
                  nop
                  sh           s0, -16(ra)
                  xor          a1, s9, t0
                  sltu         t2, gp, t2
                  sb           zero, 11(ra)
                  lbu          s11, 5(ra)
                  add          tp, s0, s4
                  sb           t6, -9(ra)
                  lbu          t3, 4(ra)
                  lhu          s1, 4(ra)
                  auipc        s6, 78763
                  sb           a1, 4(ra)
                  lhu          a4, -8(ra)
                  lb           s1, -8(ra)
                  sh           a0, -8(ra)
                  sh           s5, -8(ra)
                  ori          a1, t6, 707
                  lb           s0, -5(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           s9, region_1+1538 #start riscv_load_store_rand_instr_stream_0
                  srai         tp, a4, 20
                  sb           s5, 147(s9)
                  auipc        t3, 907462
                  xori         a6, a2, -228
                  auipc        a7, 632122
                  srl          t6, t4, s9
                  sll          a7, t2, t1
                  xori         zero, sp, 1206
                  lw           a2, -162(s9)
                  lbu          a7, 242(s9)
                  lbu          a1, 23(s9)
                  lb           t4, 221(s9)
                  lw           s4, -238(s9)
                  or           s0, t4, a4
                  lhu          t6, 70(s9)
                  lb           a4, -86(s9)
                  lbu          s7, -6(s9)
                  sb           s8, -88(s9)
                  lb           s6, 229(s9)
                  sltiu        s10, t5, -1400
                  slti         s7, t6, 1587
                  add          a3, t5, s8
                  sh           s5, 246(s9)
                  lb           a5, 13(s9)
                  auipc        t1, 522284
                  and          t2, s6, s5
                  sw           s11, -74(s9)
                  sra          gp, a6, s4
                  lb           sp, -218(s9)
                  sb           t1, 151(s9)
                  lh           s3, 244(s9)
                  sltiu        t1, s10, -1544
                  sb           a4, 164(s9)
                  xor          s5, s0, s0
                  sb           a5, 151(s9)
                  ori          s6, s6, -790
                  or           t6, s4, a3
                  and          t6, s7, s5
                  lbu          s1, 173(s9)
                  and          s4, t5, s8
                  sb           s1, 173(s9)
                  lhu          t2, 80(s9)
                  lbu          a6, -1(s9)
                  lhu          s0, -100(s9)
                  sb           t4, 153(s9)
                  sb           gp, 121(s9)
                  slti         a7, ra, -1997
                  lui          a1, 299129
                  srli         s11, s8, 31
                  sb           t0, -131(s9)
                  sb           ra, 125(s9)
                  sw           a7, -190(s9)
                  sltu         s11, t2, a1
                  sb           s7, 85(s9) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+365 #start riscv_load_store_hazard_instr_stream_3
                  auipc        ra, 100457
                  lhu          s11, -81(sp)
                  lb           s7, 214(sp)
                  sb           s6, 214(sp)
                  sll          s9, a3, s1
                  lbu          t1, 214(sp)
                  lbu          s9, 214(sp)
                  lw           a7, -17(sp)
                  lb           s6, -17(sp)
                  lbu          a3, 166(sp)
                  lbu          ra, 256(sp)
                  lbu          s10, 256(sp)
                  add          a0, a0, s1
                  lbu          a5, 256(sp)
                  srl          t6, a1, a1
                  sb           s0, 247(sp)
                  sb           a7, 255(sp)
                  lw           s3, -201(sp)
                  sb           s2, -102(sp)
                  lb           s0, 242(sp)
                  lbu          a4, 242(sp)
                  lb           s10, 242(sp)
                  lbu          a3, 93(sp) #end riscv_load_store_hazard_instr_stream_3
                  bne          a0, t4, 18f
                  add          s4, a4, s3
                  srli         s3, sp, 24
                  xori         s6, t1, 1532
                  and          s9, a4, ra
                  sub          t6, t1, t6
                  srli         s5, s7, 14
                  beq          t2, s10, 22f
                  andi         t4, a5, -1564
                  slt          s9, s5, a1
                  sll          s6, t2, a6
                  bne          a3, a2, 24f
                  auipc        t1, 802637
                  beq          a7, t3, 25f
                  ori          a1, s1, 142
                  bltu         ra, a7, 20f
                  bltu         t1, s8, 34f
                  bgeu         a3, s0, 26f
18:               sltu         a5, sp, zero
                  srl          zero, s1, s8
20:               or           t1, gp, a2
                  xor          a7, s1, gp
22:               sll          s0, s6, a1
                  slti         s10, s1, -1601
24:               slt          a5, t5, a2
25:               nop
26:               srl          s11, a6, s7
                  sra          s9, s5, s10
                  slti         s5, a0, 1786
                  or           s5, t3, s6
                  slti         a1, a7, 1670
                  srli         a4, a7, 10
                  ori          t5, zero, 579
                  slti         sp, t2, 1515
34:               slti         tp, t6, -450
                  bltu         s11, tp, 54f
                  addi         s9, gp, 1459
                  srai         s9, a5, 24
                  srai         t1, zero, 24
                  slti         a0, t2, 1014
                  nop
                  bne          t0, a7, 45f
                  slli         a3, s0, 23
                  srai         s1, s2, 1
                  srl          s11, a6, t0
45:               sltiu        s0, sp, 1615
                  sll          a6, t2, ra
                  srai         t3, a1, 23
                  lui          a7, 510931
                  bgeu         t3, s1, 69f
                  xori         a6, t0, -968
                  or           a4, a7, ra
                  sub          tp, s4, sp
                  sll          t4, s4, a0
54:               slt          s10, tp, tp
                  or           a7, s7, a0
                  slt          s0, t3, s6
                  or           sp, s4, a4
                  bne          a6, s8, 78f
                  nop
                  slli         s7, t3, 30
                  srai         s0, s2, 29
                  bge          a4, t2, 63f
63:               slli         a6, t6, 10
                  sub          s1, a6, t6
                  bge          tp, a4, 66f
66:               srli         tp, s4, 2
                  sltu         s10, t5, tp
                  slli         s11, a3, 18
69:               srli         gp, s8, 17
                  andi         t1, a6, 968
                  sltiu        gp, s10, 1302
                  ori          a3, s6, -837
                  add          ra, a7, s11
                  sltiu        a1, s1, -1153
                  blt          t6, s10, 76f
76:               nop
                  nop
78:               addi         a4, a6, 907
                  sltu         a6, s2, s11
                  bgeu         ra, t3, 84f
                  bltu         a4, s1, 101f
                  xori         s6, a2, -31
                  addi         zero, s0, 416
84:               slti         a3, t4, 627
                  srli         s7, gp, 17
                  ori          tp, s11, 1753
                  sltiu        t1, a7, 595
                  blt          s4, s9, 107f
                  sub          a3, t2, a5
                  slli         s6, a6, 18
                  slt          t5, s6, t1
                  xor          t6, a6, a3
                  bgeu         s0, t2, 107f
                  addi         s7, s10, 379
                  sltiu        a0, a7, 1167
                  sltu         a2, s1, tp
                  ori          sp, gp, 982
                  auipc        a3, 410321
                  slti         t5, s2, 1317
                  andi         a7, a5, -1722
101:              addi         a0, s7, -531
                  addi         a3, t2, -820
                  andi         t4, a6, 1277
                  nop
                  slti         a4, tp, -365
                  slt          s6, sp, s4
107:              slli         a3, ra, 0
                  ori          t6, s10, -464
                  srai         s0, t1, 5
                  auipc        a6, 750167
                  auipc        s9, 605578
                  srl          s6, s3, tp
                  andi         ra, a6, -1796
                  bgeu         a5, s8, 125f
                  auipc        t4, 683769
                  bne          t6, s11, 121f
                  lui          s3, 181878
                  blt          zero, s8, 124f
                  sltu         s6, gp, s8
                  xori         zero, a1, -63
121:              xori         a4, s4, -1295
                  xori         s1, gp, -1543
                  bge          tp, a3, 128f
124:              andi         s10, t6, -1244
125:              addi         sp, t1, 902
                  bltu         a5, a2, 146f
                  bne          s8, t3, 145f
128:              xori         t1, s4, 252
                  nop
                  bltu         a6, a4, 135f
                  or           tp, a7, s10
                  nop
                  andi         s3, zero, 1196
                  slti         a7, s4, -797
135:              nop
                  bne          s0, t1, 156f
                  lui          s10, 456074
                  xori         t1, s5, 656
                  blt          t2, a7, 157f
                  srli         s7, s0, 2
                  sltu         s1, s6, s10
                  srai         a6, t0, 16
                  slli         t3, a1, 7
                  srai         s5, zero, 16
145:              auipc        s1, 1018562
146:              slli         gp, gp, 14
                  lui          t6, 8649
                  auipc        s5, 145429
                  auipc        s10, 121543
                  add          zero, a2, a0
                  sltu         a6, ra, t6
                  and          a2, s7, gp
                  bne          s6, s6, 155f
                  srl          s1, a4, ra
155:              srl          a5, t6, tp
156:              auipc        gp, 787215
157:              addi         a3, t5, 1809
                  lui          t2, 615563
                  xori         tp, s6, -1022
                  srli         s4, a3, 15
                  slt          s0, t2, zero
                  addi         s4, a2, -1799
                  sra          a5, a2, tp
                  slt          a1, s9, a6
                  bge          t0, a0, 172f
                  andi         a7, s5, 1413
                  srli         s4, a7, 25
                  add          s4, a6, t0
                  slti         s1, zero, -1
                  slt          s6, s3, a3
                  sll          tp, ra, t0
172:              slli         a3, t5, 1
                  sltiu        a7, s7, -18
                  bgeu         s1, a0, 175f
175:              sltu         s11, a6, t5
                  add          s4, t4, t2
                  addi         gp, s2, 47
                  bgeu         a4, sp, 196f
                  ori          gp, a0, 2043
                  sra          s4, t2, sp
                  bltu         a0, s10, 201f
                  srai         t6, t1, 3
                  sll          a3, s11, t3
                  blt          t4, a1, 198f
                  beq          a4, gp, 190f
                  and          a2, t1, sp
                  sll          ra, s5, s2
                  or           sp, t3, s8
                  slti         a7, s3, -676
190:              sra          a7, s3, t2
                  andi         tp, t1, -607
                  addi         s4, zero, 486
                  srai         s7, ra, 6
                  bge          t1, s2, 212f
                  blt          s6, gp, 206f
196:              or           s10, s0, gp
                  lui          sp, 22284
198:              bgeu         s5, a0, 213f
                  xor          a1, a3, a1
                  bge          s1, a0, 220f
201:              blt          a3, s3, 213f
                  srli         a5, t2, 25
                  sltu         t3, a0, tp
                  bne          s7, t2, 224f
                  nop
206:              slli         s9, t1, 2
                  bne          ra, a1, 225f
                  lui          t3, 890317
                  bgeu         s4, t6, 210f
210:              add          tp, s11, sp
                  slti         t3, t6, 221
212:              addi         a2, s8, -217
213:              beq          t0, a1, 220f
                  andi         s6, s7, 122
                  sltu         a5, a7, tp
                  sra          s1, a1, s10
                  ori          a7, a7, 1214
                  srai         t2, t6, 18
                  slti         s10, t1, -536
220:              xor          s5, a2, s5
                  sub          s11, s10, t0
                  slt          a0, t2, t4
                  sub          a3, a1, s8
224:              lui          s3, 1016720
225:              andi         s5, s3, -844
                  sub          s7, ra, sp
                  slti         a2, s10, 280
                  xori         s5, t5, 1876
                  xor          s11, t0, s8
                  sltiu        t3, t6, 1532
                  nop
                  srl          t6, sp, t1
                  andi         t4, a1, -1178
                  slti         s4, t0, 1554
                  sra          t4, s6, sp
                  blt          t3, s9, 254f
                  sltiu        a0, s11, -141
                  srai         gp, a7, 7
                  blt          s2, sp, 243f
                  srl          s11, gp, s7
                  nop
                  srai         s7, s10, 13
243:              nop
                  srli         t5, s10, 14
                  bge          a0, t6, 247f
                  andi         gp, t5, -196
247:              slti         a4, t1, -1047
                  slli         s4, a0, 8
                  sltiu        a3, s3, -57
                  slli         t6, t0, 8
                  andi         a4, s11, -1833
                  xori         zero, t4, -413
                  srl          sp, t0, s3
254:              bltu         t5, a0, 259f
                  lui          t2, 918154
                  srli         tp, s10, 23
                  slti         a7, s6, 1377
                  bltu         s10, tp, 264f
259:              slti         a0, t1, 785
                  sra          a7, s9, s7
                  beq          sp, t3, 274f
                  beq          t4, a4, 271f
                  blt          s4, a6, 282f
264:              bltu         s4, s3, 265f
265:              sra          tp, tp, s11
                  bltu         t6, sp, 270f
                  nop
                  and          a6, a1, a6
                  andi         sp, a3, -788
270:              and          gp, t6, s10
271:              xor          t3, s1, s7
                  slli         a2, t1, 0
                  and          t4, zero, a5
274:              ori          s7, s6, -118
                  bne          s4, gp, 280f
                  sll          a6, ra, a3
                  srl          t1, t4, t4
                  xori         a7, a7, 82
                  sltiu        a1, s10, -1058
280:              slti         a1, a1, -1926
                  sltiu        ra, a6, 391
282:              bge          s9, t1, 301f
                  xori         a1, a7, -1339
                  blt          s4, a6, 304f
                  slli         s1, a1, 10
                  sub          ra, a7, t1
                  slli         s11, zero, 14
                  sltu         t3, s8, ra
                  add          t1, ra, a0
                  bltu         t4, t0, 291f
291:              srl          s10, a7, a0
                  xor          gp, s11, zero
                  srli         s5, s7, 28
                  auipc        a3, 600454
                  srl          ra, s10, t2
                  beq          t2, s7, 297f
297:              blt          s2, a6, 317f
                  bne          s7, s0, 303f
                  xori         s6, t6, 858
                  blt          s1, s2, 318f
301:              or           a0, a2, gp
                  add          s6, t2, a3
303:              slti         s9, tp, 1634
304:              slt          s4, t0, gp
                  sltiu        t2, s5, -1221
                  srl          s6, a3, s7
                  srli         a5, s7, 22
                  beq          t5, gp, 312f
                  xori         s1, t1, 2035
                  add          zero, a5, s6
                  slli         a5, a2, 11
312:              slli         t4, s0, 20
                  blt          s7, s6, 333f
                  srli         s11, s2, 13
                  sltiu        t4, sp, 539
                  slli         s0, s6, 4
317:              add          a3, s2, a2
318:              bltu         s0, t6, 337f
                  sra          gp, t1, a6
                  srli         t4, sp, 9
                  sltiu        s6, a5, -1954
                  bgeu         s1, s8, 340f
                  xori         tp, a7, 1135
                  add          s6, tp, s6
                  srli         t1, t5, 28
                  bltu         a4, t1, 339f
                  and          gp, s10, t2
                  and          a6, a7, s1
                  auipc        a3, 845079
                  ori          a7, s9, -1886
                  slti         zero, a3, 404
                  slti         a3, a0, -488
333:              andi         s5, t0, -1105
                  or           s9, t2, sp
                  srli         s11, a0, 29
                  sltu         sp, tp, s5
337:              ori          s9, t3, -766
                  bge          s10, a6, 340f
339:              sltiu        s11, t4, -968
340:              auipc        s9, 77984
                  bge          s3, s7, 359f
                  slti         a7, s5, -982
                  xor          s5, s9, s8
                  bgeu         a6, s10, 345f
345:              nop
                  xori         a1, t2, -110
                  xori         s10, sp, 234
                  slt          t4, t2, s2
                  sll          a5, s10, a3
                  slt          tp, t2, s3
                  sltiu        t3, t0, 562
                  lui          t1, 49336
                  slti         a5, tp, 628
                  sltu         s4, gp, s2
                  bne          t6, a7, 366f
                  sll          s9, a6, s10
                  sltiu        t5, a0, -697
                  beq          s7, a7, 370f
359:              sltu         gp, a1, s6
                  bne          zero, sp, 361f
361:              and          ra, gp, t3
                  or           tp, t1, s2
                  nop
                  bltu         s8, a7, 384f
                  beq          s11, s6, 370f
366:              or           sp, t1, gp
                  or           zero, t5, s10
                  auipc        a5, 798620
                  ori          t3, a4, -1201
370:              sll          zero, t1, s0
                  srli         a7, tp, 23
                  bgeu         a0, s7, 377f
                  slt          s0, s5, s6
                  nop
                  xori         s3, t3, -2026
                  slt          s4, t6, a5
377:              beq          s11, t3, 378f
378:              bgeu         s3, t5, 393f
                  addi         a7, s1, 881
                  sltu         a7, t3, tp
                  slli         a3, a0, 0
                  srli         a2, s3, 5
                  nop
384:              andi         t2, tp, -122
                  or           a3, t6, t4
                  ori          a0, t0, 1198
                  lui          a3, 777074
                  sll          gp, a5, s5
                  bgeu         s9, s10, 403f
                  srai         a7, a1, 15
                  slli         t5, s4, 16
                  andi         zero, s3, -1240
393:              bltu         t0, s10, 398f
                  srl          t2, sp, a5
                  srli         a6, s9, 28
                  addi         sp, a4, -231
                  slli         s9, s1, 14
398:              xori         s6, s7, 1076
                  bge          s10, t1, 417f
                  and          ra, s0, t6
                  bltu         a1, a2, 408f
                  slti         s11, t3, 831
403:              srli         s7, s4, 1
                  bge          a3, a3, 413f
                  slli         s7, s10, 25
                  slt          a0, a3, s0
                  auipc        s7, 441593
408:              sll          a4, s8, a7
                  sltiu        t2, a4, -44
                  slt          s7, a4, a0
                  auipc        t2, 656255
                  srl          t6, s2, t3
413:              xori         a7, s2, 269
                  bge          s7, t1, 419f
                  beq          a4, tp, 421f
                  srl          t5, t0, t5
417:              xori         a7, t1, -73
                  ori          a7, s5, 1541
419:              bltu         s6, t5, 423f
                  sll          gp, s10, s6
421:              slli         a4, tp, 6
                  addi         a6, sp, 1747
423:              srli         s4, s10, 7
                  nop
                  andi         gp, t5, -1253
                  beq          a6, s2, 427f
427:              bne          s4, s5, 447f
                  slt          s11, tp, s5
                  beq          s11, sp, 449f
                  bge          s6, s7, 449f
                  srli         zero, s2, 24
                  lui          s4, 147973
                  add          s1, s6, a0
                  slti         s9, a0, -101
                  bge          t4, s6, 455f
                  xori         a4, ra, 77
                  slt          s1, a7, a6
                  bne          s2, s9, 457f
                  blt          gp, s4, 458f
                  bltu         t2, s3, 445f
                  lui          s11, 748875
                  srl          s10, s7, s0
                  auipc        t1, 980143
                  slt          s5, sp, t4
445:              xor          zero, a6, s2
                  xor          s4, a1, a4
447:              addi         s0, s7, -1683
                  addi         s9, t6, 72
449:              beq          s5, t6, 450f
450:              xori         a7, s4, 709
                  sltu         t1, s7, zero
                  lui          t3, 722845
                  bgeu         zero, s6, 464f
                  sra          s11, s4, t0
455:              srl          t2, s8, a1
                  auipc        s9, 661987
457:              beq          a4, s2, 459f
458:              addi         s11, s3, -833
459:              auipc        s7, 918834
                  slt          s6, ra, s2
                  sra          sp, t4, s0
                  ori          a2, sp, -181
                  sra          s5, a0, t0
464:              slt          sp, a7, a5
                  auipc        t5, 299796
                  and          a7, tp, t0
                  slti         s11, t2, 563
                  sltiu        a5, a4, 1568
                  lui          s6, 122345
                  andi         t1, s0, 727
                  bge          s1, t4, 475f
                  blt          s0, tp, 492f
                  beq          a2, tp, 478f
                  xori         gp, s1, -1947
475:              srl          s4, a5, t4
                  la           a4, region_1+1511 #start load_store_instr_stream_3
                  la           s0, region_1+973 #start load_store_instr_stream_2
                  la           ra, region_1+1497 #start load_store_instr_stream_4
                  lb           zero, 7(a4)
                  sw           t3, 15(ra)
                  la           s5, region_1+1513 #start load_store_instr_stream_1
                  sh           s3, -31(s5)
                  lhu          s6, -147(s5)
                  sb           s9, 43(s0)
                  la           t5, region_1+1873 #start load_store_instr_stream_0
                  lb           s7, -63(s0)
                  sh           s10, 1(t5)
                  lb           t6, -4(t5)
                  lb           t4, 31(s0)
                  lhu          a5, -7(t5)
                  lhu          s11, 201(s5)
                  sh           gp, 9(s0)
                  sb           a6, 10(t5)
                  lb           s1, -2(a4)
                  lbu          t6, 52(s0)
                  lbu          t6, 5(a4)
                  lb           sp, -4(a4)
                  lhu          s3, -3(ra)
                  lbu          gp, 72(s5)
                  sb           t4, -10(ra)
                  sb           gp, -10(t5)
                  sb           t3, 12(a4) #end load_store_instr_stream_3
                  lbu          s7, -64(s5)
                  lhu          a2, 19(s0)
                  lbu          s7, 38(s5)
                  lbu          a6, 64(s0) #end load_store_instr_stream_2
                  lb           s7, 190(s5) #end load_store_instr_stream_1
                  sb           s3, 0(ra)
                  lb           s6, -14(ra) #end load_store_instr_stream_4
                  lh           a3, -1(t5) #end load_store_instr_stream_0
                  blt          s3, a4, 494f
                  addi         s5, s9, 487
478:              and          a7, t0, s3
                  lui          t1, 642469
                  bne          s2, t5, 495f
                  sra          ra, s10, t5
                  bne          t3, t6, 495f
                  srl          s3, a4, t4
                  slt          s1, s0, s7
                  bltu         s8, gp, 491f
                  bgeu         tp, a1, 487f
487:              xori         zero, sp, 101
                  ori          s9, s2, -729
                  lui          s10, 692512
                  and          a7, a0, t0
491:              slt          t1, t0, sp
492:              slti         t5, s10, 1531
                  srl          t5, t6, a4
494:              andi         a2, tp, 1112
495:              sltiu        gp, s3, 952
                  lw           t2, 4(s8)
                  auipc        t3, 1009423
                  addi         s8, s8, 44
                  srl          tp, ra, a7
                  slti         a3, a4, 1427
                  sub          gp, a3, a3
                  sll          a4, s6, zero
                  and          s11, s11, ra
                  sra          t3, a6, zero
                  sll          gp, s3, t0
                  slti         s3, s0, 1893
924:              addi x27, x7, 0
924:              jalr x27, x27, 0
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
.word 0xb17812c1, 0x589211ca, 0xcbbfe3fa, 0xf79a660c, 0x69bec43e, 0x80b79fc3, 0x269d29a0, 0x7ff489d4
.word 0xc3143775, 0x2e8ca997, 0xe8fe06fb, 0x66db68e8, 0x29baca64, 0x66f5a9b7, 0x9e8eef2b, 0x4c8da2da
.word 0x726c433e, 0xeb8c683f, 0xfa235abe, 0x5062e3bc, 0xa9feb117, 0xd028b933, 0x645a19fc, 0x73ef37b2
.word 0x6fbea233, 0x7543cd3a, 0xb908a05e, 0x21e42447, 0xcdf983ef, 0xdeae877d, 0x8668d30d, 0x8037b40b
.word 0xe590373e, 0x5520626b, 0x2f733cae, 0xc5dfca71, 0xa851a90b, 0xa150f6d3, 0x764d93ad, 0x205c76bd
.word 0x2c25783c, 0xa1ead8d5, 0x587b0e5a, 0xc0d5d23a, 0x6fc58bfc, 0x7b0feff8, 0xc617c7fc, 0x76a110c5
.word 0x97c7e127, 0xe43866e1, 0x62ef444f, 0x97525cd7, 0x0ad56749, 0xae44a520, 0x7091768e, 0x456b5993
.word 0xa84e3a68, 0x84a0d141, 0x055ab521, 0x8d066abf, 0x5f057f5b, 0xaf5cd504, 0x13a44b7f, 0xe3239d49
.word 0x8a4d5aff, 0x72dd16e5, 0x598e5059, 0x77c79da4, 0x84389aef, 0x24ac93ca, 0x37b5098f, 0xee8ed8a5
.word 0x2cc1ea08, 0x26a89e0e, 0x0c0525e3, 0x71854b83, 0x49fb1512, 0x5ae4f7fe, 0x1b82a5a7, 0xc548f629
.word 0xcb6c23a1, 0x5005cd69, 0xe30e099f, 0x9c047b22, 0xd07073f0, 0x3ba874ea, 0xe0bed59c, 0x1f0c4c8d
.word 0x5c88b313, 0x18106c96, 0x07da7a7d, 0x42712d95, 0xa3c65284, 0xaa133414, 0xebb865c1, 0x60006a28
.word 0x4704a9ca, 0x14351b7e, 0x4e4f2599, 0xff989466, 0x8e45b721, 0xbd426a97, 0x09a638be, 0xaaa1febf
.word 0xf9bf76cc, 0x4336a1f3, 0xcf2b2b8f, 0x0e65d0d3, 0x094ddab3, 0xb9f9b803, 0xe01954ce, 0xc112b516
.word 0x62a4962e, 0xd2c3d4d8, 0x8a7a61d2, 0x97600247, 0xf8b57e0c, 0xac9d7775, 0x97fe230f, 0x1e4219cb
.word 0x46f8f020, 0x06fde593, 0xa2e407c2, 0x797e7f3e, 0x7228dc4c, 0x5f5079d4, 0xbea8f41f, 0x15898afb
.word 0xbd668dec, 0xeb8c61e1, 0xd8f4af9c, 0xba8e6e99, 0xee01e644, 0x7e4fbffd, 0xd615909c, 0x8841c40b
.word 0x4186a0e4, 0x56c01619, 0x786863c7, 0x31430193, 0x3550e4f9, 0x7e1cafb9, 0x86df5b6b, 0x021a280d
.word 0xb468026a, 0x10bd84b8, 0x6534e9a2, 0x6941e369, 0x35435e46, 0x35d7c6db, 0x818c5145, 0x9453bb7e
.word 0x0049503c, 0xc63b0542, 0x6917b62a, 0x57676bfa, 0x723105bb, 0xe6829bbc, 0xb10fa064, 0xd820ef4e
.word 0x7ac7e400, 0x21011057, 0xeb23f315, 0xf5b7850e, 0x7d3258b1, 0xb5156b4c, 0x275a9fa5, 0xe404ee3c
.word 0x13ad07ab, 0x38c28a4e, 0xb68d28c9, 0xc4e30f8f, 0x3a0a8c73, 0x8e9ebfaf, 0xe2dad393, 0x8575b242
.word 0x1b3322a7, 0xd908d103, 0x34d9c87d, 0x7892ff5f, 0x4c211996, 0xce8773e1, 0xd69ccb38, 0x29393e59
.word 0xe7a98b28, 0x85ca4345, 0x09c37132, 0xb22e495d, 0x8a71d8f2, 0x694a0e32, 0x72df2049, 0x74c27735
.word 0x5e6c2fc4, 0x771c7c18, 0x5de15919, 0xa080222f, 0xbf74b699, 0x06ca3438, 0xf5249980, 0x7eac58f8
.word 0x56005a18, 0xf92d92eb, 0xf0f3110c, 0xd886a3df, 0x43695b90, 0xa32367b1, 0x16ac3582, 0x8c2c4856
.word 0x5d6aed14, 0xb14c93c3, 0x592f4c90, 0xfdab5f34, 0xa81a2b9a, 0xd416f42d, 0x0acf8a41, 0x478cef0a
.word 0x5de9c528, 0x881b1523, 0xb3828b3d, 0xd76667e3, 0xa5c53295, 0xd9dbfbaa, 0x62555dea, 0x5849323a
.word 0x1cefa03b, 0x569cbfb8, 0xce0ea775, 0x3a3edf8d, 0xd26fc9a8, 0xfa047b21, 0x3e7371d6, 0x7db510ca
.word 0x4f737732, 0x55093738, 0x8d7ca057, 0x39b7f123, 0x6267a41f, 0x36f33589, 0x0ce989ae, 0x1c8f5d10
.word 0x874ce1ab, 0x7a2a5a99, 0x11b66428, 0x5363ac41, 0x676ba588, 0x9f027cd9, 0x9b6ecdf3, 0x81cf80b0
.word 0x018ff045, 0x7e352eef, 0xc20a864a, 0x257707c2, 0x98e93db4, 0xfea6441b, 0x799384df, 0x551c03aa
.word 0x4dbedcc6, 0x94740042, 0x76002f2d, 0x916062db, 0x03848838, 0x37e3a74b, 0xcc56a4ad, 0x87230784
.word 0x70af36af, 0x550a7897, 0x101e1dec, 0x8f091020, 0x2c59209f, 0x7f046787, 0xbf82a62c, 0x5710d948
.word 0x9b22dd41, 0x86a78611, 0x441ac6d9, 0x9e3d9ea5, 0xf9a54d59, 0x7c149254, 0xd59e6db0, 0x073e534c
.word 0x3ccc9608, 0xf274fd2e, 0xe7127779, 0x701b6748, 0x4634181d, 0x44d1c4ce, 0xd48cd5c6, 0x150a7035
.word 0x2e81bce1, 0x208ad13c, 0x06c5a52f, 0xb83977a7, 0x6ad97863, 0x705bdb79, 0xcd16840d, 0x2f9d78be
.word 0xfd28bc2e, 0xfe34f626, 0xb09a0f63, 0x91015c4f, 0x1d5bb42f, 0xd05afaf3, 0x11968166, 0x14e8d565
.word 0x1a936052, 0xe1b40be2, 0x0e3bc579, 0xb8e6fed0, 0xded545ae, 0x3e8248bd, 0x5c34cab9, 0xfe4262ce
.word 0x6a2c184a, 0x28b41cc5, 0xa9cd39df, 0x5dec07c2, 0x34f75dd4, 0x7cae7fa0, 0x1b8d4c79, 0xfdb9439a
.word 0xb13bdb16, 0x952b2992, 0xc5e6ec6a, 0x65a3901c, 0x992a8612, 0x8f471874, 0x4950764a, 0x1c48125d
.word 0x8c784c29, 0x7b0a341b, 0x2997d245, 0xa1229803, 0x03d0e842, 0xf81ab805, 0xe9401bd5, 0x0c38c755
.word 0xd2edf53b, 0x2ccc2e19, 0xc742d53a, 0x1a171f56, 0x09fb4fff, 0x8c5732aa, 0x13c1983c, 0xc1e65c09
.word 0xc52fb2a4, 0x8ae9aea4, 0x28e191e1, 0xb6ca879c, 0x70a68df4, 0x1316ea1d, 0x3cdcaade, 0xf99fc9a6
.word 0x731a4d62, 0x9a66934d, 0xb184f4f8, 0xd36e7410, 0x8110ff02, 0x92deaba1, 0x1d601b24, 0x1096eb1d
.word 0xdfa51966, 0x577cdd6f, 0xd544201f, 0xbd21310e, 0xa5f92b56, 0x8a4919b4, 0xc5318010, 0x08a184fc
.word 0x2b93e013, 0xe71049cb, 0x5ac51f07, 0x07baf536, 0x44916180, 0x248476aa, 0x203c1038, 0x89076419
.word 0x391f99b0, 0x1348ca61, 0x47e9cde1, 0xdd9e313a, 0xdfcc2fd7, 0xf8748c6b, 0x415820fe, 0x5f8a9ae3
.word 0xd27dea4c, 0x3dd8e384, 0x0d79aebf, 0xb41643eb, 0x68a593fb, 0x396cb1f8, 0x746bf3df, 0x61f6a59e
.word 0x0de954fa, 0xc6d018b7, 0x6fc2af31, 0x02430749, 0xddd513e4, 0x0ca42080, 0xf98e5209, 0x1760fab8
.word 0xb4fe4322, 0x49f99fca, 0xa5336b04, 0x53f9f29a, 0x55d82c36, 0xaa30504b, 0x9a2412fd, 0xd69afb2b
.word 0x453a2431, 0x999ca156, 0xe8790d8b, 0x8a999cc6, 0xdb4a2bab, 0xb63ded47, 0x7d12aa8e, 0x5f413399
.word 0xc3f2cb27, 0xff45a991, 0x6ed8f243, 0x896e808a, 0x93e99920, 0xe4aa1e74, 0x5c4dd639, 0xb0ab511e
.word 0xca145720, 0xb1fe878d, 0x63c14c48, 0xd7e9cf2e, 0xb4713e12, 0x8e74d6cb, 0x801aa717, 0x6b485958
.word 0x2bf73191, 0xa352c4c7, 0xcfca80a7, 0x029dc8bf, 0x642763a8, 0x6bd9e4b8, 0x10951d5c, 0xe19e00c3
.word 0xc02a9a98, 0x76181d50, 0x6638952d, 0x3525db5c, 0xd0857665, 0xbd86bd74, 0xee507138, 0xcadc4306
.word 0xeeb44af7, 0x1b67d19d, 0x824339cf, 0xd27bce30, 0x47898ab6, 0x2005000e, 0x71599aa3, 0x6a659ab9
.word 0xb21bb989, 0xa80d5053, 0x918e362e, 0xbee26189, 0x0ef5790a, 0x143c2b43, 0x1895b1b2, 0x03fbca40
.word 0xb513cb3f, 0xdac8198a, 0x82fc9dc3, 0x19f9339f, 0xcfa37b71, 0x157e4000, 0x5254ccd0, 0x73fbfb7a
.word 0xdfa1b585, 0xb7c168fd, 0x0dd3cb3c, 0xc025ceb4, 0x483f139f, 0x95adf6b8, 0x5d77fdc0, 0x26cb6567
.word 0x2d37b055, 0xaa33ba71, 0x32c53980, 0x6a28b693, 0xe9a3a6f3, 0x6d12ec3b, 0x5bdf28d3, 0x08fd9f9a
.word 0xc77b325a, 0x413a0f3d, 0x32bbc03d, 0xea915984, 0x20abe11b, 0x7816e2bd, 0xb2a787ba, 0xb0370510
.word 0xa6d3251b, 0x4cf896fc, 0x47b574fa, 0x357d042a
.section .region_1,"aw",@progbits;
region_1:
.word 0x3eea3e19, 0xa3860936, 0x765f169f, 0x4c74eabb, 0x1f158bba, 0x806b733f, 0xa4f71e12, 0xc05b35c3
.word 0xa02376d0, 0xab5eff9e, 0x926766de, 0x68f1dc48, 0xe0184e45, 0x5f5f4e61, 0x2827f462, 0xee7d8181
.word 0x274f471e, 0xaa329c61, 0xe48bc932, 0x8a0ba6bb, 0xbe15944d, 0x201e3d08, 0x66ef9218, 0xc11889ed
.word 0x59ca1b80, 0x15958012, 0x8d41b1a1, 0x12e0fa04, 0x36ba45a9, 0x23619a06, 0x9503d965, 0x34cb9f0b
.word 0x5f9aa157, 0xeabed874, 0x2270b89b, 0x803f7268, 0x73b28b30, 0xa4737a98, 0x658f258d, 0xefbdc88f
.word 0xa4b6875b, 0x327e4ae0, 0x568e81f8, 0x089bc97f, 0x00bbb9b5, 0x89cc0f22, 0xa9825d06, 0xc009824c
.word 0x11385a33, 0x4bcefc03, 0x2061db26, 0x4ef065a2, 0x91e8e5b3, 0x84c226d1, 0xedeb80a9, 0x39a5c4ca
.word 0x3d321eb4, 0xcc4d9a93, 0x9d274cc1, 0x902906e2, 0x70a27e4b, 0x66d4d07c, 0xc2bd5e2e, 0xf8c067e6
.word 0x89fb7e66, 0x182ea20a, 0x193a789f, 0x7c288d9e, 0x665738ca, 0x7f9247b5, 0xfed5acca, 0x1a105fb1
.word 0xb8cb5c17, 0x23125ed0, 0x3be04f67, 0x0e46e9a9, 0xd5007ca7, 0x737ea27a, 0xd204986b, 0x593127ce
.word 0x081f2f61, 0x91c03daf, 0x635d62f8, 0x29d8d346, 0x09da0762, 0xfd720e7e, 0x84f649c3, 0xbc28c8c2
.word 0xb146723b, 0xdaf059ba, 0xcd2dbbc8, 0xde4b3476, 0xc0804a55, 0x2d7d03e5, 0x12349aad, 0xa632e9fe
.word 0xf414fca4, 0xe35383ec, 0x451594ab, 0x220723f3, 0x3887d39d, 0x04d217e2, 0x8b116bf1, 0x9503f3a1
.word 0xe2d9b38b, 0x2f759d84, 0xf38ba2d4, 0x3912bd02, 0xa08e7908, 0xf8f17f27, 0x0ef997dd, 0xd02ab8c0
.word 0x395cfd85, 0x36595192, 0x34b677eb, 0xb07921a9, 0x28988eac, 0x15f4e579, 0xb5c3d9aa, 0x4bce7a79
.word 0x91898e95, 0x1c1c1e1a, 0x546e9a7b, 0xca17f575, 0xa958e3f0, 0xa5a925c9, 0xf148aa4a, 0x8bb117b9
.word 0x67595145, 0xdab6f94c, 0x073127bf, 0x0e1bf9b3, 0xde32d28e, 0xd833661e, 0x6a9eda00, 0x5d61bc3b
.word 0xbf865102, 0x6c0ca7ed, 0x9f0b962c, 0xa712745d, 0x229cf26f, 0x68408ef4, 0xf581d2ac, 0x62672669
.word 0x9deaf327, 0xf210814e, 0xc972fe80, 0x87e42506, 0xdc6be492, 0xb21c4bba, 0x5eb2d4ca, 0xb8386d2f
.word 0xb18e72c3, 0x80f4a555, 0x9e793f73, 0xecf6a0d7, 0x6f6e0863, 0x2c9f2450, 0xb3b474fe, 0x1da67f09
.word 0xc1a0cd71, 0x3d68ec93, 0xe469a5e0, 0x356a2791, 0x826f7efd, 0x6f336aa1, 0x7e79bcc6, 0x85e59b29
.word 0x959dd31c, 0xff27afd2, 0xeeff6be0, 0xfc7e6429, 0x79f3b9b9, 0x615876ee, 0x43822fb9, 0xbc588f9f
.word 0x2c2ff792, 0x3d6732ab, 0x298133d1, 0xde036fbe, 0x62cce96f, 0x0f167384, 0xca481da0, 0xd3108662
.word 0xfa71a7ce, 0xcaea19e9, 0x60a587b1, 0xd6fe3dc8, 0x370aa1a2, 0xd8764d4e, 0xffb93dd2, 0x87b9af32
.word 0x3bf9b72a, 0x6f1e702e, 0x4c855391, 0xc75555e9, 0xbb2df8cc, 0xc3f8efc9, 0x3ac3da7f, 0x30dda98b
.word 0x97aa8d55, 0x0e1dfec4, 0x48a20130, 0xb56194ea, 0x8d593866, 0x12d98418, 0x3dc40234, 0xa0c34090
.word 0x570d70ef, 0xa83b0cbb, 0xfed52ff1, 0xb345c87e, 0x0a1d5c19, 0x8ff2de7e, 0xbe59051c, 0xa9e79416
.word 0x40be12d8, 0x65a94f86, 0xc1c8bffd, 0x3735e207, 0x0d99298c, 0x2170e7fa, 0x2cbd3ba3, 0x2c7f78b7
.word 0xae800d47, 0x0ab99276, 0x1ebce352, 0xba5ac38f, 0x74510c2c, 0x8a40cb27, 0xfb32ee66, 0x0ae0b276
.word 0xe43cfbae, 0x105f9436, 0x2abb52d3, 0x2c31bf0b, 0x54142e07, 0x5b30e5af, 0x06c8f286, 0xbd53e49f
.word 0x8b21f3eb, 0xef15c698, 0x5c519135, 0xe7324e08, 0x9cb38b8e, 0x766c3d6c, 0x752ccd56, 0x44e85b38
.word 0xf0300994, 0xbe5da634, 0x6689100e, 0x0c80fa2a, 0x2fa63eb9, 0x5b054f44, 0xf0b45371, 0x20bd955d
.word 0xa6c74a32, 0x6482b2c1, 0x1447b512, 0x30e528b6, 0x7b008168, 0x2444492c, 0xe16c4e7a, 0x978d61f8
.word 0x02a85661, 0x338792ad, 0x55ba6e2e, 0xdbe757f0, 0xbab2f4c5, 0x33db7e53, 0x5e4d6a38, 0x927aea60
.word 0xbd81e5fb, 0xf3e00a9d, 0x8522d174, 0x816cdbb2, 0x46678319, 0x5abaeacd, 0x59767959, 0x7281e5d8
.word 0x7f02dd85, 0x0f79f937, 0x9c9c2f4c, 0x26f464c1, 0xf68f76c7, 0x042cfcf3, 0x0529a195, 0xc8996d07
.word 0x11df0329, 0xcd8ef3f6, 0x63a9f19b, 0x7f40c990, 0xfa963445, 0x10bdd029, 0x70e5f377, 0xe0bb6533
.word 0xbb1fecb4, 0x3d1f9384, 0xfba096e3, 0x61792750, 0x71ea446f, 0x3db03001, 0x79abe469, 0x369c6410
.word 0x8b59c44c, 0x8198b358, 0x767bd0ba, 0x4e0bfabf, 0x09b8ebf4, 0x609d6676, 0xd1bb2e17, 0xe4771bd3
.word 0x69ba191f, 0x3d3e23d2, 0x61b38520, 0x2bdcb985, 0x87644a0e, 0x52155893, 0x2513f395, 0xe0317477
.word 0x36f2a88c, 0x99f7dc42, 0x105fc2a0, 0xd5a91b58, 0xa9c15b08, 0xa0227f5a, 0x135984b1, 0x70d8a2a4
.word 0x58b93ec6, 0x2cf33c2b, 0x57b189b4, 0x1cbec58a, 0xc7200358, 0x618ff3bf, 0x99de8731, 0x5bfc341c
.word 0x865a27a7, 0x60ca0772, 0xcb0e92b6, 0xb2f39e75, 0x47decbd7, 0xd58cd3ad, 0x1d3440e3, 0xec4e9faf
.word 0x24860c9a, 0x3ff4f95d, 0xfa15d00a, 0xcc88d07e, 0xd36d0a0e, 0x73e30102, 0xce92c37a, 0xa25c71b9
.word 0x7d4c01f6, 0x9a7ada49, 0x4ddab843, 0x1bcd181d, 0x19aae1a3, 0xa8764b50, 0x6675dd7c, 0x99197b63
.word 0x2ea5c470, 0x2c706e6f, 0x641a51c4, 0x19604a52, 0x5d679057, 0xc92092b0, 0x1534f2b9, 0x1e33eb97
.word 0xd162d272, 0xc1897a2e, 0x076dd35a, 0xd4b9fc55, 0x4cbc747d, 0x0e163599, 0x222eeb6a, 0xc80628d1
.word 0x1ecb7032, 0x31f1e006, 0xc523bee8, 0x99a5c745, 0x8eea40d5, 0x57ed657a, 0x3964db80, 0x69948f51
.word 0x312bda1b, 0x4551dd0e, 0x4fa0f5dc, 0xdc88d2b8, 0xb34fbf15, 0xb4230fbd, 0x6c415b53, 0xd4a95369
.word 0xa6fa5652, 0x8fac5393, 0x061b054a, 0x6a5281a0, 0x519f484d, 0x5001380a, 0x81d64aa7, 0x2dcc6911
.word 0xcfcf128c, 0xa89127e0, 0xdf587dac, 0x15deaabe, 0x4156705a, 0x3bd0c002, 0xcc2ea86f, 0x6bde56b8
.word 0x21aa0f75, 0x25b0f060, 0xa9bad6bd, 0x13820dd0, 0x908e4e0f, 0xae7f093f, 0x71928fd3, 0x33de7872
.word 0x6c435b9e, 0x9ba1721b, 0x3ce31b0a, 0x09d481ab, 0x7efec962, 0x00421192, 0x7c0d044f, 0xa74fb01a
.word 0xa7146739, 0xd1ccffcb, 0x3d18920e, 0x34d675a6, 0x015f9a72, 0x66638699, 0x5b88c63e, 0x5faacc39
.word 0xe8266d4c, 0x6e5679d8, 0xd041b77e, 0xa39eef07, 0x9bea98d3, 0xd7933abc, 0x256a571e, 0xe700ffde
.word 0x89d0c14f, 0xc5a84ed6, 0x1f2bc0ed, 0x2827ea9d, 0x18afc205, 0xa221e5c3, 0x7ca754bc, 0xb8432960
.word 0xa1cf9017, 0xaac124a3, 0xb5630003, 0xe3ef15b0, 0x60ee1aaa, 0xd34c3de4, 0xd26bbe6c, 0x73eb5a69
.word 0x264b001c, 0xeb3e678a, 0xf11f2c55, 0xb9407116, 0x5f0052ed, 0x5f68a5b1, 0x75207654, 0x959a7bb0
.word 0xeb8ef36d, 0x30b60440, 0xe4d40386, 0xf0c76d56, 0x8081a040, 0x385e355e, 0x14b03c4d, 0x7cba510f
.word 0x76591176, 0x6dd22f65, 0x304ea953, 0x1b99ce4e, 0x3df3d410, 0x85023c9d, 0xbf2d9a17, 0x878b0337
.word 0x44513806, 0xb82c1b7c, 0x8724c5f3, 0x900504d9, 0x8c8f6e40, 0x1b024da6, 0xfb461f7f, 0xc5698e70
.word 0x527249bd, 0xec6f7668, 0x44bdcda7, 0xb3a39f13, 0xfee693d4, 0x001f97ed, 0x7291ec38, 0x3506c6c1
.word 0x4019f347, 0x3d3a15fb, 0xa26a2678, 0xf946a732
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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x18, x24, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x30, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x30, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x30, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x30, x22, ecall_handler
                  li x22, 0x1
                  beq x30, x22, instr_fault_handler
                  li x22, 0x5
                  beq x30, x22, load_fault_handler
                  li x22, 0x7
                  beq x30, x22, store_fault_handler
                  li x22, 0xc
                  beq x30, x22, pt_fault_handler
                  li x22, 0xd
                  beq x30, x22, pt_fault_handler
                  li x22, 0xf
                  beq x30, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x24, x18, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

load_fault_handler:
                  add x24, x18, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

store_fault_handler:
                  add x24, x18, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x24, x18, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x24, x18, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x24, x18, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
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
