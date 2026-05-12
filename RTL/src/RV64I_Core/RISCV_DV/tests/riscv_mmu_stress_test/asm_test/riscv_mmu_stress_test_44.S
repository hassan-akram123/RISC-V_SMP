.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x9e39ee9a
                  li x1, 0xf6f4393e
                  li x2, 0xf202dac7
                  li x3, 0xf3500060
                  li x4, 0x0
                  li x5, 0xf545bc5
                  li x6, 0x338b1c4
                  li x7, 0x4fb8c126
                  li x8, 0x0
                  li x9, 0xe4f37f6
                  li x10, 0x6
                  li x11, 0x0
                  li x12, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x8
                  li x16, 0x0
                  li x18, 0x0
                  li x19, 0xf9a678fe
                  li x20, 0xf7ccb7c6
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x1
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xd
                  li x27, 0x0
                  li x28, 0xf328c07b
                  li x29, 0xc39386f7
                  li x30, 0xae82f4da
                  li x31, 0x80000000
                  la x13, user_stack_end
main:             la           t6, region_0+973 #start riscv_load_store_hazard_instr_stream_1
                  lh           sp, 1(t6)
                  lw           a4, 11(t6)
                  lb           tp, -11(t6)
                  sh           tp, -11(t6)
                  lhu          sp, -11(t6)
                  lb           sp, 12(t6)
                  lb           a2, 12(t6)
                  and          t1, a4, a7
                  sb           a2, -8(t6)
                  lbu          t1, 0(t6)
                  lb           s10, 0(t6)
                  lbu          a2, 0(t6)
                  lb           t0, 10(t6)
                  sb           s6, -14(t6)
                  lui          t1, 797401
                  lbu          s7, 9(t6)
                  and          s6, t4, ra
                  sb           tp, 10(t6)
                  lh           s2, -7(t6) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+1920 #start riscv_load_store_rand_instr_stream_3
                  lb           t4, 41(tp)
                  sll          s6, a7, s2
                  addi         s1, t6, -1602
                  addi         t0, a0, 685
                  lbu          s1, 26(tp)
                  lb           s2, -20(tp)
                  sb           s0, 11(tp)
                  xor          t1, t5, t3
                  auipc        zero, 632162
                  lbu          t3, 57(tp)
                  sra          s10, ra, s7
                  sltu         t1, a3, ra
                  ori          a2, t5, -288
                  lbu          s2, 10(tp)
                  sb           s7, 0(tp)
                  lbu          s4, 40(tp)
                  srli         s9, s2, 2
                  andi         s1, t5, 1585
                  lhu          t4, -26(tp)
                  sh           a3, -16(tp)
                  lhu          gp, 62(tp)
                  lb           s7, -37(tp)
                  sub          s6, gp, s7
                  addi         a4, a3, -681
                  lh           s1, 26(tp)
                  sb           ra, -47(tp)
                  sb           s3, -7(tp)
                  srl          s4, t1, sp
                  sb           s9, -9(tp)
                  lui          s10, 529704
                  lbu          gp, 57(tp)
                  ori          gp, t3, 1202
                  sb           s9, 63(tp)
                  sltu         a0, zero, zero
                  sh           tp, 50(tp)
                  xor          a6, s9, t0
                  lh           s7, 64(tp)
                  sb           s8, -51(tp)
                  sub          s9, s7, ra
                  sb           a1, -21(tp)
                  lbu          s3, -3(tp)
                  sb           tp, 14(tp)
                  lbu          s0, 46(tp)
                  sw           a4, -28(tp)
                  sb           t1, 30(tp)
                  lhu          a4, -54(tp) #end riscv_load_store_rand_instr_stream_3
                  la           s11, region_0+181 #start riscv_load_store_hazard_instr_stream_4
                  srai         t4, s7, 20
                  sw           t3, -61(s11)
                  sb           sp, -61(s11)
                  auipc        t0, 236077
                  sb           t2, -61(s11)
                  lb           s6, -61(s11)
                  lhu          t6, -61(s11)
                  lh           t3, -61(s11)
                  srli         a0, t2, 27
                  lw           a1, -61(s11)
                  sh           a4, -61(s11)
                  lh           s7, -61(s11)
                  lhu          a5, -61(s11)
                  slt          s6, s2, sp
                  lbu          sp, -61(s11)
                  sh           a5, -61(s11)
                  sb           a3, -61(s11) #end riscv_load_store_hazard_instr_stream_4
                  la           t5, region_1+1219 #start load_store_instr_stream_1
                  sh           s1, 7(t5)
                  sh           s0, 27(t5)
                  la           s10, region_1+1688 #start load_store_instr_stream_3
                  la           a4, region_1+741 #start load_store_instr_stream_2
                  lb           s7, 142(a4)
                  la           s3, region_1+482 #start load_store_instr_stream_0
                  lb           a2, 1297(s3)
                  lb           s5, 1336(s3)
                  lb           gp, 248(a4)
                  sb           a3, -72(a4)
                  sb           s8, 25(s10)
                  lb           s7, 20(t5)
                  lhu          a5, 29(t5)
                  sh           s4, 406(s3)
                  lbu          t2, -32(a4)
                  lh           s4, -145(a4)
                  lb           s5, 7(s10)
                  lb           zero, -1(t5)
                  sb           a7, 49(t5)
                  lb           a0, -100(a4)
                  lb           s7, -1(s10)
                  sb           t3, 551(s3)
                  lb           s11, 32(a4)
                  sb           tp, -40(s10)
                  sb           t3, 19(s10)
                  sb           s1, 1340(s3)
                  sb           s9, 34(a4)
                  sh           t0, -179(a4)
                  sh           s11, -55(t5)
                  lb           ra, 251(a4) #end load_store_instr_stream_2
                  lbu          t1, 2(t5) #end load_store_instr_stream_1
                  sw           a7, -20(s10) #end load_store_instr_stream_3
                  sb           tp, -139(s3)
                  lbu          gp, -273(s3) #end load_store_instr_stream_0
                  la           a4, region_1+509 #start load_store_instr_stream_0
                  lb           t0, 1(a4)
                  sb           a3, -10(a4)
                  la           t1, region_1+1860 #start load_store_instr_stream_1
                  lhu          sp, -9(a4)
                  lbu          s4, -5(a4)
                  lbu          a2, -2(a4)
                  lbu          s1, 8(a4)
                  lb           s6, -4(a4)
                  lw           sp, 8(t1)
                  sb           a5, -3(a4)
                  lb           t6, 10(t1)
                  sb           a2, -3(t1)
                  lbu          s0, -9(t1)
                  lh           t4, 13(a4)
                  sb           s4, -13(t1) #end load_store_instr_stream_1
                  sb           ra, 8(a4) #end load_store_instr_stream_0
                  la           sp, region_1+1866 #start riscv_load_store_hazard_instr_stream_3
                  andi         zero, t5, -1902
                  lbu          t3, 3(sp)
                  lbu          t2, 3(sp)
                  lbu          t1, 3(sp)
                  sltu         a0, s3, s9
                  sltu         zero, tp, s7
                  sb           gp, 3(sp)
                  lb           t1, 3(sp)
                  lbu          tp, 3(sp)
                  xor          t0, a3, a2
                  lb           s10, 3(sp)
                  or           t4, a1, t0
                  slli         t4, a3, 21
                  lb           tp, 14(sp)
                  sb           t5, 14(sp)
                  lb           t4, -15(sp)
                  sb           a7, -15(sp)
                  lb           a5, -15(sp)
                  sb           t5, -1(sp)
                  lbu          s10, -1(sp)
                  lb           s9, -15(sp)
                  xori         s3, tp, -1824
                  lbu          s0, 16(sp)
                  lbu          s11, 16(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           s10, region_1+165 #start load_store_instr_stream_1
                  la           sp, region_1+143 #start load_store_instr_stream_4
                  lbu          s11, 1493(sp)
                  la           s2, region_1+1268 #start load_store_instr_stream_2
                  lbu          s7, -7(s10)
                  la           s1, region_1+1828 #start load_store_instr_stream_0
                  lbu          s4, 65(sp)
                  sb           a0, -16(s10)
                  sh           t4, -450(s1)
                  la           a6, region_1+1938 #start load_store_instr_stream_3
                  sb           t0, 51(a6)
                  sb           tp, -2(s10)
                  lb           s7, -135(s2)
                  lbu          a2, -2(s10)
                  lb           s7, -9(s10)
                  lbu          tp, 15(a6)
                  sb           s4, -1761(s1)
                  sh           s6, 226(s2)
                  lbu          t3, -1(s10)
                  lb           s9, 0(a6)
                  lh           a5, -50(s2)
                  lbu          t2, -4(s10)
                  sh           sp, 30(s2)
                  sb           s1, 11(sp)
                  sb           s8, -17(a6)
                  lhu          t3, 1403(sp)
                  sb           s10, 137(s2)
                  sb           s10, -62(s2)
                  lbu          t2, -1485(s1)
                  lb           s4, -123(s2)
                  lb           s7, 12(s10) #end load_store_instr_stream_1
                  lh           t4, -2(a6)
                  lh           tp, -1016(s1)
                  sb           a5, 1249(sp)
                  lbu          t6, 47(a6)
                  lbu          t3, 1659(sp)
                  sb           a0, 171(s2)
                  lw           a4, -42(a6) #end load_store_instr_stream_3
                  lh           t4, 0(s2) #end load_store_instr_stream_2
                  lbu          t2, 837(sp) #end load_store_instr_stream_4
                  lh           a0, -994(s1) #end load_store_instr_stream_0
                  la           tp, region_0+316 #start load_store_instr_stream_1
                  la           t0, region_0+422 #start load_store_instr_stream_4
                  lbu          ra, -41(t0)
                  la           s5, region_0+1159 #start load_store_instr_stream_2
                  sb           s9, -57(t0)
                  sh           tp, -6(tp)
                  la           s2, region_0+941 #start load_store_instr_stream_3
                  lb           a2, -24(s5)
                  sb           s9, -5(tp)
                  sb           s10, 31(s2)
                  lbu          s4, -28(t0)
                  la           s0, region_0+1662 #start load_store_instr_stream_0
                  sb           s3, -12(tp)
                  lbu          a1, 15(tp)
                  lbu          s6, -1137(s0)
                  sb           t5, 24(s2)
                  lbu          t4, 14(tp)
                  lh           gp, 59(s5)
                  sh           a2, 61(s2)
                  lw           s4, 11(s2)
                  sb           s8, -1373(s0)
                  sh           s2, -59(s5)
                  sb           s11, 12(tp)
                  lb           a2, -1065(s0)
                  lb           a2, 56(s2)
                  lb           t5, -1409(s0)
                  lb           s9, 40(s5)
                  lbu          t6, -841(s0)
                  lhu          t5, -35(s2)
                  sb           s10, 2(tp)
                  lw           a2, 1(s5)
                  lw           sp, 26(t0)
                  lbu          t3, 55(s2)
                  sb           s3, 41(s5)
                  lhu          a2, -48(t0)
                  lbu          a2, -48(s5)
                  lhu          ra, -648(s0)
                  sw           t0, -1522(s0)
                  lb           a0, -45(t0)
                  sw           s11, 0(tp)
                  sw           t6, 8(tp)
                  lb           a0, -45(s2) #end load_store_instr_stream_3
                  sw           s4, -8(tp) #end load_store_instr_stream_1
                  lbu          ra, 42(s5) #end load_store_instr_stream_2
                  lhu          t1, -1002(s0)
                  lw           s6, -6(t0) #end load_store_instr_stream_4
                  lbu          t6, -997(s0) #end load_store_instr_stream_0
                  la           t0, region_0+53 #start riscv_load_store_hazard_instr_stream_5
                  sb           s4, 1724(t0)
                  slt          s0, a4, a2
                  lbu          s11, 1836(t0)
                  lb           a0, 230(t0)
                  xor          s2, t4, a5
                  lb           t1, 534(t0)
                  lbu          s7, 534(t0)
                  sb           a1, 26(t0)
                  lb           s2, 1805(t0)
                  lb           s1, 1189(t0)
                  lhu          a1, 1657(t0)
                  lb           t1, 537(t0)
                  sb           t1, 1629(t0)
                  lb           a6, 1838(t0)
                  lbu          t2, 1838(t0)
                  lb           t2, 561(t0)
                  sh           gp, 845(t0)
                  sb           t2, 1019(t0)
                  sb           s10, 1427(t0)
                  sh           a1, 1427(t0)
                  lb           t2, 1427(t0) #end riscv_load_store_hazard_instr_stream_5
                  la           s4, region_1+1036 #start riscv_load_store_rand_instr_stream_1
                  sltu         t3, zero, a5
                  lui          s2, 523669
                  lbu          s11, 18(s4)
                  lbu          t3, -2(s4)
                  lb           s3, -503(s4)
                  sub          s10, t6, s2
                  lhu          s0, -102(s4)
                  srl          t0, s6, sp
                  and          s7, s1, a7
                  lbu          a1, 683(s4)
                  lb           t2, -261(s4)
                  sb           a2, 883(s4)
                  sb           sp, 261(s4)
                  sh           zero, 608(s4)
                  addi         a1, tp, -173
                  lhu          s10, 912(s4)
                  sll          t5, s11, a5
                  sub          s11, t5, ra
                  add          s11, s3, s8
                  sw           t3, -920(s4)
                  slli         zero, a6, 6
                  lbu          s7, 924(s4)
                  lbu          a6, 870(s4)
                  sb           a7, 531(s4)
                  sb           t4, 771(s4)
                  srl          s6, sp, t1
                  lb           a1, -134(s4)
                  xor          t6, tp, s7
                  sb           gp, -952(s4)
                  sltu         t1, t4, t6
                  lb           s6, -493(s4)
                  sb           t2, 268(s4)
                  xor          s7, ra, zero
                  srai         t1, a3, 9
                  lb           s0, -245(s4)
                  sltu         s2, a2, s0
                  lbu          gp, -862(s4)
                  xori         s5, s0, 863
                  sltiu        a0, s11, -293
                  sll          t1, a3, s10
                  sll          gp, s11, a6
                  lb           zero, 397(s4)
                  add          a1, s8, a0
                  auipc        s0, 917422
                  or           s1, a6, s0
                  and          s1, a1, s2
                  or           t6, a5, s9
                  lbu          t0, 275(s4) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+90 #start riscv_load_store_hazard_instr_stream_2
                  sb           s3, -31(sp)
                  auipc        a6, 45763
                  add          t2, a6, a0
                  lb           a5, -31(sp)
                  lb           s4, -31(sp)
                  sb           t2, -31(sp)
                  sb           s4, -31(sp)
                  lb           tp, -31(sp)
                  lb           s7, -31(sp)
                  lbu          s10, -31(sp)
                  sra          s11, a2, t6
                  lbu          t3, -31(sp)
                  lb           t1, -31(sp)
                  lb           s11, -31(sp)
                  lbu          t6, -31(sp)
                  add          s2, a5, t3
                  lbu          t3, -31(sp)
                  lb           a4, -31(sp)
                  lb           t1, -39(sp)
                  lbu          s6, -39(sp)
                  andi         t3, a4, -1471
                  sb           s8, -27(sp)
                  sb           s8, -27(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           s7, region_1+246 #start load_store_instr_stream_1
                  la           sp, region_1+1661 #start load_store_instr_stream_0
                  la           s3, region_1+1345 #start load_store_instr_stream_2
                  sb           gp, 11(s7)
                  lb           s11, 76(s3)
                  sb           a0, -47(sp)
                  sb           a0, 248(s7)
                  lbu          t4, 41(sp)
                  lbu          t6, 194(s3)
                  lh           t1, 66(s7)
                  lbu          t6, -122(s3)
                  lhu          zero, 47(sp)
                  lbu          t3, -112(s7)
                  lb           s10, -148(s7)
                  lb           s6, 62(s3)
                  lb           tp, 69(s7)
                  sb           t4, 136(s3) #end load_store_instr_stream_2
                  lb           ra, -63(s7)
                  lh           a6, 1(sp)
                  lhu          a5, 148(s7) #end load_store_instr_stream_1
                  lb           a1, -47(sp)
                  lb           a2, -63(sp) #end load_store_instr_stream_0
                  la           sp, region_1+460 #start riscv_load_store_rand_instr_stream_5
                  slti         s3, s7, -2007
                  slli         s11, tp, 28
                  srai         s11, s7, 5
                  slt          gp, s0, sp
                  sb           a2, 3(sp)
                  and          s5, zero, s10
                  addi         t3, t5, -112
                  or           s1, gp, s3
                  lb           t3, -13(sp)
                  nop
                  srl          s2, a7, a4
                  sltiu        s6, s10, 298
                  add          a1, a0, s6
                  xor          zero, s4, zero
                  lb           s1, 5(sp)
                  sh           gp, -4(sp)
                  srai         s1, sp, 1
                  sh           s0, 8(sp)
                  sra          s7, a5, a1
                  sltu         s11, s8, t1
                  sltiu        a2, gp, 244
                  sb           a6, 3(sp)
                  lhu          s9, -16(sp)
                  xori         a1, a4, 135
                  and          a2, t3, t0
                  sb           ra, -9(sp)
                  sub          t0, s4, a6
                  sb           t3, -7(sp)
                  slli         t6, tp, 24
                  xori         gp, a4, -224
                  or           a1, s1, t5
                  lbu          s2, -5(sp)
                  lb           t1, -13(sp)
                  slli         a6, t0, 5
                  or           t6, s7, ra
                  lb           tp, 11(sp)
                  lui          s5, 453790
                  sll          s3, a6, tp
                  addi         t3, a5, -273
                  sra          t4, s8, s4
                  nop
                  and          t5, s3, t2
                  sb           s5, 13(sp)
                  lbu          s7, -11(sp)
                  lbu          s11, 7(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1883 #start riscv_load_store_rand_instr_stream_4
                  addi         s0, s8, 1513
                  addi         s7, a1, -1860
                  lbu          t5, -54(sp)
                  add          s11, s10, t4
                  srai         a2, t2, 22
                  sb           t2, -57(sp)
                  sh           s7, -47(sp)
                  lb           s9, -48(sp)
                  lb           t0, -45(sp)
                  nop
                  andi         t0, a4, 126
                  sltiu        s5, s8, -202
                  slt          a2, ra, gp
                  sltu         ra, s1, a6
                  xor          t0, zero, a6
                  add          a1, s3, s11
                  sb           a5, -10(sp)
                  sh           s0, 19(sp)
                  lui          s11, 987382
                  sw           s2, -15(sp)
                  lb           s5, -24(sp)
                  andi         s7, s9, 1726
                  nop
                  slt          s2, s3, t0
                  sra          t6, s1, a0
                  lhu          a4, 21(sp)
                  sw           s2, 53(sp)
                  lb           s0, 51(sp)
                  lbu          gp, 62(sp)
                  xori         s10, zero, 1167
                  slt          a1, s3, t0
                  sb           tp, -8(sp)
                  add          a1, gp, a3
                  lbu          a0, 28(sp)
                  sltiu        s5, s1, -381
                  srli         ra, s5, 7
                  nop
                  ori          t2, tp, 454
                  sb           a0, 64(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1934 #start riscv_load_store_hazard_instr_stream_0
                  lh           s2, -10(sp)
                  lh           s2, -10(sp)
                  lw           t0, -10(sp)
                  lh           a4, -10(sp)
                  lhu          a5, -10(sp)
                  lbu          t5, -10(sp)
                  lhu          tp, -10(sp)
                  lb           t5, -10(sp)
                  sb           gp, -10(sp)
                  sltu         a0, a1, a6
                  lb           s7, 0(sp)
                  sra          s5, s1, ra
                  lb           s1, 0(sp)
                  sb           t6, 0(sp)
                  lui          s11, 252673
                  lbu          s6, 0(sp)
                  sb           s10, 0(sp)
                  sh           s5, 0(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s7, region_1+542 #start riscv_load_store_rand_instr_stream_2
                  sh           sp, 40(s7)
                  sltu         t2, a7, sp
                  lb           t6, -33(s7)
                  lbu          t4, 16(s7)
                  andi         s0, s11, 972
                  slli         s3, a4, 28
                  nop
                  srl          zero, s0, s11
                  ori          s4, s8, -667
                  nop
                  lb           t2, -31(s7)
                  xori         a1, s8, -1143
                  slt          t5, s2, s8
                  sb           a5, 25(s7)
                  sb           s7, -14(s7)
                  srli         s5, a1, 31
                  lb           ra, -29(s7)
                  lbu          ra, 59(s7)
                  andi         s4, s4, 1484
                  and          s6, a7, a2
                  ori          t6, t4, -1871
                  lb           s6, -42(s7)
                  lb           sp, -63(s7)
                  add          s10, t0, a5
                  xori         zero, a1, -173
                  lbu          t2, -2(s7)
                  andi         s9, a3, 1174
                  lbu          t2, -50(s7)
                  slt          zero, zero, s10
                  sub          tp, t1, a4
                  sll          s0, t6, tp
                  sb           t0, 61(s7)
                  lb           a4, -52(s7)
                  xor          s10, s7, a0
                  sh           t5, -36(s7)
                  lb           a1, -37(s7)
                  auipc        s3, 727709
                  lb           t0, 21(s7)
                  sh           a0, -56(s7)
                  lb           t6, -61(s7)
                  sra          a2, a0, t5
                  add          s5, t3, s7
                  srli         zero, t6, 14
                  lb           s5, -17(s7)
                  srai         s6, a1, 30
                  lb           zero, 17(s7)
                  xor          a0, s9, s2
                  lb           a5, -11(s7) #end riscv_load_store_rand_instr_stream_2
                  add          s5, t6, a7
                  blt          s1, t4, 5f
                  addi         tp, s6, -187
                  slli         t3, s8, 18
                  xor          t5, s10, s7
5:                srl          t5, s7, s2
                  bge          s5, a7, 19f
                  or           t6, t0, s11
                  slli         t6, ra, 14
                  sll          a6, s0, t4
                  bne          t5, a4, 22f
                  blt          s2, t5, 28f
                  andi         s6, a6, -1697
                  sltiu        a2, a1, 1398
                  lui          a1, 910766
                  slt          t3, a3, t1
                  xor          a2, a4, s5
                  ori          a6, a5, 891
                  blt          a5, s11, 26f
19:               slli         a6, a6, 9
                  slti         sp, sp, 829
                  nop
22:               add          s5, t5, zero
                  sra          s9, a6, a5
                  and          a6, a4, s5
                  ori          s0, t6, -994
26:               srli         s3, t0, 3
                  bne          a6, s10, 42f
28:               slli         s10, s4, 16
                  srli         t6, t4, 1
                  bge          t0, s9, 37f
                  addi         t0, a0, 338
                  nop
                  slti         t2, a0, 298
                  xor          a0, a7, ra
                  blt          t1, t3, 53f
                  add          t0, ra, s9
37:               sub          s1, s9, s1
                  srl          s6, s4, s8
                  bne          a3, sp, 56f
                  nop
                  slt          s10, a5, s2
42:               xori         a6, a5, 1187
                  sltu         sp, tp, t2
                  sra          s9, t4, s5
                  sltiu        gp, s11, 1394
                  beq          a4, s7, 61f
                  slli         ra, a4, 2
                  srl          a1, a1, a4
                  srl          a5, a7, s3
                  and          t1, a1, a6
                  bltu         t2, s1, 66f
                  addi         tp, s7, -918
53:               sltiu        tp, s0, -750
                  and          s9, a4, a2
                  bne          t3, s9, 62f
56:               bltu         s6, a0, 64f
                  blt          s0, s0, 61f
                  lui          s10, 641621
                  addi         t6, gp, -39
                  ori          t5, s1, -1515
61:               blt          s2, t4, 65f
62:               slli         zero, t4, 2
                  srai         s9, a7, 10
64:               bltu         ra, s6, 70f
65:               bne          t4, s3, 84f
66:               slli         s5, t6, 30
                  auipc        zero, 593005
                  blt          t0, s0, 85f
                  sll          t0, t5, gp
70:               bgeu         a0, a2, 78f
                  sll          sp, s1, ra
                  slt          s5, s11, t1
                  sltu         t5, tp, s4
                  bge          a5, a0, 92f
                  addi         s9, a7, -781
                  srl          zero, a1, a6
                  add          zero, s9, s5
78:               ori          s5, s2, 796
                  sltu         s6, s3, a7
                  srai         t0, t4, 28
                  ori          a5, t5, -1494
                  beq          gp, s11, 86f
                  srai         a5, a4, 17
84:               sll          t1, s10, a4
85:               or           t4, s1, s1
86:               srl          a2, a3, t3
                  srl          s9, a2, a7
                  slli         s1, ra, 15
                  or           s0, zero, s8
                  xori         t5, s7, -1586
                  sra          tp, s8, s2
92:               sltu         sp, a7, s1
                  bne          ra, s8, 96f
                  ori          s5, t3, 2011
                  sltiu        zero, s2, 1224
96:               and          t0, s0, zero
                  nop
                  sll          s0, t6, a2
                  sltiu        a4, s2, -1497
                  sltiu        a0, gp, 77
                  xori         a4, t4, -1953
                  bltu         s7, sp, 114f
                  or           tp, s3, s2
                  xori         a1, s3, -1869
                  bltu         s5, a0, 108f
                  addi         s2, s9, 1175
                  xor          t1, s2, a2
108:              and          a2, s10, a5
                  add          zero, gp, sp
                  sub          a6, s9, t1
                  auipc        a5, 452931
                  auipc        t1, 1043032
                  nop
114:              slti         gp, a2, -132
                  srli         a5, a6, 12
                  bltu         s2, s9, 123f
                  lui          t2, 808060
                  slli         s9, a0, 19
                  and          s4, t5, tp
                  srl          gp, a4, s7
                  sub          t4, t5, s4
                  auipc        s11, 1018709
123:              sll          t3, t1, t0
                  xori         ra, a7, 1273
                  srli         t5, zero, 2
                  xor          a0, zero, zero
                  blt          s11, s8, 138f
                  sra          a5, sp, t5
                  ori          s6, a4, -546
                  lui          s2, 43242
                  lui          t0, 641761
                  slti         s6, s3, 29
                  xor          a0, sp, sp
                  sltiu        ra, sp, -467
                  or           ra, tp, ra
                  srl          t1, s4, t2
                  slli         a4, sp, 28
138:              beq          t6, s11, 143f
                  ori          t2, t4, 559
                  bgeu         s6, gp, 148f
                  and          s9, s5, a7
                  sltu         s10, tp, s2
                  la           a2, region_0+1020 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, -46(a2)
                  sb           sp, -36(a2)
                  srl          gp, t6, a3
                  srli         t5, s5, 4
                  sra          s6, s10, t1
                  slli         gp, a6, 30
                  or           s7, s10, s1
                  sltiu        tp, s3, -522
                  lb           a4, 53(a2)
                  xori         s10, ra, -874
                  lb           tp, -32(a2)
                  lbu          gp, 54(a2)
                  slt          a1, a3, s2
                  sb           t0, 42(a2)
                  sltiu        a4, t4, 1352
                  sh           ra, 18(a2)
                  lbu          t2, -27(a2)
                  lb           t5, -15(a2)
                  sh           tp, -12(a2)
                  sltiu        t3, s3, 244
                  lbu          a6, -35(a2)
                  lb           s1, 45(a2)
                  lbu          t4, 43(a2)
                  nop
                  andi         s1, s0, 302
                  lb           a4, -23(a2)
                  lh           t1, -52(a2)
                  xor          t4, s9, t0
                  lb           s6, -5(a2)
                  and          s11, tp, s4
                  sb           t5, 39(a2)
                  nop
                  lb           zero, 42(a2)
                  lhu          s9, -16(a2)
                  lb           a6, 7(a2)
                  addi         t0, s4, -1602
                  lb           s3, -42(a2)
                  add          tp, s9, t5
                  sb           a1, 13(a2)
                  lh           s9, 36(a2)
                  sb           t3, 9(a2)
                  lw           t2, -12(a2)
                  andi         t6, s2, -497
                  sh           a2, 10(a2)
                  lb           s4, 51(a2)
                  lbu          gp, -15(a2)
                  lhu          a6, 30(a2)
                  nop
                  lbu          t0, -56(a2) #end riscv_load_store_rand_instr_stream_0
143:              slti         t2, s11, -1126
                  and          t5, zero, t0
                  sltu         s4, a2, a5
                  or           s9, ra, t6
                  slli         a1, s7, 20
148:              and          t4, tp, t4
                  blt          s5, sp, 156f
                  srli         sp, a3, 18
                  xori         s6, a7, 2037
                  nop
                  slt          ra, s5, s5
                  addi         s3, s4, 1214
                  bne          a5, t1, 157f
156:              bge          t2, s6, 173f
157:              srai         sp, s9, 19
                  slt          s11, s0, a5
                  auipc        a2, 1021102
                  bne          a0, a1, 165f
                  xori         sp, s9, 148
                  slli         s11, ra, 4
                  srli         s11, s6, 12
                  beq          s7, t2, 177f
165:              xori         tp, s2, -1454
                  srl          t4, t6, s4
                  sra          sp, a0, s8
                  sll          s3, t2, t0
                  slt          t4, a1, s2
                  slli         s0, a0, 8
                  andi         s2, s4, 1491
                  bgeu         s3, s2, 179f
173:              ori          t6, s11, -1904
                  andi         a4, s7, 135
                  bne          s4, s9, 179f
                  or           s3, tp, a2
177:              slt          sp, t0, s9
                  bge          t3, gp, 182f
179:              srl          a5, t0, a4
                  blt          s2, s8, 197f
                  srli         t5, tp, 17
182:              sll          s5, zero, a5
                  xori         s9, a1, 1878
                  lui          s10, 467505
                  addi         t3, s6, -1207
                  sub          zero, a5, s9
                  sra          t4, s5, s11
                  xor          a4, s6, s9
                  sub          t3, a2, s10
                  srli         s0, s10, 26
                  or           s0, a1, s5
                  auipc        s6, 686053
                  sltu         s3, s10, a0
                  srai         t5, a3, 15
                  lui          s9, 880693
                  auipc        a5, 516783
197:              slli         t6, s3, 0
                  nop
                  sll          s5, s6, s3
                  beq          sp, t1, 208f
                  ori          t1, a0, 1724
                  srli         zero, t2, 12
                  xori         s6, a2, -1978
                  nop
                  bltu         a5, t0, 211f
                  lui          tp, 602710
                  andi         s11, t4, 160
208:              sltu         a5, a1, a5
                  or           s9, s7, t2
                  or           s4, s2, zero
211:              beq          a1, s11, 223f
                  slt          a6, s2, s10
                  slti         t3, t0, -818
                  xori         s5, t1, -1989
                  auipc        s9, 646589
                  nop
                  srl          s5, ra, t1
                  lui          t1, 67112
                  add          t4, a4, sp
                  srai         s0, a3, 7
                  srl          s3, a1, t4
                  bltu         a5, a5, 237f
223:              and          t0, a6, s9
                  sll          a4, a5, t0
                  sra          a6, s2, t0
                  ori          t6, a4, -1732
                  slt          s7, a2, s1
                  sra          t3, t2, a5
                  bgeu         t2, tp, 236f
                  sll          gp, t4, a7
                  slt          t1, s10, a2
                  srai         t3, a7, 5
                  add          s3, s2, s6
                  nop
                  and          s11, a5, t5
236:              nop
237:              nop
                  addi         s0, gp, 1026
                  sltiu        gp, s10, -1103
                  sltu         zero, s7, s3
                  srl          t3, a3, a0
                  sll          s5, s4, zero
                  sltiu        a0, s7, 1807
                  slti         a0, s5, -1476
                  slt          t1, a1, s9
                  blt          sp, sp, 254f
                  beq          t1, s3, 265f
                  add          s10, a7, sp
                  blt          gp, gp, 256f
                  bne          a6, s8, 267f
                  blt          s5, s0, 254f
                  bge          t3, s0, 270f
                  or           s3, a5, t5
254:              sub          t3, ra, a6
                  slt          s1, a5, s1
256:              bgeu         s11, s9, 264f
                  srli         a4, a0, 9
                  srli         a2, t6, 11
                  bgeu         t2, s2, 266f
                  addi         s5, a7, 958
                  xor          t1, t2, a2
                  slt          s10, a7, s3
                  sltiu        s10, gp, -1386
264:              sltiu        t5, s10, -1736
265:              slli         a1, a7, 28
266:              slti         s7, s3, -1233
267:              sra          s0, t2, a6
                  srai         s3, t5, 1
                  sub          a6, a0, s8
270:              auipc        t3, 942403
                  slti         s1, t1, -725
                  sra          s3, s7, a6
                  sub          t4, gp, zero
                  bgeu         a7, gp, 293f
                  xor          a6, t3, a1
                  srai         s3, a3, 2
                  slli         a1, a3, 8
                  nop
                  bne          a3, s7, 283f
                  andi         s3, s9, -1427
                  bgeu         a1, t6, 284f
                  sll          gp, t4, a7
283:              blt          s7, s2, 295f
284:              sub          t3, zero, s7
                  srl          s7, gp, s11
                  slti         t2, a3, 103
                  srl          gp, s0, t3
                  bne          t0, gp, 303f
                  sltiu        a0, a5, 1582
                  sub          t1, s0, tp
                  la           s7, region_0+698 #start load_store_instr_stream_1
                  la           t4, region_0+885 #start load_store_instr_stream_0
                  sb           s4, -9(s7)
                  la           s4, region_0+25 #start load_store_instr_stream_2
                  sb           t2, 4(t4)
                  lb           t1, 1182(s4)
                  lh           t1, -5(t4)
                  sb           t4, 9(t4)
                  sb           t2, -14(t4)
                  sb           t2, 1242(s4)
                  sh           t5, 707(s4)
                  lhu          a4, 16(s7)
                  lhu          s9, 4(s7)
                  lw           t6, -9(t4)
                  lbu          a2, -7(s7)
                  lb           sp, 789(s4)
                  lhu          t2, 1537(s4) #end load_store_instr_stream_2
                  sb           t1, -4(t4)
                  lbu          a5, 14(t4)
                  lbu          s1, -15(s7)
                  sb           s8, 14(s7) #end load_store_instr_stream_1
                  lbu          a2, -6(t4) #end load_store_instr_stream_0
                  sltiu        a4, s1, -967
                  bne          s11, zero, 307f
293:              sltiu        t1, t6, -1639
                  sltiu        t3, a5, -1581
295:              slti         s4, a6, -469
                  beq          t3, t1, 300f
                  bgeu         s8, tp, 299f
                  sltiu        gp, t1, 1341
299:              addi         zero, gp, -242
300:              addi         s7, a5, 1000
                  beq          a6, s3, 309f
                  sll          a5, a1, s0
303:              srl          gp, a0, t0
                  or           a6, a6, tp
                  blt          a7, t0, 316f
                  add          a5, s1, a0
307:              slti         zero, s7, -1084
                  addi         tp, a6, 1645
309:              slli         s5, a3, 30
                  lui          s10, 936518
                  xori         ra, s2, -364
                  auipc        sp, 104947
                  or           a5, s9, a3
                  ori          s6, t5, 1172
                  sub          tp, tp, a0
316:              sltiu        t6, t5, -1318
                  addi         sp, s4, -1885
                  andi         a1, s10, -1469
                  sub          s3, s8, t3
                  beq          t4, s0, 324f
                  or           t5, a4, t0
                  srai         t0, a1, 31
                  slli         a6, t6, 6
324:              xor          s1, t1, s11
                  addi         sp, s4, 1734
                  sltu         s7, s4, t0
                  bgeu         t2, a5, 342f
                  ori          a6, s3, 799
                  ori          zero, a1, 801
                  bltu         t5, tp, 335f
                  slli         s2, t5, 9
                  bgeu         t0, s9, 349f
                  slt          t5, tp, tp
                  sub          a6, a2, a3
335:              nop
                  nop
                  xor          a6, sp, s8
                  xori         sp, gp, -1266
                  slli         t3, t2, 16
                  slti         gp, t6, -1285
                  bltu         t0, t3, 349f
342:              sltiu        sp, t1, 1441
                  bge          a1, s8, 354f
                  add          s1, s11, s10
                  slti         t2, zero, -1650
                  xori         a1, zero, 1780
                  sltu         s5, t4, a3
                  sll          a4, s5, t4
349:              or           s5, s1, a0
                  add          a6, t2, t4
                  blt          a2, t0, 369f
                  xori         zero, a0, -1652
                  srli         t0, gp, 17
354:              or           a4, s9, a6
                  srli         ra, gp, 1
                  sltiu        a2, s3, 2020
                  or           a6, a7, a3
                  bge          a0, t6, 371f
                  addi         s6, gp, 2012
                  slli         s3, s0, 18
                  sltu         t6, s5, s0
                  and          t5, a6, a6
                  and          a1, sp, s2
                  sub          gp, s9, s1
                  sub          s10, sp, s11
                  beq          a7, a1, 383f
                  ori          t6, s4, 1125
                  auipc        s0, 928720
369:              slli         t3, s9, 10
                  bne          s5, s5, 389f
371:              add          sp, t6, s0
                  auipc        a6, 343614
                  andi         t6, ra, -1396
                  srli         s11, sp, 16
                  ori          s1, gp, -940
                  andi         t4, a0, -1839
                  bne          s5, ra, 379f
                  addi         sp, t2, 1470
379:              or           t2, t3, t5
                  andi         t6, s7, -866
                  sltiu        gp, t6, 1991
                  beq          t0, s4, 390f
383:              sra          s10, t4, a1
                  sltiu        a6, t5, -866
                  sltu         s5, s10, s8
                  lui          t4, 186633
                  slli         a0, a4, 13
                  bgeu         s10, a1, 396f
389:              ori          s11, a5, 973
390:              sll          a6, s2, a1
                  xori         sp, t3, -1862
                  bne          s10, t5, 399f
                  or           s4, a4, s9
                  ori          s10, ra, 1223
                  beq          s8, a1, 398f
396:              ori          s6, t3, -1580
                  sll          s0, a2, a2
398:              sll          s11, a0, sp
399:              or           a2, s3, a3
                  srai         s1, s1, 20
                  srl          s1, t4, a7
                  slti         s1, s5, -907
                  add          t5, a1, t4
                  srl          s11, a1, t4
                  slt          s0, s4, s4
                  srl          t1, a4, s2
                  sll          s10, s10, s6
                  addi         s10, a4, -978
                  slti         s9, s1, -1799
                  xori         t0, t6, -1205
                  srl          a6, a6, a5
                  srl          a2, t4, a0
                  bltu         a0, s9, 425f
                  andi         ra, s6, -87
                  sll          s11, s1, s7
                  addi         tp, s6, -1309
                  or           s10, s1, s6
                  auipc        t4, 654749
                  or           t5, t1, s3
                  add          s4, s5, zero
                  ori          s1, t3, -1131
                  or           a4, t3, t0
                  xor          t6, t1, s9
                  sub          s6, a4, t1
425:              lui          s11, 221628
                  bltu         s4, a3, 444f
                  andi         t3, a1, -136
                  sra          s9, a5, s0
                  bge          s4, a7, 435f
                  add          t2, t2, s6
                  xori         s7, a1, -1092
                  srai         t4, a4, 1
                  slli         s7, s3, 11
                  sub          s10, t1, ra
435:              bge          t2, a6, 439f
                  xor          s4, t4, gp
                  ori          s7, a0, -602
                  slli         s3, ra, 8
439:              bgeu         ra, tp, 443f
                  sltu         tp, s7, s9
                  xor          s2, a6, s7
                  xor          s11, s9, gp
443:              lui          s1, 184199
444:              slti         t2, s11, 166
                  sltu         tp, t0, s8
                  and          s2, s0, a2
                  bgeu         ra, t4, 450f
                  beq          a7, s5, 455f
                  slti         s2, s7, -1389
450:              ori          a6, a1, -975
                  bltu         t3, t5, 466f
                  sll          s2, s0, a2
                  bltu         a3, a6, 465f
                  slli         s5, s10, 14
455:              ori          s1, sp, 1556
                  bne          s9, a2, 463f
                  bne          tp, t6, 474f
                  beq          s0, s0, 466f
                  beq          t3, s6, 463f
                  sll          a2, s1, a3
                  nop
                  nop
463:              bltu         s0, a1, 470f
                  sltu         t5, s9, t4
465:              auipc        t1, 707840
466:              slt          s4, a3, a7
                  blt          s11, sp, 482f
                  sll          zero, s3, a3
                  sll          s0, s4, a7
470:              ori          zero, a5, -642
                  bge          sp, gp, 486f
                  srai         s10, s2, 29
                  add          s7, a1, t3
474:              srl          s5, s4, s8
                  add          t1, t2, s11
                  bltu         s3, s2, 483f
                  nop
                  auipc        s4, 48265
                  andi         t1, a1, -589
                  and          sp, s1, s9
                  slli         s9, s1, 17
482:              bgeu         zero, t2, 499f
483:              and          a2, zero, a0
                  sltu         tp, tp, a1
                  srai         s0, t4, 15
                  sra          s10, t4, s7
                  sltiu        s4, s4, -1658
                  slti         a4, s11, 1767
                  la           a5, sub_1
                  nop
                  addi         a5, a5, -490
                  srai         s11, s4, 22
                  sub          s6, t4, tp
                  sltiu        s2, s0, 2001
                  and          a2, a5, s2
main_j1:          jalr         ra, a5, 490 #jump main -> sub_1
                  add          s1, s0, s3
                  sra          t4, a6, s2
486:              andi         s10, t1, 157
                  sra          a6, s7, s8
                  slli         zero, s7, 20
                  beq          s10, s11, 494f
                  slt          s0, a1, a0
                  or           t6, t5, s9
                  beq          t0, t4, 511f
                  nop
494:              srl          a2, tp, tp
                  and          a2, a7, s11
                  addi         s3, s5, -596
                  addi         s5, zero, 1318
                  lui          s1, 824021
499:              sll          t3, a1, t3
                  xor          s2, gp, s3
                  beq          t6, zero, 505f
                  blt          s4, s6, 510f
                  auipc        t5, 139597
                  srl          a5, a5, s8
505:              sltiu        t6, a5, 1065
                  add          ra, a6, s0
                  blt          s10, s6, 514f
                  or           s7, s3, a4
                  srl          t4, t0, s8
510:              bne          s11, t3, 513f
511:              sub          s5, a4, a0
                  slt          t2, s1, s9
513:              slt          s10, s1, s9
514:              andi         a0, t5, -1565
                  xor          s10, s2, a5
                  and          s4, s5, s8
                  sltiu        a4, s2, -1325
                  xori         s3, t3, -629
                  andi         s9, s3, -1889
                  and          s6, s6, s4
                  xor          s1, t4, a2
                  srai         a2, a3, 2
                  srai         s0, a2, 20
                  andi         s6, sp, 751
                  srli         a1, s3, 27
                  xor          a4, s4, tp
                  add          s10, a3, a6
                  nop
                  xor          s11, s0, t6
                  addi         gp, s0, 999
                  blt          s3, gp, 539f
                  slti         t6, s11, -1977
                  sltiu        t1, s11, -1053
                  auipc        s7, 795213
                  sub          s3, s11, s1
                  or           tp, s2, s3
                  srai         s7, s6, 6
                  blt          s6, t0, 546f
539:              add          s2, s5, t4
                  and          sp, s4, s10
                  add          s7, a7, t6
                  auipc        s7, 863961
                  sra          s0, s1, s2
                  and          t4, s7, t0
                  sltu         a0, s5, t6
546:              and          s3, s11, a2
                  bltu         s9, a2, 559f
                  andi         a6, s9, 1668
                  slt          t4, s8, a3
                  bge          s0, tp, 567f
                  bge          s3, s2, 555f
                  srli         s6, t4, 4
                  slti         t1, a2, 1970
                  slti         t4, t3, -258
555:              nop
                  sltiu        s5, tp, 1251
                  or           a2, sp, zero
                  slti         s3, s9, 1259
559:              and          gp, a6, s8
                  sll          gp, a1, t0
                  sltu         t6, a1, t4
                  addi         a4, tp, 1197
                  ori          s0, a7, -252
                  sltu         t6, s8, a2
                  srai         a1, s6, 16
                  sra          zero, t0, s1
567:              lui          s3, 1035196
                  sll          s1, gp, a1
                  srl          s5, tp, t0
                  andi         s10, ra, 1710
                  nop
                  sra          a2, s9, t5
                  sra          ra, a7, zero
                  slt          t5, tp, a5
                  andi         sp, a4, -1963
                  or           tp, t0, s1
                  srai         sp, a4, 9
                  sub          s5, a3, s6
                  sub          t3, gp, t2
                  srl          ra, s11, t5
                  ori          a1, gp, -1846
                  nop
                  and          t6, zero, sp
                  srl          s0, s1, s4
                  sra          sp, a4, s0
                  beq          s6, s8, 589f
                  add          a4, s3, t2
                  addi         a0, s2, -1792
589:              slti         t5, tp, -627
                  bgeu         s9, s8, 607f
                  srl          a6, ra, zero
                  xor          s3, s3, s1
                  slti         s0, a1, 1966
                  bne          t4, a0, 598f
                  nop
                  or           t0, a5, a0
                  srl          s1, s6, t0
598:              sub          t5, s2, ra
                  srai         a1, a7, 17
                  bge          s11, zero, 606f
                  srli         sp, t4, 1
                  addi         a5, gp, 1563
                  andi         s11, s4, -1473
                  addi         a2, t6, -444
                  slt          t5, s0, a0
606:              sra          t1, s6, t2
607:              xori         tp, t2, 603
                  sltiu        gp, t5, 201
                  srai         a1, a0, 1
                  sltu         a0, a5, t0
                  andi         t5, a2, 132
                  xor          t5, gp, a2
                  add          a2, s0, t5
                  slli         t1, t2, 6
                  ori          s0, t1, -1519
                  xor          t4, s2, s0
                  srli         t4, s7, 18
                  srl          s10, a2, s3
                  and          ra, a6, s9
                  sltiu        sp, t5, 1507
                  xori         s7, s4, 1726
                  srli         ra, a6, 19
                  bne          s3, t1, 638f
                  sltu         s2, s3, a1
                  bge          s0, s6, 643f
                  srli         s9, s6, 7
                  bne          s4, s1, 645f
                  bgeu         s10, a4, 640f
                  slti         t5, a4, 1822
                  auipc        s0, 812663
                  srli         tp, s11, 12
                  slti         t5, s10, 1688
                  lui          tp, 720237
                  bne          sp, s3, 642f
                  auipc        gp, 564594
                  add          a2, s1, s7
                  beq          a2, a2, 644f
638:              beq          sp, t0, 649f
                  blt          t4, t4, 646f
640:              sll          a0, a0, t1
                  and          s6, t2, t1
642:              slt          s6, s6, s2
643:              sub          t5, t4, gp
644:              srai         t3, s1, 26
645:              and          s0, t3, s9
646:              slti         s11, t6, -284
                  xor          t6, zero, s6
                  blt          t4, a6, 650f
649:              srl          s11, s7, a5
650:              slti         t1, t1, 217
                  andi         s6, zero, -383
                  nop
                  andi         a1, sp, 285
                  bgeu         s1, ra, 667f
                  xor          a1, t0, a3
                  lui          t2, 1014799
                  slti         a5, s11, -531
                  sltiu        a2, t6, -1495
                  sra          s4, t5, s9
                  bge          a7, a0, 664f
                  or           t4, s7, zero
                  bge          zero, t3, 675f
                  srli         s1, a7, 5
664:              blt          s2, a1, 671f
                  add          zero, s7, a3
                  bltu         tp, a1, 674f
667:              lui          s9, 812194
                  slt          a6, s10, s1
                  slli         s10, s6, 9
                  slti         t3, s7, 92
671:              add          s11, t1, a3
                  and          t3, a4, a0
                  bge          sp, s3, 675f
674:              xor          a0, tp, a2
675:              sltiu        s0, s9, -725
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xori         a4, a1, -1355
                  beq          s5, ra, sub_2_stack_p
                  sra          gp, s4, t3
sub_2_stack_p:    addi         a3, a3, -8
                  sw           ra, 4(a3)
                  sll          s0, s3, a0
                  beq          a7, s11, 14f
                  xori         t4, s9, 1187
                  lui          s4, 184224
                  lui          t6, 635734
                  xor          a5, a4, a5
                  beq          t6, s5, 18f
                  and          s11, sp, s2
                  addi         t2, s6, -1645
                  and          t0, s3, s8
                  bge          a6, t5, 17f
                  sub          a1, s0, s11
                  beq          t4, a6, 25f
                  xor          a2, sp, s0
                  addi         s9, gp, -529
14:               bge          t1, s10, 24f
                  sltu         a1, t3, a7
                  srai         tp, s11, 17
17:               and          t4, a4, s5
18:               bgeu         a5, a3, 33f
                  or           s11, t0, ra
                  xor          t5, a1, a7
                  addi         a0, tp, -269
                  sra          ra, sp, tp
                  blt          a2, a4, 30f
24:               sll          t5, a1, t6
25:               srl          s11, t6, s0
                  or           s0, t2, t1
                  slli         s11, s6, 22
                  add          s7, s1, s10
                  ori          t6, gp, -284
30:               srl          s0, s7, t5
                  lui          s11, 646880
                  srl          s7, gp, zero
33:               add          s4, a3, s6
                  lw           ra, 4(a3)
                  addi         s5, a1, -106
                  xori         a6, a3, -987
                  slti         s0, s7, -1561
                  sltiu        a6, a6, -1173
                  addi         a3, a3, 8
                  srli         a4, a6, 20
                  xori         s4, s4, -329
                  sltu         a6, a7, a7
49:               addi x6, x1, 0
49:               jalr x6, x6, 0
sub_1:            slti         a5, s7, 1159
                  auipc        s11, 657689
                  sltiu        tp, s6, -1993
                  bne          a7, s7, sub_1_stack_p
                  slt          t1, a7, a2
                  or           t4, s8, t0
sub_1_stack_p:    addi         a3, a3, -60
                  sra          s1, s1, tp
                  ori          s9, tp, -575
                  sw           ra, 4(a3)
                  sltu         t2, s2, zero
                  lui          a1, 78558
                  sltu         sp, a7, s11
                  la           t2, sub_2
                  xori         gp, a7, 466
                  srli         t4, t2, 1
                  slli         s4, a3, 23
                  addi         t2, t2, 661
                  bltu         a2, s0, sub_1_j2 #branch to jump instr
                  ori          t3, ra, -1375
sub_1_j2:         jalr         ra, t2, -661 #jump sub_1 -> sub_2
                  la           s11, region_0+64 #start load_store_instr_stream_2
                  la           s2, region_0+1867 #start load_store_instr_stream_1
                  sh           a3, 240(s11)
                  la           s1, region_0+1159 #start load_store_instr_stream_3
                  sb           a3, 5(s11)
                  la           s10, region_0+1614 #start load_store_instr_stream_0
                  sb           s1, -12(s2)
                  lw           t1, -11(s1)
                  sb           s6, -23(s10)
                  lbu          a5, 14(s1)
                  lbu          sp, 10(s2)
                  lbu          s5, -14(s1)
                  lb           sp, 20(s10)
                  sb           s10, 8(s2)
                  lb           a6, -3(s1)
                  lhu          s6, 222(s11)
                  lw           s5, 24(s11)
                  lbu          s4, 6(s2)
                  sb           s8, 125(s11)
                  lb           gp, 10(s1)
                  lb           s6, 244(s10)
                  lb           t5, -15(s2)
                  lbu          t1, 2(s1)
                  sh           t4, 42(s11)
                  lh           tp, -9(s2)
                  lb           zero, -49(s11)
                  lb           a0, -145(s10)
                  sb           s0, -53(s11)
                  sb           t1, -5(s2)
                  sb           a0, 12(s2)
                  lbu          s5, 13(s2)
                  lhu          a0, 11(s1)
                  lh           a5, 122(s10)
                  lb           a6, 10(s2) #end load_store_instr_stream_1
                  sb           s8, -8(s1) #end load_store_instr_stream_3
                  lh           sp, 164(s11)
                  lbu          t2, 242(s11) #end load_store_instr_stream_2
                  sb           s0, -19(s10) #end load_store_instr_stream_0
                  la           s11, region_1+1309 #start load_store_instr_stream_0
                  la           t2, region_1+799 #start load_store_instr_stream_1
                  sb           s7, 224(s11)
                  sh           s2, -1(t2)
                  sh           t0, 105(s11)
                  la           t6, region_1+833 #start load_store_instr_stream_2
                  lbu          t1, 16(t6)
                  lw           tp, 1(t2)
                  lh           s4, -203(s11)
                  lb           t1, 28(s11)
                  lb           tp, -111(s11)
                  lh           zero, -139(s11)
                  lbu          a6, 1(t2)
                  lbu          s10, -11(t2)
                  sb           a7, -231(t6)
                  sb           a2, -76(s11)
                  lh           a0, 119(s11)
                  sb           s0, -10(t2) #end load_store_instr_stream_1
                  sh           s11, -191(t6)
                  lb           tp, 153(t6)
                  sb           t4, -105(s11)
                  lbu          a6, 42(t6) #end load_store_instr_stream_2
                  sb           ra, -128(s11) #end load_store_instr_stream_0
                  la           sp, region_1+975 #start riscv_load_store_hazard_instr_stream_0
                  lb           s5, 8(sp)
                  lbu          s1, 8(sp)
                  sb           s1, -62(sp)
                  sh           t0, -41(sp)
                  lbu          s9, 22(sp)
                  ori          a1, t5, 819
                  lhu          a2, -15(sp)
                  lw           zero, -15(sp)
                  lb           s4, -28(sp)
                  sb           tp, -28(sp)
                  lb           s6, -6(sp)
                  andi         s3, t6, 222
                  lb           t0, 52(sp)
                  lb           a2, 20(sp)
                  lhu          t1, 33(sp)
                  sh           t3, 61(sp)
                  lw           s10, 61(sp)
                  sra          a4, a3, a4
                  sb           a3, 2(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s11, region_0+306 #start riscv_load_store_hazard_instr_stream_1
                  srl          t3, a0, s7
                  lb           t5, -48(s11)
                  sb           a5, -18(s11)
                  sb           a2, -43(s11)
                  lbu          a0, -29(s11)
                  lbu          s0, -29(s11)
                  lbu          a4, -29(s11)
                  lbu          t3, -29(s11)
                  sb           gp, -33(s11)
                  sb           s6, -33(s11)
                  sb           a0, 64(s11)
                  lbu          sp, 64(s11)
                  ori          a4, a3, 182
                  lbu          s3, 64(s11)
                  nop
                  lh           a5, 64(s11)
                  lhu          t3, -6(s11)
                  sw           t5, -6(s11)
                  lbu          zero, -41(s11) #end riscv_load_store_hazard_instr_stream_1
                  la           t2, region_0+243 #start riscv_load_store_rand_instr_stream_0
                  sb           sp, 52(t2)
                  sb           t0, -20(t2)
                  lbu          a6, -24(t2)
                  lh           s9, 11(t2)
                  lbu          sp, -18(t2)
                  lbu          t4, 37(t2)
                  lhu          s3, -17(t2)
                  ori          a1, a3, 633
                  sb           s0, -12(t2)
                  srli         s11, a7, 27
                  sb           a1, 44(t2)
                  slti         s1, a3, 803
                  srl          s3, a3, a0
                  srli         s7, s6, 7
                  lb           s0, -22(t2)
                  ori          s4, t6, 408
                  sb           tp, -54(t2)
                  sh           t3, 23(t2)
                  sb           t4, 2(t2)
                  sb           a1, 47(t2)
                  srl          t6, a2, s9
                  lbu          gp, 46(t2)
                  sw           s4, 61(t2)
                  or           s3, a5, s6
                  sh           a0, -17(t2)
                  addi         s2, t2, -1954
                  sb           zero, -48(t2)
                  sltiu        s4, s8, -511
                  sll          t4, s8, s4
                  lh           a4, -1(t2)
                  nop
                  lb           s9, -38(t2)
                  sh           sp, -21(t2)
                  lb           s6, 28(t2) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_1+256 #start riscv_load_store_rand_instr_stream_1
                  sh           zero, 36(a4)
                  and          a5, s10, a3
                  lhu          a0, -34(a4)
                  sb           s11, -35(a4)
                  or           s1, a6, s9
                  andi         sp, s1, 1972
                  andi         s9, t6, 1185
                  sra          t5, s0, a4
                  sltiu        s0, t5, 456
                  lb           a5, 24(a4)
                  srl          s9, a0, t5
                  sltu         tp, ra, a2
                  sb           t5, 59(a4)
                  addi         s1, a4, -495
                  lhu          s0, 4(a4)
                  sw           s11, -52(a4)
                  auipc        tp, 679453
                  lbu          s11, -63(a4)
                  lbu          s1, 18(a4)
                  andi         a0, t6, 1521
                  sb           a0, 7(a4)
                  sb           a3, -13(a4)
                  lbu          a0, -49(a4)
                  lb           s4, -55(a4)
                  srli         a1, a2, 16
                  sltu         s5, s11, t5
                  ori          tp, s2, -1923
                  sh           s10, -14(a4)
                  xori         tp, a5, 1806
                  sh           zero, -60(a4)
                  andi         s10, s5, -1299
                  xor          s6, s10, s3
                  lb           t1, 35(a4)
                  lb           a1, 7(a4)
                  andi         a1, t1, 463
                  lbu          t4, 54(a4)
                  sra          t6, a2, a2
                  nop
                  lb           s5, 55(a4) #end riscv_load_store_rand_instr_stream_1
                  nop
                  sltu         t5, t2, s5
                  xor          t5, t4, a7
                  lui          a2, 948268
                  xori         zero, a0, 977
                  sra          s1, a1, s1
                  srai         s0, t6, 4
                  or           a2, s9, s11
                  sltiu        a6, s0, -1908
                  ori          gp, s5, -2020
                  sltiu        t4, sp, 475
                  andi         a1, t6, -1584
                  xori         sp, s10, 1380
                  bgeu         s11, s6, 27f
                  slti         a1, s10, 1201
                  sra          a5, t2, t2
                  lui          s0, 522808
                  bge          a5, s6, 24f
                  beq          t3, s7, 35f
                  bge          t5, zero, 38f
                  or           s10, zero, s2
                  add          t0, sp, a1
                  or           a6, a3, s5
                  and          zero, zero, s10
24:               bge          a1, t4, 44f
                  bgeu         a2, a3, 28f
                  add          s10, s0, a3
27:               auipc        s3, 1006766
28:               bge          s8, s6, 36f
                  lui          a5, 179399
                  xor          s10, a7, s7
                  la           s3, sub_2
                  ori          t6, t0, 1629
                  nop
                  srai         s5, t1, 17
                  xori         s7, s7, 2036
                  sltiu        t5, tp, 134
                  addi         s3, s3, 269
                  and          s4, t3, sp
                  sltiu        gp, a6, 1576
                  add          t6, a7, s9
                  xori         a4, a7, 1635
                  sltiu        sp, gp, -599
sub_1_j3:         jalr         ra, s3, -269 #jump sub_1 -> sub_2
                  andi         tp, a0, 1235
                  bltu         s6, t6, 36f
                  xor          s2, s10, t4
                  bge          a2, tp, 49f
35:               slti         s10, a1, -192
36:               sll          t6, a0, s9
                  bltu         s7, tp, 40f
38:               sra          s5, s1, s10
                  and          t3, t4, a0
40:               slti         a2, s9, -736
                  andi         t1, t3, 543
                  slti         s1, s4, 1511
                  auipc        t1, 239493
44:               bge          sp, a4, 55f
                  srl          s9, s5, s7
                  and          t4, s5, a0
                  addi         s1, s4, 1484
                  bne          s9, a7, 57f
49:               and          a5, s3, s4
                  xori         t1, a2, -547
                  andi         a4, a6, -221
                  and          s1, t0, s0
                  sltu         ra, t4, s1
                  srl          s10, s5, zero
55:               sub          s1, a4, ra
                  sll          s4, t6, tp
57:               bgeu         zero, s11, 75f
                  addi         t1, t5, -295
                  ori          s1, tp, 90
                  slli         s9, a0, 23
                  srli         s9, t3, 24
                  bgeu         s3, s0, 66f
                  srai         ra, s4, 6
                  xor          tp, gp, s4
                  srai         t3, ra, 22
66:               blt          s9, ra, 71f
                  andi         t0, s7, -583
                  sltiu        t3, a2, -1948
                  sltu         s3, gp, s9
                  xor          t2, a5, sp
71:               and          t6, a1, gp
                  add          t1, s3, t5
                  beq          s10, a7, 91f
                  bgeu         s1, t2, 84f
75:               or           a1, a2, a2
                  sra          sp, s9, zero
                  auipc        t0, 983507
                  sra          t4, s10, ra
                  sra          t3, a0, gp
                  blt          t3, zero, 81f
81:               sltiu        s2, a0, -1020
                  slt          s9, s8, t6
                  beq          gp, a1, 88f
84:               sub          t1, t2, s2
                  blt          t4, t4, 98f
                  auipc        t1, 801988
                  srai         s4, s0, 20
88:               sll          s6, t3, t1
                  sltu         t5, s11, t1
                  ori          t6, a0, -1615
91:               sub          t3, s11, s2
                  slt          s2, s6, t3
                  slli         t4, tp, 1
                  and          a6, a6, s5
                  bgeu         s10, t3, 113f
                  sll          a1, a0, ra
                  nop
98:               srai         tp, t0, 6
                  srli         a0, t1, 22
                  nop
                  add          s2, zero, a5
                  sltu         s5, s0, s10
                  blt          sp, t4, 113f
                  andi         a4, s2, 687
                  nop
                  slli         a1, s6, 9
                  slli         ra, t1, 2
                  andi         s3, s8, 898
                  slt          a4, ra, gp
                  and          t4, a6, sp
                  beq          s2, s5, 121f
                  slli         tp, a6, 24
113:              addi         a2, ra, -699
                  bgeu         gp, s1, 122f
                  nop
                  bgeu         t1, s8, 135f
                  slt          t3, zero, t6
                  or           s2, ra, tp
                  srai         t1, a6, 31
                  slt          s10, s11, a2
121:              bge          t5, a7, 129f
122:              srai         gp, s1, 5
                  srl          s4, ra, a6
                  srli         zero, a4, 9
                  addi         s7, s8, -1315
                  sra          s1, s6, s2
                  sra          s10, s7, s9
                  slt          s9, gp, t2
129:              sll          ra, s5, a6
                  sra          t3, zero, gp
                  srai         a6, s10, 23
                  srli         s0, a4, 29
                  sltu         s7, t4, s9
                  srai         a5, s3, 6
135:              slt          s6, zero, t1
                  srai         s9, a7, 18
                  sra          t6, s6, a7
                  sra          a1, s5, s11
                  srl          t0, t4, s11
                  bltu         a6, a0, 160f
                  sll          s1, s6, s1
                  and          gp, s6, a0
                  bne          ra, sp, 158f
                  auipc        ra, 188271
                  andi         a6, t6, 591
                  sra          s6, tp, s2
                  srli         t4, s11, 14
                  sub          t6, t1, s9
                  sll          a2, t5, ra
                  srl          a1, s1, s10
                  bltu         sp, zero, 156f
                  sra          s9, a4, t0
                  beq          zero, zero, 162f
                  ori          s3, s11, -1298
                  addi         s6, a4, 1705
156:              slti         gp, a3, -1290
                  beq          s8, s9, 167f
158:              sll          s0, t5, zero
                  bgeu         sp, a6, 177f
160:              addi         gp, gp, -122
                  addi         s10, s9, -685
162:              slti         sp, s4, -11
                  ori          t5, a2, 1115
                  beq          gp, s11, 169f
                  sra          s7, t4, a6
                  blt          s7, tp, 177f
167:              srl          t0, a6, t6
                  beq          a6, ra, 177f
169:              bltu         sp, a3, 183f
                  or           s11, ra, zero
                  srli         t0, a2, 17
                  nop
                  slt          s9, s11, gp
                  add          t0, t4, zero
                  slt          a6, ra, s9
                  slli         a6, s8, 27
177:              srai         s0, gp, 3
                  slti         a4, a1, 1055
                  sltu         s5, a5, a3
                  add          a6, sp, s8
                  srli         zero, s2, 2
                  andi         t5, sp, 1565
183:              sll          sp, a3, s5
                  xori         t2, ra, -1866
                  sll          s6, s7, t0
                  beq          sp, s7, 194f
                  bltu         s9, s11, 197f
                  sub          t0, s8, s9
                  bge          t2, t1, 194f
                  srli         t6, a4, 12
                  sltiu        s1, a7, -381
                  bltu         t3, t5, 200f
                  andi         a4, tp, 255
194:              blt          s3, a2, 198f
                  xori         a2, a3, -1123
                  and          s9, zero, s6
197:              srl          t2, s6, a6
198:              and          t5, zero, t4
                  slti         s7, s5, -738
200:              and          s0, a6, t5
                  beq          t2, a4, 206f
                  slt          t1, a5, s5
                  ori          zero, s0, 1221
                  bltu         s0, s6, 219f
                  beq          s0, a0, 222f
206:              srli         s11, s2, 9
                  bne          s0, a3, 225f
                  auipc        ra, 948073
                  slli         tp, s10, 10
                  sltiu        t1, ra, -875
                  ori          s1, a1, 1836
                  xor          s11, s3, t0
                  ori          tp, s5, -16
                  blt          a2, sp, 233f
                  bgeu         t2, t0, 224f
                  or           t4, s6, tp
                  xor          zero, t6, s4
                  sub          s10, s8, t3
219:              sltu         s9, ra, s10
                  beq          t6, a1, 235f
                  bge          s9, a1, 240f
222:              and          a1, zero, s9
                  nop
224:              srli         s11, a7, 19
225:              nop
                  ori          s0, t4, -412
                  bne          s3, s6, 231f
                  xori         s10, t2, -1435
                  xor          s4, a1, s0
                  srai         t5, t2, 18
231:              andi         s11, t0, 1198
                  bge          s9, s6, 242f
233:              beq          s8, t5, 236f
                  sra          s11, s1, s0
235:              bgeu         s9, ra, 243f
236:              sltiu        a0, gp, -338
                  sll          s0, t5, t2
                  nop
                  slti         t4, zero, -501
240:              bltu         tp, s1, 241f
241:              sra          a1, t3, t3
242:              addi         a1, s10, 128
243:              sll          s11, s1, a2
                  add          s3, s10, a2
                  bgeu         s11, t6, 263f
                  beq          ra, t1, 249f
                  ori          t2, zero, 928
                  nop
249:              or           t0, s5, s3
                  beq          zero, s4, 263f
                  ori          t6, sp, 1161
                  andi         s0, s5, 654
                  bgeu         t4, a4, 273f
                  srl          t0, s8, a6
                  addi         t3, s3, 417
                  xori         a2, s0, 1950
                  srai         t2, s9, 27
                  bne          s7, s10, 278f
                  bgeu         s5, s10, 266f
                  srl          s0, gp, tp
                  bne          s1, a3, 264f
                  bltu         t0, s6, 273f
263:              blt          t1, s9, 264f
264:              srl          a4, t1, t3
                  sltiu        t1, a2, -540
266:              sub          s10, a1, s4
                  beq          t3, t4, 281f
                  or           gp, a2, a1
                  add          s7, t2, ra
                  add          a1, t0, a4
                  auipc        s4, 364124
                  sra          t3, s11, s4
273:              addi         s5, t2, -789
                  srai         a6, sp, 14
                  sll          s3, s11, t4
                  bgeu         a7, t2, 286f
                  or           s5, a1, s8
278:              lui          t4, 335586
                  xori         gp, s7, -12
                  sltu         gp, s10, s0
281:              sub          s3, t4, s4
                  srli         s9, zero, 30
                  srli         t5, s4, 5
                  addi         s7, sp, -377
                  andi         s10, t4, 1678
286:              sra          s4, s9, t5
                  add          s5, a6, s3
                  addi         zero, s1, 1214
                  or           s2, t2, s3
                  sltu         tp, ra, s9
                  lw           ra, 4(a3)
                  lui          t0, 647514
                  srl          s10, a1, a3
                  addi         a3, a3, 60
                  slli         t0, t4, 22
                  add          s4, gp, ra
                  and          s6, t1, s5
                  srai         t4, a4, 11
509:              addi x20, x1, 0
509:              jalr x20, x20, 0
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_2:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_3:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_4:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_5:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_6:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_7:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_8:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_9:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_10:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_11:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_12:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_13:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_14:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_15:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x17, x13, zero
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x14, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x14, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x14, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x14, x25, ecall_handler
                  li x25, 0x1
                  beq x14, x25, instr_fault_handler
                  li x25, 0x5
                  beq x14, x25, load_fault_handler
                  li x25, 0x7
                  beq x14, x25, store_fault_handler
                  li x25, 0xc
                  beq x14, x25, pt_fault_handler
                  li x25, 0xd
                  beq x14, x25, pt_fault_handler
                  li x25, 0xf
                  beq x14, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x13, x17, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x17, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x17, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x13, x17, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x13, x17, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x13, x17, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
