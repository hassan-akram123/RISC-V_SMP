.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x6, h0_start
jalr x0, x6, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
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
                  li x0, 0x80000000
                  li x1, 0xe
                  li x2, 0x0
                  li x3, 0xa
                  li x4, 0xf2a83035
                  li x5, 0x80000000
                  li x6, 0xf03eb01f
                  li x7, 0x0
                  li x9, 0xfc011b5c
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x956ad14c
                  li x14, 0x9
                  li x15, 0x4c123dcc
                  li x16, 0xd
                  li x17, 0x0
                  li x18, 0x80000000
                  li x20, 0xa
                  li x21, 0x80000000
                  li x22, 0xfe2239d3
                  li x23, 0x80000000
                  li x24, 0x16f4a1b5
                  li x25, 0x1
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0xf32cc8c5
                  li x30, 0x80000000
                  li x31, 0xe
                  la x8, user_stack_end
main:             srl          s1, t2, s4
                  la           ra, sub_2
                  and          t2, s1, s9
                  srl          gp, ra, t3
                  srli         zero, s11, 26
                  xori         t5, s1, -511
                  add          a3, a6, a0
                  sra          a6, a3, a0
                  addi         ra, ra, 845
                  sll          a5, a3, s3
                  sra          gp, a1, t0
                  bgeu         t0, t6, main_j2 #branch to jump instr
                  srl          s8, a3, s5
main_j2:          jalr         s11, ra, -844 #jump main -> sub_2
                  la           a2, region_0+1153 #start load_store_instr_stream_2
                  la           s5, region_0+1261 #start load_store_instr_stream_0
                  lbu          a0, 25(s5)
                  sb           zero, -255(a2)
                  la           a5, region_0+433 #start load_store_instr_stream_1
                  sb           t0, -768(a2)
                  lb           a7, -10(s5)
                  lh           t5, -59(s5)
                  lb           s1, 61(a5)
                  lhu          t2, 577(a2)
                  sb           s5, -24(a5)
                  lbu          s8, 54(s5)
                  lb           a0, 2(s5)
                  lhu          a3, 37(a5)
                  sh           sp, 19(a5)
                  lbu          t2, -39(s5)
                  lb           a0, 8(a5)
                  lb           a6, -1142(a2)
                  sb           ra, 56(a5) #end load_store_instr_stream_1
                  lh           s8, -721(a2) #end load_store_instr_stream_2
                  sb           s2, -22(s5) #end load_store_instr_stream_0
                  la           t3, region_1+1538 #start riscv_load_store_rand_instr_stream_3
                  sb           t3, -221(t3)
                  xori         t5, a1, -740
                  lb           t5, -123(t3)
                  slli         a0, s7, 25
                  sub          t6, a4, a2
                  slt          a4, s10, t3
                  slti         s2, t6, -1031
                  srli         t2, a2, 3
                  srai         a6, sp, 8
                  sb           a5, 175(t3)
                  slli         ra, s7, 11
                  and          s1, s0, s5
                  sltiu        ra, zero, 331
                  lhu          zero, 164(t3)
                  srai         t4, sp, 16
                  and          tp, s5, t3
                  ori          a5, a1, 1766
                  nop
                  auipc        a0, 274379
                  slt          t4, s0, a3
                  xor          zero, a3, t5
                  addi         zero, s3, 1156
                  ori          a4, a3, 993
                  sltiu        t4, s10, -1695
                  srli         s7, t3, 0
                  ori          gp, zero, 847
                  sltiu        s8, s11, -688
                  sub          gp, ra, s1
                  sltu         a1, a7, t5
                  lw           s7, -122(t3)
                  lb           a2, 210(t3)
                  srli         a2, s9, 5
                  lh           s10, 210(t3)
                  sb           ra, -124(t3)
                  lb           s10, -120(t3)
                  lw           s6, 226(t3) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_1+656 #start riscv_load_store_rand_instr_stream_1
                  lbu          tp, 679(t2)
                  add          s9, a3, t2
                  lb           s11, -127(t2)
                  slli         s8, a7, 30
                  lw           s7, 1172(t2)
                  lb           s6, 581(t2)
                  lb           sp, 580(t2)
                  and          s5, s8, t2
                  lb           t3, 27(t2)
                  lbu          t3, 163(t2)
                  lb           a1, 597(t2)
                  lb           s9, 586(t2)
                  lb           a2, 979(t2)
                  slli         tp, a0, 24
                  lb           t0, 55(t2)
                  sh           s6, 990(t2)
                  lb           t5, -77(t2)
                  lbu          t5, 530(t2)
                  lbu          t4, -179(t2)
                  srl          tp, s10, a1
                  add          sp, a6, a6
                  lb           ra, -546(t2)
                  lw           t0, 476(t2)
                  sw           a0, 1192(t2)
                  andi         zero, a5, 997
                  lb           t0, 1184(t2)
                  xor          s10, s0, t4
                  lb           a2, 1006(t2)
                  sll          s7, zero, s7
                  sb           a7, 534(t2)
                  lb           gp, 1071(t2)
                  lbu          s2, 774(t2)
                  addi         t5, s2, 1642
                  lbu          s9, 470(t2)
                  lb           tp, 1259(t2)
                  lbu          s11, 640(t2)
                  lh           s7, 870(t2)
                  lb           s11, 720(t2) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_1+1210 #start load_store_instr_stream_1
                  la           s7, region_1+1762 #start load_store_instr_stream_2
                  lb           a2, 219(t0)
                  lb           s1, -890(s7)
                  la           ra, region_1+904 #start load_store_instr_stream_0
                  lbu          t3, -1196(s7)
                  lbu          s2, -67(t0)
                  lbu          t3, 131(ra)
                  sb           a4, -88(s7)
                  lbu          t3, 1036(ra)
                  lhu          sp, -438(s7)
                  lb           s4, -539(ra)
                  lb           a1, -210(s7)
                  lb           s8, -175(t0)
                  sb           s0, -660(s7)
                  lbu          s4, -499(s7)
                  lb           t5, 249(t0)
                  sh           s3, 0(s7)
                  sh           ra, 330(ra)
                  sb           tp, -488(s7) #end load_store_instr_stream_2
                  lbu          zero, 113(t0)
                  lh           tp, -12(t0)
                  sb           sp, -138(t0)
                  sb           ra, -127(t0) #end load_store_instr_stream_1
                  lb           s4, 891(ra) #end load_store_instr_stream_0
                  la           sp, region_1+1588 #start riscv_load_store_hazard_instr_stream_2
                  sh           a6, -52(sp)
                  lw           gp, -52(sp)
                  lbu          zero, 35(sp)
                  slt          s2, s6, tp
                  lb           t2, 35(sp)
                  sra          a1, s6, ra
                  slti         t4, a3, -1739
                  sb           s9, 35(sp)
                  xor          a4, a1, a4
                  sb           s6, 35(sp)
                  lb           s6, 35(sp)
                  lb           gp, 35(sp)
                  srai         a0, t3, 0
                  lui          ra, 678326
                  add          s8, s7, a2
                  sb           tp, 35(sp)
                  lb           s8, 35(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           ra, region_0+1733 #start riscv_load_store_hazard_instr_stream_4
                  lbu          t0, -8(ra)
                  lbu          s11, -8(ra)
                  sb           gp, -8(ra)
                  sb           s1, -8(ra)
                  sb           s9, -8(ra)
                  lb           t4, -8(ra)
                  lbu          a4, -8(ra)
                  lb           s4, -8(ra)
                  sb           t3, -8(ra)
                  auipc        s6, 618810
                  lbu          a6, -8(ra)
                  lbu          a7, -15(ra)
                  lh           s4, -15(ra)
                  lb           a1, -15(ra)
                  lbu          s1, -15(ra)
                  sb           s9, -15(ra)
                  lbu          t5, -15(ra)
                  lhu          s9, -15(ra)
                  sh           s7, -15(ra) #end riscv_load_store_hazard_instr_stream_4
                  la           s11, region_1+1990 #start load_store_instr_stream_1
                  la           a2, region_1+1781 #start load_store_instr_stream_0
                  la           s6, region_1+364 #start load_store_instr_stream_2
                  lbu          tp, 15(s6)
                  lbu          s2, -17(s6)
                  lbu          s7, 103(a2)
                  sb           s11, -55(s11)
                  lw           t3, 6(s11)
                  sb           s8, -124(a2)
                  lb           a6, -39(s11)
                  sh           s6, -163(a2)
                  lhu          a5, -6(s11)
                  sh           s9, -36(s11)
                  lb           a5, -205(a2)
                  lh           s10, -60(s11)
                  lbu          s10, 32(a2)
                  lbu          t0, -43(s6)
                  sh           s3, -113(a2)
                  lb           s8, 55(s6)
                  lbu          s8, -57(s11)
                  lbu          a4, 26(s6)
                  lb           a4, -4(a2)
                  sb           a4, -60(s11)
                  lb           s10, -53(s6) #end load_store_instr_stream_2
                  sb           s11, -21(s11) #end load_store_instr_stream_1
                  lb           ra, 132(a2) #end load_store_instr_stream_0
                  la           a4, region_0+1657 #start riscv_load_store_rand_instr_stream_2
                  nop
                  add          s10, s0, t2
                  sll          s6, s4, s10
                  lb           t4, -54(a4)
                  sltu         tp, a3, a1
                  xori         zero, s9, 695
                  or           t3, a5, s7
                  xori         t3, s9, -85
                  lbu          s4, -106(a4)
                  lb           a2, -220(a4)
                  lb           s9, -144(a4)
                  sll          s7, a2, s11
                  slt          t5, a7, a2
                  sra          t5, s6, t5
                  sb           s11, -222(a4)
                  nop
                  lbu          s4, -148(a4)
                  lhu          a3, 57(a4)
                  sb           s8, -136(a4)
                  sh           a1, -215(a4)
                  nop
                  xor          s8, s5, a1
                  sw           t1, -169(a4)
                  lbu          s4, -238(a4)
                  lhu          s9, 167(a4)
                  lb           a7, -140(a4)
                  sb           a1, 88(a4)
                  andi         s11, t1, -231
                  srl          ra, s3, a3
                  sltiu        tp, s2, -903
                  lh           t4, -109(a4)
                  sb           a3, -170(a4)
                  xor          zero, s5, a6
                  lui          t3, 766517
                  lb           ra, 85(a4)
                  lh           s5, 37(a4) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_0+850 #start riscv_load_store_hazard_instr_stream_0
                  lb           t5, -14(a4)
                  lh           s4, -14(a4)
                  sb           a7, -14(a4)
                  lui          tp, 647598
                  lbu          a0, -5(a4)
                  xori         s7, s1, -1799
                  sb           s10, -5(a4)
                  sb           t6, -5(a4)
                  sb           t2, -5(a4)
                  srli         s8, a3, 11
                  addi         s10, t1, 635
                  lhu          a2, -4(a4)
                  lh           s2, -4(a4)
                  sb           a4, -15(a4) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+80 #start riscv_load_store_hazard_instr_stream_3
                  sb           a3, -39(sp)
                  lbu          s4, -39(sp)
                  lb           t5, -39(sp)
                  sb           s5, -39(sp)
                  sltiu        s7, t4, 1877
                  slli         tp, a5, 0
                  slt          zero, s10, s7
                  sb           s1, -39(sp)
                  lh           t5, 56(sp)
                  lw           tp, 56(sp)
                  nop
                  lb           a1, -75(sp)
                  lh           s8, -78(sp)
                  lb           t2, -78(sp)
                  sb           a4, -78(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           a3, region_1+665 #start load_store_instr_stream_0
                  lbu          a7, -500(a3)
                  la           t6, region_1+1940 #start load_store_instr_stream_1
                  sb           s9, 1174(a3)
                  lh           sp, -1046(t6)
                  sw           zero, -868(t6)
                  lb           s9, 403(a3)
                  lbu          s10, -687(t6)
                  lbu          t5, -218(a3)
                  lb           s10, -73(t6)
                  sh           s11, 1327(a3)
                  sh           s8, -1338(t6) #end load_store_instr_stream_1
                  lb           t0, 18(a3) #end load_store_instr_stream_0
                  la           a2, region_0+1216 #start load_store_instr_stream_1
                  lb           a4, 5(a2)
                  la           a3, region_0+166 #start load_store_instr_stream_3
                  lh           a6, -2(a3)
                  la           t0, region_0+1101 #start load_store_instr_stream_4
                  la           s4, region_0+357 #start load_store_instr_stream_2
                  sb           s11, 28(t0)
                  la           t4, region_0+846 #start load_store_instr_stream_0
                  sb           a6, -13(a2)
                  sb           a4, -10(a3)
                  lbu          a6, 13(s4)
                  sh           s5, -14(a2)
                  lw           s5, -57(t0)
                  lbu          a6, 16(a3)
                  lb           s5, -4(a3)
                  lb           s9, -25(s4)
                  sh           s3, -29(s4)
                  lb           t3, 359(t4)
                  lb           s9, -5(a2)
                  lhu          s7, 934(t4)
                  sb           s5, 10(a3)
                  lb           t6, -30(s4)
                  lh           s5, 1052(t4)
                  lbu          sp, 52(s4)
                  lb           sp, 6(a2) #end load_store_instr_stream_1
                  lbu          a6, 3(t0)
                  sh           s4, 17(s4) #end load_store_instr_stream_2
                  sh           s11, -14(a3)
                  lw           a4, 3(t0)
                  lb           s1, 12(a3) #end load_store_instr_stream_3
                  lbu          gp, -32(t0) #end load_store_instr_stream_4
                  lb           a5, -640(t4)
                  sb           a0, -180(t4) #end load_store_instr_stream_0
                  la           s11, region_0+1611 #start riscv_load_store_rand_instr_stream_0
                  sll          a7, s9, s2
                  sltiu        s6, a6, -1036
                  srai         a5, s7, 6
                  auipc        s6, 877119
                  lb           t0, -2(s11)
                  sb           s4, 15(s11)
                  slt          s5, s10, s8
                  sltu         a0, a4, t0
                  sltu         a4, t4, t4
                  sub          s1, t5, t4
                  sb           a0, 16(s11)
                  lb           t3, 10(s11)
                  sh           ra, -11(s11)
                  auipc        gp, 676559
                  lb           t5, 6(s11)
                  lb           t3, -15(s11)
                  xori         s8, tp, -159
                  lbu          ra, 13(s11)
                  addi         a7, a5, -1957
                  lhu          t4, 5(s11)
                  sb           s2, -12(s11)
                  lb           sp, -2(s11)
                  lbu          t0, -13(s11)
                  or           zero, s0, s4
                  lb           a2, 10(s11)
                  ori          a6, t2, -1842
                  srli         t2, t6, 15
                  sb           sp, 16(s11)
                  sb           s3, -14(s11)
                  sltu         gp, tp, ra
                  lb           sp, -16(s11)
                  srl          s7, t4, s1
                  sll          s9, sp, s8
                  sb           a3, 0(s11)
                  xor          s8, a1, s4
                  and          a2, s7, s0
                  andi         s1, a2, 1799
                  lbu          s5, 15(s11)
                  sra          gp, s1, gp
                  srl          t3, s8, a6
                  srai         s5, t5, 18
                  xor          a5, a7, s1
                  sltu         a7, s4, s3
                  srai         a3, s6, 28
                  lbu          s7, -9(s11)
                  sw           s9, 13(s11)
                  srl          a2, s11, sp
                  lui          tp, 50256
                  lbu          s6, -14(s11)
                  lw           s6, 5(s11)
                  lw           s4, 1(s11) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+1920 #start riscv_load_store_rand_instr_stream_4
                  sb           s1, -9(s8)
                  srl          s10, s9, s8
                  sb           t1, -7(s8)
                  sb           a0, -5(s8)
                  sb           zero, -8(s8)
                  sb           s2, -10(s8)
                  lbu          t2, 15(s8)
                  sltiu        gp, s0, -285
                  slli         gp, t6, 5
                  sw           gp, -8(s8)
                  slli         t0, s6, 1
                  slli         a3, s5, 13
                  sltiu        a2, t0, 896
                  lbu          a1, -16(s8)
                  and          gp, zero, s11
                  sltiu        s2, t2, 1068
                  lbu          a1, 13(s8)
                  lw           a0, 4(s8)
                  lh           zero, 10(s8)
                  sb           s2, -5(s8)
                  sll          gp, a6, s3
                  lw           s7, -16(s8)
                  sb           s11, 9(s8)
                  sb           s3, -5(s8)
                  lbu          a7, 4(s8)
                  slti         s1, s5, -630
                  lbu          t4, 6(s8)
                  srai         t6, t3, 24
                  nop
                  srl          a0, s8, sp
                  and          tp, s11, a3
                  xor          a1, s1, sp
                  sb           s5, -13(s8)
                  sll          s11, tp, s6
                  lbu          a3, -10(s8)
                  lw           a7, -16(s8)
                  sb           s0, -15(s8)
                  sb           a2, 3(s8)
                  sltiu        a1, s2, 2039
                  auipc        sp, 854213
                  srai         s2, s5, 9
                  auipc        s6, 976885
                  srli         a6, a3, 14
                  lbu          t2, -11(s8)
                  lbu          t3, 8(s8) #end riscv_load_store_rand_instr_stream_4
                  nop
                  auipc        t0, 522202
                  andi         a6, a3, -650
                  xori         ra, s7, -602
                  bge          t5, s10, 16f
                  bgeu         a4, a7, 14f
                  bne          s6, s4, 10f
                  xori         ra, t6, 1527
                  slti         t6, s8, -2028
                  andi         sp, zero, 1140
10:               andi         t4, ra, 970
                  nop
                  beq          sp, a7, 22f
                  auipc        s1, 171072
14:               bne          a4, a0, 19f
                  addi         a2, s11, 1668
16:               slt          tp, s6, s11
                  slt          s10, t0, a4
                  sll          s2, a3, a7
19:               slt          t2, s2, gp
                  addi         a7, sp, 314
                  nop
                  la           s4, sub_1
                  sub          s6, s11, t0
                  addi         s4, s4, -342
                  slti         a4, s9, -124
                  or           a3, a2, a6
                  add          a4, a2, sp
                  lui          a5, 538983
                  bgeu         s10, a0, main_j1 #branch to jump instr
                  andi         a3, t4, 91
                  slti         sp, a3, 500
main_j1:          jalr         s11, s4, 343 #jump main -> sub_1
22:               add          ra, t5, a7
                  andi         s8, tp, 658
                  xori         s6, t6, 1829
                  la           s11, region_0+487 #start riscv_load_store_hazard_instr_stream_1
                  sb           s6, 8(s11)
                  lui          ra, 828321
                  sb           tp, -16(s11)
                  auipc        a3, 724
                  lh           a3, -3(s11)
                  slt          s6, t3, t0
                  srli         t3, a1, 1
                  sra          t4, tp, s8
                  lw           s5, -3(s11)
                  lb           a5, -10(s11)
                  lbu          sp, -5(s11)
                  sw           t0, 5(s11)
                  addi         s4, t2, -1287
                  lh           s5, -7(s11)
                  lbu          a4, -7(s11)
                  sb           s1, 8(s11)
                  slt          a0, a3, t0
                  sb           s9, 8(s11)
                  sb           s10, -16(s11)
                  sb           s4, 8(s11)
                  lbu          ra, 8(s11) #end riscv_load_store_hazard_instr_stream_1
                  blt          zero, s4, 34f
                  sra          t3, t4, zero
                  xor          t2, a7, a7
                  add          s1, tp, s0
                  srli         s4, zero, 11
                  beq          s2, gp, 37f
                  blt          s5, sp, 43f
                  nop
                  beq          s1, a3, 40f
34:               auipc        a1, 480499
                  bge          s10, ra, 40f
                  or           a3, s11, a2
37:               srai         a7, s9, 11
                  and          a0, ra, t3
                  bge          s10, s3, 59f
40:               or           s1, s10, a1
                  bltu         s9, s2, 59f
                  add          a4, ra, a6
43:               bne          s6, s6, 53f
                  andi         s7, s11, 1331
                  sub          a6, zero, gp
                  sltu         s1, s9, s9
                  beq          t5, t3, 67f
                  sub          a7, t4, s2
                  lui          a4, 185205
                  addi         s8, gp, 1713
                  sub          a3, s0, s10
                  srai         s2, zero, 13
53:               bge          s7, t5, 58f
                  sll          s6, t2, t0
                  sltiu        s4, tp, 1639
                  srli         a0, t2, 11
                  bgeu         sp, s2, 63f
58:               sra          a6, a7, a1
59:               ori          a6, s10, -1580
                  srl          s6, t0, t3
                  nop
                  ori          a0, a6, 222
63:               sub          gp, t2, s2
                  beq          a6, gp, 74f
                  slti         t0, a0, -884
                  auipc        a2, 189702
67:               auipc        ra, 499899
                  srai         a7, a7, 25
                  slt          zero, s3, t0
                  xori         s8, s2, -2039
                  sra          a2, s7, t3
                  andi         a2, a6, 490
                  slti         t2, a1, -1611
74:               andi         a3, s4, -1239
                  slti         s5, t1, 847
                  bgeu         s7, s9, 81f
                  or           t0, s0, sp
                  bgeu         a6, a6, 93f
                  sltu         a3, t0, t2
                  xor          s9, ra, s2
81:               slli         a6, s0, 8
                  bltu         s0, a3, 86f
                  andi         ra, s1, -1734
                  bgeu         sp, a4, 99f
                  sub          t2, s6, t5
86:               auipc        s6, 23398
                  add          a1, sp, s3
                  slti         t2, t2, 1299
                  add          a1, s6, t3
                  ori          s11, ra, 1234
                  or           s10, a4, s11
                  bne          gp, tp, 97f
93:               beq          a7, t4, 102f
                  xori         sp, a5, 1172
                  andi         s1, a1, 1093
                  srli         s6, a5, 27
97:               srli         a7, s11, 13
                  bgeu         a5, s3, 111f
99:               xori         a1, t5, -1566
                  blt          s0, s4, 112f
                  add          zero, s2, s10
102:              srl          s2, sp, s6
                  srai         a4, s7, 25
                  ori          t6, gp, 797
                  add          a5, a6, s8
                  bne          s9, s5, 123f
                  addi         t6, s8, 1091
                  sub          ra, t0, t0
                  bne          gp, t2, 128f
                  slt          s2, s5, s7
111:              beq          s0, gp, 115f
112:              sra          t6, t6, s10
                  sltiu        t2, t3, 1092
                  srl          s2, s1, s10
115:              sra          t5, t2, t6
                  ori          s6, s8, -1403
                  sltu         s1, t0, s8
                  auipc        ra, 197223
                  addi         ra, a5, 1659
                  bgeu         s9, s7, 137f
                  srli         s10, gp, 25
                  and          a0, s6, s9
123:              srli         a4, s5, 15
                  sub          a1, t3, a7
                  or           a5, t4, t2
                  xor          gp, zero, s4
                  addi         s11, a7, 1097
128:              srai         sp, t0, 25
                  sra          gp, gp, a4
                  nop
                  beq          s6, ra, 148f
                  srli         s10, s6, 31
                  bge          s5, t4, 145f
                  sll          s11, s3, t2
                  andi         a6, s5, 869
                  andi         s11, s6, 289
137:              andi         s4, t2, -246
                  andi         t0, tp, -1140
                  lui          s2, 801256
                  srl          a6, t2, t2
                  auipc        zero, 607567
                  srli         tp, s11, 22
                  and          s8, a5, t2
                  lui          ra, 724303
145:              or           a3, s7, t1
                  xori         s11, tp, 882
                  auipc        s11, 312808
148:              sra          gp, s5, s8
                  slli         t5, t6, 30
                  andi         t4, s8, -1140
                  slli         s9, t1, 5
                  and          t2, t6, gp
                  sub          gp, s9, s3
                  andi         s11, t2, -404
                  bge          a7, ra, 170f
                  sra          s2, a6, s11
                  add          ra, a7, a7
                  sub          s9, ra, s4
                  sra          a3, tp, a6
                  andi         a1, s1, 1654
                  auipc        t3, 794431
                  andi         t4, s4, -661
                  ori          s7, t0, 627
                  slti         a2, t1, -1369
                  bltu         s3, a6, 185f
                  bltu         a6, s1, 173f
                  lui          s2, 149613
                  lui          tp, 618252
                  srli         a1, t2, 20
170:              nop
                  sra          s1, s2, ra
                  bltu         s6, t4, 181f
173:              sra          t2, a1, zero
                  sltu         s2, a4, s9
                  slt          s5, s7, a3
                  blt          t5, gp, 181f
                  slli         a4, t0, 9
                  add          sp, zero, a4
                  sltu         t0, s7, s6
                  xori         a0, t1, -1083
181:              lui          t5, 112022
                  sltu         s2, tp, s2
                  slli         t6, a0, 29
                  add          a4, s4, a7
185:              srli         s9, t5, 31
                  sltu         t4, s0, s5
                  add          a1, s2, sp
                  auipc        t3, 778488
                  slt          zero, a4, s3
                  bge          a1, s7, 194f
                  andi         a0, gp, -69
                  add          a1, tp, t2
                  or           t0, s11, s3
194:              beq          s6, t5, 198f
                  xori         s11, zero, -618
                  slt          a0, a5, s11
                  lui          a3, 458171
198:              add          s8, s2, zero
                  add          sp, s7, t5
                  nop
                  or           a3, gp, t3
                  and          a1, s5, a6
                  srli         t5, s7, 28
                  bge          s8, zero, 221f
                  srl          s4, a6, s0
                  beq          sp, s10, 211f
                  addi         t3, a5, -2029
                  lui          s10, 243794
                  addi         t5, a2, -1321
                  slti         gp, ra, -1039
211:              slti         t4, t1, -1557
                  or           s1, t4, ra
                  sub          s10, a6, s3
                  slti         t3, ra, -1328
                  andi         ra, s3, -688
                  slt          s2, a7, s4
                  or           a4, gp, t3
                  ori          s2, zero, 1813
                  sra          s10, t1, a2
                  srli         a2, s2, 21
221:              beq          sp, a7, 228f
                  sra          s2, s1, zero
                  srai         s9, sp, 1
                  bgeu         zero, a5, 243f
                  srl          t4, t4, s7
                  nop
                  or           s10, s10, a1
228:              slti         a3, a3, 1232
                  andi         s8, s2, -1984
                  slli         a7, s5, 8
                  sub          s9, s11, a3
                  nop
                  slli         s11, s4, 9
                  andi         a0, s1, -1981
                  srai         s4, s1, 11
                  sub          s1, s11, a0
                  addi         s8, tp, 759
                  or           s7, s4, a5
                  srai         s11, s11, 18
                  xori         a1, s7, 1303
                  sltiu        zero, a6, -788
                  slti         a6, a0, -1625
243:              srli         a7, t2, 18
                  srli         a7, s7, 13
                  sltu         s2, a5, s3
                  slt          s6, t6, s7
                  srli         s5, a5, 16
                  nop
                  sll          t5, a6, sp
                  bne          t3, t3, 255f
                  slli         s11, t3, 22
                  and          a5, t0, s5
                  sll          a6, zero, a2
                  blt          s5, s6, 263f
255:              addi         s5, s4, 2003
                  srai         s2, a1, 25
                  or           t2, s11, gp
                  bltu         t4, t5, 278f
                  ori          zero, a3, -569
                  or           a4, a7, s10
                  sltiu        a6, s2, -2022
                  bne          a0, s10, 267f
263:              addi         s11, a5, 346
                  beq          t3, t2, 281f
                  add          t3, s11, s7
                  xori         s5, t4, 1630
267:              add          a7, a5, s3
                  lui          t6, 700034
                  sll          s4, s0, t2
                  sltu         s8, ra, a0
                  nop
                  slli         gp, gp, 19
                  or           s8, a1, a4
                  slt          a0, s8, a1
                  srai         t6, s10, 8
                  bge          t6, t2, 281f
                  or           a1, a7, a1
278:              addi         a3, a4, 888
                  bge          a6, s6, 289f
                  slli         a7, s5, 17
281:              nop
                  srli         s8, s8, 20
                  sra          s1, a2, t3
                  bltu         a0, s2, 293f
                  beq          zero, s8, 297f
                  slti         s1, t1, -1208
                  slt          t4, tp, s7
                  auipc        sp, 607767
289:              sub          t0, s1, a1
                  ori          s8, a7, 582
                  srl          s9, s4, a7
                  add          t2, s3, a3
293:              srl          s1, t6, zero
                  srl          t5, a0, s6
                  add          a5, s9, a0
                  bltu         t2, a4, 311f
297:              lui          s5, 405091
                  srai         a1, s0, 3
                  add          s9, a1, a6
                  ori          a1, a3, -1814
                  addi         a4, a1, -1538
                  slti         tp, zero, 1503
                  auipc        s2, 783379
                  and          s2, a2, t4
                  nop
                  bne          t1, s9, 316f
                  sll          a3, t0, s6
                  and          a7, s10, s9
                  beq          a3, a2, 322f
                  bltu         t1, s8, 316f
311:              srli         t4, gp, 20
                  sltu         t4, s9, s9
                  bne          s2, a1, 323f
                  sll          t6, a4, t4
                  xori         s4, t2, -280
316:              srli         a0, s10, 21
                  andi         a0, s7, 1622
                  sra          t6, s10, t0
                  sub          t5, s2, s5
                  srai         t6, s0, 1
                  bltu         zero, a3, 333f
322:              sub          t4, s7, t1
323:              srl          a5, t4, ra
                  sll          sp, a0, s0
                  nop
                  andi         a5, t0, 418
                  nop
                  add          t3, s8, s11
                  sltu         t4, t3, ra
                  nop
                  slti         gp, a1, 132
                  slli         tp, ra, 11
333:              sltu         t5, ra, a2
                  xor          s7, s10, t2
                  slt          a3, gp, s11
                  andi         ra, t2, -1999
                  srl          a1, a4, t5
                  bge          a7, s1, 355f
                  sra          a5, t5, s6
                  lui          t0, 707552
                  bge          tp, tp, 359f
                  slli         s7, t5, 28
                  slt          a0, s1, t6
                  bne          s5, a2, 348f
                  sltiu        a6, a1, 938
                  slt          t6, s5, a1
                  sltiu        t2, s1, 284
348:              nop
                  lui          gp, 17845
                  nop
                  bltu         a3, s8, 356f
                  addi         t4, s10, 1170
                  bltu         tp, t2, 368f
                  and          a1, a1, ra
355:              and          s2, s7, s1
356:              sltiu        sp, a3, 1712
                  slti         t0, sp, -2008
                  ori          zero, tp, -306
359:              bgeu         a4, s4, 377f
                  slli         s7, s10, 6
                  bne          a6, a4, 374f
                  bltu         s3, s4, 366f
                  bltu         t2, a7, 373f
                  or           t2, t5, t3
                  lui          s7, 294163
366:              auipc        s10, 81307
                  ori          s5, s4, 423
368:              slli         t5, a6, 17
                  auipc        s2, 16511
                  xor          tp, s8, s10
                  auipc        s5, 934587
                  beq          gp, a6, 392f
373:              bne          a2, s10, 377f
374:              sltiu        t3, s4, -737
                  nop
                  slli         s10, a1, 0
377:              bltu         t5, t0, 386f
                  ori          a4, t6, 737
                  sra          t4, ra, a7
                  andi         a2, s9, -1410
                  bltu         s9, s5, 390f
                  xori         t5, a4, -79
                  beq          a0, zero, 400f
                  sll          a7, t5, t6
                  srli         t6, a4, 29
386:              srl          tp, a7, t5
                  and          a2, s4, s6
                  bgeu         t0, t0, 398f
                  and          ra, a7, s6
390:              auipc        a1, 444380
                  srli         t2, t3, 22
392:              nop
                  slt          a5, s9, s7
                  sltu         s10, s5, s3
                  and          s9, a3, s8
                  slt          t2, ra, ra
                  xori         t5, s9, 1711
398:              andi         a1, s5, -1405
                  bgeu         s11, a5, 404f
400:              andi         t2, s4, -315
                  srli         s2, t3, 14
                  srai         tp, s2, 28
                  nop
404:              srli         s5, zero, 31
                  nop
                  xori         s11, s6, -1140
                  slti         t5, zero, 2046
                  andi         t2, s4, 1100
                  add          s9, s4, s2
                  bge          s10, t0, 417f
                  srli         tp, ra, 26
                  andi         t6, gp, 309
                  or           t2, s4, s5
                  add          s8, s7, a4
                  xor          zero, sp, s10
                  nop
417:              sub          a7, t3, s10
                  or           s7, t1, a5
                  xori         s1, s1, -543
                  sub          s6, t6, tp
                  and          a0, t5, s9
                  addi         t5, s4, 1607
                  or           t6, s11, tp
                  xori         zero, s7, 309
                  sltiu        zero, s4, -1478
                  sll          ra, sp, t2
                  or           t3, a3, t1
                  ori          s6, s1, 31
                  sra          t3, s8, a4
                  xori         a2, s1, 282
                  andi         t2, a7, 95
                  andi         a0, s3, -1553
                  and          t2, s10, s6
                  andi         a0, s2, 1737
                  sub          t5, t4, s5
                  sltu         a6, s8, t4
                  bgeu         sp, s1, 442f
                  xori         s7, t4, 965
                  xori         zero, t1, -607
                  xor          t2, t2, s0
                  srl          sp, s2, s10
442:              andi         a0, t6, -426
                  xor          sp, s10, t0
                  ori          s4, s2, -24
                  slli         a3, a3, 12
                  nop
                  bltu         gp, s4, 452f
                  ori          gp, a0, 1834
                  srl          s8, t3, a7
                  add          s8, sp, s3
                  srai         a7, t0, 17
452:              sub          sp, tp, s9
                  bge          a0, zero, 473f
                  and          a1, ra, t6
                  bltu         s0, t0, 470f
                  blt          s0, a5, 473f
                  srai         a3, s9, 13
                  srli         a4, t3, 28
                  sltu         s8, s5, t2
                  bge          s9, a0, 465f
                  bne          a5, a5, 465f
                  auipc        t2, 404438
                  add          s7, t2, a2
                  auipc        a4, 315095
465:              srai         s1, t1, 5
                  blt          t1, s7, 478f
                  srai         a2, s0, 10
                  blt          a0, ra, 475f
                  ori          t4, s1, 359
470:              slli         s1, t3, 12
                  nop
                  sltiu        ra, s0, 2004
473:              add          s9, t2, s11
                  bgeu         ra, zero, 486f
475:              addi         a0, a2, -135
                  nop
                  add          s6, s2, a7
478:              auipc        a0, 168763
                  auipc        s2, 753590
                  srli         s5, a3, 30
                  bltu         s0, t2, 490f
                  xor          t5, a1, s4
                  sub          s11, t0, a0
                  bge          t2, t6, 503f
                  bge          s0, s5, 502f
486:              or           a2, t2, s11
                  sltiu        s4, t4, -404
                  and          s9, a4, tp
                  xori         t0, a0, 1462
490:              srli         a4, s7, 9
                  sra          s10, a7, a4
                  sra          s5, a6, s3
                  blt          t1, s11, 499f
                  ori          t4, t4, -1747
                  sltu         s9, tp, t0
                  nop
                  slt          t5, tp, gp
                  bltu         t2, a1, 508f
499:              srl          ra, a2, tp
                  nop
                  nop
502:              sub          s7, s10, t1
503:              xor          t6, s3, t2
                  sltu         s5, s11, a2
                  xor          tp, t6, s1
                  lui          s7, 201435
                  slli         a6, s3, 5
508:              slt          s10, s6, a5
                  sra          s4, s9, t2
                  slti         s10, s10, -1479
                  andi         a2, t6, -1996
                  sll          t4, s10, zero
                  bge          t3, s4, 515f
                  sra          t6, s2, sp
515:              addi         t6, gp, -447
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bltu         t3, t3, sub_1_stack_p
                  sll          t5, t5, s11
sub_1_stack_p:    addi         s0, s0, -20
                  srai         zero, a3, 18
                  sw           s11, 4(s0)
                  ori          tp, a5, 158
                  lui          s6, 987881
                  la           a4, region_0+315 #start load_store_instr_stream_1
                  sb           t5, 14(a4)
                  la           a5, region_0+652 #start load_store_instr_stream_0
                  lbu          a0, -159(a5)
                  lbu          t3, -10(a4)
                  lbu          t4, -57(a5)
                  lb           t5, -253(a5)
                  lhu          a7, -50(a5)
                  lb           a1, -34(a5)
                  lbu          s5, -23(a5)
                  sb           a4, -8(a4)
                  sb           a1, 189(a5)
                  lhu          ra, -15(a4)
                  sw           t1, 5(a4) #end load_store_instr_stream_1
                  sb           s4, 79(a5) #end load_store_instr_stream_0
                  la           sp, region_1+972 #start riscv_load_store_hazard_instr_stream_0
                  lb           s9, -43(sp)
                  lbu          s2, -43(sp)
                  add          a1, t3, s4
                  lbu          s2, -43(sp)
                  sb           s10, -43(sp)
                  lh           t3, 54(sp)
                  lh           t4, 54(sp)
                  lb           t5, 29(sp)
                  auipc        s5, 634065
                  sh           t6, 58(sp)
                  sb           t1, 35(sp)
                  lbu          zero, 22(sp) #end riscv_load_store_hazard_instr_stream_0
                  beq          t6, s1, 9f
                  bne          s6, s3, 16f
                  srl          t4, s8, t0
                  sub          s7, t3, s7
                  ori          s8, t5, -537
                  andi         a2, gp, -1414
                  bltu         a2, s11, 12f
                  or           s1, t5, sp
                  srli         t6, s7, 2
9:                bgeu         s3, tp, 27f
                  xori         zero, t4, 1440
                  lui          a5, 770147
12:               beq          s0, s9, 24f
                  xori         t4, t6, -741
                  or           t2, a5, s7
                  sltiu        t5, t3, -1347
16:               sltu         s9, s7, s10
                  blt          s7, t2, 27f
                  auipc        t2, 390654
                  and          a3, s1, a2
                  slt          t0, t0, s9
                  srli         zero, s4, 28
                  blt          a0, s11, 30f
                  sltu         s1, t4, ra
24:               addi         a4, a3, -1231
                  xor          t5, a2, t5
                  ori          ra, t0, -64
27:               bne          a0, s0, 43f
                  or           a1, a2, t1
                  slti         tp, t6, -1541
30:               slli         t4, s9, 17
                  bgeu         t1, t2, 41f
                  nop
                  sltiu        tp, s0, -222
                  sra          s5, t3, a3
                  sub          t3, s9, s10
                  sll          s10, s7, t6
                  sll          a7, s1, s6
                  sub          gp, gp, a1
                  slli         s4, t0, 18
                  add          a6, t6, s10
41:               srai         t4, s9, 29
                  sltu         a5, t2, tp
43:               srl          a1, s8, a1
                  slti         s10, zero, -1269
                  and          s11, a6, s0
                  xori         sp, a5, 1224
                  bgeu         s5, s5, 51f
                  srai         ra, gp, 5
                  add          s10, a4, ra
                  and          a7, a7, a5
51:               nop
                  srl          t4, gp, s7
                  sltu         t3, a0, s2
                  slli         s5, a7, 16
                  and          t6, s8, a5
                  lui          a7, 408769
                  nop
                  srli         t2, tp, 25
                  or           t6, s4, s8
                  xor          a7, s8, s5
                  slt          a1, a6, s2
                  addi         s1, s8, -185
                  andi         t4, tp, -1702
                  bge          a5, s0, 76f
                  bgeu         a5, s2, 84f
                  srai         ra, a3, 28
                  sll          s4, t5, sp
                  bltu         tp, s6, 87f
                  bge          t4, a7, 78f
                  nop
                  or           a1, s7, a6
                  slti         t0, a5, 848
                  andi         s5, s2, -2030
                  ori          sp, a6, 961
                  bltu         t0, a4, 87f
76:               and          zero, a4, s11
                  beq          s0, s2, 82f
                  la           s6, region_0+1367 #start riscv_load_store_rand_instr_stream_0
                  sb           t0, 78(s6)
                  sub          s9, t4, a7
                  sh           sp, -223(s6)
                  srli         sp, s6, 22
                  xori         tp, s9, 985
                  sw           a1, -91(s6)
                  lb           t3, 156(s6)
                  slt          a7, t6, t3
                  sltu         zero, t1, t4
                  addi         a3, s5, 954
                  addi         sp, ra, -1939
                  sb           s1, 63(s6)
                  slti         a1, s7, 1161
                  srli         t0, s2, 10
                  lbu          a6, 8(s6)
                  nop
                  xor          sp, a7, t4
                  lbu          a1, -18(s6)
                  lb           t0, -102(s6)
                  and          s10, s3, t1
                  andi         s1, s1, 342
                  andi         a3, s9, -592
                  srai         a7, s3, 11
                  srli         a3, a6, 5
                  sub          gp, t2, s8
                  slt          ra, t3, s11
                  xori         a4, t1, 1811
                  slli         t6, s1, 4
                  xori         s5, s2, -445
                  lw           ra, -127(s6)
                  slti         t6, a1, -557
                  sh           a6, -205(s6)
                  sra          t2, tp, zero
                  sltu         t2, t4, ra
                  lui          t3, 662431
                  lbu          gp, -76(s6)
                  sra          s4, a1, a7
                  sh           a5, 3(s6)
                  lb           a6, 186(s6) #end riscv_load_store_rand_instr_stream_0
78:               xori         a5, ra, 1275
                  srli         s1, t4, 8
                  or           t5, t4, ra
                  srli         t4, zero, 18
82:               auipc        ra, 272047
                  ori          a0, zero, -727
84:               blt          tp, s0, 102f
                  sub          t3, s0, s5
                  bltu         s4, s1, 95f
87:               slli         s7, a7, 5
                  srl          sp, sp, ra
                  sltiu        s1, t3, -1826
                  srl          t4, a6, s11
                  sub          tp, t4, s1
                  auipc        t5, 249619
                  lui          t6, 85658
                  bne          t0, a2, 104f
95:               addi         s6, t1, -131
                  ori          a1, a0, 1852
                  bgeu         s5, s8, 99f
                  add          a5, s6, a1
99:               sltu         tp, s5, s5
                  sltu         gp, t5, a7
                  bltu         s1, t6, 119f
102:              sltiu        s4, a2, 1120
                  blt          t4, ra, 117f
104:              bne          ra, s10, 110f
                  beq          a6, s2, 122f
                  xori         s5, a7, -664
                  or           s1, tp, t1
                  sub          t0, a5, s3
                  lui          a2, 821834
110:              beq          s1, gp, 118f
                  ori          s2, a6, 987
                  and          gp, s10, s9
                  slli         a5, a4, 11
                  srl          a3, zero, t5
                  auipc        a7, 830746
                  srai         t4, s3, 19
117:              andi         a0, t4, 1820
118:              lui          a3, 618535
119:              bltu         s9, s10, 128f
                  andi         s6, t0, -1994
                  xor          tp, tp, a7
122:              srai         a4, gp, 14
                  sra          s11, t4, s7
                  andi         a2, s6, 1884
                  sub          a7, a0, t4
                  auipc        t4, 574409
                  lui          s7, 857953
128:              blt          a5, ra, 145f
                  beq          ra, s11, 148f
                  beq          gp, s4, 139f
                  lui          s9, 268929
                  beq          t3, s10, 137f
                  srai         zero, s10, 30
                  blt          a1, a3, 152f
                  auipc        t2, 640307
                  sltu         a5, s4, a1
137:              bne          t2, ra, 156f
                  addi         s10, gp, -909
139:              sub          t2, s8, t3
                  sltiu        s8, a0, -451
                  slti         zero, s6, 1604
                  sra          a2, s6, a4
                  bge          a5, s5, 145f
                  slli         a0, a0, 30
145:              sll          s7, a3, a0
                  srli         s9, s1, 22
                  slli         s4, a7, 21
148:              srl          t5, sp, tp
                  bltu         zero, s2, 164f
                  sra          tp, s1, a7
                  sll          a6, s5, gp
152:              slli         sp, s1, 25
                  auipc        a2, 655692
                  add          t4, s6, t4
                  andi         s6, s2, 1377
156:              sltiu        s9, s7, 1370
                  bge          a7, t2, 171f
                  xor          t0, t3, t6
                  sll          gp, t6, s5
                  srli         t0, a3, 6
                  nop
                  sltiu        a1, s2, 526
                  bne          s0, s9, 169f
164:              slt          gp, sp, t6
                  slt          s10, zero, t6
                  slti         s10, a6, 1059
                  nop
                  blt          s9, s2, 180f
169:              slli         ra, s10, 26
                  andi         tp, zero, -751
171:              sra          s9, a0, a3
                  xori         a5, t6, 2008
                  bne          s5, s9, 189f
                  xori         gp, s0, 265
                  bltu         s6, s0, 184f
                  sub          s9, t1, t0
                  sll          s7, s2, s5
                  bgeu         s2, sp, 196f
                  bgeu         s6, t6, 183f
180:              srai         a0, t4, 4
                  srl          zero, t0, a6
                  slt          s1, t4, a1
183:              sub          t4, a7, s0
184:              sll          ra, t0, t4
                  andi         t3, s2, 1461
                  srl          s4, a0, a7
                  xor          s9, t0, a6
                  bgeu         ra, s6, 196f
189:              sub          s4, a7, s11
                  xor          a0, a4, sp
                  auipc        a4, 442544
                  xor          t2, a5, s5
                  sltu         t3, a1, s3
                  sltiu        s4, s7, -231
                  xor          t2, a7, sp
196:              slti         s5, t0, 629
                  lw           s11, 4(s0)
                  addi         s0, s0, 20
                  srl          s4, s3, s10
                  ori          s7, a6, -201
                  ori          a1, s0, -676
277:              addi x7, x27, 0
277:              jalr x7, x7, 0
sub_2:            sll          a4, a3, tp
                  addi         s0, s0, -36
                  sw           s11, 4(s0)
                  andi         t3, t4, 2039
                  nop
                  add          a4, s10, a5
                  sll          zero, s10, a3
                  sub          gp, s11, a4
                  la           s7, region_0+1987 #start riscv_load_store_rand_instr_stream_1
                  sltu         tp, s3, t4
                  srli         tp, s3, 11
                  sb           t5, -1748(s7)
                  sb           sp, -566(s7)
                  lui          t4, 440114
                  lhu          sp, -1055(s7)
                  lbu          a6, -1334(s7)
                  and          s10, a1, s11
                  sb           a5, -779(s7)
                  lbu          a5, -1102(s7)
                  lb           a3, -1576(s7)
                  lbu          s10, -44(s7)
                  sltu         tp, a7, t4
                  lbu          t0, -858(s7)
                  and          t0, a0, a4
                  sb           t1, -284(s7)
                  or           a6, s1, t1
                  sb           a2, -1497(s7)
                  sub          a4, s9, a1
                  lb           s2, -149(s7)
                  lbu          s8, -1920(s7)
                  slli         t3, tp, 19
                  sb           s5, -212(s7)
                  slli         s8, t2, 23
                  slt          t2, a1, s7
                  sltu         s8, a1, s5
                  sltu         t6, a5, gp
                  sra          s5, a0, zero
                  srl          s6, t4, gp
                  slt          t6, gp, s8
                  srl          a5, s0, s9
                  nop
                  lb           a3, -797(s7)
                  lb           a1, -1230(s7)
                  sb           s10, -829(s7)
                  andi         s8, sp, -1872
                  slli         a1, s8, 31
                  srai         gp, zero, 24
                  ori          s6, a7, -401
                  nop
                  lbu          a4, -1912(s7) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+784 #start riscv_load_store_rand_instr_stream_0
                  addi         t0, s2, -769
                  slti         zero, s7, -17
                  sh           a1, 4(s6)
                  sb           s9, 16(s6)
                  lbu          a2, -10(s6)
                  sb           s11, 12(s6)
                  xori         t0, s4, 174
                  sb           s0, -11(s6)
                  srl          s2, s7, zero
                  lb           a5, 13(s6)
                  lui          s10, 640507
                  lb           s10, 15(s6)
                  sb           a2, -15(s6)
                  lbu          a1, 15(s6)
                  sub          t3, a0, a3
                  sw           gp, 12(s6)
                  xori         a7, s11, 159
                  lh           a3, -14(s6)
                  lbu          s7, -1(s6)
                  sb           a3, -16(s6)
                  sb           s3, -3(s6)
                  lh           t3, -12(s6)
                  andi         tp, t3, -749
                  auipc        a5, 410409
                  lbu          s11, 11(s6)
                  lb           a7, -15(s6)
                  sb           s1, 16(s6)
                  sb           t6, 15(s6)
                  lb           zero, -3(s6)
                  lb           s5, 12(s6)
                  lb           gp, -11(s6)
                  lb           s11, 7(s6)
                  lbu          a1, -1(s6)
                  srl          a0, s11, s8
                  slt          s2, s0, tp
                  sh           s7, 12(s6) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_1+107 #start riscv_load_store_hazard_instr_stream_1
                  sb           a4, 63(s2)
                  sb           a4, -18(s2)
                  sw           t1, 37(s2)
                  sb           gp, 26(s2)
                  lb           t0, 46(s2)
                  lh           s7, 29(s2)
                  slti         s4, s10, -720
                  lbu          s1, -42(s2)
                  sb           s0, -39(s2)
                  lhu          a5, -33(s2)
                  sb           s0, -33(s2)
                  sb           a0, -22(s2)
                  lb           t2, -55(s2)
                  lw           s10, 1(s2)
                  lui          s1, 275047
                  lb           t4, 6(s2)
                  lhu          s6, -49(s2)
                  nop
                  lh           a1, -49(s2)
                  lb           t6, -50(s2) #end riscv_load_store_hazard_instr_stream_1
                  la           a2, region_0+1988 #start load_store_instr_stream_0
                  sb           zero, -147(a2)
                  lh           tp, -1798(a2)
                  la           t4, region_0+78 #start load_store_instr_stream_1
                  lbu          s5, -967(a2)
                  sb           t1, 1331(t4)
                  lw           s4, -1852(a2)
                  sh           s6, -1520(a2)
                  lbu          s11, -1873(a2)
                  sw           t0, 158(t4)
                  sb           a1, -1208(a2)
                  lb           a1, 871(t4)
                  lb           t0, -113(a2)
                  sh           s1, 776(t4)
                  lbu          a6, -1459(a2)
                  lhu          a6, 256(t4) #end load_store_instr_stream_1
                  lb           a7, 3(a2) #end load_store_instr_stream_0
                  sra          a4, s4, a2
                  slt          s4, a1, a1
                  sltiu        s4, a5, 1472
                  sltiu        sp, s10, -1993
                  slt          s8, t0, s9
                  andi         a3, a3, -585
                  bgeu         tp, a4, 12f
                  bgeu         t6, a4, 15f
                  srli         a4, gp, 6
                  sltiu        ra, s2, 1366
                  add          a1, s9, a5
                  sll          s6, t0, a4
12:               andi         a7, s5, 365
                  andi         a6, a3, 905
                  bge          gp, a1, 16f
15:               sltiu        t4, s5, 956
16:               beq          s10, t3, 23f
                  xor          zero, t6, s3
                  sltu         s7, t3, t2
                  sll          gp, s8, s5
                  srai         s4, s11, 2
                  sub          a2, s9, t6
                  slt          s9, a1, s11
23:               sltiu        gp, sp, -2039
                  sra          t0, s10, t3
                  sltu         t0, a0, a3
                  beq          s7, s4, 29f
                  bne          s11, t2, 34f
                  bgeu         s2, s2, 30f
29:               slti         t0, zero, -1090
30:               blt          s11, ra, 43f
                  slt          ra, s10, sp
                  srai         tp, a5, 1
                  andi         a7, s0, -73
34:               beq          a3, s10, 37f
                  sub          s2, t0, sp
                  sll          gp, s10, t6
37:               xor          t2, s1, a4
                  auipc        s2, 1046173
                  addi         s6, t1, -59
                  addi         s1, a5, 1758
                  blt          zero, t0, 43f
                  sub          s2, ra, t3
43:               blt          s4, s10, 54f
                  addi         s6, s9, -106
                  blt          a3, s0, 63f
                  andi         s5, t3, 969
                  bne          t4, s1, 57f
                  srai         sp, t0, 8
                  slti         a7, t0, -748
                  sub          gp, ra, s5
                  andi         t4, a0, 464
                  sub          t6, s7, tp
                  add          a6, a4, s8
54:               sll          s4, s4, t3
                  xori         s10, a4, -1757
                  auipc        s7, 746322
57:               ori          tp, a1, 1139
                  sra          a3, sp, t0
                  lui          s6, 543428
                  sra          tp, a7, s7
                  blt          s2, t2, 64f
                  la           t3, region_0+1993 #start load_store_instr_stream_2
                  lhu          a0, -3(t3)
                  la           tp, region_0+1497 #start load_store_instr_stream_0
                  sb           s4, 2(t3)
                  lb           a2, -612(tp)
                  la           a5, region_0+1292 #start load_store_instr_stream_1
                  lbu          s8, 4(t3)
                  lh           a6, -485(tp)
                  lhu          sp, 240(a5)
                  lb           a4, -10(t3)
                  lbu          zero, 224(a5)
                  lb           s8, -166(a5)
                  lbu          sp, -868(tp)
                  lb           s1, -13(t3)
                  sh           s11, -297(tp)
                  lb           ra, 117(a5)
                  lhu          s10, -134(a5)
                  lbu          a7, -1199(tp)
                  sb           s6, 85(a5)
                  sb           s2, -543(tp)
                  lb           s2, 0(t3)
                  sh           a4, 256(a5)
                  lhu          s2, -3(t3)
                  lbu          a7, -3(t3)
                  lb           t2, -14(t3)
                  lh           s10, -1079(tp)
                  lw           t0, -200(a5)
                  lbu          s5, -512(tp)
                  lhu          sp, -6(a5) #end load_store_instr_stream_1
                  lb           s6, -10(t3) #end load_store_instr_stream_2
                  lh           a2, -349(tp) #end load_store_instr_stream_0
                  sltu         a3, s0, s4
63:               slli         s4, s6, 9
64:               ori          s6, a4, -417
                  srli         t5, ra, 24
                  sltiu        t0, gp, -1540
                  addi         gp, s8, 454
                  slli         tp, a4, 31
                  srli         s9, a6, 14
                  nop
                  add          s1, a1, s7
                  srai         a0, a2, 5
                  nop
                  nop
                  lui          a1, 922571
                  andi         t5, s0, 647
                  slli         ra, t5, 23
                  bge          s11, s11, 93f
                  srl          s1, s8, a3
                  add          s4, a1, ra
                  srl          a2, t5, s4
                  slli         a3, s7, 30
                  srl          t3, tp, s0
                  slli         s9, gp, 14
                  sub          s1, s10, s7
                  beq          t1, a3, 88f
                  sltu         s4, a3, ra
88:               sra          gp, a6, s4
                  slti         a6, a3, 1468
                  lui          t5, 415566
                  slti         s4, zero, 1828
                  slt          a1, a3, a0
93:               srli         tp, s5, 2
                  sll          a5, s5, a1
                  bgeu         s4, gp, 107f
                  sltu         a0, s2, zero
                  slti         a1, s6, 1710
                  blt          s10, s4, 103f
                  bne          zero, a4, 116f
                  sltiu        t3, t6, -222
                  auipc        t4, 448581
                  slli         a3, s11, 0
103:              bne          s6, s0, 121f
                  or           tp, s7, s6
                  nop
                  sub          s7, s9, s8
107:              auipc        sp, 1394
                  slti         ra, s1, 1929
                  andi         s11, t0, 1827
                  ori          zero, a1, -1954
                  slli         zero, tp, 5
                  slt          a2, a7, a7
                  blt          t6, a4, 129f
                  ori          t5, s0, -282
                  slti         zero, a6, -1348
116:              slt          a0, ra, t5
                  la           sp, region_0+1975 #start riscv_load_store_hazard_instr_stream_0
                  and          s4, a7, s5
                  slli         gp, a6, 0
                  sb           a2, -74(sp)
                  lb           a2, -74(sp)
                  lbu          a6, -74(sp)
                  lb           s2, -74(sp)
                  and          a6, t5, s3
                  lb           s6, -74(sp)
                  lb           s10, -74(sp)
                  or           s1, a2, t4
                  lbu          s7, -74(sp)
                  lbu          t5, -74(sp)
                  srai         t5, ra, 22
                  sb           s2, -38(sp)
                  lbu          t0, -61(sp)
                  sll          s1, s8, s0
                  lb           a2, -61(sp)
                  lh           s4, -61(sp)
                  lh           a4, -61(sp)
                  lb           t0, -61(sp)
                  lb           t6, -61(sp) #end riscv_load_store_hazard_instr_stream_0
                  srli         a3, t2, 9
                  srl          s1, a1, a6
                  auipc        t2, 107173
                  lui          s5, 29995
121:              sltiu        t5, t6, -2002
                  add          t6, ra, s7
                  sll          a6, s1, a4
                  add          t0, a1, t1
                  bne          zero, s2, 130f
                  and          s7, t0, t4
                  slli         s2, a5, 23
                  srai         sp, t5, 29
129:              sub          a5, a5, s8
130:              bgeu         a5, s6, 140f
                  add          t2, s4, s1
                  addi         gp, s0, 1393
                  auipc        s6, 1035567
                  xori         a6, t6, 662
                  add          t5, a6, sp
                  slt          s9, zero, s3
                  xori         a6, s3, 1398
                  bgeu         a2, s11, 151f
                  srai         a0, a6, 11
140:              bltu         a7, sp, 141f
141:              blt          s8, ra, 157f
                  blt          gp, sp, 145f
                  beq          a6, s6, 153f
                  auipc        zero, 693811
145:              ori          ra, a3, 1340
                  beq          gp, t6, 166f
                  srli         s4, t2, 14
                  slt          s5, t1, t3
                  addi         t2, t4, -509
                  slli         a2, a5, 6
151:              sub          a0, t4, s2
                  sltu         t6, t6, t5
153:              srl          a1, s3, s0
                  bge          a6, s7, 173f
                  bgeu         s10, a0, 158f
                  blt          s3, s2, 161f
157:              srli         s10, a2, 20
158:              blt          a4, t4, 161f
                  sra          s8, ra, s0
                  auipc        ra, 793364
161:              sltu         a2, zero, s4
                  and          a7, t3, a0
                  bltu         s3, a7, 176f
                  slti         a2, s0, 184
                  slli         t0, t1, 12
166:              slt          a6, t1, s11
                  beq          s3, s6, 185f
                  add          a2, s9, s2
                  auipc        t0, 439654
                  or           s9, s3, a7
                  nop
                  add          t0, s2, t5
173:              auipc        a7, 391397
                  sltiu        s1, a4, 546
                  beq          a2, t1, 188f
176:              xori         tp, s10, -260
                  srl          s11, s7, s9
                  xori         t2, a1, -1984
                  beq          sp, a7, 185f
                  sub          s8, s10, a2
                  sltu         t4, a2, a1
                  bge          a6, t5, 192f
                  sll          s5, s11, s3
                  andi         t2, s2, -937
185:              sra          a6, s2, t1
                  addi         s4, t2, 1963
                  sltiu        s2, s8, -794
188:              and          gp, t4, s2
                  and          s11, s4, t4
                  slt          s11, s9, t6
                  nop
192:              auipc        t5, 560851
                  and          s8, t6, s4
                  addi         tp, s1, -1805
                  srai         s7, s3, 12
                  addi         a0, s10, 369
                  beq          t5, t3, 213f
                  and          a6, s7, t4
                  srli         a4, a6, 4
                  srai         sp, ra, 8
                  or           a6, s10, t1
                  beq          s0, gp, 204f
                  lui          t3, 687174
204:              or           a4, a6, t5
                  beq          s7, a2, 217f
                  srl          a7, s8, s4
                  bge          tp, s9, 209f
                  blt          s9, s2, 223f
209:              sub          ra, s3, a6
                  sll          a4, a4, s5
                  xori         tp, s4, 1565
                  addi         a7, s7, 555
213:              bltu         s5, s3, 216f
                  srai         a6, gp, 21
                  sltiu        t3, a3, 683
216:              sltiu        t2, a0, -981
217:              add          s1, a1, zero
                  add          s7, s3, a7
                  sra          t0, t2, s8
                  addi         s6, s2, -304
                  slti         s7, t6, -1802
                  lui          s10, 585729
223:              xor          s5, s9, a5
                  addi         a1, t2, -1969
                  auipc        zero, 105699
                  blt          t4, zero, 236f
                  srli         t0, t2, 19
                  addi         s11, t6, -201
                  andi         gp, s9, 462
                  xori         s2, gp, -449
                  sub          s6, a1, s3
                  srai         tp, s0, 24
                  sltiu        ra, s10, -75
                  lui          a5, 816274
                  srli         a1, s6, 5
236:              sltu         a7, zero, a5
                  andi         s5, ra, -1004
                  xor          tp, s4, t3
                  bge          a3, a3, 247f
                  sll          s1, s6, s10
                  blt          t2, a3, 243f
                  bgeu         s8, a0, 260f
243:              bgeu         s7, a0, 248f
                  slli         gp, s7, 27
                  blt          a7, ra, 256f
                  srl          t4, a4, s2
247:              xor          t3, a0, s0
248:              andi         gp, a1, 1450
                  nop
                  bgeu         s6, a7, 260f
                  xor          s10, s1, t6
                  bltu         s6, t4, 269f
                  bge          t2, zero, 273f
                  srl          gp, tp, a7
                  add          s8, t2, t4
256:              sub          gp, s10, gp
                  bne          s4, sp, 258f
258:              or           s11, a6, t3
                  and          ra, ra, t1
260:              xor          t3, t2, s7
                  add          a5, s4, s5
                  xor          s2, s2, t0
                  srli         t4, t3, 3
                  bgeu         s10, a2, 280f
                  slt          a7, ra, a1
                  sub          a6, s2, t3
                  auipc        a1, 822327
                  beq          a1, s8, 270f
269:              bgeu         ra, s3, 272f
270:              slti         s4, s0, -915
                  bgeu         a1, t0, 278f
272:              blt          s0, tp, 279f
273:              beq          s7, t3, 285f
                  or           gp, a6, ra
                  or           s8, s2, s9
                  nop
                  srai         s2, s6, 27
278:              nop
279:              add          ra, t4, t0
280:              srl          t3, ra, s8
                  sltu         s1, s8, s4
                  slli         zero, a0, 30
                  bgeu         t1, t5, 285f
                  xor          t3, zero, a4
285:              or           a1, gp, a2
                  lw           s11, 4(s0)
                  srai         s7, s7, 9
                  sra          a2, sp, t5
                  addi         s0, s0, 36
                  slli         a2, s6, 29
469:              addi x10, x27, 0
469:              jalr x10, x10, 0
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
.word 0x421851af, 0x96c20a02, 0x7721c348, 0x7ea4ba0c, 0xde49ab28, 0x1b4948bc, 0x3e749e52, 0xc3f9bfa0
.word 0x6d5e57e8, 0x33782c4c, 0xe5a474d0, 0x77cc1530, 0xd70efcc6, 0x51870c6d, 0x36d8bcfd, 0x342ce8a3
.word 0x07b2fa37, 0x08100ded, 0x8feb8afe, 0xfb25ac2d, 0x674bed58, 0xe1200ffc, 0x0d8ecad1, 0x65647bd0
.word 0xa659f48e, 0x76e97562, 0xc86104fd, 0x5c9e39ef, 0x686201a1, 0x0ddca9b6, 0x7269e1d6, 0x2763ec51
.word 0x139c0ba7, 0x3a530e80, 0x4de3f416, 0x698bb113, 0x7d08cdf6, 0xb6b3ee3e, 0xc16bd7a0, 0x48d93277
.word 0xc7153064, 0x05356562, 0x213126ef, 0xd5904464, 0xc5d5e99d, 0x89cbb099, 0x62edbc43, 0xb6236898
.word 0x2ae07f3c, 0xcf339db9, 0x67221343, 0x1b80c2c9, 0xbde023b6, 0x3a258c4b, 0xaa9da613, 0xd41b1852
.word 0x2ac779e9, 0xd7d4fbae, 0x2cbb9caf, 0xa3734e6c, 0xa2719b7f, 0xaf9a434f, 0x552f1925, 0xc9fe2ee9
.word 0xa1df9dcc, 0xcd38ac87, 0xea041c7e, 0x56f94fa3, 0xac9afd0c, 0x8076cea0, 0x67ca5333, 0x2b9ed3b3
.word 0xe0fa61d6, 0xdfc2fb9b, 0x7a9144cf, 0xcd0d0333, 0xdc824e84, 0x0979d9bc, 0xe01baf2d, 0xe6209276
.word 0xa55fc012, 0xfec99841, 0x17fe6d0a, 0xf199cb21, 0x0607be5f, 0x982e7280, 0x6c87cc09, 0x581ec378
.word 0xcc2a429e, 0x878f4fc7, 0x1a96c3f8, 0xcf6ce345, 0x74d07ba3, 0x1c507fb6, 0xf62fcd41, 0xbe075d09
.word 0xc8ba14ce, 0x6efdfd31, 0x19541020, 0x6af1e897, 0x8fd46cda, 0xfb40d734, 0x6600a070, 0x0958747d
.word 0x1a5ab117, 0x47431899, 0x2643db34, 0xd2d3dde5, 0x11809e01, 0x1dd31598, 0xbec54be2, 0xa216752d
.word 0x39d5ca04, 0x85bb4643, 0xd5c946ec, 0x628217a1, 0x0f2927f4, 0xe484fa25, 0x6d098a07, 0x5a4c32a8
.word 0x364d3162, 0x1f5d7888, 0xcef01cba, 0x8a3165d9, 0xb30f0362, 0x95e78f95, 0x1a82bb84, 0xda9624f0
.word 0x6519e939, 0x167e34b3, 0xc3761a1f, 0x3630116a, 0xce002e0a, 0xfcc273c3, 0xf1d393a4, 0xf36fdd66
.word 0x9791daf0, 0xa98bcc93, 0x7a77fc65, 0xaf97b4b3, 0x9e066d61, 0x4e5c5716, 0x40833649, 0x338fe4ff
.word 0xb2ebc5ca, 0xfc51cbcb, 0xab3eddf6, 0x76c46ab3, 0x56b3947c, 0x3a0cec7e, 0x3255be1a, 0x81cc0645
.word 0x3035a675, 0x295a8145, 0xcec5468b, 0xcd7e592e, 0x3191939a, 0x174a8868, 0xed613c66, 0x4fac8a42
.word 0xaf9eac3a, 0x07efe5fe, 0xf5e74a5d, 0x2baca1ba, 0x84cf3d01, 0x8e1160a0, 0x16c35cdc, 0xe0519a15
.word 0x45762b9e, 0x20585e21, 0x72e5ce0c, 0xefa8612a, 0x8d92e9fa, 0xb1f430d2, 0x24cddcb6, 0x3b90a9b6
.word 0x192097db, 0x403e7129, 0x18b385ac, 0x051d09a4, 0xcdb1bdc9, 0x3f3866d0, 0x0ac58f57, 0x6c7b5940
.word 0xd129bf18, 0x7620bd38, 0x66127ea4, 0x26aa8ecb, 0xdbd186d4, 0x5d11cb42, 0xecc7f76b, 0x6cf39675
.word 0x9fa5155c, 0x6e5d58b8, 0x1195b9b6, 0x777d3cd0, 0xb436a48d, 0xc19e001d, 0x57d03772, 0x8b911402
.word 0x0385fed9, 0x6e2ba9c0, 0x22f1083b, 0xc2bc43af, 0x65305fe2, 0xdc27c8aa, 0xf83bb6ff, 0xac1ca9e6
.word 0xa39c1a2b, 0x243fc128, 0x5ef8d05d, 0x46fb2ebf, 0x1d00ba49, 0x8357e794, 0x61ae5521, 0x32768a0b
.word 0x07fc8b44, 0xcac33c79, 0x714abb37, 0x3fb86ae0, 0x4dc394a9, 0xd67b3e40, 0x8b526170, 0xb87c3631
.word 0x995911c6, 0xdd968aa3, 0xaf413bc1, 0x593203f7, 0x630e8a6a, 0x5a9fa1f5, 0x4dd58228, 0x3ff46233
.word 0x5763ad4e, 0x661f2f20, 0x4a4e81ec, 0xf7e119ab, 0xf7760c09, 0x6b50b18e, 0xbbba3f63, 0x401bae85
.word 0x567f74ce, 0xb51a8122, 0x0522e9b6, 0x88cc90be, 0x2c2ba116, 0x6ea94603, 0x5316ec55, 0x15deacdc
.word 0x502cb983, 0x5eca27b9, 0xd0bb7b87, 0x848d59e3, 0x353a94ba, 0xec018cdb, 0x8397a250, 0xd711708f
.word 0xf1f4ad5e, 0x7fd9f259, 0xe0a79566, 0xd46261ad, 0x6f9f51a4, 0x83506cf1, 0x21de9d75, 0x097deb96
.word 0xf9520a61, 0x357abef8, 0x873569d6, 0x8981c92f, 0xd760834d, 0x5b438fcb, 0xe72294af, 0xd43288e8
.word 0x8e8b030c, 0xebaf1a80, 0xe6ab5fa9, 0x791a8894, 0xa9a63f04, 0xe03cbf58, 0xd3c03664, 0x2e2faa50
.word 0xd4da28ba, 0xed9e2fc8, 0x5bc4d562, 0x309ddb90, 0x4f4ba18f, 0xebcceb32, 0x84bdc55c, 0x7b7ddb24
.word 0xffb3e32a, 0xf3f7274e, 0x6fa10376, 0x4bf6d6f5, 0xc7e7b473, 0x6a51914b, 0x437b25fa, 0x0d8bbebd
.word 0x928a803e, 0xafb3dab7, 0xd3307197, 0x5f524db4, 0x17ffa2f3, 0x438a9f33, 0xe3e5e730, 0x9f98a285
.word 0x77518340, 0x51004dcd, 0x8484cd34, 0x03ed73b5, 0x453535b0, 0xe1666648, 0xb1cf855a, 0x32122af4
.word 0x4fc10f09, 0x248ab69c, 0x6dc7d751, 0x6c3a8e84, 0xe27fe898, 0x13a67ca0, 0x5066a141, 0x3b3888d0
.word 0x8d84656a, 0xe2b5de66, 0x79195c40, 0xf6279914, 0x1046bb8b, 0x8d9076f2, 0xa6dddf15, 0x80cf334c
.word 0x9e99c2c6, 0x3845c5d4, 0xa6fd8b0b, 0xf3d475d3, 0xfbd4fc1c, 0xf2a42d9d, 0x6de09a5f, 0x9c5a00e5
.word 0x459da2c1, 0xedee9c0a, 0x0e637fd2, 0x1fb11846, 0x62a7c65f, 0xf270ad27, 0x56f145cb, 0x636621dc
.word 0xb22f1332, 0xb78925c4, 0x4c4179de, 0x8755d942, 0x2a783a56, 0x93f336e9, 0x6a2a2c6e, 0x8f174747
.word 0xebfa4a60, 0xc6f6aca7, 0x4a2c750b, 0xf28c8c6a, 0xce25c616, 0x6d486f9a, 0xfbf63ef7, 0xb7865076
.word 0x99bca830, 0x9a19bde1, 0x70a3ce65, 0x98cfcb72, 0xddc5cfae, 0x263d3e62, 0x89b2597a, 0x5eeb23bd
.word 0xfcf03813, 0x3b99a15a, 0xd55f044b, 0x7d8d7975, 0x65dedd21, 0xd57dcf11, 0xd8e9d8ed, 0x4b3994b9
.word 0x77bf5895, 0xf0516ff2, 0xc8674274, 0x0c06b7ef, 0x5c3e2f13, 0xb34bf880, 0x7439cdfc, 0x0a5b2648
.word 0x093a9223, 0xb6e8432f, 0x42345808, 0x9f152c4a, 0x613cd452, 0xd202b42a, 0xbb1267c7, 0x03965675
.word 0x7cd04d60, 0x779ad4f1, 0xd6424245, 0x2f1253c0, 0x1b95ac3f, 0x5b4bcc30, 0xed889166, 0xbd37202b
.word 0x8cfbc5fe, 0x9171ea6f, 0xfbf63c86, 0x1078f5c7, 0xffe9e0d4, 0x1289674e, 0x91e0a595, 0x5a306bf7
.word 0x2f91558d, 0x45575e28, 0x6d1efb54, 0xd9bfb34b, 0xe584fbae, 0x6ed75df8, 0xaf49fddd, 0x4740898e
.word 0xdc53c53a, 0x0a0f78b7, 0x1c06caff, 0xb206260e, 0x63bea5ff, 0x2b4bf3e5, 0x6c476222, 0xa5b54d60
.word 0x13ff15fd, 0x46f8d807, 0xda7a3022, 0x38bb4b1d, 0x8b7ee9eb, 0xf212c11e, 0xf6c75b6e, 0xfc82879e
.word 0xd513e6c1, 0x835b5b9d, 0xa86d4806, 0x896cebaa, 0x606a5fa3, 0x61684c1c, 0x68a080d0, 0x4771ba5a
.word 0x1de85bbc, 0xa0c1ddd6, 0xa652365d, 0xed22cd02, 0xc379365a, 0x505f099b, 0xbfa11291, 0x3bcf21a8
.word 0xfa64d47b, 0xac39c7e4, 0x08f955a7, 0x7f9deb67, 0xc7afb67b, 0x09de2683, 0x3c4a5c2e, 0x4f6e5cac
.word 0x8300a01b, 0xb0a78736, 0x1d035509, 0x51fd0f5e, 0x32651be3, 0x01befe01, 0xb128cfe9, 0x1610e78c
.word 0x517fb9bb, 0x714279b8, 0x75603432, 0x3c53a887, 0xeaa298a5, 0x644aa5d0, 0x8e14f1d8, 0x0072ff8b
.word 0xdfd7f245, 0xcfd5ca09, 0xc3266c91, 0x6ce07c90, 0xe31c6937, 0x505ef2be, 0x121f758c, 0x9e0fc78b
.word 0x5738212f, 0x2ecd9b16, 0xd9b649e0, 0x9bc1eb6a, 0xf50659ab, 0x5d5bd39b, 0xf941ba96, 0xaaf65057
.word 0x561386c7, 0xc032dcd9, 0x18e1470c, 0xf5fcc567, 0x4d5e8aba, 0x40655817, 0xba2468c6, 0x33398c49
.word 0x27048b1f, 0x2ab54f36, 0x826926bc, 0x0547457b
.section .region_1,"aw",@progbits;
region_1:
.word 0xfd524a4e, 0x684bcebe, 0xaec0865f, 0x1c746d3c, 0x5af8cd72, 0x0bd5ff05, 0x86e33136, 0x022b355e
.word 0x20a16762, 0x6241359c, 0x94218411, 0x45881fae, 0x57a1d60a, 0xd475d4bd, 0xab2d45a6, 0x26dc1fcc
.word 0x0f3e9386, 0xda028d6a, 0xc532116d, 0xb18d8f2a, 0x8704c84b, 0x54a5a1d2, 0x37d9cf12, 0x1695424d
.word 0xe47cbab0, 0x211824a6, 0x24c6dd93, 0xbcf39aee, 0xcdbcc812, 0xe18a9a20, 0xf7c54781, 0x295a9307
.word 0x111481e8, 0x658a3b08, 0x487a9555, 0x8ce5ec24, 0x4b28b7d6, 0xad8e531c, 0x034bf7cc, 0xc3a9c630
.word 0x10ce14af, 0xc38f7cb5, 0x16c137be, 0x0848e913, 0x51bdf32e, 0x7f502574, 0x7985a2b3, 0xc216949e
.word 0xb8ae78f3, 0x47e78d22, 0x41f88c3d, 0x03dea432, 0xeeb3866a, 0x8cd28ba0, 0x94addab7, 0x6bd37929
.word 0x2e95ee59, 0xed01af69, 0xbd8448f9, 0xa3d61e24, 0xa79643b5, 0x87e01e1a, 0xfda6f43e, 0x9288b566
.word 0x8c5f5b25, 0xc31aa1e5, 0x1bcd67cf, 0xf6e64a32, 0xe8f77595, 0x2e372958, 0x1d34ba88, 0x2c0a25d6
.word 0x98ba75df, 0x5bbbe600, 0xcfb3cb39, 0x5406b352, 0xf0350eac, 0x4ad35457, 0x179b187c, 0x621400cc
.word 0x6603d451, 0x9e7cb40a, 0x0d158d5e, 0x4ff1b44d, 0x52b6bafd, 0xe4525a3d, 0xfe3cac31, 0x78b64645
.word 0x252b447d, 0x3dd2cb9e, 0xe7203b0d, 0x2371601b, 0x47a1f5c4, 0xfb63d39c, 0x3f59fee6, 0x7ba1e1db
.word 0x9ab23514, 0xcd729c29, 0x2ac7e118, 0x0b98ac21, 0xd92f4f01, 0x4b3fe122, 0x1b5ee2b5, 0xe4d109ed
.word 0x0c7d59d4, 0xa7a61e63, 0x0a6cc48d, 0xe6fcb056, 0x24e9cf85, 0x42baf735, 0xe9e08134, 0xe48ec61d
.word 0x6c596c24, 0x3a077797, 0x5857ff1d, 0x478c2f6a, 0x35b580bb, 0xce4e4efa, 0x0f6dbfd7, 0xf9da64b9
.word 0x9fa53129, 0x6ab91732, 0x16f940b2, 0x480e0a99, 0x3ecc7079, 0x957cff32, 0x468b00a5, 0x3c60eb6a
.word 0xa59986d3, 0xcc755588, 0xa313f6a7, 0x1bb105b2, 0xf320bd20, 0xbe98f09d, 0xe16799f2, 0x026f8430
.word 0xb1c578c1, 0x8fed12ec, 0xea65ef50, 0xe9138c19, 0xa9971361, 0xec9787ab, 0xb6eb8b13, 0x01b3de61
.word 0x469eb10e, 0xe13a3836, 0x27e8cfed, 0xf02bfc30, 0xc7f64e79, 0x5dbd774a, 0xf2bff812, 0x443bc800
.word 0x59a95f02, 0xf246a383, 0x92ca9a6c, 0x7692c22d, 0x4a459afc, 0x675a1dd8, 0xaedff35a, 0xbe30188e
.word 0xc4ecfa99, 0x103e1afd, 0x52455085, 0xc2820157, 0xbfba7bff, 0x83e4f29a, 0x4187105b, 0x71eb58c6
.word 0x32cdf300, 0xd89f0b05, 0x0224cfa7, 0x4b91b177, 0x1c89eae0, 0x176cbddc, 0xef2cb878, 0xee334a11
.word 0x87f881a8, 0xcf694a41, 0x98e789f9, 0xf7d9d4c2, 0x30835b5b, 0x3d2bdc48, 0x16689fa2, 0xd086f8bf
.word 0x46f27fca, 0x56f0cffb, 0xbcd85773, 0xfc6ad054, 0xaba25125, 0x6ffd56d7, 0x1b16c4a2, 0x18fdaaca
.word 0xdd145c34, 0x0c5748d8, 0x60ca34ab, 0xe1369e89, 0x7671413c, 0x7c0a6611, 0xcd62e77d, 0x9aa06877
.word 0xf3dfa075, 0x3621a279, 0xadde0e0a, 0xdab8758f, 0xe1546aca, 0x5cb82e05, 0x44ff0eea, 0x86e7c9a1
.word 0x07c603c5, 0x73c59771, 0x25dcb23d, 0xf667d486, 0x7927c114, 0x4f779cc1, 0xab35ee5c, 0xae46fb2d
.word 0x5dd45ebc, 0x1dcc1570, 0x21665877, 0x0e478ca9, 0x8e777a9e, 0xdb9a29f6, 0x843f06dc, 0x331cd398
.word 0xa214cc0f, 0xf52cec88, 0xdd4ffe3e, 0x947e9f83, 0x692068d6, 0xd9b5278e, 0xd484751b, 0x2ca92dc1
.word 0x72662903, 0x7e80354b, 0x799d3330, 0xb0971f85, 0x79b26283, 0xf321fa0f, 0xa3536b4b, 0x2161d144
.word 0xe45d75a2, 0x719d73dd, 0x39c0b69c, 0x1ccca687, 0x6259501a, 0x7f8919bf, 0x06248d5b, 0x143ae4cb
.word 0xa072e676, 0x13932b84, 0x8124136d, 0x4c72a69f, 0xb34ea4bd, 0x0e86ec5c, 0xfacdde25, 0x07a5cada
.word 0xc14f8570, 0x92986c88, 0xc70bc16e, 0x8d5b5b4a, 0xcce10ffd, 0xcba2d951, 0xf27c9ef8, 0x4be016ff
.word 0xbcae7f3d, 0xc3f91f7f, 0xbe673515, 0x21cf86be, 0x24597f69, 0x7b58ede8, 0x9ee527d3, 0xd458233e
.word 0x437bbacc, 0x6d8ca8b6, 0x14596efe, 0x42524251, 0x056a67f7, 0x2851e174, 0x59d41b50, 0xc954262e
.word 0x985f0466, 0xb1eddff9, 0x2d763474, 0x49494c5f, 0xb521665e, 0x0f5a0d75, 0x8dc63402, 0x9f0f7cee
.word 0x850c7067, 0x85e6cf7e, 0x186b913d, 0x45f2a497, 0x12506a8f, 0xd0a74ddc, 0x0e4f73ee, 0x09b5c7bc
.word 0x6b6b9f91, 0x5e8a86f5, 0x20f698c5, 0x4badf980, 0x1b121cda, 0xdeeeff68, 0xa26d04af, 0x78e06525
.word 0x10ff9829, 0x86723068, 0x4446fda3, 0xc632d6eb, 0x4bb69c7b, 0xd8373bb2, 0xeaaaca3f, 0x257744a9
.word 0x2fcf0da8, 0x0110c02e, 0xe9a816d7, 0x9567461b, 0x450aace6, 0xc9885ad1, 0x57c5906c, 0x2cac5997
.word 0x20f2ad02, 0x32b50fdc, 0x596f6e1d, 0x36a33601, 0x8fa6ef9e, 0xb5d1a009, 0x2d714e6f, 0xf2a8ba36
.word 0x33b98409, 0x59b7d3e8, 0xa13964b6, 0xa1a1ba54, 0x6531b6cf, 0x661bec6a, 0x2ddb358d, 0x9d17ac5d
.word 0x8f1de911, 0xddee95d9, 0x807a0468, 0x79f7730c, 0xd8e474ce, 0x3389e72b, 0x3c4b58fa, 0xed7c3dee
.word 0xd748e472, 0x67aff4a7, 0xd62c77fb, 0x196eaf29, 0x9650296c, 0xc187e746, 0x64afe6a3, 0x9baeeda2
.word 0x898d6010, 0x1b583ca8, 0x1ec5688b, 0xc2411da2, 0x3b7b7197, 0xb00547ee, 0x5f9a7b57, 0x12313bd6
.word 0xe091f144, 0x2eba8487, 0x5cbccbdd, 0x83de4385, 0x9ce31cbd, 0xb3446676, 0xa747381a, 0x1107f36f
.word 0x8d3ff0fc, 0x05cbcd02, 0x3b3ac76b, 0x347e356c, 0x3dddc4e3, 0x0b872cb9, 0x76e567cd, 0x6f32b64f
.word 0xc43521d7, 0xe9b70aea, 0x48cb53cf, 0x0a253a7e, 0x83eecade, 0x82cd356c, 0xf7c60e07, 0xd09a859d
.word 0x0a8c1a7c, 0x2f5687e9, 0x85711f62, 0xe484e9ba, 0xa107fb2f, 0xc369bc68, 0x5630fcdf, 0x327f5298
.word 0xf1ca8125, 0xfd7cba9f, 0x473ae5da, 0xe9047238, 0x6fee96ec, 0x826b5af4, 0xe40b8198, 0x462b0514
.word 0x32d200b0, 0x78a16199, 0x2c29fee8, 0x259627d1, 0xed7d52e4, 0x96a83812, 0x93b28bc0, 0x51f29bfa
.word 0x16f50e25, 0xab71adf4, 0x75abecc2, 0x1c9d94bb, 0x3fe928e1, 0x257f8f5f, 0xec394743, 0x4f2ae6ec
.word 0xfec74531, 0x4adf9a94, 0xf3f0e541, 0x8a63c35e, 0xd002c3a8, 0x63f4e814, 0x0165dc39, 0x85206314
.word 0x82fd7302, 0xb67827d7, 0x8b5487b1, 0x4fb8f2b9, 0xaf31ed80, 0xe394109c, 0x8e17bf01, 0x719178a1
.word 0x82a03376, 0x988e890a, 0x8fc17686, 0x1e580874, 0xa8963929, 0x1913c3b8, 0x865e9921, 0x2d21df87
.word 0xf8abce66, 0xec8cfbb1, 0xb7157956, 0xf668055c, 0x533e65e5, 0x0e95d883, 0xe275d455, 0x0e306a10
.word 0x12cbce4e, 0x5993863b, 0xc793fd60, 0x7ab56fea, 0xe88bbeaf, 0x86827dd4, 0xb6b7269f, 0x842369d2
.word 0xeede2e99, 0x2c7dd90a, 0xf9cf86ca, 0xade4bd70, 0xda344a74, 0x597a2fbd, 0x15d41c69, 0x9e524a6b
.word 0x900401cf, 0xc3e056ca, 0xa6bd861a, 0x637795af, 0xdf8c9401, 0x09f5a43b, 0x5af4707b, 0xa0933251
.word 0x3735aefa, 0x35dde503, 0xdf227efa, 0x44b4b0c8, 0x83648474, 0x4c28eba8, 0x73c0e1df, 0x5d8d3641
.word 0x58d05fb2, 0x51a4caaf, 0x090a5498, 0xaca71129, 0xf56bc3ce, 0x95a6c70f, 0xdf14cf3c, 0x9fc2017d
.word 0x2bc63f35, 0x5cea4f1f, 0x44a275b6, 0x982c6474, 0x07c8e5e8, 0x98c1fdbf, 0xe7d7263f, 0x76b06f58
.word 0xe4a813fa, 0x773f9192, 0x2ccb081e, 0xab700928
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
                  add x19, x8, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x10, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x10, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x10, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x10, x5, ecall_handler
                  li x5, 0x1
                  beq x10, x5, instr_fault_handler
                  li x5, 0x5
                  beq x10, x5, load_fault_handler
                  li x5, 0x7
                  beq x10, x5, store_fault_handler
                  li x5, 0xc
                  beq x10, x5, pt_fault_handler
                  li x5, 0xd
                  beq x10, x5, pt_fault_handler
                  li x5, 0xf
                  beq x10, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

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
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x8, x19, zero
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
                  add x8, x19, zero
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
                  add x8, x19, zero
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
                  add x8, x19, zero
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
                  add x8, x19, zero
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
                  add x8, x19, zero
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
