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
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
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
                  li x0, 0x3
                  li x1, 0xfc538a07
                  li x2, 0xa
                  li x3, 0xf05386a6
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0xc
                  li x7, 0x75656f93
                  li x8, 0x5cf95401
                  li x9, 0xf26e2a06
                  li x10, 0xb430271e
                  li x11, 0x0
                  li x12, 0xd
                  li x13, 0x0
                  li x14, 0xf56b35fb
                  li x15, 0xf2c176cb
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0xa956c2ea
                  li x19, 0x0
                  li x20, 0x6f526573
                  li x21, 0x73fb5d64
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x8
                  li x25, 0x80000000
                  li x27, 0x0
                  li x29, 0xd
                  li x30, 0xf91b9b69
                  li x31, 0x0
                  la x26, user_stack_end
main:             la           gp, sub_1
                  andi         s6, t4, -849
                  addi         gp, gp, 228
                  srl          tp, s9, t0
                  srli         a3, a2, 24
                  sub          t2, s11, ra
                  xori         sp, s7, -69
                  bltu         ra, s0, main_j2 #branch to jump instr
                  slt          s1, t1, a0
                  andi         t1, zero, -836
                  addi         a7, a0, -1420
main_j2:          jalr         ra, gp, -227 #jump main -> sub_1
                  la           sp, region_0+552 #start riscv_load_store_rand_instr_stream_0
                  lw           a2, -428(sp)
                  lb           zero, -393(sp)
                  lbu          s6, 1189(sp)
                  lb           s0, 1131(sp)
                  xor          a6, zero, s7
                  sb           s9, 380(sp)
                  sb           s3, 691(sp)
                  slt          a2, ra, a3
                  srai         t6, a4, 3
                  lh           zero, 682(sp)
                  lh           t4, 4(sp)
                  ori          s8, sp, -679
                  andi         t1, t5, 1844
                  lbu          a5, -191(sp)
                  srai         s8, s3, 24
                  lb           s5, 973(sp)
                  lh           a5, 732(sp)
                  add          a2, s4, t2
                  sb           a1, 972(sp)
                  lb           t2, 883(sp)
                  sh           t4, 66(sp)
                  slti         zero, a3, 782
                  xori         t1, ra, 1148
                  sw           s2, -236(sp)
                  sb           t1, -171(sp)
                  lw           s3, 64(sp)
                  and          t4, a1, a6
                  sb           a4, 221(sp)
                  lh           t5, -376(sp)
                  sb           a4, 619(sp)
                  sltiu        s8, tp, -1552
                  or           t5, s0, sp
                  lb           s7, 1137(sp)
                  xori         a1, s1, 1610
                  lh           s2, 1082(sp)
                  lbu          s3, 181(sp)
                  lbu          s1, 613(sp)
                  lui          a6, 1045376
                  sb           a3, 589(sp) #end riscv_load_store_rand_instr_stream_0
                  sra          a0, a6, t5
                  sltu         s7, zero, s3
                  andi         s3, s9, 177
                  ori          gp, sp, 1460
                  slt          t6, tp, a5
                  slt          t1, t6, s0
                  slt          s7, s1, t1
                  bltu         zero, t2, 20f
                  sltu         s5, t4, tp
                  addi         s4, s0, 292
                  xor          s11, s9, t1
                  sll          a4, a0, s9
                  slli         gp, s11, 25
                  or           s7, a3, s11
                  addi         t2, s4, 533
                  andi         a2, s9, -473
                  sltiu        a6, ra, -137
                  slt          a4, s0, a2
                  sll          s1, zero, s9
                  add          s1, t0, s10
20:               sltiu        t1, t1, 1291
                  nop
                  or           t6, a1, s1
                  add          a3, a5, t3
                  bne          s4, s2, 42f
                  sltu         t4, s6, t1
                  or           a7, gp, s10
                  nop
                  ori          a0, t1, -999
                  lui          s5, 519311
                  sltiu        ra, t6, -1948
                  ori          s4, ra, -33
                  or           a3, a6, sp
                  slli         s0, zero, 24
                  xor          s7, a5, s2
                  add          gp, s10, s4
                  bne          s10, s1, 52f
                  slli         a6, s9, 5
                  and          t4, gp, s7
                  bne          s3, t4, 58f
                  la           s11, sub_2
                  srli         a6, s9, 4
                  addi         sp, a5, 1042
                  and          t2, s0, s10
                  addi         s11, s11, 174
                  and          a0, t2, a0
                  srai         ra, s4, 9
                  sltiu        a6, s3, 132
                  bge          t0, a5, main_j1 #branch to jump instr
                  ori          s3, t6, -659
main_j1:          jalr         ra, s11, -174 #jump main -> sub_2
                  slti         ra, sp, -1050
                  bgeu         sp, a7, 59f
42:               bge          s7, a5, 56f
                  or           s2, t0, s8
                  blt          s5, a0, 52f
                  xor          t1, a7, t3
                  addi         t6, t6, 800
                  sra          sp, s7, a7
                  slti         gp, s6, 1976
                  sll          a6, t1, t6
                  sub          s0, a5, t5
                  blt          s8, s3, 56f
52:               bgeu         a0, a6, 55f
                  sll          s11, a0, t5
                  bne          gp, s11, 68f
55:               and          zero, s8, a1
56:               slti         t2, zero, 1436
                  bltu         a2, t5, 68f
58:               and          s6, a7, a0
59:               add          s4, s5, t0
                  slt          a5, zero, a4
                  addi         sp, a4, -1921
                  srli         zero, t4, 12
                  blt          a7, gp, 65f
                  lui          a3, 913716
65:               sub          t6, a5, s2
                  sltiu        zero, s9, -579
                  srai         a4, a1, 30
68:               srai         t6, s0, 5
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           beq          s9, a6, sub_10_stack_p
                  xor          a7, a7, t2
sub_10_stack_p:   addi         s10, s10, -56
                  ori          s7, s2, -970
                  nop
                  sw           ra, 4(s10)
                  sltu         a1, t3, zero
                  lui          a7, 206252
                  sltiu        a5, t6, 296
                  la           s3, region_0+262 #start riscv_load_store_rand_instr_stream_15
                  sb           ra, -3(s3)
                  lbu          tp, 5(s3)
                  sh           a3, -2(s3)
                  auipc        a0, 225746
                  lb           a7, 0(s3)
                  lb           s6, 11(s3)
                  srai         t2, s2, 15
                  or           t5, t6, a0
                  sb           ra, -9(s3)
                  lbu          gp, 3(s3)
                  lb           s11, -13(s3)
                  addi         a4, ra, 589
                  sh           a0, -6(s3)
                  sltiu        t2, s0, -456
                  sb           a7, 5(s3)
                  sb           a3, 7(s3)
                  lbu          zero, 7(s3)
                  srai         t6, a7, 1
                  addi         sp, t6, 735
                  lb           s6, -9(s3)
                  lbu          a7, -13(s3)
                  sw           s0, -14(s3)
                  lbu          t5, -11(s3)
                  sh           a6, 10(s3)
                  lb           a0, 0(s3)
                  sll          s11, t4, t3
                  srli         s6, s9, 5
                  add          s8, a5, sp
                  lbu          s8, -4(s3)
                  slli         s6, a6, 1
                  lh           s0, 10(s3)
                  slt          s2, a4, s1
                  lbu          tp, 2(s3)
                  lh           s8, 10(s3)
                  lbu          t2, 1(s3)
                  lbu          zero, -11(s3)
                  lb           s11, 1(s3)
                  lhu          a1, -10(s3)
                  sltu         gp, a5, a0
                  sub          t4, t1, s6
                  lb           s7, 14(s3)
                  ori          a3, s0, 1778
                  or           s9, s10, a6
                  sra          tp, a0, s7
                  lh           s5, -16(s3)
                  sra          t1, a3, s5
                  lb           s7, 6(s3)
                  lb           a3, 11(s3) #end riscv_load_store_rand_instr_stream_15
                  la           t1, region_0+520 #start riscv_load_store_rand_instr_stream_14
                  sb           a5, -13(t1)
                  sb           s2, 35(t1)
                  sb           s2, -49(t1)
                  sh           a4, 62(t1)
                  slti         t4, a7, 1198
                  sltiu        s9, s0, 1966
                  lh           t5, 6(t1)
                  sb           t0, 37(t1)
                  sll          s11, s11, a5
                  addi         a5, s2, 1977
                  sw           gp, -20(t1)
                  sw           t2, 12(t1)
                  sub          t2, s5, a7
                  auipc        s5, 872439
                  srli         s3, s6, 28
                  lh           a2, 42(t1)
                  lh           t6, 24(t1)
                  lb           a5, 21(t1)
                  sll          s6, s4, s5
                  slli         t5, a4, 6
                  srli         s11, s9, 10
                  auipc        s8, 412244
                  slli         s9, a5, 30
                  slti         t4, t0, 163
                  sb           s6, -41(t1)
                  lbu          s8, 44(t1)
                  sltiu        a0, ra, -726
                  lhu          s2, -54(t1)
                  sb           t1, -35(t1)
                  slli         a7, zero, 2
                  sw           s2, -20(t1)
                  sb           s3, 3(t1)
                  lb           a3, -23(t1)
                  lbu          s9, 57(t1)
                  sb           a2, -57(t1)
                  andi         a3, t6, -2017
                  sra          s7, s10, gp
                  lui          s7, 135922
                  lbu          sp, -49(t1)
                  sub          s11, s11, s11
                  srli         gp, tp, 0
                  andi         s2, s11, -1800
                  lhu          ra, 24(t1)
                  auipc        s2, 691599
                  sw           t2, 36(t1)
                  lbu          s7, 31(t1)
                  or           t5, s11, s9
                  lbu          a3, -26(t1)
                  add          ra, t6, t4
                  and          ra, t4, t4
                  nop
                  sb           s6, 41(t1) #end riscv_load_store_rand_instr_stream_14
                  la           gp, region_1+1184 #start riscv_load_store_rand_instr_stream_9
                  srai         tp, sp, 3
                  sub          s11, a2, sp
                  lbu          s4, -11(gp)
                  slt          s4, t0, s5
                  or           t6, a1, t5
                  sh           s1, 14(gp)
                  or           tp, t1, a4
                  auipc        t4, 576653
                  sltu         t5, a3, a1
                  slli         a1, s9, 16
                  srl          zero, a0, tp
                  addi         t2, a6, 1178
                  slt          s5, s7, s5
                  nop
                  sltu         t1, s9, t5
                  lb           a2, 7(gp)
                  slti         a7, a5, 1081
                  slli         zero, a4, 9
                  lw           t6, 0(gp)
                  ori          a7, s9, 857
                  lbu          s3, -1(gp)
                  lbu          t6, -7(gp)
                  sra          t1, t1, t3
                  ori          zero, t6, 1867
                  sb           s10, -1(gp)
                  or           s6, tp, t3
                  lb           tp, -13(gp)
                  sltu         s0, s3, t1
                  xori         ra, t2, -1438
                  lbu          s9, 7(gp)
                  slt          s2, s1, s10
                  sra          t4, s2, t2
                  addi         zero, a4, 1362
                  addi         a4, s9, -1915
                  srl          a1, s9, a2
                  lh           s9, 16(gp) #end riscv_load_store_rand_instr_stream_9
                  la           s0, region_0+940 #start riscv_load_store_rand_instr_stream_13
                  lbu          a4, 1(s0)
                  lbu          zero, 52(s0)
                  slt          s6, a1, a6
                  lbu          t1, -19(s0)
                  lb           t4, -60(s0)
                  srl          a5, a2, s9
                  lb           s9, 37(s0)
                  lhu          s5, -46(s0)
                  sh           t4, -4(s0)
                  lhu          a3, 16(s0)
                  srai         zero, a7, 17
                  lbu          s7, -33(s0)
                  xor          t6, s6, ra
                  nop
                  ori          t6, s0, 987
                  lbu          zero, 10(s0)
                  srai         gp, a6, 17
                  slt          s3, s2, t6
                  addi         s7, s6, 223
                  lb           s11, 31(s0)
                  andi         s1, t5, 958
                  sb           a2, 1(s0)
                  lbu          s5, -44(s0)
                  lb           s3, 62(s0)
                  sh           s2, -60(s0)
                  lh           t6, -18(s0)
                  sh           s10, 8(s0)
                  lb           s6, -8(s0)
                  lhu          a0, 34(s0)
                  lb           s7, -41(s0)
                  sltu         gp, t2, s5
                  lb           a4, -11(s0)
                  sh           t0, -16(s0) #end riscv_load_store_rand_instr_stream_13
                  la           s2, region_1+205 #start riscv_load_store_rand_instr_stream_6
                  sh           t2, -11(s2)
                  or           sp, s2, s4
                  lhu          zero, -177(s2)
                  xor          a0, s4, s3
                  or           s0, t5, a4
                  slli         a4, s3, 10
                  ori          t5, s4, -1214
                  sll          t4, s10, t3
                  xori         a1, t2, -909
                  srai         s7, a0, 10
                  slt          t5, gp, a5
                  sw           ra, 235(s2)
                  lh           t6, 3(s2)
                  sll          a0, t1, a7
                  sb           s7, -120(s2)
                  sb           t6, 150(s2)
                  sb           s4, -96(s2)
                  lb           a0, -77(s2)
                  xori         a5, t4, -828
                  sb           a4, -75(s2)
                  lb           s3, 212(s2)
                  slti         tp, s9, -985
                  slti         a7, gp, 1959
                  lhu          s7, 221(s2)
                  slli         zero, t5, 25
                  slt          s3, t5, s6
                  and          t1, a5, t3
                  addi         a7, s5, 1427
                  and          sp, t1, a6
                  srl          s8, t3, t3
                  sltu         s0, a5, s3
                  lbu          s0, -32(s2) #end riscv_load_store_rand_instr_stream_6
                  la           s11, region_0+1171 #start riscv_load_store_rand_instr_stream_1
                  sb           a3, 52(s11)
                  lbu          s8, -62(s11)
                  sltiu        a0, tp, 1242
                  srai         t5, t3, 14
                  slt          s8, a4, a7
                  sb           s11, -2(s11)
                  lb           a4, 12(s11)
                  slli         sp, s0, 2
                  lbu          a0, 24(s11)
                  lb           s7, 2(s11)
                  sll          s9, s10, gp
                  lh           tp, 37(s11)
                  lbu          gp, 20(s11)
                  lbu          t1, 50(s11)
                  addi         t4, s8, 1093
                  lb           sp, -2(s11)
                  lbu          a1, -6(s11)
                  lh           s2, -7(s11)
                  srli         s8, gp, 0
                  sb           t6, 14(s11)
                  sb           sp, -11(s11)
                  or           t1, s3, s2
                  add          a0, ra, a1
                  lb           a1, -62(s11)
                  addi         a2, a1, -1084
                  sh           s7, -57(s11)
                  sltiu        s1, t2, -794
                  lbu          tp, -48(s11)
                  srl          t6, sp, a3
                  lbu          gp, 56(s11)
                  sltiu        a2, sp, -941
                  lb           sp, 26(s11)
                  slli         a4, a7, 19
                  sb           a7, 7(s11)
                  sb           s6, 50(s11)
                  lb           s0, 36(s11)
                  srli         a7, s10, 17
                  slli         zero, s2, 28
                  lbu          a2, 51(s11) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_1+14 #start riscv_load_store_rand_instr_stream_5
                  sh           s11, -12(t4)
                  lhu          t2, -10(t4)
                  sra          s5, t3, a1
                  sltu         s1, ra, a0
                  lbu          gp, 9(t4)
                  lh           s4, 16(t4)
                  lui          s7, 166321
                  sb           sp, 9(t4)
                  lbu          s0, 3(t4)
                  lhu          a6, 6(t4)
                  sra          s6, a6, s6
                  lb           s6, 13(t4)
                  or           s9, s1, s8
                  sw           a7, 2(t4)
                  lhu          s8, 8(t4)
                  lb           a1, -9(t4)
                  lbu          a0, -3(t4)
                  lbu          a7, 7(t4)
                  lbu          s2, -13(t4)
                  ori          s1, t5, -759
                  andi         gp, t1, 437
                  lh           a4, 0(t4)
                  lb           t2, 10(t4)
                  lb           s4, -5(t4)
                  lbu          s5, -13(t4)
                  srai         a7, s3, 5
                  lbu          ra, 13(t4)
                  sltu         gp, s3, s9
                  xori         a1, tp, 1890
                  sb           a6, 7(t4)
                  lh           sp, -12(t4)
                  lh           t5, -12(t4)
                  srl          s0, a2, t2
                  sb           s5, -4(t4) #end riscv_load_store_rand_instr_stream_5
                  la           t6, region_0+1850 #start riscv_load_store_rand_instr_stream_2
                  lb           a3, -108(t6)
                  sb           t2, -109(t6)
                  sra          s7, a0, t3
                  sb           zero, -36(t6)
                  addi         a0, a3, 1007
                  add          gp, a7, a3
                  or           s7, sp, ra
                  sltu         a4, a1, t1
                  sltu         t5, a2, t0
                  sra          sp, a6, tp
                  auipc        t2, 680046
                  sh           a1, -152(t6)
                  and          tp, s6, a1
                  slt          tp, s0, a3
                  lbu          s9, 96(t6)
                  lhu          ra, 60(t6)
                  lhu          s11, -80(t6)
                  sra          t1, s7, tp
                  andi         s4, s11, -1713
                  lw           s1, -122(t6)
                  nop
                  lbu          t1, 60(t6)
                  and          s4, a4, s6
                  lui          a7, 376153
                  srl          a5, s9, a7
                  or           a7, s2, s11
                  lh           t1, -106(t6) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1408 #start riscv_load_store_rand_instr_stream_4
                  nop
                  sub          t6, s3, s5
                  srai         tp, zero, 18
                  srl          t4, s10, zero
                  lb           tp, 11(sp)
                  sltu         s7, t5, s11
                  slli         s3, t3, 19
                  lbu          a2, 37(sp)
                  srli         a6, a2, 0
                  xor          s9, s10, tp
                  sub          s2, a1, s9
                  lhu          t1, -28(sp)
                  lb           s6, 27(sp)
                  lbu          tp, 15(sp)
                  sb           a4, 45(sp)
                  sltiu        a5, s6, 1063
                  and          s4, s5, t3
                  lbu          s5, -10(sp)
                  lw           s3, 44(sp)
                  and          tp, a2, t6
                  sb           s5, 63(sp)
                  sh           s8, 48(sp)
                  sb           ra, 53(sp)
                  sh           a7, 38(sp)
                  lhu          a7, -22(sp)
                  xori         s4, s0, -1572
                  sra          a0, t5, ra
                  nop
                  sll          a3, s0, a6
                  lb           s9, 34(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s0, region_0+577 #start riscv_load_store_rand_instr_stream_7
                  lbu          s5, -12(s0)
                  xor          a3, a5, t3
                  andi         t6, a3, 954
                  sb           a4, 0(s0)
                  lui          a7, 312656
                  sb           s9, 6(s0)
                  sh           t3, 27(s0)
                  add          a5, t3, ra
                  addi         s3, t2, -1880
                  sb           a5, -59(s0)
                  srai         a1, a7, 15
                  add          t5, s8, t4
                  lb           t1, -30(s0)
                  lb           a4, 56(s0)
                  and          a2, s11, t2
                  sra          s8, t3, a1
                  slt          s6, a6, s9
                  lb           a6, 0(s0)
                  add          s6, zero, s7
                  sb           t4, 43(s0)
                  nop
                  lbu          s2, -48(s0)
                  lb           a2, -46(s0)
                  srl          a0, sp, t1
                  slli         a7, s8, 29
                  lbu          zero, -14(s0)
                  srli         t1, s7, 9
                  lb           a7, 44(s0)
                  nop
                  lbu          a7, -19(s0)
                  lhu          s5, 5(s0)
                  lhu          t1, 1(s0)
                  and          a4, a0, a4
                  lbu          s2, -16(s0) #end riscv_load_store_rand_instr_stream_7
                  la           s3, region_1+592 #start riscv_load_store_rand_instr_stream_11
                  slt          ra, a4, t6
                  sltiu        t4, tp, 958
                  sll          t4, s2, a6
                  addi         a6, a2, 751
                  sh           a5, -8(s3)
                  sb           s9, 5(s3)
                  sb           a3, 15(s3)
                  add          t6, a1, a5
                  sub          a5, s10, t0
                  lhu          s2, -16(s3)
                  ori          ra, a1, -632
                  sb           s8, 11(s3)
                  add          a1, a3, s6
                  add          zero, a0, s9
                  sb           s8, 7(s3)
                  sb           t2, -4(s3)
                  lb           s7, 4(s3)
                  andi         a5, s8, 487
                  sb           zero, -14(s3)
                  lbu          a6, 13(s3) #end riscv_load_store_rand_instr_stream_11
                  la           t4, region_0+1782 #start riscv_load_store_rand_instr_stream_0
                  srai         gp, s2, 0
                  sll          s0, s3, sp
                  andi         sp, ra, 1673
                  lbu          s1, 41(t4)
                  slti         t5, zero, -1990
                  srai         s5, a3, 15
                  auipc        sp, 405024
                  ori          s9, a1, 902
                  and          a7, s1, t1
                  lb           a0, -58(t4)
                  lbu          a4, 49(t4)
                  auipc        a5, 314569
                  add          t2, s11, a6
                  add          a6, s1, t6
                  lhu          zero, -12(t4)
                  sub          zero, zero, a2
                  sb           t4, 59(t4)
                  lhu          zero, 34(t4)
                  sub          tp, s7, s9
                  sltu         s11, ra, s8
                  lb           t5, 47(t4)
                  sub          a4, a5, s7
                  lbu          a5, -59(t4)
                  xor          sp, a2, a7
                  slt          s1, t6, t2
                  addi         a2, s10, 1764
                  srai         s9, ra, 29
                  slli         a4, a7, 22
                  sltiu        s2, s0, -1725
                  lbu          s8, 44(t4)
                  slli         t2, a0, 21
                  lbu          t5, -49(t4) #end riscv_load_store_rand_instr_stream_0
                  and          gp, s0, t1
                  sll          a4, ra, a2
                  slli         a6, a6, 2
                  srl          s8, a4, sp
                  ori          t5, t5, 1348
                  bgeu         a6, t6, 24f
                  nop
                  xori         s8, sp, 1881
                  bgeu         s5, s5, 21f
                  sltu         sp, s2, sp
                  sltiu        a7, a4, 784
                  srli         a7, a6, 8
                  la           sp, region_0+1255 #start riscv_load_store_rand_instr_stream_8
                  srli         s9, a0, 16
                  and          s9, s1, zero
                  slti         a3, s3, 89
                  lhu          s4, -85(sp)
                  lbu          a0, 67(sp)
                  sltiu        zero, s1, -1996
                  lh           a5, 127(sp)
                  sltiu        s9, s5, 1457
                  and          s8, zero, s9
                  addi         s5, t2, 1144
                  or           t1, t3, sp
                  slli         t4, s6, 17
                  lbu          a0, -85(sp)
                  add          a3, a7, s0
                  lw           s0, 17(sp)
                  xor          t5, s5, s9
                  lhu          s0, -69(sp)
                  lh           a6, 231(sp)
                  and          ra, a4, a1
                  lb           t4, -110(sp)
                  sh           a2, 121(sp)
                  lb           t6, -119(sp)
                  nop
                  lb           ra, 252(sp)
                  srai         a4, a3, 12
                  lhu          tp, 57(sp)
                  sw           s4, -215(sp)
                  addi         a6, a4, -773
                  ori          s7, t5, -1174
                  addi         s11, s3, -1322
                  srli         s1, gp, 17
                  nop
                  lb           s6, -12(sp)
                  or           tp, s6, s7
                  sltiu        a2, s6, 490
                  lui          s2, 17854
                  srai         t6, tp, 27
                  srli         s7, a5, 31
                  lui          s9, 836126
                  nop
                  or           a5, t6, a5
                  sb           gp, -160(sp)
                  lbu          s9, 210(sp) #end riscv_load_store_rand_instr_stream_8
                  slt          s4, s9, a1
                  xori         s7, s2, 665
                  sltiu        s3, s5, -1928
                  bgeu         s9, a3, 21f
                  sltiu        a0, t5, -1652
                  xori         gp, s8, -23
                  nop
                  srli         s3, ra, 26
                  sub          s1, s7, a2
21:               beq          s11, s1, 34f
                  andi         a4, s2, 1459
                  srl          s1, s2, s11
24:               sltiu        s4, sp, -854
                  slli         s3, a7, 10
                  srai         a0, ra, 1
                  bgeu         s6, s9, 33f
                  srl          s8, s7, s10
                  slt          s4, s3, tp
                  add          s7, ra, a3
                  bltu         a1, tp, 51f
                  xori         s11, s3, -1444
33:               slt          zero, a2, a3
34:               bltu         a3, s5, 36f
                  sltu         a3, a4, t4
36:               bne          t3, t4, 43f
                  slt          s11, s4, s5
                  slli         t5, s0, 10
                  sra          s5, s10, t3
                  blt          t0, a4, 52f
                  sltiu        tp, a2, -230
                  beq          a0, s8, 53f
43:               srai         s3, s4, 11
                  or           s9, s10, t4
                  slt          s5, a6, s9
                  bne          s2, a6, 48f
                  or           a6, a4, t6
48:               andi         s3, t1, -24
                  sra          t1, s0, gp
                  sub          a2, s6, zero
51:               bge          a1, t1, 52f
52:               slli         t2, a2, 8
53:               srl          s7, sp, s0
                  sll          t1, sp, t0
                  sub          s2, a2, t1
                  and          t5, ra, a2
                  auipc        s2, 179423
                  sub          s2, t1, a5
                  slt          s5, a0, s11
                  nop
                  lui          s0, 200163
                  xor          s6, a3, s6
                  bgeu         s5, zero, 83f
                  sra          a0, a5, t4
                  slli         s6, a1, 3
                  srai         t6, a2, 29
                  srli         s7, a0, 5
                  blt          a7, a4, 73f
                  slt          s8, t1, s6
                  bge          s3, s0, 78f
                  sltiu        s0, sp, -1926
                  bgeu         a2, t1, 85f
73:               or           gp, sp, s5
                  sll          a0, zero, t3
                  sltu         t2, s5, a1
                  or           a1, t1, tp
                  bltu         s1, a2, 94f
78:               sll          s4, a0, s1
                  slli         a3, s9, 15
                  sll          s11, s6, a1
                  blt          tp, a0, 85f
                  bltu         t1, t3, 93f
83:               bge          s9, a0, 86f
                  lui          s7, 745258
85:               bne          s7, s10, 93f
86:               sll          t2, a6, sp
                  slt          s2, s8, a0
                  ori          t5, t3, -1976
                  bne          s9, s10, 106f
                  lui          s6, 218861
                  bge          s5, ra, 92f
92:               beq          a1, s2, 103f
93:               slt          gp, s9, a6
94:               srli         a0, t3, 23
                  bgeu         s5, s2, 101f
                  sltu         s3, s8, s10
                  sra          s1, s6, s6
                  bne          s1, ra, 112f
                  srai         t1, s9, 7
                  sltu         t5, gp, s7
101:              bgeu         s7, s11, 107f
                  add          t5, a6, sp
103:              lui          s5, 409636
                  srli         s5, a5, 17
                  add          a2, s6, s0
106:              addi         s5, s1, -174
107:              beq          t4, a7, 121f
                  sra          s7, ra, t6
                  auipc        t6, 584159
                  bge          tp, a1, 118f
                  nop
112:              beq          s9, t5, 114f
                  bge          s0, a5, 121f
114:              sltiu        tp, s6, 477
                  sltiu        a6, s9, -1416
                  bge          a6, s2, 122f
                  bge          s1, a1, 123f
118:              beq          t3, t5, 119f
119:              slli         t4, a3, 12
                  sub          s1, ra, s2
121:              blt          s1, a0, 126f
122:              bltu         a6, tp, 136f
123:              addi         sp, gp, -934
                  sltu         gp, s7, t3
                  lui          a5, 95114
126:              add          gp, t0, a2
                  ori          ra, a0, 116
                  sltu         s6, s5, s10
                  lui          t4, 406938
                  or           s5, a3, t3
                  or           s2, a5, s2
                  add          t1, t0, t1
                  sltu         a1, s1, t5
                  xori         t1, t4, -1
                  srli         s5, a5, 25
136:              or           a1, a6, s4
                  sra          s9, a1, s1
                  or           zero, s2, t0
                  and          t4, a6, a4
                  sll          a2, s8, a1
                  bgeu         s1, a3, 149f
                  srl          tp, t3, zero
                  sll          s0, t4, t4
                  bgeu         s6, t6, 164f
                  auipc        s3, 603704
                  sltu         s8, s4, s7
                  xori         t2, s9, 801
                  addi         s2, s11, -1545
149:              srai         a6, a1, 26
                  slti         a2, s8, 1517
                  auipc        s8, 930193
                  bgeu         t6, s10, 154f
                  xor          s9, s11, s10
154:              and          a4, s1, s7
                  sltu         t4, s10, s0
                  or           tp, s8, t6
                  bgeu         t1, a0, 160f
                  nop
                  auipc        zero, 623472
160:              sub          ra, a0, s8
                  andi         a1, t3, -1762
                  srl          a1, s11, s2
                  srli         t4, s9, 11
164:              bne          t4, a2, 166f
                  blt          a3, t0, 184f
166:              sub          s9, a2, gp
                  sltiu        s2, s9, -926
                  beq          s9, s11, 170f
                  and          s6, a4, s1
170:              bltu         t3, a7, 183f
                  xori         a5, a7, -1926
                  sltiu        s3, ra, 366
                  bltu         sp, a0, 181f
                  xor          s6, s10, t5
                  bltu         a5, s10, 181f
                  nop
                  nop
                  bge          t3, s11, 195f
                  xori         a6, t6, 1354
                  srai         zero, a4, 20
181:              auipc        s8, 172025
                  and          s0, s7, s11
183:              auipc        ra, 596296
184:              beq          a4, s1, 204f
                  ori          s5, zero, -1431
                  slli         s9, s11, 16
                  bne          gp, t6, 199f
                  slti         s0, a4, -277
                  slli         ra, s11, 9
                  slli         s4, s5, 12
                  bgeu         s4, s5, 202f
                  or           t2, tp, s4
                  sltiu        ra, a0, -390
                  srli         a0, a0, 14
195:              bne          a1, sp, 196f
196:              or           s11, t4, t1
                  slli         t6, a3, 5
                  bge          s9, a3, 212f
199:              sub          s0, t2, t6
                  bltu         t5, s7, 213f
                  xor          s7, s11, t2
202:              srai         a6, t4, 6
                  slti         s2, zero, -1811
204:              srai         s7, t5, 25
                  slli         t6, s3, 30
                  sltu         a0, t5, a2
                  slt          a2, s6, zero
                  slli         s7, a4, 21
                  lui          s9, 84728
                  auipc        t5, 951904
                  auipc        s7, 1041635
212:              xori         t6, t1, -1885
213:              slli         s3, s7, 10
                  sll          s1, a2, sp
                  xori         s7, s5, -1208
                  sltu         s2, t2, s4
                  slli         s5, a6, 1
                  sub          a0, tp, s5
                  sll          t2, a2, t3
                  slli         t1, a0, 31
                  srai         s2, s11, 28
                  srai         ra, t6, 3
                  nop
                  sub          s11, s3, zero
                  beq          s9, t6, 232f
                  sltu         a3, s8, s11
                  slli         a4, ra, 2
                  sra          a2, sp, a4
                  sltiu        a4, ra, 1805
                  srli         s2, zero, 1
                  slli         s8, a2, 28
232:              add          s4, gp, t5
                  bne          s1, a7, 237f
                  bltu         s11, s7, 240f
                  xor          s5, sp, t5
                  slti         t5, t5, -943
237:              slli         zero, ra, 19
                  xori         s5, t0, 911
                  sltu         t2, a4, a0
240:              nop
                  bge          a5, ra, 252f
                  xor          tp, s2, s3
                  slli         a1, a6, 5
                  srl          a2, t5, t6
                  bltu         t1, s7, 258f
                  bge          s8, s9, 257f
                  slli         a4, a4, 0
                  slli         a0, s6, 16
                  slli         a3, t6, 26
                  slti         sp, s1, -1197
                  bne          s11, a2, 268f
252:              sltu         t5, a6, s4
                  sub          s1, gp, a1
                  bgeu         ra, s1, 262f
                  auipc        s9, 952175
                  bltu         s6, t2, 262f
257:              slti         gp, t3, -1403
258:              beq          gp, t2, 278f
                  slli         t2, s0, 5
                  andi         a6, t6, -1452
                  or           s5, s7, gp
262:              addi         a2, s10, 1852
                  sltu         s8, s2, t4
                  sltu         s6, t2, a3
                  bgeu         t1, gp, 271f
                  ori          ra, a0, -1934
                  sub          s11, t6, s5
268:              bne          s7, t1, 281f
                  slti         a4, s1, 624
                  bgeu         t3, s11, 272f
271:              addi         t5, s11, -234
272:              beq          sp, s4, 279f
                  bltu         t1, s5, 287f
                  bne          t0, s6, 285f
                  auipc        s2, 321379
                  sub          s6, zero, t4
                  bne          gp, s3, 289f
278:              and          s3, t5, s2
279:              blt          s3, a7, 287f
                  sltiu        s2, t6, 1811
281:              or           a6, a5, ra
                  and          t5, a3, s8
                  bltu         s10, a3, 291f
                  auipc        tp, 706996
285:              sltu         a5, a2, t0
                  slli         a2, s4, 18
287:              sltu         a6, t5, ra
                  srai         t6, gp, 21
289:              srl          a3, t6, a1
                  addi         a5, a0, -973
291:              srl          ra, t6, a4
                  srl          s1, t5, s9
                  lui          s8, 241743
                  sltiu        s1, t3, 638
                  sub          t6, s3, ra
                  srli         s9, t5, 21
                  sra          s3, s7, sp
                  slt          s2, a0, t3
                  add          s4, a0, sp
                  ori          s8, t5, -1137
                  srl          a3, s9, t5
                  add          s4, t0, ra
                  srl          a7, s9, t2
                  bge          a6, t1, 310f
                  and          s11, t3, s11
                  nop
                  add          a0, t3, t0
                  addi         s4, s3, -688
                  bltu         s6, a1, 313f
310:              auipc        a7, 914373
                  or           s7, s2, s3
                  xori         s6, s11, -978
313:              sra          s5, s1, a5
                  andi         s5, t2, -1719
                  srl          s0, a6, a5
                  beq          s11, a6, 330f
                  bgeu         t6, a5, 336f
                  lui          s3, 462217
                  blt          s4, s6, 330f
                  sub          zero, t3, s4
                  sltu         s3, t0, s8
                  or           t1, s6, s1
                  bge          s9, a3, 329f
                  andi         t6, s3, 2021
                  add          a5, t2, s4
                  andi         s4, gp, -2035
                  ori          s0, a6, -1189
                  sltu         a7, zero, t6
329:              sltu         s4, s6, s10
330:              sra          s5, t1, a4
                  bltu         s6, s5, 332f
332:              slti         a4, s4, -828
                  srli         zero, sp, 27
                  slti         t6, a1, -1275
                  blt          s9, t0, 337f
336:              addi         t5, s0, -1672
337:              sltu         s1, s7, a6
                  beq          t3, s10, 355f
                  nop
                  bne          a6, s7, 343f
                  srl          s7, tp, s11
                  beq          tp, a6, 344f
343:              sltiu        sp, a6, 2021
344:              lui          ra, 638918
                  xori         s4, s1, 697
                  sltu         t2, s9, s7
                  bltu         t5, gp, 367f
                  bltu         t3, s4, 361f
                  sub          ra, a4, s8
                  auipc        s7, 401108
                  sub          a3, sp, s9
                  srli         s0, a7, 23
                  srl          a4, t5, sp
                  bltu         a3, s10, 367f
355:              sll          s2, s4, s5
                  ori          t6, t6, -1641
                  bge          zero, s4, 362f
                  blt          a5, s5, 369f
                  sll          a1, s6, s0
                  slt          tp, t3, t2
361:              add          s0, s0, s6
362:              or           a7, s1, tp
                  srai         s7, s11, 31
                  slt          t2, sp, tp
                  bltu         s8, s6, 366f
366:              beq          a7, s3, 383f
367:              add          a1, sp, s2
                  slti         a2, a7, -1399
369:              xor          a3, a5, a3
                  bgeu         s1, s11, 383f
                  bne          ra, s10, 390f
                  sra          ra, sp, s7
                  bne          t3, gp, 384f
                  sra          sp, s6, tp
                  sltiu        s3, a1, 644
                  bgeu         a0, t5, 381f
                  slt          ra, t6, t3
                  beq          t4, s5, 395f
                  slli         tp, t0, 27
                  or           a7, sp, a3
381:              andi         t4, t6, -1946
                  sra          t1, s9, s4
383:              ori          s2, s4, -1487
384:              bne          s5, s7, 390f
                  xor          s8, s9, t4
                  add          a4, s6, t2
                  sll          s4, tp, t6
                  srl          sp, a3, a1
                  lui          a4, 304187
390:              ori          a2, s11, 173
                  add          t4, s10, s3
                  ori          a3, s6, 939
                  srl          s6, s7, s1
                  add          a3, ra, s11
395:              srai         gp, t4, 7
                  nop
                  sra          s8, t3, a6
                  sub          s5, t2, t2
                  sltiu        t1, s10, 482
                  sltu         ra, s2, s7
                  and          s9, s5, s2
                  sltiu        s9, ra, -817
                  andi         a5, t3, 282
                  srli         gp, t5, 29
                  srl          a5, t3, a4
                  or           s11, a4, s7
                  addi         a5, t4, 868
                  slli         t4, zero, 3
                  andi         a2, s4, -401
                  and          s0, t1, s4
                  xor          a1, s3, s6
                  bgeu         t0, tp, 420f
                  and          a2, s3, s8
                  slt          a2, a2, s11
                  add          t1, s11, t6
                  slti         t2, a4, 1458
                  addi         s5, a2, 1806
                  bgeu         s11, s9, 420f
                  sra          s5, zero, a4
420:              srai         a5, a4, 16
                  bltu         s6, t3, 434f
                  bltu         a4, a1, 428f
                  andi         s0, ra, 861
                  andi         s1, a2, 1786
                  slli         tp, t5, 27
                  srli         s4, tp, 13
                  bltu         s9, a4, 428f
428:              sll          a4, s8, a6
                  ori          s5, s6, -1681
                  xor          s6, a7, s7
                  sltiu        s8, sp, -276
                  sll          s8, t3, a3
                  bne          ra, t4, 434f
434:              xori         gp, t3, 1473
                  beq          s9, s5, 441f
                  bltu         s7, zero, 450f
                  srli         t1, s4, 17
                  addi         a3, t4, 31
                  bne          gp, a6, 451f
                  bge          a6, a4, 442f
441:              bne          s7, t0, 447f
442:              slt          t4, a5, a6
                  beq          a2, a2, 457f
                  bne          tp, s3, 464f
                  or           ra, t2, s9
                  xori         s11, t0, 260
447:              xor          ra, s2, a3
                  xori         s8, t4, -846
                  bge          t3, ra, 469f
450:              slli         a6, s6, 17
451:              sub          a2, a4, t2
                  sub          a7, t6, a6
                  auipc        s5, 413795
                  ori          ra, s10, -459
                  ori          s0, t2, 1705
                  bge          t0, s2, 464f
457:              xori         ra, t1, 669
                  srl          t5, s3, s2
                  slt          s8, a2, t0
                  bltu         s10, a3, 473f
                  sltiu        gp, s7, 1636
                  bgeu         s1, t4, 473f
                  slti         ra, s2, 1370
464:              ori          zero, a0, -2024
                  sltiu        a4, t6, -851
                  xori         a5, a7, -1713
                  srl          s3, a4, s1
                  ori          a6, s4, -1928
469:              srli         t5, s10, 27
                  sltiu        s3, s10, -1678
                  nop
                  blt          s11, s3, 475f
473:              ori          s4, s2, 1123
                  xori         a5, s7, 1977
475:              beq          t3, a3, 477f
                  or           a7, t4, a3
477:              sltiu        s6, a1, 1046
                  andi         a4, a7, 1750
                  andi         t4, a4, -1972
                  xor          t1, a5, s5
                  addi         tp, a4, 634
                  slli         s2, a3, 0
                  slt          a3, s3, s4
                  and          a3, a6, a7
                  add          s11, a4, s2
                  xori         ra, s8, -1647
                  bge          s1, a6, 498f
                  bne          ra, s8, 505f
                  add          s3, a6, s9
                  sll          t2, s6, a6
                  lui          a5, 392136
                  or           tp, a3, s10
                  sub          ra, s5, s3
                  blt          s3, t3, 498f
                  slli         t4, s1, 30
                  lui          s4, 4298
                  or           t4, t6, tp
498:              bge          t4, sp, 505f
                  sltiu        s9, a5, -746
                  slti         t6, sp, -623
                  bgeu         t3, s4, 509f
                  andi         s11, a2, 496
                  add          a1, a4, a4
                  bgeu         a3, s0, 505f
505:              and          t4, s9, gp
                  bne          a2, t6, 523f
                  xori         s1, a5, -553
                  slti         ra, t2, 59
509:              lui          s11, 425006
                  sltiu        s5, a1, 1332
                  xori         t5, s11, -1118
                  slt          a4, s7, t4
                  sltu         a0, a6, a3
                  slti         s8, a7, -1392
                  xor          sp, s2, a1
                  bne          s10, s3, 527f
                  sll          s1, ra, s2
                  bne          a5, s11, 529f
                  srai         s5, a5, 1
                  slli         s7, s8, 4
                  addi         s3, t3, -1412
                  slt          a1, t0, a4
523:              sll          a2, a1, s4
                  bge          t5, t1, 538f
                  sltu         s5, a4, s3
                  bgeu         s5, s11, 540f
527:              bge          sp, s7, 528f
528:              or           s1, sp, s4
529:              xor          a0, t1, s10
                  slli         a2, s11, 20
                  sra          s5, s9, a3
                  bltu         s8, a6, 537f
                  slti         s8, t2, 340
                  lui          a5, 122832
                  sltu         a5, t5, s7
                  la           t6, region_0+790 #start riscv_load_store_rand_instr_stream_12
                  add          t4, s11, s0
                  sb           t5, 277(t6)
                  slt          s0, s3, s7
                  lbu          s7, -725(t6)
                  lw           a3, -614(t6)
                  lbu          t4, -597(t6)
                  and          s2, a7, a4
                  auipc        sp, 83577
                  add          s0, zero, a5
                  lb           s6, 349(t6)
                  auipc        s6, 273370
                  lb           a2, 140(t6)
                  or           t5, t3, a1
                  auipc        s2, 474837
                  auipc        s5, 619603
                  sll          s1, s4, s2
                  lbu          tp, 472(t6)
                  xor          a5, t6, a0
                  slti         a2, s3, -1991
                  sb           s10, 473(t6)
                  lhu          t5, -304(t6)
                  sb           s4, -723(t6)
                  sltiu        s1, a2, -346
                  lbu          tp, -261(t6)
                  lb           tp, 91(t6)
                  lbu          t1, 285(t6)
                  lb           s11, 787(t6)
                  slt          zero, s2, a0
                  lbu          s6, 931(t6)
                  srli         s8, a3, 23
                  sb           s0, -205(t6)
                  sll          a3, t4, s5
                  add          a1, a3, gp
                  sltiu        ra, s4, -1830
                  add          a7, t6, a7
                  slti         s1, t5, -329
                  nop
                  sb           t5, 176(t6)
                  lbu          tp, -133(t6)
                  lh           gp, -8(t6)
                  sb           s1, 594(t6) #end riscv_load_store_rand_instr_stream_12
                  add          s7, ra, s7
537:              srl          s9, s8, s2
538:              addi         ra, s11, -1983
                  auipc        a1, 344722
540:              or           a3, a4, s0
                  sub          a1, s5, t6
                  addi         a1, s6, -713
                  add          s7, a1, t6
                  xori         t1, s4, -1023
                  bge          s4, t1, 547f
                  sltu         a0, a7, t6
547:              ori          s2, s7, 504
                  beq          t1, sp, 555f
                  bgeu         s6, a4, 569f
                  slt          s0, t1, s1
                  slli         a1, s10, 19
                  slli         s11, a4, 27
                  srli         a4, s6, 1
                  slli         a0, s11, 8
555:              bge          s2, s7, 563f
                  add          t1, s10, a7
                  slti         a4, a1, 1699
                  slti         t6, s3, 315
                  sltiu        a2, s2, -1204
                  sltu         s7, t2, t4
                  slti         t6, a7, -1656
                  srli         s7, a1, 25
563:              bge          t5, t4, 566f
                  sub          a6, a4, a6
                  nop
566:              or           t6, s10, a1
                  andi         a4, a1, 801
                  add          s0, sp, sp
569:              srai         s9, s7, 6
                  add          s2, ra, s2
                  sll          ra, a6, t2
                  blt          s10, tp, 578f
                  sltu         gp, s3, a2
                  xor          ra, zero, s5
                  srai         a0, zero, 10
                  slti         s0, zero, 720
                  lui          s4, 510455
578:              slli         gp, s0, 15
                  sltiu        a3, t6, -151
                  or           s7, s1, a1
                  sltiu        s7, t1, -1381
                  add          s5, ra, t2
                  slli         a0, s3, 5
                  auipc        t4, 974105
                  blt          s0, t6, 587f
                  and          t4, t4, s4
587:              srli         a5, a1, 15
                  add          t4, ra, s11
                  and          ra, zero, t0
                  bge          s3, t6, 598f
                  blt          a3, s11, 608f
                  bgeu         a5, s2, 612f
                  or           sp, s9, zero
                  sra          a7, t5, ra
                  blt          s7, s9, 607f
                  lui          s1, 309336
                  srl          sp, a0, a3
598:              srai         t6, ra, 1
                  slti         sp, t5, -552
                  bne          t2, a6, 604f
                  sub          tp, t1, t2
                  or           t2, t4, t5
                  bne          s11, zero, 609f
604:              sll          t2, s6, s7
                  srai         s11, tp, 24
                  auipc        t5, 1921
607:              xori         a1, s1, -1728
608:              sra          a5, a2, s5
609:              sltu         a5, t0, s8
                  nop
                  bltu         s6, a0, 617f
612:              sltu         a0, a6, s4
                  sra          s7, s0, s0
                  andi         t2, s0, 143
                  bne          tp, s1, 628f
                  andi         a4, t2, 452
617:              nop
                  addi         a7, t1, -1057
                  beq          ra, s10, 632f
                  sub          s2, s8, a4
                  bge          s1, s8, 627f
                  nop
                  sltu         t4, s4, t5
                  ori          ra, a0, -387
                  srl          a2, s2, s4
                  lui          t4, 563179
627:              add          s0, t1, t4
628:              beq          s0, s6, 639f
                  bne          zero, a3, 648f
                  sltiu        t2, a0, 197
                  auipc        a2, 416774
632:              bge          ra, s9, 634f
                  bne          s2, t4, 641f
634:              srai         s5, s1, 30
                  slti         t5, s2, 1200
                  and          t5, a3, a7
                  bne          tp, s7, 650f
                  xori         gp, t1, -1059
639:              bge          zero, t6, 652f
                  beq          a4, t3, 647f
641:              beq          ra, a6, 655f
                  and          sp, a1, gp
                  lui          a4, 275705
                  beq          s4, t1, 661f
                  slt          s11, s8, s5
                  bge          s1, t4, 649f
647:              ori          t4, t6, -1635
648:              slli         a3, a2, 16
649:              add          sp, s9, t3
650:              xor          s0, s2, t3
                  bgeu         s2, tp, 657f
652:              sll          s1, t3, t6
                  lui          s7, 614049
                  sra          a6, s5, s9
655:              sltiu        s3, s10, 871
                  lui          t2, 735275
657:              lui          a1, 698289
                  beq          t5, t3, 660f
                  bgeu         t4, zero, 672f
660:              sltu         a0, ra, s2
661:              nop
                  add          zero, gp, s10
                  and          s11, t1, gp
                  bne          t5, s1, 675f
                  ori          t4, s3, -1174
                  nop
                  srai         gp, a0, 15
                  auipc        a3, 118552
                  slt          a0, t5, t0
                  nop
                  lui          tp, 681883
672:              slt          a2, s6, a6
                  srai         t4, a4, 26
                  slt          s9, t2, s3
675:              sra          a0, t2, t4
                  slti         t1, s3, -1592
                  sra          s5, a3, zero
                  bltu         a6, t2, 698f
                  bltu         a7, a1, 680f
680:              blt          t6, t0, 693f
                  slti         s0, t1, -123
                  sra          s6, s5, s0
                  xor          s0, s10, t4
                  bne          a6, t4, 686f
                  xor          gp, a7, s8
686:              ori          t6, a1, 380
                  xori         s7, a7, -56
                  sll          t2, s3, s11
                  xori         s2, s3, 619
                  and          t4, t0, a1
                  nop
                  bne          a6, s9, 693f
693:              bne          gp, tp, 701f
                  srai         s1, s6, 14
                  bne          s10, sp, 700f
                  xori         sp, ra, -1275
                  slli         a4, s3, 14
698:              sub          gp, s9, a4
                  sltu         s11, t6, a2
700:              sll          a7, t2, t4
701:              sll          s8, tp, a0
                  andi         a6, s4, 1924
                  slli         zero, t0, 27
                  lui          zero, 887750
                  andi         a4, s2, -1600
                  lui          a1, 642469
                  srai         zero, s2, 31
                  srl          s6, s5, s8
                  sub          s6, s9, sp
                  beq          a7, s11, 712f
                  or           s2, tp, s11
712:              sltiu        gp, a7, -1147
                  ori          t2, ra, -1977
                  xor          a1, ra, s1
                  slli         a2, a1, 0
                  xori         s5, s2, -469
                  srli         s4, t3, 3
                  lui          a7, 484457
                  xor          s2, s9, s7
                  slli         ra, s7, 26
                  sltiu        a6, s3, -1343
                  srli         t2, a5, 22
                  bgeu         s9, t1, 734f
                  sra          s1, a4, s7
                  sra          s8, t2, s5
                  addi         a2, t6, 1676
                  bge          s7, a5, 739f
                  bge          s0, t2, 734f
                  beq          t2, s11, 743f
                  srl          gp, s10, s0
                  bge          ra, sp, 735f
                  xori         a3, a7, -1796
                  bgeu         a7, s3, 741f
734:              bgeu         s5, a3, 740f
735:              addi         t2, a1, -1891
                  blt          t3, s2, 755f
                  srai         s4, t4, 19
                  sll          a0, s8, a0
739:              ori          t2, a5, -785
740:              srai         a0, t3, 6
741:              srl          s3, ra, s1
                  nop
743:              sra          t5, s8, a7
                  slli         a1, a4, 28
                  andi         t5, gp, 1600
                  sltu         a4, a3, s8
                  lui          s2, 34366
                  srai         s9, ra, 15
                  sltu         t4, t3, tp
                  add          s6, tp, t1
                  nop
                  bge          s2, sp, 772f
                  srl          a4, a3, t1
                  or           a7, s1, s7
755:              ori          s11, s4, -1810
                  beq          a2, a5, 764f
                  ori          zero, t4, -1778
                  slli         tp, a3, 1
                  add          s4, s10, t3
                  nop
                  ori          tp, s5, 959
                  srli         t4, gp, 3
                  lui          s2, 1042200
764:              sub          t6, s10, a5
                  or           a7, s1, a5
                  sub          t2, t1, t2
                  sll          a6, s11, zero
                  srli         tp, a7, 23
                  bltu         s2, a7, 786f
                  xor          s0, s6, s4
                  sltu         s6, t6, s10
772:              nop
                  sltu         s3, t4, s7
                  xor          s1, s6, zero
                  bgeu         s7, t2, 786f
                  add          tp, a2, a0
                  add          a6, t3, s9
                  bge          a2, ra, 784f
                  slli         t2, tp, 30
                  and          zero, ra, s0
                  slt          s11, a2, a6
                  xori         s1, s6, 1078
                  nop
784:              slti         sp, zero, -653
                  beq          t1, ra, 786f
786:              beq          ra, a5, 794f
                  slli         s9, t6, 13
                  bne          s4, a4, 789f
789:              lui          zero, 556200
                  beq          s2, t3, 798f
                  andi         t6, zero, -1283
                  slti         a0, gp, 209
                  xor          t4, s0, s5
794:              andi         t1, s2, 1945
                  add          a3, s5, s3
                  lui          zero, 611649
                  and          ra, a5, s2
798:              ori          ra, a1, 474
                  slli         s9, a7, 24
                  lui          s5, 773841
                  sub          s1, sp, s0
                  xor          s0, s0, sp
                  srli         gp, sp, 2
                  bgeu         a0, s11, 818f
                  sltiu        t5, t0, -1230
                  srli         t6, sp, 14
                  slt          a6, s7, s5
                  xori         t2, t5, 552
                  bne          t4, gp, 814f
                  bgeu         t4, s1, 823f
                  slli         s4, a1, 6
                  auipc        s2, 723416
                  xori         sp, ra, 224
814:              sra          s0, sp, zero
                  srl          a7, t2, t2
                  sltu         a3, a1, a0
                  srli         tp, a1, 8
818:              slt          s11, gp, s1
                  xori         ra, ra, 1731
                  sub          s3, t6, a7
                  bge          a2, t2, 828f
                  slli         t1, t4, 16
823:              nop
                  sltiu        ra, s1, 1143
                  add          s7, a6, tp
                  bge          s3, t5, 839f
                  slli         a2, s11, 30
828:              addi         t2, s5, 1982
                  sra          a2, s10, s5
                  bgeu         s4, s9, 841f
                  bgeu         s7, sp, 837f
                  xor          ra, a5, a1
                  or           s8, sp, s1
                  bne          zero, t1, 840f
                  sra          t5, a5, s1
                  add          t2, gp, s1
837:              beq          t5, a2, 839f
                  or           t6, s3, t6
839:              add          s7, t0, s10
840:              bne          t4, ra, 844f
841:              addi         a6, t4, -1958
                  auipc        s4, 855571
                  slti         gp, a0, -1809
844:              sltiu        a1, t1, -204
                  addi         ra, t4, -980
                  sll          s2, s5, a5
                  xori         a4, s3, 1319
                  sub          t2, a6, a1
                  bge          a2, s0, 869f
                  and          t6, a0, a5
                  lui          s7, 451455
                  and          t6, s6, a3
                  srli         a4, gp, 19
                  auipc        a0, 255011
                  slli         s9, a0, 30
                  auipc        s3, 226018
                  sub          s9, s7, s5
                  xori         s4, t0, -1189
                  xori         s3, a2, -1393
                  add          s5, s8, s7
                  xor          s0, s4, a6
                  xori         s11, s1, 471
                  ori          s4, ra, 1925
                  sra          a6, sp, tp
                  srli         s3, zero, 30
                  blt          s11, s3, 880f
                  sltiu        t6, s6, -22
                  sltiu        s2, a3, 1269
869:              sll          a0, t3, t0
                  add          t4, a3, s8
                  srl          s7, t2, t0
                  xor          gp, a0, ra
                  andi         s9, s0, -174
                  srl          t4, t0, t0
                  srai         s8, t1, 8
                  nop
                  srai         a1, s3, 13
                  auipc        a7, 229376
                  bge          t2, t3, 882f
880:              auipc        s4, 852526
                  la           sp, region_0+437 #start riscv_load_store_rand_instr_stream_3
                  or           a1, a3, sp
                  lbu          a1, 46(sp)
                  lbu          a1, -4(sp)
                  lb           a3, 16(sp)
                  sb           a5, 58(sp)
                  srai         s2, s3, 12
                  xor          a5, s11, t1
                  lui          a4, 810904
                  auipc        t5, 943652
                  lh           t2, 39(sp)
                  srli         s8, t3, 30
                  sb           s10, -26(sp)
                  lhu          t5, -3(sp)
                  lb           s4, 48(sp)
                  auipc        s9, 229081
                  andi         s4, a7, 900
                  ori          zero, t4, 1934
                  sh           s0, 15(sp)
                  lb           s4, 14(sp)
                  slti         s11, s1, 1462
                  ori          a5, a6, -1823
                  lb           s3, 20(sp)
                  srl          s6, sp, t5
                  xor          t5, s2, t5
                  sw           a1, 55(sp)
                  sb           s3, -40(sp)
                  sw           s2, -61(sp)
                  sh           a0, -31(sp)
                  xor          s3, s3, s8
                  sb           s6, -40(sp)
                  addi         gp, a5, 859
                  lb           a1, 40(sp)
                  sh           a5, -19(sp)
                  lw           zero, -61(sp)
                  lw           a1, 11(sp)
                  lhu          a6, 21(sp)
                  lhu          a3, 59(sp)
                  sb           t1, 52(sp)
                  lh           s1, 39(sp)
                  sb           a5, -13(sp)
                  lb           t2, 0(sp) #end riscv_load_store_rand_instr_stream_3
                  auipc        s8, 211021
882:              ori          t6, s4, 67
                  sltiu        t4, s10, -420
                  add          s0, s5, s10
                  blt          s3, s2, 893f
                  add          a7, s9, s4
                  bltu         a5, s9, 889f
                  slli         s6, s8, 14
889:              sltiu        a0, ra, 1384
                  and          t1, s6, s3
                  srli         s3, a7, 7
                  and          a2, s8, s11
893:              xori         a5, s11, 1282
                  beq          s2, t0, 906f
                  xori         a0, s1, 811
                  xori         s9, a6, -1592
                  andi         t5, s11, -719
                  bgeu         t2, s4, 915f
                  bne          ra, s3, 912f
                  and          a1, a3, a1
                  slt          s0, zero, s0
                  sltiu        a5, sp, -1912
                  and          a2, s10, t2
                  bge          a1, s10, 910f
                  sltu         s7, s7, tp
906:              bgeu         a0, s2, 917f
                  srl          a2, s10, s2
                  ori          s0, sp, -299
                  bge          a0, s0, 929f
910:              beq          s0, a0, 927f
                  sltiu        zero, a4, -1839
912:              bltu         s11, t1, 918f
                  nop
                  sltu         sp, t1, s0
915:              ori          t1, s2, -1643
                  xor          ra, a7, t1
917:              add          s5, a4, a1
918:              beq          s3, s0, 937f
                  xor          a3, ra, a2
                  blt          a5, s7, 931f
                  auipc        a5, 61259
                  blt          a0, a3, 924f
                  xor          s11, s8, tp
924:              bne          s11, s4, 930f
                  slli         t2, a0, 27
                  bltu         tp, a4, 938f
927:              srl          s5, t3, tp
                  srli         s5, a2, 13
929:              slti         a3, a7, -1218
930:              bne          s8, s11, 933f
931:              bge          s1, gp, 939f
                  nop
933:              auipc        a5, 409927
                  sra          a7, t1, a4
                  sub          a1, s10, a4
                  srli         s7, t1, 20
937:              slt          a3, a3, a5
938:              bltu         t2, s2, 943f
939:              sltiu        a3, s2, 1135
                  addi         t5, a6, -970
                  srli         s2, t4, 20
                  slli         a3, gp, 17
943:              sub          s11, a1, gp
                  nop
                  addi         s3, s8, 411
                  slt          ra, s9, s11
                  ori          a2, a4, -1789
                  slti         s9, a4, -453
                  srli         s5, t1, 24
                  and          t4, t2, s5
                  sra          a4, t2, sp
                  bge          t3, t3, 966f
                  srl          t1, zero, s10
                  srai         gp, t1, 9
                  beq          s1, s10, 972f
                  srli         s11, tp, 23
                  xori         s9, t5, 471
                  or           s3, zero, a6
                  andi         tp, t2, 1211
                  srai         s5, s9, 7
                  sll          a6, s2, a6
                  bgeu         s1, a5, 969f
                  srli         gp, s5, 29
                  blt          s2, s6, 984f
                  srli         s8, a2, 0
966:              xor          gp, zero, s7
                  addi         s0, t5, 761
                  and          s9, ra, s1
969:              xori         t1, a2, -1718
                  auipc        s7, 343502
                  slli         a2, s8, 17
972:              blt          s7, t5, 978f
                  addi         a2, t2, -1730
                  slt          s7, s10, t6
                  xor          gp, s11, t0
                  slli         s8, s5, 2
                  ori          s3, s3, 990
978:              xor          sp, tp, s6
                  bne          s0, a7, 992f
                  or           s4, a2, t1
                  bgeu         s4, t2, 1000f
                  blt          t2, s10, 983f
983:              or           s9, zero, s10
984:              add          t2, t3, t4
                  bgeu         t1, a3, 991f
                  add          t6, a1, a1
                  add          s0, s1, s10
                  bgeu         tp, a4, 990f
                  sll          t2, gp, gp
990:              sra          t2, t6, ra
991:              beq          s5, a0, 1008f
992:              or           a0, s0, s5
                  blt          gp, a4, 1001f
                  andi         a4, a4, -136
                  ori          s7, t2, 167
                  nop
                  bne          s1, zero, 1010f
                  sra          t4, a4, sp
                  slli         s8, gp, 12
1000:             slti         s5, t6, 958
1001:             slli         s0, s5, 20
                  bne          a7, s9, 1003f
1003:             slt          t2, s6, a5
                  sltu         s8, t1, s1
                  lui          zero, 274799
                  beq          t1, ra, 1017f
                  slli         a1, a2, 1
1008:             nop
                  nop
1010:             sub          t2, t6, sp
                  slli         a0, s2, 22
                  beq          a0, ra, 1023f
                  ori          a2, s11, -619
                  slt          zero, s8, a0
                  xori         a2, a6, -849
                  sltiu        tp, s0, -756
1017:             sll          a0, gp, s2
                  srli         s8, a3, 20
                  sll          t2, s10, s2
                  sra          t1, a6, tp
                  beq          s2, s2, 1029f
                  bne          s3, s9, 1042f
1023:             sub          s5, s2, s2
                  xori         s8, s0, 1861
                  beq          ra, t6, 1038f
                  andi         a4, s8, -1355
                  srli         a6, s9, 24
                  slli         s8, ra, 2
1029:             slli         s7, a5, 9
                  sra          gp, t2, a7
                  srli         a4, t6, 27
                  auipc        a4, 909224
                  sltu         a1, t5, zero
                  ori          s0, a1, 156
                  add          t6, a0, a4
                  and          a7, s1, t6
                  bgeu         s1, s5, 1039f
1038:             srl          t4, t2, sp
1039:             and          s1, t3, s0
                  addi         sp, s9, 1880
                  bltu         a1, zero, 1052f
1042:             andi         s1, a4, -734
                  srl          t6, s8, t3
                  xor          s8, a4, a1
                  sra          a5, t2, s7
                  blt          a0, sp, 1060f
                  auipc        a2, 608039
                  srai         s6, t6, 19
                  beq          gp, a7, 1055f
                  auipc        s9, 118856
                  auipc        gp, 93601
1052:             bge          s9, zero, 1056f
                  nop
                  auipc        s6, 667981
1055:             auipc        s4, 734036
1056:             slti         s5, s1, 1952
                  srl          a5, s6, t4
                  nop
                  and          a1, a4, a3
1060:             lui          a2, 52781
                  srl          s8, a1, s5
                  addi         tp, t1, 703
                  and          t5, s9, t0
                  srl          sp, s4, gp
                  slt          s11, s9, sp
                  srl          t2, a1, t3
                  xor          s1, t3, s3
                  slli         s9, s3, 11
                  sll          s11, a5, a2
                  addi         a5, t5, -152
                  beq          s3, a3, 1073f
                  or           sp, tp, a7
1073:             nop
                  srli         t4, sp, 1
                  or           s4, gp, a2
                  slt          a2, zero, t6
                  or           a3, a0, zero
                  addi         a1, t4, 446
                  bge          s8, s3, 1099f
                  lui          s8, 829080
                  sll          s2, t2, a4
                  bge          gp, s5, 1096f
                  bltu         t2, s2, 1100f
                  bgeu         t0, sp, 1090f
                  or           s4, s5, zero
                  sub          a1, t5, s3
                  sra          s0, s3, a2
                  bgeu         t1, sp, 1095f
                  bgeu         t4, a6, 1094f
1090:             xori         s0, t0, 1757
                  slti         a2, a0, -1901
                  sra          s0, t1, s3
                  or           gp, a0, sp
1094:             ori          a6, gp, 1246
1095:             sltiu        t1, a1, 1515
1096:             add          s8, s11, sp
                  or           a3, gp, t5
                  bne          a6, gp, 1117f
1099:             nop
1100:             bge          a4, s1, 1101f
1101:             srli         a6, a6, 10
                  andi         t6, s6, 203
                  sltu         a5, tp, s11
                  srl          s11, s2, a2
                  andi         s2, tp, -1840
                  bgeu         a7, s1, 1112f
                  bltu         s8, a3, 1120f
                  andi         s2, t3, 1922
                  sra          a7, t3, s1
                  xor          t2, t1, s10
                  lui          s9, 389526
1112:             srai         gp, t6, 22
                  ori          ra, a7, -1849
                  beq          a0, gp, 1116f
                  addi         s4, s4, 1647
1116:             addi         s3, sp, 720
1117:             sltiu        s6, a6, -2017
                  sub          a7, t1, a6
                  srli         t4, a6, 7
1120:             srli         t6, zero, 6
                  sub          a4, a4, t6
                  bne          t2, s6, 1134f
                  sra          a5, a2, a3
                  bgeu         a4, ra, 1141f
                  slt          s1, zero, a5
                  bge          s8, s6, 1134f
                  nop
                  lui          sp, 899156
                  beq          gp, a6, 1130f
1130:             addi         s3, s1, -1199
                  blt          s8, zero, 1137f
                  sra          a5, s11, t3
                  srai         s5, t2, 24
1134:             srai         t4, t5, 14
                  sub          s5, s3, tp
                  bge          t1, s11, 1144f
1137:             sra          tp, s7, a7
                  addi         t2, s0, -1501
                  bge          a4, a1, 1142f
                  sltu         t1, s3, gp
1141:             andi         s3, s1, -714
1142:             bne          s6, s5, 1153f
                  lui          s3, 762776
1144:             andi         zero, a2, 1356
                  slli         t4, a7, 15
                  or           a1, a5, t4
                  or           a5, s5, s1
                  or           t6, s8, zero
                  bge          s2, gp, 1160f
                  nop
                  slt          zero, s8, s2
                  bge          sp, a2, 1165f
1153:             beq          a5, s5, 1157f
                  sll          zero, s1, s6
                  slti         s1, s4, -1500
                  sltu         s4, a5, s4
1157:             sltiu        s8, t1, -214
                  sub          s11, s10, t1
                  sll          t2, s5, a6
1160:             beq          tp, a5, 1173f
                  lui          a6, 322687
                  andi         s5, s2, -859
                  nop
                  lui          t1, 773694
1165:             bne          a4, t3, 1167f
                  ori          a6, s11, -200
1167:             bge          sp, a0, 1169f
                  srl          s11, zero, s4
1169:             ori          a0, s7, 1960
                  srl          s9, ra, sp
                  sltu         sp, s1, a3
                  srai         t5, s3, 15
1173:             lui          a6, 621293
                  blt          t6, s4, 1180f
                  sltu         t1, t3, s5
                  nop
                  blt          s1, s11, 1191f
                  blt          t6, s11, 1198f
                  bne          a0, s7, 1187f
1180:             andi         a3, a4, 1202
                  bge          t4, a4, 1192f
                  xor          a7, s7, s1
                  blt          t0, t2, 1185f
                  srli         a7, s8, 28
1185:             bgeu         s7, s1, 1205f
                  bltu         t6, t3, 1200f
1187:             bne          s9, t2, 1193f
                  and          s8, s8, s9
                  beq          a5, s8, 1206f
                  sltu         s6, a0, t3
1191:             lui          a2, 532378
1192:             srl          s4, a7, sp
1193:             sltiu        t1, a5, -983
                  auipc        t2, 479546
                  bge          t4, a5, 1208f
                  xor          sp, a3, s1
                  bne          sp, s11, 1201f
1198:             add          ra, t5, s5
                  nop
1200:             auipc        s8, 354825
1201:             auipc        ra, 555368
                  srl          s9, t5, a2
                  bltu         a7, s3, 1216f
                  and          s9, t5, a7
1205:             sll          sp, s4, s8
1206:             auipc        s2, 320701
                  slli         t6, s4, 15
1208:             beq          a5, tp, 1216f
                  and          a3, t2, s4
                  bge          s5, t6, 1230f
                  nop
                  auipc        t5, 925564
                  xor          sp, a2, t5
                  srli         a5, t1, 1
                  andi         s0, t0, 1403
1216:             andi         zero, tp, 2035
                  ori          s6, t0, 137
                  sltu         t5, t4, s8
                  srli         zero, s6, 0
                  bge          s9, s8, 1237f
                  sltu         gp, s6, s0
                  sltu         t4, t6, a2
                  beq          t3, a4, 1231f
                  sra          s0, sp, s9
                  sll          s3, t0, a2
                  slti         a1, gp, 1450
                  and          s7, a2, s3
                  bge          tp, s11, 1247f
                  srli         s1, s5, 11
1230:             addi         tp, s2, -1595
1231:             nop
                  bgeu         s5, a0, 1233f
1233:             or           a5, t4, s1
                  sltiu        s3, a7, -1182
                  bltu         a6, a7, 1246f
                  sltiu        s8, s9, 823
1237:             blt          t6, t1, 1250f
                  xori         s8, zero, -1049
                  xori         a0, s0, -1838
                  bge          a5, tp, 1241f
1241:             add          s9, t4, s11
                  sltiu        s7, t3, -1386
                  bne          s9, s1, 1249f
                  sll          s8, t4, tp
                  and          s11, a6, ra
1246:             lui          a1, 74172
1247:             blt          a0, zero, 1249f
                  srai         a5, sp, 26
1249:             xori         t4, a2, 1458
1250:             lui          s0, 525942
                  add          zero, zero, ra
                  sra          a2, s5, tp
                  blt          tp, t1, 1264f
                  auipc        sp, 281881
                  slli         t4, a4, 15
                  or           t4, s0, s4
                  or           s0, t2, t5
                  beq          s8, s11, 1265f
                  slli         a5, s1, 25
                  nop
                  sltiu        a2, t6, 1860
                  andi         a2, s1, 1850
                  sll          a0, a2, a6
1264:             srai         gp, t2, 17
1265:             bltu         a3, s8, 1271f
                  beq          s2, t2, 1272f
                  slti         a5, s0, -1720
                  slti         a5, s9, 1841
                  beq          tp, a5, 1281f
                  xor          a7, a0, zero
1271:             nop
1272:             sub          a5, t4, t3
                  auipc        s6, 831660
                  nop
                  srli         s6, t5, 27
                  srli         ra, sp, 5
                  auipc        t6, 375764
                  auipc        tp, 20548
                  bltu         a5, s8, 1290f
                  sll          sp, a6, t1
1281:             sll          a7, s5, zero
                  beq          sp, a2, 1296f
                  srli         a0, s7, 1
                  sra          s7, t4, s0
                  ori          t2, ra, 1489
                  nop
                  la           s7, region_1+1371 #start riscv_load_store_rand_instr_stream_10
                  lh           s2, 11(s7)
                  sh           a2, -151(s7)
                  lw           s1, -23(s7)
                  slt          t6, t0, s11
                  srai         s8, s3, 10
                  lb           s4, -204(s7)
                  xori         s11, s2, -1000
                  sltiu        s4, a2, -1162
                  sll          ra, s4, s0
                  sb           s7, -136(s7)
                  lbu          t2, 82(s7)
                  lb           ra, 214(s7)
                  lb           t6, -153(s7)
                  xori         a2, a3, 1294
                  sra          a5, a7, s3
                  ori          s3, s8, -1260
                  lw           t4, 49(s7)
                  lbu          a3, -125(s7)
                  slt          a3, s4, ra
                  lb           s0, -200(s7)
                  sb           gp, 24(s7)
                  lb           a4, -14(s7)
                  lw           s5, 201(s7)
                  lw           a6, 69(s7)
                  xor          a7, t2, a2
                  lb           tp, -195(s7) #end riscv_load_store_rand_instr_stream_10
                  bltu         a0, a6, 1290f
                  blt          t5, t6, 1293f
                  bltu         t6, t2, 1297f
1290:             slli         s8, s7, 14
                  bltu         a3, a6, 1293f
                  slli         zero, zero, 0
1293:             blt          a1, gp, 1307f
                  slt          s8, t4, s5
                  addi         s0, t1, 1396
1296:             or           a3, a0, s7
1297:             lui          a7, 730121
                  auipc        s9, 588159
                  srl          s11, a0, s7
                  addi         t5, s9, 1234
                  slt          zero, s3, s7
                  srai         t5, a5, 28
                  sltu         tp, tp, t1
                  or           ra, s2, a1
                  slt          a2, s9, t1
                  srl          s4, a6, s6
1307:             srl          s8, s11, s1
                  srli         a3, s1, 10
                  ori          t4, s3, 1983
                  slt          s6, t1, s5
                  addi         t4, s10, -892
                  srli         a2, zero, 29
                  xor          a2, sp, ra
                  sub          a0, s1, a6
                  sltiu        a4, a7, -692
                  ori          s8, ra, 1110
                  bgeu         a1, a6, 1319f
                  bgeu         t3, s11, 1330f
1319:             bne          a3, a7, 1325f
                  andi         zero, a1, 165
                  srli         t4, s0, 10
                  beq          s1, gp, 1323f
1323:             bltu         sp, a2, 1331f
                  andi         t6, s8, 1666
1325:             srli         zero, t2, 15
                  beq          s8, tp, 1346f
                  xori         s5, t1, -1794
                  xori         t4, s0, -1285
                  add          s4, t1, a1
1330:             andi         a5, s2, -508
1331:             xor          a0, s1, t6
                  bne          a5, s11, 1340f
                  sll          s7, s6, s2
                  sub          s6, a7, s8
                  and          s2, a3, t5
                  srl          ra, t1, a1
                  slti         a3, s10, -1012
                  and          s4, s3, s6
                  slti         s7, s3, -1452
1340:             add          gp, t4, t3
                  sub          ra, ra, a4
                  blt          a4, s6, 1348f
                  sra          a5, t2, s0
                  sll          s4, a0, tp
                  sub          s5, s5, t1
1346:             bltu         s9, a0, 1351f
                  sltu         s8, s1, s4
1348:             slt          a6, t0, s0
                  nop
                  sra          a7, t6, s0
1351:             sll          a6, tp, tp
                  sra          a7, s0, sp
                  and          s11, zero, a1
                  srai         s6, s8, 3
                  srli         a1, t6, 5
                  nop
                  ori          s3, s3, -1579
                  xori         s0, a3, 8
                  slti         a0, a1, 1069
                  add          s2, s2, a5
                  srli         s1, t1, 12
                  slli         s3, t3, 30
                  sll          s8, s2, a7
                  srai         s5, a6, 5
                  sltu         s5, s4, s11
                  sra          s5, a3, s0
                  beq          s3, s9, 1387f
                  andi         s8, s2, 2005
                  srl          a5, zero, a6
                  sltu         zero, ra, t1
                  bltu         gp, s2, 1384f
                  auipc        t4, 818303
                  xor          a4, t2, a5
                  addi         s11, t4, 1491
                  bge          a2, s9, 1394f
                  sub          a4, a4, t4
                  bne          s4, s8, 1388f
                  sub          t2, sp, t3
                  srli         a3, s1, 14
                  sltu         s6, s11, s11
                  add          t1, s5, a5
                  bge          s5, zero, 1393f
                  and          zero, t0, a4
1384:             sltiu        tp, s8, -1118
                  lui          t2, 266837
                  andi         a3, ra, 1827
1387:             and          a4, a3, t3
1388:             slli         a3, a0, 12
                  slli         t4, a2, 17
                  nop
                  slt          s9, s6, t4
                  bgeu         s6, t5, 1393f
1393:             ori          t2, gp, -1562
1394:             blt          t5, ra, 1407f
                  auipc        sp, 180792
                  add          a1, a5, s0
                  add          t2, a3, t5
                  srli         s8, s9, 14
                  or           a0, t5, zero
                  nop
                  xor          gp, a5, s7
                  or           s11, s4, t1
                  auipc        s11, 301433
                  addi         a1, s8, 548
                  sltu         tp, a0, t1
                  sra          t6, t5, zero
1407:             sltu         s3, s2, t0
                  ori          s11, s1, 888
                  slt          ra, sp, gp
                  nop
                  and          s1, a0, tp
                  slt          a2, t3, a4
                  slli         s8, s10, 2
                  sub          a0, ra, s2
                  addi         s3, s5, -2047
                  xori         s9, tp, 1368
                  auipc        t2, 2819
                  nop
                  sltu         a5, sp, a3
                  srli         s7, a4, 12
                  auipc        sp, 277439
                  xor          a1, a7, a4
                  lui          gp, 145327
                  sltiu        t4, s6, 121
                  ori          a1, s2, -1260
                  nop
                  srli         s1, s3, 15
                  blt          s1, a3, 1435f
                  srai         t1, a3, 23
                  bltu         t3, s6, 1443f
                  xor          a5, a1, a6
                  xor          sp, zero, a6
                  auipc        a0, 543309
                  auipc        t6, 791286
1435:             slli         a0, zero, 30
                  andi         ra, a7, -1053
                  or           s9, t1, s10
                  lui          a7, 495120
                  sltiu        s9, s4, 1371
                  bltu         sp, s8, 1444f
                  add          s11, sp, s8
                  and          gp, s5, s8
1443:             nop
1444:             xori         s6, a0, 438
                  auipc        tp, 90826
                  andi         s3, s4, -801
                  srai         s5, s4, 13
                  bne          sp, s7, 1454f
                  xor          s9, a2, s5
                  beq          t5, sp, 1467f
                  and          a3, s3, a0
                  nop
                  slli         t2, a5, 6
1454:             sub          s5, s7, s4
                  xor          t6, gp, s10
                  blt          a7, sp, 1459f
                  bgeu         a4, s11, 1459f
                  slti         s1, a4, 1442
1459:             slti         a7, t3, -151
                  beq          sp, ra, 1474f
                  ori          s0, a0, 1801
                  srli         a3, sp, 21
                  bne          s10, s1, 1480f
                  slt          t1, a6, t5
                  sub          a0, t5, t3
                  blt          t3, t6, 1468f
1467:             sra          gp, zero, a7
1468:             addi         t5, s0, 3
                  sll          zero, a4, a0
                  sub          zero, zero, t2
                  blt          s0, t6, 1482f
                  slti         t6, sp, -1994
                  nop
1474:             beq          a5, a5, 1482f
                  lui          t1, 42264
                  sra          s3, a3, s9
                  ori          s8, s3, -1347
                  bge          s4, s10, 1484f
                  or           zero, tp, s6
1480:             sll          a4, s9, a0
                  addi         s4, t2, 69
1482:             srli         s0, s3, 15
                  lui          ra, 292258
1484:             nop
                  or           gp, s9, t5
                  bne          t4, s1, 1492f
                  slti         s4, s11, -1166
                  bgeu         s2, a0, 1502f
                  beq          a7, s6, 1501f
                  blt          ra, a7, 1507f
                  slli         t6, s4, 26
1492:             ori          s9, gp, -51
                  andi         s3, s9, 160
                  bltu         s8, t6, 1502f
                  lui          ra, 236329
                  blt          a5, t1, 1498f
                  beq          a1, tp, 1511f
1498:             srli         s1, t6, 12
                  sltiu        a6, s5, 397
                  beq          s4, s3, 1511f
1501:             auipc        s5, 96025
1502:             lui          t2, 197959
                  auipc        a3, 973462
                  addi         s1, zero, -1307
                  or           gp, t1, s9
                  sltu         t1, t4, s1
1507:             ori          s1, t6, 364
                  bne          ra, s9, 1516f
                  slt          t6, s8, sp
                  and          s5, a3, s9
1511:             sra          t6, t1, a5
                  sltiu        t6, ra, 1570
                  sub          s4, s3, t4
                  srl          tp, t1, a4
                  xor          a1, s9, t1
1516:             srli         s4, tp, 3
                  xor          t6, s5, t5
                  beq          a1, sp, 1531f
                  srai         zero, a6, 10
                  xori         zero, s8, -757
                  bgeu         a2, a6, 1529f
                  addi         s4, t2, -739
                  bgeu         s2, s11, 1536f
                  srl          a2, t1, t5
                  andi         a7, t3, -1114
                  sra          s8, a0, sp
                  beq          sp, s8, 1547f
                  srli         sp, t4, 21
1529:             bltu         s4, t4, 1532f
                  sltu         a1, t1, a6
1531:             sub          zero, a3, t5
1532:             and          a2, s0, t3
                  xor          s4, t1, sp
                  lui          s7, 873757
                  slt          sp, t1, t5
1536:             sra          s7, a7, t6
                  slli         s7, sp, 3
                  nop
                  slt          s7, a0, gp
                  slli         sp, t2, 26
                  sub          s7, s2, s5
                  addi         t4, a0, 1684
                  srli         zero, gp, 29
                  auipc        s7, 29985
                  sra          zero, s4, t0
                  slli         s3, s9, 16
1547:             srli         s3, s2, 23
                  bltu         s3, s3, 1561f
                  srai         a4, a7, 4
                  sub          s0, a7, t0
                  nop
                  srli         a2, t0, 26
                  slt          ra, t3, t3
                  and          t2, s1, s0
                  sll          a6, gp, s1
                  sll          s6, a7, s10
                  sub          s5, s4, a7
                  lui          s2, 792840
                  slti         s6, gp, -711
                  andi         s0, s6, -13
1561:             sltu         a3, s0, s10
                  add          s2, ra, s6
                  slt          s4, zero, t5
                  beq          a7, s7, 1575f
                  bge          a7, a5, 1576f
                  sll          a0, t1, t4
                  xor          s9, t6, t3
                  slt          t4, s5, s1
                  bltu         a0, s10, 1586f
                  xor          ra, a2, s2
                  addi         a1, t2, 1332
                  ori          sp, a7, -1381
                  nop
                  add          a7, s7, s3
1575:             slli         sp, s4, 9
1576:             sra          a1, a0, s8
                  srai         a6, s6, 14
                  bge          a5, tp, 1580f
                  xori         t1, s5, -91
1580:             slli         s9, a1, 9
                  slti         s3, a0, 311
                  sltiu        s5, a0, 626
                  blt          a2, a2, 1603f
                  bltu         a1, t1, 1603f
                  slti         gp, a4, -544
1586:             sltu         a5, gp, a1
                  srli         ra, t4, 31
                  addi         a7, s7, -1221
                  slt          a3, t6, t4
                  addi         t6, t0, -348
                  sltu         s2, s0, s10
                  sra          s8, a3, gp
                  sltiu        ra, s9, 253
                  srai         gp, s5, 7
                  srli         a3, t2, 6
                  srl          t6, s10, t1
                  addi         ra, t6, -228
                  or           t4, a7, s4
                  add          s5, gp, a5
                  bge          t4, s8, 1602f
                  srl          s2, a0, s10
1602:             srai         t6, s11, 4
1603:             bltu         a5, t6, 1609f
                  bne          s9, t4, 1605f
1605:             bge          a4, a2, 1606f
1606:             sll          s5, sp, s11
                  sltu         ra, s3, s2
                  or           s2, a0, a3
1609:             ori          gp, s2, 110
                  auipc        sp, 200257
                  addi         s1, t0, -1444
                  slt          a1, a1, a7
                  ori          t5, s4, -696
                  bgeu         t5, s1, 1620f
                  xori         ra, gp, 1115
                  bne          t2, gp, 1623f
                  lui          a2, 150125
                  and          a4, gp, a3
                  and          t2, a1, t6
1620:             nop
                  bgeu         t1, t1, 1626f
                  slli         a4, t1, 5
1623:             addi         s9, s11, 2043
                  slli         s11, a4, 24
                  sltu         gp, t0, t6
1626:             lui          gp, 626757
                  sltiu        s11, t5, -352
                  sll          s11, a0, a6
                  sltiu        s11, t1, -705
                  srai         a6, a4, 29
                  bge          a5, s0, 1635f
                  lui          a2, 75281
                  srl          s9, a2, ra
                  bge          t3, s8, 1640f
1635:             sltu         s0, a4, sp
                  sltu         s5, sp, s6
                  bge          gp, s10, 1638f
1638:             andi         s6, t6, 1323
                  xor          a3, zero, a4
1640:             blt          t0, tp, 1653f
                  srai         t4, gp, 13
                  srai         s9, a5, 0
                  add          s6, t3, tp
                  sltiu        s5, s7, -416
                  sltiu        a2, s7, 97
                  beq          a2, s2, 1654f
                  xori         s5, t1, 874
                  sub          zero, zero, s2
                  lui          a3, 666692
                  srl          s3, s8, s6
                  blt          t0, a3, 1656f
                  bne          zero, s11, 1671f
1653:             bltu         s4, t0, 1660f
1654:             andi         s6, a0, -362
                  sll          gp, zero, a5
1656:             or           a4, s2, a5
                  sltu         ra, t0, t2
                  lui          zero, 622540
                  xor          t4, sp, t3
1660:             slli         gp, sp, 31
                  srai         a4, t3, 24
                  blt          a5, ra, 1665f
                  sra          tp, s1, t2
                  blt          t6, a6, 1677f
1665:             xor          sp, a6, tp
                  bge          s9, t5, 1677f
                  beq          s11, t2, 1681f
                  sub          ra, s11, t2
                  bgeu         a2, t6, 1682f
                  beq          a5, s11, 1681f
1671:             bltu         a5, a7, 1677f
                  sub          a1, a3, ra
                  bltu         s4, tp, 1693f
                  and          a4, s2, a7
                  ori          s4, a3, 1942
                  slli         s7, s11, 21
1677:             sltu         a3, s8, s6
                  addi         s1, t6, 1025
                  nop
                  xor          zero, a6, t6
1681:             sltu         s6, s1, tp
1682:             srl          t6, zero, zero
                  and          s0, a0, t0
                  or           t2, a2, s2
                  sltu         s0, t1, s9
                  slli         zero, a4, 12
                  beq          s10, t4, 1691f
                  or           a6, ra, a0
                  slt          a7, s0, s1
                  bltu         s10, t6, 1702f
1691:             addi         t6, s5, 1522
                  sra          gp, t3, s9
1693:             sra          s6, zero, s9
                  addi         tp, a0, -1339
                  slt          s11, a2, a7
                  bne          s3, s3, 1707f
                  bgeu         s10, a4, 1699f
                  auipc        zero, 370310
1699:             sltu         s5, s5, ra
                  srl          s8, sp, tp
                  lui          s7, 932762
1702:             add          s0, s0, tp
                  slt          a5, a5, a3
                  sub          s6, s7, s0
                  srl          t2, t2, s10
                  bne          s11, a5, 1712f
1707:             ori          s1, s9, 1842
                  sltiu        ra, a3, -1949
                  auipc        zero, 1027474
                  sltiu        s7, t1, 116
                  or           t1, sp, a4
1712:             or           s5, a3, t2
                  andi         a5, t3, -450
                  sltiu        t6, a4, 1208
                  or           a5, a7, t2
                  bltu         t1, a4, 1733f
                  slli         s9, a5, 23
                  slti         s8, a2, 1873
                  addi         s9, s7, 490
                  slt          s4, s3, a4
                  sra          s5, s4, s0
                  xor          t6, t0, s8
                  ori          t4, s10, 393
                  slt          a2, s8, s2
                  bltu         ra, s6, 1742f
                  or           s9, a0, zero
                  sltu         s8, s10, s2
                  bltu         a2, s3, 1742f
                  sltiu        s0, tp, 1766
                  beq          s9, s1, 1738f
                  bgeu         s9, a1, 1737f
                  slli         s9, zero, 21
1733:             bltu         t5, a5, 1735f
                  auipc        s1, 14084
1735:             srai         a2, s3, 29
                  beq          a5, s0, 1742f
1737:             and          s4, s11, t1
1738:             nop
                  add          s11, s8, a2
                  beq          s8, a6, 1742f
                  slli         zero, sp, 9
1742:             srl          a1, ra, s10
                  slti         s1, s4, 1980
                  blt          a2, s0, 1764f
                  bne          s8, a1, 1753f
                  sra          s1, a3, s6
                  sra          t4, tp, ra
                  nop
                  lui          s11, 748782
                  srl          a5, t5, s9
                  blt          tp, s1, 1752f
1752:             add          tp, s0, s3
1753:             andi         zero, tp, -1338
                  srai         a5, s7, 21
                  nop
                  sra          s1, a7, tp
                  ori          sp, s10, -1479
                  ori          s4, s9, 220
                  ori          a6, s2, -929
                  xor          a1, a3, a0
                  sub          tp, s8, zero
                  sra          s5, s0, t0
                  add          s5, a6, t0
1764:             slt          s7, s9, t4
                  slt          t1, s3, t4
                  sra          t2, sp, s2
                  slti         t2, a5, -2017
                  xor          s0, s4, t2
                  sub          a1, t6, t3
                  bge          s6, a5, 1776f
                  lui          t5, 326191
                  bge          a6, s0, 1785f
                  andi         s4, s10, -1585
                  sub          s0, t0, a5
                  or           s6, ra, a5
1776:             add          t1, s6, s9
                  bltu         s8, s2, 1784f
                  sltiu        ra, a0, -920
                  sub          a4, t3, t1
                  nop
                  sll          a0, a5, t6
                  slti         ra, s7, 1284
                  sll          ra, a3, t6
1784:             bltu         s8, a6, 1795f
1785:             nop
                  bne          a0, s10, 1799f
                  slti         s7, a6, -528
                  srai         gp, s3, 18
                  sll          a0, t6, s9
                  slti         s9, s2, 920
                  lui          s2, 68955
                  addi         zero, t6, 1996
                  bltu         a1, s6, 1799f
                  sra          sp, t2, t0
1795:             bne          ra, t6, 1796f
1796:             bge          zero, a1, 1798f
                  sltiu        gp, s3, -995
1798:             srai         ra, gp, 8
1799:             slt          s2, ra, t5
                  bgeu         a1, t3, 1811f
                  bltu         t2, s6, 1818f
                  sll          a0, t2, t2
                  ori          a7, t6, 672
                  xor          t2, a6, a0
                  andi         s9, s10, -520
                  slti         ra, s2, 452
                  slli         s2, ra, 17
                  beq          s7, a7, 1822f
                  sltiu        s11, s6, 424
                  addi         s4, a0, 1322
1811:             beq          s11, zero, 1831f
                  srl          t4, a1, t4
                  nop
                  bltu         s4, a2, 1822f
                  slti         t1, t6, 510
                  srl          s8, s8, a0
                  and          sp, s0, t3
1818:             xori         ra, t2, 1460
                  auipc        a0, 1005898
                  andi         a6, tp, 295
                  bgeu         s9, s9, 1823f
1822:             slt          a7, sp, s11
1823:             sll          a7, s3, a3
                  sub          a2, s5, a0
                  slt          a5, t3, a3
                  srl          t2, a5, s1
                  bltu         s4, sp, 1830f
                  or           a0, a4, a6
                  sltu         a3, a4, tp
1830:             slt          zero, s11, a5
1831:             or           s4, s6, s11
                  bne          s3, s7, 1846f
                  sra          s0, t6, a2
                  sub          s1, gp, zero
                  bltu         t5, a3, 1846f
                  slti         t4, t6, -781
                  xor          s11, a7, t2
                  addi         zero, s10, 626
                  addi         s1, a7, -1397
                  nop
                  srai         s1, ra, 28
                  sra          tp, a3, t1
                  beq          sp, s5, 1849f
                  auipc        s0, 499756
                  bgeu         s1, t2, 1851f
1846:             slt          tp, s0, gp
                  blt          s1, tp, 1867f
                  bge          s2, s8, 1865f
1849:             sltu         a4, s6, s11
                  srl          gp, s10, s7
1851:             or           t4, s5, zero
                  sub          a0, t4, sp
                  blt          s4, t2, 1861f
                  sub          s2, t5, t5
                  auipc        t2, 746641
                  slli         a6, s11, 7
                  or           a4, s1, t0
                  ori          a5, ra, 1691
                  bne          s1, a6, 1863f
                  or           t1, s0, s2
1861:             srli         zero, t2, 12
                  addi         s1, a1, 116
1863:             sll          t6, sp, t0
                  sltu         s5, s6, a1
1865:             srli         s7, s7, 29
                  srai         gp, t2, 30
1867:             sub          s0, s7, s3
                  srai         s6, s0, 4
                  sra          a1, t1, a2
                  slti         sp, a0, 1997
                  srai         s9, t5, 26
                  slt          s4, t0, s4
                  srai         sp, a3, 19
                  sltiu        s11, s8, -1836
                  sll          s5, t3, s5
                  add          t4, t4, t6
                  auipc        s11, 684638
                  lui          s6, 836333
                  xori         s11, ra, 325
                  add          s11, t2, a4
                  srl          s7, a2, a5
                  slti         a5, a4, -1468
                  xor          t6, s6, a0
                  lui          s5, 458684
                  or           t4, s8, s3
                  and          sp, gp, s3
                  xor          zero, a3, t1
                  slt          a1, a4, s3
                  andi         a0, t1, 418
                  nop
                  xori         zero, ra, 1350
                  sub          s4, a5, t2
                  sltiu        a7, a6, -1040
                  sub          a2, s1, s11
                  slli         s5, t1, 8
                  blt          s5, s3, 1909f
                  andi         t6, s11, -1506
                  andi         s2, sp, 1255
                  bltu         a1, t4, 1911f
                  or           ra, s3, t5
                  slt          s11, a2, a6
                  ori          a5, t0, -617
                  sra          s1, t1, s10
                  ori          s1, t0, -142
                  xori         a6, t6, 1033
                  bne          s1, a2, 1907f
1907:             srli         s1, s2, 15
                  add          a3, s10, a7
1909:             slt          s8, t2, s11
                  blt          t6, s10, 1918f
1911:             bgeu         a0, tp, 1930f
                  and          t5, a6, t5
                  bgeu         a4, t5, 1918f
                  xor          t5, s6, t5
                  bltu         s6, s7, 1917f
                  lui          a0, 731712
1917:             ori          s11, ra, -148
1918:             or           s7, s3, a2
                  srl          s7, zero, t0
                  sltu         t6, t6, s8
                  sub          gp, s8, zero
                  bgeu         s0, a5, 1936f
                  add          s9, a2, a1
                  auipc        a2, 779957
                  slli         s9, s3, 4
                  and          zero, t0, a6
                  srli         a4, a3, 14
                  slt          s1, s5, s4
                  sll          s3, a6, a5
1930:             sltu         a0, a2, t4
                  or           a3, a4, tp
                  add          t2, gp, s1
                  beq          t6, sp, 1941f
                  addi         s9, a5, 1996
                  and          sp, tp, s6
1936:             lui          s1, 650002
                  sra          s1, s2, t2
                  sll          s1, s4, t1
                  xori         t6, s1, -84
                  srai         s0, tp, 22
1941:             blt          s4, sp, 1945f
                  andi         a2, a6, 1297
                  and          t5, gp, s4
                  bge          s11, t6, 1955f
1945:             srl          s9, s6, tp
                  sra          t2, t0, a0
                  nop
                  addi         s5, s2, 1910
                  sltu         s5, t6, ra
                  blt          sp, a2, 1955f
                  or           t2, t3, sp
                  srli         a3, a0, 20
                  slti         t1, t2, -1552
                  nop
1955:             xor          a7, s8, a5
                  nop
                  addi         s3, a2, 962
                  bgeu         tp, sp, 1977f
                  beq          sp, s7, 1965f
                  addi         t1, ra, 1941
                  or           s5, t0, s8
                  sub          t4, a7, zero
                  nop
                  ori          a7, a4, -1114
1965:             lui          a6, 777698
                  bgeu         t4, s9, 1972f
                  nop
                  bltu         a3, t3, 1969f
1969:             bgeu         s6, tp, 1977f
                  srai         t5, t4, 14
                  sltiu        t4, s5, 862
1972:             bne          a7, s3, 1975f
                  lui          a2, 149312
                  sltu         s3, s0, s5
1975:             slli         s11, gp, 24
                  slli         s3, t2, 21
1977:             sll          t6, s7, t6
                  slti         t1, s5, -1443
                  sltu         a5, a4, a0
                  nop
                  srli         s0, a7, 15
                  ori          s6, a0, 1273
                  sltu         s3, s10, s5
                  srai         a3, a0, 18
                  sltu         a1, s9, t1
                  ori          s6, a5, -1584
                  andi         a0, s2, -1786
                  nop
                  sll          a4, a3, t1
                  slti         s8, t3, -1117
                  slti         t6, s3, 138
                  add          a0, t3, s9
                  slli         s3, gp, 2
                  auipc        t2, 819449
                  bltu         t6, ra, 2012f
                  and          s2, s7, s5
                  srl          s0, s10, s7
                  add          a4, s8, a5
                  sltiu        ra, a4, -689
                  srai         s11, s10, 9
                  and          sp, a4, a0
                  srli         s2, t2, 6
                  slli         zero, s9, 11
                  slt          s11, s9, t6
                  sll          s6, t1, t0
                  blt          s3, s10, 2020f
                  sub          t1, t6, zero
                  sub          s2, s7, s10
                  nop
                  sub          tp, a6, t0
                  srai         s3, t6, 5
2012:             slli         s0, a6, 31
                  or           s2, a0, t0
                  lui          t6, 145009
                  lui          a2, 688167
                  slti         s6, t3, -1182
                  srli         a7, a3, 8
                  ori          s2, s5, -1068
                  srli         a7, s8, 31
2020:             auipc        zero, 164956
                  lui          t4, 822507
                  srli         a2, t3, 21
                  add          a7, a4, zero
                  nop
                  addi         gp, s7, -1281
                  andi         s9, a6, 1197
                  or           t4, s8, a7
                  ori          a7, t3, 402
                  srl          a6, s10, gp
                  auipc        zero, 284477
                  sltiu        a5, ra, 892
                  xor          t6, s5, s7
                  sra          ra, t5, sp
                  addi         s6, t1, 648
                  bgeu         s7, s6, 2048f
                  blt          a2, t0, 2049f
                  slli         s3, s8, 7
                  bgeu         t0, tp, 2040f
                  bgeu         s10, t1, 2046f
2040:             srl          t6, zero, ra
                  bgeu         t5, t0, 2058f
                  beq          s7, sp, 2054f
                  bne          t0, t5, 2045f
                  srai         s2, s8, 10
2045:             slti         t1, a7, -743
2046:             addi         ra, s3, 164
                  sub          s2, a5, s6
2048:             bne          a0, zero, 2068f
2049:             sll          a1, t0, a1
                  and          s1, t4, t2
                  blt          a0, s8, 2071f
                  slt          s7, a5, s1
                  lui          a5, 178921
2054:             slti         t2, a2, -434
                  xor          a2, sp, t1
                  sltu         t4, a7, s10
                  bltu         gp, a6, 2068f
2058:             nop
                  bgeu         s5, s3, 2065f
                  srl          t2, s2, s1
                  ori          t2, s2, -27
                  sltu         s9, t6, t1
                  andi         a4, a1, -223
                  slti         ra, s7, -2044
2065:             slli         gp, s2, 5
                  add          t5, s3, a4
                  andi         a2, gp, 1796
2068:             sra          t4, s10, s5
                  nop
                  slti         s11, sp, 1211
2071:             bne          a4, s3, 2079f
                  add          s1, t2, a7
                  sra          t5, s6, s8
                  or           a7, s5, t5
                  or           a7, t6, s7
                  srli         a6, t2, 15
                  nop
                  bne          a7, zero, 2080f
2079:             bgeu         s4, t3, 2080f
2080:             and          tp, a6, a1
                  add          t1, sp, t2
                  srl          s2, s7, a1
                  lw           ra, 4(s10)
                  sub          s0, s7, a0
                  addi         s10, s10, 56
                  slti         t4, s9, 1019
                  nop
                  nop
2682:             addi x31, x1, 1
2682:             jalr x31, x31, 0
sub_4:            bge          t4, ra, sub_4_stack_p
                  slt          s8, s1, t6
                  srli         a7, t1, 10
                  add          s4, t5, s1
                  xor          s9, a1, s10
                  sltiu        s0, s8, -1760
sub_4_stack_p:    addi         s10, s10, -24
                  nop
                  sw           ra, 4(s10)
                  ori          s7, s2, 1613
                  sub          s9, s0, s5
                  sll          a0, a7, t0
                  slti         s5, s6, 741
                  sltiu        s9, t6, 458
                  andi         s2, s4, 1161
                  xor          gp, gp, s4
                  lui          a7, 534146
                  ori          a0, s9, -1044
                  auipc        s7, 791364
                  sltiu        t4, t3, -328
                  and          s3, a0, t1
sub_4_j8:         jal          ra, sub_9 #jump sub_4 -> sub_9
                  slli         s4, sp, 9
                  lui          a0, 520997
                  xor          a3, s10, a3
                  slli         sp, t3, 26
                  addi         s3, a0, -1145
                  lui          s1, 516477
sub_4_j9:         jal          ra, sub_7 #jump sub_4 -> sub_7
                  srl          t4, t2, s3
                  srli         ra, s6, 17
                  bgeu         ra, t6, sub_4_j10 #branch to jump instr
                  sltiu        zero, s3, -1549
                  and          a7, a1, s1
                  sltu         sp, t6, s0
                  addi         a7, a7, -779
                  ori          s8, t5, 1508
                  xori         sp, s2, 1215
sub_4_j10:        jal          ra, sub_10 #jump sub_4 -> sub_10
                  sra          s1, s11, t2
                  slti         s0, t0, 184
                  andi         s9, a2, -1908
                  la           sp, sub_8
                  ori          a7, a0, 1774
                  srai         t2, s6, 8
                  sltiu        a3, t0, -1987
                  addi         sp, sp, -186
                  srl          t6, a6, s10
sub_4_j11:        jalr         ra, sp, 186 #jump sub_4 -> sub_8
                  sub          s7, s4, a0
                  andi         a3, t5, 897
                  and          s6, t6, s10
                  addi         t6, s7, -1062
                  sll          zero, a4, s3
sub_4_j12:        jal          ra, sub_6 #jump sub_4 -> sub_6
                  srli         s2, zero, 26
                  srl          t2, t2, s1
                  addi         tp, s3, -677
                  blt          a2, s11, 5f
                  sra          a0, sp, t4
5:                slti         a3, s9, 1512
                  lui          t5, 823917
                  slti         s4, s7, 150
                  auipc        s1, 570156
                  sll          t6, a0, s1
                  sltu         gp, s9, s2
                  lw           ra, 4(s10)
                  slt          s4, t4, t2
                  slt          tp, s8, t3
                  xori         sp, a6, 905
                  addi         s10, s10, 24
                  sra          a0, s10, t5
                  or           a7, a6, ra
                  add          a2, s10, t1
                  nop
75:               addi x6, x1, 0
75:               jalr x6, x6, 0
sub_8:            bgeu         a2, a2, sub_8_stack_p
                  xori         a6, a0, -427
                  nop
                  sll          s0, s9, a7
sub_8_stack_p:    addi         s10, s10, -28
                  sw           ra, 4(s10)
                  or           s5, s2, a6
                  slli         sp, t3, 30
                  sra          a6, a1, a7
                  sub          sp, t0, s5
                  srl          a1, t6, t4
                  srl          t1, a7, t2
                  sltu         s3, sp, sp
                  bgeu         a2, ra, 13f
                  add          a5, a2, tp
                  beq          sp, zero, 6f
                  and          a4, t1, tp
                  sll          s9, s0, s8
6:                bltu         t5, t2, 13f
                  srli         a7, s4, 23
                  sll          t4, a6, s10
                  nop
                  blt          s5, t3, 13f
                  ori          ra, a4, 551
                  beq          s0, a4, 13f
13:               andi         s11, t1, -292
                  lw           ra, 4(s10)
                  addi         s10, s10, 28
                  add          s2, sp, gp
                  and          s4, a3, a4
                  xor          a6, s0, tp
31:               addi x23, x1, 0
31:               jalr x23, x23, 0
sub_1:            addi         s10, s10, -12
                  nop
                  sw           ra, 4(s10)
                  sll          a3, s3, s11
                  xori         a7, t3, 993
                  xor          s2, ra, s2
                  la           sp, region_0+781 #start riscv_load_store_rand_instr_stream_5
                  srai         a7, s7, 11
                  lb           s0, 1190(sp)
                  sltiu        ra, s1, 1225
                  lui          s4, 314255
                  lb           s1, -44(sp)
                  lb           a5, 413(sp)
                  lb           s5, -72(sp)
                  lb           a5, -458(sp)
                  sh           s8, -775(sp)
                  and          a4, t2, s7
                  nop
                  lbu          gp, -578(sp)
                  lbu          s11, -243(sp)
                  lb           zero, 243(sp)
                  addi         t1, s11, 533
                  sub          a0, s6, t2
                  xor          s2, s6, sp
                  sb           zero, 704(sp)
                  lbu          s5, 396(sp)
                  lh           s7, -127(sp)
                  xor          t6, s9, t3
                  add          s0, a5, s2
                  srai         s3, a5, 27
                  lh           a1, -731(sp)
                  sb           t3, 888(sp)
                  and          t6, t2, s9
                  auipc        s2, 483106
                  lbu          a6, -257(sp)
                  andi         s3, t4, 208
                  sll          zero, s7, s2
                  nop
                  sb           s0, 924(sp)
                  slt          a7, t4, a4
                  slti         gp, s5, 604
                  and          s4, s3, zero
                  lbu          s3, -562(sp)
                  srl          t1, a0, t0
                  lb           a2, -100(sp)
                  slli         s1, a7, 5
                  ori          s5, a6, 516
                  lbu          t6, -138(sp)
                  srai         s8, s7, 16
                  addi         a6, t0, 616
                  and          t1, s6, s2
                  sh           t0, 15(sp)
                  lb           s8, 418(sp)
                  lh           s9, 255(sp)
                  andi         s7, zero, 1420
                  sb           s6, -18(sp)
                  sb           s11, 1035(sp)
                  srl          t2, a1, t5
                  addi         a5, s6, -403
                  sra          t6, a5, t2
                  lhu          a6, 913(sp)
                  sltu         ra, zero, s5
                  lb           a4, -765(sp)
                  sb           a3, 382(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1945 #start riscv_load_store_rand_instr_stream_8
                  sb           s11, 2(sp)
                  sll          t6, s11, t3
                  sub          s11, ra, t1
                  sltu         t5, t2, a6
                  lb           s6, 2(sp)
                  lui          t4, 919193
                  sb           s11, -10(sp)
                  ori          a6, s10, 667
                  lb           a6, -12(sp)
                  xori         a5, s7, -146
                  lbu          t1, 8(sp)
                  sub          t6, zero, a4
                  auipc        ra, 468789
                  xori         tp, a1, 1970
                  sltu         s11, a4, s6
                  sltu         a2, t3, a2
                  xori         s9, t0, -1097
                  sb           s0, -8(sp)
                  sra          t5, t1, t5
                  sb           ra, 2(sp)
                  xor          s2, t0, s6
                  ori          a0, s2, -1611
                  sub          s4, t5, s6
                  lb           a6, 16(sp)
                  sb           sp, 12(sp)
                  srl          t5, a3, tp
                  srli         s6, s9, 5
                  addi         s8, tp, -33
                  lb           a2, -2(sp) #end riscv_load_store_rand_instr_stream_8
                  la           t4, region_0+737 #start riscv_load_store_rand_instr_stream_4
                  ori          a7, a2, -290
                  slli         s6, s0, 16
                  or           t2, t5, s10
                  sra          t1, t0, s6
                  and          s11, a1, s0
                  sh           sp, 231(t4)
                  lb           s6, -72(t4)
                  slt          s9, s1, t5
                  lb           s4, -12(t4)
                  sb           s8, -66(t4)
                  slt          a1, a5, a7
                  lb           t1, 205(t4)
                  lb           sp, -42(t4)
                  lbu          s9, -127(t4)
                  slli         a4, t5, 9
                  sb           s2, -170(t4)
                  lb           t5, 60(t4)
                  lb           t1, 93(t4)
                  slti         sp, t2, -1157
                  slli         s1, t3, 28
                  sb           s9, -108(t4)
                  sltu         a4, t2, a7
                  sltu         s3, t5, tp
                  lh           sp, -145(t4)
                  slli         t6, s9, 8
                  xor          s5, t5, a6
                  nop
                  sub          s4, sp, zero
                  sll          s2, a3, ra
                  sra          a4, s6, t2
                  lh           t6, 105(t4)
                  sh           t4, -157(t4)
                  sb           a2, -112(t4)
                  add          a0, ra, s4
                  sh           s1, -231(t4)
                  lbu          t1, 53(t4)
                  nop
                  slti         a3, t3, 614
                  addi         a7, s5, 730
                  slti         s6, ra, 1297
                  srli         a3, tp, 25
                  sltiu        a6, zero, 1415
                  lbu          a6, 9(t4)
                  lb           s4, 94(t4)
                  slli         a5, s2, 30
                  srl          tp, s3, s0
                  lbu          s3, -116(t4)
                  slti         a5, t0, 1923
                  lb           a7, -253(t4)
                  sb           a2, -17(t4)
                  auipc        s5, 226657
                  lhu          s0, -111(t4)
                  sb           t2, -91(t4)
                  lb           s8, 194(t4) #end riscv_load_store_rand_instr_stream_4
                  la           t5, region_1+1459 #start riscv_load_store_rand_instr_stream_2
                  srl          a4, t0, a0
                  lb           t1, 247(t5)
                  slt          s1, a3, gp
                  lhu          sp, 81(t5)
                  sb           a4, -113(t5)
                  lh           s5, -105(t5)
                  ori          gp, t1, -313
                  lh           t4, -69(t5)
                  or           s3, s5, gp
                  srai         t4, s4, 9
                  lb           a5, 175(t5)
                  srl          t6, s3, s1
                  slli         s11, s2, 30
                  lb           zero, -192(t5)
                  xor          t1, a4, a7
                  lui          a4, 694223
                  lbu          a0, 125(t5)
                  lui          a0, 945679
                  lbu          a7, 121(t5)
                  slt          gp, s2, s3
                  auipc        a7, 175411
                  sb           s1, -27(t5)
                  srai         sp, a6, 0
                  or           ra, s7, a5
                  sb           gp, -237(t5)
                  sll          s11, tp, t6
                  slt          ra, s0, t5
                  lbu          a3, -197(t5)
                  lui          s1, 763033
                  srai         a0, s10, 26
                  lb           s9, -136(t5)
                  lb           gp, 30(t5)
                  lhu          t6, 149(t5)
                  lbu          s1, -66(t5)
                  nop
                  sub          a7, gp, s6
                  sb           a6, -121(t5)
                  nop
                  srl          t6, t3, a6
                  sh           t1, -211(t5)
                  srai         tp, a4, 8
                  slti         a3, ra, 132
                  nop
                  lhu          tp, 71(t5)
                  or           a6, s5, a1
                  lbu          s5, -28(t5)
                  lbu          s1, 74(t5)
                  lbu          s5, 144(t5)
                  sb           t4, -88(t5)
                  lb           zero, 130(t5)
                  sll          a5, a1, ra
                  lbu          t1, 178(t5)
                  sb           s3, -30(t5)
                  lui          s7, 1018028
                  addi         a7, sp, -1563
                  lbu          a6, -148(t5)
                  lh           s0, -123(t5)
                  lbu          ra, 71(t5) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_1+1275 #start riscv_load_store_rand_instr_stream_6
                  lbu          a4, 11(s4)
                  lui          s11, 280964
                  sll          tp, s9, s6
                  srl          s1, a4, s1
                  lb           a7, -49(s4)
                  sub          s2, t1, t2
                  lb           a2, 29(s4)
                  lbu          s5, -14(s4)
                  lbu          zero, -38(s4)
                  slli         a6, s0, 16
                  sra          zero, a5, t5
                  lbu          a3, 8(s4)
                  sltu         t6, a1, t2
                  and          t1, gp, a3
                  sb           t3, -24(s4)
                  lbu          a5, 14(s4)
                  sll          a6, a5, s11
                  sltiu        t5, s6, -1975
                  and          s11, t0, gp
                  lbu          s6, 25(s4)
                  addi         s6, s3, 1618
                  or           s2, a7, t2
                  lw           gp, -59(s4)
                  srli         ra, ra, 18
                  slli         a5, s11, 30
                  slli         a7, a5, 11
                  lhu          s5, 27(s4) #end riscv_load_store_rand_instr_stream_6
                  la           a7, region_1+649 #start riscv_load_store_rand_instr_stream_10
                  sb           a2, 146(a7)
                  sra          tp, s2, s4
                  lb           s5, 88(a7)
                  sb           s5, -60(a7)
                  add          s6, s5, s7
                  or           ra, s10, s9
                  and          s1, a3, t0
                  sb           a4, 88(a7)
                  xori         a6, sp, -992
                  slti         a2, gp, 1736
                  add          s9, s0, a6
                  xor          s6, a5, s7
                  slt          zero, t6, s9
                  sb           a5, -20(a7)
                  auipc        a3, 897047
                  sltu         s4, s2, a4
                  or           zero, t3, a3
                  sltiu        s6, s6, 672
                  lw           zero, -93(a7)
                  andi         a3, s10, 62
                  srli         sp, s8, 27
                  nop
                  sh           gp, 155(a7)
                  addi         s8, zero, 1844
                  addi         s3, a5, -749
                  lbu          t5, 72(a7)
                  addi         a2, t3, 1765
                  slti         s2, s0, -1776
                  slt          s11, s11, a0
                  sub          s7, a0, s4
                  lb           s8, -139(a7)
                  slt          s9, zero, t0
                  or           a4, s0, a2
                  srl          s3, s5, sp
                  slti         s8, s7, -628
                  lbu          s7, 132(a7)
                  lbu          gp, 248(a7)
                  xori         t1, s1, 601
                  sub          a6, tp, s8
                  sb           tp, 40(a7)
                  auipc        s9, 201702
                  lb           a1, 30(a7) #end riscv_load_store_rand_instr_stream_10
                  ori          ra, a2, 1314
                  srli         sp, t2, 5
                  xor          t5, a4, s1
                  beq          a7, s0, 19f
                  bgeu         gp, a7, 6f
                  slti         s1, s0, 701
6:                andi         ra, sp, -86
                  add          a1, a3, zero
                  srl          s3, s9, s6
                  sll          a7, a4, a4
                  add          a6, sp, a5
                  slt          t5, a4, t6
                  sub          s7, s4, a2
                  or           a2, s1, tp
                  and          gp, a1, tp
                  bne          a7, s1, 29f
                  sll          s1, t1, zero
                  slli         tp, s5, 5
                  slt          tp, t4, t3
19:               xori         ra, tp, -1513
                  bltu         ra, s6, 27f
                  andi         ra, s1, 1004
                  auipc        s0, 66372
                  addi         a1, s11, -1485
                  lui          a2, 342648
                  xori         s2, a5, 77
                  sltu         a1, s1, t2
27:               andi         a7, tp, -498
                  slti         s7, s0, 262
29:               auipc        zero, 889271
                  andi         sp, a2, 1774
                  bgeu         a6, s6, 46f
                  addi         sp, tp, -1725
                  srai         s3, s4, 4
                  sltu         a3, s9, s2
                  xor          s7, s10, s0
                  blt          s4, t5, 47f
                  andi         sp, t3, -1652
                  bltu         t2, a1, 44f
                  andi         t1, s8, 1222
                  ori          s7, a6, 1412
                  srai         s3, ra, 31
                  add          s4, s1, s2
                  add          t4, t6, a2
44:               and          s4, tp, a4
                  slti         a4, s1, -533
46:               ori          s2, s5, -673
47:               xor          a5, s0, s5
                  xor          a2, s7, s10
                  srli         t4, s2, 10
                  blt          t2, a3, 64f
                  xor          s5, t2, a5
                  slli         a2, t6, 3
                  sll          s7, zero, a3
                  add          a2, s2, s11
                  bgeu         t0, t5, 71f
                  bne          s3, s1, 61f
                  sra          a6, t2, a5
                  add          tp, t4, s9
                  auipc        s1, 143572
                  srli         s2, a5, 5
61:               and          s5, a1, a0
                  slt          t5, s6, zero
                  auipc        s5, 231086
64:               auipc        a6, 86083
                  beq          s11, a7, 77f
                  lui          a5, 608452
                  slli         t6, zero, 14
                  ori          s2, s4, 231
                  blt          a6, a3, 77f
                  xori         s4, s6, 825
71:               add          s2, t1, a2
                  sltu         s6, s4, zero
                  or           t1, a5, t2
                  slli         t6, s6, 19
                  xor          zero, s6, t1
                  bne          s5, tp, 96f
77:               srli         a4, s6, 19
                  and          t6, s8, t0
                  srl          s5, s7, t5
                  andi         tp, s0, 408
                  slti         s1, a2, -1819
                  sub          a5, s1, a6
                  andi         a6, t4, 941
                  add          tp, s10, sp
                  srl          tp, a4, s3
                  andi         ra, a6, 1514
                  sub          s0, t6, a1
                  nop
                  bge          a7, s6, 92f
                  slli         s2, t1, 6
                  slti         t1, s1, 171
92:               ori          t1, s5, -652
                  srai         gp, a5, 17
                  sltu         s0, t3, a1
                  bne          s7, t6, 107f
96:               srl          t2, s2, s9
                  auipc        a1, 158560
                  bgeu         ra, zero, 111f
                  slli         ra, s8, 3
                  beq          s11, a7, 104f
                  xori         a2, a4, 16
                  slli         s0, s0, 15
                  blt          t5, sp, 106f
104:              xor          a2, s4, t1
                  andi         gp, sp, 991
106:              auipc        a7, 479115
107:              srli         a6, s2, 14
                  nop
                  add          s3, a0, a5
                  add          zero, s7, t4
111:              sll          s8, a6, sp
                  ori          s2, t4, 773
                  srai         a7, s4, 0
                  andi         s8, a0, 1518
                  srl          a5, t1, a5
                  beq          s11, s7, 123f
                  ori          ra, s4, -2045
                  sll          a3, a5, s5
                  bgeu         sp, ra, 123f
                  slti         zero, t1, -448
                  and          a5, tp, a7
                  bge          a1, s11, 129f
123:              sub          a4, s9, zero
                  slti         ra, t0, -465
                  xori         a2, t2, -503
                  beq          s10, sp, 138f
                  nop
                  andi         tp, s6, 813
129:              auipc        s0, 500018
                  xor          s1, zero, t4
                  srli         zero, a0, 31
                  sltiu        t1, a5, -521
                  lui          a5, 76058
                  lui          s4, 226369
                  andi         a5, a2, -1402
                  blt          s2, sp, 152f
                  beq          s0, a5, 150f
138:              auipc        t4, 818024
                  slt          tp, t0, sp
                  srli         s7, s2, 23
                  add          t1, s10, t4
                  xor          a7, a3, a2
                  xor          a0, gp, a5
                  beq          s5, s6, 157f
                  beq          a1, t0, 165f
                  sra          s8, s4, s2
                  srai         s0, a6, 17
                  slt          s4, s7, sp
                  sltiu        ra, s2, 531
150:              beq          a4, s0, 163f
                  or           t6, a7, gp
152:              addi         s6, s7, 1280
                  lui          s6, 866085
                  srl          s3, t4, a2
                  bgeu         a7, sp, 161f
                  sltiu        a2, s8, -609
157:              xor          sp, tp, a2
                  slli         a2, a4, 21
                  bne          t0, a4, 175f
                  slt          s7, t0, a5
161:              add          zero, a7, a1
                  xor          s2, a3, s8
163:              or           s11, s8, s6
                  auipc        s0, 881295
165:              or           sp, s0, s3
                  xor          a3, a5, a2
                  add          a6, a3, s7
                  sra          a3, t3, s1
                  srai         s0, s1, 16
                  or           gp, zero, a0
                  bne          t6, t3, 173f
                  slt          t6, s4, gp
173:              lui          a2, 434918
                  sltu         s8, s0, t2
175:              srli         t1, gp, 25
                  srl          s1, ra, ra
                  and          s5, a3, t4
                  slt          zero, a2, a7
                  sra          s11, t3, s1
                  nop
                  lui          zero, 606187
                  sltiu        t1, ra, 685
                  bge          s3, s10, 199f
                  auipc        a7, 942015
                  srai         zero, t2, 20
                  ori          zero, s6, 949
                  sub          a3, a3, a4
                  slli         gp, s7, 14
                  bne          s6, a2, 197f
                  srai         t5, a2, 5
                  bgeu         a5, a2, 198f
                  sra          t2, a6, t4
                  and          sp, tp, a5
                  nop
                  slt          s5, a3, s6
                  blt          a3, s8, 208f
197:              srl          a1, tp, t0
198:              bne          s5, s3, 205f
199:              lui          s2, 906226
                  xor          a5, a7, t5
                  blt          s11, a0, 203f
                  slti         s8, s5, 542
203:              sll          a3, s10, t5
                  blt          a1, s3, 208f
                  la           a2, region_0+579 #start riscv_load_store_rand_instr_stream_9
                  lb           s4, 8(a2)
                  lw           a1, 9(a2)
                  sh           a4, 55(a2)
                  lw           s2, 1(a2)
                  sb           a7, -27(a2)
                  lh           s7, 27(a2)
                  xori         s11, a7, -1673
                  sb           s7, -5(a2)
                  lbu          tp, -28(a2)
                  sb           s11, 25(a2)
                  sh           s10, -13(a2)
                  sub          zero, t6, a3
                  srli         t1, s0, 31
                  lbu          t1, -19(a2)
                  sw           sp, 21(a2)
                  slt          t4, a6, t4
                  lb           t5, 24(a2)
                  xor          gp, t0, zero
                  sb           s10, 32(a2)
                  lb           a7, 27(a2)
                  add          s0, s6, a1
                  lw           a6, -31(a2)
                  lh           gp, -35(a2)
                  xori         s9, t6, 1292
                  srai         s2, s4, 6
                  lhu          a3, -53(a2)
                  auipc        s9, 776882
                  andi         t2, t2, 197
                  sltu         a1, s1, s2
                  sb           t1, 54(a2)
                  lh           ra, -39(a2)
                  lbu          s6, -20(a2)
                  sltiu        s6, s8, 680
                  lbu          gp, 52(a2)
                  lhu          zero, -43(a2)
                  or           tp, s11, t2
                  sb           a4, -64(a2) #end riscv_load_store_rand_instr_stream_9
205:              srli         sp, s6, 10
                  sll          a3, t2, s7
                  lui          t2, 706515
208:              or           s6, a5, t2
                  ori          a0, s2, 1558
                  nop
                  xor          a2, s8, a4
                  ori          a4, a6, 1974
                  xor          s1, s2, a2
                  slt          s1, s10, a0
                  sub          a6, a0, s7
                  beq          s1, a2, 236f
                  sltu         a3, s7, s7
                  sra          s0, s11, t0
                  slti         s8, t6, -1304
                  srl          a0, s8, s8
                  srli         s4, a1, 8
                  bltu         s6, s10, 229f
                  xori         a6, s11, 219
                  bgeu         zero, s9, 237f
                  srli         a0, s0, 24
                  add          a0, a0, a5
                  beq          a2, a2, 230f
                  or           t2, a3, a5
229:              sltiu        s8, t0, 815
230:              srli         t2, s10, 8
                  lui          t4, 56934
                  ori          s11, gp, 264
                  xori         s0, zero, -295
                  slli         a4, s11, 13
                  beq          s10, s0, 239f
236:              srai         ra, s4, 8
237:              sltiu        s6, a1, 1140
                  and          s5, s4, a4
239:              srl          s1, s7, s6
                  ori          s9, ra, -80
                  sll          s1, s0, t1
                  lui          a4, 80430
                  xor          a2, zero, s3
                  auipc        a6, 286927
                  bgeu         s11, s2, 261f
                  srai         a2, s4, 18
                  bgeu         ra, tp, 260f
                  slt          a2, a1, a3
                  sra          sp, t1, a1
                  sltu         s5, a7, s9
                  srli         zero, s9, 1
                  or           s3, tp, s6
                  bge          gp, a4, 265f
                  sub          t4, a6, t0
                  bne          s5, s11, 267f
                  lui          s7, 154177
                  or           a0, s4, gp
                  sltiu        sp, a5, -1089
                  bgeu         t5, s5, 264f
260:              srai         tp, s10, 7
261:              lui          t2, 938370
                  sltiu        s3, t3, -1749
                  srli         t2, sp, 8
264:              or           s0, a1, t4
265:              bltu         a2, t6, 278f
                  xori         t1, a0, 88
267:              slti         s8, a0, 8
                  srl          t1, s11, s10
                  srl          s3, t6, s9
                  nop
                  sll          s1, a3, t3
                  srl          a1, s6, s8
                  auipc        s5, 712389
                  andi         s5, gp, -1906
                  andi         sp, s3, 1918
                  lui          a1, 914664
                  ori          sp, t1, 209
278:              srai         ra, s8, 19
                  bgeu         s6, s8, 282f
                  xori         s3, s4, 715
                  auipc        zero, 390161
282:              srl          t6, s4, s9
                  blt          ra, a5, 297f
                  auipc        a7, 511343
                  bge          t4, s1, 300f
                  xori         a7, s0, 657
                  bltu         a1, t4, 303f
                  srl          t1, sp, ra
                  andi         zero, s9, -1973
                  auipc        a5, 878020
                  andi         ra, t2, -1727
                  slli         sp, s0, 4
                  srli         s2, t5, 27
                  sltiu        a3, t5, -1555
                  xor          s2, s4, s4
                  nop
297:              bgeu         t3, s1, 308f
                  and          sp, a2, s9
                  ori          s4, a3, -131
300:              xor          zero, a1, s2
                  bgeu         t1, s10, 314f
                  blt          a1, a6, 304f
303:              sltiu        a5, a6, -856
304:              slt          a4, ra, s6
                  sub          s11, ra, t1
                  srai         t4, a7, 23
                  srli         s6, s0, 1
308:              sll          a1, s6, gp
                  slt          s0, s2, s0
                  andi         gp, t1, 178
                  or           s2, s4, t5
                  srl          t4, tp, t4
                  sltu         a6, t3, t2
314:              bge          sp, a6, 328f
                  sra          t4, t3, s10
                  slti         a5, s3, 1585
                  sub          s8, a4, s3
                  auipc        t1, 894890
                  nop
                  srli         s3, s1, 23
                  srai         sp, t3, 22
                  sub          s1, a3, zero
                  slli         a5, s9, 30
                  bge          a7, s3, 330f
                  sltu         s2, s9, s11
                  lui          a0, 396527
                  xori         t2, t1, 975
328:              nop
                  ori          t5, zero, 248
330:              srl          s2, s0, a3
                  andi         s4, a3, 103
                  sra          a1, gp, gp
                  slti         t1, sp, -1512
                  bltu         t4, a4, 354f
                  and          t5, sp, a6
                  xor          a3, s6, t2
                  and          sp, gp, s10
                  slti         a1, s11, 427
                  ori          sp, a7, 1450
                  slt          t1, a7, s6
                  sll          a3, t0, s9
                  slt          sp, t6, s4
                  ori          zero, s4, -1221
                  slli         s9, sp, 14
                  srli         a5, s10, 14
                  auipc        gp, 84789
                  xori         s3, a5, 1344
                  andi         s9, s6, 899
                  sltu         t5, a5, a3
                  and          gp, a1, s6
                  xor          s8, t2, t0
                  sll          a3, s10, s5
                  ori          s9, a0, 2010
354:              bne          t2, s11, 360f
                  bne          ra, a7, 371f
                  blt          t6, s6, 371f
                  bge          a5, sp, 359f
                  sub          t5, s11, sp
359:              addi         s5, a2, -1788
360:              slt          t6, a7, s11
                  slti         s3, s6, 1959
                  sub          s4, tp, s3
                  sltiu        ra, s2, -1251
                  and          a3, s10, t0
                  sub          s1, s8, s2
                  sra          t5, t2, t4
                  blt          t1, zero, 381f
                  sub          tp, a2, t2
                  lui          sp, 698055
                  andi         a4, t2, 773
371:              sub          t2, a7, sp
                  slt          a1, a4, sp
                  sub          sp, s11, s2
                  ori          s2, a5, 1608
                  srai         t1, sp, 31
                  and          s4, s3, s2
                  slti         gp, gp, -1913
                  sra          a3, t5, a7
                  sll          ra, s6, a4
                  andi         s3, a0, -1887
381:              or           sp, s3, zero
                  add          s6, s11, zero
                  nop
                  ori          a4, s11, -561
                  xori         s11, a5, 559
                  sll          tp, a7, zero
                  srl          zero, a5, a2
                  lui          tp, 171
                  slti         s3, t5, -1499
                  or           a1, a7, s8
                  nop
                  bltu         t0, a6, 394f
                  bltu         gp, a6, 407f
394:              and          s4, s6, s11
                  and          a1, gp, zero
                  srli         a5, s1, 2
                  blt          s0, a0, 410f
                  srai         tp, a2, 4
                  ori          s4, ra, -1998
                  auipc        a2, 44172
                  beq          s0, t4, 417f
                  srl          s11, s4, t6
                  sll          t2, t0, s11
                  sub          t5, s3, s2
                  addi         s6, s6, -339
                  srli         s9, s3, 25
407:              sub          s1, t1, s1
                  or           t4, s7, ra
                  sltiu        a4, t4, 793
410:              auipc        t2, 50477
                  andi         s3, s11, 588
                  auipc        a5, 314772
                  sub          s3, s1, s4
                  bge          tp, a2, 422f
                  ori          s2, a6, -701
                  andi         a6, a1, -639
417:              auipc        a7, 158217
                  bge          s3, gp, 425f
                  srl          ra, s8, a3
                  lui          a0, 608278
                  or           s8, s6, s1
422:              srli         t6, s6, 17
                  srl          sp, a7, tp
                  srl          ra, t3, a5
425:              sra          a7, t4, a7
                  bltu         s8, a3, 439f
                  add          ra, gp, s11
                  bge          s4, s1, 432f
                  sll          s8, s4, a5
                  slt          s5, s8, t3
                  auipc        a7, 796596
432:              or           t6, s10, zero
                  lui          a6, 520149
                  xor          t2, s0, a7
                  sub          a3, s11, t0
                  andi         s9, sp, -980
                  bltu         s0, a1, 453f
                  slti         s1, a2, 1593
439:              srl          a3, gp, s5
                  bltu         t1, s7, 447f
                  bltu         a2, a1, 452f
                  slt          s4, zero, t4
                  bge          t0, a5, 446f
                  sub          a1, a1, a3
                  slli         s9, a2, 30
446:              andi         zero, gp, -945
447:              bltu         ra, ra, 467f
                  xor          a4, zero, ra
                  xori         s9, t0, -633
                  xori         s0, a1, 357
                  sra          sp, sp, s10
452:              addi         a1, s4, -870
453:              addi         a6, ra, 605
                  blt          sp, tp, 470f
                  bgeu         s1, s8, 467f
                  slt          s9, tp, gp
                  beq          s5, ra, 464f
                  slti         t1, a7, -575
                  add          s3, s10, t0
                  bgeu         a1, t3, 464f
                  beq          s7, gp, 466f
                  or           a7, s10, sp
                  lui          s0, 245452
464:              addi         s11, s7, 404
                  xor          zero, s6, a6
466:              ori          s1, t2, 705
467:              xor          gp, s4, zero
                  la           a6, region_1+38 #start riscv_load_store_rand_instr_stream_11
                  slt          s2, s1, t0
                  lui          t1, 795106
                  sll          a0, zero, zero
                  slt          s5, s2, s0
                  sb           s3, -35(a6)
                  sb           t2, 184(a6)
                  slli         t6, s6, 23
                  slli         s6, a0, 21
                  sb           a7, 59(a6)
                  nop
                  slt          a1, a3, t5
                  xori         s8, s10, -796
                  nop
                  sll          a3, t4, a0
                  sb           zero, 145(a6)
                  and          a5, s2, a5
                  sb           t2, 217(a6)
                  lbu          t2, 72(a6)
                  srli         s8, s6, 8
                  sh           ra, 136(a6)
                  srai         a3, s4, 31
                  srl          a7, gp, ra
                  sb           s0, 244(a6)
                  lb           t5, -13(a6)
                  sb           s5, 47(a6)
                  sb           s2, 83(a6)
                  andi         s0, s3, -714
                  srl          a0, s6, t6
                  slti         t4, a3, -436
                  lb           tp, 34(a6)
                  lb           zero, 28(a6)
                  addi         s9, s1, -1082
                  sb           s4, 240(a6)
                  sb           s0, 67(a6)
                  addi         t2, a7, -1982
                  lui          a2, 626784
                  lh           s8, 222(a6)
                  lbu          a1, 212(a6)
                  sb           t6, 139(a6)
                  sh           a4, 46(a6)
                  lui          t1, 575148
                  andi         s6, s8, -1330
                  lui          s9, 741784
                  addi         s0, a7, -713
                  srai         t1, gp, 12
                  or           a4, zero, gp
                  sltiu        a5, sp, 1933
                  or           sp, t1, s11
                  srl          t1, s9, t6
                  lbu          s5, 120(a6)
                  lhu          sp, -10(a6) #end riscv_load_store_rand_instr_stream_11
                  blt          gp, a4, 474f
                  bgeu         gp, t5, 481f
470:              bgeu         sp, a4, 483f
                  bge          t2, a0, 477f
                  srli         s4, s3, 28
                  bge          t4, a3, 493f
474:              srl          a6, a7, t4
                  sltu         t4, gp, t1
                  andi         zero, a6, -333
477:              srli         a5, a3, 24
                  blt          t6, a5, 491f
                  sltu         a5, t6, t0
                  andi         a6, a7, -641
481:              add          zero, a2, s10
                  srai         gp, t4, 21
483:              andi         s5, s2, -304
                  slt          s0, s10, t1
                  sub          a2, a4, a7
                  srai         s4, t2, 29
                  xor          s6, t4, tp
                  xori         s8, t5, 1115
                  auipc        s4, 860576
                  sra          s9, a6, gp
491:              ori          a3, t1, -1066
                  addi         a0, s10, -1445
493:              sltu         s8, t1, t6
                  lui          gp, 388997
                  beq          zero, gp, 507f
                  sub          a3, a3, a1
                  slli         zero, s4, 22
                  bne          gp, a0, 514f
                  blt          t0, s0, 502f
                  bgeu         t6, t5, 507f
                  and          a5, s11, gp
502:              beq          zero, s1, 522f
                  srli         s0, t6, 6
                  sltu         gp, t5, s4
                  and          s4, s3, zero
                  slli         a0, s11, 29
507:              bltu         s4, t3, 527f
                  srli         tp, a0, 15
                  xor          a4, tp, gp
                  sltiu        gp, gp, -1363
                  sub          a5, s10, a1
                  nop
                  srai         s5, s0, 31
514:              sltu         sp, sp, s4
                  sub          a3, gp, s9
                  bne          t3, t5, 518f
                  beq          t0, s6, 521f
518:              slli         a4, s6, 21
                  or           t6, s0, s8
                  bne          a6, s11, 531f
521:              slt          s7, s0, s11
522:              bne          a1, s3, 534f
                  bne          a4, a2, 536f
                  lui          a7, 906374
                  srai         a3, s4, 27
                  bne          s3, sp, 529f
527:              addi         a4, t1, -1089
                  slt          a0, t0, zero
529:              sltiu        s2, t2, -1495
                  nop
531:              srai         s8, s10, 20
                  addi         a6, a6, 1369
                  nop
534:              blt          s3, t3, 538f
                  xor          t1, t3, t1
536:              srli         a5, tp, 30
                  bge          s5, t1, 553f
538:              auipc        a3, 513541
                  sra          s11, t4, s1
                  xori         a0, s11, -1092
                  xor          s8, s4, t0
                  xori         a1, s6, 585
                  or           s6, s3, ra
                  lui          a6, 808917
                  slli         gp, s9, 25
                  blt          a5, sp, 560f
                  beq          s5, t2, 563f
                  slti         a5, s5, 252
                  blt          t1, s9, 561f
                  bgeu         s2, s7, 557f
                  sltiu        s3, s7, -871
                  sub          s11, a5, t5
553:              and          s2, t1, zero
                  nop
                  slli         tp, t5, 2
                  andi         a1, t1, -1790
557:              xor          a1, s10, a5
                  srl          s8, s11, t1
                  nop
560:              lui          s1, 527828
561:              blt          t5, sp, 564f
                  sltu         s0, s10, s10
563:              xori         a6, a3, 1607
564:              lui          s5, 235645
                  blt          a6, t1, 581f
                  srli         a5, s8, 25
                  sltu         s4, a7, s11
                  bltu         tp, s6, 570f
                  andi         tp, a1, 1746
570:              beq          t0, t2, 576f
                  sra          t2, s6, a3
                  slt          a6, a0, s2
                  andi         s0, s8, 1451
                  slt          t4, t0, a1
                  slt          t6, a5, s5
576:              sub          a6, s1, s0
                  addi         s1, s1, -968
                  srli         s7, s11, 20
                  sltu         s4, s10, t0
                  sltiu        sp, a4, 1578
581:              xori         s5, zero, -1458
                  blt          s2, tp, 595f
                  sltu         s0, zero, a2
                  slli         t4, a4, 4
                  add          sp, s4, a1
                  bge          t3, s0, 599f
                  sltiu        s4, a6, -79
                  slti         sp, s8, -1927
                  xori         t1, s0, 1084
                  sltiu        a0, t3, -1703
                  sll          t1, s7, t6
                  nop
                  xori         a1, tp, 1038
                  sra          s2, s0, s11
595:              sltu         s8, t3, s9
                  slt          t2, a6, a4
                  add          a3, zero, s0
                  sll          ra, s0, s0
599:              and          s4, s8, t2
                  bltu         a5, a4, 616f
                  slt          a5, a7, t0
                  add          t2, s7, s6
                  sub          s8, a2, a3
                  bne          s0, tp, 617f
                  sltu         t1, s11, s9
                  bltu         a3, a1, 621f
                  bltu         a6, s2, 621f
                  addi         s11, s4, -377
                  xor          t4, s3, sp
                  or           t5, s11, gp
                  blt          a4, a4, 623f
                  slti         a6, a1, -1139
                  bgeu         s4, a0, 620f
                  sub          a3, s1, s8
                  andi         a0, t6, -409
616:              bgeu         s0, a3, 624f
617:              nop
                  bltu         gp, s6, 624f
                  slti         a3, t2, 759
620:              srli         s5, a4, 5
621:              sub          s4, a7, a0
                  add          a7, t6, t6
623:              xori         s4, s9, -524
624:              andi         ra, t4, -840
                  sltu         gp, s3, a3
                  sra          sp, s3, t0
                  slti         s5, s9, -1691
                  auipc        a6, 760447
                  nop
                  addi         s6, t1, -1030
                  xori         a5, t2, 248
                  blt          s5, a3, 637f
                  xor          a7, s2, s9
                  lui          zero, 149205
                  srli         t4, t2, 8
                  bgeu         ra, a2, 638f
637:              add          a4, a1, t4
638:              or           t6, t3, zero
                  sll          gp, t4, ra
                  sub          sp, t0, t2
                  ori          t4, a6, -1407
                  lui          t1, 88702
                  addi         s1, t1, -112
                  add          s4, t0, ra
                  slli         t4, t2, 24
                  slli         s4, s11, 4
                  blt          ra, t3, 658f
                  slt          a5, t1, s11
                  bltu         a0, gp, 665f
                  or           a3, t2, sp
                  nop
                  slti         gp, s8, -1835
                  srli         s5, t5, 0
                  sub          s9, tp, s9
                  nop
                  xor          gp, s11, a5
                  beq          s11, s11, 673f
658:              srai         s6, a6, 29
                  srai         s9, a5, 2
                  sltiu        sp, gp, -1160
                  sll          s0, a1, t2
                  and          s1, gp, s4
                  sub          t4, a5, t0
                  bne          t5, s6, 676f
665:              bgeu         s8, t6, 671f
                  nop
                  sra          s3, a3, s2
                  lui          s5, 542639
                  and          zero, s1, s1
                  addi         t1, s11, -1323
671:              auipc        sp, 901561
                  srli         gp, t1, 26
673:              srl          s2, s11, t6
                  andi         s0, s4, -410
                  slt          s11, t1, t4
676:              blt          t3, a2, 692f
                  beq          ra, s5, 682f
                  srli         s3, s7, 9
                  srai         s1, gp, 13
                  srli         s11, zero, 23
                  or           a2, s7, ra
682:              slti         s5, t6, 147
                  addi         s0, zero, 1214
                  bltu         s6, s7, 692f
                  add          zero, s10, s0
                  sltu         s5, a5, a5
                  bge          ra, ra, 693f
                  bne          s2, s4, 701f
                  lui          s5, 72364
                  slli         a1, a1, 15
                  slt          sp, zero, a0
692:              lui          s6, 998302
693:              bne          t1, s6, 706f
                  sltiu        t6, s8, 1544
                  sltiu        a0, a0, -402
                  add          s8, t4, t0
                  blt          a6, s11, 701f
                  slti         a5, s0, -912
                  and          t4, t0, t2
                  ori          sp, s9, 1105
701:              xor          a5, s7, s4
                  xori         ra, s5, 935
                  srl          t6, s1, tp
                  ori          t2, ra, 89
                  sub          s5, t6, a0
706:              slli         a2, sp, 0
                  sra          a3, a6, s2
                  xori         t6, gp, -236
                  bge          ra, a5, 716f
                  blt          t3, s8, 723f
                  beq          s11, s3, 718f
                  slli         s9, a6, 3
                  bltu         s1, s6, 725f
                  sltiu        s2, s1, 518
                  srl          t2, a3, ra
716:              srai         t4, a0, 20
                  srl          a0, ra, s3
718:              lui          t6, 547486
                  sll          t2, a5, t0
                  and          ra, s5, a7
                  add          s7, s1, a4
                  xor          a7, t5, sp
723:              sltu         a0, t6, t3
                  srli         gp, t6, 6
725:              beq          a1, a0, 741f
                  lui          tp, 776898
                  lui          a1, 21441
                  addi         a3, a5, -1780
                  xori         a3, ra, -312
                  slli         a7, gp, 0
                  sll          s4, zero, s0
                  nop
                  nop
                  slt          s4, a6, ra
                  bne          s10, gp, 755f
                  srai         tp, s10, 14
                  and          a0, a0, s10
                  srli         a4, a3, 21
                  bne          s9, t6, 743f
                  srai         s2, ra, 6
741:              sltu         a6, t2, a1
                  bgeu         tp, t6, 757f
743:              and          s2, gp, tp
                  bne          t3, tp, 758f
                  or           s2, s5, t6
                  slli         sp, t1, 27
                  and          s7, s0, tp
                  sra          t4, s2, s6
                  blt          s1, s3, 763f
                  blt          s3, t5, 763f
                  auipc        s1, 359272
                  slli         s5, s11, 7
                  blt          s4, s0, 756f
                  xori         s2, s5, 1859
755:              beq          s3, s9, 775f
756:              or           a7, s0, a7
757:              bne          s4, s10, 764f
758:              sra          s0, t3, sp
                  slli         s3, t6, 12
                  nop
                  sll          t4, gp, s8
                  sra          s9, a1, s9
763:              bgeu         s8, a3, 766f
764:              sltu         s11, s2, ra
                  and          a4, zero, sp
766:              bge          a6, s1, 768f
                  blt          a4, t4, 779f
768:              auipc        s0, 423479
                  addi         a2, a7, -1483
                  srl          s11, a2, a6
                  xor          zero, a0, s8
                  auipc        s8, 1020954
                  nop
                  nop
775:              beq          s10, s8, 791f
                  bgeu         a0, ra, 779f
                  ori          a1, t5, -1916
                  bltu         a5, a1, 785f
779:              bgeu         s9, a0, 790f
                  sltiu        t1, t3, 806
                  srli         s11, s0, 19
                  bgeu         s10, t6, 784f
                  nop
784:              xor          a3, t5, s8
785:              nop
                  srl          s6, ra, a6
                  sll          a0, t3, t1
                  bne          s4, zero, 801f
                  sub          s0, a0, s9
790:              xor          ra, s10, zero
791:              bge          t6, s8, 807f
                  slti         s0, a7, -1372
                  bge          t5, t3, 801f
                  srai         s9, t6, 30
                  xor          a0, a6, zero
                  srli         a0, tp, 25
                  la           s11, region_0+1009 #start riscv_load_store_rand_instr_stream_3
                  lbu          s2, 64(s11)
                  lbu          a1, -50(s11)
                  sb           s0, -32(s11)
                  and          s0, s10, s6
                  srli         t6, s7, 17
                  sw           s2, -45(s11)
                  lhu          a7, -35(s11)
                  lb           zero, 56(s11)
                  xor          zero, t4, a1
                  srli         t6, s10, 17
                  lbu          s5, 13(s11)
                  lhu          s9, -57(s11)
                  lbu          s0, 34(s11)
                  auipc        s6, 182335
                  and          s9, s3, t5
                  lb           s8, 44(s11)
                  lbu          gp, -40(s11)
                  lb           s9, -49(s11)
                  slli         s8, s7, 2
                  lhu          s5, 7(s11)
                  sb           t1, 32(s11)
                  lb           tp, 56(s11)
                  sb           a5, -32(s11)
                  lb           t5, -22(s11)
                  srl          a7, a7, s4
                  lbu          t4, -46(s11)
                  sh           s8, 35(s11)
                  lb           ra, 60(s11)
                  lh           a1, 7(s11)
                  lhu          zero, 17(s11)
                  sb           a6, -17(s11)
                  sb           s2, 12(s11)
                  slti         s2, t3, -1070
                  lhu          a0, 61(s11)
                  lb           t6, 44(s11)
                  slli         s2, a0, 11
                  add          s5, s5, ra
                  lb           a7, -58(s11)
                  lh           s6, -23(s11) #end riscv_load_store_rand_instr_stream_3
                  beq          a5, s8, 809f
                  nop
                  xori         t4, t3, 342
                  add          s2, a2, t1
801:              bltu         s3, t4, 805f
                  sll          zero, s10, a1
                  andi         t4, s3, 1382
                  srli         s11, a7, 31
805:              blt          a4, a1, 821f
                  sltu         t6, t1, a5
807:              bltu         s5, s1, 820f
                  xor          zero, t1, t1
809:              sll          a1, s8, s9
                  add          s0, a0, a4
                  lui          zero, 624510
                  or           tp, s7, s9
                  addi         s3, s11, 1250
                  la           t6, region_0+277 #start riscv_load_store_rand_instr_stream_0
                  lui          s6, 544120
                  sltiu        a0, tp, 1314
                  lbu          s3, 1298(t6)
                  add          zero, s3, a5
                  addi         s3, s11, -863
                  lw           s1, 695(t6)
                  add          s1, s8, t1
                  lbu          t4, 1420(t6)
                  sb           ra, 688(t6)
                  ori          a7, a7, -104
                  and          s2, zero, a3
                  srai         a5, s2, 6
                  add          a4, t2, a7
                  or           s1, ra, a3
                  sb           t0, -105(t6)
                  lb           s0, 420(t6)
                  srai         t1, gp, 31
                  lbu          s11, 20(t6)
                  lb           s4, 1578(t6)
                  sb           s2, 1284(t6)
                  lhu          zero, 1477(t6)
                  sb           s5, 1202(t6)
                  slti         a1, t0, 422
                  lb           a4, 970(t6)
                  ori          ra, s8, 1438
                  xor          a6, zero, s8
                  and          s9, t5, s4
                  or           a2, t3, s6
                  add          sp, sp, sp
                  sub          s1, t6, zero
                  lb           t5, 909(t6)
                  xori         s11, t3, 893
                  andi         s4, a6, -1183
                  and          a6, tp, a2
                  ori          t1, t6, 752
                  srl          s5, t4, sp
                  srai         t4, s10, 11
                  auipc        a0, 410083
                  sltu         s0, gp, a2
                  lh           a6, 991(t6)
                  lbu          a2, 824(t6)
                  sh           s0, 1435(t6)
                  srli         t1, a7, 10
                  sltiu        a1, a3, 1227
                  lb           s9, 184(t6)
                  addi         s5, s1, -813
                  xori         a4, a4, 651
                  lb           a7, 866(t6) #end riscv_load_store_rand_instr_stream_0
                  bne          s7, s7, 829f
                  srli         gp, sp, 19
                  srli         a3, a4, 11
                  bne          t6, ra, 830f
                  srl          a7, a3, a6
                  ori          t5, t2, -165
820:              xor          s5, s2, a0
821:              sltiu        s0, ra, -1744
                  sub          a7, s10, a1
                  srl          a5, a3, a3
                  blt          s5, s8, 840f
                  xor          s2, s7, a0
                  lui          t4, 210154
                  lui          tp, 329065
                  nop
829:              xori         a7, s5, -1010
830:              srli         t5, tp, 0
                  slt          t2, a3, s2
                  sll          s4, tp, a0
                  lui          t6, 216620
                  sll          zero, a3, s7
                  slt          s2, t0, t0
                  bge          s3, t1, 843f
                  bltu         a4, s1, 851f
                  srli         s11, a0, 19
                  xori         t5, t0, 1317
840:              srli         zero, t0, 1
                  auipc        s2, 1033767
                  bge          a5, a3, 844f
843:              sra          a1, s7, a6
844:              sltiu        s5, t1, 1684
                  auipc        a4, 226952
                  bgeu         s8, t3, 866f
                  ori          s11, t1, 1405
                  xor          t5, s10, s0
                  sub          a0, t3, a0
                  addi         a6, t6, 1553
851:              sll          tp, s0, s2
                  bne          gp, s4, 872f
                  bltu         t1, s3, 858f
                  bgeu         a2, t0, 858f
                  sll          s1, s11, t0
                  addi         a5, a2, -319
                  and          zero, gp, ra
858:              bne          ra, t6, 870f
                  auipc        a3, 111276
                  sltiu        ra, t4, 1322
                  xor          t1, tp, s10
                  add          t5, s9, s3
                  add          a6, a4, t0
                  sub          a7, t3, s6
                  addi         a5, a6, -1141
866:              and          s0, a4, a0
                  sub          a6, a0, s8
                  blt          t4, s6, 871f
                  nop
870:              bne          s0, s5, 883f
871:              auipc        sp, 412033
872:              or           s3, sp, s10
                  bge          a5, sp, 879f
                  or           t1, s1, s6
                  add          t1, a5, s7
                  add          a7, s1, s10
                  sltiu        ra, s10, 572
                  ori          a4, a5, -1386
879:              srli         a0, s3, 8
                  slti         t5, s6, 1474
                  srl          sp, s8, a3
                  slt          t1, s0, t0
883:              sra          a3, tp, a5
                  and          s4, t4, a4
                  sub          a7, a1, sp
                  andi         s2, a6, -1777
                  or           a0, a3, t4
                  auipc        a6, 203951
                  and          a2, t2, s2
                  sub          s4, zero, gp
                  addi         s3, s10, 655
                  sub          a3, s11, s3
                  bge          sp, gp, 907f
                  slti         zero, t0, 679
                  sltiu        s0, t1, 300
                  sll          s11, s0, s1
                  bgeu         t6, a6, 903f
                  slli         a1, s11, 26
                  sltu         s3, t4, s10
                  sll          a0, s11, s1
                  bltu         s2, s10, 908f
                  bgeu         gp, zero, 914f
903:              sll          s1, s2, t0
                  nop
                  lui          tp, 23872
                  bne          t2, s10, 912f
907:              bge          a6, s6, 927f
908:              ori          s2, s3, -1434
                  nop
                  srli         s6, zero, 26
                  bne          s6, s1, 927f
912:              nop
                  bne          s2, s6, 916f
914:              srai         s9, t3, 21
                  nop
916:              sll          sp, s10, t2
                  add          t5, gp, s11
                  andi         a0, s7, 933
                  slt          s6, a2, s6
                  srli         s2, gp, 23
                  sll          a7, a6, s9
                  slli         a6, a6, 1
                  xor          a5, t6, a5
                  sltiu        tp, t4, 1771
                  add          s7, s4, a6
                  sltiu        a5, s5, 1874
927:              bne          gp, s3, 939f
                  bne          t1, s6, 942f
                  srl          t5, s3, a6
                  bge          t5, t6, 950f
                  sltu         t4, t0, s9
                  xor          t6, t2, t5
                  slli         a0, a2, 4
                  xor          s1, a0, a5
                  add          t6, t5, gp
                  srli         s4, t0, 16
                  blt          s2, s11, 948f
                  lui          s1, 984809
939:              sltiu        s0, tp, -1904
                  bne          ra, s2, 947f
                  sub          a6, tp, t2
942:              beq          ra, t5, 948f
                  srai         a0, tp, 28
                  or           a4, gp, a4
                  addi         s3, s7, 660
                  srai         a7, t1, 30
947:              lui          s9, 716826
948:              blt          s0, s1, 961f
                  sub          a2, s6, s5
950:              srl          ra, s8, a2
                  or           gp, t3, sp
                  bne          t6, t6, 957f
                  addi         sp, tp, 1689
                  bne          a6, s2, 967f
                  beq          a4, t5, 957f
                  auipc        s5, 109034
957:              slti         gp, a2, -1858
                  srli         a7, t3, 10
                  xori         a2, s0, 1332
                  sltiu        a1, t6, 780
961:              sltu         a7, s3, a5
                  andi         t5, a4, -888
                  addi         s8, t1, -1459
                  srl          a1, t3, a0
                  andi         a7, t0, -1059
                  slli         a0, sp, 10
967:              lui          a4, 736061
                  bge          a1, tp, 981f
                  sub          s1, tp, zero
                  bne          t5, t6, 973f
                  sub          a3, t5, a5
                  and          t1, s11, a4
973:              sub          a4, a4, s10
                  bne          t0, s2, 986f
                  slt          s0, s9, t4
                  addi         a1, t5, -1917
                  bltu         a1, t1, 989f
                  addi         s6, t6, 162
                  bne          s6, t1, 995f
                  srai         t2, gp, 29
981:              slt          tp, gp, s7
                  and          t4, s1, s10
                  bltu         s4, t1, 990f
                  srai         s8, s6, 31
                  or           a3, a1, t3
986:              lui          t2, 151451
                  and          t5, s4, a3
                  bge          ra, t2, 995f
989:              bltu         a3, zero, 993f
990:              sub          s3, t3, t1
                  xori         s8, a6, -834
                  beq          a3, s9, 994f
993:              nop
994:              lui          a4, 609917
995:              lui          t5, 927686
                  add          s7, s5, t3
                  addi         t1, a6, 1347
                  or           a1, s10, s7
                  xor          a6, ra, s9
                  sub          ra, a2, gp
                  srai         s5, s5, 21
                  sltu         s9, t2, s6
                  slt          s6, gp, t4
                  slli         a6, ra, 5
                  slli         s9, ra, 12
                  bne          a5, s3, 1014f
                  or           gp, s8, t5
                  nop
                  xor          s4, zero, gp
                  sltu         s9, s10, a0
                  srai         a3, t1, 28
                  xori         t6, s2, -1840
                  slti         s2, s3, -1832
1014:             bge          a1, zero, 1029f
                  srai         s2, sp, 26
                  andi         a3, a3, -670
                  and          s6, s5, zero
                  sub          a2, t2, a6
                  beq          t5, a3, 1032f
                  bne          sp, a5, 1034f
                  nop
                  or           s8, a4, s1
                  srli         a3, a5, 15
                  beq          a7, s10, 1028f
                  bne          s4, t0, 1041f
                  sra          a6, a7, s1
                  blt          a1, gp, 1043f
1028:             slti         t6, t6, 1017
1029:             auipc        s5, 198207
                  ori          sp, s0, 566
                  blt          a7, a2, 1037f
1032:             lui          s3, 870745
                  andi         a7, zero, -1412
1034:             bge          gp, s7, 1038f
                  sll          s4, a7, s3
                  slt          s5, t6, s3
1037:             ori          s1, a0, 1343
1038:             bltu         s4, a6, 1041f
                  auipc        a4, 648742
                  bltu         t5, s4, 1048f
1041:             andi         a6, s9, 1054
                  or           t6, s1, a6
1043:             add          t4, a1, gp
                  sll          s3, s9, t0
                  blt          a6, s9, 1047f
                  xor          gp, s8, t2
1047:             or           s11, gp, s5
1048:             sll          s7, t2, tp
                  xor          t1, s11, a3
                  sub          t1, s4, s9
                  srli         s2, a5, 30
                  sltiu        t1, s4, -1493
                  bne          t1, s9, 1069f
                  andi         t6, a3, -125
                  add          t1, a6, t2
                  xori         a2, t5, -350
                  auipc        s1, 610318
                  xori         a0, s1, 348
                  sll          a0, a7, gp
                  ori          zero, t5, 1609
                  nop
                  beq          s0, t5, 1064f
                  or           s4, t3, s8
1064:             srli         a4, s4, 2
                  addi         s5, a6, -433
                  srli         s11, t3, 7
                  addi         s3, t5, 735
                  sra          t6, zero, a6
1069:             auipc        s0, 289701
                  bge          sp, a1, 1077f
                  srl          t5, s5, s10
                  blt          t3, t0, 1088f
                  bge          t0, t4, 1080f
                  sltu         t1, s11, s4
                  ori          s4, s3, 147
                  add          ra, t0, s1
1077:             xori         s9, a3, 1492
                  and          t2, zero, t3
                  srai         t5, t6, 4
1080:             and          s6, t0, ra
                  sra          ra, s2, a7
                  add          s1, s5, t2
                  add          a1, a5, t4
                  beq          a1, gp, 1100f
                  addi         s8, s5, 903
                  xori         t2, t5, -1708
                  bne          a2, s11, 1098f
1088:             srai         t4, a4, 8
                  sub          a5, sp, s9
                  bne          s5, a7, 1103f
                  andi         t6, a6, -1155
                  sub          sp, s2, zero
                  srli         s3, ra, 2
                  bltu         a6, t0, 1108f
                  srli         s3, t3, 1
                  sll          s2, sp, s7
                  slt          s5, a6, t5
1098:             sltiu        s11, s3, -1063
                  nop
1100:             slli         zero, t0, 5
                  bgeu         a1, t4, 1114f
                  bltu         t2, tp, 1114f
1103:             lui          t6, 377840
                  beq          s4, s3, 1118f
                  xor          ra, t3, ra
                  addi         gp, tp, 1278
                  sub          ra, t6, s3
1108:             bgeu         a7, s0, 1123f
                  addi         t1, t4, 287
                  bge          t4, t0, 1113f
                  or           a6, s8, t4
                  srai         a7, s8, 2
1113:             blt          tp, s3, 1125f
1114:             bgeu         a0, s8, 1126f
                  nop
                  slti         ra, zero, 1
                  bge          sp, s0, 1122f
1118:             srai         s3, s5, 0
                  addi         t5, zero, -589
                  bne          s5, t2, 1126f
                  bne          s5, ra, 1134f
1122:             xor          s11, s11, tp
1123:             andi         a2, t3, -1245
                  beq          s0, a0, 1144f
1125:             sub          a6, t0, a3
1126:             sra          zero, a6, s0
                  sltu         s3, a1, s2
                  slt          s9, a3, t4
                  sltiu        s1, a6, -1728
                  and          tp, a5, t2
                  bne          s10, a7, 1138f
                  sll          a7, t2, t3
                  xori         s2, sp, -246
1134:             srli         a0, a3, 27
                  srl          t4, a1, s5
                  sltu         s9, sp, a2
                  xor          s9, s0, s2
1138:             add          a6, a0, s10
                  bge          a4, a3, 1159f
                  bltu         s4, t0, 1156f
                  slt          s7, a3, t2
                  andi         s11, a5, -1116
                  beq          gp, s1, 1147f
1144:             slli         s0, t6, 3
                  lui          a4, 622893
                  slli         sp, s8, 6
1147:             sll          zero, s6, a1
                  nop
                  auipc        gp, 383681
                  lui          sp, 310926
                  srli         s6, t2, 23
                  slt          s1, a4, s6
                  nop
                  xor          a7, t4, t6
                  blt          t0, s10, 1168f
1156:             and          a0, t4, s11
                  sra          a2, a0, a1
                  and          ra, s9, tp
1159:             and          a3, t3, s3
                  slt          s8, s2, zero
                  xori         a3, a7, 1726
                  slt          s1, s8, a7
                  add          s4, a3, s2
                  xori         s1, a3, -1474
                  srl          s9, gp, s0
                  addi         a1, s6, 1637
                  andi         a0, a4, -1828
1168:             sltiu        s8, s1, -2040
                  sub          t5, t3, t5
                  srai         t2, s1, 25
                  slt          s2, a3, s6
                  sltu         t6, a3, s4
                  sltu         a2, a6, zero
                  and          s11, s1, t5
                  slli         a3, a1, 11
                  slt          a3, a4, s5
                  slt          s0, gp, t0
                  bgeu         t0, ra, 1191f
                  srl          zero, t5, t0
                  sltiu        zero, a2, 1631
                  lui          s1, 46115
                  sltiu        s6, a6, -1931
                  add          gp, s4, s2
                  lui          a1, 826750
                  xor          t6, s9, t2
                  and          s6, s1, s7
                  bltu         s10, a7, 1203f
                  sll          s3, t0, a6
                  addi         s4, zero, -310
                  and          s7, t3, a3
1191:             and          s0, a0, tp
                  beq          t0, s3, 1208f
                  andi         t2, a1, -1493
                  srl          s2, a2, a2
                  srl          s0, s6, a6
                  srai         a4, t1, 30
                  bge          ra, a5, 1203f
                  bne          s0, zero, 1210f
                  or           ra, a1, t3
                  sltu         a1, a3, t4
                  bgeu         s6, ra, 1221f
                  xori         s2, sp, -1870
1203:             srli         s7, s3, 3
                  beq          s10, gp, 1208f
                  slt          gp, s6, ra
                  beq          s10, s0, 1220f
                  xor          s5, t3, t0
1208:             and          ra, a2, t4
                  xori         t2, s4, -1063
1210:             srli         s3, s9, 15
                  bge          gp, a3, 1218f
                  sra          s9, a1, tp
                  xor          s9, s10, zero
                  bltu         t1, a6, 1225f
                  slti         sp, t3, 702
                  auipc        s11, 121746
                  bltu         gp, t6, 1219f
1218:             sra          sp, t1, s5
1219:             blt          s2, a5, 1231f
1220:             add          sp, s7, s2
1221:             beq          s10, t4, 1237f
                  xor          s6, a5, s1
                  srli         zero, a4, 24
                  blt          t1, t5, 1232f
1225:             bne          t3, s11, 1231f
                  bltu         a6, t6, 1240f
                  slli         a6, a6, 4
                  blt          a4, gp, 1248f
                  ori          s0, s4, -292
                  xor          t6, a0, s10
1231:             nop
1232:             addi         s3, gp, 83
                  slt          sp, zero, ra
                  srai         t4, t0, 18
                  sub          gp, t5, a4
                  auipc        s1, 81838
1237:             or           t5, s1, s5
                  bge          t1, gp, 1245f
                  nop
1240:             bge          ra, a0, 1256f
                  nop
                  xor          a2, t4, s1
                  sltiu        t2, a0, 1886
                  beq          s10, s0, 1257f
1245:             sltu         s5, s2, a2
                  srl          t5, ra, t5
                  blt          a7, a2, 1252f
1248:             slti         gp, s10, -1533
                  srl          a7, t6, zero
                  sra          s9, t3, a0
                  slli         a1, a2, 3
1252:             slli         s2, t5, 19
                  and          s11, t6, tp
                  auipc        sp, 902503
                  sra          a6, s2, t2
1256:             xori         zero, a6, -1228
1257:             bgeu         a4, t6, 1270f
                  sltiu        sp, s6, -678
                  beq          s5, t4, 1262f
                  slti         t4, zero, 962
                  sltiu        a4, tp, -783
1262:             andi         a3, s6, -59
                  ori          t4, ra, 1021
                  slli         a0, s8, 6
                  bne          s0, a7, 1267f
                  lui          a4, 679851
1267:             slti         s1, t4, 281
                  bge          a3, t4, 1281f
                  lui          a2, 979943
1270:             bltu         s7, sp, 1282f
                  or           t5, t3, t4
                  and          s2, tp, s0
                  bge          gp, tp, 1277f
                  bne          s4, t5, 1281f
                  bltu         a2, s5, 1290f
                  sub          s7, t4, t3
1277:             add          t6, a0, a1
                  bne          s0, t0, 1281f
                  slti         s2, sp, -1566
                  add          t4, zero, s10
1281:             sub          a0, s9, t0
1282:             blt          t6, s9, 1288f
                  sltiu        zero, t3, 273
                  add          a6, sp, s5
                  bgeu         s0, s1, 1290f
                  srai         s7, t6, 21
                  bltu         a6, t6, 1291f
1288:             andi         s8, t5, -712
                  ori          t1, s10, -979
1290:             sra          sp, zero, zero
1291:             bne          t0, zero, 1295f
                  sub          t4, tp, t0
                  blt          gp, t4, 1295f
                  sub          s4, t1, tp
1295:             xori         a1, t3, -1728
                  slli         s3, t5, 12
                  ori          gp, a4, -805
                  bltu         s9, s3, 1314f
                  la           s9, region_1+1225 #start riscv_load_store_rand_instr_stream_1
                  ori          t6, t6, 1535
                  lbu          s2, 32(s9)
                  andi         s8, t4, -1094
                  sb           t5, 20(s9)
                  slt          s1, s11, a7
                  lb           s0, -30(s9)
                  sb           s8, 27(s9)
                  nop
                  lb           a2, -34(s9)
                  lbu          s4, -54(s9)
                  nop
                  lb           sp, -18(s9)
                  sb           t5, -64(s9)
                  and          s5, a6, s7
                  or           zero, a7, t6
                  lbu          t4, 24(s9)
                  lb           a2, -28(s9)
                  sb           s11, -50(s9)
                  nop
                  lb           a7, 29(s9)
                  addi         a5, s7, -25
                  sb           a5, -46(s9)
                  lh           s1, 21(s9)
                  sb           a7, 44(s9)
                  slt          s7, s5, s4
                  nop
                  sb           s10, -54(s9)
                  srai         a6, t0, 18
                  lbu          s0, -18(s9)
                  lb           a1, 47(s9)
                  lb           a3, -40(s9)
                  slti         a1, s9, -803
                  lbu          s7, -20(s9)
                  sra          gp, a1, s0
                  sb           t0, 17(s9)
                  lhu          s1, -39(s9)
                  sltiu        a0, a5, -175
                  sb           t2, 23(s9)
                  sb           a5, 29(s9) #end riscv_load_store_rand_instr_stream_1
                  ori          a6, zero, -712
                  srli         gp, s9, 20
                  slli         s8, t0, 29
                  addi         s2, s2, 702
                  blt          a1, zero, 1306f
                  srl          a3, tp, s3
                  or           gp, gp, t0
1306:             or           a5, s6, t3
                  sra          sp, a3, s3
                  or           s7, s6, a0
                  srai         s8, zero, 8
                  blt          a7, ra, 1324f
                  and          a4, sp, a7
                  auipc        s1, 908590
                  or           t2, sp, s2
1314:             blt          t4, s3, 1326f
                  add          zero, s2, s10
                  blt          gp, t6, 1332f
                  sll          t1, s3, a7
                  srli         a1, a0, 27
                  sll          ra, s1, t4
                  sltu         t2, s4, s6
                  bgeu         a0, s4, 1327f
                  slt          s1, t4, t3
                  lui          gp, 547683
1324:             xor          t5, ra, s6
                  andi         a3, a1, -217
1326:             sltu         t5, sp, a7
1327:             or           s9, s10, s0
                  sll          s1, a0, s9
                  add          a5, sp, s2
                  sltiu        t6, t2, -1356
                  xor          a7, a2, s8
1332:             sltu         s0, s9, s7
                  srl          s2, a6, s9
                  srl          s5, ra, a2
                  srai         s0, zero, 2
                  slt          sp, t0, s10
                  srai         s0, t5, 27
                  ori          t4, ra, 704
                  andi         s7, s3, -216
                  bge          ra, a3, 1347f
                  sub          a7, t5, s5
                  addi         s0, a4, 1026
                  bne          s4, t3, 1350f
                  add          a1, a7, t1
                  add          a2, s10, sp
                  blt          s8, s4, 1354f
1347:             xor          sp, a1, s5
                  sra          s2, t2, a6
                  slli         s7, a2, 4
1350:             auipc        s11, 831017
                  sltu         s9, t6, a6
                  lui          s6, 890230
                  sltu         t2, a7, a6
1354:             bne          zero, s1, 1367f
                  lui          a6, 634164
                  slt          ra, s3, s9
                  sll          a1, a6, t1
                  sltiu        s3, s5, -892
                  lui          t6, 812781
                  bge          zero, a2, 1374f
                  bge          t2, s5, 1373f
                  lui          a0, 37717
                  ori          s5, a4, -1926
                  addi         tp, t0, 1410
                  sra          gp, a2, a3
                  sll          s7, a1, s3
1367:             bge          s8, t2, 1380f
                  xor          a7, a5, zero
                  and          s2, a5, a1
                  srai         a0, t6, 15
                  add          sp, t4, s5
                  auipc        s11, 16926
1373:             ori          a2, s0, -325
1374:             bltu         s3, gp, 1381f
                  or           t1, a4, s10
                  xor          a4, a2, a5
                  addi         a1, t2, -844
                  slti         sp, s5, 1047
                  srli         a7, a2, 25
1380:             nop
1381:             ori          a1, s3, 638
                  lui          a4, 903463
                  addi         t6, s5, 663
                  ori          t2, a7, -1770
                  bgeu         a4, s9, 1400f
                  slli         gp, s7, 20
                  bgeu         a0, tp, 1403f
                  bgeu         gp, t5, 1408f
                  auipc        a4, 768670
                  sra          s9, ra, s5
                  blt          s8, s11, 1411f
                  xori         sp, s11, -763
                  sll          s8, t6, a6
                  xori         sp, t0, -1491
                  srl          s9, zero, sp
                  and          tp, sp, s5
                  auipc        a5, 1040601
                  srl          s1, s3, a2
                  srai         a2, t1, 29
1400:             sltu         s0, a3, t4
                  slli         s2, s6, 8
                  bne          s11, tp, 1415f
1403:             sra          s4, t3, s1
                  xor          a0, t1, t4
                  sll          a5, t2, a0
                  sll          s4, s2, a5
                  slti         a7, s1, -994
1408:             sll          s5, t3, t0
                  slli         t2, t0, 2
                  slt          t5, a3, s4
1411:             andi         a1, t3, 557
                  slt          t4, t4, a0
                  bgeu         a2, s4, 1416f
                  sub          t6, s5, s6
1415:             nop
1416:             srl          a2, t5, t0
                  bltu         zero, t0, 1430f
                  or           a3, a6, t3
                  or           a5, t1, s10
                  sltu         s9, zero, sp
                  sltiu        sp, a3, 48
                  and          s1, a4, s2
                  srli         ra, t2, 7
                  and          a5, s4, a4
                  nop
                  beq          s8, s1, 1438f
                  sll          a6, s4, zero
                  sll          a0, gp, ra
                  add          a2, s4, t0
1430:             xori         s0, s3, -1678
                  bge          s7, s9, 1442f
                  srl          t2, a2, zero
                  sra          sp, t3, a5
                  bge          s8, s9, 1450f
                  or           s2, t3, a2
                  sltu         t2, a3, a5
                  xori         t5, s10, -914
1438:             bne          t4, s5, 1440f
                  slti         s11, t6, -588
1440:             sll          t1, a6, s11
                  andi         t2, s2, -462
1442:             sll          s6, t5, s9
                  bgeu         t6, t4, 1445f
                  auipc        s3, 507878
1445:             andi         a5, a0, -1588
                  or           s6, s10, t0
                  and          s0, tp, t5
                  srl          s6, a2, s6
                  xori         s0, a1, 332
1450:             lui          s6, 632676
                  add          a7, s1, gp
                  andi         ra, ra, 1694
                  add          s9, s8, s9
                  add          s7, s1, a6
                  addi         a6, ra, -1982
                  xori         t1, s10, 288
                  slt          s9, a5, ra
                  bne          t1, a4, 1478f
                  la           a0, region_1+1432 #start riscv_load_store_rand_instr_stream_7
                  lb           s4, 77(a0)
                  sb           t2, -809(a0)
                  lb           s1, -1305(a0)
                  sltu         tp, s7, a6
                  add          a1, a5, s6
                  lbu          s2, -613(a0)
                  ori          gp, s10, -440
                  lb           a1, 265(a0)
                  sltu         s8, t1, a7
                  or           t5, a4, s11
                  andi         t4, s1, 458
                  lh           gp, 78(a0)
                  sb           gp, 322(a0)
                  xori         s9, s1, 192
                  xori         s5, s5, -1063
                  and          a6, t6, a1
                  sb           s8, -701(a0)
                  slti         gp, s3, 1865
                  lbu          s5, -361(a0)
                  lbu          s4, 30(a0)
                  srai         gp, s1, 5
                  addi         s4, s10, -528
                  lbu          zero, -655(a0)
                  lb           s7, -579(a0)
                  lbu          s8, 359(a0)
                  sra          t5, s2, a7
                  xor          s6, a6, t0
                  lhu          t5, 44(a0)
                  lb           t4, 330(a0)
                  xor          t1, s5, s2
                  slli         a4, t6, 1
                  slli         ra, s9, 12
                  lb           a5, -1408(a0)
                  sra          gp, s0, t1
                  sb           s6, -1015(a0)
                  sltiu        a2, s7, -1991
                  sll          s8, s7, a3
                  lbu          a7, -338(a0)
                  sltu         zero, s11, t5
                  or           s8, a7, s10
                  lbu          s9, -669(a0)
                  lbu          a2, -972(a0)
                  sltiu        a2, s10, 1463
                  lbu          a1, -169(a0)
                  and          s4, sp, t2
                  andi         a4, t0, 1661
                  lb           a1, 485(a0)
                  lb           s0, -477(a0) #end riscv_load_store_rand_instr_stream_7
                  bge          s6, s5, 1463f
                  sltiu        s6, t5, -1565
                  sltu         a1, a5, t5
                  sltiu        t2, t3, 699
1463:             beq          sp, s11, 1479f
                  srli         s3, t2, 20
                  or           s1, t6, s0
                  sub          s6, s4, t3
                  lui          s9, 976127
                  slt          s5, sp, zero
                  nop
                  srli         s7, a0, 8
                  andi         t5, a0, -589
                  or           s11, s4, s3
                  bne          t2, s10, 1475f
                  sltu         t2, a2, s6
1475:             sltu         s7, s1, s9
                  sll          ra, t1, a3
                  xori         s9, a2, 615
1478:             bge          sp, t2, 1484f
1479:             auipc        t4, 838803
                  sra          tp, s8, a7
                  bgeu         s6, tp, 1494f
                  xori         a4, ra, -82
                  slti         t1, s5, 284
1484:             add          a1, t6, t4
                  sltiu        t6, s1, -798
                  or           t5, t6, a5
                  slt          a0, t0, s5
                  sltu         a6, sp, s0
                  or           s0, tp, s7
                  sub          t5, s5, ra
                  srl          s1, a1, t2
                  blt          t4, s2, 1508f
                  slti         s9, s10, -878
1494:             lui          a4, 57591
                  bgeu         t1, sp, 1511f
                  sra          s9, s5, t6
                  xor          ra, zero, ra
                  and          zero, a4, a2
                  and          a1, a0, a1
                  addi         s4, a3, -408
                  bltu         t2, s0, 1513f
                  sll          s5, t6, a3
                  bge          s8, a5, 1516f
                  add          ra, a3, t0
                  slt          zero, s5, a5
                  srai         a4, a7, 28
                  bgeu         a6, gp, 1519f
1508:             ori          a5, s1, 283
                  bgeu         a5, s4, 1523f
                  nop
1511:             andi         s7, gp, 1593
                  beq          s7, a0, 1519f
1513:             sltu         t2, a7, a1
                  andi         ra, s11, 560
                  sub          a0, s9, zero
1516:             bge          a7, a1, 1521f
                  add          s6, t0, a1
                  andi         a4, ra, 1037
1519:             sra          a6, t0, s7
                  slti         s9, s5, 1871
1521:             slt          t1, t3, t1
                  srl          s4, s4, a1
1523:             sub          s7, a3, s8
                  srli         t4, s6, 20
                  bne          s0, tp, 1532f
                  sll          ra, t1, t4
                  ori          s6, s9, -601
                  srai         t2, s11, 28
                  sub          a2, s9, tp
                  nop
                  and          s6, s8, s6
1532:             slli         s3, a1, 22
                  sll          s9, sp, t1
                  bge          a3, a2, 1554f
                  beq          s10, s7, 1542f
                  bne          a1, t2, 1547f
                  srli         a6, a7, 13
                  sra          s3, s4, a4
                  bne          s11, tp, 1542f
                  beq          s11, s5, 1548f
                  slt          gp, s7, s3
1542:             bgeu         a1, ra, 1555f
                  add          t4, t4, sp
                  bltu         s10, a2, 1558f
                  srai         a1, a1, 31
                  sll          ra, a5, s3
1547:             bge          ra, s3, 1563f
1548:             andi         s0, t3, 121
                  lui          s11, 708073
                  andi         a0, s10, -965
                  bne          s2, t3, 1557f
                  xori         a6, a3, -1971
                  bltu         t1, s0, 1565f
1554:             or           a7, t3, a4
1555:             srl          s7, t4, a5
                  srli         s1, a0, 25
1557:             sltiu        s0, t4, 685
1558:             auipc        a2, 979408
                  slt          s9, a1, s7
                  slt          a1, t0, s4
                  slti         ra, sp, -1147
                  andi         s2, s7, -991
1563:             ori          a5, t3, -1071
                  la           s11, region_0+306 #start riscv_load_store_rand_instr_stream_12
                  srli         s4, s9, 7
                  lh           a5, -26(s11)
                  sra          s0, s2, t2
                  lb           a1, 19(s11)
                  lbu          a5, 1(s11)
                  srli         t2, a4, 13
                  add          t2, a3, s9
                  sb           s8, -4(s11)
                  lbu          zero, 37(s11)
                  auipc        s5, 646829
                  sra          a2, s3, s11
                  slti         t2, s11, -1697
                  ori          a3, a2, -1086
                  andi         s1, s8, -1234
                  slt          a0, t6, a1
                  lbu          a6, 59(s11)
                  lbu          s4, -31(s11)
                  lb           t6, 63(s11)
                  lh           ra, -40(s11)
                  sh           s8, 50(s11)
                  lw           ra, -50(s11)
                  nop
                  sll          t6, sp, t6
                  sb           s11, 9(s11)
                  lh           tp, 28(s11)
                  slti         s4, s4, -876
                  sh           t3, -26(s11)
                  slti         a1, s3, 1126
                  slt          t6, t2, a5
                  lb           a4, -5(s11)
                  auipc        a7, 418321
                  lb           t1, 14(s11)
                  lw           t5, 22(s11)
                  sb           tp, 54(s11)
                  lb           s1, -39(s11)
                  ori          s2, s5, 370
                  add          a3, t0, a5
                  xor          s2, t1, s11
                  lb           s0, -25(s11)
                  srl          s4, s9, a3
                  auipc        s2, 440031
                  ori          a3, t6, -1869
                  slt          t5, gp, s0
                  lb           a2, 59(s11)
                  lbu          a6, 17(s11)
                  lbu          a4, -55(s11) #end riscv_load_store_rand_instr_stream_12
                  sltiu        s2, a0, 1112
1565:             and          s0, sp, tp
                  addi         a7, t5, -1661
                  sra          a6, t6, s7
                  srai         s6, t1, 18
                  sra          a2, s3, ra
                  srai         a0, s5, 10
                  slti         s5, s10, -276
                  sltu         t2, s7, sp
                  bltu         s2, s4, sub_1_j3 #branch to jump instr
                  auipc        a3, 25951
                  ori          a5, tp, -645
                  xori         s6, s4, -698
                  srli         a2, t4, 6
sub_1_j3:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  nop
                  slti         s2, a5, -498
                  beq          s2, t5, 1572f
                  xori         tp, s0, -887
                  sltu         a0, s5, s10
1572:             slti         a7, tp, 518
                  or           s5, a0, a1
                  beq          t3, a2, 1589f
                  auipc        s3, 66422
                  lui          t6, 431879
                  srai         zero, a0, 25
                  slli         t1, t0, 9
                  auipc        a2, 540315
                  nop
                  blt          t5, s4, 1585f
                  sll          tp, s10, s1
                  slli         zero, a5, 31
                  bge          tp, s11, 1597f
1585:             slt          s9, s3, t2
                  sltiu        a4, t5, -664
                  srl          a2, zero, s5
                  srli         zero, a2, 8
1589:             and          a6, sp, s4
                  auipc        zero, 239001
                  sra          a0, s0, s10
                  add          s8, a5, t1
                  lui          sp, 94448
                  srl          zero, s1, zero
                  nop
                  sub          s11, a4, a6
1597:             auipc        s8, 308886
                  bltu         s6, s5, 1610f
                  srli         t4, ra, 13
                  and          s9, a3, t2
                  blt          a3, a1, 1614f
                  sll          tp, a2, s4
                  nop
                  srai         s4, a5, 27
                  bne          a5, zero, 1621f
                  slti         s7, s0, 1630
                  srai         a4, a3, 26
                  sub          a7, t5, a1
                  beq          t5, a1, 1625f
1610:             slti         a5, s3, 310
                  srai         zero, t1, 2
                  lui          t2, 797658
                  bltu         a1, t5, 1629f
1614:             blt          t2, s5, 1617f
                  sltu         s0, s6, a1
                  or           t1, a3, s2
1617:             srai         s11, s0, 5
                  xor          t1, s2, a2
                  sll          a0, a6, a6
                  beq          s1, a3, 1628f
1621:             xori         t2, zero, -100
                  xori         s2, s7, -2
                  slti         s0, t4, 600
                  srai         s6, a0, 8
1625:             srli         s5, t6, 24
                  xori         s11, s10, -1825
                  slti         gp, t0, -1700
1628:             srli         t5, a7, 5
1629:             srl          t1, zero, s2
                  blt          t2, s7, 1636f
                  srai         s2, s11, 30
                  xori         t1, a0, 550
                  nop
                  xor          a3, s2, a7
                  srai         s0, s7, 2
1636:             sltu         t2, s11, t6
                  srl          a5, s1, s6
                  srai         s3, zero, 2
                  sll          sp, t3, s10
                  slti         s7, s8, 596
                  xor          sp, a0, t3
                  auipc        s4, 412672
                  bne          a4, a6, 1657f
                  srl          gp, ra, s9
                  srai         t4, zero, 5
                  srai         s5, s9, 5
                  auipc        s3, 178263
                  and          s3, t4, a3
                  sltiu        gp, s7, 1303
                  sltiu        a6, s5, -1868
                  srai         t6, a2, 17
                  bltu         s3, gp, 1656f
                  srl          t1, t2, a7
                  andi         a2, t1, -1433
                  xori         s11, a4, -1889
1656:             srl          a4, s2, s11
1657:             sltiu        s2, tp, 1483
                  slti         a6, s2, 546
                  sra          s5, zero, s10
                  ori          tp, s5, 1800
                  lui          t5, 850734
                  ori          s0, s5, -508
                  add          ra, s8, t3
                  sltiu        a1, sp, -691
                  add          t6, ra, t2
                  slli         t5, s6, 25
                  srl          a4, a4, s2
                  srli         a3, s2, 8
                  or           t2, tp, t6
                  xori         s9, t6, 557
                  xori         s6, s6, 1864
                  add          a1, s11, s6
                  sll          s2, s10, s2
                  bne          a6, s1, 1686f
                  or           sp, gp, t1
                  bne          ra, a2, 1682f
                  sra          zero, s10, a3
                  srli         t1, tp, 2
                  sll          s2, t0, t0
                  srl          t5, t4, s11
                  slti         zero, gp, 478
1682:             xor          s6, t4, a0
                  sltu         s5, s2, a6
                  srl          s8, sp, a0
                  bge          s7, a2, 1692f
1686:             blt          s3, ra, 1700f
                  slli         a4, gp, 13
                  beq          a7, s7, 1708f
                  blt          gp, s3, 1694f
                  addi         s7, ra, -1183
                  andi         t1, a0, 499
1692:             bltu         s11, a5, 1705f
                  srli         zero, t5, 23
1694:             srai         a7, t5, 17
                  bge          a0, s5, 1697f
                  or           s2, a3, a7
1697:             sltu         t5, t3, s10
                  bgeu         a2, t5, 1711f
                  lui          gp, 77548
1700:             slli         s7, sp, 21
                  srl          a6, a0, s4
                  addi         s4, t3, -738
                  blt          t5, a2, 1714f
                  bgeu         t4, s7, 1719f
1705:             and          a6, t5, s3
                  sra          t5, s1, t6
                  bne          sp, s4, 1714f
1708:             slti         s9, t6, -1401
                  lui          t5, 886761
                  srl          t4, ra, a4
1711:             sltu         a6, a2, a6
                  sll          a6, a3, s1
                  lui          gp, 365266
1714:             andi         s11, s0, -1632
                  or           s2, s2, sp
                  xori         s3, s6, 608
                  and          a4, a7, ra
                  sub          a4, gp, sp
1719:             or           ra, a6, t5
                  or           s0, t0, gp
                  bge          a4, t3, 1731f
                  and          a4, t5, tp
                  andi         s11, s2, 185
                  srai         ra, t2, 6
                  and          sp, t6, s2
                  bge          a3, zero, 1730f
                  bltu         s2, t6, 1729f
                  and          s11, s11, s0
1729:             blt          t3, tp, 1731f
1730:             blt          t2, tp, 1731f
1731:             nop
                  and          a5, tp, gp
                  sra          tp, a4, s4
                  ori          a2, t5, 399
                  lw           ra, 4(s10)
                  sll          s7, a5, a6
                  auipc        s4, 780321
                  slt          t4, a0, ra
                  addi         s10, s10, 12
                  sra          sp, a3, sp
                  sltiu        t6, s9, -2037
                  slti         s11, s1, 180
2349:             addi x17, x1, 1
2349:             jalr x17, x17, 0
sub_6:            sub          s0, tp, a5
                  xori         a1, t3, 1760
                  srli         a2, a3, 12
                  bne          s1, t6, sub_6_stack_p
sub_6_stack_p:    addi         s10, s10, -52
                  ori          tp, a0, 932
                  lui          tp, 103466
                  sll          s6, a5, s4
                  sw           ra, 4(s10)
                  lui          a4, 26823
                  slli         a5, t5, 16
                  bgeu         t6, s7, 10f
                  or           s3, a0, t5
                  bgeu         gp, s6, 10f
                  addi         t6, s4, 1066
                  bne          s4, a4, 9f
                  sra          a3, s4, s5
                  add          t1, t6, t5
                  sltu         sp, t5, a5
                  and          a6, t0, s10
9:                or           t6, s10, s0
10:               or           t1, a5, s5
                  srai         a6, s9, 10
                  ori          a6, s8, -1846
                  lw           ra, 4(s10)
                  slti         a2, s10, 88
                  addi         s10, s10, 52
                  or           t4, a1, zero
28:               addi x1, x1, 1
28:               jalr x1, x1, 0
sub_9:            srl          a6, s3, s1
                  addi         a2, s1, 999
                  bgeu         s10, s4, sub_9_stack_p
                  sll          s0, a7, s3
sub_9_stack_p:    addi         s10, s10, -40
                  sw           ra, 4(s10)
                  or           t6, t4, s4
                  srai         s1, t6, 20
                  srl          a2, s10, s2
                  la           sp, region_0+1615 #start riscv_load_store_rand_instr_stream_0
                  sra          tp, s8, s7
                  lb           t2, -46(sp)
                  xor          s6, a5, a5
                  sw           t4, 29(sp)
                  srl          a5, tp, t4
                  lh           t2, 1(sp)
                  sb           s11, -44(sp)
                  and          a3, t0, a6
                  sra          t4, a4, s6
                  lb           gp, 16(sp)
                  or           s1, s9, s9
                  addi         s6, a6, 1790
                  lbu          t5, -29(sp)
                  srli         s8, a1, 27
                  slti         a5, a4, 268
                  sltu         s4, t0, a7
                  and          a3, zero, t2
                  sll          t1, s6, zero
                  sb           t4, 21(sp)
                  sb           a5, 32(sp)
                  ori          zero, s9, 1497
                  sb           s10, 2(sp)
                  and          a1, s7, s11
                  lb           s3, -37(sp)
                  andi         s6, a2, -2030
                  lui          t4, 398987
                  sll          ra, s6, t6
                  lw           zero, 9(sp)
                  lb           s3, 26(sp)
                  or           a2, zero, zero
                  lb           a1, 19(sp)
                  slli         a3, a6, 22
                  lhu          s6, 5(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+580 #start riscv_load_store_rand_instr_stream_4
                  sb           t0, -34(sp)
                  xor          s6, a0, a6
                  lh           s5, -188(sp)
                  sb           s11, -25(sp)
                  lh           a1, -26(sp)
                  xori         s6, s0, 1457
                  lb           t5, -43(sp)
                  slt          t1, a2, s10
                  xor          s6, a5, s11
                  lb           a5, 70(sp)
                  lb           t4, -191(sp)
                  auipc        tp, 723545
                  srl          s8, s10, tp
                  sh           s7, -26(sp)
                  add          t1, t6, t6
                  sra          a7, a6, a3
                  andi         a7, t3, -1065
                  slti         t6, t1, -274
                  lbu          a0, 29(sp)
                  srl          zero, s5, ra
                  nop
                  sb           s11, -252(sp)
                  or           a6, s3, s3
                  sltu         s4, s6, sp
                  lb           s4, -23(sp)
                  lhu          zero, 4(sp)
                  sb           s2, -252(sp)
                  srl          t4, a5, s6
                  srai         s3, t3, 25
                  xor          t5, s10, s6
                  slt          a7, s10, a4
                  sb           s8, -38(sp)
                  lw           ra, 32(sp)
                  sb           t1, 73(sp)
                  and          s4, t3, s2
                  slt          s5, sp, a2
                  lb           s1, -235(sp)
                  sb           s9, 99(sp)
                  slli         gp, t2, 22
                  lhu          a6, -68(sp)
                  lbu          s6, -95(sp)
                  sb           t0, 252(sp)
                  andi         t5, s0, -960
                  lb           gp, 201(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+460 #start riscv_load_store_rand_instr_stream_2
                  sb           ra, -147(sp)
                  slti         t4, s10, 703
                  lbu          t6, -34(sp)
                  lbu          a4, -51(sp)
                  sb           a6, -32(sp)
                  sub          s7, tp, a6
                  lb           s7, 15(sp)
                  lb           a6, 158(sp)
                  add          tp, s8, s10
                  lui          s11, 1047599
                  xori         t5, s4, 1818
                  lb           s6, -239(sp)
                  sh           s9, -42(sp)
                  xor          s7, s11, ra
                  lui          s4, 156190
                  lh           a7, 76(sp)
                  lbu          t4, -54(sp)
                  sh           t5, -12(sp)
                  sb           a6, 23(sp)
                  srli         zero, a3, 12
                  sb           t5, 78(sp)
                  lbu          gp, 181(sp)
                  lbu          a7, 250(sp)
                  lbu          t5, -205(sp)
                  sb           t1, 111(sp)
                  srl          a6, s7, s6
                  and          t5, s7, a4
                  sh           s4, -122(sp)
                  ori          a7, s7, 1532
                  lb           s3, 163(sp)
                  sh           t1, -150(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+725 #start riscv_load_store_rand_instr_stream_3
                  sltu         s2, a2, zero
                  lbu          gp, -190(sp)
                  lbu          zero, 55(sp)
                  lbu          s6, 231(sp)
                  lw           tp, 127(sp)
                  sub          s2, a4, sp
                  andi         t2, a2, 1190
                  srl          t4, t4, t2
                  sh           s3, -35(sp)
                  sb           s3, 128(sp)
                  lb           a7, 218(sp)
                  lbu          s1, 205(sp)
                  and          a1, s11, s2
                  xori         ra, t0, -877
                  sb           s2, -124(sp)
                  sb           a7, -127(sp)
                  lh           tp, -51(sp)
                  xori         a0, a4, -661
                  lhu          s7, -153(sp)
                  srli         s1, a7, 16
                  lh           s1, -131(sp)
                  add          a0, s7, tp
                  lbu          s5, 20(sp)
                  sll          t5, s4, s1
                  sh           a7, -239(sp)
                  lbu          t6, 166(sp)
                  xor          s6, a3, s11
                  add          a2, s3, t2
                  lbu          a1, -240(sp)
                  lh           t6, -143(sp)
                  lb           s11, -93(sp)
                  lbu          tp, -190(sp)
                  lui          t4, 681904
                  sb           t4, 108(sp)
                  sb           ra, -22(sp)
                  sb           gp, 63(sp)
                  lb           zero, -248(sp)
                  add          t1, s8, a0
                  sltu         ra, s6, s9
                  lb           a2, 132(sp)
                  sb           s6, 124(sp)
                  lb           t2, 103(sp) #end riscv_load_store_rand_instr_stream_3
                  sltu         zero, t3, t3
                  sltu         a7, a5, s10
                  sll          s2, zero, s0
                  sub          s9, s1, t0
                  xori         s0, s9, -1397
                  auipc        a7, 528275
                  bne          s2, gp, 21f
                  or           s7, a5, t4
                  bgeu         gp, s11, 14f
                  add          a6, s9, s6
                  sub          zero, a0, a1
                  srl          t5, s10, s3
                  or           s9, t0, gp
                  and          s1, a3, s7
14:               xor          a1, s8, a5
                  xor          s1, a4, t4
                  slli         s9, s9, 16
                  bge          t1, a4, 23f
                  and          t4, a2, t0
                  srli         ra, a5, 10
                  srai         t4, s6, 17
21:               add          ra, a1, t2
                  andi         a0, a0, -621
23:               srl          sp, t0, gp
                  la           sp, region_1+545 #start riscv_load_store_rand_instr_stream_1
                  sh           s5, -179(sp)
                  sb           gp, 306(sp)
                  lb           a3, 320(sp)
                  or           a4, a0, sp
                  slt          s9, s7, s3
                  slti         s7, a3, -1514
                  xor          s9, s11, t3
                  lbu          a4, 639(sp)
                  lbu          a7, 858(sp)
                  sb           s9, -68(sp)
                  sb           a2, -408(sp)
                  lb           t2, -488(sp)
                  andi         t4, s2, -117
                  srl          s3, a4, s9
                  sb           gp, 1452(sp)
                  lui          s2, 428231
                  sb           a0, 446(sp)
                  sb           t1, -114(sp)
                  auipc        a4, 72822
                  lbu          s0, 370(sp)
                  lb           s0, 56(sp)
                  andi         tp, a0, 1300
                  lbu          s0, -300(sp)
                  sb           ra, -106(sp)
                  sll          a4, a3, s1
                  lbu          s3, 830(sp)
                  lb           t6, 714(sp)
                  sltu         t2, s7, t1
                  ori          s6, s11, 1856
                  lb           t2, 913(sp)
                  and          t6, a2, s6
                  srai         t5, a4, 21
                  slli         s1, s10, 12
                  lbu          s1, -18(sp) #end riscv_load_store_rand_instr_stream_1
                  sub          s5, s1, t3
                  srli         s2, t6, 17
                  addi         s11, s1, -1410
                  or           s2, t3, s5
                  bltu         s0, s0, 46f
                  sll          a0, gp, s7
                  beq          t2, t6, 47f
                  slti         s11, s6, 806
                  bne          s0, t4, 34f
                  slli         gp, t4, 19
34:               lui          a4, 989332
                  bge          a0, s1, 54f
                  bgeu         s2, s10, 39f
                  bltu         sp, s3, 51f
                  bgeu         gp, s0, 43f
39:               sll          a4, a3, s10
                  sltiu        s6, s9, -618
                  bne          a4, s9, 59f
                  auipc        a0, 879099
43:               srli         a3, s4, 28
                  sltu         t1, a4, t2
                  bgeu         t5, s6, 52f
46:               srl          s2, ra, s11
47:               lui          a2, 1002391
                  sra          a0, s2, a6
                  sll          a3, t0, a2
                  sltiu        s6, t4, 1579
51:               add          a4, a7, t5
52:               sra          s9, zero, s3
                  slli         gp, s6, 15
54:               xori         t2, a4, 275
                  xori         t1, a1, 1750
                  blt          t3, s4, 76f
                  sub          s3, s8, zero
                  sub          s9, s4, s4
59:               srli         t2, s4, 23
                  slli         a0, s9, 21
                  srli         a2, ra, 24
                  xor          a0, t2, zero
                  and          s2, a4, t3
                  lui          zero, 103736
                  sub          a5, t0, s7
                  nop
                  slli         s3, s10, 11
                  xori         t5, t4, -1760
                  ori          a7, ra, 1195
                  bge          a1, s6, 78f
                  sub          t6, t5, a0
                  sltiu        t5, a3, -1222
                  or           a7, s9, s9
                  xor          s8, t2, a6
                  slt          a7, s9, a7
76:               sra          s7, a2, t4
                  auipc        s5, 187733
78:               and          s5, t3, s10
                  xori         t2, t2, -2036
                  addi         a7, s2, -7
                  slli         t2, a7, 6
                  lui          s11, 176045
                  bltu         s0, s10, 86f
                  beq          a7, a5, 102f
                  bne          t0, s11, 89f
86:               auipc        a5, 460193
                  slli         s0, t5, 2
                  srai         sp, s6, 27
89:               or           gp, zero, s6
                  slt          s11, t6, a4
                  bge          t3, s4, 104f
                  beq          tp, tp, 98f
                  addi         s5, s2, -1764
                  ori          a0, s2, -765
                  andi         a1, s1, -1222
                  srai         s9, s4, 31
                  bne          s11, a4, 110f
98:               blt          s4, a5, 117f
                  auipc        t6, 877805
                  sra          a2, a0, zero
                  bge          t1, s8, 109f
102:              or           a1, ra, t1
                  bltu         ra, s3, 122f
104:              bgeu         a1, a5, 118f
                  add          s5, t2, sp
                  sll          a3, s5, t3
                  slli         t2, s11, 19
                  bne          gp, s8, 123f
109:              xor          s3, tp, t2
110:              sltiu        a3, s10, 414
                  slli         s3, t4, 21
                  sltu         ra, t2, s5
                  add          s2, s10, s4
                  sll          a7, s0, zero
                  sub          s2, a1, tp
                  bge          a3, s6, 129f
117:              sra          t2, tp, a3
118:              sra          tp, s2, t6
                  slli         a5, s4, 30
                  lui          t1, 958703
                  beq          a6, s0, 135f
122:              srli         sp, a7, 20
123:              sra          s6, a2, a4
                  srli         a5, a6, 15
                  sub          t1, t3, a0
                  sll          sp, a1, a0
                  sltiu        t2, s6, 205
                  bltu         s3, a2, 142f
129:              lui          sp, 607655
                  xor          zero, ra, s9
                  addi         s8, s5, -293
                  sltu         a6, zero, t6
                  sltiu        s7, t3, -262
                  slli         s4, a6, 16
135:              add          s5, a1, zero
                  bltu         a6, s1, 151f
                  srai         s11, s4, 0
                  ori          a6, s10, 1291
                  bltu         t4, tp, 145f
                  beq          a2, t2, 147f
                  blt          s0, s1, 147f
142:              xor          a5, s5, s5
                  nop
                  blt          s9, zero, 163f
145:              beq          t3, t6, 159f
                  bltu         s9, a6, 150f
147:              bge          s2, s11, 153f
                  and          ra, t1, s3
                  bge          s10, a3, 162f
150:              add          zero, zero, a7
151:              nop
                  or           t2, s3, t3
153:              xor          a2, a6, a6
                  blt          a5, tp, 159f
                  bge          a0, t3, 174f
                  lui          t6, 954342
                  or           s2, a1, s6
                  or           a3, s2, s2
159:              sra          t2, t2, s8
                  add          s11, a5, s7
                  xori         s0, t2, 1861
162:              xor          a3, a3, a2
163:              or           zero, a3, t1
                  or           s0, zero, tp
                  nop
                  sll          s1, s1, sp
                  nop
                  srl          a5, t1, s4
                  slti         s2, t3, -667
                  sub          gp, a5, s9
                  bltu         s1, a2, 179f
                  slli         s11, a0, 5
                  nop
174:              auipc        gp, 734300
                  slti         s7, s2, -913
                  addi         a2, s10, 492
                  bltu         a1, t0, 180f
                  lui          tp, 1024944
179:              bge          a7, zero, 185f
180:              beq          s6, a4, 195f
                  lui          t5, 697357
                  ori          s2, s11, 696
                  sltu         tp, a4, s10
                  nop
185:              slti         sp, a6, 1599
                  slli         s7, t0, 9
                  sll          s11, s7, s8
                  lui          s4, 510942
                  and          s5, a6, t1
                  slt          s2, s1, gp
                  bge          s2, a6, 211f
                  bge          s9, a3, 211f
                  slti         s6, a0, 1779
                  bne          s1, tp, 197f
195:              bgeu         s5, a5, 208f
                  add          t6, t3, s7
197:              xori         a6, a4, -1749
                  xori         ra, s11, 1005
                  slti         a5, ra, 1123
                  addi         s0, s5, 1793
                  beq          gp, s1, 214f
                  add          s1, t6, t5
                  xori         s9, a3, -1271
                  xor          a2, s8, ra
                  bgeu         s7, t0, 207f
                  slli         t5, tp, 29
207:              slt          tp, s6, s11
208:              auipc        s5, 1014468
                  xori         a1, s3, 1274
                  sltu         zero, t4, s10
211:              add          a0, zero, s1
                  add          t4, s4, s7
                  xor          s9, s3, a5
214:              slli         ra, sp, 1
                  sltu         s0, a4, s8
                  addi         zero, t2, 200
                  xor          s8, a3, s3
                  srl          zero, s0, sp
                  sltiu        s9, s0, -332
                  blt          tp, a5, 234f
                  bltu         a5, s2, 227f
                  bgeu         t6, s11, 230f
                  sub          a3, s5, s11
                  sltiu        s7, s10, 1252
                  add          a2, s7, s0
                  or           gp, s6, a2
227:              srli         t4, a4, 7
                  sra          s4, s5, t4
                  sll          s7, gp, s2
230:              slti         a6, s11, -296
                  xori         t6, s9, -893
                  sra          t6, s9, a3
                  bgeu         a7, t1, 251f
234:              and          s8, s6, a4
                  and          s4, zero, s6
                  slli         ra, s11, 10
                  sll          a2, ra, a2
                  srl          s4, s8, s0
                  sub          s7, t4, a2
                  add          a7, a3, a6
                  slli         s3, t2, 14
                  slli         t1, s3, 28
                  sltu         t5, a0, s4
                  xori         s3, ra, -1424
                  xor          a6, t6, s2
                  slli         sp, s0, 11
                  ori          a2, s9, 770
                  xori         a3, t4, -1425
                  add          t6, s4, a3
                  sltu         s5, sp, a7
251:              srai         ra, ra, 14
                  and          a7, t4, a7
                  beq          tp, s1, 270f
                  andi         s5, sp, 434
                  bge          s2, a0, 269f
                  nop
                  bgeu         t1, a6, 275f
                  sltiu        s2, s4, 1772
                  sub          ra, sp, s2
                  slli         t1, ra, 10
                  andi         s1, a0, 110
                  sub          s3, s8, a5
                  sub          ra, s1, s8
                  ori          s5, s11, 1716
                  or           t5, s3, gp
                  blt          s3, a0, 281f
                  xor          s3, gp, s7
                  or           t6, s8, t6
269:              blt          a5, s3, 284f
270:              and          s8, s2, t5
                  srl          a5, ra, gp
                  srai         ra, s10, 1
                  slt          s6, a7, a6
                  bne          t0, s2, 292f
275:              slti         t1, sp, 937
                  srl          s3, t0, a1
                  add          tp, t1, a7
                  sll          a3, s8, s9
                  srai         s7, a2, 6
                  sltu         t5, t4, s11
281:              sub          s6, s5, s1
                  slli         zero, s7, 2
                  auipc        s7, 99394
284:              srl          a7, t0, s0
                  beq          t1, a3, 299f
                  sra          t6, ra, tp
                  lui          s5, 984516
                  xor          t1, a4, s10
                  lui          ra, 73787
                  add          a2, s0, a3
                  andi         a1, a3, -1092
292:              auipc        s2, 410220
                  blt          a1, s2, 308f
                  addi         a7, s1, 982
                  slt          s5, a5, s2
                  and          a1, sp, sp
                  nop
                  lui          a7, 954472
299:              bgeu         s0, s5, 304f
                  sltu         a7, a4, a6
                  srli         a1, t3, 20
                  srl          s1, s8, a7
                  auipc        sp, 875527
304:              xori         zero, a4, -1990
                  addi         s2, s0, -199
                  srli         tp, s9, 14
                  srl          tp, tp, gp
308:              sltiu        t1, s3, 52
                  lui          a1, 299322
                  xor          a0, t4, t0
                  addi         s11, s7, -1056
                  blt          zero, t1, 326f
                  srli         sp, s11, 16
                  lui          a7, 335723
                  addi         t2, s2, 946
                  slt          gp, s6, t6
                  bgeu         t1, t1, 332f
                  nop
                  srli         gp, s4, 2
                  sra          t4, t4, s5
                  or           s2, s8, t0
                  beq          a5, s11, 335f
                  andi         s6, s4, 821
                  add          a4, t6, t4
                  srai         t5, ra, 11
326:              auipc        a2, 38263
                  bge          s7, s1, 333f
                  srli         a1, gp, 3
                  lui          s2, 411220
                  slti         s7, s0, -1692
                  slti         s0, s5, -81
332:              or           s1, tp, t0
333:              ori          s2, s7, 1245
                  xor          a7, a4, s8
335:              srli         a2, s11, 27
                  sltiu        a2, tp, 1902
                  bge          t2, t3, 343f
                  ori          a3, tp, 18
                  srli         s0, t0, 23
                  addi         s4, a5, 205
                  slt          s6, a7, s0
                  andi         s8, s5, -139
343:              ori          tp, t2, 334
                  and          s8, s8, s7
                  bne          a6, t4, 348f
                  bne          s3, a3, 353f
                  blt          t5, a2, 365f
348:              sltiu        gp, s3, 1428
                  sub          s0, t1, a4
                  and          s3, s4, t5
                  addi         tp, t6, -422
                  ori          ra, tp, -495
353:              andi         t6, t2, -500
                  xori         t5, a7, -259
                  bne          t5, a1, 363f
                  andi         ra, a6, 534
                  and          s11, s3, s10
                  blt          s8, t5, 372f
                  beq          a5, a5, 378f
                  srai         s0, s0, 0
                  bge          s4, s7, 364f
                  or           tp, t2, sp
363:              xori         s6, s5, 645
364:              or           t2, a0, s2
365:              nop
                  nop
                  or           s4, gp, s1
                  srli         a5, s4, 9
                  srli         zero, s11, 29
                  auipc        a7, 933613
                  ori          s4, t2, 1561
372:              or           a3, a7, s2
                  srl          s8, a3, s11
                  xori         t2, s3, -418
                  or           s1, t1, s9
                  srai         zero, s11, 8
                  add          s11, a5, s10
378:              bgeu         tp, s3, 391f
                  auipc        s4, 417765
                  and          a6, a4, s5
                  xori         s7, a1, 1761
                  bltu         t0, s6, 401f
                  slli         s1, t1, 29
                  slli         t2, s6, 17
                  slli         a6, t2, 5
                  srai         s3, tp, 0
                  slli         t4, s3, 10
                  xor          s2, s0, s9
                  sub          a6, s2, a6
                  slt          s7, tp, s8
391:              srai         t5, t1, 17
                  xori         t1, ra, 952
                  sra          s4, t0, gp
                  lui          sp, 473726
                  bgeu         gp, gp, 415f
                  xor          ra, s11, s0
                  beq          s5, t4, 412f
                  nop
                  bge          zero, a2, 407f
                  xori         s5, tp, 1377
401:              auipc        a5, 634448
                  blt          s2, a0, 420f
                  nop
                  xori         s4, t6, -1515
                  ori          s1, a1, 101
                  ori          s3, s9, 109
407:              sra          t4, a2, a1
                  or           sp, tp, s4
                  sub          a2, a0, a7
                  and          s6, s8, a5
                  srli         s9, t2, 26
412:              add          s3, a3, t6
                  slti         s6, s7, -1606
                  lui          s9, 548942
415:              lui          s6, 432688
                  srai         s0, s10, 28
                  bge          s3, a2, 431f
                  andi         t2, tp, 1924
                  andi         a1, a3, 1586
420:              lui          s0, 956985
                  sll          s5, s10, t2
                  slli         a0, t0, 27
                  bltu         s5, a3, 441f
                  sltu         s1, s3, s1
                  lui          s7, 707191
                  bne          a0, s8, 428f
                  add          zero, s1, s4
428:              blt          tp, t0, 442f
                  and          a2, s7, t6
                  beq          a3, t3, 434f
431:              bltu         s5, tp, 448f
                  xori         t6, a2, 962
                  add          a3, a2, a4
434:              slli         s11, a5, 16
                  srai         t1, s6, 1
                  srli         s6, tp, 15
                  add          tp, t3, s6
                  add          a2, s1, s3
                  bge          a0, s4, 445f
                  bltu         sp, t1, 446f
441:              lui          s6, 744526
442:              slt          a1, t3, t2
                  slli         a1, a4, 17
                  sll          t1, gp, a6
445:              andi         gp, a1, 2045
446:              nop
                  add          s5, t5, s7
448:              beq          s10, s4, 461f
                  slti         s1, tp, -494
                  sltu         s9, s11, t2
                  or           a3, a2, zero
                  xor          t5, t0, t1
                  ori          a2, s1, 955
                  andi         s3, t2, 98
                  bge          s5, gp, 474f
                  beq          a7, a7, 470f
                  nop
                  and          s2, a3, s6
                  lui          tp, 369727
                  srli         t6, a7, 12
461:              xori         t1, s6, 577
                  srl          gp, s1, gp
                  blt          a1, a4, 466f
                  auipc        sp, 926706
                  xor          tp, ra, sp
466:              srai         s3, s0, 23
                  slli         a3, s1, 9
                  beq          a7, a4, 474f
                  ori          a2, t0, 423
470:              slti         s2, a0, 1290
                  srai         s7, t2, 24
                  and          t5, s8, a4
                  sll          a6, a7, s1
474:              sll          s1, tp, a1
                  blt          t1, zero, 493f
                  ori          s6, s10, 661
                  sub          t5, a3, t1
                  sub          s1, t5, s6
                  bge          sp, t1, 492f
                  nop
                  auipc        ra, 691848
                  bgeu         sp, a6, 496f
                  add          t2, a3, s10
                  sltiu        ra, s5, -1973
                  srli         a1, t6, 23
                  sltu         s3, a2, s9
                  and          a5, t1, s1
                  sra          sp, s10, t6
                  and          a0, t4, s2
                  addi         a0, s1, -1201
                  srai         s9, t4, 27
492:              sub          s7, a7, t2
493:              nop
                  or           s2, a5, t0
                  addi         a4, t3, -1258
496:              xor          zero, s10, a3
                  slti         zero, s9, -346
                  slli         zero, sp, 24
                  xor          s5, t4, t2
                  auipc        s5, 247749
                  slti         s4, tp, -1023
                  sub          s11, a3, a2
                  sll          t2, a7, a2
                  srl          a4, t3, a7
                  beq          s9, a0, 524f
                  addi         a0, t5, 709
                  beq          t1, t4, 525f
                  beq          a1, t4, 523f
                  srai         a1, s11, 15
                  sll          s2, s11, t3
                  xor          tp, a4, sp
                  ori          s11, s6, -1798
                  ori          tp, t4, 1021
                  srl          a6, s0, s10
                  bge          t4, a7, 532f
                  sra          s6, t0, s6
                  bgeu         s3, ra, 525f
                  sltu         t2, a0, a3
                  srai         a7, s8, 26
                  slt          s5, t4, t6
                  ori          s8, s8, -1864
                  blt          s3, t1, 535f
523:              auipc        a7, 119194
524:              xori         s5, s11, 959
525:              xori         s0, s0, -637
                  xor          ra, s0, s11
                  auipc        t5, 261958
                  lui          s6, 243107
                  sra          t2, s1, tp
                  sll          a0, s0, zero
                  sra          s9, t0, t1
532:              sll          t5, a2, s11
                  bge          a0, s3, 548f
                  slt          s8, s3, zero
535:              sra          s11, zero, a6
                  sltiu        s7, t4, 476
                  lui          s9, 831786
                  slt          s2, t0, s10
                  addi         t6, s9, 73
                  or           t6, t1, gp
                  slt          a1, a6, s0
                  srl          ra, a3, a0
                  beq          t6, a3, 561f
                  blt          a2, a1, 564f
                  lui          t1, 102309
                  srl          s7, s4, s8
                  sra          a1, s5, a1
548:              lui          t2, 221822
                  sra          s11, gp, s11
                  xor          zero, s11, t2
                  ori          s11, s6, 1179
                  auipc        t5, 146704
                  or           s4, a6, s6
                  srl          a4, a7, s0
                  beq          t5, t1, 557f
                  auipc        gp, 206263
557:              xori         a6, s11, 69
                  ori          a1, zero, -305
                  andi         a1, gp, 1560
                  sra          s9, s8, a0
561:              srai         a1, s8, 17
                  slti         s8, gp, 1179
                  srl          zero, gp, a7
564:              nop
                  and          t2, s11, s6
                  or           s0, t4, s10
                  srli         s11, s5, 4
                  slli         t6, s9, 6
                  bgeu         s6, s11, 588f
                  sra          s1, t3, a5
                  srl          s8, s8, s10
                  or           zero, s3, t1
                  auipc        t2, 1020391
                  slti         a2, s6, -747
                  slti         s6, a1, -589
                  sltu         s11, t5, a5
                  srl          gp, s2, a0
                  and          s8, tp, a6
                  sltiu        s11, t2, -515
                  srai         a0, gp, 2
                  addi         t6, tp, 1066
                  addi         s8, s10, -184
                  ori          sp, s10, -105
                  slli         t1, t0, 29
                  ori          a4, a0, 653
                  nop
                  sltiu        s3, s9, 673
588:              beq          s1, t5, 595f
                  nop
                  add          a4, t6, sp
                  srai         a3, s3, 23
                  bltu         s11, a4, 607f
                  srai         t4, s10, 18
                  sub          a5, a3, s5
595:              blt          t0, t1, 601f
                  bge          a0, gp, 600f
                  sub          a0, s8, ra
                  sltiu        t6, s2, 1017
                  sll          t2, s10, t2
600:              auipc        gp, 582005
601:              bge          t2, s7, 606f
                  srl          tp, gp, s4
                  bge          a6, s9, 609f
                  add          s4, s2, t6
                  beq          s7, s4, 613f
606:              add          t1, s0, tp
607:              srli         a1, t4, 8
                  sub          s8, a6, a3
609:              sll          t4, t1, a5
                  srli         sp, s11, 7
                  sltu         s3, t4, s0
                  sra          s2, a5, zero
613:              sub          s0, s5, s11
                  srai         a2, a0, 9
                  bgeu         sp, a0, 634f
                  srai         a2, a3, 4
                  slt          a5, s8, a4
                  slt          a7, gp, s3
                  auipc        s8, 906797
                  slt          a7, s3, t4
                  srli         s7, a3, 1
                  xor          s8, t5, zero
                  addi         t6, t3, -1115
                  nop
                  bne          t6, s6, 639f
                  bge          s8, s10, 639f
                  slli         ra, a6, 31
                  ori          a6, s11, -501
                  bne          s8, s0, 632f
                  addi         s0, s8, 1131
                  sll          gp, t0, a7
632:              bgeu         s2, a6, 638f
                  bltu         t4, a0, 647f
634:              sltiu        t4, gp, -1169
                  xori         gp, s9, -1175
                  or           a1, t4, sp
                  bne          s10, a6, 652f
638:              bge          a7, s0, 644f
639:              auipc        t1, 959500
                  sltiu        s0, t1, -552
                  beq          a1, a1, 646f
                  lui          ra, 1032415
                  sra          t5, t0, t6
644:              blt          a0, s2, 661f
                  bltu         a2, t3, 663f
646:              slli         ra, s1, 3
647:              xori         ra, s8, -1642
                  srli         s1, a2, 28
                  and          t1, tp, t2
                  sltu         sp, t1, sp
                  andi         s1, gp, 1782
652:              srli         s6, s5, 14
                  bltu         s9, a7, 667f
                  bge          a1, s10, 660f
                  srai         s1, t4, 6
                  sra          s9, s6, s4
                  nop
                  bgeu         t4, t3, 666f
                  andi         a4, t5, 1456
660:              srli         a6, t6, 27
661:              sub          zero, a2, s6
                  slt          s8, a0, a6
663:              blt          t0, t5, 681f
                  blt          s2, sp, 682f
                  srl          a0, t1, s3
666:              ori          s3, s7, -1843
667:              addi         t2, a5, -1935
                  beq          s1, s4, 687f
                  andi         t1, ra, 1536
                  srli         tp, s9, 27
                  or           s5, t2, sp
                  sub          s8, s4, s10
                  bltu         a3, a7, 686f
                  xori         gp, t3, 1552
                  and          s6, a0, s10
                  and          s5, s10, s6
                  srai         t4, t2, 15
                  slli         t5, a2, 28
                  add          a0, s10, s0
                  beq          s7, a4, 688f
681:              bne          a0, t0, 685f
682:              bne          s9, s3, 688f
                  srli         a5, a0, 13
                  lui          a1, 13916
685:              sltiu        a1, s3, 386
686:              sub          gp, zero, s10
687:              bgeu         t1, s8, 688f
688:              sra          t2, t3, s6
                  and          t2, s0, ra
                  lw           ra, 4(s10)
                  or           a5, t4, t5
                  sll          t5, ra, s1
                  srl          a7, tp, s8
                  or           gp, s9, s8
                  xor          s0, gp, a5
                  addi         s10, s10, 40
                  slli         s9, a5, 24
896:              addi x11, x1, 1
896:              jalr x11, x11, 0
sub_2:            bne          s1, t3, sub_2_stack_p
sub_2_stack_p:    addi         s10, s10, -64
                  sub          zero, s0, t4
                  srl          s6, sp, a2
                  or           s5, s3, s1
                  sra          a7, a2, sp
                  sra          a4, a1, a1
                  sw           ra, 4(s10)
                  sltu         a5, s5, s9
                  ori          a6, t6, 1518
                  and          tp, s7, s6
                  xori         s4, zero, -954
                  addi         s1, t4, 1289
                  bge          a6, s1, sub_2_j4 #branch to jump instr
                  sltu         a0, gp, t0
                  sll          s9, s0, s1
                  and          s2, s6, sp
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  xor          a3, t3, t3
                  bge          s10, a0, 17f
                  xori         a0, s6, 230
                  bltu         zero, s10, 6f
                  bge          zero, sp, 11f
                  beq          s10, t5, 20f
6:                xor          a6, s0, a4
                  sltu         t2, s6, s8
                  sra          a5, a7, s11
                  or           s2, s10, s0
                  xor          s6, a2, t5
11:               addi         s9, a6, 1286
                  xori         a7, s1, 1163
                  auipc        tp, 33918
                  or           s1, t6, s6
                  slt          a1, t4, ra
                  sll          a5, s8, a4
17:               srli         s11, t1, 29
                  srli         s5, a5, 20
                  srai         s8, s10, 17
20:               blt          s6, a2, 31f
                  bltu         s4, sp, 35f
                  bne          a7, gp, 35f
                  bne          ra, s0, 28f
                  auipc        t2, 420956
                  srai         s1, t6, 11
                  ori          ra, a0, 804
                  sll          s3, s1, a6
28:               xor          t2, a0, s5
                  addi         t1, s8, 735
                  blt          s7, gp, 35f
31:               srl          a1, t4, s6
                  andi         t4, sp, -1238
                  sll          s1, tp, s4
                  nop
35:               srl          s6, sp, a2
                  srai         gp, ra, 8
                  sra          s11, s10, ra
                  auipc        t4, 467468
                  or           a6, t0, t2
                  lw           ra, 4(s10)
                  slli         s6, s10, 2
                  srai         a7, t0, 15
                  slt          t2, a7, a4
                  addi         s2, tp, 188
                  addi         s10, s10, 64
                  srli         tp, a4, 21
65:               addi x18, x1, 1
65:               jalr x18, x18, 0
sub_7:            xor          t6, s2, a1
                  and          t2, t0, t0
                  xor          s6, s5, t0
                  beq          t0, tp, sub_7_stack_p
                  sub          a3, ra, a6
                  sltu         a4, a4, t2
                  sub          s4, a5, s7
                  andi         a3, s4, -784
sub_7_stack_p:    addi         s10, s10, -32
                  addi         a6, s6, 903
                  sw           ra, 4(s10)
                  ori          a2, a3, -1678
                  nop
                  sub          gp, t1, s9
                  srl          s5, t2, s3
                  lui          a5, 156683
                  xori         s3, s2, -1561
                  sltu         a2, s7, s2
                  xor          t4, a4, a2
                  bne          a7, sp, 22f
                  bgeu         t6, s11, 21f
                  bgeu         a5, s3, 27f
                  bge          a3, s9, 24f
                  sltu         a6, s2, t6
                  xor          s5, a1, ra
                  bgeu         zero, s8, 19f
                  srl          t5, a6, t1
                  addi         s8, tp, -914
                  srai         zero, a2, 10
                  beq          gp, gp, 21f
                  ori          s8, s9, 1264
                  nop
19:               lui          zero, 454515
                  sltu         t1, sp, s3
21:               sub          s0, s7, t0
22:               xor          a6, a3, s3
                  srl          tp, a6, s7
24:               add          a0, a3, s7
                  addi         zero, s8, 1274
                  xor          s5, t1, tp
27:               lui          s8, 633659
                  slt          ra, sp, a6
                  lw           ra, 4(s10)
                  xor          a7, s0, a5
                  addi         s7, tp, -1651
                  slti         a0, a6, -81
                  addi         s10, s10, 32
                  add          a4, ra, s4
48:               addi x9, x1, 0
48:               jalr x9, x9, 0
sub_5:            sll          t1, s1, sp
                  addi         s10, s10, -32
                  sw           ra, 4(s10)
                  sll          zero, s10, a0
                  addi         s9, a7, -180
                  xor          t2, a4, a3
                  andi         gp, gp, 381
                  ori          a2, s6, 1227
                  sll          t2, s11, a4
                  la           ra, region_0+1598 #start riscv_load_store_rand_instr_stream_1
                  sltiu        a2, t4, -1717
                  sb           a5, -221(ra)
                  auipc        a6, 584038
                  lb           s5, -335(ra)
                  add          s9, s8, t3
                  xori         a3, t6, 1215
                  slt          a1, s0, s10
                  sll          s0, t3, t0
                  sb           t0, 271(ra)
                  lb           a7, -501(ra)
                  lh           s11, -1252(ra)
                  lbu          s2, -420(ra)
                  lb           s5, -377(ra)
                  ori          zero, s4, -2002
                  sb           zero, -1129(ra)
                  lb           s9, -1422(ra)
                  and          s5, t5, t6
                  lb           s4, -1281(ra)
                  lbu          s11, -1023(ra)
                  and          s2, a6, t4
                  add          s7, a5, s1
                  srai         a0, a6, 15
                  sb           zero, 384(ra)
                  auipc        t2, 50760
                  sb           t0, -559(ra)
                  sub          tp, tp, a1
                  lbu          a0, 159(ra)
                  andi         s2, s7, 1878
                  sb           tp, -987(ra)
                  sb           a7, -1131(ra)
                  sltiu        s9, t1, -788
                  auipc        s9, 298719
                  lui          a4, 659107
                  sltu         zero, s3, t3
                  lui          s2, 834172
                  andi         s2, t6, 2023
                  lb           sp, -251(ra)
                  lhu          a3, -1430(ra)
                  lb           a0, -369(ra)
                  lw           s4, -1210(ra)
                  andi         s11, s8, -1281
                  auipc        s1, 623732
                  lb           s6, -969(ra)
                  sll          gp, s11, t3
                  or           a1, s6, s3
                  and          t4, zero, t0
                  sh           s0, 194(ra)
                  xori         a5, t2, -796
                  srl          t2, s6, s9
                  nop
                  sb           t2, -1529(ra)
                  auipc        a2, 517734
                  srl          gp, s8, t0
                  sb           t5, -1087(ra) #end riscv_load_store_rand_instr_stream_1
                  srl          s1, gp, t4
                  sra          s3, s8, a3
                  srai         t5, t4, 16
                  bltu         tp, s11, 23f
                  sltiu        a6, s11, 1397
                  blt          a1, tp, 19f
                  andi         s8, s5, -1426
                  bltu         gp, s3, 14f
                  sll          a7, zero, t5
                  bgeu         t1, s1, 28f
                  blt          s7, a7, 14f
                  ori          s11, s1, 187
                  srl          t6, t2, t4
                  bge          zero, s6, 16f
14:               blt          tp, a6, 34f
                  srl          s2, a2, a0
16:               bgeu         a2, s5, 18f
                  xor          t4, s4, tp
18:               srli         zero, t0, 10
19:               beq          a1, s3, 26f
                  xori         s0, a0, 1082
                  srai         s1, s7, 9
                  sltiu        a4, s11, -116
23:               sra          s2, s0, gp
                  sll          s4, a1, ra
                  add          s8, t2, s0
26:               sub          a6, a4, s9
                  sub          gp, s11, a3
28:               ori          sp, t2, 1387
                  xori         s11, a4, -1359
                  srli         a6, zero, 5
                  andi         s11, t1, 286
                  or           t6, ra, a7
                  addi         a3, s9, -1043
34:               ori          zero, t2, -1200
                  xori         a2, t3, -1967
                  nop
                  srli         s5, t1, 27
                  auipc        s11, 662736
                  sltu         s3, a5, t2
                  beq          t6, ra, 48f
                  andi         t5, s5, 1881
                  blt          s9, s4, 53f
                  sub          a7, s8, t4
                  and          s5, a7, a5
                  xori         a2, tp, 1704
                  srl          s7, s11, s5
                  andi         ra, a3, 551
48:               sub          a1, tp, s6
                  sra          tp, s10, a6
                  ori          ra, t5, 180
                  slt          ra, t1, a7
                  bltu         a3, s7, 57f
53:               sub          a1, a0, t1
                  sra          sp, gp, t6
                  or           s6, s5, s10
                  bge          t2, s8, 74f
57:               slli         t6, s11, 24
                  sltu         a3, s4, s1
                  sub          s0, t1, s11
                  beq          t4, t0, 65f
                  srl          s6, t1, a1
                  nop
                  sra          t6, s11, tp
                  lui          a5, 837414
65:               ori          a4, a5, -785
                  bne          s10, a1, 71f
                  srai         t5, a6, 15
                  andi         tp, gp, -602
                  nop
                  ori          a7, zero, 1296
71:               beq          a6, t0, 89f
                  slt          gp, s7, s1
                  xori         a2, s6, -1463
74:               beq          s0, ra, 75f
75:               slt          gp, s0, t5
                  sltiu        s7, a3, 1615
                  beq          a0, s9, 85f
                  srli         a5, s0, 5
                  auipc        s5, 759133
                  ori          t6, a1, -1797
                  auipc        s4, 778053
                  lui          s11, 468655
                  slt          sp, t3, t6
                  blt          a6, s7, 96f
85:               blt          a0, a7, 96f
                  slt          tp, t5, s9
                  bltu         s3, t3, 102f
                  srai         sp, zero, 3
89:               sltu         a7, t3, tp
                  bltu         gp, zero, 93f
                  srli         s5, t0, 30
                  and          t1, s9, s6
93:               ori          sp, sp, -826
                  sltu         s1, s0, t3
                  blt          s10, s9, 106f
96:               bltu         t3, gp, 99f
                  and          a0, t4, s11
                  srl          s3, t1, a4
99:               bne          t4, a5, 112f
                  bgeu         a4, gp, 107f
                  blt          s7, s0, 106f
102:              or           a2, s5, s0
                  srl          t6, a3, a4
                  slti         t2, t6, 694
                  bne          a4, a5, 117f
106:              lui          s3, 119644
107:              and          s0, a0, s4
                  blt          a7, s5, 113f
                  xori         s1, t0, 984
                  beq          ra, s11, 130f
                  sub          s2, t1, zero
112:              slti         t4, ra, 917
113:              srai         t6, s7, 20
                  sltiu        a6, gp, -1506
                  xor          a7, t1, s10
                  xor          a5, s11, s0
117:              srli         t1, zero, 10
                  sltu         a0, s3, a3
                  sll          s4, tp, t4
                  sra          t6, a1, a3
                  bne          s10, a4, 126f
                  srl          tp, zero, t5
                  sll          t1, t2, zero
                  or           ra, s4, gp
                  srli         sp, sp, 21
126:              sub          t5, a6, s11
                  andi         gp, t0, -1007
                  slti         sp, t2, -831
                  bge          t5, a6, 141f
130:              bgeu         t6, t0, 150f
                  xor          s2, t4, gp
                  srai         t4, t3, 2
                  sub          t1, s5, gp
                  andi         gp, s9, 1691
                  beq          a2, a5, 142f
                  sltu         s4, a2, s4
                  sub          s1, a7, t0
                  xor          s3, t6, t1
                  slli         a2, gp, 9
                  andi         a5, ra, -447
141:              slt          s4, t2, ra
142:              bltu         a0, a1, 145f
                  ori          a6, t2, 1999
                  bgeu         a7, a3, 155f
145:              nop
                  slti         s4, a7, -96
                  lui          a0, 661465
                  blt          s0, tp, 166f
                  srai         a2, a3, 11
150:              srli         a4, a6, 22
                  sll          a6, a1, a1
                  srli         sp, s4, 25
                  bne          a7, t6, 166f
                  srli         s11, a1, 28
155:              add          a5, s0, a3
                  slti         a6, t3, -648
                  slt          t4, s10, s3
                  addi         a6, s4, 1239
                  sll          t6, t0, tp
                  addi         s5, gp, 1988
                  andi         s5, zero, -1069
                  or           s6, t6, s6
                  and          t1, t0, gp
                  slti         a2, s9, -1950
                  nop
166:              andi         t6, a3, -1199
                  bne          t1, t1, 179f
                  bne          t0, ra, 186f
                  bltu         s10, s8, 172f
                  slli         a2, s8, 19
                  addi         a6, t3, -1754
172:              bltu         s3, t3, 177f
                  or           s3, tp, s0
                  srl          s7, s3, s4
                  nop
                  ori          s1, zero, -275
177:              slli         s3, a1, 6
                  nop
179:              add          s1, t2, s1
                  andi         t5, t1, -54
                  slli         a4, s6, 13
                  or           s8, a3, a5
                  beq          t1, a1, 197f
                  srai         sp, s9, 1
                  srli         t4, t2, 7
186:              sll          a7, ra, s8
                  blt          zero, s6, 194f
                  sltiu        s8, s7, -295
                  addi         a1, s10, -1096
                  sll          s0, zero, s7
                  srai         a7, a0, 2
                  slt          s9, t4, t2
                  addi         a7, gp, -21
194:              xor          s2, s4, s8
                  srai         a4, t4, 2
                  blt          s9, s8, 201f
197:              slli         zero, a7, 7
                  bgeu         t5, tp, 205f
                  and          sp, gp, zero
                  bge          a4, a3, 211f
201:              or           sp, s6, t5
                  bgeu         a6, t5, 210f
                  add          s9, a2, a2
                  ori          s8, s9, 1908
205:              bgeu         s2, s4, 220f
                  lui          s0, 350262
                  blt          a1, zero, 210f
                  srl          a2, zero, s4
                  slti         a2, s4, -344
210:              or           ra, s0, t2
211:              sltu         a7, s4, ra
                  sll          sp, s8, tp
                  nop
                  sltiu        s1, s9, 1955
                  sltiu        a6, t2, 795
                  sltiu        s2, s0, 1530
                  and          tp, tp, gp
                  nop
                  bltu         a5, a7, 230f
220:              blt          s11, a0, 224f
                  bne          t4, t1, 240f
                  bgeu         t6, s3, 230f
                  nop
224:              sll          t5, zero, s11
                  bge          s8, s6, 245f
                  auipc        a0, 162957
                  and          s3, s6, t3
                  slt          a7, a1, s4
                  srli         s2, a5, 7
230:              xor          a0, s5, s6
                  beq          tp, t0, 233f
                  la           sp, region_0+1967 #start riscv_load_store_rand_instr_stream_0
                  sltu         a1, s5, s5
                  sb           a4, 1(sp)
                  lw           t1, -11(sp)
                  srai         s2, s6, 14
                  slli         a5, tp, 8
                  xor          t1, s3, a5
                  sb           s3, -8(sp)
                  lb           s7, 6(sp)
                  lb           s6, -39(sp)
                  sb           a1, 14(sp)
                  lhu          a6, 31(sp)
                  addi         zero, s7, 1986
                  sb           s7, -64(sp)
                  lb           tp, -10(sp)
                  lbu          tp, 6(sp)
                  andi         a3, gp, -1412
                  auipc        t6, 663092
                  lb           t5, -3(sp)
                  ori          s7, a4, -1451
                  lb           a3, -58(sp)
                  lbu          s1, -2(sp)
                  sb           a3, -30(sp)
                  srai         t1, s9, 23
                  sh           s6, -47(sp)
                  sltu         t2, s2, a0
                  or           a2, a1, a6
                  lbu          a3, -1(sp)
                  sb           s7, 0(sp)
                  sll          a6, a2, a4
                  sh           s2, 11(sp)
                  srli         t6, s7, 29
                  lbu          a5, -44(sp)
                  sb           s10, -56(sp)
                  lhu          t5, -53(sp)
                  sb           zero, 0(sp)
                  lhu          zero, -5(sp)
                  sb           s6, -63(sp)
                  slti         a5, a5, -92
                  addi         t2, s11, 259
                  lb           a4, 32(sp)
                  sb           sp, -48(sp)
                  lb           tp, -31(sp)
                  lb           a7, 2(sp) #end riscv_load_store_rand_instr_stream_0
                  blt          gp, a4, 237f
233:              xori         a1, a4, 1017
                  sll          s5, a1, t3
                  bge          s0, a5, 255f
                  bltu         s11, gp, 241f
237:              xor          tp, s8, a4
                  and          a4, s0, tp
                  beq          t4, a7, 240f
240:              sll          s8, s9, s7
241:              slti         s8, s1, -1130
                  xor          tp, s2, s10
                  bge          s9, a7, 262f
                  slli         a7, a0, 3
245:              slti         s8, s7, 68
                  sll          a3, a6, a7
                  bgeu         s0, ra, 255f
                  beq          a7, a5, 253f
                  bgeu         a1, t5, 252f
                  bltu         tp, a3, 261f
                  slt          ra, a5, s4
252:              xor          t4, t1, s3
253:              auipc        t2, 96917
                  lui          a0, 407623
255:              slti         zero, a3, -949
                  ori          t1, s3, 490
                  add          t2, a1, t6
                  and          zero, s2, a1
                  srli         s6, s6, 19
                  xor          zero, sp, s9
261:              xori         gp, s9, -1807
262:              bltu         s0, a0, 274f
                  srl          a7, t1, a5
                  nop
                  slti         s5, s6, -331
                  sltu         s6, ra, t0
                  bne          t4, s8, 272f
                  or           t1, t1, s2
                  srl          a1, s0, s9
                  auipc        s2, 930612
                  auipc        gp, 844175
272:              and          a7, s1, a0
                  sltiu        s7, sp, -806
274:              beq          a3, s11, 288f
                  sll          a3, a4, s3
                  sub          s8, t6, t6
                  sll          t6, t6, a6
                  add          a1, s0, s7
                  bltu         t6, s10, 290f
                  xor          a1, a6, a1
                  beq          ra, s4, 283f
                  nop
283:              add          t1, zero, s0
                  and          a5, a5, s2
                  srli         s4, s7, 15
                  bne          t1, tp, 289f
                  addi         gp, s2, -759
288:              sltiu        s5, t1, -544
289:              sltu         a4, t3, s11
290:              sll          a1, a2, zero
                  nop
                  bltu         t1, s10, 296f
                  srl          a3, t3, a0
                  sltu         s3, s9, a0
                  ori          a2, a6, -218
296:              sll          a2, s11, t0
                  add          s4, s4, s10
                  bltu         t5, a3, 311f
                  xori         a4, s0, 432
                  addi         s8, a3, 1585
                  andi         a0, t5, -1236
                  sltiu        s0, s9, 1415
                  add          s9, a0, s8
                  ori          a1, s0, 881
                  sra          s3, s11, a0
                  xor          zero, s5, s2
                  addi         gp, a0, 1666
                  beq          s8, tp, 313f
                  sll          gp, a0, a5
                  sub          a2, t5, s1
311:              sra          s3, gp, a3
                  bne          a4, s4, 313f
313:              or           t1, sp, s7
                  addi         s3, tp, 768
                  ori          t4, zero, 748
                  lw           ra, 4(s10)
                  xor          a2, gp, t3
                  addi         s10, s10, 32
                  xor          t4, gp, s3
                  andi         s6, t3, -1415
                  ori          a3, t4, -1435
430:              addi x1, x1, 0
430:              jalr x1, x1, 0
sub_3:            ori          s1, s7, 1328
                  addi         s10, s10, -44
                  ori          s6, s7, -695
                  srli         t5, t4, 30
                  sw           ra, 4(s10)
                  andi         t5, ra, 957
                  xori         s9, a7, -1976
                  srai         s8, s2, 31
                  add          sp, s3, s2
                  sltu         t2, a7, s0
                  andi         t5, s7, 1211
                  ori          s4, ra, -1525
                  sra          sp, s10, a1
                  bltu         sp, s9, sub_3_j5 #branch to jump instr
                  lui          a5, 942939
                  sltu         a5, t6, a3
                  sra          zero, a6, zero
                  lui          gp, 1013429
                  ori          s0, s11, -1769
sub_3_j5:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  la           s1, sub_5
                  srai         a6, zero, 11
                  addi         s1, s1, -959
                  lui          t6, 735169
                  nop
                  slt          a6, s0, t0
                  bne          t3, ra, sub_3_j6 #branch to jump instr
                  or           a0, a3, gp
                  or           a6, t3, t3
sub_3_j6:         jalr         ra, s1, 960 #jump sub_3 -> sub_5
                  la           t1, sub_5
                  sltu         s7, s10, a6
                  xori         a7, t6, -415
                  andi         ra, s4, -492
                  addi         t1, t1, 167
                  slti         t2, s4, 744
                  and          s2, t0, s10
                  sll          s1, s3, a5
                  srai         ra, a0, 2
sub_3_j7:         jalr         ra, t1, -166 #jump sub_3 -> sub_5
                  bne          s6, ra, 9f
                  bltu         s7, s3, 9f
                  beq          t0, t4, 9f
                  nop
                  srl          s9, sp, s10
                  and          gp, s0, ra
                  lui          s3, 349369
                  sub          a2, sp, s6
                  bne          s1, s11, 9f
9:                nop
                  slt          t6, a3, s9
                  srli         t1, s2, 27
                  srl          s2, t2, a7
                  ori          zero, s11, 1668
                  lw           ra, 4(s10)
                  and          s4, t3, a2
                  addi         s10, s10, 44
                  xori         s2, s3, -1327
                  srl          s9, s10, s8
                  ori          s4, a5, -1462
                  andi         a6, s8, 355
                  lui          s4, 1000639
62:               addi x7, x1, 1
62:               jalr x7, x7, 0
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
.align           2
mtvec_handler:    
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x28, x26, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x14, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x14, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x14, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x14, x16, ecall_handler
                  li x16, 0x1
                  beq x14, x16, instr_fault_handler
                  li x16, 0x5
                  beq x14, x16, load_fault_handler
                  li x16, 0x7
                  beq x14, x16, store_fault_handler
                  li x16, 0xc
                  beq x14, x16, pt_fault_handler
                  li x16, 0xd
                  beq x14, x16, pt_fault_handler
                  li x16, 0xf
                  beq x14, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x26, x28, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x28, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x28, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x26, x28, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x26, x28, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x26, x28, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
