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
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x96b865c4
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x6
                  li x6, 0xf622c2dc
                  li x7, 0x80000000
                  li x8, 0x4
                  li x9, 0x7
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0xe
                  li x14, 0x36a55748
                  li x15, 0xfbdc74f4
                  li x16, 0xce477fc4
                  li x17, 0x5d6749ee
                  li x18, 0x4d163da7
                  li x19, 0x80000000
                  li x20, 0xb486c928
                  li x21, 0xf14c4d8f
                  li x23, 0xf5fb1da2
                  li x25, 0x80000000
                  li x26, 0xfc6e576c
                  li x27, 0x3e92e7ec
                  li x28, 0xa
                  li x29, 0x0
                  li x30, 0x3bf8c02d
                  li x31, 0x80000000
                  la x24, user_stack_end
main:             la           s5, region_0+1500 #start riscv_load_store_rand_instr_stream_0
                  sb           gp, 103(s5)
                  sub          a1, s8, s7
                  sll          s10, t4, a2
                  sra          a5, s3, s6
                  lbu          s3, -249(s5)
                  lb           a0, 48(s5)
                  and          a5, s1, t5
                  slti         t6, s3, 30
                  lh           a2, 114(s5)
                  and          a7, s8, a7
                  lhu          tp, 206(s5)
                  lbu          t5, -167(s5)
                  nop
                  sb           s2, -235(s5)
                  sll          a3, sp, s3
                  slt          tp, s10, a4
                  and          t5, t3, t4
                  nop
                  sll          ra, s3, ra
                  lb           a1, 157(s5)
                  srli         s0, s4, 22
                  slli         t5, a5, 27
                  and          s0, a6, s5
                  sb           s2, -106(s5)
                  srli         t6, sp, 18
                  srli         s7, s4, 23
                  xori         a7, s3, 855
                  lb           s1, -75(s5)
                  andi         s11, s6, -107
                  lbu          a2, 130(s5)
                  lbu          zero, -105(s5)
                  srl          s11, s10, a7
                  or           t3, t1, s10
                  srl          s7, t5, s11
                  andi         a0, t5, -154
                  lb           t1, 152(s5) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+1495 #start load_store_instr_stream_2
                  la           t4, region_1+894 #start load_store_instr_stream_1
                  lbu          a7, 207(s7)
                  la           t6, region_1+994 #start load_store_instr_stream_3
                  lb           gp, 4(t4)
                  lhu          sp, -597(s7)
                  lb           a0, -129(s7)
                  lbu          gp, 131(t6)
                  lhu          s10, -513(s7)
                  la           t5, region_1+1364 #start load_store_instr_stream_0
                  sh           s11, -1057(s7)
                  sb           a5, 13(t4)
                  lh           a5, -8(t4)
                  sb           t4, -580(t6)
                  lb           a4, 49(t5)
                  lbu          a2, -13(t4)
                  lhu          a7, 16(t4)
                  lb           a2, -511(t6)
                  sb           t1, 15(t5)
                  lbu          a4, -15(t4)
                  lh           zero, 463(s7)
                  lb           t2, 3(t4)
                  sh           t3, -8(t4)
                  sb           s1, 48(t5)
                  lbu          s2, 3(t4)
                  lhu          a4, -52(t6)
                  lhu          a4, 40(t5)
                  sw           a3, -358(t6)
                  sb           a3, 973(t6)
                  lb           t0, -58(t5)
                  lh           sp, 4(t4) #end load_store_instr_stream_1
                  lbu          s2, -857(t6) #end load_store_instr_stream_3
                  lbu          t1, 21(s7)
                  lbu          a5, -45(t5)
                  sb           s11, -782(s7) #end load_store_instr_stream_2
                  lbu          t2, -64(t5) #end load_store_instr_stream_0
                  la           s4, region_0+1719 #start riscv_load_store_hazard_instr_stream_0
                  sw           a3, -7(s4)
                  lw           t5, -7(s4)
                  lbu          zero, 4(s4)
                  sb           a1, 4(s4)
                  sb           s3, 12(s4)
                  sb           s1, 12(s4)
                  srl          tp, s4, a3
                  lbu          a5, 12(s4)
                  lbu          s3, 12(s4)
                  lbu          a0, -1(s4)
                  lbu          t2, 7(s4)
                  or           s1, ra, gp
                  sh           gp, 7(s4)
                  xor          s7, a2, a1
                  sh           t3, 7(s4)
                  sub          s3, sp, t3
                  lbu          a4, 7(s4)
                  lb           s7, -2(s4)
                  sb           t1, -2(s4)
                  sb           s7, -2(s4)
                  lbu          a5, 8(s4)
                  add          a6, gp, t2
                  lh           tp, 11(s4)
                  lhu          s0, 11(s4)
                  srli         s11, t1, 26
                  sh           a7, 11(s4) #end riscv_load_store_hazard_instr_stream_0
                  lui          t0, 170341
                  addi         gp, ra, -1326
                  xor          s3, s6, a1
                  xori         s10, t4, -131
                  andi         a2, a6, -1997
                  blt          t2, t1, 15f
                  sll          s11, a1, s10
                  sltu         a2, s3, s5
                  and          t6, s6, s5
                  slt          a6, s3, s4
                  slli         gp, a6, 12
                  beq          sp, s1, 13f
                  slli         t2, t2, 29
13:               sltiu        s7, s3, -1330
                  addi         zero, t1, 1963
15:               sltu         t6, s7, t2
                  bne          s1, t1, 31f
                  or           zero, s1, a6
                  slti         s11, a1, -236
                  sra          gp, s2, s9
                  bltu         s6, s5, 34f
                  slti         s11, t6, 70
                  bltu         a7, t3, 24f
                  sll          s0, t3, sp
24:               bne          s7, zero, 37f
                  lui          gp, 857603
                  auipc        s5, 968415
                  sltiu        a5, s7, 1946
                  bltu         s6, a1, 31f
                  ori          t6, s2, 876
                  srli         t1, a6, 26
                  or           a7, s5, s8
                  ori          t2, s7, -1348
                  lui          a4, 529952
                  la           t4, sub_1
                  addi         t4, t4, -249
                  sll          s3, s0, s2
                  blt          a4, sp, main_j1 #branch to jump instr
                  sra          t5, s7, s11
main_j1:          jalr         t5, t4, 249 #jump main -> sub_1
31:               sub          s11, s10, a0
                  andi         a7, gp, 214
                  and          t1, a3, s11
34:               sll          s10, s0, a6
                  bgeu         a6, s8, 46f
                  srli         a1, a4, 5
37:               add          s11, zero, s1
                  sub          a2, t1, s6
                  bge          s6, s8, 52f
                  or           t2, a3, ra
                  lui          a6, 260176
                  sltu         ra, t4, s10
                  srai         t5, s5, 21
                  auipc        t4, 905644
                  sll          t1, t6, t2
46:               xori         a6, a7, 203
                  srai         t2, a1, 29
                  andi         a7, a1, -1250
                  andi         a7, a5, 12
                  beq          a2, a3, 70f
                  blt          ra, s1, 60f
52:               or           a3, a3, a5
                  slli         a2, t2, 6
                  xor          a3, a4, s9
                  srai         s7, s7, 21
                  xor          s1, s4, t3
                  auipc        t6, 693247
                  sltu         a3, a4, a1
                  bgeu         a5, t6, 70f
60:               sll          t6, s10, sp
                  lui          a7, 603204
                  bge          a7, s7, 77f
                  lui          s10, 1047393
                  ori          s2, a0, -1387
                  bne          s8, s9, 75f
                  slti         a1, gp, -1189
                  sll          s0, s3, s1
                  bne          a4, t4, 69f
69:               srli         s11, gp, 24
70:               sra          a5, t2, t6
                  addi         t2, gp, -1306
                  sltu         t5, a6, a3
                  la           a0, sub_2
                  addi         s11, s4, -1648
                  addi         a0, a0, -616
                  and          a3, s11, tp
                  andi         ra, s1, 718
                  bltu         a0, s1, main_j2 #branch to jump instr
                  auipc        a2, 323835
main_j2:          jalr         t5, a0, 616 #jump main -> sub_2
                  sltu         s7, tp, a4
                  sltu         a3, a0, s9
                  add          s3, zero, a5
                  bge          t1, a6, 84f
75:               xori         a6, t2, -642
                  xor          a0, t2, tp
77:               sltu         t5, tp, a1
                  and          a6, s5, t6
                  and          a0, s1, s6
                  sub          a5, t6, s10
                  slt          t2, t0, s1
                  sltiu        s7, t0, 1899
                  nop
84:               srai         s10, a5, 24
                  add          a6, a4, s6
                  sltiu        a2, s6, 1923
                  sra          a7, a0, a6
                  bltu         a7, s0, 94f
                  auipc        s2, 328806
                  ori          a0, s6, 48
                  xor          s7, ra, t4
                  lui          a1, 816167
                  sub          s4, ra, s6
94:               add          tp, s0, s10
                  and          zero, ra, t2
                  sub          t5, t0, s5
                  slli         t4, ra, 12
                  bne          a1, a3, 105f
                  lui          s0, 974537
                  addi         s1, s11, -1423
                  slt          t5, t3, s2
                  bne          t0, a0, 103f
103:              bgeu         a0, sp, 120f
                  lui          t5, 166663
105:              sltiu        tp, gp, -1170
                  bne          s10, s4, 125f
                  andi         sp, t2, 777
                  beq          a1, a2, 121f
                  andi         gp, s1, 1920
                  xor          t1, a3, s10
                  slli         a3, s11, 2
                  srai         sp, s7, 0
                  addi         a2, a0, 694
                  sll          a7, t0, s2
                  bne          a2, a2, 119f
                  blt          s8, a3, 125f
                  sltiu        s4, s6, -338
                  blt          t1, a4, 136f
119:              nop
120:              andi         t2, gp, -1155
121:              xor          a6, t3, s11
                  beq          s0, s9, 136f
                  and          s11, a1, a5
                  srl          tp, s5, a1
125:              beq          a4, s5, 136f
                  xor          s11, s5, a6
                  blt          t1, a5, 136f
                  slt          t1, tp, gp
                  andi         s7, s11, 43
                  bgeu         s9, s5, 136f
                  or           s0, t5, t0
                  sra          gp, a1, s5
                  ori          t2, gp, 1769
                  bge          sp, a7, 136f
                  slt          tp, a3, a2
136:              slt          t6, s3, s11
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            ori          s1, gp, -279
                  xor          s5, a3, ra
                  addi         s8, s8, -24
                  and          sp, t2, gp
                  sltiu        gp, tp, 758
                  sw           t5, 4(s8)
                  nop
                  add          t6, s1, s6
                  xori         t6, gp, 687
                  addi         s7, tp, 1990
                  and          s7, tp, t2
                  la           t5, region_0+1215 #start load_store_instr_stream_0
                  la           a7, region_0+1282 #start load_store_instr_stream_1
                  sb           s5, 88(t5)
                  lhu          s3, 192(a7)
                  sh           s2, -17(t5)
                  lb           ra, -253(a7)
                  lbu          tp, -113(t5)
                  lw           a3, 169(t5)
                  lh           sp, -145(t5)
                  sb           s6, -1152(a7)
                  lbu          t1, 459(a7)
                  lbu          s2, -166(t5)
                  sw           t6, 434(a7) #end load_store_instr_stream_1
                  lbu          t0, 14(t5) #end load_store_instr_stream_0
                  la           a0, region_1+263 #start load_store_instr_stream_0
                  la           s0, region_1+983 #start load_store_instr_stream_4
                  la           ra, region_1+1261 #start load_store_instr_stream_2
                  la           a5, region_1+321 #start load_store_instr_stream_1
                  sb           a3, 8(s0)
                  lb           s2, 66(a0)
                  la           t3, region_1+224 #start load_store_instr_stream_3
                  sh           t5, 5(s0)
                  lb           a6, -153(a0)
                  lhu          a7, 471(a5)
                  lbu          s3, -16(s0)
                  lbu          t2, -6(ra)
                  sh           t4, 21(a0)
                  lb           a2, 1492(a5)
                  lbu          t1, -34(ra)
                  lb           s11, -161(t3)
                  lb           a1, 22(ra)
                  lbu          t2, -167(t3)
                  lbu          s5, 8(s0)
                  lb           a1, 220(a0)
                  lb           a3, 1(a0)
                  lbu          a1, -45(t3)
                  sb           t6, -8(s0)
                  lhu          gp, 37(a0)
                  lb           s7, 80(a0)
                  sb           a3, 2(ra)
                  lbu          s10, 1597(a5)
                  lb           t2, 671(a5)
                  lb           t1, 28(a5)
                  lbu          t6, 8(s0) #end load_store_instr_stream_4
                  lbu          a6, 137(t3)
                  sb           a2, -157(t3)
                  sw           zero, 59(ra)
                  lhu          a4, 162(t3)
                  sb           sp, -156(a0)
                  sb           a5, 141(t3) #end load_store_instr_stream_3
                  sb           s5, 25(ra) #end load_store_instr_stream_2
                  sb           a0, 28(a5)
                  sb           t1, 938(a5)
                  sb           s10, 184(a0)
                  sb           a3, 228(a5) #end load_store_instr_stream_1
                  sh           t3, 23(a0) #end load_store_instr_stream_0
                  la           a6, region_0+584 #start riscv_load_store_rand_instr_stream_0
                  lhu          s11, 634(a6)
                  sb           t5, 33(a6)
                  ori          a0, gp, -1333
                  sw           t6, 1380(a6)
                  sb           ra, -458(a6)
                  srli         s2, ra, 5
                  lbu          a4, 720(a6)
                  lbu          sp, 684(a6)
                  lui          t2, 608821
                  sub          tp, s10, s10
                  sh           gp, -544(a6)
                  lb           s11, -204(a6)
                  sb           gp, 1234(a6)
                  sw           gp, 516(a6)
                  lh           sp, 330(a6)
                  sh           a4, 706(a6)
                  lbu          s1, -569(a6)
                  lbu          s7, 1127(a6)
                  lb           a0, 1058(a6)
                  lhu          t4, 398(a6)
                  xor          t6, a7, s9
                  lui          sp, 403578
                  lhu          a0, 690(a6)
                  sb           s4, -111(a6)
                  addi         s3, t5, -788
                  xor          s10, a2, s7
                  sh           a5, -64(a6)
                  lhu          a0, 592(a6)
                  lbu          s0, 911(a6)
                  lh           tp, 822(a6)
                  nop
                  lui          a7, 33022
                  sb           s4, -365(a6)
                  sltu         a4, t6, s4
                  and          t3, s9, t4
                  lhu          s5, 576(a6) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+1273 #start load_store_instr_stream_3
                  la           t6, region_1+446 #start load_store_instr_stream_1
                  la           sp, region_1+1973 #start load_store_instr_stream_2
                  la           a0, region_1+419 #start load_store_instr_stream_0
                  sb           s10, 26(sp)
                  lbu          s2, 80(t3)
                  lb           a2, -19(t6)
                  lbu          gp, 374(a0)
                  sb           s9, -138(t3)
                  lh           s1, -145(t3)
                  lb           tp, -64(sp)
                  lb           zero, 222(t3)
                  sh           s1, -55(sp)
                  lbu          a4, 209(t3)
                  lb           t5, 47(t6)
                  sb           t0, 26(sp)
                  lb           a6, -60(sp)
                  lbu          a5, 105(t6)
                  sh           t2, 193(t3)
                  lh           s10, 1161(a0)
                  lh           a5, -6(t6)
                  sb           t6, 622(a0)
                  sb           t2, -26(t6) #end load_store_instr_stream_1
                  lbu          t1, -28(sp) #end load_store_instr_stream_2
                  lb           a5, 742(a0)
                  lh           a7, -71(t3) #end load_store_instr_stream_3
                  lb           s2, 616(a0) #end load_store_instr_stream_0
                  la           a0, region_1+1343 #start riscv_load_store_rand_instr_stream_6
                  and          s1, s7, t6
                  sra          s10, s9, a3
                  srai         tp, s11, 23
                  sb           s0, 2(a0)
                  sltiu        s4, s1, 1431
                  sw           s11, 5(a0)
                  sltiu        s7, tp, 1429
                  sb           s1, -9(a0)
                  lh           t1, -3(a0)
                  lbu          t3, -3(a0)
                  sb           s10, -16(a0)
                  sb           a2, -4(a0)
                  sll          a1, a3, s1
                  lb           s0, 1(a0)
                  lh           a7, 1(a0)
                  slt          t6, a0, a0
                  sb           a1, -10(a0)
                  sb           a0, -10(a0)
                  sh           t0, -9(a0)
                  lh           a4, -5(a0)
                  lh           s3, -13(a0)
                  sll          a1, s5, s4
                  auipc        s7, 379582
                  sb           s7, 4(a0)
                  lbu          sp, 4(a0)
                  sub          gp, s11, a3
                  lh           t0, 7(a0)
                  or           a4, s0, tp
                  lbu          t3, -4(a0)
                  lbu          ra, -13(a0)
                  addi         t3, a0, -1790
                  lb           a5, -8(a0)
                  auipc        s11, 113069
                  lbu          ra, 0(a0)
                  sltiu        a6, a5, 999
                  and          zero, a1, a0
                  slli         a5, tp, 30
                  srai         s4, t3, 11
                  sub          t3, t2, t0
                  srai         tp, s11, 31
                  lh           s1, -5(a0)
                  sb           s1, 16(a0)
                  lbu          t2, 16(a0) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1881 #start riscv_load_store_hazard_instr_stream_5
                  addi         a7, s0, 959
                  lb           a3, 46(sp)
                  sub          s0, tp, tp
                  lb           s7, -112(sp)
                  sub          s10, s4, ra
                  lhu          t6, -189(sp)
                  lhu          s7, 7(sp)
                  lh           gp, 7(sp)
                  slt          gp, s0, a6
                  lhu          t5, 7(sp)
                  lw           zero, 7(sp)
                  sb           a0, 7(sp)
                  slli         tp, s0, 27
                  sltu         a1, s3, s9
                  sw           s0, 7(sp)
                  lh           s7, 7(sp)
                  sb           s7, -202(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           a0, region_1+117 #start load_store_instr_stream_3
                  sb           ra, 109(a0)
                  la           t0, region_1+325 #start load_store_instr_stream_4
                  lb           a4, 221(a0)
                  la           t2, region_1+1788 #start load_store_instr_stream_1
                  sb           s6, 136(t2)
                  la           s5, region_1+137 #start load_store_instr_stream_0
                  la           tp, region_1+1104 #start load_store_instr_stream_2
                  lb           s2, 159(tp)
                  lb           a3, 67(tp)
                  lbu          a7, 629(t0)
                  lbu          a7, -129(t2)
                  sw           s1, -49(a0)
                  lb           s2, -145(tp)
                  lb           s0, 130(s5)
                  sw           a1, -313(t0)
                  lbu          t4, 191(tp)
                  lbu          zero, 917(t0)
                  lbu          a2, 148(a0)
                  sb           t0, 138(t0)
                  lb           t3, 15(t2)
                  lbu          s4, 528(t0)
                  lb           t5, -79(s5)
                  lb           s0, 27(t2)
                  sb           a5, 164(a0)
                  sh           a2, 63(t0)
                  lh           a2, 150(t2)
                  lh           a6, -58(tp)
                  lbu          s3, 52(s5)
                  lb           t1, 93(t2)
                  sh           s2, -103(a0)
                  lhu          s10, -109(a0) #end load_store_instr_stream_3
                  lbu          a3, -70(s5)
                  lbu          t3, 112(t2) #end load_store_instr_stream_1
                  lh           a7, -250(tp) #end load_store_instr_stream_2
                  lh           s4, 569(t0) #end load_store_instr_stream_4
                  lb           s7, -72(s5) #end load_store_instr_stream_0
                  la           sp, region_0+854 #start load_store_instr_stream_1
                  la           s7, region_0+1909 #start load_store_instr_stream_2
                  lhu          s4, -573(s7)
                  la           tp, region_0+1427 #start load_store_instr_stream_3
                  lbu          ra, 387(sp)
                  sb           s0, -1322(s7)
                  la           s3, region_0+1516 #start load_store_instr_stream_0
                  sb           t3, 14(s3)
                  lb           t6, 267(sp)
                  lh           s10, -616(sp)
                  lhu          s10, -12(s3)
                  lbu          a5, 62(tp)
                  lbu          t2, -212(s7)
                  lb           t4, -1194(s7)
                  lw           s5, 61(tp)
                  sw           s10, 12(s3)
                  lbu          a6, -360(s7)
                  sh           a1, 10(s3)
                  sb           t2, 527(sp)
                  lb           a6, 12(tp)
                  lbu          a6, 705(sp)
                  sh           s0, 31(tp)
                  lw           t0, -1885(s7)
                  sw           tp, 554(sp)
                  lb           a7, -1500(s7)
                  lhu          t2, -4(s3)
                  lb           s0, -521(s7) #end load_store_instr_stream_2
                  sh           a7, -1(tp)
                  lbu          a3, -367(sp) #end load_store_instr_stream_1
                  lb           a4, 10(s3)
                  sb           a4, -14(s3)
                  lbu          a2, -33(tp) #end load_store_instr_stream_3
                  lb           a7, 16(s3) #end load_store_instr_stream_0
                  la           ra, region_0+223 #start riscv_load_store_hazard_instr_stream_6
                  sb           sp, -6(ra)
                  sb           a5, -6(ra)
                  srli         t0, s10, 3
                  lh           s0, 11(ra)
                  lb           a3, 11(ra)
                  lh           s11, 11(ra)
                  lh           a4, 11(ra)
                  lh           s5, 11(ra)
                  srli         s0, s9, 17
                  sb           tp, 11(ra)
                  lbu          gp, 11(ra)
                  sh           t3, 11(ra)
                  sb           gp, 11(ra)
                  sb           t6, 11(ra)
                  srli         s0, t0, 9
                  sb           a2, 11(ra)
                  sb           s10, -15(ra)
                  nop
                  sb           a0, -15(ra)
                  lb           s10, -16(ra) #end riscv_load_store_hazard_instr_stream_6
                  la           sp, region_1+1755 #start riscv_load_store_rand_instr_stream_2
                  andi         a2, ra, -132
                  nop
                  lb           t6, 3(sp)
                  slt          s0, t4, s11
                  sltiu        a5, t1, 1910
                  ori          s5, a0, -486
                  srl          a6, s8, s3
                  lb           s3, 13(sp)
                  srli         s10, s8, 3
                  andi         s5, t1, -1860
                  lbu          s0, -11(sp)
                  srli         a3, s3, 24
                  lbu          gp, -15(sp)
                  sb           a0, -2(sp)
                  sra          s11, a7, a6
                  sh           s11, 7(sp)
                  sb           a5, 5(sp)
                  andi         t0, s11, -1802
                  add          t0, s6, tp
                  lb           s4, -12(sp)
                  slti         t4, t0, -894
                  sb           s10, 9(sp)
                  add          t4, s6, ra
                  lbu          t4, 0(sp)
                  slt          t1, a1, t0
                  xor          s10, s3, s0
                  lw           s1, -3(sp)
                  lb           a0, 16(sp)
                  xori         s5, t4, 190
                  lw           a1, 5(sp)
                  srl          s5, a7, sp
                  ori          s10, a4, 369
                  lb           a5, 6(sp)
                  add          a4, t4, t0
                  lui          t2, 182055
                  andi         a3, s6, 1929
                  andi         a2, gp, 1195
                  sb           sp, 3(sp)
                  lw           s0, -15(sp)
                  srli         s1, s0, 10
                  and          a2, a4, t6
                  sra          s2, t3, a5
                  sb           a5, -5(sp)
                  lbu          ra, -2(sp)
                  sb           s8, -6(sp)
                  sb           t3, 4(sp)
                  sub          tp, s8, a2
                  lh           t3, -5(sp)
                  sb           a4, 4(sp)
                  lui          a6, 95029
                  sra          a3, s1, s1
                  lb           a0, -15(sp)
                  srai         s11, s5, 9
                  lb           a4, -8(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_0+870 #start load_store_instr_stream_0
                  la           a1, region_0+1005 #start load_store_instr_stream_1
                  la           a4, region_0+486 #start load_store_instr_stream_2
                  sb           s7, -3(a1)
                  lbu          s10, 4(a1)
                  sb           t6, -785(a7)
                  sw           a5, -10(a4)
                  la           t3, region_0+643 #start load_store_instr_stream_3
                  lb           a0, -15(a4)
                  lb           s3, -3(a1)
                  lhu          t0, -3(a1)
                  sh           s2, -10(a4)
                  lb           t5, -14(a1)
                  lh           t5, -1(t3)
                  sb           sp, -14(a1)
                  lh           s3, -7(t3)
                  sh           gp, -270(a7)
                  lbu          s11, 3(a1)
                  lbu          zero, -4(a4)
                  sb           t1, -16(t3)
                  lbu          zero, -2(t3)
                  sh           a5, 7(a1)
                  lw           s0, 6(a4)
                  lb           zero, 3(t3)
                  lbu          a0, 10(t3)
                  sb           s9, -4(a4)
                  sw           a5, 474(a7)
                  lbu          sp, 16(a4)
                  lb           a3, 16(t3)
                  lb           a2, 4(t3)
                  sw           zero, 894(a7)
                  lbu          t5, -1(a1) #end load_store_instr_stream_1
                  sh           a1, 16(a4)
                  lhu          s1, -10(a4)
                  sb           sp, 12(t3)
                  lhu          s10, 8(a4) #end load_store_instr_stream_2
                  sb           a7, -285(a7)
                  lhu          s2, -5(t3) #end load_store_instr_stream_3
                  sh           gp, -358(a7) #end load_store_instr_stream_0
                  la           sp, region_1+886 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s2, -244(sp)
                  sb           t3, -244(sp)
                  sh           s1, -244(sp)
                  lb           ra, -244(sp)
                  lbu          s0, -244(sp)
                  slli         a3, a4, 2
                  lhu          s0, -244(sp)
                  sb           s4, -244(sp)
                  sb           a4, 128(sp)
                  sltiu        a6, gp, -1419
                  sh           a3, 128(sp)
                  or           a7, s8, s11
                  lb           s0, 128(sp)
                  lbu          gp, 128(sp)
                  lb           a5, 128(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t3, region_1+1228 #start riscv_load_store_rand_instr_stream_5
                  lui          zero, 1003724
                  addi         sp, s9, 1952
                  lb           gp, -182(t3)
                  lbu          a7, 219(t3)
                  lb           a4, 171(t3)
                  sb           t3, -13(t3)
                  srai         t5, t6, 3
                  sb           t5, -177(t3)
                  sb           a2, 239(t3)
                  xori         t6, s0, -1781
                  sb           t0, -189(t3)
                  xori         a3, a1, -993
                  srl          a1, s0, s1
                  sb           a0, 129(t3)
                  addi         s0, s11, -1585
                  sb           a5, 111(t3)
                  lbu          a6, 91(t3)
                  lhu          t5, -60(t3)
                  sb           t2, 40(t3)
                  sb           t3, -231(t3)
                  srli         a6, a3, 31
                  lh           s11, -208(t3)
                  xor          t4, tp, s2
                  lbu          s10, -190(t3)
                  sh           s0, 40(t3)
                  lbu          s7, -36(t3)
                  sb           s4, -179(t3)
                  lhu          a3, 222(t3)
                  slli         gp, s6, 22
                  lbu          tp, -14(t3)
                  sb           s8, 53(t3)
                  sb           zero, -100(t3)
                  lbu          s0, -163(t3)
                  slti         s10, s2, -124
                  auipc        zero, 640675
                  lbu          s4, -7(t3)
                  sb           zero, 175(t3)
                  lb           t5, -60(t3)
                  ori          s11, s1, 633
                  lbu          s5, 77(t3)
                  srli         a5, s7, 19
                  sb           zero, 195(t3)
                  lb           s0, -76(t3)
                  lbu          a1, 123(t3) #end riscv_load_store_rand_instr_stream_5
                  la           s7, region_0+1478 #start load_store_instr_stream_0
                  sh           sp, -486(s7)
                  la           t1, region_0+1606 #start load_store_instr_stream_1
                  sb           sp, -1264(s7)
                  sw           a3, 58(t1)
                  lb           s10, 5(t1)
                  lbu          tp, -21(t1)
                  lbu          a7, -1257(s7)
                  lbu          t3, -39(t1)
                  sb           s9, -1337(s7)
                  lb           a1, -43(t1)
                  sb           zero, -1469(s7)
                  lhu          t0, -984(s7)
                  lhu          t5, 40(t1)
                  lhu          s0, -1034(s7)
                  sh           gp, -24(t1)
                  lb           tp, 53(t1)
                  sh           s6, 372(s7)
                  lbu          t4, 22(t1) #end load_store_instr_stream_1
                  lbu          a5, -87(s7) #end load_store_instr_stream_0
                  la           sp, region_1+1164 #start riscv_load_store_rand_instr_stream_4
                  sll          t3, s7, t4
                  xori         s0, ra, 307
                  lb           s2, -57(sp)
                  sw           a4, -52(sp)
                  slti         s7, a1, 144
                  slt          t4, s9, s11
                  addi         t0, a3, 1047
                  lh           a4, 0(sp)
                  and          s1, s0, t1
                  sb           a7, 23(sp)
                  lb           s5, -25(sp)
                  sb           a0, 25(sp)
                  sb           a4, -7(sp)
                  add          zero, s6, tp
                  slli         s5, s0, 27
                  xor          s11, s8, tp
                  sra          s0, s11, gp
                  lbu          gp, -39(sp)
                  nop
                  lb           a5, -14(sp)
                  slti         a2, s9, -318
                  sll          a4, tp, tp
                  sh           t3, -20(sp)
                  lbu          s1, 3(sp)
                  slt          gp, a3, a3
                  sh           gp, 14(sp)
                  lbu          a5, 45(sp)
                  lb           a5, 49(sp)
                  xor          a6, sp, s4
                  lb           a5, 21(sp)
                  sltiu        t3, s4, -574
                  lui          t3, 191522
                  lbu          t3, -33(sp)
                  sb           s4, 11(sp)
                  sh           s4, 6(sp)
                  add          t3, a0, t4
                  sub          s5, ra, ra
                  lbu          t4, -3(sp)
                  lbu          t4, -39(sp)
                  lhu          s4, 44(sp)
                  lhu          t2, 0(sp)
                  sra          a5, s0, a2
                  slt          a6, s5, t5
                  add          s5, t3, gp
                  lb           a0, -31(sp)
                  lh           ra, 14(sp)
                  sb           t4, -5(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_1+164 #start riscv_load_store_hazard_instr_stream_4
                  lbu          t1, -60(a6)
                  sb           s11, -21(a6)
                  sltiu        gp, t4, -1091
                  lbu          a1, 13(a6)
                  lh           s10, 28(a6)
                  sb           ra, 28(a6)
                  lbu          s2, -40(a6)
                  lbu          a4, -50(a6)
                  lbu          s10, -49(a6)
                  auipc        t6, 917005
                  lw           tp, -4(a6)
                  lhu          a4, -4(a6)
                  lb           a7, -4(a6)
                  lhu          a7, -4(a6)
                  lb           t5, 54(a6)
                  lh           a1, 54(a6) #end riscv_load_store_hazard_instr_stream_4
                  la           a0, region_1+1534 #start riscv_load_store_hazard_instr_stream_1
                  lb           s2, 178(a0)
                  lh           t5, 178(a0)
                  lb           t1, -191(a0)
                  sh           t1, 124(a0)
                  sb           s2, 25(a0)
                  sb           a0, -9(a0)
                  lbu          s1, -9(a0)
                  lh           a7, 202(a0)
                  sb           t1, -119(a0)
                  lhu          s11, 20(a0)
                  lbu          a1, -163(a0)
                  sb           t2, -163(a0)
                  lbu          t1, -66(a0)
                  lui          s5, 590691
                  and          a5, a2, ra
                  lhu          a3, -66(a0)
                  sltiu        a1, a0, 1635
                  sh           a7, 190(a0)
                  lh           s0, -216(a0)
                  lb           a4, -216(a0)
                  lb           t3, 241(a0)
                  lbu          s11, -239(a0) #end riscv_load_store_hazard_instr_stream_1
                  srl          t0, s2, a6
                  and          s11, zero, a5
                  srl          a1, a5, zero
                  sltu         a7, a0, t0
                  add          t3, s8, a6
                  la           sp, region_0+1704 #start riscv_load_store_hazard_instr_stream_2
                  auipc        a5, 285827
                  sb           a1, 0(sp)
                  lw           a7, 0(sp)
                  add          a3, zero, a5
                  sw           s2, 0(sp)
                  sh           t4, 0(sp)
                  sb           t6, -3(sp)
                  sltiu        s10, s1, -120
                  lbu          a5, -3(sp)
                  lbu          t2, -3(sp)
                  lbu          s11, 1(sp)
                  lb           a1, 4(sp)
                  lbu          zero, 13(sp)
                  lh           t3, 0(sp)
                  addi         t4, s2, 1068
                  slli         t1, t6, 12
                  sb           a0, 5(sp)
                  lb           a5, 5(sp)
                  sb           s10, -9(sp)
                  lhu          a3, 12(sp)
                  sh           a4, 12(sp)
                  lb           a2, 12(sp)
                  lh           a3, 16(sp)
                  sw           t2, 16(sp) #end riscv_load_store_hazard_instr_stream_2
                  slti         t1, s1, 42
                  beq          gp, s7, 15f
                  auipc        zero, 819506
                  nop
                  srai         a6, t0, 15
                  sra          s5, a1, s2
                  beq          a6, s1, 28f
                  srai         gp, s7, 1
                  srl          t1, a7, s3
                  slli         tp, a3, 23
15:               and          s2, t4, s8
                  srl          a0, s7, s7
                  bltu         s10, s9, 22f
                  sltu         a2, t0, s4
                  srl          zero, t0, s2
                  ori          a6, a7, 1444
                  xori         tp, t1, -1210
22:               slti         s0, ra, -1923
                  nop
                  andi         s2, s11, 544
                  blt          sp, a3, 37f
                  srl          a6, s4, s0
                  bge          sp, s10, 40f
28:               auipc        s5, 139715
                  or           a1, s9, t0
                  auipc        t5, 226903
                  xori         a0, s5, -1209
                  or           s11, tp, s5
                  sltu         s0, s11, a4
                  xor          a7, a3, a5
                  sltiu        t0, t6, -752
                  sll          s11, s8, t3
37:               bgeu         a7, ra, 44f
                  xor          s3, ra, sp
                  bne          a6, a3, 49f
40:               ori          t6, a1, -1851
                  bge          t3, s10, 48f
                  bltu         zero, t6, 53f
                  bne          t1, s6, 56f
44:               blt          s9, s11, 60f
                  sll          a0, s1, t0
                  srai         t1, s2, 28
                  and          a5, s5, tp
48:               add          t2, sp, s11
49:               slli         s2, t6, 29
                  lui          zero, 321889
                  lui          a4, 590462
                  bne          a1, a6, 58f
53:               blt          ra, t2, 73f
                  nop
                  xori         s7, s7, -408
56:               sltu         a5, t4, zero
                  srai         a1, s1, 0
58:               sub          s1, a5, a3
                  xor          a5, a3, s6
60:               slt          a1, a5, s5
                  slt          s4, ra, a1
                  sltu         t5, s4, s9
                  sub          a1, s6, sp
                  bge          s6, t2, 65f
65:               slli         t6, a5, 25
                  addi         t2, a0, -1924
                  beq          t6, s1, 86f
                  xori         s4, t4, 657
                  srli         a0, s9, 1
                  sra          t3, s7, s2
                  slti         a3, t6, 721
                  or           s11, a2, t6
73:               addi         s5, s1, -453
                  srl          a2, s11, s0
                  andi         a1, t6, 1322
                  nop
                  sll          s2, s10, a7
                  bne          t4, s2, 94f
                  bne          a0, a5, 82f
                  sltu         a3, s6, s2
                  andi         ra, zero, -757
82:               sub          s3, gp, s4
                  add          s1, a0, t0
                  or           a3, s3, s0
                  bne          t6, t6, 90f
86:               sub          tp, gp, a7
                  sll          sp, a1, a4
                  srai         t5, ra, 19
                  bgeu         t3, a2, 103f
90:               xori         s4, a6, -2041
                  sltiu        a4, t5, 1580
                  srl          a4, t4, s11
                  srai         sp, tp, 27
94:               blt          a2, s10, 102f
                  sra          t1, a0, s10
                  lui          gp, 967268
                  slti         ra, t6, 345
                  lui          zero, 1005948
                  xor          a4, s4, t0
                  sltu         s10, a7, s7
                  bge          t4, s5, 106f
102:              beq          a5, t3, 109f
103:              ori          t0, a4, 1777
                  beq          s3, t1, 124f
                  sub          s3, s1, t5
106:              ori          s3, t1, 989
                  and          t5, gp, a1
                  sll          a5, a3, tp
109:              srli         s5, a7, 30
                  ori          a5, t4, -1501
                  sltiu        t2, a2, -1572
                  srai         s4, tp, 3
                  srai         tp, a4, 28
                  sll          t4, s7, s9
                  sll          sp, a7, s8
                  slt          t5, s8, a1
                  bne          s2, a5, 123f
                  sra          s0, t4, s6
                  auipc        gp, 602757
                  blt          s8, a0, 138f
                  nop
                  sub          t1, tp, a6
123:              bge          s8, a0, 139f
124:              blt          s6, s2, 127f
                  xori         a4, s1, -1133
                  add          zero, sp, gp
127:              sltiu        s4, t6, -1045
                  slt          s3, a1, t0
                  sub          s7, a4, t6
                  la           s11, region_1+1481 #start riscv_load_store_rand_instr_stream_1
                  sb           t2, -6(s11)
                  srli         t2, s3, 10
                  sh           s0, -9(s11)
                  lh           t1, -1(s11)
                  lbu          s7, 4(s11)
                  sh           s8, 15(s11)
                  sh           a5, 13(s11)
                  lbu          a1, 8(s11)
                  slti         t6, t0, -443
                  sll          t6, s1, t0
                  sb           t4, 0(s11)
                  srli         s2, t6, 5
                  lh           a7, 9(s11)
                  sh           a2, -13(s11)
                  srli         t2, s0, 31
                  sub          s2, a2, s1
                  srl          t3, s2, a2
                  sltu         a5, t5, a1
                  or           a0, s3, a0
                  lb           s10, 5(s11)
                  lh           s7, 5(s11)
                  andi         t6, t1, -925
                  sltu         t5, s8, s1
                  sb           t3, 10(s11)
                  or           t6, s7, s11
                  lb           t6, 2(s11)
                  sb           s7, 12(s11)
                  ori          t4, t2, 565
                  sb           a5, -10(s11)
                  lbu          a0, -16(s11)
                  lui          gp, 935612
                  sll          t0, a3, s5
                  lb           a1, 2(s11)
                  lb           ra, 8(s11) #end riscv_load_store_rand_instr_stream_1
                  srai         sp, a3, 31
                  srli         a3, t3, 29
                  slt          t5, s4, ra
                  auipc        a7, 798884
                  bgeu         gp, t6, 139f
                  slt          s10, a2, t5
                  sltu         s1, sp, s6
                  slti         tp, a5, -580
138:              xori         s5, s6, 270
139:              sltu         s5, s9, a2
                  sll          s1, s2, s1
                  bne          s1, t3, 154f
                  or           s2, a7, sp
                  slti         a2, s7, 1927
                  bltu         a3, t5, 164f
                  auipc        a1, 875610
                  lui          a0, 793215
                  sra          t1, a6, t0
                  or           s11, a1, s10
                  bgeu         a7, a0, 154f
                  sra          s4, s1, t4
                  slt          s1, a6, s3
                  slli         tp, a7, 30
                  slt          s5, s6, a2
154:              srl          a4, t3, zero
                  srli         t6, a0, 3
                  auipc        a3, 514097
                  bltu         gp, a2, 167f
                  slti         tp, t6, -771
                  and          t4, tp, s6
                  bgeu         a0, s1, 165f
                  add          a3, a6, a3
                  xor          a3, s4, zero
                  ori          tp, a0, -1252
164:              andi         t6, s2, -1698
165:              slti         s11, s2, -415
                  bltu         t5, a2, 179f
167:              slli         a3, gp, 17
                  and          s10, a2, t6
                  beq          t4, t3, 186f
                  srai         tp, a7, 12
                  xor          t6, a5, t2
                  sub          tp, t5, s10
                  auipc        t0, 848053
                  beq          t4, sp, 180f
                  bne          a1, s2, 195f
                  sra          t0, s11, s3
                  auipc        a0, 965325
                  or           zero, a5, s9
179:              slt          s11, a5, tp
180:              blt          t6, a3, 187f
                  add          a5, tp, s3
                  sll          zero, s3, t2
                  sltu         a2, t6, gp
                  sltiu        s2, t0, 2026
                  sltu         tp, t6, s5
186:              ori          gp, zero, 1532
187:              lui          s3, 886128
                  sra          t6, a0, t1
                  addi         a6, sp, 646
                  bge          zero, s9, 206f
                  add          s5, t6, s8
                  and          t1, a1, a7
                  addi         s0, ra, 760
                  sra          s7, a5, t4
195:              bltu         s5, t4, 200f
                  bgeu         a5, t0, 203f
                  sltu         s3, t0, s11
                  bge          a2, s7, 216f
                  srl          s2, a1, t0
200:              bge          a4, s10, 219f
                  andi         s0, t4, 138
                  bge          s2, s3, 218f
203:              sra          ra, s3, s10
                  bgeu         s3, a7, 220f
                  bne          s9, s5, 210f
206:              add          a6, a1, a4
                  sltiu        t4, s6, -482
                  bltu         a7, s7, 228f
                  srai         a2, s4, 23
210:              bltu         s2, a0, 213f
                  srai         t5, t5, 11
                  lui          s10, 587783
213:              sll          sp, s3, t5
                  srai         zero, s10, 25
                  srai         s5, t6, 23
216:              bgeu         sp, a5, 223f
                  auipc        t1, 577071
218:              xori         t2, a4, 1293
219:              nop
220:              sll          zero, sp, a2
                  add          a3, t2, t5
                  add          s3, s11, s0
223:              bge          s6, t1, 231f
                  slt          t5, t3, zero
                  addi         s0, s5, -344
                  or           t0, zero, a3
                  xori         t6, s9, 522
228:              add          a2, t3, s6
                  lui          t3, 586922
                  sltiu        ra, a0, 1213
231:              and          s4, t3, t2
                  beq          s9, s11, 246f
                  bge          a1, a7, 245f
                  bge          t3, t2, 240f
                  lui          s10, 685342
                  sltu         tp, ra, a5
                  sll          tp, ra, a0
                  blt          a4, s8, 249f
                  bne          t0, t1, 252f
240:              srl          gp, t2, s8
                  auipc        t0, 265828
                  bge          s1, a0, 251f
                  nop
                  addi         s4, a3, -1240
245:              xor          a4, a0, t0
246:              xor          a5, s2, s6
                  addi         s1, t2, 1799
                  addi         t1, s0, 1233
249:              slli         s3, t0, 4
                  slti         t0, a3, -1774
251:              xori         s3, s4, -1445
252:              add          s11, t4, s7
                  bgeu         t1, t6, 256f
                  andi         s3, sp, 1017
                  beq          a1, s4, 275f
256:              auipc        s5, 652626
                  sltiu        gp, s3, 1099
                  auipc        t6, 338637
                  and          s7, a3, s10
                  add          sp, s3, tp
                  andi         t1, gp, -1049
                  xori         t5, ra, 1688
                  sub          a1, a2, t2
                  srli         s10, s11, 16
                  and          s2, a2, s9
                  xori         t0, s11, -1518
                  sltiu        s0, t2, 1979
                  lui          zero, 1007454
                  sra          s1, s3, a0
                  and          a4, s5, a1
                  and          s3, a5, t5
                  bltu         t6, s9, 285f
                  sra          t0, t5, t2
                  xori         a6, s10, 868
275:              bne          s10, s0, 276f
276:              bltu         s1, a1, 296f
                  sltiu        a7, s8, 1170
                  srl          a1, s10, a4
                  sll          s3, ra, a7
                  srai         t6, s8, 10
                  andi         s3, s3, 413
                  sub          gp, sp, t1
                  add          a4, s6, t0
                  nop
285:              sltiu        gp, a5, 1555
                  slt          zero, s4, s5
                  nop
                  sltu         t5, s3, a2
                  sll          gp, s6, gp
                  add          tp, a7, t4
                  xor          a3, t6, s9
                  xori         tp, t6, 868
                  bltu         s7, zero, 299f
                  and          t1, a4, s1
                  slt          t5, tp, tp
296:              bge          s4, s3, 312f
                  add          a2, s11, s7
                  srl          s5, a4, zero
299:              bltu         s11, t3, 315f
                  andi         sp, t5, 1456
                  srai         tp, a7, 13
                  add          t6, s1, ra
                  sltiu        a2, t1, 1013
                  sltu         tp, a3, a4
                  sltiu        s3, s7, -1291
                  sltu         t4, a3, gp
                  srl          s10, s9, s11
                  sub          s5, tp, a4
                  srai         a2, t6, 31
                  addi         s7, ra, -1134
                  slt          zero, s0, s2
312:              sub          s5, s9, s7
                  srl          a7, s0, s4
                  slli         a2, t3, 22
315:              and          s7, t6, s3
                  bge          t0, t4, 321f
                  andi         a0, a6, -638
                  sll          t0, sp, s0
                  slt          ra, s4, s10
                  sub          s0, a1, s4
321:              sltu         zero, a6, s6
                  slt          t1, s2, s1
                  nop
                  sub          a0, t6, t1
                  bne          s4, s0, 332f
                  or           zero, s1, s10
                  srli         t0, s2, 28
                  sub          a7, s7, t5
                  bgeu         t0, s0, 336f
                  sll          s7, sp, s4
                  srli         a3, a3, 14
332:              xori         s5, sp, -1405
                  lui          a3, 541700
                  and          a6, t4, s3
                  or           zero, a3, ra
336:              auipc        zero, 748811
                  bltu         a7, s0, 347f
                  slti         t5, s7, -1035
                  sra          s2, zero, s5
                  beq          s7, t1, 346f
                  add          t0, s4, t1
                  xori         t2, a0, 1058
                  nop
                  blt          s0, s10, 363f
                  srai         s10, t5, 23
346:              bltu         t6, a5, 355f
347:              srl          a0, s7, tp
                  bltu         t3, t6, 353f
                  auipc        s11, 832576
                  slti         s10, t1, -508
                  srl          a3, s6, t0
                  slt          t0, s11, s9
                  la           a0, region_0+194 #start riscv_load_store_rand_instr_stream_3
                  lb           tp, -11(a0)
                  lhu          t6, 8(a0)
                  lbu          t3, -14(a0)
                  or           t5, t4, a0
                  auipc        t6, 134426
                  sh           gp, 0(a0)
                  lh           t3, -8(a0)
                  ori          a7, t4, 1226
                  lbu          s7, 15(a0)
                  sb           t3, -1(a0)
                  sb           t6, -9(a0)
                  slli         s5, s6, 11
                  sb           s5, -13(a0)
                  lbu          t2, -15(a0)
                  slli         a1, s3, 8
                  sb           a5, -3(a0)
                  lb           sp, -11(a0)
                  sb           s5, -10(a0)
                  lbu          t6, 0(a0)
                  lh           s1, 6(a0)
                  sh           a2, 8(a0)
                  slli         gp, a0, 3
                  lb           s7, -1(a0)
                  lbu          t4, -1(a0)
                  lui          zero, 1015958
                  lw           s5, -10(a0)
                  sb           s9, -4(a0)
                  sub          zero, sp, t1
                  lb           a4, -13(a0)
                  lbu          t0, 9(a0)
                  sh           t1, -12(a0)
                  sh           s3, -14(a0)
                  lb           ra, -9(a0)
                  andi         t6, s5, 492
                  sb           a2, -5(a0)
                  srai         zero, a3, 24
                  ori          a2, s8, -469
                  sw           a6, -10(a0)
                  lb           tp, 15(a0)
                  ori          s1, a2, 1204
                  addi         t0, s5, 1088
                  lb           a4, -5(a0)
                  srli         a4, s0, 5
                  sub          a2, a5, s6
                  andi         t0, s0, -11
                  slti         ra, ra, -1238
                  sh           s3, -6(a0) #end riscv_load_store_rand_instr_stream_3
353:              xor          a6, a2, s6
                  slti         sp, t0, -1908
355:              sltiu        a6, gp, 643
                  blt          tp, a3, 369f
                  srl          gp, s10, t4
                  bge          s5, zero, 370f
                  sra          zero, s8, s11
                  bgeu         sp, s3, 378f
                  nop
                  nop
363:              sll          t3, t6, a1
                  nop
                  sltiu        sp, zero, 2001
                  bgeu         s9, s6, 367f
367:              slt          t3, s4, t1
                  sltu         t5, s10, a3
369:              add          ra, a6, s4
370:              sll          a4, a7, tp
                  addi         zero, s1, -993
                  lui          a6, 469208
                  auipc        s7, 317136
                  nop
                  xor          a3, ra, a2
                  slt          a5, s7, sp
                  sltu         s10, t3, gp
378:              xori         s4, t6, 150
                  bne          s9, s8, 392f
                  xori         a3, t6, 872
                  srl          a6, s2, t1
                  lui          tp, 94758
                  slt          s10, s0, a5
                  srai         s10, s7, 26
                  nop
                  srai         a3, a7, 8
                  sltu         t3, t0, tp
                  ori          zero, sp, -1513
                  andi         s4, zero, 1866
                  ori          a2, s9, -367
                  srli         tp, s10, 29
392:              lui          s7, 759032
                  slli         tp, s10, 30
                  bgeu         s0, s0, 414f
                  addi         t5, t5, 1851
                  srli         t5, s9, 21
                  sltiu        tp, t1, 1392
                  blt          gp, a5, 411f
                  xor          s7, s0, t1
                  sltiu        t1, s8, -1546
                  sll          t1, s3, a1
                  add          gp, s4, s4
                  blt          s0, t4, 420f
                  xor          t4, a3, t1
                  sub          gp, a4, s3
                  xor          s0, s7, t6
                  bge          s0, a5, 410f
                  la           s7, region_0+758 #start riscv_load_store_hazard_instr_stream_3
                  sb           t3, 0(s7)
                  lh           s10, 0(s7)
                  lb           a2, -5(s7)
                  sb           s5, -5(s7)
                  lbu          t3, -5(s7)
                  sb           s8, -5(s7)
                  xor          ra, s5, a7
                  lbu          sp, -5(s7)
                  lb           a2, -5(s7)
                  lbu          gp, 5(s7)
                  or           t4, t2, a5
                  sub          t4, a0, t5
                  auipc        t0, 190449
                  lb           s5, 5(s7)
                  ori          t2, t1, -1400
                  lbu          zero, 5(s7)
                  lbu          t0, 5(s7)
                  lhu          t4, 16(s7)
                  sb           t2, 16(s7)
                  sh           s1, 16(s7)
                  sh           ra, 16(s7)
                  lh           s0, 16(s7)
                  andi         t0, s9, -1741
                  sb           ra, 5(s7)
                  lb           s2, 5(s7)
                  andi         a6, gp, 1531
                  lb           s1, 5(s7) #end riscv_load_store_hazard_instr_stream_3
                  sltiu        t4, s7, -698
                  blt          tp, s11, 414f
410:              srli         a4, t4, 27
411:              srl          a4, s8, a0
                  lui          a4, 540146
                  lui          zero, 14611
414:              and          t3, s5, a2
                  sra          s0, a1, t4
                  bne          s9, s1, 432f
                  sll          s3, s5, t4
                  bgeu         s1, t3, 429f
                  srai         s3, t1, 6
420:              andi         a6, a3, -2036
                  bltu         s6, s7, 428f
                  lui          gp, 691965
                  addi         ra, s4, -1977
                  beq          t5, s3, 427f
                  bne          a6, s1, 430f
                  ori          tp, a3, -1836
427:              beq          s6, t4, 435f
428:              xori         a2, a3, 1283
429:              sltu         zero, t6, s3
430:              xor          a5, zero, t1
                  slti         a1, s0, 251
432:              and          t3, s8, s5
                  auipc        zero, 128464
                  srli         a0, ra, 15
435:              nop
                  bltu         s9, s2, 456f
                  bgeu         tp, s7, 451f
                  or           a2, gp, a2
                  beq          a4, t6, 447f
                  sltu         a6, t6, tp
                  bgeu         a4, a0, 448f
                  blt          s9, zero, 460f
                  srl          a7, s7, a3
                  bltu         s4, s2, 461f
                  or           a1, sp, s10
                  bge          tp, gp, 452f
447:              addi         ra, tp, -1102
448:              or           a0, a3, gp
                  addi         gp, s7, -959
                  srl          a6, s8, t6
451:              srai         t2, a2, 18
452:              xor          s2, a3, a1
                  bltu         s11, zero, 458f
                  beq          s3, s1, 470f
                  nop
456:              or           a4, gp, s0
                  bne          s1, s6, 477f
458:              lui          s4, 853142
                  slti         s10, s1, -355
460:              add          t4, s8, s1
461:              sltiu        a4, s3, -684
                  sra          a0, s7, a0
                  sltu         t1, s2, a3
                  slti         a2, t0, -604
                  bgeu         s6, a5, 471f
                  sll          gp, s6, s1
                  auipc        t3, 397490
                  ori          t4, t6, 1829
                  bne          zero, t0, 485f
470:              xori         sp, s0, -538
471:              addi         t3, ra, -459
                  lui          s3, 715599
                  and          s2, s0, t1
                  add          zero, a5, a0
                  sub          zero, s7, s2
                  andi         t4, s3, 1418
477:              bltu         a6, s2, 482f
                  ori          ra, s10, -849
                  slt          a5, gp, a6
                  nop
                  bltu         s11, a7, 486f
482:              beq          s11, t2, 496f
                  sltu         sp, sp, sp
                  addi         s3, a4, -88
485:              slli         t4, t3, 19
486:              xor          ra, a7, a3
                  add          t1, sp, s2
                  beq          t2, a3, 500f
                  slli         sp, t4, 30
                  sra          s10, ra, a7
                  and          tp, t4, s1
                  xor          a5, s1, s7
                  add          t1, s1, a5
                  beq          a1, s5, 497f
                  nop
496:              srl          a6, s9, gp
497:              beq          t1, s2, 510f
                  nop
                  bgeu         t1, gp, 518f
500:              slt          s5, t3, s9
                  bltu         a7, s5, 511f
                  bge          t0, s3, 511f
                  xori         t2, a1, 46
                  and          s4, a1, t3
                  sltiu        sp, t0, 166
                  andi         t3, a1, -421
                  add          zero, s9, t1
                  andi         a3, s5, -1276
                  lui          t5, 1023974
510:              auipc        s0, 341186
511:              bne          s8, s6, 516f
                  xori         a1, s8, 75
                  bltu         t5, t4, 529f
                  bltu         a4, s1, 534f
                  addi         t3, a2, -954
516:              add          t3, tp, sp
                  slti         a7, s4, -2021
518:              bge          s0, s2, 519f
519:              xor          tp, s9, ra
                  bltu         a3, a1, 527f
                  xori         ra, t6, -401
                  srli         gp, a4, 23
                  bne          s9, a6, 526f
                  sltiu        s5, s8, -1994
                  lui          t6, 560741
526:              and          s0, s0, a7
527:              addi         a6, gp, 1210
                  and          s0, s1, a3
529:              srai         s1, zero, 13
                  andi         t6, s4, 347
                  bge          a4, s5, 538f
                  lui          sp, 731848
                  bgeu         t3, a5, 546f
534:              sltu         t2, s6, s8
                  auipc        t0, 493156
                  beq          a5, a7, 556f
                  srl          t4, a4, a6
538:              or           sp, s1, ra
                  bgeu         s5, tp, 552f
                  lui          zero, 770553
                  sltu         s11, t1, s2
                  slli         s10, s2, 21
                  nop
                  lui          a0, 209457
                  xori         s1, s11, -292
546:              srli         t0, t2, 15
                  sltu         a1, a0, sp
                  sll          a6, s4, tp
                  slli         ra, a6, 1
                  or           s1, a5, s2
                  beq          s6, t6, 562f
552:              beq          a1, a1, 555f
                  lui          t3, 596905
                  lui          a7, 281321
555:              and          t4, t2, a0
556:              ori          s5, a6, 1799
                  blt          tp, a2, 577f
                  sll          t5, s5, t4
                  add          a3, s9, s5
                  and          s4, a1, gp
                  bltu         s11, a6, 580f
562:              slt          tp, a6, ra
                  ori          gp, t6, 107
                  xor          gp, t2, a5
                  srli         sp, t5, 11
                  slli         t6, gp, 17
                  bltu         s3, t1, 580f
                  andi         tp, s9, 1929
                  xor          s1, s10, t4
                  blt          a6, t6, 582f
                  slli         s0, a0, 11
                  bltu         gp, s2, 588f
                  bge          s7, t2, 579f
                  slli         a3, a2, 1
                  sra          s1, a5, t6
                  sltu         tp, s7, s0
577:              slt          a4, a2, s2
                  bltu         s10, s6, 592f
579:              sltiu        t2, tp, 1239
580:              bge          a2, s1, 596f
                  and          s0, s11, s6
582:              bgeu         t3, s4, 595f
                  beq          a0, s7, 592f
                  sub          s11, a2, s9
                  srl          s11, s9, ra
                  srl          t6, s10, t1
                  add          ra, zero, a5
588:              srli         s3, t6, 24
                  sub          t5, t6, a3
                  add          s4, t1, gp
                  andi         a2, a3, -1168
592:              sra          t5, a0, zero
                  sub          t1, s1, gp
                  bgeu         s11, zero, 599f
595:              srli         s1, ra, 0
596:              nop
                  slt          a2, s0, s1
                  sra          t0, ra, s8
599:              bgeu         s10, s5, 615f
                  bne          t1, s9, 608f
                  srli         a7, gp, 21
                  slt          s11, a0, sp
                  ori          t4, zero, -1493
                  ori          ra, a6, 1281
                  srli         a0, a0, 17
                  add          ra, gp, t2
                  sll          gp, tp, a5
608:              andi         s0, s5, -1124
                  blt          t1, s8, 616f
                  xori         a2, tp, -542
                  bne          zero, t1, 622f
                  beq          a4, s9, 618f
                  bltu         a6, a0, 618f
                  sltiu        a6, s8, -1546
615:              or           t5, s2, s0
616:              srli         sp, tp, 6
                  nop
618:              slt          s4, a3, sp
                  srai         s5, sp, 1
                  auipc        s7, 653329
                  blt          t0, s6, 631f
622:              srli         t6, a2, 8
                  sltu         zero, a2, s7
                  slt          s7, ra, t6
                  sub          a4, t5, s7
                  ori          ra, s1, -2039
                  xori         tp, t3, 541
                  add          s1, zero, tp
                  xor          s11, s1, s11
                  or           ra, t6, t4
631:              andi         a6, s1, -1004
                  bge          s5, s7, 635f
                  srl          sp, s2, s9
                  xori         a2, zero, 469
635:              and          s10, a2, a3
                  and          a1, s6, t3
                  ori          s2, s6, 197
                  add          s11, s0, t1
                  slli         s1, sp, 12
                  auipc        t3, 441319
                  bge          t5, s0, 642f
642:              xori         s2, zero, -398
                  sltu         t6, ra, a5
                  xor          s4, a1, s2
                  slti         s3, s1, -693
                  or           s7, t6, s9
                  auipc        a4, 842519
                  or           a6, tp, s9
                  and          t4, ra, t0
                  xor          a1, tp, s11
                  bgeu         s4, s1, 656f
                  bgeu         a2, s0, 659f
                  sub          ra, t6, s8
                  bgeu         s6, t0, 661f
                  srli         a7, a4, 23
656:              bgeu         s5, t3, 676f
                  srli         s2, gp, 2
                  bne          a3, a1, 675f
659:              sltiu        a3, a3, -1538
                  bltu         s5, s9, 678f
661:              slt          sp, s4, a2
                  add          s0, s8, s7
                  slt          s1, a1, a3
                  sub          zero, s3, a5
                  slli         a0, s5, 8
                  srl          t3, a5, a7
                  bltu         t3, a7, 672f
                  bgeu         a1, s11, 681f
                  slti         t4, tp, -856
                  slt          s10, t0, s5
                  sltu         t1, a7, t1
672:              xor          a0, s9, t5
                  bgeu         s9, a7, 693f
                  sll          a1, t3, sp
675:              ori          s1, ra, -715
676:              sra          t2, t4, ra
                  sub          a2, a1, t1
678:              bgeu         s9, a0, 683f
                  lui          t3, 593565
                  andi         s0, sp, 1251
681:              ori          t3, t5, 1239
                  srl          t0, sp, a1
683:              slt          a0, a6, t1
                  and          s1, t4, s0
                  andi         t2, a7, -614
                  xor          tp, s4, t4
                  bgeu         s9, zero, 707f
                  slli         t4, s3, 17
                  sub          tp, t6, s2
                  sltu         t3, a4, s5
                  bne          t5, a5, 707f
                  or           a5, a6, s5
693:              auipc        s4, 417017
                  nop
                  sra          t3, a0, a3
                  xor          t2, a0, a2
                  ori          a6, gp, 1817
                  sltiu        tp, t4, -691
                  andi         a7, t4, 725
                  auipc        s0, 504288
                  nop
                  sra          a3, s7, a0
                  sltu         sp, s1, s7
                  sll          s4, s11, a0
                  sll          s7, a1, a1
                  and          t3, s5, t4
707:              xor          ra, tp, zero
                  lui          t2, 855684
                  sll          tp, t1, s1
                  addi         a7, tp, 670
                  slli         tp, t0, 29
                  slti         ra, ra, 417
                  sltu         t4, t0, t2
                  add          ra, s6, s9
                  srai         a2, s7, 10
                  addi         t3, t3, -1123
                  beq          tp, t4, 722f
                  srl          a0, s11, sp
                  bltu         t6, zero, 722f
                  srai         a0, s9, 27
                  slli         t2, sp, 29
722:              ori          a2, s9, 1882
                  and          a1, a6, t2
                  slt          s0, t0, s11
                  xori         a7, t6, -963
                  slt          s11, a3, t0
                  lw           t5, 4(s8)
                  andi         t4, t2, -1301
                  andi         a4, s1, 770
                  srli         a6, t1, 26
                  addi         s8, s8, 24
                  nop
                  xor          zero, a7, t6
                  srli         sp, t5, 20
1418:             addi x28, x30, 0
1418:             jalr x28, x28, 0
sub_2:            srli         a6, t4, 17
                  sub          t6, t6, a7
                  slli         sp, t4, 24
                  addi         s8, s8, -40
                  ori          a4, s10, -1021
                  sra          tp, s9, t2
                  srl          ra, a1, s4
                  sra          t1, s2, gp
                  add          s11, s6, s11
                  sw           t5, 4(s8)
                  ori          t2, a0, 334
                  addi         gp, zero, -621
                  la           a0, region_0+163 #start load_store_instr_stream_1
                  la           sp, region_0+1677 #start load_store_instr_stream_0
                  lbu          t5, -130(sp)
                  lb           t3, -1260(sp)
                  lh           zero, -7(a0)
                  lb           t2, 120(sp)
                  sb           s4, 66(sp)
                  sb           gp, -299(sp)
                  sb           t5, -6(a0)
                  lbu          a5, -1313(sp)
                  sb           t2, 12(a0)
                  sw           s4, 9(a0)
                  sb           s1, -724(sp)
                  sb           t5, -682(sp)
                  lhu          t6, -9(a0) #end load_store_instr_stream_1
                  lbu          zero, -308(sp)
                  lhu          s0, 93(sp) #end load_store_instr_stream_0
                  la           sp, region_0+640 #start riscv_load_store_hazard_instr_stream_0
                  or           s0, a6, s3
                  slli         t0, s10, 8
                  lbu          t1, -43(sp)
                  srli         a0, s0, 23
                  lbu          s3, -33(sp)
                  lbu          s5, -33(sp)
                  lb           t6, -33(sp)
                  and          t4, t1, a3
                  lbu          gp, -33(sp)
                  lbu          t6, -33(sp)
                  sb           s7, -33(sp)
                  lb           s1, 1(sp)
                  sltu         t4, s8, s2
                  lb           a3, 1(sp)
                  andi         t2, tp, 619
                  srai         a4, t5, 22
                  sb           t2, 1(sp)
                  sb           s4, -18(sp)
                  lhu          a1, -18(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_1+1437 #start riscv_load_store_rand_instr_stream_0
                  ori          t2, a2, 1233
                  srl          t5, s1, a3
                  addi         s0, s11, -1737
                  andi         s11, s10, -1608
                  add          t4, s5, t3
                  lb           s7, 36(s1)
                  lhu          s0, 61(s1)
                  lb           zero, 16(s1)
                  and          s0, s5, s6
                  andi         a7, ra, 1521
                  nop
                  sh           zero, -35(s1)
                  sra          t1, s8, a6
                  sltu         a1, s8, a7
                  sb           t4, 24(s1)
                  sb           s0, -17(s1)
                  andi         a1, zero, -900
                  lbu          t5, -40(s1)
                  sltu         t0, t2, a7
                  sh           a4, -45(s1)
                  slli         s7, t0, 12
                  slt          t5, t5, a2
                  sra          t0, s6, a7
                  sra          gp, a2, a5
                  lui          gp, 837472
                  srl          tp, s11, s3
                  sub          s5, a7, a6
                  nop
                  sltu         s11, t5, a1
                  srli         s0, a3, 19
                  lbu          gp, 15(s1)
                  lbu          t1, 18(s1)
                  xori         t1, a7, -960
                  sb           t4, -46(s1)
                  lhu          s0, -17(s1)
                  nop
                  ori          s0, s1, 382
                  or           a0, s5, a4
                  lb           a7, -13(s1)
                  slt          zero, t0, t6
                  addi         a7, t0, -230
                  lbu          a2, 34(s1) #end riscv_load_store_rand_instr_stream_0
                  beq          a2, s3, 7f
                  sll          a5, a5, t2
                  andi         t0, t4, 691
                  add          s3, s1, ra
                  auipc        t0, 291087
                  addi         gp, a0, -1606
                  sltiu        s10, s10, -244
7:                srli         a2, s0, 9
                  ori          a3, s9, 1775
                  xori         s7, s4, 839
                  xor          a5, t3, s10
                  andi         tp, s4, 256
                  srl          a1, t0, t4
                  srai         tp, s3, 21
                  slli         t1, a2, 5
                  add          a4, a4, t2
                  beq          s4, t2, 21f
                  beq          sp, t2, 36f
                  slt          t0, s3, s10
                  srli         t6, sp, 4
                  xor          t5, sp, s7
21:               lui          t5, 465066
                  srl          t5, tp, s1
                  auipc        s5, 650791
                  sub          a2, t3, s4
                  sltu         s11, sp, s7
                  nop
                  nop
                  bge          t0, a3, 44f
                  and          a3, s4, a5
                  add          a5, zero, a2
                  blt          s10, a6, 33f
                  srli         s5, t4, 4
33:               auipc        t4, 39908
                  srai         s7, t3, 31
                  auipc        a6, 745746
36:               and          ra, sp, s5
                  sltiu        t6, t1, 347
                  add          s1, s8, a5
                  add          t0, s3, s1
                  auipc        t1, 74797
                  ori          tp, s4, -1769
                  sra          sp, zero, zero
                  sub          a6, s9, a5
44:               sltiu        a3, t1, -105
                  slti         s0, t4, 1686
                  xori         sp, s10, -1810
                  srai         t4, a3, 6
                  auipc        a2, 884620
                  srl          tp, a1, t2
                  sll          s1, t4, tp
                  auipc        s1, 162444
                  bne          s9, t4, 59f
                  slti         tp, zero, -540
                  ori          a5, s2, 173
                  auipc        a3, 274814
                  or           tp, s2, zero
                  ori          a5, s0, 1315
                  slti         s5, s8, 1697
59:               sub          tp, s6, s6
                  slti         ra, a3, -269
                  beq          s0, a6, 75f
                  srai         s2, a6, 19
                  sra          t6, t0, ra
                  srl          t6, t4, t2
                  nop
                  sll          a1, t0, t0
                  slti         a0, s10, 1922
                  bltu         a2, s6, 86f
                  sltu         s4, s11, t6
                  srli         ra, a5, 24
                  auipc        s1, 782348
                  sub          t4, t1, a4
                  slli         a3, t2, 31
                  ori          tp, t5, 1506
75:               blt          t6, tp, 85f
                  add          a7, ra, a2
                  slti         t5, tp, -625
                  beq          t1, s4, 94f
                  bltu         s8, zero, 96f
                  sltu         a7, s0, a0
                  blt          t0, a5, 101f
                  srai         s10, s1, 26
                  sltu         s1, t3, a1
                  andi         a3, s7, -1386
85:               addi         s7, s3, 1434
86:               xor          sp, a5, a5
                  slli         t3, a0, 14
                  and          t0, zero, s5
                  ori          s11, s2, 716
                  sra          s4, s1, a3
                  srl          t0, s7, s3
                  bne          s8, zero, 93f
93:               add          s3, t5, zero
94:               andi         ra, a1, 833
                  ori          t0, a0, -556
96:               addi         ra, t5, 699
                  srl          t1, s9, s11
                  ori          t0, t1, 1089
                  sll          a1, s9, a1
                  and          a5, a5, a4
101:              and          s4, s5, s0
                  bgeu         t2, s9, 107f
                  sltu         s5, t3, a4
                  slli         s4, s0, 21
                  slt          s0, a4, a0
                  xori         ra, a7, -1287
107:              srai         sp, s9, 12
                  srai         tp, a7, 15
                  sltu         t3, s0, ra
                  ori          t0, a7, 187
                  xor          a2, s10, t3
                  sra          a0, a2, sp
                  blt          s6, s5, 122f
                  andi         s2, a4, -915
                  slti         ra, s4, 1562
                  addi         s11, t3, -1448
                  sra          zero, tp, s3
                  and          s1, s3, zero
                  xori         a7, s8, -160
                  srai         a6, s5, 21
                  beq          a7, t6, 139f
122:              add          ra, s1, t6
                  add          zero, t6, s1
                  xor          a5, a7, s11
                  blt          s4, t3, 133f
                  lui          zero, 510711
                  sll          s0, s11, s9
                  nop
                  beq          ra, t3, 135f
                  xor          s4, s1, s2
                  auipc        t2, 861859
                  bltu         gp, t0, 139f
133:              auipc        t4, 944142
                  srai         ra, t2, 2
135:              andi         tp, t4, -1113
                  auipc        a4, 417672
                  bge          ra, s4, 138f
138:              blt          s0, t2, 139f
139:              lui          a0, 1007175
                  addi         a2, s11, 1273
                  lw           t5, 4(s8)
                  add          s5, a5, tp
                  addi         s8, s8, 40
                  and          a1, a5, a5
237:              addi x9, x30, 1
237:              jalr x9, x9, 0
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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x22, x24, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
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
                  add x22, x24, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x20, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x20, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x20, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x20, x19, ecall_handler
                  li x19, 0x1
                  beq x20, x19, instr_fault_handler
                  li x19, 0x5
                  beq x20, x19, load_fault_handler
                  li x19, 0x7
                  beq x20, x19, store_fault_handler
                  li x19, 0xc
                  beq x20, x19, pt_fault_handler
                  li x19, 0xd
                  beq x20, x19, pt_fault_handler
                  li x19, 0xf
                  beq x20, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x24, x22, zero
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
                  add x24, x22, zero
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
                  add x24, x22, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x24, x22, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x24, x22, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x24, x22, zero
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
