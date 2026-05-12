.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x4
                  li x3, 0x0
                  li x4, 0xfccee0b8
                  li x5, 0xfccf1567
                  li x6, 0x0
                  li x7, 0xfb0d42ea
                  li x8, 0x3239dbc5
                  li x9, 0x5
                  li x10, 0xf65c236f
                  li x11, 0xfd16024e
                  li x12, 0x4
                  li x13, 0xc
                  li x14, 0xf9b94617
                  li x15, 0x80000000
                  li x17, 0xf2748366
                  li x18, 0x5d827ef7
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xfd458e1b
                  li x23, 0x22515232
                  li x24, 0x3e8cd0e9
                  li x25, 0x4b8baca0
                  li x26, 0x0
                  li x27, 0xf26eecc3
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xf44a2f00
                  li x31, 0x6031f307
                  la x19, user_stack_end
main:             la           s1, region_0+1717 #start load_store_instr_stream_3
                  la           a0, region_0+1099 #start load_store_instr_stream_2
                  la           s0, region_0+1936 #start load_store_instr_stream_4
                  la           t2, region_0+801 #start load_store_instr_stream_1
                  lbu          s11, -9(s0)
                  sb           s3, -13(t2)
                  lbu          t4, -48(a0)
                  sh           t0, -9(s1)
                  la           s2, region_0+505 #start load_store_instr_stream_0
                  lb           s8, 2(a0)
                  sb           s4, 16(s1)
                  sb           t4, 7(s1)
                  lhu          s9, -25(a0)
                  sh           s11, -828(s0)
                  lb           a1, 56(a0)
                  lb           t6, 2(t2)
                  lb           s8, -14(s1)
                  lh           t1, -11(s2)
                  lbu          s11, 10(s2)
                  lb           s7, -998(s0)
                  lh           tp, 63(a0)
                  lhu          t1, -1(t2)
                  lb           s7, 10(s1)
                  sh           t1, 27(a0)
                  lb           a4, -47(a0)
                  lb           ra, 8(s1)
                  sh           a7, 9(s2)
                  sh           t0, -15(s1)
                  lbu          t4, 4(s2)
                  lbu          t1, -1141(s0)
                  lhu          s4, 5(t2)
                  lb           s6, 5(s2)
                  lb           sp, 32(a0)
                  sb           s6, -1425(s0)
                  sw           a5, -1(t2)
                  sh           s0, -7(s2)
                  lbu          a4, -8(s2)
                  lh           tp, 31(a0) #end load_store_instr_stream_2
                  sb           t4, 11(s1)
                  lbu          a3, -10(s1) #end load_store_instr_stream_3
                  lw           t4, -268(s0) #end load_store_instr_stream_4
                  lhu          a5, -7(t2) #end load_store_instr_stream_1
                  sb           zero, -11(s2)
                  lbu          zero, 2(s2) #end load_store_instr_stream_0
                  la           t0, region_0+1551 #start riscv_load_store_hazard_instr_stream_0
                  sb           ra, -648(t0)
                  auipc        a1, 934209
                  lbu          s2, -648(t0)
                  sb           t1, -648(t0)
                  lb           t1, -648(t0)
                  sb           s2, -648(t0)
                  lbu          s7, -648(t0)
                  sb           gp, -648(t0)
                  xor          a0, a5, t2
                  lb           a4, -648(t0)
                  lbu          gp, -648(t0)
                  add          s1, a3, t1
                  and          s8, t1, s9
                  sb           s11, -648(t0)
                  add          t6, a5, s1
                  sb           s6, -648(t0)
                  lbu          a3, -648(t0) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_0+1054 #start load_store_instr_stream_1
                  la           s2, region_0+1525 #start load_store_instr_stream_3
                  la           t1, region_0+242 #start load_store_instr_stream_2
                  lb           s9, 197(s2)
                  lh           s1, 13(s2)
                  la           gp, region_0+190 #start load_store_instr_stream_0
                  lb           s1, 29(t1)
                  lb           a2, 14(gp)
                  sb           t2, -21(s8)
                  lbu          t2, -6(s2)
                  lbu          t6, 44(s8)
                  sb           s4, -52(s2)
                  sh           sp, 36(s8)
                  sb           zero, 12(s2)
                  sb           t0, -35(gp)
                  lbu          t3, -210(s2)
                  lb           zero, 4(t1)
                  sb           s5, -12(gp)
                  sh           a0, 16(t1)
                  sb           tp, -27(gp)
                  lb           ra, 7(t1)
                  lb           s0, 171(s2)
                  lb           a5, 63(s8)
                  lbu          a2, -5(t1)
                  sw           s10, -33(s2)
                  lb           t6, 15(t1)
                  sb           s7, -247(s2)
                  lbu          a7, 3(s8)
                  lbu          t2, 60(s8)
                  lh           t4, -159(s2) #end load_store_instr_stream_3
                  sh           ra, 22(t1)
                  sb           s5, 21(gp)
                  lh           tp, 36(t1)
                  sb           a6, 28(s8) #end load_store_instr_stream_1
                  lbu          s7, 10(t1) #end load_store_instr_stream_2
                  lbu          zero, -7(gp)
                  lbu          s0, -62(gp) #end load_store_instr_stream_0
                  la           s11, region_1+1687 #start riscv_load_store_rand_instr_stream_2
                  andi         t1, s6, -854
                  andi         a0, t0, -2005
                  sb           a5, 210(s11)
                  sh           ra, -111(s11)
                  slt          s7, s11, a6
                  lb           t3, 19(s11)
                  andi         t6, a6, 1005
                  sll          s9, t5, ra
                  xor          s10, s2, ra
                  lb           a3, -1(s11)
                  lb           t3, -224(s11)
                  lb           s10, -5(s11)
                  andi         s4, s2, -306
                  sub          s4, a6, sp
                  lb           a3, 18(s11)
                  sra          a0, s9, gp
                  sub          s4, t6, sp
                  andi         a2, a5, -180
                  sltu         s10, t4, t4
                  sb           a7, 24(s11)
                  auipc        a1, 919879
                  sb           t3, 11(s11)
                  lui          t3, 681564
                  addi         t6, s10, 126
                  ori          t3, a6, 1267
                  auipc        a5, 815789
                  add          s5, tp, a1
                  sltiu        zero, t4, 198
                  slti         a1, t0, -1724
                  andi         a3, s5, -1923
                  lbu          s6, -216(s11)
                  addi         s4, s4, 1559
                  lhu          s2, -159(s11)
                  or           s1, t5, a0
                  sltu         s9, s2, t3
                  lh           s9, 9(s11)
                  xori         t4, zero, -1573
                  xori         sp, a2, -217
                  add          tp, s6, s3
                  lbu          sp, -216(s11)
                  lbu          s8, -36(s11) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+194 #start riscv_load_store_rand_instr_stream_1
                  sltiu        a4, s4, 552
                  sb           a7, 17(t1)
                  lh           a1, -18(t1)
                  lb           s2, 49(t1)
                  lhu          s2, -28(t1)
                  slti         s9, s8, -1485
                  lhu          a3, -12(t1)
                  lbu          s1, -15(t1)
                  lb           a0, 37(t1)
                  sb           s4, -5(t1)
                  lb           a5, 27(t1)
                  lh           s8, -38(t1)
                  lbu          a7, 5(t1)
                  lb           tp, 50(t1)
                  ori          s9, a1, 1078
                  lb           a1, -12(t1)
                  lb           s0, 21(t1)
                  srai         zero, s0, 20
                  sb           s5, -36(t1)
                  lhu          sp, -22(t1)
                  xori         a4, zero, 830
                  lw           s0, -10(t1)
                  lb           s11, -61(t1)
                  lb           tp, 59(t1)
                  slli         s1, s5, 9
                  lhu          a4, -48(t1)
                  andi         a3, s11, 769
                  auipc        a1, 753743
                  sh           s2, 24(t1)
                  sb           a1, 14(t1)
                  sb           s11, 61(t1)
                  lb           s9, -35(t1)
                  ori          s8, a0, 1038
                  addi         t2, s5, 463
                  xor          gp, a1, sp
                  lbu          s6, 22(t1)
                  lbu          zero, 44(t1)
                  lh           s5, 2(t1)
                  lb           zero, 7(t1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+912 #start riscv_load_store_hazard_instr_stream_1
                  sb           t2, 0(sp)
                  lh           gp, 0(sp)
                  sb           s10, 0(sp)
                  sb           a4, 0(sp)
                  sh           t4, 0(sp)
                  lw           zero, 0(sp)
                  lb           a5, 0(sp)
                  sh           s6, 0(sp)
                  lb           t2, 0(sp)
                  srl          zero, s11, s10
                  auipc        a1, 508033
                  sh           ra, 0(sp)
                  lbu          t1, 0(sp)
                  lh           a3, 0(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a1, region_0+769 #start riscv_load_store_hazard_instr_stream_2
                  sh           s1, -227(a1)
                  lb           s0, 46(a1)
                  lb           s8, 45(a1)
                  lb           s1, 45(a1)
                  lbu          s9, -32(a1)
                  lbu          tp, -32(a1)
                  addi         a7, a0, -435
                  lhu          s2, 121(a1)
                  lb           s11, 80(a1)
                  lbu          s2, -213(a1)
                  sw           s0, -213(a1)
                  lbu          s2, -213(a1)
                  sb           t0, 91(a1)
                  lbu          a2, -200(a1) #end riscv_load_store_hazard_instr_stream_2
                  la           a1, region_0+540 #start load_store_instr_stream_2
                  la           t2, region_0+184 #start load_store_instr_stream_4
                  la           s0, region_0+60 #start load_store_instr_stream_1
                  lbu          s4, -14(t2)
                  la           s1, region_0+1508 #start load_store_instr_stream_3
                  la           a5, region_0+1267 #start load_store_instr_stream_0
                  lw           t0, -132(a1)
                  lbu          t0, -46(a5)
                  sw           s1, 8(a1)
                  lb           a0, 255(s0)
                  lhu          ra, 14(t2)
                  lhu          zero, -183(a5)
                  sh           s1, 24(s0)
                  lbu          s10, 240(a5)
                  sb           a1, -4(t2)
                  lhu          ra, 6(t2)
                  sw           t3, 92(s0)
                  sb           s6, -698(s1)
                  lb           gp, 225(s0)
                  lb           s4, 150(s0)
                  sb           t6, 100(a1)
                  sh           a6, 11(a5)
                  lbu          a7, 67(s0)
                  lhu          a0, -22(a1)
                  lh           t6, 149(a5)
                  lbu          s7, 7(t2)
                  sb           t5, 3(t2)
                  lh           t3, 58(s0)
                  sh           a5, -224(a1)
                  sb           a7, 13(s1)
                  lh           s9, 192(a1) #end load_store_instr_stream_2
                  sb           t4, 244(a5)
                  lbu          gp, -6(a5)
                  sb           s3, -295(s1)
                  lh           a4, -48(s0) #end load_store_instr_stream_1
                  sw           a2, 8(t2)
                  sb           t3, 225(s1)
                  sb           t6, 228(s1) #end load_store_instr_stream_3
                  sb           s3, -1(t2) #end load_store_instr_stream_4
                  sb           a6, 66(a5)
                  lh           t6, -177(a5) #end load_store_instr_stream_0
                  la           t3, region_0+5 #start load_store_instr_stream_1
                  la           ra, region_0+1954 #start load_store_instr_stream_2
                  lbu          t6, 12(t3)
                  lbu          s11, 9(t3)
                  la           a5, region_0+1566 #start load_store_instr_stream_0
                  sb           a1, -277(ra)
                  lbu          t6, 0(t3)
                  sb           ra, -1(ra)
                  lbu          gp, -119(ra)
                  lbu          s1, 6(a5)
                  sb           tp, -645(ra)
                  lbu          a1, 12(t3)
                  lb           a7, 6(t3)
                  lb           s0, -1283(ra)
                  lb           t0, -5(a5)
                  lbu          s5, -377(ra)
                  lbu          s0, -476(ra) #end load_store_instr_stream_2
                  lbu          s4, -15(a5)
                  lh           t1, 9(t3)
                  lb           s11, 7(a5)
                  sb           a0, -2(t3) #end load_store_instr_stream_1
                  sw           s10, -6(a5) #end load_store_instr_stream_0
                  la           sp, region_1+829 #start riscv_load_store_rand_instr_stream_3
                  sra          ra, s2, s3
                  sub          a2, t0, s3
                  lbu          t0, 4(sp)
                  sb           sp, 10(sp)
                  lbu          a0, 1(sp)
                  srli         gp, a1, 24
                  lw           t2, -13(sp)
                  ori          tp, t2, 1531
                  slt          ra, a2, t0
                  lbu          t4, 12(sp)
                  sltu         s11, tp, sp
                  lhu          zero, 11(sp)
                  lb           a3, -4(sp)
                  sb           a1, -4(sp)
                  andi         a3, t1, 505
                  lb           gp, 0(sp)
                  andi         t6, s3, 775
                  lb           t2, -14(sp)
                  slti         s10, a7, -579
                  sh           tp, 3(sp)
                  andi         t0, a2, -986
                  srai         s8, ra, 16
                  add          s5, sp, s7
                  slli         s10, a6, 17
                  srai         zero, gp, 31
                  lui          t0, 617280
                  xor          a0, tp, t1
                  srl          t4, s10, sp
                  lbu          s7, -12(sp)
                  sub          tp, s8, t4
                  xor          t1, s1, s4
                  add          a1, s7, t0
                  auipc        s7, 220624
                  ori          zero, s3, 408
                  slli         a2, t1, 7
                  lh           t6, -7(sp)
                  sll          a2, sp, tp
                  slt          t3, a2, gp
                  lb           ra, -2(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_0+244 #start riscv_load_store_hazard_instr_stream_4
                  ori          s0, gp, -770
                  lbu          a0, 1675(a4)
                  slt          a2, t0, a3
                  lbu          t1, 1675(a4)
                  sb           s6, 1675(a4)
                  sb           s9, 1675(a4)
                  lb           s2, 1675(a4)
                  sb           a4, 1675(a4)
                  lb           s4, 1675(a4)
                  sb           gp, 28(a4)
                  lb           s6, 28(a4)
                  slt          s0, s11, s6
                  lbu          s6, 28(a4)
                  lhu          s7, 112(a4)
                  srai         gp, t6, 18
                  lb           a1, 112(a4)
                  lw           s9, 112(a4)
                  slli         t1, s11, 19
                  sb           a5, 112(a4)
                  lb           s11, 112(a4)
                  sb           t3, -9(a4) #end riscv_load_store_hazard_instr_stream_4
                  la           s9, region_0+802 #start riscv_load_store_rand_instr_stream_0
                  xori         a3, gp, -511
                  add          s4, s10, t5
                  lb           s5, -11(s9)
                  sb           a5, 10(s9)
                  andi         t4, t1, -1375
                  lbu          a1, 9(s9)
                  lbu          t2, 5(s9)
                  sb           zero, 9(s9)
                  sra          t2, a3, a4
                  slli         t6, t4, 30
                  addi         t0, s7, -1640
                  sltu         t3, a1, s8
                  and          a0, a4, s7
                  lbu          a2, 11(s9)
                  lhu          t6, -6(s9)
                  xori         s8, sp, 284
                  sb           s7, -9(s9)
                  and          t3, s1, tp
                  lb           a5, 1(s9)
                  xori         s2, s1, 841
                  slli         t4, t1, 29
                  xori         a4, sp, 579
                  sh           s1, 0(s9)
                  lbu          s2, -3(s9)
                  lbu          a3, 7(s9)
                  xori         t0, a4, -896
                  sltiu        t2, s5, 1716
                  lbu          s0, -10(s9)
                  lh           tp, 4(s9)
                  srli         ra, s3, 4
                  lh           s11, -4(s9)
                  lh           t0, 14(s9)
                  lbu          s1, 6(s9)
                  lui          s5, 551193
                  sb           s1, -15(s9)
                  sb           s10, -16(s9)
                  lbu          ra, -14(s9)
                  sltu         zero, sp, s9
                  lbu          a0, 16(s9)
                  and          a0, s5, s9
                  sra          s2, a3, s5
                  auipc        s7, 517143
                  nop
                  ori          s8, s3, 1092
                  slli         t3, sp, 29
                  addi         a1, a7, -883
                  or           t2, a1, s9
                  lbu          t0, 3(s9)
                  sh           s10, -8(s9)
                  auipc        t1, 14737
                  nop
                  lbu          a0, 1(s9)
                  sb           t1, 3(s9) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_0+202 #start riscv_load_store_hazard_instr_stream_3
                  lh           a4, 28(s0)
                  lb           gp, 28(s0)
                  lhu          t2, 28(s0)
                  lh           t0, 28(s0)
                  lh           s1, 28(s0)
                  lh           a3, 28(s0)
                  lb           a1, 28(s0)
                  lbu          tp, 28(s0)
                  lhu          t6, 28(s0)
                  lh           a2, 28(s0)
                  lh           t6, 28(s0)
                  slt          s5, s6, t3
                  lbu          s11, 28(s0)
                  lbu          a7, 28(s0)
                  sb           t0, 28(s0)
                  lb           a2, 28(s0) #end riscv_load_store_hazard_instr_stream_3
                  la           s0, region_1+489 #start load_store_instr_stream_1
                  la           s7, region_1+1146 #start load_store_instr_stream_0
                  lbu          t6, 557(s7)
                  sb           a1, 1184(s0)
                  sb           s11, -105(s0)
                  sb           s0, -743(s7)
                  lbu          zero, -723(s7)
                  lb           s11, 1202(s0)
                  sb           t0, 15(s7)
                  lbu          a1, 862(s0)
                  lbu          s11, -430(s0)
                  lb           a7, -127(s7)
                  lh           a2, -900(s7)
                  sb           tp, 718(s0)
                  lb           zero, -287(s7)
                  lb           s1, 758(s0)
                  lh           a7, 471(s0)
                  lb           zero, -442(s7)
                  lbu          s10, 634(s0) #end load_store_instr_stream_1
                  lb           s1, -221(s7)
                  lbu          s2, -153(s7) #end load_store_instr_stream_0
                  la           a4, region_0+436 #start riscv_load_store_rand_instr_stream_4
                  and          t2, s5, a1
                  srai         s4, t6, 29
                  lw           t4, -64(a4)
                  nop
                  sb           a6, -22(a4)
                  auipc        t0, 659719
                  lhu          s7, -6(a4)
                  sra          sp, a1, a6
                  lb           t1, -39(a4)
                  addi         a7, s8, -1277
                  nop
                  lbu          s8, -38(a4)
                  sb           s7, 25(a4)
                  sra          t2, gp, sp
                  sh           s0, -38(a4)
                  sb           sp, 14(a4)
                  lb           s6, 49(a4)
                  lbu          t0, -57(a4)
                  lbu          t2, -35(a4)
                  auipc        a3, 306246
                  lh           gp, 48(a4)
                  lh           s5, 10(a4)
                  slti         a5, tp, 638
                  lb           gp, -35(a4)
                  sw           s5, 12(a4)
                  add          s1, t1, ra
                  lb           t3, 37(a4)
                  sltiu        a7, t0, -1653
                  lw           s2, 40(a4)
                  nop
                  sh           t5, -42(a4)
                  lbu          a7, -14(a4)
                  sltu         s9, a0, a2
                  sltu         s9, a3, t0
                  sb           s0, 11(a4)
                  lb           gp, 60(a4)
                  sb           a3, -35(a4) #end riscv_load_store_rand_instr_stream_4
                  addi         a5, s6, -1207
                  add          s4, a1, s5
                  lui          a5, 693796
                  sub          s8, s7, s0
                  or           t1, tp, t4
                  sltu         a7, s1, ra
                  bgeu         gp, t0, 8f
                  sltu         s7, t1, s1
8:                slti         t3, t3, -1427
                  sll          ra, a2, a2
                  bne          a6, s2, 27f
                  addi         t4, zero, -1099
                  beq          a0, t5, 16f
                  xori         s10, a3, 299
                  srai         zero, a1, 8
                  slti         a0, s7, -207
16:               blt          a3, s10, 23f
                  beq          s5, s4, 20f
                  add          s7, ra, s1
                  srl          sp, a7, t2
20:               sub          gp, t3, t5
                  or           a1, t3, tp
                  xor          t0, s6, t1
23:               addi         gp, t6, -757
                  ori          sp, s5, 1907
                  add          t4, a2, a5
                  or           s2, t3, t6
27:               andi         a7, a4, 352
                  srai         s10, t1, 16
                  sra          t1, s8, s9
                  sub          t6, s6, a0
                  sltiu        s10, t0, -1451
                  srl          t2, zero, a5
                  xor          tp, s10, s11
                  beq          t5, s9, 43f
                  auipc        s7, 244185
                  slt          t0, ra, gp
                  slt          zero, s3, s5
                  srai         t4, sp, 1
                  srl          a1, a4, t2
                  bne          t4, t6, 57f
                  auipc        a2, 906706
                  addi         a5, s7, -437
43:               auipc        gp, 570799
                  sll          a7, s1, t3
                  ori          s7, a1, -1174
                  blt          a0, s6, 62f
                  sub          s4, s8, t2
                  slli         a1, a3, 7
                  slti         zero, s3, -233
                  or           t2, sp, tp
                  slli         t4, s10, 8
                  or           a1, s10, s6
                  blt          a4, t6, 60f
                  sra          t0, s8, t2
                  blt          s4, gp, 60f
                  slti         s0, s8, 483
57:               sltiu        ra, s5, -794
                  srl          t6, t6, a4
                  ori          s6, s4, 781
60:               lui          a0, 42955
                  bne          gp, s5, 75f
62:               xor          tp, sp, a5
                  bne          a0, a0, 83f
                  sra          zero, zero, t5
                  srl          s2, a5, a7
                  bge          t6, zero, 80f
                  ori          a1, sp, 274
                  lui          s1, 160938
                  slti         s5, ra, 111
                  and          s4, t2, zero
                  xor          s0, ra, s4
                  slt          s5, t4, t3
                  bgeu         a3, ra, 86f
                  sltu         t0, gp, s10
75:               lui          a7, 611686
                  sll          s6, t6, s11
                  addi         s9, s5, 885
                  bltu         t1, s4, 79f
79:               auipc        s8, 621066
80:               auipc        s1, 988774
                  sub          s11, s1, t2
                  sltu         t6, a1, s5
83:               srl          gp, s7, t1
                  ori          t0, t5, -1507
                  sll          s8, t3, a5
86:               blt          t4, t1, 100f
                  nop
                  srli         t1, gp, 19
                  sll          s6, s8, s5
                  ori          zero, s6, -1276
                  bgeu         t0, s10, 106f
                  ori          s11, s7, 800
                  slti         a4, t0, 669
                  xor          a0, s8, t4
                  beq          a2, s7, 106f
                  slti         a1, t2, -1136
                  sltu         a2, s2, a3
                  sltiu        s2, a7, -9
                  srli         zero, gp, 16
100:              beq          t4, s1, 119f
                  sub          t3, s6, a7
                  add          sp, s8, ra
                  sub          t0, a4, s4
                  bge          s4, s8, 113f
                  nop
106:              bgeu         s10, sp, 124f
                  lui          s1, 4251
                  sltiu        s4, s9, -144
                  bne          s8, s5, 119f
                  and          t1, s5, s1
                  and          t0, t5, t4
                  sltiu        s4, s2, 1039
113:              and          sp, s2, a7
                  and          ra, sp, sp
                  bltu         t6, s0, 127f
                  sltiu        t0, t1, -1150
                  sub          a7, a1, t5
                  bltu         sp, gp, 137f
119:              sll          s2, s7, s8
                  xor          t2, a2, t0
                  sra          ra, s8, zero
                  slti         a7, s1, -648
                  add          t4, ra, tp
124:              xori         a3, a2, 180
                  xor          s8, s0, ra
                  sub          a2, s5, tp
127:              add          t4, a2, a7
                  srli         s1, s9, 9
                  ori          s10, a4, 1974
                  auipc        t3, 960422
                  sltu         t4, a4, ra
                  bltu         s11, zero, 137f
                  nop
                  nop
                  blt          s7, t5, 149f
                  bge          s0, s1, 156f
137:              slli         s0, a2, 14
                  bltu         tp, a2, 143f
                  xori         a4, a1, 1806
                  bne          t3, t3, 151f
                  bgeu         zero, s6, 147f
                  or           gp, gp, a1
143:              sltu         sp, a4, s4
                  srai         a7, a7, 16
                  xori         s7, s5, -1619
                  slti         s7, a6, 1377
147:              auipc        zero, 780020
                  sll          s1, tp, a2
149:              sra          s9, t2, t6
                  sub          a5, t0, s10
151:              nop
                  sra          t6, s9, s7
                  ori          a1, s11, -98
                  bgeu         t2, s7, 158f
                  sra          s8, s3, s5
156:              slti         t6, t4, -1184
                  slt          s8, a3, a0
158:              slti         t4, s11, 564
                  sll          t3, s5, a3
                  sll          a0, a7, ra
                  or           a7, s2, gp
                  add          a0, s4, t4
                  xori         a5, sp, 214
                  sltiu        zero, a0, 763
                  nop
                  bge          t2, t1, 173f
                  ori          s2, zero, 922
                  beq          a3, t6, 188f
                  ori          s0, tp, -1707
                  slt          t0, s10, a0
                  andi         a3, s8, 554
                  slt          s5, s11, s11
173:              beq          tp, t4, 192f
                  addi         a7, s4, 621
                  srl          sp, s3, t4
                  and          a7, t5, t6
                  blt          s7, t4, 182f
                  slli         a2, zero, 10
                  bne          s7, t0, 182f
                  and          s1, s4, a5
                  slti         ra, s7, 423
182:              sltu         t2, zero, s11
                  xori         s6, t4, 249
                  and          t1, s11, t2
                  slli         a7, t0, 9
                  srl          ra, sp, s1
                  bge          gp, a2, 206f
188:              bltu         t2, t2, 195f
                  lui          s9, 822177
                  blt          s0, t5, 203f
                  slti         a4, a2, -1765
192:              xor          s5, t0, s4
                  sra          s8, a0, s10
                  andi         a3, t1, 426
195:              sltiu        a2, a6, 81
                  sub          t1, t1, s11
                  beq          s4, s3, 211f
                  slt          zero, s9, a0
                  sub          a2, s8, s9
                  or           a1, s1, s2
                  slt          a1, t5, a2
                  sll          tp, a6, s2
203:              slti         ra, s1, 482
                  bltu         s2, s10, 214f
                  sll          s5, s3, t3
206:              lui          a7, 687615
                  beq          a6, s6, 224f
                  andi         s2, t2, -884
                  sltiu        t3, s5, 438
                  slt          t0, tp, s6
211:              srl          s0, a4, s10
                  xori         t4, s0, -1917
                  bgeu         s3, s0, 227f
214:              srai         ra, s10, 20
                  nop
                  ori          s1, s8, -1577
                  add          gp, t1, s11
                  andi         s11, t6, 1454
                  addi         a4, t4, 606
                  srl          s4, t0, s4
                  lui          t1, 977933
                  slli         zero, a3, 13
                  nop
224:              bge          s5, s2, 229f
                  bne          a6, s6, 234f
                  sra          s0, a5, s1
227:              ori          s9, ra, -508
                  bgeu         sp, s9, 237f
229:              and          a3, s5, s4
                  blt          s5, s0, 246f
                  srli         sp, s2, 27
                  bne          s7, s2, 244f
                  slt          s1, s1, s7
234:              slti         t1, a0, 1908
                  bgeu         s2, s5, 240f
                  bgeu         a5, s11, 247f
237:              and          s1, s6, s6
                  add          a0, a4, tp
                  srai         s6, a1, 13
240:              beq          s0, s7, 255f
                  and          s5, sp, s2
                  srai         a4, t2, 13
                  la           s0, sub_1
                  andi         s1, gp, -1220
                  srl          s9, s8, sp
                  slt          s9, s4, a5
                  addi         s0, s0, 889
                  srai         s6, a1, 12
                  srli         gp, a6, 0
                  and          a1, t0, s11
                  nop
                  sltiu        s5, ra, 949
main_j2:          jalr         t0, s0, -888 #jump main -> sub_1
                  lui          s8, 356085
244:              nop
                  slt          ra, s6, t0
246:              lui          ra, 443674
247:              ori          gp, t3, -178
                  nop
                  sltu         s7, s7, t5
                  addi         t1, s11, 1505
                  srai         s8, s5, 1
                  srai         s4, a4, 24
                  lui          gp, 251999
                  addi         t6, zero, -507
255:              xor          s9, a4, t5
                  srli         a0, a6, 13
                  and          a5, a5, a7
                  ori          t6, s0, 542
                  bltu         s3, s0, 273f
                  sll          s9, s9, a5
                  slt          gp, a5, a1
                  srl          a7, tp, s7
                  blt          s6, s9, 280f
                  bgeu         s11, s6, 278f
                  sub          s7, t3, s2
                  bgeu         a5, t3, 284f
                  srai         a2, a5, 9
                  sll          s8, a2, a0
                  srli         t3, s4, 14
                  sltu         a7, t1, s9
                  auipc        s0, 696004
                  bne          s8, t2, 274f
273:              xor          s7, tp, a4
274:              blt          a4, t0, 280f
                  xori         s2, s3, 579
                  bgeu         s2, ra, 287f
                  or           s8, a0, s5
278:              andi         s0, t1, 281
                  la           s11, sub_2
                  srl          a0, a0, sp
                  lui          tp, 100705
                  or           a7, a4, gp
                  xori         zero, s1, 1674
                  addi         s11, s11, 267
                  nop
                  andi         s4, s11, -215
                  bge          s5, a5, main_j1 #branch to jump instr
                  sltu         a5, s0, s0
                  sltiu        s6, a2, 1756
                  sltu         s2, t0, zero
main_j1:          jalr         t0, s11, -267 #jump main -> sub_2
                  slt          s7, s6, a3
280:              andi         s6, a2, 681
                  srai         a4, tp, 0
                  nop
                  sub          s4, a5, s11
284:              nop
                  xori         t1, s5, 1525
                  auipc        ra, 983343
287:              or           s11, s0, t3
                  ori          gp, a2, 1798
                  bltu         s10, s1, 290f
290:              xori         t1, a6, -310
                  bltu         a3, ra, 311f
                  srl          t0, t6, zero
                  blt          t5, s0, 300f
                  sra          s5, t1, s2
                  and          a1, s1, a1
                  beq          a1, t0, 310f
                  or           tp, a7, s6
                  sltiu        a1, a2, -793
                  blt          a2, s3, 310f
300:              add          s8, gp, s11
                  blt          t4, a1, 302f
302:              add          t2, t3, s11
                  slt          a2, a5, s9
                  bltu         s5, a4, 323f
                  sltiu        t3, s9, -1734
                  xor          s9, s6, t6
                  bltu         s2, a5, 312f
                  addi         s8, t0, -876
                  srai         a1, t4, 15
310:              sll          s0, s11, a1
311:              add          t0, s0, a0
312:              slti         tp, s11, 455
                  bge          s7, t0, 322f
                  srli         s6, s3, 19
                  nop
                  bge          s11, t4, 336f
                  addi         t0, a6, -375
                  beq          t6, t0, 332f
                  andi         a3, zero, -76
                  andi         a5, zero, -963
                  or           sp, a3, t3
322:              bge          gp, t5, 335f
323:              lui          s1, 145864
                  srai         t0, a5, 2
                  slli         a1, a3, 20
                  slt          a4, s9, a5
                  sra          sp, t0, t2
                  sra          t0, zero, s4
                  or           a5, s7, a6
                  sltiu        t4, s4, 460
                  auipc        s2, 357379
332:              lui          s7, 384115
                  auipc        ra, 222608
                  srli         t2, s4, 27
335:              ori          t0, t1, -108
336:              bge          zero, a1, 355f
                  ori          t2, a0, 645
                  bne          t2, tp, 349f
                  and          a2, a5, s0
                  bgeu         t2, t2, 343f
                  srli         tp, tp, 22
                  xori         t3, t6, -1450
343:              addi         a1, s6, -48
                  lui          s1, 183178
                  bge          s9, a6, 362f
                  nop
                  sltiu        s0, gp, 118
                  nop
349:              sltu         s9, s5, t1
                  beq          t0, t0, 367f
                  bltu         t1, sp, 371f
                  srai         a5, s11, 22
                  sltiu        a4, a2, -691
                  srai         a0, a3, 31
355:              sll          a1, ra, s6
                  slti         s5, t5, 1970
                  slt          a7, s4, ra
                  slti         s1, t3, -1642
                  ori          s10, sp, -1014
                  addi         s4, s3, -1076
                  lui          s5, 505664
362:              auipc        a7, 891253
                  slt          a5, a7, s5
                  or           s8, s0, t6
                  slti         sp, t3, -926
                  bne          t6, s5, 373f
367:              ori          a7, s4, -985
                  sra          ra, zero, s5
                  lui          s2, 494065
                  slt          s4, t1, t3
371:              srl          s8, s5, sp
                  bge          a1, zero, 377f
373:              andi         a4, s8, -1999
                  ori          a2, s8, -1310
                  auipc        s8, 474076
                  srl          a2, zero, a4
377:              andi         tp, s6, -1509
                  beq          t3, s7, 383f
                  slt          s0, s5, a4
                  beq          s10, s0, 382f
                  blt          s9, s11, 397f
382:              sll          s9, s7, a6
383:              auipc        ra, 364540
                  xori         s8, s1, 175
                  andi         t2, s7, 547
                  ori          a3, a4, 1741
                  bltu         s9, t1, 405f
                  srai         s4, s1, 8
                  andi         ra, s11, -890
                  addi         sp, s2, -188
                  srl          gp, a3, t3
                  add          a4, t3, t2
                  and          s10, a0, a3
                  andi         s7, s6, -472
                  and          s1, s9, t4
                  sltiu        s9, t6, -588
397:              xori         a4, s7, 872
                  or           a4, a4, a4
                  bgeu         s10, t3, 414f
                  beq          s9, ra, 406f
                  auipc        a7, 130298
                  xori         s9, a1, 657
                  sltiu        t3, t0, -1306
                  beq          a3, sp, 416f
405:              and          t2, s11, s11
406:              andi         s9, t4, -916
                  add          t4, s11, a5
                  sub          t0, s6, s2
                  sub          s0, a1, a6
                  auipc        a3, 486327
                  srl          t3, t0, t3
                  sll          t2, s2, a6
                  auipc        t4, 592955
414:              add          zero, t3, s1
                  blt          t1, s0, 424f
416:              srl          a4, ra, s6
                  bge          t3, s0, 421f
                  xori         t4, t2, 630
                  or           s9, a0, ra
                  and          s9, zero, s6
421:              sltu         s4, a1, a5
                  srl          t6, a3, a3
                  slli         s10, a2, 14
424:              bgeu         s11, s6, 434f
                  ori          s6, a5, -931
                  sll          s0, s11, s5
                  or           a2, s4, a6
                  auipc        s11, 968933
                  or           s8, a4, gp
                  bge          s4, t5, 444f
                  xor          s7, zero, s4
                  addi         a2, s7, 692
                  andi         s9, t4, -1651
434:              xori         a5, s6, 569
                  addi         s4, s6, 2018
                  nop
                  bne          t3, ra, 451f
                  addi         t0, a7, -655
                  lui          s11, 463072
                  addi         a7, zero, -416
                  slt          s6, a5, a4
                  lui          s4, 302858
                  xori         sp, t5, -1221
444:              bgeu         a2, t3, 458f
                  bne          t4, s4, 459f
                  lui          ra, 685733
                  srli         s9, a1, 23
                  xori         s2, t1, 1340
                  srai         t6, zero, 23
                  slti         s8, a3, 51
451:              beq          ra, sp, 468f
                  bltu         a4, s7, 459f
                  xori         s6, a6, 1158
                  slti         s4, s9, -1066
                  sltiu        s7, a1, 1144
                  srl          s2, s11, a0
                  addi         s1, s5, 543
458:              sltu         t6, s2, s7
459:              bltu         s7, a7, 466f
                  sll          s6, tp, a0
                  lui          s9, 799474
                  sra          a4, gp, s6
                  sra          t1, s2, s5
                  srai         s7, a1, 15
                  srli         s10, t3, 31
466:              add          s11, s6, s6
                  auipc        s5, 756414
468:              and          s10, t3, s11
                  bge          sp, a1, 485f
                  andi         gp, t3, -687
                  nop
                  slti         a0, s1, -1349
                  beq          s0, t6, 482f
                  srli         a4, t6, 19
                  slti         t1, s8, -40
                  or           s4, s5, s3
                  bge          t1, s6, 497f
                  andi         a2, t0, 1611
                  xori         ra, a0, -2042
                  ori          a0, s11, -1528
                  and          a1, s9, s10
482:              srli         s10, s3, 21
                  bge          s5, t3, 486f
                  bltu         a4, a1, 497f
485:              srli         t4, t0, 5
486:              beq          a6, zero, 488f
                  slt          s11, t2, t1
488:              or           tp, gp, s3
                  bne          a4, s9, 498f
                  bge          a0, t4, 502f
                  lui          s4, 12163
                  auipc        tp, 789875
                  sra          t1, s5, s10
                  slt          t1, zero, s7
                  sltiu        gp, t0, -1092
                  bgeu         s10, s10, 502f
497:              bge          a4, a5, 502f
498:              bgeu         s2, zero, 502f
                  srai         s7, s4, 16
                  addi         tp, s1, -456
                  nop
502:              sub          gp, a5, s8
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            nop
                  lui          s2, 17947
                  sub          s11, a3, zero
                  ori          ra, s11, -1446
                  addi         s3, s3, -12
                  sw           t0, 4(s3)
                  srli         s6, gp, 13
                  la           t2, region_0+1274 #start riscv_load_store_hazard_instr_stream_2
                  sb           s7, 131(t2)
                  lb           s6, 131(t2)
                  lb           t3, 131(t2)
                  lbu          a3, 131(t2)
                  andi         zero, s8, -477
                  ori          a1, t1, 712
                  lb           ra, 131(t2)
                  lbu          a4, 131(t2)
                  srli         zero, ra, 9
                  sb           a2, 131(t2)
                  sb           t3, 131(t2)
                  lb           a1, 131(t2)
                  sb           a7, 131(t2)
                  sltu         a4, t5, s0
                  lbu          tp, 131(t2) #end riscv_load_store_hazard_instr_stream_2
                  la           a3, region_1+1979 #start riscv_load_store_rand_instr_stream_1
                  xor          t2, s8, s5
                  srai         s1, a0, 6
                  sb           s6, 14(a3)
                  srli         t6, zero, 10
                  lb           zero, 12(a3)
                  addi         s11, zero, -1020
                  slli         s1, s6, 30
                  sb           ra, -39(a3)
                  slt          tp, s11, a1
                  lh           a7, -19(a3)
                  lbu          zero, -16(a3)
                  lui          s10, 749935
                  or           a1, t1, s11
                  sb           s6, -32(a3)
                  sw           gp, -59(a3)
                  lbu          s9, 4(a3)
                  sb           a0, 19(a3)
                  lb           a7, -6(a3)
                  and          a5, s11, t5
                  sra          s10, s7, t4
                  slti         s4, s6, -1934
                  lb           s4, -46(a3)
                  srl          s10, zero, s0
                  and          t1, s10, s6
                  sb           s5, -21(a3)
                  lw           s10, 1(a3)
                  andi         s11, ra, -323
                  sltiu        a0, a1, 1756
                  lbu          a7, 0(a3)
                  sub          s7, a7, a5
                  nop
                  lb           s4, -45(a3)
                  andi         gp, s8, 968
                  andi         s11, sp, 1461
                  lbu          s1, -29(a3)
                  lbu          s11, -12(a3)
                  sll          a4, zero, s5
                  xor          s9, a5, s6
                  auipc        t6, 572577
                  lb           ra, -18(a3)
                  lh           tp, 7(a3)
                  sb           s11, 18(a3)
                  xori         s2, s9, -109
                  slti         s5, t0, 1020
                  sb           s0, 9(a3)
                  xor          ra, s9, s4
                  sh           t0, -3(a3)
                  sh           s5, -37(a3)
                  lbu          s7, 10(a3) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_1+1493 #start riscv_load_store_rand_instr_stream_0
                  lh           s9, 179(t4)
                  srli         a2, s6, 11
                  lbu          t6, 208(t4)
                  lb           s2, -248(t4)
                  xor          a5, a0, a4
                  sb           t1, 10(t4)
                  xori         tp, a2, 901
                  lbu          s4, -128(t4)
                  lbu          s10, 145(t4)
                  addi         sp, s4, -1016
                  sb           t2, -214(t4)
                  lhu          gp, -105(t4)
                  lbu          s2, -66(t4)
                  slt          s2, sp, a0
                  slt          a3, s0, sp
                  nop
                  xori         t6, a6, -1639
                  lb           t0, -69(t4)
                  lb           a5, -15(t4)
                  and          a7, s8, s0
                  srli         a3, s3, 3
                  lb           gp, -30(t4)
                  sh           t4, 53(t4)
                  sltu         a0, s2, a4
                  lbu          zero, -218(t4)
                  lbu          s4, -95(t4)
                  slli         a2, s7, 22
                  nop
                  sw           s11, -157(t4)
                  xori         s9, a2, 1026
                  lbu          s0, -244(t4)
                  lbu          a3, -165(t4)
                  sb           s5, 119(t4)
                  slti         zero, zero, 1011
                  lb           t3, 254(t4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1935 #start riscv_load_store_rand_instr_stream_2
                  lb           t2, 12(sp)
                  sh           s2, -1(sp)
                  lb           a5, -5(sp)
                  lw           s6, -15(sp)
                  lb           s10, -5(sp)
                  sb           s5, 12(sp)
                  sltu         s4, s2, t6
                  andi         s0, a5, 1144
                  sh           s11, 3(sp)
                  slt          t2, t3, s10
                  sh           s1, 13(sp)
                  sw           s8, 13(sp)
                  sb           s9, -16(sp)
                  slti         s11, a1, -2009
                  lbu          s11, 14(sp)
                  lb           t0, -8(sp)
                  srai         s5, a3, 1
                  lb           ra, -10(sp)
                  sll          a5, t4, t4
                  sb           s8, -12(sp)
                  srli         tp, a4, 15
                  sh           a4, 9(sp)
                  lw           s10, 13(sp)
                  sltiu        s8, a2, 574
                  sb           s4, 10(sp)
                  lb           s5, -10(sp)
                  lhu          s11, -1(sp)
                  sw           a5, -3(sp)
                  sw           t2, 5(sp)
                  lbu          t0, -2(sp)
                  sub          a1, s4, s7
                  lh           ra, 13(sp)
                  lhu          t4, 5(sp)
                  lh           t3, 13(sp)
                  sb           t1, 8(sp)
                  slli         ra, zero, 25
                  sb           s2, 0(sp)
                  lbu          s7, 10(sp)
                  sh           a2, 5(sp)
                  lhu          a7, -13(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_1+428 #start load_store_instr_stream_0
                  la           s8, region_1+1898 #start load_store_instr_stream_2
                  la           s10, region_1+130 #start load_store_instr_stream_1
                  sh           a7, -20(s8)
                  lb           s2, 9(s10)
                  lbu          a0, -4(s10)
                  sw           a6, -4(t3)
                  lw           a4, 38(s8)
                  lb           ra, -7(s10)
                  sh           a3, 14(s10)
                  sb           a2, -91(s8)
                  lb           a0, -220(s8)
                  sb           s4, 4(t3)
                  sh           a5, 2(t3)
                  lb           a3, -39(s8)
                  lbu          tp, 5(s10)
                  lbu          s5, 0(t3)
                  sb           a0, 14(t3)
                  sw           a1, -94(s8)
                  lh           s9, -16(s10)
                  lbu          a0, -7(s10)
                  lbu          a2, 7(t3)
                  lb           sp, 79(s8)
                  lb           t2, -1(t3)
                  sb           s10, -9(s10)
                  sw           s1, 82(s8)
                  sb           a6, -254(s8)
                  sh           a0, -134(s8) #end load_store_instr_stream_2
                  sb           a1, -7(t3)
                  lb           a7, 11(s10) #end load_store_instr_stream_1
                  lb           a0, -15(t3) #end load_store_instr_stream_0
                  la           s6, region_0+864 #start load_store_instr_stream_1
                  la           tp, region_0+1485 #start load_store_instr_stream_0
                  sb           s3, -5(s6)
                  lh           a4, -1(tp)
                  sb           t3, 2(s6)
                  lb           s5, 4(tp)
                  lbu          s1, -15(tp)
                  sw           gp, -12(s6)
                  lbu          s8, 9(tp)
                  sb           a5, 5(tp)
                  sb           a5, 0(s6)
                  lhu          t3, -11(tp)
                  lhu          s8, -2(s6)
                  lbu          t3, -8(tp)
                  lbu          a4, 9(s6) #end load_store_instr_stream_1
                  lbu          a4, 4(tp) #end load_store_instr_stream_0
                  la           sp, region_0+1320 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s1, 1(sp)
                  lb           t1, 1(sp)
                  sb           s8, 1(sp)
                  lbu          a7, 1(sp)
                  lb           tp, 1(sp)
                  lbu          a2, 1(sp)
                  sb           t4, 1(sp)
                  lbu          t3, 1(sp)
                  andi         s4, s9, -1985
                  lbu          s0, 1(sp)
                  sb           a5, 1(sp)
                  sb           s0, 1(sp)
                  lbu          s11, 1(sp)
                  lb           t3, 1(sp)
                  lbu          t3, 1(sp)
                  sb           a0, 1(sp)
                  lb           a0, 12(sp)
                  lbu          a4, -11(sp)
                  lbu          s7, -11(sp)
                  lbu          zero, -11(sp)
                  lb           gp, 15(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a0, region_1+1426 #start load_store_instr_stream_1
                  la           s11, region_1+224 #start load_store_instr_stream_4
                  la           s8, region_1+1887 #start load_store_instr_stream_2
                  la           s10, region_1+667 #start load_store_instr_stream_0
                  la           a5, region_1+39 #start load_store_instr_stream_3
                  sb           s5, 203(a0)
                  lb           ra, -1(s8)
                  lb           a4, 13(s11)
                  lbu          s2, -239(a0)
                  sw           a1, 225(s10)
                  lh           s1, 238(a0)
                  lb           s6, 224(s10)
                  lb           s5, -6(s8)
                  lbu          t6, 14(s11)
                  lb           ra, 1320(a5)
                  sw           s7, 1661(a5)
                  lw           t1, -1202(a0)
                  lbu          ra, -44(s10)
                  lb           sp, -30(a5)
                  lbu          s0, 4(s8)
                  lb           sp, 10(s8)
                  lb           a3, 1471(a5)
                  sb           t5, 549(a0)
                  lw           t6, -8(s11)
                  sb           zero, -8(s8)
                  lh           a2, -13(s8)
                  lb           s9, -85(a0)
                  lbu          a1, 290(s10)
                  sh           a7, -259(s10)
                  sh           s6, 811(a5)
                  lbu          s5, -1(s11)
                  lhu          a4, -8(s11)
                  sb           a1, 6(s8)
                  sb           t1, -963(a0)
                  sw           sp, -4(s11) #end load_store_instr_stream_4
                  lw           s6, 413(s10)
                  sw           a6, 1329(a5)
                  lbu          ra, 1274(s10)
                  lw           a2, 98(a0)
                  lb           t0, -17(a0) #end load_store_instr_stream_1
                  lb           a3, 648(s10)
                  lhu          s0, 1065(a5)
                  lbu          s7, 638(a5)
                  lb           gp, 10(s8) #end load_store_instr_stream_2
                  lbu          s7, 154(a5)
                  lb           s0, 240(a5) #end load_store_instr_stream_3
                  lbu          s5, 1220(s10) #end load_store_instr_stream_0
                  srl          a7, gp, s0
                  sra          t2, gp, s7
                  lui          t6, 112724
                  xori         s11, a7, 105
                  xor          s5, s6, t0
                  or           a3, a4, s5
                  blt          s6, tp, 15f
                  sltu         s5, s4, t5
                  nop
                  sll          t0, s2, tp
                  sll          a7, t6, s4
                  xor          ra, s6, t2
                  xor          t3, s11, a4
                  srl          sp, ra, a0
                  auipc        s10, 697120
15:               bgeu         t6, a7, 31f
                  sltu         s7, t3, a1
                  srli         s5, s7, 18
                  sra          s5, s7, sp
                  srl          sp, t2, s4
                  blt          a1, s0, 22f
                  beq          s11, t4, 25f
22:               blt          a0, s3, 41f
                  addi         a1, t1, 1249
                  slli         a0, t1, 26
25:               addi         s2, s8, -1111
                  bne          s11, t1, 43f
                  bltu         a4, s10, 34f
                  sltu         a4, s5, s8
                  bltu         s5, s10, 37f
                  bne          sp, a3, 48f
31:               srli         s8, gp, 3
                  bne          s7, t2, 39f
                  add          s9, zero, a6
34:               add          a4, sp, s3
                  bne          gp, s3, 39f
                  nop
37:               bgeu         s8, a7, 46f
                  slt          sp, s3, gp
39:               slli         t4, a3, 3
                  bgeu         t0, a6, 47f
41:               sltiu        s7, t0, 1436
                  andi         s0, a7, 1057
43:               andi         t2, a2, -591
                  srli         s2, s8, 13
                  beq          a5, zero, 53f
46:               nop
47:               or           s5, ra, zero
48:               slt          s6, s4, a7
                  andi         sp, t3, -250
                  blt          a7, s9, 61f
                  lui          ra, 306215
                  addi         t4, t5, 1251
53:               auipc        a7, 727429
                  srai         a7, a4, 15
                  bge          s11, s1, 58f
                  sra          s2, tp, t3
                  blt          a1, a3, 72f
58:               lui          a2, 542801
                  slt          s1, s7, t5
                  sltiu        a7, a4, 1549
61:               srli         t3, s1, 8
                  bne          a5, ra, 68f
                  slli         ra, t2, 23
                  sra          s2, t1, t5
                  auipc        zero, 217378
                  sub          a2, s8, a6
                  nop
68:               sll          a0, a3, s4
                  and          s7, s10, s8
                  add          a4, ra, s7
                  sltu         a2, ra, t3
72:               sra          t2, gp, s0
                  blt          a5, s0, 81f
                  beq          s10, a4, 94f
                  bltu         s8, a2, 76f
76:               addi         s5, s11, -1611
                  slti         s6, tp, -1570
                  slti         a7, t5, 993
                  blt          a0, s1, 90f
                  srli         a5, s8, 4
81:               beq          a3, s10, 84f
                  slli         s9, a4, 13
                  ori          s9, t3, 1387
84:               sltu         a3, a5, a5
                  slt          s6, sp, s4
                  auipc        t3, 448737
                  lui          s0, 580013
                  andi         t2, s6, -364
                  sub          a5, s8, s7
90:               auipc        t2, 420451
                  nop
                  addi         t2, a5, 1410
                  add          s5, a6, s1
94:               xori         s5, a4, -1545
                  auipc        s2, 240744
                  sltu         s9, s2, s6
                  bne          a4, s0, 104f
                  sll          a0, s1, s2
                  auipc        t0, 113749
                  xori         s7, s10, -1526
                  beq          s7, s11, 114f
                  add          a1, t5, s1
                  nop
104:              srai         a0, t1, 21
                  bltu         sp, s6, 116f
                  sub          gp, a4, a1
                  addi         s9, t6, -980
                  slli         s0, a1, 27
                  xor          s2, s0, a2
                  addi         s4, t4, -865
                  slt          t2, a2, t5
                  bne          tp, s6, 117f
                  slti         t1, a3, -1679
114:              or           a5, a1, a6
                  sll          s6, ra, t6
116:              sra          t1, s9, s4
117:              slt          a0, a4, a6
                  bltu         s2, t3, 138f
                  slt          s0, a4, s8
                  lui          tp, 309387
                  srli         a2, a5, 15
                  bgeu         s2, s0, 142f
                  auipc        a7, 939190
                  xori         t0, sp, 1262
                  blt          a3, t1, 145f
                  ori          a3, a2, -730
                  beq          s11, s1, 135f
                  addi         sp, t4, -1827
                  srli         a4, a4, 4
                  la           s7, region_1+566 #start riscv_load_store_hazard_instr_stream_0
                  lb           t3, -103(s7)
                  lbu          sp, -103(s7)
                  slti         s11, s9, 672
                  xor          t2, t2, a0
                  sltiu        sp, t1, 1686
                  auipc        t2, 773546
                  sb           s2, -103(s7)
                  lb           t2, -103(s7)
                  lbu          s5, -103(s7)
                  sb           a4, -103(s7)
                  lbu          a4, -103(s7)
                  lbu          t3, -103(s7)
                  lb           tp, -103(s7)
                  and          s2, t6, a4
                  lbu          s5, -103(s7)
                  lbu          a4, -103(s7)
                  sub          s8, a5, a6
                  and          s11, a4, a4
                  lb           t2, -103(s7) #end riscv_load_store_hazard_instr_stream_0
                  sltiu        a5, s6, -1442
                  addi         a0, a0, -466
                  ori          tp, zero, 1018
                  sltiu        s10, s4, -612
                  blt          a3, a3, 142f
135:              bge          s3, sp, 154f
                  or           t6, t2, a5
                  srli         s11, s9, 13
138:              slt          tp, s5, a5
                  xori         t3, t0, 281
                  and          t3, t4, zero
                  and          s9, a5, a2
142:              srli         ra, s8, 31
                  slli         t1, s11, 19
                  srl          t1, s10, a5
145:              sltiu        a4, s11, 881
                  sltu         s9, a7, s4
                  andi         a5, sp, -1241
                  and          s6, t4, tp
                  srli         t1, s7, 13
                  blt          s7, t5, 153f
                  andi         s9, s9, -1352
                  beq          s9, a3, 172f
153:              sub          zero, gp, t6
154:              srai         a0, t0, 15
                  slt          a4, s10, s4
                  srai         s7, s7, 2
                  andi         s2, a2, -938
                  xor          ra, a1, s5
                  sub          gp, a2, s2
                  nop
                  and          a2, t6, a0
                  srl          a7, s6, t6
                  bgeu         a2, a0, 183f
                  bltu         t5, a3, 177f
                  blt          ra, a5, 176f
                  sltiu        s9, t1, -1015
                  bltu         s4, s4, 174f
                  srai         s4, s5, 7
                  srl          a5, t6, a7
                  xor          s0, a6, s10
                  slti         s8, a7, 1361
172:              slt          s5, t1, t0
                  slli         gp, s11, 10
174:              srl          s2, s1, s6
                  bltu         ra, t5, 180f
176:              srli         s4, a4, 16
177:              or           a4, s0, t0
                  sll          s10, s8, s8
                  bgeu         s11, s4, 199f
180:              sll          s6, t5, s7
                  xor          sp, s1, s6
                  blt          s5, sp, 199f
183:              slti         a4, s7, -1374
                  addi         s2, s11, -474
                  sltiu        s6, s8, 672
                  sra          ra, s11, s8
                  srli         t4, a6, 28
                  slli         zero, a1, 15
                  bge          s5, s2, 209f
                  lui          s4, 920813
                  xor          s8, ra, ra
                  sra          s8, s6, t5
                  slli         s6, t5, 4
                  bne          s1, s3, 202f
                  auipc        s1, 113561
                  sub          t3, s2, s1
                  slli         s4, tp, 26
                  slti         s9, s9, -1440
199:              or           s2, a6, a3
                  lui          s6, 58081
                  beq          s10, zero, 205f
202:              auipc        a1, 438755
                  auipc        tp, 1022770
                  add          s11, s11, s9
205:              srli         a1, s9, 0
                  blt          gp, s2, 213f
                  nop
                  xori         s9, s1, 1095
209:              sltiu        gp, s8, -324
                  srl          t1, a0, a0
                  sltiu        t0, gp, 2025
                  beq          a6, t3, 213f
213:              nop
                  xor          s1, s4, t0
                  addi         tp, gp, 546
                  srli         s0, ra, 18
                  slti         a7, t2, -1527
                  andi         a2, s0, 1715
                  bne          t3, t6, 230f
                  bne          a4, s0, 223f
                  bltu         t0, t6, 230f
                  andi         s1, s8, 176
223:              srai         ra, s2, 31
                  and          t6, s8, a2
                  bgeu         s5, a3, 232f
                  beq          s3, s5, 244f
                  and          a1, a1, zero
                  and          s8, ra, s4
                  and          a3, a6, s4
230:              slt          a2, s7, a5
                  bgeu         gp, a5, 238f
232:              sll          t3, s9, t6
                  sltu         s10, s6, tp
                  or           s8, s7, s11
                  xori         tp, s11, 1120
                  sltu         sp, gp, s0
                  sra          s5, s10, t0
238:              xori         gp, s10, -595
                  nop
                  srai         s11, gp, 17
                  xori         a3, t5, -201
                  bne          s7, zero, 258f
                  sra          sp, s5, sp
244:              blt          s1, tp, 259f
                  srli         s4, t6, 5
                  slti         ra, s7, -860
                  addi         s9, s0, -1441
                  bne          t2, t3, 252f
                  slli         s4, t4, 18
                  xori         t0, t1, -1726
                  srli         t0, t5, 14
252:              slt          zero, a6, tp
                  slti         s1, a3, 1629
                  srai         s2, a4, 4
                  bgeu         sp, s7, 261f
                  xor          sp, a2, a3
                  sub          s11, ra, s11
258:              bltu         sp, s4, 269f
259:              addi         s7, t6, -1094
                  or           s5, t3, t2
261:              or           tp, t5, s9
                  and          a7, t1, t4
                  lui          s11, 920039
                  bltu         s10, gp, 273f
                  slli         a4, t2, 15
                  bne          sp, t6, 268f
                  srli         a5, a2, 18
268:              sltiu        zero, t5, -341
269:              sltiu        s1, a4, -290
                  andi         s8, a7, -594
                  blt          a1, zero, 291f
                  andi         a0, ra, 1037
273:              sltiu        s6, s1, -1498
                  sra          t2, ra, s0
                  srli         s5, sp, 25
                  lui          s8, 1037330
                  bltu         gp, s4, 297f
                  srai         a0, zero, 28
                  add          t6, a6, zero
                  beq          s10, t6, 286f
                  slti         s1, gp, -1993
                  add          a7, s0, s9
                  bne          t0, tp, 291f
                  blt          ra, gp, 295f
                  andi         a3, a4, 1768
286:              auipc        s8, 350998
                  bge          a0, gp, 298f
                  sll          a7, t6, s4
                  or           a7, t5, a6
                  beq          a3, ra, 310f
291:              srl          a7, s8, a2
                  sub          t2, t0, t3
                  bltu         tp, s0, 311f
                  add          a5, a1, t2
295:              nop
                  slt          s0, a6, a4
297:              slli         t1, tp, 6
298:              lui          s9, 485458
                  bne          a2, s11, 306f
                  slt          t6, s9, t5
                  srai         s11, t3, 10
                  sub          ra, sp, t4
                  sltiu        s11, s2, -1898
                  sltiu        s9, s4, -913
                  srl          t0, a5, a2
306:              bne          t3, t2, 310f
                  lui          a7, 607258
                  bne          gp, gp, 328f
                  lui          t2, 299722
310:              auipc        s10, 144991
311:              sra          s4, s1, zero
                  nop
                  sltiu        gp, s11, 1899
                  sltiu        s7, s11, 100
                  sltu         tp, s7, tp
                  lui          sp, 254984
                  slli         t3, s10, 28
                  and          a4, s8, t4
                  beq          s11, s9, 330f
                  slt          s5, s1, a5
                  srl          a3, zero, s5
                  bgeu         s3, t5, 341f
                  bgeu         t2, t6, 330f
                  bltu         tp, a3, 332f
                  xori         a1, tp, 188
                  add          s5, a6, a0
                  ori          a1, a4, -276
328:              bge          t5, s5, 341f
                  add          ra, s10, s4
330:              srai         ra, ra, 17
                  bltu         t6, s2, 340f
332:              addi         s6, a1, -1771
                  add          ra, tp, t1
                  or           t6, s2, t0
                  srl          t1, tp, s6
                  xor          gp, a4, a3
                  add          t6, ra, s7
                  blt          t0, ra, 341f
                  nop
340:              beq          s3, s11, 341f
341:              xor          sp, s6, tp
                  lw           t0, 4(s3)
                  srli         s11, sp, 0
                  addi         s3, s3, 12
                  lui          s5, 114292
                  sltu         s10, ra, s9
                  xor          t4, s11, tp
634:              addi x17, x5, 1
634:              jalr x17, x17, 0
sub_2:            addi         s3, s3, -36
                  xori         tp, a0, 1385
                  slti         s6, s10, 72
                  or           s2, s8, s2
                  sw           t0, 4(s3)
                  sltiu        a5, a0, 2024
                  sltu         gp, s0, tp
                  addi         s1, s8, 865
                  sub          a5, a3, a4
                  lui          a4, 865106
                  sra          sp, s2, t0
                  la           sp, region_0+502 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s8, 17(sp)
                  lbu          s0, 17(sp)
                  lbu          s7, 17(sp)
                  lb           gp, 57(sp)
                  lb           s2, 57(sp)
                  lbu          t6, -54(sp)
                  lb           s7, -54(sp)
                  lh           tp, -54(sp)
                  lbu          a2, -59(sp)
                  lbu          s11, 25(sp)
                  sb           s9, 25(sp)
                  sub          a4, s4, s11
                  sltu         s5, t3, t0
                  sb           t3, 25(sp)
                  or           a7, t1, a4
                  lb           t3, 25(sp)
                  sb           t3, 25(sp)
                  slt          s11, s0, tp
                  sltiu        s11, s1, 1464
                  lbu          gp, 25(sp)
                  sll          t0, a5, a4
                  sb           a7, 25(sp)
                  lb           s0, 25(sp)
                  lbu          zero, 25(sp)
                  sb           t6, 25(sp)
                  sb           s6, -23(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_1+1015 #start load_store_instr_stream_3
                  la           a3, region_1+1264 #start load_store_instr_stream_2
                  la           a0, region_1+2 #start load_store_instr_stream_1
                  la           s4, region_1+1540 #start load_store_instr_stream_0
                  sb           a3, -2(a3)
                  la           s10, region_1+302 #start load_store_instr_stream_4
                  lbu          s11, 13(a0)
                  lbu          s8, 1(a0)
                  sb           a5, 12(a3)
                  sb           t3, 177(s10)
                  sb           t3, 30(s1)
                  lb           s0, 5(s4)
                  lb           s9, 15(a0)
                  lh           a5, 1(s1)
                  sb           t3, 23(s1)
                  sh           a3, 33(s1)
                  sb           s1, 1099(s10)
                  sb           s5, 1157(s10)
                  sw           s10, 6(a0)
                  sb           s1, -21(s10)
                  lbu          a1, 30(s1)
                  sb           sp, 13(s4)
                  lbu          s8, 1689(s10)
                  lb           s0, 441(s10)
                  lh           a7, 12(a0)
                  sb           s9, -46(s1)
                  sh           ra, 26(s4)
                  sb           s1, 3(s4)
                  lh           t6, 12(a0)
                  lbu          t6, 15(s10)
                  lbu          ra, 11(a3)
                  lbu          ra, -7(a3)
                  lbu          a2, -46(s4)
                  lbu          a7, -5(s4)
                  sb           a7, 7(a3)
                  lbu          s8, 62(s1) #end load_store_instr_stream_3
                  lb           t3, 1(a0) #end load_store_instr_stream_1
                  sb           s8, 518(s10)
                  sw           t2, 1214(s10) #end load_store_instr_stream_4
                  lbu          ra, 9(a3) #end load_store_instr_stream_2
                  lh           a2, 62(s4) #end load_store_instr_stream_0
                  la           s4, region_0+92 #start riscv_load_store_rand_instr_stream_0
                  andi         s6, sp, -520
                  sb           s1, 195(s4)
                  lhu          zero, -60(s4)
                  srl          t6, a2, a4
                  sb           s9, -70(s4)
                  sll          s7, ra, s0
                  lbu          zero, 151(s4)
                  lhu          s8, -32(s4)
                  andi         a7, t2, 28
                  lb           a0, 251(s4)
                  sb           s9, 105(s4)
                  sltiu        s6, t4, 630
                  lb           a7, 147(s4)
                  srai         t6, s0, 15
                  lbu          s8, -1(s4)
                  sra          t2, a7, a5
                  xori         t4, tp, -1695
                  xor          s2, tp, ra
                  addi         t1, s9, -2006
                  lbu          s11, 125(s4)
                  andi         a7, a6, -507
                  srai         t6, ra, 22
                  slti         t1, t1, -1312
                  ori          s1, t6, -1077
                  lh           zero, 220(s4)
                  lb           a4, 235(s4)
                  lbu          tp, 122(s4)
                  and          a5, t5, tp
                  xor          a1, t5, a3
                  sb           t1, -35(s4) #end riscv_load_store_rand_instr_stream_0
                  xor          a0, ra, sp
                  bne          zero, s11, 5f
                  add          s8, s10, s1
                  bgeu         s11, t6, 21f
                  sra          s9, s0, s0
5:                or           t2, s1, s8
                  beq          t5, s3, 7f
7:                bne          t6, ra, 14f
                  slli         a0, a6, 10
                  and          gp, t3, s5
                  slli         ra, s8, 10
                  blt          s10, s10, 22f
                  nop
                  sll          s9, s9, s11
14:               beq          s3, gp, 19f
                  bne          t0, a4, 35f
                  or           s10, t3, t0
                  sltu         s4, t5, s8
                  xori         s9, tp, 350
19:               add          a4, s9, t5
                  slt          a0, a5, t3
21:               slt          s6, a7, t0
22:               sra          t3, s0, sp
                  bltu         t5, s3, 27f
                  sll          a4, t4, t2
                  slli         gp, s9, 14
                  addi         a7, a7, 825
27:               lui          a2, 351218
                  addi         s2, s1, 1807
                  beq          t5, s4, 37f
                  add          t2, a1, gp
                  slli         t4, s2, 12
                  sltu         tp, zero, sp
                  addi         t6, s1, -624
                  andi         t2, tp, -1114
35:               srli         t2, a6, 12
                  bgeu         a5, a2, 44f
37:               sltiu        s4, zero, -1623
                  slli         a1, s2, 12
                  srli         sp, s3, 14
                  addi         s1, a2, 1736
                  addi         s2, t0, 1702
                  bltu         s0, s2, 59f
                  andi         s1, s3, 210
44:               blt          a3, s8, 50f
                  nop
                  xor          s1, s10, s3
                  sra          s6, a5, s1
                  sltiu        a5, s9, -656
                  or           ra, ra, t4
50:               srl          s5, t5, a6
                  bltu         ra, s9, 67f
                  auipc        s1, 197496
                  sltu         tp, t6, t3
                  sra          t4, t0, a4
                  srai         s8, s0, 0
                  sltu         t4, s7, s6
                  slli         sp, t4, 28
                  slti         t3, a4, 1775
59:               blt          s1, s0, 75f
                  andi         s6, t0, -40
                  nop
                  slt          s7, s6, gp
                  sltu         s8, s10, a6
                  and          s1, t2, t6
                  slti         s5, s9, -1736
                  srl          s6, s10, t2
67:               slli         sp, s2, 8
                  sltiu        a2, a6, -2027
                  addi         s4, s5, -1983
                  srli         t3, s4, 9
                  srli         s10, t6, 1
                  srli         s7, gp, 28
                  sub          s0, a2, t1
                  slli         a4, s4, 9
75:               blt          a5, t2, 86f
                  sub          t6, s4, t4
                  xori         t3, s10, -1769
                  sub          tp, a2, t0
                  auipc        s9, 244035
                  bge          a6, s10, 92f
                  or           a1, a4, a3
                  sltu         zero, s7, t6
                  andi         a2, ra, 1106
                  xori         s6, s10, -623
                  srl          s2, t6, t2
86:               srl          s2, s7, sp
                  nop
                  srl          s11, ra, s1
                  lui          a7, 33538
                  xor          a3, t5, a6
                  sra          s7, t3, a5
92:               add          s4, s4, a5
                  blt          s9, gp, 112f
                  blt          t5, a3, 102f
                  bltu         zero, t6, 100f
                  and          a0, s2, s7
                  slt          s2, a0, s9
                  lui          t3, 757062
                  bne          ra, a0, 109f
100:              and          s4, s8, s6
                  bge          t3, s2, 106f
102:              beq          s11, s11, 114f
                  bgeu         s11, a0, 118f
                  bge          gp, t2, 112f
                  sltu         s0, sp, t0
106:              sub          s9, a1, a0
                  andi         a0, s6, -2031
                  nop
109:              slt          t4, s2, a2
                  slt          a3, t3, zero
                  sra          t3, zero, a1
112:              sll          t0, s7, zero
                  and          gp, s3, ra
114:              sra          s1, s5, a7
                  lui          sp, 492841
                  xor          t3, a4, t1
                  xor          s2, sp, zero
118:              addi         tp, t3, 418
                  addi         ra, s3, -934
                  srli         t3, t5, 28
                  slt          s9, a4, s0
                  or           a1, t1, s7
                  sub          s11, s1, a6
                  sll          s9, a7, a3
                  xor          a0, a2, tp
                  addi         s10, a3, -1846
                  andi         t1, s10, -1896
                  addi         s5, a4, 176
                  srli         s10, s1, 20
                  ori          a0, s8, 1297
                  sltu         s4, a1, s8
                  srai         s7, a0, 11
                  bne          t4, s7, 138f
                  slti         ra, sp, 11
                  andi         t3, t0, 522
                  bltu         a6, a1, 141f
                  and          s6, t6, zero
138:              bltu         a3, s11, 152f
                  srl          a5, t5, a0
                  andi         s6, s1, 1362
141:              sub          s9, s5, sp
                  sltu         t6, t2, sp
                  sltiu        s5, tp, 1641
                  bne          s3, a7, 145f
145:              andi         ra, a0, -1731
                  slt          ra, s5, t2
                  andi         s8, a2, 348
                  addi         s11, gp, 1648
                  and          t2, s3, t6
                  slti         s11, a5, -490
                  nop
152:              srai         t1, a1, 20
                  sltu         s11, s10, tp
                  srai         s4, t3, 10
                  lw           t0, 4(s3)
                  auipc        a7, 391049
                  addi         s3, s3, 36
                  sltiu        a5, gp, 1053
                  add          s2, s4, t0
                  sub          s4, t4, a0
                  slt          a7, s11, gp
272:              addi x4, x5, 1
272:              jalr x4, x4, 0
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
.word 0xa54d11a5, 0xa432f3d6, 0x37727135, 0x61410215, 0x9614c761, 0x5653726b, 0x8fbec359, 0x5e5e8b77
.word 0xfe0d851c, 0xa949a3ac, 0x68d1a101, 0xfb4e9d17, 0x7fbb6c45, 0x301b2b48, 0x81d01458, 0x269b4c4d
.word 0x5eb3cbf9, 0x1f4fbbc2, 0xc46a788e, 0x5e8ade74, 0xbced0c5e, 0x9242bd8f, 0x63aa41d9, 0xc6a62676
.word 0x49355bb3, 0x929c33b2, 0x4eff20d1, 0x46e83ef1, 0x55502565, 0xdfa84fa4, 0xcc33ad52, 0xaffa5d94
.word 0x71d3954f, 0x59cf2ea1, 0x23470ea1, 0xf0a66d42, 0xcb9917f8, 0x4e0c0023, 0xf03a0f6b, 0x9b7513a7
.word 0xb2407bc4, 0x991eb5ab, 0xf5d5bc9c, 0x8aeabf23, 0xabee6034, 0x18e9ab1e, 0xf34ecade, 0xa4a7de02
.word 0x43732116, 0x1f680fca, 0xbd86e9c6, 0xaafd5ea4, 0x70f747bf, 0x37867676, 0xe414e0b6, 0xc9206067
.word 0xce9837cc, 0x6216dca1, 0xe6cb2a88, 0xa92a5e1c, 0xb261ec47, 0x914ab716, 0xb289dc61, 0x0e3b0f9b
.word 0xbb1a5189, 0x543671d3, 0x6f4bf4e3, 0xa5e28077, 0xa446e497, 0xf499f831, 0x06d1c210, 0xd6cfe3c6
.word 0xf88bb233, 0x9db44403, 0x2ea1b575, 0x1996620e, 0x3e507ec7, 0x66d96064, 0x67270cad, 0xa13edb3a
.word 0x6a9da817, 0x1428a404, 0xd8334e95, 0x9452c1c0, 0x92863fd1, 0xef36b3db, 0x90b0a9c1, 0xb0f9052a
.word 0x357a351e, 0xb91db2e7, 0x72bc4cda, 0x371d0a88, 0x5d88b432, 0x445841e4, 0x7c20e6ab, 0x5973bbbb
.word 0xbccd6e97, 0x8d503a8e, 0x5ef576b2, 0x18634bae, 0x7f6fb60e, 0xc54fb039, 0x2f32877b, 0xdc8828cd
.word 0xf4b352ac, 0x5a297392, 0x14b720cb, 0x5ddf42f7, 0x1a61ebbc, 0x83e95092, 0xe994f538, 0xdaf42bc4
.word 0xcaf790a2, 0x82e13db9, 0xc8649608, 0x21f6728d, 0x39c9e5b6, 0x465a4178, 0xe328a676, 0x0fcd1759
.word 0x736607cf, 0xa9f73cd9, 0x10f3dfd5, 0x705bbd00, 0xadf77906, 0x5e12215e, 0x7b26796a, 0x434a4bf7
.word 0x5ef02d79, 0xbf289161, 0xf542b21b, 0x3bf5d8cf, 0x3f7eace1, 0xe7c8578c, 0x7a91fcc0, 0xf33a87f5
.word 0x263945fa, 0x2e34de71, 0x774b7ebc, 0x6f9313e2, 0x93514772, 0x50ce9967, 0x8abd72bc, 0x86e595e0
.word 0x97074b0b, 0x93212bb6, 0x715be7de, 0xe266de02, 0xc78c7851, 0x6523f7fa, 0xc73ab1a3, 0xb0c175eb
.word 0x030b760b, 0xa2a976c2, 0x3d8b6449, 0x92718112, 0x6f49c3f7, 0x55d1495d, 0x8de98f8f, 0xe7862ec3
.word 0x0dde604a, 0x35113c73, 0x57e1ed70, 0x84e09530, 0x86de935d, 0xf8123eb1, 0x4f6107c5, 0x380534df
.word 0xa9e0ff18, 0x808072c8, 0x278105f8, 0xa70057b5, 0x9492a08b, 0x85971acc, 0x3a36ac0a, 0xa3ef5af1
.word 0x0db6fa25, 0xdf778a4c, 0x6f85aba2, 0xfdd44829, 0x0c103a34, 0x65d01797, 0x0c6bf24f, 0x72141137
.word 0x518a40c1, 0xaa786da2, 0x0fe4683a, 0xd4f26b8f, 0xcd2b2f1e, 0x22ac7ef4, 0x129c73bf, 0x33bf1f1c
.word 0x0ef8b036, 0xb2325ed7, 0xdaf6c8b1, 0x6518526b, 0x17946166, 0xb1ce2e5f, 0x47e4a72f, 0x5d4c150f
.word 0xc2d8e35b, 0x5deba14b, 0x6e2341c4, 0xa419c924, 0x0eda8d82, 0x513f4d4a, 0x9a5e905d, 0x8e8c5b13
.word 0x16f57f6e, 0x100eb4da, 0xc5abed10, 0x538277e9, 0x85ca81f6, 0x5975876a, 0x99a558cc, 0xae060a03
.word 0xbd9d2464, 0x21f4821d, 0xa263ff97, 0xbf3df8df, 0x5c24d6dd, 0x4a7fc7a7, 0x8d6dd34d, 0x33474e0c
.word 0xe32febf2, 0xdc8a93e5, 0x49eeed30, 0x546314a1, 0xfb40de23, 0x84d5c368, 0x026d0309, 0xe8b87991
.word 0x59302c46, 0xb64ccb90, 0xcc3fcf0b, 0x20a327de, 0x19712391, 0x25a2d4bc, 0x6178ef49, 0x325b76e5
.word 0x0b5f3024, 0xc66473cd, 0x0917c524, 0x77c1f03e, 0x2d33f658, 0x81ea1d0d, 0x281fed73, 0x9850a928
.word 0xa3fa47d4, 0xdece6d31, 0xbb5f5540, 0x260de650, 0xd4c29254, 0x921aee92, 0x01fdb95c, 0x89387849
.word 0x85bd05f5, 0x3872cb9a, 0xc980505f, 0xc626d97d, 0xfacec6b3, 0x4f10ec29, 0x8e220ab9, 0x180fb083
.word 0x9516e69b, 0x52257ed9, 0x8dc6ed9c, 0xec1dc013, 0x5fe02e32, 0xfb997036, 0x348e2761, 0x237cba91
.word 0xc6398a24, 0x2cf6fa9a, 0x8f05d17f, 0x24ebe9f7, 0x308c6691, 0xb1df8669, 0x17ea3ed2, 0xf18559f9
.word 0x43c022cd, 0x4a05048c, 0x8b5e86a1, 0xe96f9996, 0xa7ef2ade, 0x0c4b2ea3, 0x4e742809, 0x1e54915a
.word 0x4b36b96f, 0xb23ac115, 0xd262633d, 0xa57b4d8f, 0x25addb7a, 0x64776e27, 0x20817ad9, 0xde27474f
.word 0xd88c358c, 0xfb5eec1f, 0x4e0554f9, 0xb664db6e, 0x7e30bfd3, 0xbf385eb3, 0x22425cfe, 0x2a8c47ab
.word 0x62159326, 0x01b5fc89, 0x31aac0e5, 0x22246ff7, 0x5328d56f, 0xe37d4d01, 0x3992ede2, 0x95e6a904
.word 0xccf1b101, 0x4e5e299e, 0xc3f4a9f7, 0x2445a56f, 0xd1ea121a, 0xdb6da66c, 0x1f55e605, 0x9eab2c90
.word 0x65237e1b, 0x15671564, 0x46fa062c, 0x40d7f1a5, 0x66690974, 0x7564e0f9, 0x66fa79a2, 0xa3b17c9f
.word 0xab51c04a, 0x1bcf69e2, 0xed877637, 0xd10fade7, 0x3b27e44c, 0xb08cbd73, 0x17ab8c4f, 0xbfa8d4a6
.word 0xa987a600, 0xaffbf523, 0x0371e733, 0x2543c315, 0x949697a3, 0x80adb004, 0x9df1b6ca, 0x3cd76a73
.word 0x5e826504, 0xed1b8201, 0x434f2aea, 0xfddc8ed9, 0x4dea1ad9, 0xfa4d7cf0, 0xba501b76, 0x33dadcce
.word 0xb7abd757, 0xdd7ad982, 0xaebaf35c, 0x2af4dd47, 0x971a0613, 0x47e1a55a, 0x01aff389, 0x2b7bab0c
.word 0x3e4047cb, 0x729b570d, 0xdb045f62, 0x40fcc739, 0xd067e36c, 0x369b7269, 0x2c5985bb, 0x894c724f
.word 0xe957f5f4, 0x753a7f60, 0xaf145a5b, 0xa2dae3d3, 0x767a099e, 0xafedc5d0, 0x152d58ed, 0xd1ac10b5
.word 0x4a4b61c2, 0x48972d5c, 0x6f7d53bb, 0x131f600c, 0x41e656d6, 0xeee54913, 0x2491f0f0, 0xd314fcd2
.word 0xf4370d9d, 0xa3472137, 0xa9301ad1, 0x727b5463, 0xc46e08de, 0x8d5d74a9, 0x08b1de6f, 0xc54ebc33
.word 0x06087fe3, 0xac710848, 0xb7d26f41, 0xd3f1468d, 0x5805fc59, 0x73b467f4, 0x3b48b879, 0xd0fb7a6a
.word 0x52275ebd, 0xda29fe4d, 0xbb399ad6, 0x309da126, 0xc0ce04ce, 0x4fae8349, 0x787b4546, 0x006e75e1
.word 0x4d1f90b3, 0xb5be649c, 0x019be606, 0x6adde348, 0xc080f5ec, 0x74469154, 0xf030084c, 0x1bf2d3de
.word 0x0acf7227, 0xdd90852c, 0x8007e0fa, 0x8480c8df, 0x405d5bc0, 0x779613d4, 0x1d198b5c, 0x60c7726b
.word 0x6175531e, 0xd5c00d20, 0x6ba2df9c, 0x02efde4e, 0x32ad6ccd, 0xdc896de4, 0x3c041677, 0xb1e56dd3
.word 0xc09a52b6, 0xe89790b4, 0x6bae9417, 0x5df88b30, 0x886d6c12, 0x4d790278, 0xf8ce5003, 0xe33e1fd9
.word 0xb8b0d747, 0x069a4596, 0xddf6bba7, 0xd20643ab, 0x31e3919c, 0xf8fadd7f, 0x1580716d, 0xc3d4f2fa
.word 0x4655ffb9, 0x54fc32d0, 0x1eb20da9, 0x20be0ae5, 0x2540ec2a, 0xcef1782d, 0xca198d28, 0x0a6f2ed4
.word 0x53f0eaa1, 0x19c42085, 0x172320f9, 0x9b14ef72, 0x12c1d5d3, 0x389eb072, 0x236ba589, 0x5fcc83ca
.word 0xc20ca2e9, 0x7a2eda36, 0x45bd41b7, 0x66dbe789, 0x8ceb9cd1, 0x852d8a36, 0x78626959, 0x47ecfeb8
.word 0x1625d3c0, 0x2ef530ca, 0xda7f48e1, 0xfc77987f, 0xbb6e0457, 0x301456ab, 0xc0a953a1, 0x6a210d2a
.word 0x5a210630, 0xf2a71ef5, 0xd79c7903, 0x006fe703, 0x4c13be45, 0xfb2bf4f2, 0x2e3df7f0, 0x01717b96
.word 0x5260d420, 0xa69d179e, 0x96bc1f2a, 0x9341e854, 0xb147259a, 0xf49e68ef, 0xea3359dd, 0x2249787b
.word 0x8efc6012, 0xc265d511, 0xafc19d0a, 0x82474752
.section .region_1,"aw",@progbits;
region_1:
.word 0x38550e9e, 0x200bb613, 0x6d79f6df, 0xe9b877ae, 0xe24ea9f8, 0xbf4e1b6b, 0x7a808b8e, 0x7e60bade
.word 0x790b2d07, 0x1bf34418, 0x85d9ab61, 0x47acc655, 0x419e2748, 0x5b11caa5, 0x46adaed9, 0xac5b3f74
.word 0xc128c8e2, 0x7a509ebf, 0x682b2eb7, 0x5fa015d6, 0x00883c53, 0x75aeef18, 0x7d82f76e, 0xe4975549
.word 0x01a876f7, 0xd85cd939, 0x151d9a97, 0x3ec89570, 0x06e3dabd, 0x8d746e98, 0x40f09680, 0xecc6922f
.word 0xe43505ec, 0xd552d892, 0xc3b5cb6b, 0x19aa4935, 0x09634b57, 0x415e5b45, 0x81a7eea4, 0xa80d3e38
.word 0x6f703a31, 0x1bcb2cec, 0x9448f53b, 0xd24eb831, 0xb92b6f3f, 0x5708c79c, 0x33d83350, 0x06deda8f
.word 0x6d95b59e, 0x0f55427a, 0xf0466219, 0xb8d2fbfb, 0xc16cb06d, 0xe872580d, 0x020eb926, 0xb2d33d57
.word 0x967ae528, 0x1d54c927, 0x1e12a61f, 0x195872d5, 0x5d30aade, 0x3e2efae2, 0x7958f338, 0x80849da2
.word 0xde13f36c, 0x42a1f789, 0x9fc7e742, 0x3cb31a7d, 0x6267ee32, 0x70635bd0, 0x62eec034, 0x7b641af1
.word 0xf846c4fd, 0xe2ddf3d6, 0x63b7a32d, 0x2295a766, 0xd6ca821d, 0xdd62d6d9, 0x21c73f7e, 0x00657304
.word 0x1bd0dab5, 0xf9de2cee, 0xb77269be, 0xdf119ead, 0xb5e31b13, 0x297548ba, 0xe7c76a7b, 0x81af5969
.word 0x5d3d970c, 0x8132e949, 0x5845310c, 0x1ec5c984, 0xd3c085b4, 0xf8837826, 0x3d50a1ab, 0x9b6863b8
.word 0xb74cf84b, 0x9af9fceb, 0xf02baff4, 0x0f26941b, 0x078486a7, 0x2b14d3bd, 0xf805a4a6, 0xb466f486
.word 0x50b98c20, 0x4e160d78, 0x20f48cd0, 0xb701af82, 0x0f47d9b7, 0x23ef3e74, 0xa486ae30, 0xa661fe01
.word 0x71873a75, 0x8b73bfac, 0xb8a18c93, 0x5bbbccae, 0x0cfccec3, 0x78918ca6, 0x1a745394, 0x071bf593
.word 0xf7122172, 0x085b4a60, 0xd722d395, 0x485c8056, 0xeed12a2f, 0x0d93fa45, 0x091858a2, 0x8e05ac93
.word 0x1a0a78aa, 0x8e78a439, 0x1cdaf43f, 0x6f1f73a8, 0x51ed1829, 0x7e49a8c5, 0x92f92747, 0x24f73eb0
.word 0x76e23cd6, 0xcb4e7f10, 0x008aeeb6, 0xbad99584, 0xf0f22ad6, 0x009cfc09, 0xe864e1ef, 0x7114e06f
.word 0x4f6074d2, 0x2b8dce1e, 0x922369f3, 0xd1620da1, 0xa56bf6c7, 0xc6c6c117, 0x5a5fbfc5, 0x8426e84a
.word 0x77b11d37, 0x5ed12637, 0x4490b5fe, 0xbfcc6f43, 0x79d8a3d7, 0x3f0e155a, 0x74d70004, 0xab330590
.word 0xa2245128, 0x5c78cfbb, 0xb9608c42, 0x570385c3, 0x663fe371, 0x55680e8d, 0xc6a2b769, 0x5acb32c3
.word 0x995265dc, 0xe9e1ba7e, 0x20f30743, 0xbf16349c, 0xcb821772, 0xfc6e78f0, 0xb4e9db88, 0x6238f4a1
.word 0x5032e594, 0x14cf8033, 0x4906c631, 0x3cece41d, 0x0861fa9e, 0x3613edb9, 0xa4fd2aee, 0xbfcfaa99
.word 0x8428eb67, 0xbaa62cae, 0x752995fb, 0x3cf00e26, 0x33e6e90f, 0x4ec9a6c6, 0xf7d34235, 0x5276fa68
.word 0xc0b783e9, 0xf04c80c4, 0x456f93f6, 0x8d2056fd, 0x6869f5f4, 0x3837e38a, 0x84f4f8cb, 0x6df5ad92
.word 0xf8bb5d06, 0x19a78b10, 0xeb286e61, 0xa984a855, 0x1dd8e172, 0xb5d6298b, 0x3c7e9fd7, 0x0fac2c0f
.word 0xcd156c7c, 0x7bcdde37, 0x47d37f9d, 0xe7b5bf50, 0xa4c2b204, 0xbe6fe996, 0x31a74aff, 0x6f32b76e
.word 0xfac0899b, 0x4007515c, 0xf13848ad, 0x282dd00a, 0x9c3f709c, 0x5f66c1b8, 0x976a775a, 0xdfc7689b
.word 0x7efa279c, 0x71022b82, 0x563978c5, 0x2bc96376, 0x59e2f8ba, 0x11eb72bb, 0x9d500c78, 0x39867966
.word 0x47e6cbea, 0x9a6d130e, 0x460ddb1d, 0x53a05118, 0x282d0f9b, 0xeba7c494, 0xb0ecb48b, 0x4c46656a
.word 0x6572bf05, 0x729a1e27, 0x8b76ff4c, 0x3acddb4a, 0x7d7a7411, 0x58d22725, 0x767f1d80, 0xd9772c5d
.word 0x842c8a7e, 0xcd7da25b, 0xeb39e455, 0xa131085a, 0x361718b1, 0x5714d708, 0xb8ae3a1c, 0xb2b46e8d
.word 0x55491723, 0xfb09334e, 0xd1907024, 0x92501c69, 0x5febf3a2, 0x17d3b5e1, 0xbc1f47ae, 0x72fc64f7
.word 0x2f35e86c, 0x8e4a1800, 0xaa568830, 0xc9c9b569, 0x24fd61d3, 0xbf1d0123, 0xb7222532, 0x11393cc8
.word 0x1ef56ab4, 0x16dfa57c, 0xbe1c9724, 0x8f5e8939, 0x4a70b2cc, 0x0e59b79d, 0xb8eee6e8, 0xaa48b7ae
.word 0x0b174758, 0x423d96c4, 0x0a1a42c3, 0x2cc9c92a, 0xa18ac02d, 0x51f5f293, 0x450a7a18, 0x148162aa
.word 0x935dc3a8, 0xbeefe765, 0x0c28826c, 0xd298fd06, 0xc340d3cc, 0xb02ca42a, 0xff36940c, 0xce20025c
.word 0x13c5f46c, 0xc507e614, 0xd02c8831, 0xed167022, 0x8510c076, 0x3c96463e, 0x6cb8a0e6, 0x16dcadc5
.word 0xf787f3f4, 0x0340041a, 0xbdd05611, 0xc9497775, 0xfc0caefe, 0x7642d390, 0x771de589, 0x5a47fa07
.word 0x704c6670, 0x5f5ca802, 0x3c1fdc92, 0xa911f866, 0x23502286, 0x04121a2d, 0xcbaa6423, 0x05a5aead
.word 0xe22b636e, 0xa0bb17fc, 0x2f38a9fb, 0x12c88bd8, 0xcdf84ef3, 0x20aa1fb8, 0x03c128e9, 0xae001152
.word 0x45cbcde1, 0x555bdd41, 0x09ae68cf, 0xc0217156, 0x7a8a89e6, 0x27f7e3e7, 0xab852927, 0x8ed85cf3
.word 0x876ebc34, 0xcf524b16, 0x681dcf1c, 0x0500192c, 0xb86b5cbc, 0x406ef4a2, 0xa3b89f67, 0x66a989b1
.word 0x5f7687fd, 0xf0ea1490, 0x2e92429b, 0xe3a526c8, 0x6b1e8d77, 0x82de6b13, 0xfd8a9d69, 0x2232f400
.word 0x630c6090, 0xd27ecdfc, 0x305dc9e6, 0xd61136a1, 0x9f6a31d7, 0x83906803, 0xe83a8e87, 0x670387cb
.word 0xd7ef71c8, 0xc29526d5, 0x73777c02, 0x43b5e906, 0xe9ccd223, 0xa5348403, 0x4704c611, 0xe8e77d4b
.word 0x187a6f09, 0x1a48ba0b, 0x136a4b16, 0xfab66b63, 0xe630128d, 0x3ddf80af, 0x21fd014a, 0xab9e52c8
.word 0x017acd94, 0x4b85fc58, 0x46e9fb49, 0x2ea862a1, 0x8fca0275, 0x7b63213c, 0x463d244a, 0xcef9b5e0
.word 0x31dc4b22, 0x455a98eb, 0x478c49bb, 0xb87c0254, 0x7b5bcfbb, 0x777a4bda, 0x5899a792, 0x6387926c
.word 0x509817be, 0x9505134d, 0x19a7ba86, 0x803e9e14, 0xa7b6403b, 0x8fd46688, 0x7f3d8d9a, 0x33dc174e
.word 0x96bd8872, 0x674c1533, 0x16288641, 0x2a33cb47, 0x2023a496, 0xbf689096, 0x0b5a52f2, 0x437cc180
.word 0xbf64a69b, 0xd75e1242, 0x8fc3e73d, 0xe066bf8b, 0x4438af47, 0x4e44becf, 0x5af8e61e, 0x0d0a41b1
.word 0xa74ce0f3, 0x74ff535a, 0xcb5910e2, 0xfc387e0f, 0x502f5e2d, 0xb29c6c38, 0x99078dfe, 0x13540bac
.word 0xa055bcf3, 0x6848a167, 0x574575aa, 0x8c3a6e5c, 0x4994981b, 0xd0ae08ad, 0xbd69dbe5, 0x7ee6c89f
.word 0x61285ad2, 0x0c1c8c34, 0xcbac0ffd, 0xc3d2c7b2, 0xd52eeacc, 0xfe3c1905, 0xfe31f654, 0x6a5be417
.word 0x43602c93, 0x90939276, 0xec6fd6b0, 0x5cb3b51a, 0x3f6067b8, 0x5b2ae629, 0xf7016aae, 0xc96d5a23
.word 0x210c5ae0, 0x3a443ca1, 0x892a602e, 0x865c6d2c, 0xe789d736, 0x41df5741, 0xe25d5051, 0x18e0de2b
.word 0x618c05a3, 0x69aa2e5c, 0x76d31641, 0xb3bddd36, 0xfc90f263, 0xc166ed92, 0x7b08da7e, 0x412fa17b
.word 0xa5a692d5, 0x6990a128, 0xbe5201e6, 0x84f80f47, 0xc9d6de1d, 0x93b83f40, 0x40a93c1e, 0xab0b76c6
.word 0x3ab5c1f9, 0x645ec27c, 0x4fb13989, 0x173215ec, 0xe3132e43, 0x7722f1e6, 0x124619ed, 0x30760438
.word 0x70eb5cdc, 0x07912913, 0xc12a9c48, 0x6c4ce709, 0xf5c13470, 0x212501ae, 0x7bcea95f, 0x8d8398a1
.word 0x94eaa609, 0x6d4e2a5b, 0xfcd3f74e, 0x8ee1d933, 0x78cfb027, 0xfc8964be, 0x5a9c5433, 0xf4cd5b4c
.word 0x0845eac3, 0xa2ce2419, 0xdee5ae84, 0x927a9d60
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
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
                  add x16, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  add x16, x19, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x5, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x5, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x5, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x5, x20, ecall_handler
                  li x20, 0x1
                  beq x5, x20, instr_fault_handler
                  li x20, 0x5
                  beq x5, x20, load_fault_handler
                  li x20, 0x7
                  beq x5, x20, store_fault_handler
                  li x20, 0xc
                  beq x5, x20, pt_fault_handler
                  li x20, 0xd
                  beq x5, x20, pt_fault_handler
                  li x20, 0xf
                  beq x5, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x19, x16, zero
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
                  add x19, x16, zero
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
                  add x19, x16, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x19, x16, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x19, x16, zero
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
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x19, x16, zero
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
