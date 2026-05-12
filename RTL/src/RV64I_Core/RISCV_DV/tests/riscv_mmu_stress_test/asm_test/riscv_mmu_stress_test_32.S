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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0xf9f6d034
                  li x1, 0x0
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x726a74a
                  li x6, 0x4fddef63
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x6
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x4adc8513
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0xfa21e141
                  li x23, 0xf33caeff
                  li x24, 0xe59038ae
                  li x25, 0xf
                  li x26, 0xfd34a927
                  li x27, 0x9
                  li x28, 0x0
                  li x29, 0xada54576
                  li x30, 0xbba561c
                  li x31, 0x88e73efe
                  la x2, user_stack_end
main:             slli         tp, t2, 8
                  sltiu        s5, zero, -1422
                  la           s0, sub_1
                  addi         s0, s0, -159
                  andi         a5, t3, 508
                  or           t4, s6, s8
                  sll          s7, s8, zero
                  bgeu         s4, tp, main_j2 #branch to jump instr
                  ori          s7, s7, 988
main_j2:          jalr         ra, s0, 159 #jump main -> sub_1
                  la           s4, region_0+437 #start riscv_load_store_hazard_instr_stream_0
                  add          a3, s1, s7
                  sh           s11, 1529(s4)
                  lb           t2, -382(s4)
                  lbu          ra, 1367(s4)
                  sb           a7, 601(s4)
                  sb           a4, -75(s4)
                  lb           a4, 1410(s4)
                  sb           a2, 1474(s4)
                  sb           s4, 53(s4)
                  lhu          s1, 53(s4)
                  sb           ra, 53(s4)
                  sb           s8, 128(s4)
                  sb           a7, 128(s4)
                  sb           t4, 128(s4)
                  sw           a4, 91(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_0+1609 #start load_store_instr_stream_1
                  la           s7, region_0+1689 #start load_store_instr_stream_0
                  sb           t4, -12(s1)
                  lbu          a2, -194(s7)
                  lh           a4, -5(s1)
                  sb           a6, -10(s1)
                  lb           a2, 2(s1)
                  lb           t1, 13(s1)
                  lbu          a7, 255(s7)
                  sb           tp, -14(s1)
                  sb           s6, 11(s1)
                  lbu          s9, 180(s7)
                  lw           zero, 3(s1) #end load_store_instr_stream_1
                  lb           s4, -250(s7)
                  lh           s8, -215(s7) #end load_store_instr_stream_0
                  la           s1, region_1+1417 #start riscv_load_store_rand_instr_stream_0
                  lhu          s9, -279(s1)
                  slli         t1, s0, 31
                  sub          s5, gp, a2
                  lbu          a0, -63(s1)
                  lb           s0, -672(s1)
                  lbu          s6, 130(s1)
                  sb           t5, -900(s1)
                  lui          ra, 300387
                  lui          zero, 275663
                  lb           zero, 167(s1)
                  srl          s5, a0, zero
                  lbu          gp, -711(s1)
                  and          t6, s8, t1
                  ori          t6, s0, 135
                  addi         s8, s6, -1345
                  andi         tp, a0, -1297
                  lhu          s3, -1151(s1)
                  srl          a3, t3, tp
                  andi         t1, s10, 1016
                  slt          s0, a7, a4
                  sra          a4, s8, t4
                  and          tp, s11, s3
                  sltu         a6, zero, ra
                  sltu         ra, a7, a5
                  lb           a4, -764(s1)
                  sltiu        t1, s4, 827
                  sb           a0, 274(s1)
                  lb           t1, -800(s1)
                  andi         t1, s4, 1013
                  srli         a3, tp, 13
                  ori          s11, t0, 1953
                  lbu          s11, 470(s1)
                  add          tp, s4, s2
                  add          a7, s1, s9
                  slli         s11, a1, 29
                  lb           t3, 160(s1)
                  lbu          a3, -822(s1)
                  sb           s8, 114(s1)
                  lh           t2, -1293(s1)
                  slti         t2, s4, 1138
                  lbu          s8, 316(s1) #end riscv_load_store_rand_instr_stream_0
                  bge          t2, a1, 9f
                  sra          ra, a7, a6
                  blt          s11, s7, 21f
                  sll          a6, t4, s7
                  slli         t6, gp, 22
                  bne          t2, s0, 18f
                  xor          gp, a7, s1
                  srl          a2, t0, a5
                  slt          s9, s3, a6
9:                bgeu         a0, s3, 25f
                  srl          a2, gp, a6
                  addi         t6, t3, 604
                  ori          s4, s9, -1544
                  bne          s5, a7, 24f
                  slti         s6, zero, 2015
                  addi         a1, t1, -763
                  srai         t5, a1, 31
                  srli         s4, t1, 3
18:               srai         tp, t4, 14
                  xor          zero, a7, s3
                  and          s7, t3, a4
21:               srli         ra, a3, 17
                  beq          s9, sp, 32f
                  srl          a4, s3, s9
24:               sll          t4, ra, t0
25:               xor          gp, t1, ra
                  srai         gp, gp, 6
                  sub          a4, sp, t3
                  srli         a6, s11, 4
                  addi         zero, a0, 1513
                  and          t2, sp, s1
                  and          t6, a6, s8
32:               lui          ra, 224042
                  sra          s6, s11, t6
                  slli         zero, a3, 5
                  xor          a2, sp, s0
                  srai         a2, a5, 28
                  srai         a7, s3, 21
                  beq          a0, s7, 49f
                  sltiu        s8, s3, -405
                  srli         s1, a5, 1
                  xori         s9, zero, 204
                  nop
                  bne          a5, ra, 56f
                  sll          s3, sp, a2
                  bltu         tp, s6, 51f
                  bltu         a7, a5, 48f
                  ori          a1, s2, -1610
48:               lui          a7, 558114
49:               sltiu        s8, sp, 1640
                  beq          a0, s9, 52f
51:               ori          zero, t5, -714
52:               nop
                  srl          s6, a7, a4
                  sltiu        t6, a6, -442
                  sub          s4, s10, a2
56:               slli         t4, s6, 8
                  auipc        a5, 1028192
                  andi         t0, s9, -1877
                  xori         t1, sp, 1520
                  sub          t1, s1, a7
                  add          a5, sp, a7
                  la           ra, sub_1
                  or           t2, a0, tp
                  or           a1, a4, a0
                  sltiu        a1, s6, -68
                  add          a5, s1, s11
                  and          a7, t5, s9
                  lui          s8, 961940
                  addi         ra, ra, -807
                  srai         t3, ra, 22
                  sll          zero, a4, t6
main_j1:          jalr         ra, ra, 808 #jump main -> sub_1
                  bgeu         tp, gp, 64f
                  sltiu        zero, s7, -918
                  nop
64:               and          a1, tp, zero
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sub          s8, t3, s5
                  addi         sp, sp, -32
                  or           s9, s3, a1
                  sw           ra, 4(sp)
                  slti         a7, a3, 1543
                  la           t6, region_0+239 #start load_store_instr_stream_2
                  la           s1, region_0+577 #start load_store_instr_stream_1
                  sh           s3, 23(t6)
                  sb           s4, 222(t6)
                  la           t5, region_0+658 #start load_store_instr_stream_0
                  la           t0, region_0+477 #start load_store_instr_stream_3
                  sw           s10, -39(t6)
                  lw           s3, 731(s1)
                  lbu          s3, -61(t5)
                  lbu          t2, -166(t6)
                  sw           s1, 711(s1)
                  lh           t3, 8(t5)
                  sb           a0, -107(t0)
                  sb           tp, -54(t5)
                  lb           t2, 480(t0)
                  sb           s9, -37(t5)
                  lbu          t2, -450(s1)
                  sb           zero, 453(t0)
                  sw           t3, 10(t5)
                  lbu          a4, 41(t5)
                  sb           a5, -210(t6)
                  lhu          a6, -475(s1)
                  lbu          a5, 254(t0)
                  sb           sp, 428(t0)
                  sb           a6, -109(t6)
                  lb           a5, 271(t0)
                  lb           tp, -49(t5)
                  lhu          zero, 205(t6)
                  lbu          a7, 558(s1)
                  lbu          t2, 110(t6)
                  lb           s3, -180(t6) #end load_store_instr_stream_2
                  lhu          s7, 905(t0) #end load_store_instr_stream_3
                  sh           ra, -127(s1) #end load_store_instr_stream_1
                  sh           s2, -32(t5) #end load_store_instr_stream_0
                  la           s1, region_1+172 #start riscv_load_store_hazard_instr_stream_4
                  sb           t1, -107(s1)
                  lb           a1, -107(s1)
                  lbu          t2, -107(s1)
                  sb           a4, -107(s1)
                  srai         a7, zero, 19
                  slt          s0, s8, s4
                  lbu          s6, -107(s1)
                  lb           a0, -107(s1)
                  lb           a5, -107(s1)
                  lb           a5, -107(s1)
                  sb           sp, -107(s1)
                  sb           a2, -107(s1)
                  or           a7, s8, s4
                  sb           s9, -107(s1) #end riscv_load_store_hazard_instr_stream_4
                  la           t2, region_1+354 #start load_store_instr_stream_0
                  la           a7, region_1+467 #start load_store_instr_stream_2
                  la           t1, region_1+1623 #start load_store_instr_stream_1
                  la           s9, region_1+761 #start load_store_instr_stream_3
                  lb           s6, 117(t2)
                  la           s8, region_1+621 #start load_store_instr_stream_4
                  sb           s2, 158(t2)
                  lbu          a5, -10(s8)
                  lb           s3, -25(s9)
                  lb           a5, 158(t2)
                  sw           s8, -9(s9)
                  lbu          t6, 212(a7)
                  lbu          a5, -4(s8)
                  lb           s11, -60(s9)
                  lb           s0, 245(t2)
                  lbu          t0, 18(t2)
                  sb           t6, 63(t2)
                  lhu          s3, 51(s9)
                  sh           s7, -33(s8)
                  lbu          s4, -205(a7)
                  lbu          s4, 17(s9)
                  lh           tp, 17(s8)
                  lb           tp, 37(s8)
                  lbu          s0, 2(t1)
                  sb           s4, 62(s9)
                  sb           t4, -223(t2)
                  lbu          zero, -9(t1)
                  lb           a0, -48(s9)
                  sb           zero, 23(a7)
                  lbu          a5, 238(a7)
                  lbu          gp, 8(t1)
                  lbu          t3, 12(t1)
                  lh           s4, -29(s9)
                  lb           a6, 27(s9) #end load_store_instr_stream_3
                  lbu          s0, 29(a7)
                  sb           s1, 37(s8) #end load_store_instr_stream_4
                  sb           s0, -130(a7) #end load_store_instr_stream_2
                  sw           a5, 5(t1) #end load_store_instr_stream_1
                  lb           s1, -49(t2) #end load_store_instr_stream_0
                  la           ra, region_1+1323 #start load_store_instr_stream_2
                  la           s9, region_1+1399 #start load_store_instr_stream_3
                  la           a3, region_1+1221 #start load_store_instr_stream_0
                  sb           s6, -144(ra)
                  la           t0, region_1+591 #start load_store_instr_stream_4
                  lw           t3, 13(s9)
                  la           t2, region_1+945 #start load_store_instr_stream_1
                  lbu          s8, -777(a3)
                  sb           s10, -24(s9)
                  sh           a4, -1183(a3)
                  sb           t0, -10(t2)
                  sb           a4, -29(t0)
                  lb           a5, 129(ra)
                  sb           a6, 7(t0)
                  sb           t0, -24(a3)
                  sh           t2, -207(ra)
                  lbu          a1, -6(s9)
                  lb           a5, -64(s9)
                  lb           a5, -14(t2)
                  lbu          a5, -60(t0)
                  lb           a0, 62(s9)
                  sb           s8, 4(t2)
                  lbu          a7, -186(ra)
                  lb           t1, 6(t0)
                  lbu          a4, -676(a3)
                  sh           sp, -145(ra)
                  lb           a5, 84(a3)
                  lh           gp, -161(ra)
                  sb           s10, 12(t2)
                  sb           a0, 104(ra)
                  sh           t5, 61(t0)
                  lbu          t5, -60(s9)
                  lbu          tp, -38(t0) #end load_store_instr_stream_4
                  lbu          s4, -409(a3)
                  lhu          zero, -55(s9) #end load_store_instr_stream_3
                  lhu          a7, -7(t2) #end load_store_instr_stream_1
                  sb           t1, -852(a3)
                  sb           tp, 477(a3)
                  lbu          s7, -213(ra) #end load_store_instr_stream_2
                  lbu          a7, 162(a3) #end load_store_instr_stream_0
                  la           a0, region_1+405 #start riscv_load_store_rand_instr_stream_2
                  sb           s11, 192(a0)
                  auipc        s0, 405797
                  and          t1, t2, t3
                  lb           s11, 92(a0)
                  auipc        a6, 531498
                  slli         s1, t3, 31
                  lui          s7, 972380
                  ori          a2, t4, -1802
                  xori         s0, a3, -955
                  xor          t3, s3, gp
                  and          tp, s4, s0
                  or           a4, s6, s2
                  sltu         a6, a6, t3
                  nop
                  sb           zero, 209(a0)
                  or           t2, t0, s1
                  and          a1, s3, s6
                  slt          s8, a6, a6
                  xor          s7, s3, s6
                  xori         t3, a6, -695
                  lbu          t4, 226(a0)
                  nop
                  and          a3, sp, s4
                  auipc        s4, 985505
                  srai         t2, t2, 6
                  sltu         a5, s6, s7
                  lbu          t0, 76(a0)
                  lbu          a1, 104(a0)
                  sh           a4, -113(a0)
                  sll          t5, t4, s4
                  slti         t0, t4, 1328
                  srl          t3, t5, sp
                  lbu          s0, -108(a0)
                  lb           zero, 40(a0)
                  lbu          a6, -130(a0)
                  sb           gp, -14(a0) #end riscv_load_store_rand_instr_stream_2
                  la           t5, region_0+1915 #start load_store_instr_stream_1
                  sb           t4, -29(t5)
                  la           s4, region_0+554 #start load_store_instr_stream_0
                  lh           s6, 800(s4)
                  la           ra, region_0+1310 #start load_store_instr_stream_3
                  la           t2, region_0+1397 #start load_store_instr_stream_2
                  sw           zero, -3(t5)
                  lb           a5, -787(t2)
                  lb           s3, -48(t5)
                  lw           a3, -477(t2)
                  lb           zero, 26(t5)
                  sb           a2, 63(ra)
                  lb           s6, 11(ra)
                  sb           s7, -375(s4)
                  lbu          s6, 1279(s4)
                  sb           a6, -55(ra)
                  lb           a0, 51(t5)
                  lbu          a4, 307(s4)
                  lb           zero, 16(t5)
                  lhu          t4, 862(s4)
                  sb           t6, -614(t2)
                  sb           s9, -52(t5)
                  lb           gp, -312(s4)
                  lb           s7, -341(s4)
                  lbu          s5, -916(t2)
                  sb           zero, 19(ra)
                  sh           t6, -2(ra)
                  sb           s3, -22(t5)
                  lw           a4, -1081(t2)
                  lhu          a7, 6(ra)
                  sb           a1, -15(ra) #end load_store_instr_stream_3
                  sb           t5, -77(s4)
                  lbu          s1, -252(t2) #end load_store_instr_stream_2
                  lb           a2, 28(t5) #end load_store_instr_stream_1
                  lb           s7, 364(s4) #end load_store_instr_stream_0
                  la           a5, region_1+1201 #start riscv_load_store_hazard_instr_stream_3
                  lb           s6, -4(a5)
                  lh           t0, 35(a5)
                  sh           s7, -7(a5)
                  sltu         s0, a0, s10
                  sub          s11, a4, t2
                  sb           a7, -60(a5)
                  lbu          s0, -60(a5)
                  lb           t2, -60(a5)
                  lb           a3, -60(a5)
                  sh           s2, 17(a5)
                  sb           s1, 56(a5)
                  srli         t5, gp, 26
                  sb           t1, 56(a5)
                  and          a2, a0, sp
                  or           s4, zero, sp
                  lbu          s6, 58(a5)
                  lb           s4, -29(a5)
                  lui          a3, 151827
                  and          s3, tp, gp
                  sb           s9, -24(a5) #end riscv_load_store_hazard_instr_stream_3
                  la           s3, region_1+726 #start load_store_instr_stream_1
                  la           t0, region_1+237 #start load_store_instr_stream_0
                  sb           t3, -6(s3)
                  lh           s1, -16(s3)
                  la           t2, region_1+1336 #start load_store_instr_stream_2
                  lb           a7, -178(t0)
                  la           t1, region_1+957 #start load_store_instr_stream_3
                  sb           sp, 8(t2)
                  lb           a2, 1(t1)
                  lh           a6, -8(s3)
                  lw           s5, 171(t0)
                  lbu          t6, 14(t1)
                  lb           s11, -4(t1)
                  sh           a5, 10(s3)
                  sb           t0, 5(t1)
                  sb           s3, 11(t2)
                  lbu          t4, 5(s3)
                  lb           s6, -5(t2)
                  sb           s0, 4(t0)
                  lb           s7, -38(t0)
                  lbu          t5, 2(t2)
                  lbu          t3, -6(t1)
                  sb           s2, 22(t0)
                  lb           a2, 9(t2)
                  lhu          gp, 115(t0)
                  lbu          t4, 0(t2)
                  sh           s5, 23(t0)
                  lb           tp, -80(t0)
                  lbu          a3, -4(t1)
                  lw           s9, 16(t2)
                  lbu          t5, 28(t0)
                  lw           a3, -8(t2)
                  lb           a7, 14(t1)
                  lbu          s5, -6(t2) #end load_store_instr_stream_2
                  sb           t6, -3(t1)
                  sb           t6, -9(s3) #end load_store_instr_stream_1
                  lbu          s8, -14(t1) #end load_store_instr_stream_3
                  lb           gp, -93(t0) #end load_store_instr_stream_0
                  la           t3, region_1+666 #start riscv_load_store_rand_instr_stream_4
                  sltu         s4, s9, s8
                  sltiu        a1, s8, -1276
                  auipc        a3, 254212
                  ori          s8, s9, -360
                  auipc        a2, 291918
                  sll          a2, ra, s6
                  slt          s9, a5, a0
                  andi         tp, t4, 1230
                  lw           a5, -34(t3)
                  sll          tp, t0, t5
                  sll          tp, s10, ra
                  sll          a6, s5, t0
                  or           s1, a5, a7
                  lw           s3, 198(t3)
                  add          ra, s1, s6
                  add          a2, a6, t4
                  andi         a7, t4, -559
                  sb           a6, -165(t3)
                  slli         s1, a7, 26
                  sb           sp, 209(t3)
                  sb           zero, 227(t3)
                  lb           tp, 163(t3)
                  lb           t0, -117(t3)
                  srai         a1, a0, 25
                  slli         s3, a4, 0
                  xor          s3, s3, s8
                  ori          s1, t1, -874
                  srl          a5, ra, s5
                  auipc        a6, 351978
                  xor          a3, s1, s10
                  srai         s4, s11, 9
                  auipc        t4, 982394
                  lb           t5, 183(t3)
                  sltu         a2, t4, s8
                  lbu          a1, -123(t3)
                  sra          s3, s8, t4
                  lbu          s8, -25(t3)
                  lbu          s11, 85(t3) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_0+22 #start riscv_load_store_rand_instr_stream_0
                  lhu          t4, 1048(a1)
                  sb           s7, 561(a1)
                  lb           tp, 1135(a1)
                  xori         t4, a5, 549
                  sltu         a6, s4, gp
                  lbu          ra, 1715(a1)
                  lhu          s6, 1018(a1)
                  lb           a5, 997(a1)
                  lb           t0, -17(a1)
                  slti         s6, t1, -1112
                  slt          gp, t1, t1
                  slt          a5, s8, s10
                  sb           s2, 12(a1)
                  auipc        a6, 690
                  xori         t1, s2, 1274
                  or           a5, s11, t2
                  lbu          s11, 566(a1)
                  auipc        s4, 989140
                  slli         a3, a1, 15
                  sb           t3, 1477(a1)
                  slt          t4, s0, a2
                  auipc        s3, 176150
                  sb           a1, 1141(a1)
                  auipc        gp, 337686
                  sb           s3, 725(a1)
                  lb           s4, 1962(a1)
                  slli         t5, a5, 24
                  sb           tp, 958(a1)
                  or           t1, t3, t3
                  lbu          a3, 1095(a1)
                  srli         s7, a1, 28
                  lh           t3, 714(a1)
                  sltiu        s0, a7, 978
                  addi         t5, zero, -363
                  lhu          t1, 526(a1) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+68 #start riscv_load_store_rand_instr_stream_1
                  srai         zero, s6, 20
                  sltu         a6, s0, tp
                  sb           sp, -18(t3)
                  xor          t2, a2, t3
                  andi         s3, s0, -476
                  sltu         s8, a0, a3
                  lbu          s6, -7(t3)
                  srai         s5, s10, 11
                  sw           s8, -40(t3)
                  lb           s0, 29(t3)
                  sb           t2, -53(t3)
                  lbu          a7, -19(t3)
                  sltiu        t2, ra, 1310
                  lb           ra, -47(t3)
                  lbu          a0, -16(t3)
                  slli         s1, t0, 7
                  sb           t0, -29(t3)
                  xor          a1, t3, s8
                  sub          t6, a4, a0
                  slti         zero, sp, -1049
                  lb           a1, 29(t3)
                  srai         s4, zero, 30
                  lb           a6, 31(t3)
                  auipc        a6, 559596
                  lbu          a0, -17(t3)
                  sh           t5, -14(t3)
                  lb           t6, -1(t3)
                  srli         t0, s3, 9
                  xori         t0, s10, 1735
                  lbu          a5, 57(t3)
                  srli         gp, a5, 11
                  sb           t6, 13(t3) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_1+160 #start riscv_load_store_rand_instr_stream_3
                  sb           a6, 353(a4)
                  lb           t1, 1660(a4)
                  lui          a3, 78066
                  sb           s10, -32(a4)
                  xor          s6, a0, t3
                  srl          zero, a5, a7
                  srai         s0, s3, 9
                  sh           a6, 1382(a4)
                  ori          ra, a4, 1500
                  slli         s1, s0, 28
                  lbu          t5, 851(a4)
                  xori         a5, s3, 1913
                  sltu         s1, s1, t6
                  srai         t2, a1, 15
                  add          a5, s2, gp
                  sb           s8, 1362(a4)
                  sb           gp, -75(a4)
                  sltiu        a1, sp, 1330
                  xori         s0, s11, -1402
                  auipc        a2, 649948
                  sll          ra, t5, gp
                  lbu          t3, 1610(a4)
                  slti         s0, s4, -659
                  lb           t4, 1203(a4)
                  sub          t4, s10, a6
                  slti         s6, t6, 1699
                  sb           s3, 1698(a4)
                  sw           s7, -92(a4) #end riscv_load_store_rand_instr_stream_3
                  la           t5, region_0+1972 #start riscv_load_store_hazard_instr_stream_2
                  addi         a2, t3, 532
                  ori          ra, s5, -263
                  lh           t2, -154(t5)
                  lb           a5, -147(t5)
                  lb           a5, -161(t5)
                  sb           t1, -145(t5)
                  slt          gp, s8, s1
                  slti         a0, a6, 1313
                  lbu          a3, -210(t5)
                  lbu          a6, -210(t5)
                  slt          t6, tp, s8
                  sh           t2, -210(t5)
                  sb           gp, -113(t5)
                  sb           t3, -113(t5)
                  sll          s9, a7, zero
                  lbu          a0, -113(t5)
                  lb           a5, -241(t5)
                  lbu          s8, -205(t5)
                  sh           s10, 12(t5)
                  srai         a1, s1, 6
                  lw           t4, 12(t5) #end riscv_load_store_hazard_instr_stream_2
                  nop
                  bne          s0, t6, 14f
                  srli         s1, a3, 5
                  and          a2, s8, a1
                  add          s0, s9, tp
                  xor          s9, t5, a1
                  sra          zero, ra, sp
                  sra          zero, t4, s0
                  or           s0, s1, a1
                  and          zero, a2, s8
                  beq          zero, s2, 21f
                  bne          s10, s1, 30f
                  sltiu        s9, s2, -585
                  sltiu        t4, s8, 1800
14:               andi         ra, s10, -1533
                  and          s3, zero, s0
                  srl          a5, a5, s7
                  sll          zero, a2, gp
                  la           a4, region_1+534 #start riscv_load_store_hazard_instr_stream_0
                  lb           a5, 345(a4)
                  sw           ra, 1234(a4)
                  sb           s5, 1234(a4)
                  sb           a3, 1205(a4)
                  lb           a5, 1205(a4)
                  sb           s0, 545(a4)
                  lb           a3, -207(a4)
                  sb           s9, -316(a4)
                  slt          t5, a2, ra
                  lb           a6, 1433(a4)
                  slli         s9, gp, 26
                  lb           a2, 1433(a4)
                  lb           s9, -268(a4)
                  lb           ra, -134(a4) #end riscv_load_store_hazard_instr_stream_0
                  or           s0, s5, s0
                  lui          a0, 684554
                  sltiu        t4, a7, 1736
21:               srli         s3, sp, 31
                  sltu         s11, a1, s8
                  bltu         s2, gp, 42f
                  addi         a1, s7, -1615
                  sll          s11, s1, t4
                  slt          tp, s0, s0
                  andi         a3, a1, -37
                  bltu         t4, s3, 31f
                  sll          t0, tp, gp
30:               addi         a2, s9, -693
31:               slti         t3, a0, -1830
                  lui          t2, 333342
                  sll          t1, a0, a7
                  srli         a0, t1, 1
                  bgeu         tp, s9, 43f
                  slti         a6, s11, 925
                  xori         s8, s4, 1315
                  srai         a6, t4, 21
                  xor          a2, ra, t6
                  srl          a3, s11, s3
                  bgeu         a6, a2, 43f
42:               srl          tp, t1, zero
43:               auipc        a1, 856676
                  sltu         tp, s4, s3
                  or           s7, sp, t0
                  lui          t0, 696077
                  bgeu         s3, t4, 48f
48:               and          s0, ra, zero
                  sll          s11, a0, a2
                  sltu         t4, zero, t5
                  slli         s0, s0, 11
                  sra          t3, t1, t1
                  sub          zero, s8, a5
                  xor          s4, t0, t4
                  addi         a4, a3, -775
                  bgeu         a3, s10, 63f
                  sltiu        s0, s0, 1001
                  sub          a6, s0, s2
                  sll          zero, s3, s5
                  sra          a4, t4, s5
                  bgeu         s11, t0, 77f
                  addi         tp, gp, 1568
63:               andi         gp, t6, -618
                  nop
                  blt          a2, a0, 82f
                  sltiu        t2, s10, 521
                  sra          t3, t1, a1
                  xor          zero, t3, ra
                  auipc        t0, 1034210
                  xor          s6, s10, s9
                  bne          s4, zero, 74f
                  slt          a7, s8, zero
                  slt          a3, a3, a4
74:               slli         a5, t3, 11
                  srli         s4, t2, 5
                  xor          tp, t2, s0
77:               xori         a4, s7, -1588
                  sll          s0, t3, gp
                  andi         a5, gp, -135
                  ori          a4, gp, -352
                  bgeu         s0, s4, 88f
82:               srai         t4, tp, 2
                  sub          a5, t0, ra
                  slti         t5, a3, 1022
                  xor          t4, s5, t6
                  bne          a0, s8, 94f
                  or           a5, s9, t2
88:               slti         s11, a7, 1398
                  bne          t5, a4, 90f
90:               nop
                  addi         a3, s8, 1273
                  sll          a2, s2, s8
                  xor          a4, s3, tp
94:               sub          s8, s2, sp
                  bgeu         s9, t3, 111f
                  or           s3, s5, s2
                  slt          t1, s5, a1
                  bge          a3, t4, 99f
99:               slt          s4, t2, a5
                  ori          s8, a2, -891
                  ori          s9, zero, -1269
                  bge          t1, t6, 120f
                  slt          t5, s7, s1
                  nop
                  bge          t6, t3, 125f
                  sll          a3, s1, s7
                  sra          s0, s10, tp
                  lui          s6, 347987
                  bltu         t0, s9, 113f
                  beq          a7, gp, 128f
111:              and          s4, s8, s3
                  andi         a2, a6, 1743
113:              bne          s8, s6, 122f
                  slli         a0, a0, 1
                  or           s3, s8, zero
                  sub          t5, a2, ra
                  bgeu         s11, ra, 137f
                  sub          s4, s0, t0
                  bgeu         s3, sp, 134f
120:              blt          t2, a2, 126f
                  bgeu         t5, s1, 133f
122:              bne          a6, s8, 128f
                  srli         zero, t2, 9
                  add          s6, s7, t2
125:              slti         a2, a2, -956
126:              andi         t2, a7, 1578
                  nop
128:              bne          a2, a3, 136f
                  bltu         a2, a4, 133f
                  addi         s8, s10, 1158
                  lui          t5, 1036941
                  nop
133:              xor          s9, t1, sp
134:              sltiu        zero, a7, -1503
                  xori         s5, s10, -1828
                  slti         a6, a5, -1292
                  srli         s11, a3, 7
                  sltu         t5, s0, sp
                  la           s9, sub_2
                  addi         s9, s9, -899
                  lui          t0, 113474
                  and          a3, sp, t2
                  addi         zero, a2, -1025
                  bltu         s0, s9, sub_1_j3 #branch to jump instr
                  ori          s4, s2, -91
sub_1_j3:         jalr         ra, s9, 899 #jump sub_1 -> sub_2
                  lui          gp, 136257
136:              bne          a7, a2, 141f
137:              beq          s11, t3, 156f
                  bge          t6, s5, 156f
                  slt          a3, s7, sp
                  sll          a1, t5, s10
141:              slli         t0, s9, 0
                  ori          a5, a5, -1693
                  slti         a4, tp, 18
                  srai         gp, s10, 3
                  addi         s1, s10, 1173
                  auipc        s4, 479363
                  srl          s11, a0, a6
                  addi         s8, t1, -1153
                  beq          a6, t4, 168f
                  nop
                  sltiu        a5, t5, 456
                  or           a0, s10, t3
                  nop
                  srli         s1, ra, 19
                  and          a2, ra, s3
156:              and          zero, s5, zero
                  srai         s9, gp, 0
                  sltu         a3, s5, s3
                  xor          s5, sp, a3
                  sub          t3, ra, t5
                  and          s8, zero, t2
                  sltiu        a2, s11, -151
                  sub          t0, t3, t1
                  slti         a2, t0, 1475
                  or           s8, gp, zero
                  sll          tp, a1, a6
                  slti         gp, s0, 1353
                  la           s5, region_1+1338 #start riscv_load_store_hazard_instr_stream_1
                  lb           s6, 28(s5)
                  lb           t1, 28(s5)
                  sb           t4, 28(s5)
                  and          t2, a0, s1
                  lbu          s9, 29(s5)
                  lbu          s3, 29(s5)
                  sb           s9, -27(s5)
                  lbu          a6, -27(s5)
                  sb           s9, -27(s5)
                  lbu          a2, -27(s5)
                  sb           t3, -27(s5)
                  lbu          a5, -27(s5) #end riscv_load_store_hazard_instr_stream_1
168:              sub          tp, s7, s0
                  addi         zero, a3, 694
                  beq          ra, s4, 175f
                  slti         zero, ra, 1716
                  or           a4, s4, a3
                  blt          s6, s0, 189f
                  bne          tp, s1, 181f
175:              srli         s7, a6, 22
                  sltu         a6, s0, s3
                  xori         t6, s1, -1709
                  slti         s4, s10, -5
                  blt          s3, a1, 194f
                  xori         ra, a0, -1870
181:              nop
                  ori          tp, t2, 1645
                  add          s11, t0, s0
                  srli         s0, s6, 8
                  bne          sp, s4, 193f
                  xori         t5, gp, 962
                  slli         s5, s8, 25
                  slli         s4, t4, 20
189:              sra          s6, a2, s6
                  bgeu         a2, a1, 191f
191:              addi         zero, t3, -1824
                  slti         t2, t2, 1141
193:              xor          s9, s4, t1
194:              slli         ra, gp, 23
                  slli         t2, a0, 0
                  sub          a5, s7, tp
                  beq          s2, t1, 205f
                  lui          a4, 155911
                  bge          s5, a3, 207f
                  bltu         a4, s4, 204f
                  srli         tp, t3, 19
                  andi         s3, a6, 1238
                  and          ra, t5, tp
204:              slti         t0, ra, -214
205:              sltiu        s11, s4, 72
                  sra          s1, t6, t4
207:              add          s3, ra, s7
                  lui          s11, 606730
                  xor          ra, gp, s10
                  slti         s0, s7, 169
                  sltiu        t5, a0, 1594
                  ori          tp, a2, -1842
                  srai         t0, t0, 12
                  and          s8, s0, s1
                  bgeu         a2, gp, 226f
                  sub          t1, a5, zero
                  sltu         t3, a2, t4
                  xori         a1, t5, -441
                  srli         tp, a6, 28
                  bge          t1, t0, 229f
                  nop
                  nop
                  addi         s3, a4, 1925
                  bge          s11, t4, 240f
                  andi         ra, tp, 751
226:              slti         a1, a0, 1672
                  bge          s11, s11, 230f
                  bltu         s1, s4, 231f
229:              srl          tp, a0, t5
230:              srai         a5, s1, 21
231:              sra          zero, s7, t4
                  bge          tp, s4, 250f
                  sub          ra, s5, tp
                  sub          t4, zero, s0
                  bge          s0, gp, 236f
236:              lui          zero, 860046
                  srai         a1, t3, 6
                  sltiu        zero, t6, -1928
                  sltu         zero, t5, s10
240:              sll          a0, t1, a6
                  slti         a3, s6, -1745
                  bgeu         sp, ra, 248f
                  xor          t3, s2, a5
                  lui          a0, 36283
                  bgeu         s10, s8, 265f
                  add          s8, t0, s9
                  bge          s4, a2, 260f
248:              sltu         s4, t3, t1
                  nop
250:              slt          a4, s10, a0
                  andi         a6, t3, 1058
                  andi         s7, s6, -1979
                  auipc        s8, 919403
                  bltu         s7, s1, 261f
                  blt          a6, t0, 259f
                  lui          s6, 856306
                  sra          a6, s3, t0
                  sltu         a7, a2, t0
259:              sll          a7, t6, t4
260:              beq          t4, a2, 277f
261:              xor          s6, a1, s9
                  bgeu         s10, s7, 282f
                  andi         ra, tp, 339
                  andi         a3, a3, -1698
265:              addi         a4, s0, 1367
                  sll          a7, sp, t3
                  nop
                  bge          s1, a2, 274f
                  sra          s11, t3, ra
                  auipc        s9, 742509
                  slli         t4, s2, 11
                  sub          s7, a3, a7
                  slli         t2, a1, 5
274:              ori          a6, t6, -1001
                  beq          ra, t0, 276f
276:              add          s5, t4, a2
277:              beq          t1, s9, 279f
                  bgeu         s10, s11, 290f
279:              sra          a3, s6, t6
                  auipc        s9, 628449
                  or           t1, s6, s10
282:              xor          tp, t1, tp
                  sra          a7, t5, gp
                  beq          a0, sp, 301f
                  bne          a1, s6, 305f
                  slt          t0, t2, s2
                  andi         a3, s7, -1482
                  or           s9, a4, a1
                  sltu         a6, a0, s10
290:              sll          t3, t5, s8
                  srl          ra, ra, s11
                  bge          t3, a5, 301f
                  sra          a3, s8, s9
                  srai         a1, s1, 23
                  srl          gp, s0, t1
                  addi         s6, s7, 1309
                  sltu         t5, a3, s8
                  srl          s1, s9, gp
                  bge          s0, a2, 306f
                  ori          t4, s7, 1292
301:              bge          a4, zero, 320f
                  nop
                  slli         t2, tp, 7
                  slti         tp, s0, -556
305:              andi         s0, s3, -365
306:              or           t5, s3, a7
                  bne          t5, s0, 315f
                  blt          zero, a7, 328f
                  andi         gp, a4, 1882
                  beq          t4, sp, 323f
                  slt          a0, a7, a5
                  addi         s0, s9, 1794
                  blt          t5, tp, 324f
                  sltiu        s7, a2, 1622
315:              xor          t2, a4, t3
                  bge          a2, t6, 335f
                  sltu         s1, t1, t6
                  sltu         t6, a0, tp
                  xor          t5, a5, a2
320:              xor          s3, a6, s4
                  sub          s3, ra, a6
                  beq          a1, a3, 338f
323:              bne          s0, t2, 338f
324:              srai         s11, t3, 3
                  lui          s1, 162001
                  srai         a3, t3, 2
                  srai         a0, a5, 4
328:              bgeu         ra, a6, 331f
                  srli         t2, t2, 8
                  srli         a1, t1, 13
331:              bgeu         s3, s3, 336f
                  xori         a7, s1, -423
                  beq          s5, t6, 349f
                  auipc        a0, 54010
335:              srl          t4, a7, a6
336:              addi         s4, a5, 32
                  srl          a6, a1, s11
338:              xori         t1, sp, 213
                  sub          t5, a7, a3
                  add          t4, s7, s5
                  slt          a6, s3, s6
                  addi         t5, tp, -1550
                  slli         s7, a1, 15
                  bltu         a4, t1, 346f
                  bne          s6, s0, 346f
346:              nop
                  bgeu         s2, s10, 348f
348:              addi         a2, t5, 1962
349:              sll          s7, s9, s10
                  sra          s11, sp, s1
                  slt          s7, t6, a7
                  beq          a4, s10, 355f
                  beq          s3, a6, 371f
                  srli         s0, s7, 20
355:              addi         ra, t0, 1590
                  xori         s4, t0, -141
                  addi         s6, a1, 973
                  sll          s4, t5, s2
                  nop
                  bge          t3, a1, 366f
                  sltu         a4, ra, tp
                  sll          t6, s2, s6
                  bge          a2, a0, 381f
                  sub          s4, ra, s2
                  slt          s11, gp, t0
366:              lui          a7, 342314
                  blt          s10, t4, 371f
                  srai         t2, s0, 30
                  add          tp, gp, t6
                  bge          a1, s3, 374f
371:              bltu         s5, s11, 383f
                  sltiu        t5, s4, 820
                  ori          s4, a2, -404
374:              addi         s9, t0, 127
                  xor          t1, s2, s11
                  lui          a6, 141296
                  nop
                  or           s11, a6, s8
                  srl          t6, s1, a1
                  xor          t4, t3, a4
381:              auipc        s5, 827286
                  nop
383:              sltu         a3, s8, a1
                  srli         s7, t4, 15
                  slt          s11, t3, t0
                  bgeu         a5, t6, 392f
                  bltu         s11, t3, 395f
                  slli         a7, tp, 15
                  beq          s1, s9, 397f
                  slli         t2, s2, 20
                  nop
392:              and          t1, s5, s3
                  ori          s4, zero, -1233
                  srl          a7, a4, a0
395:              nop
                  sltu         s5, t4, a1
397:              andi         ra, a1, 316
                  srl          t5, s3, gp
                  blt          t5, s1, 406f
                  sub          t5, a1, a3
                  bge          a1, sp, 402f
402:              bgeu         ra, a5, 406f
                  srai         a4, t0, 22
                  slti         t3, a6, 2047
                  sub          s6, t5, t3
406:              xori         s11, s10, 78
                  sub          t0, s11, s11
                  xori         t5, zero, 61
                  and          s7, s3, a2
                  or           s1, t2, t0
                  ori          a1, s7, 1022
                  nop
                  slt          t5, a2, s7
                  sub          a3, a0, a3
                  lui          s3, 984525
                  beq          a6, s11, 425f
                  bltu         s8, a3, 418f
418:              or           s3, a4, s0
                  bgeu         a6, t5, 432f
                  sltiu        s4, tp, -610
                  srai         a3, gp, 5
                  andi         s8, s4, 1364
                  beq          a6, t2, 443f
                  bgeu         a2, ra, 432f
425:              andi         s8, t4, -434
                  lui          s8, 119979
                  slli         t4, a3, 7
                  sltu         s9, a1, a0
                  auipc        a1, 448959
                  xori         t2, s8, 1864
                  and          zero, t5, a7
432:              lui          s7, 411741
                  sub          a3, s10, t2
                  bgeu         t5, s6, 450f
                  lui          a5, 661013
                  blt          t5, s2, 438f
                  sra          a6, t3, a2
438:              blt          s8, s4, 454f
                  nop
                  auipc        a6, 838909
                  andi         s4, s1, 1615
                  bgeu         a0, s0, 460f
443:              and          s1, t1, gp
                  slt          s5, ra, a4
                  blt          t5, t3, 453f
                  sll          t2, a2, a6
                  auipc        t0, 407237
                  beq          sp, zero, 454f
                  bge          tp, a2, 452f
450:              blt          s7, t2, 468f
                  xori         s5, s7, -843
452:              slti         t6, a2, 442
453:              sra          t4, t6, s11
454:              bne          t1, s9, 461f
                  slti         gp, a5, 1808
                  ori          zero, t3, -608
                  sub          s8, a2, sp
                  srl          s4, t0, s7
                  sltiu        t2, s6, 631
460:              blt          t3, s2, 475f
461:              lui          a4, 954907
                  sltu         s7, t2, s10
                  and          a3, gp, t1
                  sll          s9, ra, t5
                  bne          a5, s6, 473f
                  lui          ra, 946609
                  sra          a5, s9, s6
468:              addi         t3, s7, 999
                  slli         t0, ra, 3
                  addi         a6, a2, 725
                  bge          t1, s3, 482f
                  nop
473:              auipc        t2, 786840
                  bgeu         s7, t5, 479f
475:              ori          s11, a0, 1172
                  auipc        s6, 122487
                  slt          a2, t0, a1
                  slli         s7, s1, 17
479:              nop
                  srai         t1, s0, 11
                  addi         s4, a4, -422
482:              or           a2, gp, sp
                  srl          s5, a7, a0
                  bgeu         t4, s6, 503f
                  slt          t1, s11, a5
                  bne          s5, t6, 490f
                  bgeu         a3, a1, 507f
                  sra          s5, a4, a2
                  bltu         s6, a3, 508f
490:              slti         s11, a1, -18
                  lui          s9, 141322
                  sltu         s7, zero, t1
                  auipc        s9, 594894
                  bgeu         t1, t1, 511f
                  slli         s7, s11, 16
                  xor          s1, s10, s2
                  slli         a7, gp, 3
                  srai         t2, a0, 11
                  srli         t0, t0, 15
                  bltu         s0, a4, 501f
501:              sub          tp, gp, a5
                  auipc        s5, 785824
503:              xori         zero, zero, -1867
                  xori         s6, a1, 883
                  slti         t1, s6, -391
                  slti         t3, zero, 655
507:              beq          tp, s3, 511f
508:              sll          a0, s5, s3
                  srli         s8, gp, 30
                  slt          a3, a3, s9
511:              ori          t1, s5, -1688
                  lw           ra, 4(sp)
                  sub          s7, t3, s4
                  xor          s5, a5, t2
                  addi         sp, sp, 32
                  addi         t5, s4, -1979
                  sltu         s0, s8, t2
                  slli         s1, s3, 29
                  add          s4, gp, a4
                  addi         gp, a4, -916
                  xori         s6, s5, 421
985:              addi x25, x1, 1
985:              jalr x25, x25, 0
sub_2:            xori         t3, t4, 785
                  bgeu         sp, tp, sub_2_stack_p
                  xori         a5, s8, -1956
sub_2_stack_p:    addi         sp, sp, -64
                  and          tp, t4, s4
                  sltiu        a1, t0, 1878
                  sw           ra, 4(sp)
                  xor          s4, s9, t2
                  sub          a3, ra, s3
                  srli         a4, s8, 2
                  slt          t2, s11, gp
                  sltiu        s1, a2, -814
                  la           a4, region_1+921 #start riscv_load_store_rand_instr_stream_0
                  lbu          t1, 42(a4)
                  srl          a0, a1, a3
                  lbu          ra, 46(a4)
                  sw           t5, 35(a4)
                  lb           s5, -41(a4)
                  lh           gp, -61(a4)
                  lbu          a7, -18(a4)
                  sb           gp, -14(a4)
                  lb           s1, -34(a4)
                  sb           t1, -20(a4)
                  sh           s10, -13(a4)
                  lb           s6, -51(a4)
                  sub          zero, t0, tp
                  add          a5, a1, ra
                  srl          a2, tp, t1
                  lhu          t6, 33(a4)
                  xori         a6, ra, -1630
                  lb           t2, 52(a4)
                  sb           s9, 9(a4)
                  lbu          a2, -61(a4)
                  lb           t3, -28(a4)
                  sltu         t1, zero, s6
                  sb           t1, 31(a4)
                  lh           t5, 11(a4)
                  sb           a6, 30(a4)
                  slt          gp, s5, s6
                  slli         s3, s2, 6
                  slti         s11, s4, -347
                  sll          a2, t5, a4
                  lbu          t0, -20(a4)
                  ori          s8, a6, -958
                  sub          s6, s6, s6
                  lbu          t4, 52(a4)
                  and          a7, t1, s7
                  lbu          a6, 27(a4)
                  lbu          s6, 43(a4)
                  sltiu        s6, gp, -734
                  sb           s6, -42(a4)
                  sltu         t3, tp, s2
                  lbu          ra, -24(a4)
                  slt          ra, a6, s1
                  lbu          gp, 16(a4)
                  slti         t3, t1, -811
                  slti         a7, sp, 39
                  lbu          s0, -30(a4)
                  lui          a7, 955406
                  lh           s5, 5(a4)
                  sb           s10, 60(a4)
                  sltu         ra, tp, s9
                  xori         a0, a2, 486
                  slli         t4, gp, 2
                  xor          t0, a3, tp
                  lbu          a5, -58(a4) #end riscv_load_store_rand_instr_stream_0
                  la           a2, region_0+1088 #start load_store_instr_stream_2
                  la           a3, region_0+1425 #start load_store_instr_stream_0
                  lb           tp, 5(a2)
                  sh           s8, 24(a2)
                  la           t3, region_0+499 #start load_store_instr_stream_3
                  la           t2, region_0+1041 #start load_store_instr_stream_1
                  sb           t3, 500(t3)
                  sb           s4, -110(a3)
                  sb           s11, 53(t2)
                  lb           a5, -182(a3)
                  sh           a5, -133(t3)
                  lh           s9, -39(t3)
                  sb           s4, 478(t3)
                  sb           t3, 42(a2)
                  lbu          zero, -16(t2)
                  lw           t0, 51(t2)
                  lbu          s9, -16(t2)
                  lh           a5, 28(a2)
                  sh           a6, 163(a3)
                  lbu          s9, 50(t2)
                  sb           a7, 86(a3)
                  lhu          t6, -20(a2)
                  lb           a6, 14(t2)
                  lb           tp, -59(a2)
                  sb           t3, 1424(t3)
                  lbu          zero, -39(t2)
                  lhu          tp, -50(a2)
                  sh           t1, -121(t3) #end load_store_instr_stream_3
                  sb           gp, 43(a2)
                  lbu          tp, -91(a3)
                  sh           a1, -59(t2)
                  sw           s11, 64(a2)
                  lb           a5, 13(t2) #end load_store_instr_stream_1
                  lh           a7, -26(a2) #end load_store_instr_stream_2
                  lbu          s8, -71(a3)
                  lbu          t6, -125(a3) #end load_store_instr_stream_0
                  la           t0, region_0+1966 #start riscv_load_store_rand_instr_stream_1
                  lbu          a3, -219(t0)
                  sub          s4, s11, ra
                  add          t5, s6, a0
                  sh           a4, -210(t0)
                  lb           s4, -65(t0)
                  lbu          s4, -231(t0)
                  lbu          s7, -88(t0)
                  lb           s5, 27(t0)
                  sb           s4, -158(t0)
                  sb           ra, -209(t0)
                  and          a4, t2, t1
                  lbu          gp, -69(t0)
                  lb           ra, 0(t0)
                  lbu          s5, -115(t0)
                  and          s1, s0, a4
                  lh           s7, -154(t0)
                  lb           s9, -179(t0)
                  addi         s6, a3, 1206
                  lb           t2, -219(t0)
                  srai         a7, a4, 14
                  slti         a6, t2, 68
                  sb           t3, -141(t0)
                  sltu         s11, s7, a3
                  lbu          s8, -146(t0)
                  sra          t6, a1, s7
                  lb           t6, -97(t0)
                  addi         t6, s3, 630
                  srli         a3, a6, 1
                  lhu          zero, -164(t0)
                  sh           a4, -166(t0)
                  sb           a2, -87(t0)
                  sb           t4, -244(t0)
                  lb           s11, -110(t0)
                  sra          a4, a7, s10
                  lb           t2, -143(t0)
                  lbu          a3, -160(t0)
                  sb           s7, -138(t0)
                  lbu          a7, -3(t0)
                  sltiu        s11, s7, 1308
                  sw           s8, -2(t0) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_1+1738 #start riscv_load_store_hazard_instr_stream_0
                  sw           a6, -430(a2)
                  lbu          t5, -1410(a2)
                  lw           a5, -1410(a2)
                  lw           a7, -1410(a2)
                  sh           s9, -1410(a2)
                  sh           t4, -1410(a2)
                  sb           s10, -1410(a2)
                  lbu          s0, -1410(a2)
                  lb           s0, -1056(a2)
                  and          s11, s7, s4
                  lui          s6, 680835
                  srai         t3, t6, 14
                  sh           s4, -1056(a2)
                  sb           s5, -1056(a2)
                  lb           t6, -1056(a2)
                  sh           t3, -1056(a2)
                  lhu          s0, -1056(a2) #end riscv_load_store_hazard_instr_stream_0
                  la           tp, region_1+1470 #start load_store_instr_stream_4
                  la           s9, region_1+1626 #start load_store_instr_stream_3
                  sh           s2, -52(s9)
                  la           t6, region_1+604 #start load_store_instr_stream_0
                  la           t5, region_1+1471 #start load_store_instr_stream_2
                  la           a0, region_1+1421 #start load_store_instr_stream_1
                  sb           s5, 14(tp)
                  sb           t2, 7(tp)
                  lhu          t2, 149(a0)
                  lb           s1, -20(t5)
                  lbu          ra, -178(a0)
                  sw           s3, -20(t6)
                  sb           s8, -3(tp)
                  sb           s8, 148(s9)
                  lbu          s11, -187(s9)
                  lb           a4, 38(t6)
                  lb           t2, 42(t5)
                  sb           s9, -256(a0)
                  sb           t3, -68(a0)
                  lh           s8, -30(s9)
                  lb           s8, 11(tp)
                  lb           gp, -62(t5)
                  lbu          s0, 42(t6)
                  lbu          a5, -50(t6)
                  lb           s7, -52(t5)
                  lb           t2, 31(t6)
                  lbu          s5, -215(a0)
                  lb           s8, 53(t5)
                  sb           sp, -40(t6)
                  sb           t5, -182(s9) #end load_store_instr_stream_3
                  lb           t2, -14(tp)
                  lh           a1, 165(a0) #end load_store_instr_stream_1
                  lb           t0, -13(tp) #end load_store_instr_stream_4
                  lbu          t2, 59(t6)
                  sw           s6, 5(t5) #end load_store_instr_stream_2
                  lbu          s3, 30(t6)
                  sb           t1, 15(t6) #end load_store_instr_stream_0
                  la           a0, region_0+1547 #start riscv_load_store_hazard_instr_stream_1
                  lhu          zero, 115(a0)
                  lb           s11, 99(a0)
                  lh           t4, 99(a0)
                  sb           a6, 99(a0)
                  lbu          t3, 99(a0)
                  lhu          ra, 99(a0)
                  lhu          t2, 99(a0)
                  sh           s4, 99(a0)
                  sltu         s6, t2, s10
                  lh           t4, 99(a0)
                  lbu          s7, 99(a0)
                  lhu          s7, 99(a0)
                  lbu          t4, 99(a0)
                  lhu          s11, 99(a0)
                  lhu          s6, 99(a0)
                  sh           s1, 99(a0)
                  lhu          ra, 137(a0)
                  lhu          tp, 137(a0)
                  lb           s3, 137(a0)
                  lbu          s9, -20(a0)
                  lb           s11, -20(a0) #end riscv_load_store_hazard_instr_stream_1
                  la           a0, region_1+1413 #start riscv_load_store_rand_instr_stream_2
                  sub          t0, s7, a0
                  addi         t4, s9, 380
                  sltu         t0, t0, a2
                  lh           t4, 25(a0)
                  sb           t4, 33(a0)
                  add          zero, sp, a6
                  sb           a1, 61(a0)
                  sra          a2, s6, t1
                  lb           t2, -44(a0)
                  srli         a3, s0, 31
                  sb           s6, 44(a0)
                  lbu          t3, 10(a0)
                  slli         s1, t5, 9
                  sb           t1, -38(a0)
                  srai         t5, t5, 28
                  nop
                  add          s7, t5, s5
                  sb           s8, -27(a0)
                  sh           t5, 53(a0)
                  xor          s7, a4, ra
                  sub          s7, a2, t1
                  add          a1, ra, gp
                  sb           t6, 54(a0)
                  sh           s9, -53(a0)
                  sb           a0, 46(a0)
                  sll          a4, a7, t2
                  sb           t1, -32(a0)
                  srli         t0, s5, 15
                  lw           a5, 43(a0)
                  lbu          zero, -16(a0)
                  lbu          t1, -2(a0)
                  sll          a1, t5, s10
                  addi         s0, s10, 499
                  lui          a3, 880126
                  lbu          a5, -38(a0)
                  lbu          s5, 62(a0)
                  lb           t5, 56(a0)
                  auipc        t6, 166135
                  sb           zero, -56(a0) #end riscv_load_store_rand_instr_stream_2
                  la           gp, region_1+1291 #start load_store_instr_stream_1
                  la           t6, region_1+1281 #start load_store_instr_stream_2
                  la           a3, region_1+950 #start load_store_instr_stream_0
                  sb           t1, 36(t6)
                  lbu          s11, 76(gp)
                  sb           s10, 6(a3)
                  sw           a5, 41(gp)
                  la           a2, region_1+587 #start load_store_instr_stream_3
                  lbu          s1, -13(a2)
                  lb           s9, 19(a3)
                  sb           tp, -98(gp)
                  sb           a1, 3(a2)
                  sb           a3, 46(a3)
                  sb           t4, -20(t6)
                  lb           s6, 36(a3)
                  sb           t1, 7(a2)
                  lh           s6, -28(a3)
                  lw           zero, -17(t6)
                  sh           a5, -207(gp)
                  lhu          zero, 36(a3)
                  lbu          a4, -12(a3)
                  sb           a5, 14(a3)
                  sb           a7, 16(a2)
                  sb           s0, -8(t6)
                  sb           a5, -43(a3)
                  sh           s6, -15(gp)
                  sb           s6, 196(gp)
                  sb           s2, -8(a2) #end load_store_instr_stream_3
                  lbu          s8, -237(gp) #end load_store_instr_stream_1
                  lbu          a6, 8(t6) #end load_store_instr_stream_2
                  lb           t5, 50(a3) #end load_store_instr_stream_0
                  la           t0, region_1+428 #start load_store_instr_stream_0
                  lb           gp, 53(t0)
                  la           tp, region_1+1750 #start load_store_instr_stream_2
                  la           s6, region_1+1456 #start load_store_instr_stream_4
                  la           s0, region_1+366 #start load_store_instr_stream_1
                  la           a4, region_1+81 #start load_store_instr_stream_3
                  lbu          a3, 57(t0)
                  lhu          t4, 6(tp)
                  sb           ra, -11(a4)
                  lbu          zero, 7(tp)
                  lb           gp, -85(s6)
                  lbu          s4, -7(s0)
                  lbu          t6, 9(tp)
                  sb           s10, 191(s6)
                  lbu          t1, 70(s6)
                  lb           a0, -62(t0)
                  lbu          s3, -1(a4)
                  lbu          s1, -3(tp)
                  lbu          s8, 0(a4)
                  lbu          s9, -6(s0)
                  lbu          a3, 16(a4)
                  lh           t1, -6(tp)
                  lhu          a5, 54(t0)
                  sb           a5, -10(tp)
                  sb           a0, 215(s6)
                  lb           t6, 2(a4)
                  sh           zero, 15(a4)
                  lbu          t1, -19(t0)
                  lh           s11, 4(s0)
                  sb           tp, -3(s0)
                  sh           s0, 2(tp)
                  lb           s8, 10(a4)
                  sw           s6, 15(a4)
                  sh           a3, -1(a4)
                  lhu          a7, -8(tp)
                  lhu          a5, -160(s6)
                  sb           s10, -187(s6) #end load_store_instr_stream_4
                  sh           t1, 8(t0)
                  lhu          s7, -16(s0) #end load_store_instr_stream_1
                  sh           gp, 2(tp) #end load_store_instr_stream_2
                  lhu          a6, -3(a4) #end load_store_instr_stream_3
                  lbu          a0, -35(t0) #end load_store_instr_stream_0
                  la           a7, region_0+827 #start riscv_load_store_hazard_instr_stream_2
                  lbu          ra, -10(a7)
                  lbu          t0, -10(a7)
                  lui          t1, 950418
                  sb           s5, -10(a7)
                  and          t6, ra, a1
                  sra          a5, s11, t1
                  lb           s6, -10(a7)
                  nop
                  sb           a6, -10(a7)
                  lbu          a5, -10(a7)
                  sb           s8, -10(a7)
                  lbu          s7, -10(a7)
                  sb           s0, -10(a7)
                  slt          s3, t4, t4
                  lbu          s9, -10(a7) #end riscv_load_store_hazard_instr_stream_2
                  la           s3, region_0+961 #start riscv_load_store_rand_instr_stream_3
                  slli         a3, a3, 23
                  lh           a6, -1(s3)
                  slti         s7, s11, 1388
                  lui          a2, 281005
                  add          s7, t6, a7
                  lhu          a7, 9(s3)
                  sra          a1, ra, zero
                  sub          ra, s5, s2
                  nop
                  slt          s11, s4, s10
                  slt          s5, a3, a6
                  lbu          a0, 8(s3)
                  srli         t3, s4, 8
                  srl          a4, a2, s3
                  sltiu        s1, s9, -1071
                  lb           s0, -14(s3)
                  auipc        t1, 445632
                  lbu          ra, 12(s3)
                  add          a5, s8, t0
                  sra          t4, t6, s9
                  lhu          t1, -7(s3)
                  sb           s0, -3(s3)
                  lbu          t2, 2(s3)
                  andi         t2, a0, 1253
                  sh           a5, 11(s3)
                  add          s11, a4, a7
                  sltiu        s7, a6, 1743
                  auipc        a6, 846649
                  lh           s11, -11(s3)
                  lui          t0, 656168
                  srli         a3, a3, 0
                  srai         ra, s8, 8
                  slti         t5, s2, 864
                  lhu          s5, 3(s3)
                  slt          s4, s5, s0
                  sltu         s9, s9, s1
                  addi         tp, s6, 1168
                  lb           t2, 0(s3)
                  lb           s6, 0(s3)
                  add          t0, t0, sp
                  sh           a6, 3(s3) #end riscv_load_store_rand_instr_stream_3
                  slli         s11, s2, 21
                  bne          t6, s7, 4f
                  and          s9, t3, a2
                  andi         t4, a4, -533
4:                andi         s4, s0, 406
                  sll          s6, s7, t6
                  bgeu         a6, s7, 15f
                  sll          a3, a5, zero
                  beq          s5, sp, 13f
                  and          t5, a3, zero
                  bge          gp, a2, 19f
                  and          s9, t4, a5
                  lui          a0, 334533
13:               bltu         a7, s4, 16f
                  sll          a1, a4, s2
15:               xor          s3, t5, t2
16:               and          t1, s2, s6
                  slti         t6, s2, -1649
                  ori          s5, s9, 128
19:               auipc        t3, 864033
                  sltu         t0, s0, a0
                  srai         s4, a4, 24
                  srli         gp, a6, 26
                  andi         s4, a3, -531
                  srli         t1, s9, 15
                  blt          s2, s7, 34f
                  sub          t5, s8, s5
                  bltu         t0, s1, 42f
                  or           s1, zero, ra
                  addi         s8, gp, -942
                  xor          a2, t0, t5
                  xori         s5, t3, -612
                  addi         a7, zero, 1906
                  bne          s5, s10, 37f
34:               sra          tp, t3, a5
                  beq          t2, s2, 54f
                  slli         a1, s5, 14
37:               andi         s7, s10, 414
                  or           t2, a3, a5
                  slti         zero, s2, 918
                  sub          s8, t2, a7
                  addi         t5, s4, 1361
42:               ori          t6, a1, -1703
                  sll          s8, s9, t4
                  slti         s6, s4, 1941
                  slt          s9, t5, s0
                  ori          a6, s8, 1735
                  slli         a7, zero, 16
                  sra          t6, gp, t5
                  slt          a6, a2, s6
                  bgeu         s1, tp, 55f
                  srli         a1, a3, 11
                  auipc        zero, 243279
                  bltu         s1, gp, 61f
54:               sltiu        a1, t1, 232
55:               or           s7, a5, t1
                  and          a4, s9, a4
                  bge          zero, s0, 69f
                  sra          s4, s2, sp
                  add          a5, s10, a1
                  slli         a7, t3, 0
61:               lui          t5, 429211
                  xor          t1, s11, gp
                  beq          s7, zero, 80f
                  sub          s3, t0, t2
                  ori          a4, t2, -1373
                  or           a4, t6, a0
                  slli         a3, gp, 8
                  lui          t1, 56780
69:               bgeu         s0, a0, 77f
                  bne          t4, ra, 84f
                  and          a2, s1, s7
                  and          a2, t4, t2
                  slti         a5, a5, 1082
                  srl          a2, t5, t2
                  sltu         t6, zero, s10
                  xor          t4, ra, t6
77:               slt          s11, s1, ra
                  nop
                  xor          zero, a2, a1
80:               blt          s2, s3, 89f
                  srli         s11, a4, 31
                  xor          a2, s4, s2
                  srl          t3, a0, a1
84:               andi         a5, a3, -1231
                  beq          a3, tp, 101f
                  slt          t3, s9, a0
                  bne          a7, a3, 88f
88:               nop
89:               and          s7, s3, s4
                  slt          t3, sp, a1
                  ori          a1, tp, 16
                  or           s8, s7, a0
                  sltu         t1, t1, a6
                  sub          s11, a7, zero
                  srai         s11, t2, 22
                  sltiu        a6, a0, 1663
                  bltu         a6, a7, 107f
                  bltu         s11, a1, 99f
99:               sub          a7, s10, s8
                  andi         s5, s3, -1659
101:              slti         a1, a7, -701
                  blt          s10, zero, 106f
                  slti         t0, a5, -1799
                  and          a1, ra, s8
                  srai         a0, a5, 17
106:              auipc        a2, 434097
107:              add          s6, s1, s2
                  xor          zero, t4, t5
                  sra          t6, t3, t5
                  bne          zero, s9, 123f
                  xori         a7, s5, -979
                  slt          s9, s8, a4
                  srli         s3, sp, 30
                  slli         s6, gp, 22
                  ori          t1, s9, 1489
                  auipc        t4, 694110
                  andi         gp, s4, 1318
                  andi         s7, a5, 551
                  sltu         s6, t4, a0
                  srai         tp, s4, 18
                  bltu         a2, a2, 126f
                  andi         a1, s8, -2001
123:              bltu         ra, s8, 131f
                  slt          s6, t0, gp
                  add          s0, a5, a6
126:              srli         s1, t3, 16
                  andi         t4, t5, 1936
                  sub          s1, s4, a4
                  xor          t0, a4, s9
                  sll          a0, s11, a2
131:              add          zero, t2, zero
                  blt          a5, zero, 147f
                  bge          gp, s3, 152f
                  bge          tp, s7, 137f
                  add          a7, t6, t3
                  srli         t1, s11, 1
137:              bltu         t5, t6, 144f
                  auipc        ra, 272088
                  slti         t4, a5, 600
                  sub          s11, t6, tp
                  slt          a5, sp, t2
                  beq          a4, s2, 145f
                  bne          s8, a4, 149f
144:              sra          a1, t6, t6
145:              blt          ra, t0, 160f
                  srai         t5, s3, 9
147:              and          a1, t0, s3
                  bgeu         s4, gp, 160f
149:              add          tp, zero, s2
                  slli         t6, a4, 28
                  addi         a7, a7, 1609
152:              slli         t6, s11, 11
                  beq          s11, sp, 157f
                  blt          a2, s4, 173f
                  sll          t4, t6, t5
                  srli         tp, a3, 15
157:              xor          gp, t3, s6
                  bne          tp, a3, 175f
                  bne          t5, s10, 162f
160:              srli         zero, a2, 3
                  sltiu        gp, t4, -642
162:              bgeu         s10, t4, 165f
                  add          s7, s10, t4
                  bge          t3, s9, 165f
165:              xori         t6, tp, 801
                  xori         a6, a4, -1150
                  sltu         s6, s3, a1
                  srli         a3, s0, 7
                  slt          s8, tp, s0
                  xor          s5, t2, a2
                  or           a3, t1, s10
                  nop
173:              srli         t5, a4, 2
                  srai         gp, s10, 12
175:              xor          t4, ra, s5
                  srli         t1, a2, 31
                  slti         t3, s7, -910
                  srai         s4, t2, 30
                  bge          t4, s2, 188f
                  sra          t5, s9, a3
                  addi         t4, sp, 336
                  sltiu        a0, t6, -393
                  addi         ra, ra, 1393
                  add          a0, s2, sp
                  sltiu        a4, s10, 1342
                  nop
                  ori          zero, t1, 527
188:              lui          s8, 745494
                  sub          s3, s11, t0
                  xori         s7, t6, 1381
                  sra          a1, s7, a7
                  sll          s5, s3, a2
                  bgeu         t1, s4, 202f
                  sra          a2, s6, t0
                  bge          a6, a6, 202f
                  sra          ra, zero, t6
                  or           a4, s1, s6
                  xori         a7, s1, 466
                  add          a5, s4, a1
                  xori         t5, tp, -1808
                  xor          t1, s5, s1
202:              sltiu        gp, a1, -1990
                  xor          a4, a5, ra
                  bne          a7, s3, 209f
                  sra          s11, s0, s0
                  or           a6, t3, t2
                  sltu         s3, s1, a1
                  sra          a6, s5, s11
209:              sra          s6, s6, s8
                  sll          gp, zero, a1
                  blt          a4, a5, 227f
                  sub          a2, a2, a2
                  sub          t2, a0, s11
                  sltiu        t2, a2, -1565
                  bgeu         tp, s1, 223f
                  srli         a2, s9, 12
                  xori         t4, t3, -479
                  srli         t2, a1, 23
                  beq          a3, t6, 227f
                  auipc        a7, 953852
                  slti         s8, t2, 1094
                  addi         s5, t2, -1974
223:              xor          a6, a7, a1
                  slli         s6, a4, 15
                  srli         s0, s9, 6
                  lui          s3, 303050
227:              bgeu         s5, a0, 236f
                  bge          a5, a4, 229f
229:              nop
                  bgeu         s1, tp, 243f
                  sra          t4, t6, s10
                  slt          t6, s8, t1
                  slli         s8, s2, 3
                  xori         s9, tp, -1294
                  srl          a2, s11, t5
236:              andi         a0, s5, 1906
                  blt          t1, zero, 246f
                  or           gp, s2, t4
                  srai         s3, sp, 12
                  addi         t6, s8, 283
                  sra          s3, t5, a1
                  blt          s0, sp, 245f
243:              beq          s9, a2, 258f
                  add          t5, a1, s3
245:              ori          s11, a0, -878
246:              lui          s5, 218689
                  lui          t0, 740171
                  addi         s9, a2, -1250
                  or           s5, s11, a4
                  slti         s11, s2, 1908
                  srli         gp, s3, 9
                  bne          a5, s10, 260f
                  srli         t0, t2, 16
                  andi         s6, s11, 2017
                  ori          t6, a6, 1528
                  bgeu         a1, s10, 275f
                  blt          s3, s0, 267f
258:              add          gp, s4, a0
                  sltiu        zero, a4, 579
260:              bgeu         t1, s6, 263f
                  bne          s3, zero, 267f
                  srai         a7, gp, 14
263:              srai         a0, t0, 30
                  slti         s5, s0, 248
                  srl          s0, a3, s9
                  sltiu        s9, t6, 1472
267:              sltu         s5, t1, t3
                  or           a4, a1, a2
                  bge          a4, t0, 273f
                  blt          sp, s8, 275f
                  bne          a0, s1, 276f
                  add          t4, s8, s9
273:              sltiu        s6, ra, -360
                  beq          s3, ra, 288f
275:              sra          s9, s4, t0
276:              and          s6, gp, s10
                  sub          t2, a3, a5
                  addi         ra, s1, 615
                  beq          s4, t0, 280f
280:              add          t4, t1, s9
                  sltu         t1, a3, a2
                  bne          t0, s9, 287f
                  slli         s4, t0, 24
                  ori          s1, t0, -1445
                  xor          t6, s5, s5
                  auipc        s0, 104683
287:              add          a1, tp, zero
288:              sra          s7, a2, t5
                  xor          s3, s10, t5
                  add          t2, a4, s1
                  andi         t0, s7, 239
                  bge          a4, t1, 302f
                  add          zero, s9, gp
                  bltu         zero, t1, 303f
                  ori          s8, s5, 643
                  bgeu         a2, sp, 297f
297:              bne          s4, t2, 302f
                  beq          sp, gp, 301f
                  addi         a7, s6, 1675
                  sll          t2, sp, tp
301:              and          s11, t3, ra
302:              lui          s11, 905864
303:              add          a0, s9, a2
                  slt          t5, a3, t6
                  xori         s4, t3, -393
                  or           a3, a4, a4
                  slti         ra, t3, 1038
                  blt          t6, a4, 312f
                  bltu         s0, s5, 317f
                  or           ra, a6, t2
                  sltu         s1, a0, t1
312:              sll          s6, a7, a6
                  srli         a7, s11, 1
                  blt          s3, s3, 317f
                  srl          s4, t6, s1
                  srli         s4, s9, 27
317:              sltiu        s8, a7, -987
                  la           s8, region_1+927 #start riscv_load_store_hazard_instr_stream_3
                  sw           t4, 57(s8)
                  lb           a2, 57(s8)
                  lbu          s9, 57(s8)
                  lb           s1, 57(s8)
                  lbu          a0, 57(s8)
                  add          s6, a6, gp
                  lbu          a0, 57(s8)
                  lhu          ra, 57(s8)
                  sb           a4, -62(s8)
                  sb           a3, -62(s8)
                  sb           s10, -62(s8) #end riscv_load_store_hazard_instr_stream_3
                  sra          s7, gp, s4
                  sltiu        a6, ra, 1384
                  andi         s6, s11, 199
                  srl          ra, ra, t2
                  lui          t2, 440221
                  bltu         t3, ra, 339f
                  andi         a2, t2, 1171
                  sll          s8, a5, t5
                  sltiu        a4, a4, -618
                  srai         t4, sp, 29
                  xor          t4, t3, ra
                  auipc        s9, 462161
                  sra          t1, sp, sp
                  sltu         s8, t3, gp
                  xori         t0, gp, 1308
                  sra          a0, s6, t6
                  slt          t3, tp, a3
                  bge          sp, s9, 341f
                  srli         s4, a4, 20
                  nop
                  slti         gp, s10, 129
339:              slt          zero, s0, a2
                  lui          s7, 744370
341:              sll          a3, t2, a6
                  beq          t4, t1, 349f
                  blt          t2, gp, 360f
                  add          s3, s9, a2
                  or           a1, s3, t5
                  xori         ra, sp, 1890
                  srai         t0, a5, 24
                  srli         a0, t2, 20
349:              bge          t2, a1, 368f
                  auipc        s11, 336650
                  slt          t5, ra, t2
                  addi         a0, a1, -1715
                  nop
                  auipc        t3, 668297
                  nop
                  xor          t5, t6, s4
                  blt          s5, a6, 366f
                  sltu         t5, t3, t3
                  bne          gp, t6, 371f
360:              auipc        t1, 725384
                  bgeu         t0, s11, 374f
                  lui          a7, 14570
                  sll          s9, a4, s1
                  and          a5, s6, t6
                  or           s3, a0, t3
366:              lui          t3, 793151
                  bgeu         a0, s10, 372f
368:              addi         s11, t1, 107
                  sra          a1, ra, t1
                  srl          a0, t1, s9
371:              addi         a5, sp, -605
372:              srli         t6, t1, 9
                  sltu         s9, s6, s8
374:              srli         a7, s7, 24
                  bge          s0, gp, 378f
                  slli         a7, t6, 31
                  xori         a6, t2, -1576
378:              beq          a5, a7, 386f
                  blt          s4, s1, 394f
                  sltiu        t4, s11, 1766
                  andi         s11, s3, 1691
                  slt          t3, tp, s11
                  bgeu         a5, s9, 392f
                  sra          a1, t2, s6
                  xori         t0, a7, -1764
386:              bne          s0, a0, 390f
                  srli         gp, s9, 10
                  slli         s5, zero, 3
                  bgeu         s2, s7, 392f
390:              sub          tp, s5, tp
                  srai         t2, s6, 27
392:              xor          t1, gp, t1
                  ori          a4, s6, 673
394:              sltu         a6, gp, a0
                  sltiu        a2, a7, 947
                  or           s6, s5, a2
                  or           t6, t4, a4
                  bgeu         a7, a1, 417f
                  xor          t4, a6, t6
                  slt          a6, sp, a7
                  sll          a5, a2, s5
                  bltu         t3, t4, 416f
                  srai         t3, zero, 31
                  srl          t4, a3, s1
                  xori         s4, a3, 231
                  xori         s7, s5, -589
                  nop
                  blt          s10, sp, 416f
                  srai         s3, t5, 18
                  nop
                  add          a3, t0, t1
                  nop
                  sll          a4, t0, t6
                  beq          ra, t3, 421f
                  add          s7, tp, s10
416:              and          t1, a4, a7
417:              xori         t3, tp, 1053
                  addi         a7, s6, -1727
                  bltu         ra, a2, 421f
                  slti         t2, t2, -563
421:              nop
                  xori         s11, tp, -1298
                  sra          s11, t1, t0
                  and          tp, s2, s10
                  sltiu        a0, ra, 1228
                  ori          gp, a5, 1543
                  lw           ra, 4(sp)
                  or           a4, a0, t3
                  xor          s9, a3, s6
                  andi         s8, s11, 1069
                  addi         sp, sp, 64
                  sra          t1, s11, a3
                  slt          a6, a3, s1
837:              addi x24, x1, 0
837:              jalr x24, x24, 0
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x31, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x31, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x31, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x31, x29, ecall_handler
                  li x29, 0x1
                  beq x31, x29, instr_fault_handler
                  li x29, 0x5
                  beq x31, x29, load_fault_handler
                  li x29, 0x7
                  beq x31, x29, store_fault_handler
                  li x29, 0xc
                  beq x31, x29, pt_fault_handler
                  li x29, 0xd
                  beq x31, x29, pt_fault_handler
                  li x29, 0xf
                  beq x31, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
