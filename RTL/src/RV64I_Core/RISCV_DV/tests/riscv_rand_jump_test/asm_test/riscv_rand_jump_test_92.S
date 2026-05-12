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
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
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
                  li x0, 0xfcee7d5c
                  li x1, 0xf3a22e28
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xd7bd89cf
                  li x5, 0x136e3d45
                  li x6, 0x9
                  li x7, 0x80000000
                  li x9, 0x0
                  li x10, 0xecab098e
                  li x11, 0xf771f17d
                  li x12, 0xfbc49468
                  li x13, 0xdd4f8f8a
                  li x14, 0x0
                  li x15, 0xd498ef95
                  li x16, 0x552ee24f
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0xde0bc47e
                  li x20, 0xf1a23bcc
                  li x21, 0xb712a5ab
                  li x22, 0x9
                  li x23, 0x97058c91
                  li x24, 0xf58f731e
                  li x25, 0xf5497ede
                  li x26, 0xf9101260
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0xf6db8acc
                  li x30, 0x0
                  la x8, user_stack_end
main:             la           s4, region_0+1342 #start riscv_load_store_rand_instr_stream_12
                  slt          t5, t1, s7
                  nop
                  lh           s2, 32(s4)
                  add          tp, s3, t2
                  srl          ra, s5, a7
                  srai         a2, s3, 26
                  srli         a5, a6, 23
                  auipc        tp, 686376
                  sra          s2, s10, s2
                  lbu          t2, -189(s4)
                  sra          a1, a0, a7
                  or           s3, a4, s10
                  sb           s7, -159(s4)
                  srai         s9, zero, 8
                  auipc        a7, 370630
                  srl          tp, s6, s2
                  lbu          a4, 187(s4)
                  xori         tp, a3, 1709
                  lbu          s1, 105(s4)
                  andi         gp, t0, -824
                  lbu          s11, 205(s4)
                  sb           s3, -191(s4)
                  srli         s7, s3, 12
                  sltu         s9, a1, a0
                  sh           t2, -202(s4)
                  sh           a5, -126(s4)
                  ori          s11, t3, -1114
                  sb           a0, 254(s4)
                  srl          a5, t5, t3
                  slli         ra, s11, 17
                  sb           a0, -69(s4)
                  auipc        t2, 735641
                  lb           s10, -11(s4)
                  lb           a1, 125(s4)
                  andi         gp, s0, -4
                  slti         a2, t4, -898
                  sb           a7, 71(s4)
                  add          a6, a2, t0
                  srli         s2, ra, 12
                  lbu          s6, 21(s4)
                  lbu          a3, -248(s4)
                  sb           t2, 81(s4)
                  xori         s5, t6, -1069
                  sb           a2, 49(s4)
                  srl          zero, s6, s9
                  slt          a1, s9, s11
                  addi         s9, s8, 501
                  auipc        a0, 1046780
                  sw           a5, 246(s4) #end riscv_load_store_rand_instr_stream_12
                  la           s6, region_0+798 #start riscv_load_store_rand_instr_stream_11
                  lbu          s8, 103(s6)
                  sb           a0, -43(s6)
                  sltiu        s11, a2, -826
                  sb           s7, -219(s6)
                  lb           s9, -35(s6)
                  lbu          a5, 71(s6)
                  sb           t0, 182(s6)
                  lbu          s10, 241(s6)
                  sw           s6, -170(s6)
                  add          t5, s0, s8
                  lb           gp, 96(s6)
                  slti         s1, t0, 510
                  ori          a4, s10, -779
                  lb           s9, -1(s6)
                  slt          s8, sp, s4
                  auipc        s7, 173821
                  addi         a5, s2, -779
                  addi         t5, a3, 1677
                  lb           a2, 126(s6)
                  sb           t2, -45(s6)
                  sltiu        ra, s4, -335
                  auipc        s8, 878320
                  sll          t2, s1, s11
                  sltu         tp, t3, s6
                  lb           a0, 231(s6)
                  sb           s1, 200(s6)
                  lhu          a4, -146(s6)
                  slli         s2, tp, 28
                  addi         s11, s9, -1544
                  lh           a2, -140(s6)
                  xor          s5, a1, s3
                  or           s7, a0, a2
                  lbu          zero, -124(s6) #end riscv_load_store_rand_instr_stream_11
                  la           a4, region_0+1988 #start riscv_load_store_rand_instr_stream_18
                  sub          sp, s1, s5
                  sb           a0, -39(a4)
                  xori         a1, t2, -87
                  lb           s6, -137(a4)
                  slli         s5, t5, 9
                  ori          s9, ra, -1175
                  slli         a2, a3, 17
                  lbu          a2, -110(a4)
                  sb           tp, -253(a4)
                  add          ra, a5, s1
                  lb           s1, -71(a4)
                  add          ra, s5, tp
                  sltu         t1, t6, t4
                  sub          a2, ra, s0
                  slti         a5, s8, -527
                  lhu          t5, -194(a4)
                  sra          s10, t0, s7
                  lbu          t1, -178(a4)
                  lbu          zero, -19(a4)
                  andi         t1, a6, -1905
                  lb           sp, -133(a4)
                  lhu          s1, -202(a4)
                  sra          t2, s2, a2
                  srl          zero, t2, s2
                  lbu          t5, -89(a4)
                  auipc        t1, 534101
                  xori         t0, t1, -592
                  lh           sp, -148(a4)
                  lb           zero, -48(a4)
                  add          tp, s1, t2
                  lbu          a3, -253(a4)
                  srli         a5, a4, 8
                  or           gp, a1, a4
                  lbu          a6, -125(a4)
                  srai         a1, a2, 31
                  lbu          s11, -142(a4)
                  srl          a3, a7, s11
                  addi         gp, t3, 886
                  slt          t5, t6, tp
                  or           t3, t2, a0
                  lb           t3, -73(a4)
                  lbu          a2, -102(a4)
                  sb           t1, -230(a4)
                  lh           t0, -106(a4)
                  lb           a7, -99(a4)
                  lbu          t1, -136(a4)
                  lbu          a1, 1(a4)
                  lw           gp, -12(a4)
                  andi         s5, s8, -1845
                  lhu          a6, -196(a4) #end riscv_load_store_rand_instr_stream_18
                  la           a4, region_0+213 #start riscv_load_store_rand_instr_stream_17
                  and          sp, s0, a0
                  sltu         t2, a4, t4
                  lbu          s1, 92(a4)
                  sb           s5, 216(a4)
                  sll          a2, ra, s7
                  sub          sp, t1, a0
                  add          a6, ra, t1
                  srli         s6, s6, 30
                  sll          t0, s6, t1
                  lh           s7, -177(a4)
                  sb           a0, 34(a4)
                  lw           zero, -17(a4)
                  or           t0, a6, t4
                  lhu          s1, -29(a4)
                  sb           s7, 88(a4)
                  sub          t3, s9, t0
                  and          s7, a4, s7
                  srli         tp, s11, 24
                  sll          s11, s0, s7
                  srli         s3, a1, 17
                  nop
                  srai         s10, s3, 4
                  lhu          s10, 173(a4)
                  lb           zero, 196(a4)
                  auipc        a6, 740957
                  srl          a0, a2, t3
                  sh           s8, 71(a4)
                  lbu          a0, -35(a4)
                  slti         t3, t1, -1881
                  slti         s5, t0, -1611
                  sb           sp, 190(a4)
                  lui          s1, 343448
                  lb           s1, -100(a4) #end riscv_load_store_rand_instr_stream_17
                  la           s1, region_0+118 #start riscv_load_store_rand_instr_stream_9
                  sb           a2, -49(s1)
                  addi         a5, tp, -1105
                  lb           sp, -61(s1)
                  sll          s5, a3, a2
                  lb           s7, -4(s1)
                  lb           tp, -12(s1)
                  lbu          t1, 15(s1)
                  andi         ra, s3, -1163
                  lbu          s9, -9(s1)
                  addi         tp, t5, 1939
                  lui          a7, 577452
                  lbu          a3, 53(s1)
                  slt          s11, a4, t2
                  andi         s10, s1, -1448
                  sltiu        s5, s1, 1754
                  srl          s11, s0, t1
                  lbu          tp, -26(s1)
                  xor          s11, s10, s2
                  sltiu        t5, s9, 1595
                  or           a3, t5, a6
                  slt          s10, t5, s4
                  lbu          s6, 27(s1)
                  nop
                  xori         s5, s5, -972
                  addi         a0, a7, 2045
                  ori          s6, a6, 306
                  auipc        s11, 1035793
                  srai         s6, s0, 7
                  xor          a0, s7, s1
                  lh           zero, 50(s1)
                  xor          gp, s11, a6
                  lb           a5, -20(s1)
                  sll          s11, s4, s7
                  lbu          s2, -24(s1)
                  lw           zero, 54(s1)
                  lh           gp, -44(s1)
                  xori         s8, gp, 1816
                  sltiu        a1, t3, 898
                  xor          ra, s3, s1
                  andi         a3, a4, 1513
                  ori          t2, a6, 1279
                  lb           a6, -37(s1) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+608 #start riscv_load_store_rand_instr_stream_10
                  lb           s9, 157(sp)
                  slti         ra, t2, 435
                  sw           s2, -124(sp)
                  lbu          a6, -155(sp)
                  srai         a5, s9, 31
                  lb           s5, -235(sp)
                  srl          s10, a3, ra
                  sra          s11, a6, s1
                  lb           a6, 172(sp)
                  sltu         t1, a5, gp
                  sb           s4, 231(sp)
                  sb           gp, 218(sp)
                  lbu          t1, 223(sp)
                  addi         s2, s1, -644
                  ori          s7, t5, 927
                  andi         a7, s10, -1680
                  lh           t5, 22(sp)
                  lui          ra, 247754
                  lb           t2, -37(sp)
                  sw           a1, 212(sp)
                  sb           t6, 160(sp)
                  srl          s8, s10, t3
                  sb           s6, 146(sp)
                  sb           s7, -249(sp)
                  sb           t3, 110(sp)
                  slti         s3, t5, -1339
                  lhu          t1, 256(sp)
                  and          s10, ra, s3
                  lb           t3, -153(sp)
                  or           s1, s8, s1
                  lui          a2, 763572
                  sb           s3, -73(sp)
                  sltu         s2, s0, zero
                  lhu          a7, -112(sp)
                  slli         t1, s11, 18
                  lb           a4, 143(sp)
                  lb           s6, -235(sp)
                  sb           s4, -111(sp)
                  xori         a2, a1, 1862
                  add          s5, a1, s0
                  or           a4, t1, a5
                  sra          s1, s9, ra
                  sltu         zero, s6, s6
                  lb           s6, -225(sp)
                  lh           t3, -20(sp) #end riscv_load_store_rand_instr_stream_10
                  la           s2, region_1+881 #start riscv_load_store_rand_instr_stream_0
                  xor          s11, t2, t2
                  auipc        a3, 422667
                  lh           t2, 1087(s2)
                  lbu          s4, 994(s2)
                  slti         s7, gp, 690
                  lh           zero, -211(s2)
                  and          a6, a0, gp
                  srai         s3, sp, 19
                  addi         a6, gp, -901
                  slt          t2, s8, s7
                  srai         s9, s11, 8
                  srl          a6, s0, s6
                  lbu          gp, 260(s2)
                  lh           tp, 55(s2)
                  sub          s4, t1, t5
                  sb           a0, -166(s2)
                  auipc        s11, 74658
                  sltiu        a0, t4, -10
                  addi         s3, s2, -269
                  andi         s5, s11, 1493
                  lb           s9, -130(s2)
                  lh           s11, -565(s2)
                  lb           s7, 1104(s2)
                  ori          tp, a2, -526
                  srai         s6, s5, 4
                  lb           zero, -134(s2)
                  lbu          a4, -638(s2)
                  add          s9, s3, a4
                  srai         tp, t1, 21
                  srl          gp, t0, s8
                  slli         a3, s0, 8
                  xor          s5, t0, a7
                  sub          a6, t1, s3
                  and          ra, t3, t6
                  lbu          s11, 416(s2)
                  add          s1, s8, s5
                  andi         ra, a6, 380
                  xori         t5, s8, 1397
                  lb           zero, 991(s2) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+1553 #start riscv_load_store_rand_instr_stream_1
                  lh           t2, -31(s3)
                  ori          zero, a4, -668
                  nop
                  lb           s1, 17(s3)
                  lui          s5, 378212
                  sh           a5, 15(s3)
                  sltu         s11, s8, t5
                  sh           s11, -43(s3)
                  nop
                  sltu         a1, a0, a4
                  srli         gp, s6, 5
                  lhu          a1, -51(s3)
                  lbu          zero, -26(s3)
                  sb           t5, -7(s3)
                  lbu          s5, -56(s3)
                  lb           a0, 24(s3)
                  sh           a1, -11(s3)
                  lb           zero, 42(s3)
                  andi         a0, a0, 986
                  nop
                  srai         t3, t3, 18
                  sb           s6, -10(s3)
                  add          a0, a3, a2
                  sltu         a6, s7, a5
                  lbu          a0, -7(s3)
                  lbu          a5, 42(s3)
                  lbu          ra, -34(s3)
                  auipc        ra, 551977
                  ori          s6, t1, 1564
                  andi         t3, a5, 1676
                  sb           t3, -52(s3)
                  lhu          s9, 7(s3)
                  sh           zero, -13(s3)
                  lb           sp, -9(s3)
                  sltiu        s9, s5, -1553
                  srai         t5, t4, 4
                  slli         s2, s11, 17
                  lui          t5, 540020
                  andi         s2, s1, -1318
                  lbu          t2, -60(s3)
                  lbu          a6, -59(s3) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1556 #start riscv_load_store_rand_instr_stream_13
                  sra          a1, t6, s0
                  or           a2, s5, a0
                  lb           ra, -59(sp)
                  lhu          a1, 30(sp)
                  slti         ra, a4, -1268
                  sra          a2, s10, t5
                  lb           s3, 16(sp)
                  sb           a3, -43(sp)
                  lhu          t5, 54(sp)
                  sb           t0, -57(sp)
                  sb           a0, 35(sp)
                  sh           s8, 46(sp)
                  xor          s2, s8, t4
                  lb           t3, -28(sp)
                  or           a3, s8, s1
                  sh           a4, -32(sp)
                  sh           s9, 4(sp)
                  lbu          s10, -41(sp)
                  sub          t1, ra, a4
                  lbu          s9, 11(sp)
                  xor          t3, t0, a6
                  sltiu        a3, t6, -1447
                  sb           sp, -30(sp)
                  lui          tp, 953464
                  sltu         gp, s11, t0
                  ori          t5, t2, -1144
                  sb           a2, 5(sp)
                  sb           a1, 27(sp)
                  sb           a3, 10(sp)
                  lb           s4, -17(sp)
                  sltu         s10, a3, s8
                  lhu          ra, 38(sp)
                  ori          a4, a2, 1498
                  lb           a6, -21(sp)
                  lhu          s8, -34(sp)
                  lb           a5, 64(sp)
                  lbu          t2, 10(sp)
                  lb           t1, 31(sp)
                  lbu          t5, -25(sp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+541 #start riscv_load_store_rand_instr_stream_14
                  srai         a7, zero, 10
                  or           gp, s7, s9
                  sltiu        a6, s8, 262
                  andi         s9, t5, -1915
                  andi         t1, a7, -1148
                  lb           s10, -174(sp)
                  sll          tp, t3, a3
                  xor          a4, a6, a2
                  lui          a7, 551314
                  sh           s11, -309(sp)
                  add          a1, s9, t6
                  add          t3, a4, a7
                  sb           ra, 3(sp)
                  srli         zero, s5, 28
                  nop
                  addi         s9, ra, -1404
                  sb           t6, 1441(sp)
                  sub          a2, s3, t4
                  ori          a6, s3, -34
                  or           s1, s0, sp
                  lbu          gp, -485(sp)
                  sra          s7, a5, t5
                  sh           t0, -87(sp)
                  lbu          t5, 1112(sp)
                  add          s7, s5, s7
                  sra          a3, t2, sp
                  slt          a7, a3, s2
                  lw           t5, 467(sp)
                  sra          a1, t0, t3
                  ori          a2, s10, 40
                  srl          s6, t0, s10
                  lbu          s8, 1432(sp)
                  nop
                  nop
                  sb           t2, 1185(sp)
                  addi         tp, a1, 1977
                  lh           a0, -151(sp)
                  lbu          t1, 744(sp) #end riscv_load_store_rand_instr_stream_14
                  la           s4, region_0+645 #start riscv_load_store_rand_instr_stream_8
                  lbu          a1, 213(s4)
                  lbu          s2, -2(s4)
                  sb           s6, -34(s4)
                  xor          s7, t5, s7
                  lb           s1, -138(s4)
                  lbu          s10, -181(s4)
                  lui          s8, 879457
                  sb           s11, 58(s4)
                  lbu          s8, 52(s4)
                  lhu          a6, 181(s4)
                  lw           a4, -49(s4)
                  and          t5, gp, a6
                  lb           s5, -130(s4)
                  lb           t5, 162(s4)
                  lb           ra, 89(s4)
                  xori         t5, s7, 904
                  lbu          s10, 70(s4)
                  sltu         s9, t0, a3
                  sra          s2, a0, s4
                  ori          t2, t0, -1146
                  sra          s8, ra, a3
                  or           a7, s8, t2
                  add          a7, a5, sp
                  srai         s8, t4, 21
                  sh           t6, 179(s4)
                  lb           s9, 116(s4)
                  sb           a5, -183(s4)
                  lbu          s11, 117(s4)
                  slt          a4, s4, t4
                  ori          s8, s0, -1711
                  lui          s7, 99845
                  srli         s9, a3, 17
                  slti         sp, t4, 1725
                  lb           s6, 55(s4)
                  lh           s8, 21(s4)
                  addi         a7, sp, 971
                  lb           t1, 103(s4)
                  lh           a6, -83(s4) #end riscv_load_store_rand_instr_stream_8
                  la           a2, region_0+980 #start riscv_load_store_rand_instr_stream_2
                  or           t2, s4, t6
                  lbu          a0, -155(a2)
                  slli         a6, s10, 1
                  slli         t0, a3, 2
                  sra          s2, s0, t6
                  lb           t2, -245(a2)
                  lb           tp, 81(a2)
                  sltiu        s4, s5, 283
                  sub          s1, a5, s7
                  add          t5, a6, t2
                  or           s5, a7, sp
                  nop
                  sb           t1, -247(a2)
                  and          s3, ra, t4
                  sh           a7, -122(a2)
                  lbu          t3, -84(a2)
                  sra          t0, t6, s3
                  slli         s1, s11, 2
                  slli         s2, a7, 31
                  srli         s7, s8, 11
                  sll          ra, s11, zero
                  srli         s6, a3, 12
                  ori          s10, a1, 1651
                  lh           s3, 240(a2)
                  lw           s1, -232(a2)
                  srli         s1, s4, 17
                  addi         a5, s6, -584
                  srli         s5, t3, 8
                  lb           s6, 69(a2)
                  and          s1, s1, s0
                  sra          s10, s2, s6
                  addi         s7, s11, -2028
                  nop
                  lh           gp, 110(a2)
                  sw           s11, -160(a2)
                  andi         s5, t4, -774
                  sb           a1, -97(a2)
                  sltu         s9, s0, t1
                  sb           s6, 152(a2)
                  ori          s8, tp, -88
                  lhu          s11, 28(a2)
                  srli         gp, s9, 14
                  sw           a0, 148(a2) #end riscv_load_store_rand_instr_stream_2
                  la           s7, region_1+748 #start riscv_load_store_rand_instr_stream_16
                  sb           t2, -1(s7)
                  lbu          s9, -10(s7)
                  ori          t2, s0, -1288
                  sltiu        a5, s2, 981
                  slt          s2, a0, sp
                  lbu          t3, 5(s7)
                  sb           s6, -4(s7)
                  lbu          t3, -9(s7)
                  ori          a2, ra, -1460
                  add          t2, a6, s10
                  sltu         s1, s6, s0
                  lb           s2, -9(s7)
                  lbu          sp, -5(s7)
                  slti         s4, a1, -1141
                  sb           a5, -6(s7)
                  lbu          s9, -1(s7)
                  sb           t5, 2(s7)
                  lb           a0, -5(s7)
                  addi         t1, a2, -229
                  lh           sp, 12(s7)
                  lw           a3, 0(s7)
                  and          t3, s8, s0
                  slti         s5, s2, 1700
                  lb           t2, -7(s7)
                  lbu          a3, -6(s7)
                  slli         t0, s8, 8
                  andi         a5, t2, 1989
                  lb           t0, -16(s7)
                  sra          sp, s6, a1
                  lw           a7, 16(s7)
                  andi         a3, s9, 64
                  srai         gp, s0, 17
                  sb           s4, -1(s7)
                  lbu          tp, 10(s7)
                  lh           tp, -6(s7)
                  sw           s10, -8(s7)
                  sb           a1, 9(s7)
                  lh           a1, -10(s7) #end riscv_load_store_rand_instr_stream_16
                  la           s9, region_0+792 #start riscv_load_store_rand_instr_stream_7
                  lhu          s3, 42(s9)
                  lbu          t3, -57(s9)
                  sh           s8, -34(s9)
                  auipc        a5, 50251
                  lhu          ra, -42(s9)
                  and          t2, tp, a2
                  slli         ra, a1, 13
                  srl          s7, t1, t1
                  sb           s7, 3(s9)
                  sb           gp, 29(s9)
                  auipc        t1, 1046344
                  xori         a2, a0, 902
                  lbu          s8, -49(s9)
                  sra          s10, s1, a5
                  lh           s5, -2(s9)
                  sltu         ra, t0, a2
                  sh           t2, 62(s9)
                  xori         a0, s8, 326
                  sh           s6, -52(s9)
                  lbu          t3, 23(s9)
                  lb           a6, -6(s9)
                  sb           t6, 19(s9)
                  addi         s3, a2, -1337
                  sra          t0, t3, a0
                  sub          s1, s1, s6
                  lb           t0, 13(s9)
                  and          gp, t3, s6
                  add          sp, a2, s0
                  srl          s5, gp, s8
                  srai         ra, tp, 3
                  auipc        s3, 599443
                  auipc        a3, 241657
                  or           t3, t5, a6
                  lbu          a5, -17(s9)
                  xor          a5, zero, a5
                  add          s8, t0, a3
                  lhu          a7, -64(s9)
                  lb           zero, -10(s9)
                  lhu          t2, -50(s9)
                  sb           s0, -5(s9)
                  sb           a3, -53(s9)
                  lb           ra, 9(s9)
                  andi         t0, a6, 302
                  lbu          a0, -2(s9)
                  slli         a4, a4, 20
                  lw           s3, -20(s9)
                  lui          s4, 75948
                  lw           s10, 40(s9)
                  sb           s0, 33(s9) #end riscv_load_store_rand_instr_stream_7
                  sll          s6, s0, s7
                  slti         s10, sp, -945
                  sub          s11, t5, s10
                  blt          s6, a2, 14f
                  slt          ra, a4, s11
                  or           sp, a3, s9
                  xor          s1, s11, s10
                  sltiu        tp, a0, 1571
                  nop
                  or           tp, s2, a6
                  slli         ra, t4, 22
                  sub          s4, t3, t1
                  sltu         s11, s10, s7
                  srai         sp, t5, 8
14:               add          s2, t6, s5
                  srli         a0, s10, 15
                  slt          s8, a1, s10
                  or           s10, s2, tp
                  add          s10, a2, s7
                  slti         s3, a5, 679
                  xor          t0, t0, gp
                  srli         a6, tp, 3
                  sltiu        s6, s11, 1364
                  and          a7, a2, a6
                  slli         a1, a7, 16
                  ori          t0, a1, 542
                  and          a2, s2, s7
                  srl          s7, zero, ra
                  slt          t1, s3, a3
                  lui          s7, 1000926
                  srl          s1, s6, s10
                  sltiu        s5, a0, -683
                  srai         s9, s1, 25
                  sltiu        ra, sp, -1176
                  bge          tp, a3, 52f
                  srl          sp, s8, s9
                  ori          s1, a0, -656
                  sltu         t2, tp, a5
                  xori         gp, s1, -452
                  srl          a2, a7, t3
                  sltu         s2, sp, a2
                  addi         a3, s3, 796
                  bne          tp, t5, 47f
                  sra          a2, a1, s7
                  blt          zero, a1, 47f
                  slli         a5, s10, 8
                  srli         s6, a4, 30
47:               sub          s3, a4, a5
                  blt          a0, s11, 57f
                  or           s9, s0, a3
                  slti         t1, s8, -894
                  andi         s11, a6, -782
52:               nop
                  sra          a0, s1, ra
                  nop
                  xor          gp, s7, s6
                  auipc        zero, 279124
57:               srl          a0, gp, a2
                  slli         tp, a3, 28
                  blt          ra, t5, 76f
                  beq          t0, s2, 72f
                  auipc        s3, 141294
                  slli         t0, gp, 7
                  slt          s11, s8, t5
                  sltu         s2, a7, s1
                  sll          s8, ra, a7
                  xor          t5, zero, s1
                  slt          a5, t4, t3
                  or           t2, s10, t0
                  lui          tp, 477258
                  slli         s2, s8, 6
                  bne          s2, s4, 83f
72:               lui          t5, 416376
                  or           t5, a7, s2
                  srai         a4, a6, 5
                  auipc        s11, 864306
76:               and          a5, gp, t1
                  srli         t1, s2, 30
                  xor          s9, t5, a7
                  sltu         a7, s0, t4
                  slli         a6, a4, 6
                  bltu         a5, t2, 94f
                  slt          a2, s7, ra
83:               lui          s2, 692902
                  sll          s1, s2, s10
                  srli         s8, t2, 4
                  bltu         s9, a0, 103f
                  srai         tp, s7, 4
                  lui          a2, 79985
                  add          s2, a3, gp
                  lui          t1, 535295
                  auipc        tp, 830030
                  andi         a0, sp, -739
                  sltiu        a5, t2, 1568
94:               lui          t3, 1004853
                  add          s9, t1, t0
                  blt          s9, a0, 98f
                  sll          a4, t5, a5
98:               ori          s7, t4, -1211
                  sltu         a5, t4, a7
                  xor          s11, a7, s5
                  bltu         ra, t6, 115f
                  srai         tp, ra, 1
103:              or           a4, sp, a7
                  slt          ra, t6, gp
                  auipc        zero, 904087
                  srl          s2, s2, a4
                  slli         a5, tp, 1
                  addi         t2, a7, 953
                  blt          s4, tp, 119f
                  srai         t0, t5, 3
                  blt          s4, t1, 114f
                  srli         a3, s0, 10
                  sll          a4, t6, t5
114:              slt          a2, a5, s1
115:              srl          a1, s9, a0
                  srli         a2, a4, 5
                  sll          t5, t1, s10
                  bltu         s2, s2, 119f
119:              lui          s4, 964525
                  sltiu        s4, a4, 1534
                  bge          s1, a4, 134f
                  xor          a2, t6, s6
                  blt          a6, a1, 134f
                  srl          t3, s0, s8
                  slt          a5, a4, s9
                  and          a2, s4, t2
                  srl          t1, t1, s6
                  bge          s9, a0, 132f
                  sll          s4, s8, sp
                  srl          a1, a0, s2
                  bgeu         s5, tp, 133f
132:              bltu         t5, s6, 135f
133:              slti         s5, t4, -1128
134:              sra          a6, s11, s2
135:              ori          a7, t3, 507
                  sub          gp, a7, s6
                  lui          s5, 162920
                  slti         t3, a7, -1317
                  addi         a5, a1, 1031
                  xori         t0, s0, -1301
                  bltu         t6, s8, 142f
142:              bne          t3, tp, 153f
                  xori         s11, tp, 1703
                  addi         tp, tp, -845
                  slti         s9, a0, 1908
                  and          sp, s2, a5
                  add          t2, s2, s9
                  bltu         a6, a0, 149f
149:              srl          s7, s8, t5
                  nop
                  slt          tp, t5, a6
                  srli         s1, sp, 30
153:              bltu         s8, tp, 161f
                  slti         gp, zero, -1059
                  srai         zero, a0, 24
                  blt          a2, t1, 166f
                  beq          s6, sp, 176f
                  bgeu         sp, s4, 164f
                  nop
                  xor          t2, t5, s0
161:              blt          zero, tp, 169f
                  lui          zero, 812460
                  sub          ra, a0, a6
164:              andi         a0, s6, 1958
                  auipc        sp, 686977
166:              bgeu         s1, ra, 176f
                  sltu         s6, t1, tp
                  lui          gp, 679721
169:              add          zero, t1, s6
                  slt          t5, t0, a4
                  beq          s5, a7, 189f
                  bne          s2, a4, 175f
                  sll          a4, s6, s10
                  add          t0, s2, s1
175:              ori          a3, s3, -278
176:              srl          ra, t3, s2
                  sra          s2, a7, t6
                  sltiu        s7, zero, 1477
                  andi         s4, a6, 971
                  add          s8, s11, ra
                  nop
                  slti         a0, a1, -955
                  bgeu         s3, a1, 185f
                  slt          a7, t2, a2
185:              bltu         a5, t4, 193f
                  auipc        s1, 770332
                  slti         t3, gp, 221
                  sll          a1, s11, s5
189:              andi         t3, a6, 1309
                  sltu         t2, zero, s7
                  ori          s2, s10, 651
                  addi         a4, a0, -1369
193:              lui          s5, 904661
                  slt          sp, s3, a1
                  or           a6, t4, t6
                  sltiu        zero, t5, 1616
                  xor          a3, t6, s6
                  bltu         s11, a1, 216f
                  nop
                  xor          a7, s5, a7
                  blt          s1, s4, 211f
                  xor          a5, s10, a5
                  bltu         a4, s0, 214f
                  slt          s10, a4, a7
                  beq          a0, a0, 208f
                  sltu         a6, a3, a1
                  or           t3, s2, a5
208:              auipc        a4, 61728
                  ori          a1, s1, -1768
                  or           s1, t0, s0
211:              slti         s5, s3, 1837
                  bltu         sp, s1, 215f
                  nop
214:              add          a3, t0, t4
215:              sltiu        s4, s10, -1751
216:              andi         t3, t2, -939
                  blt          sp, t6, 222f
                  beq          a3, a7, 219f
219:              bne          s8, a0, 236f
                  nop
                  ori          t2, s2, 760
222:              sra          s7, s11, zero
                  bge          s2, s8, 241f
                  andi         t2, a7, 220
                  add          t0, sp, t0
                  ori          t1, t6, -1986
                  andi         zero, s0, 459
                  slt          t1, a6, t0
                  slli         t1, a5, 29
                  srai         a7, a4, 8
                  bltu         s4, s10, 244f
                  bne          s11, a5, 233f
233:              bltu         t3, gp, 243f
                  bgeu         a0, zero, 246f
                  xori         gp, t3, -1967
236:              xori         s3, s8, -591
                  auipc        s8, 399884
                  la           sp, region_0+1544 #start riscv_load_store_rand_instr_stream_6
                  lbu          s6, -217(sp)
                  sb           t6, 164(sp)
                  lhu          t3, 218(sp)
                  xor          a6, s6, s1
                  sll          s8, a1, s1
                  ori          a4, t5, -422
                  sh           s1, 6(sp)
                  lui          s9, 16339
                  lh           a1, -158(sp)
                  lb           a1, 171(sp)
                  or           s1, s7, s6
                  lb           s11, -93(sp)
                  srl          s5, a0, s11
                  slt          s1, a2, s7
                  sb           t3, 158(sp)
                  sb           zero, -227(sp)
                  auipc        s10, 368231
                  lw           s9, 96(sp)
                  srli         s8, s9, 13
                  nop
                  lhu          t3, 242(sp)
                  sltiu        a4, s4, -701
                  ori          t3, a3, 1846
                  or           a7, s2, ra
                  lb           s10, -6(sp)
                  lh           s11, 94(sp)
                  nop
                  addi         t3, zero, 1109
                  sb           s3, 235(sp)
                  lb           s7, -202(sp)
                  or           s10, zero, a1
                  lb           a3, 3(sp)
                  lb           t5, -181(sp)
                  slli         s4, s2, 24
                  lhu          s11, -94(sp)
                  lb           s9, 53(sp)
                  sltu         s6, zero, tp
                  xor          ra, t2, s2
                  lb           s9, 90(sp)
                  slli         ra, t6, 24
                  lui          zero, 174554
                  nop
                  sltiu        s6, s3, -1765
                  sb           a1, 140(sp)
                  sh           s7, 254(sp)
                  lb           t2, 203(sp)
                  sub          s8, s9, t4
                  nop
                  and          gp, t1, a4
                  lhu          s9, -8(sp) #end riscv_load_store_rand_instr_stream_6
                  ori          a0, zero, -1332
                  sra          s6, t6, s9
                  slt          a0, s8, t0
241:              andi         s8, t1, 208
                  bne          s6, tp, 259f
243:              nop
244:              slli         gp, tp, 13
                  sltu         tp, a6, s3
246:              bne          t3, tp, 255f
                  xor          ra, t6, s11
                  or           ra, a6, s5
                  sra          t5, a3, t6
                  slti         a4, s6, 1876
                  bltu         ra, t4, 252f
252:              slt          a2, s8, s3
                  sra          s2, s2, tp
                  sltu         a7, a5, t5
255:              xor          t5, s11, zero
                  or           t2, sp, s6
                  slti         ra, t5, -800
                  srl          s9, s11, s2
259:              and          a6, a3, a3
                  sra          t3, s0, a4
                  nop
                  sll          s1, s2, s9
                  xori         s10, s8, -696
                  nop
                  beq          a1, a0, 269f
                  sll          s7, t1, s5
                  bge          s10, s1, 278f
                  sll          s11, s5, s6
269:              sltiu        a0, t5, 22
                  beq          s1, s5, 283f
                  xori         a0, sp, -1689
                  sltiu        s6, s10, 359
                  nop
                  blt          s11, a2, 276f
                  xor          t5, s5, s10
276:              bgeu         s10, t6, 282f
                  blt          t4, s7, 296f
278:              ori          a4, a3, -51
                  srai         tp, t5, 14
                  bge          a4, a1, 290f
                  bltu         a5, a5, 289f
282:              srl          sp, a2, s7
283:              addi         t0, s5, 1288
                  srai         s3, t3, 8
                  srli         a0, a5, 25
                  sltu         a0, a6, t5
                  or           gp, a5, s4
                  blt          a3, s11, 302f
289:              sltu         s8, gp, s5
290:              and          gp, a0, a1
                  or           t2, tp, t5
                  srl          s4, gp, s2
                  slli         s11, a3, 12
                  nop
                  bgeu         zero, a1, 307f
296:              andi         s7, t3, -1553
                  xori         gp, t3, 331
                  beq          t5, s3, 309f
                  sll          s4, zero, s4
                  sltu         s1, ra, gp
                  sll          a7, a0, s9
302:              sltiu        t5, t6, 278
                  bgeu         s0, s10, 312f
                  sub          a2, t4, t2
                  blt          t5, s3, 310f
                  bgeu         a1, t6, 316f
307:              slli         s4, s11, 26
                  sltiu        a6, t4, -578
309:              add          zero, a6, a1
310:              nop
                  bltu         s9, t2, 317f
312:              srli         a3, tp, 21
                  auipc        tp, 557327
                  addi         s7, s8, -1613
                  srai         s11, zero, 31
316:              xor          sp, t1, s5
317:              nop
                  slti         s11, s1, 1148
                  sll          gp, s11, a4
                  sub          tp, a2, t1
                  blt          s10, s1, 329f
                  slt          t0, a1, s7
                  slli         a3, ra, 13
                  slli         a5, a3, 0
                  nop
                  sll          a2, zero, t2
                  nop
                  addi         s10, a2, 641
329:              bne          ra, s3, 333f
                  beq          t5, t5, 347f
                  auipc        a2, 335748
                  slti         a6, ra, 962
333:              bne          a2, a1, 334f
334:              add          t2, s11, s0
                  srl          s10, s8, s10
                  nop
                  and          t2, s1, a1
                  andi         a0, s6, -224
                  xor          sp, s1, a3
                  or           t0, t1, s0
                  andi         s9, s3, -1941
                  lui          s1, 912875
                  andi         s2, s5, 208
                  bne          a2, a3, 355f
                  srl          a0, a1, s8
                  sra          t1, t2, tp
347:              sltu         t0, s2, t6
                  slt          t1, t2, a7
                  srli         a7, s7, 16
                  or           t0, t1, a6
                  slti         t5, s6, -1179
                  nop
                  ori          s3, s3, -99
                  slti         t0, a1, -889
355:              andi         s5, t0, 944
                  srli         gp, t2, 3
                  bltu         ra, t5, 360f
                  lui          s5, 385474
                  sltu         s2, t4, a5
360:              sra          tp, t2, a7
                  blt          s7, s8, 375f
                  add          a3, s7, s11
                  srl          tp, s0, t3
                  add          s4, s5, s4
                  bne          a5, s6, 373f
                  and          a7, t1, s6
                  sll          gp, s2, s8
                  and          s10, s7, t3
                  slli         a7, s4, 2
                  sltiu        a1, t5, 1948
                  bgeu         tp, a1, 372f
372:              slti         zero, ra, 1452
373:              and          t2, s7, s11
                  srli         s9, s5, 12
375:              slli         s4, tp, 2
                  xori         gp, ra, 466
                  lui          a7, 495770
                  lui          t3, 372326
                  addi         s4, s7, 1460
                  srai         s1, s8, 23
                  auipc        t1, 260562
                  bge          t3, s0, 395f
                  lui          s10, 664504
                  xori         a2, a7, -33
                  slti         t0, s0, -664
                  slli         t5, t2, 6
                  sra          s11, t3, a2
                  beq          a7, s5, 389f
389:              bltu         tp, a5, 407f
                  srai         t5, a6, 31
                  nop
                  add          a1, gp, a3
                  xori         a7, s4, -1104
                  srl          s6, t2, a5
395:              bge          t3, t6, 397f
                  sltu         tp, s2, sp
397:              ori          sp, t4, 1495
                  sltiu        a6, t6, 245
                  slt          s5, gp, s7
                  srai         s11, a4, 27
                  sltiu        s6, s9, 893
                  srai         a3, tp, 26
                  slt          a0, tp, s4
                  auipc        s5, 617824
                  or           ra, t0, a5
                  srli         a6, t5, 21
407:              srl          t5, s7, s2
                  bgeu         s6, gp, 411f
                  nop
                  addi         zero, s1, 1284
411:              addi         t5, a0, -1712
                  ori          gp, s1, -602
                  sltiu        a6, t3, -1741
                  sltiu        a5, s1, -595
                  xori         a4, s3, 956
                  bge          s7, s1, 428f
                  lui          t3, 146461
                  bge          sp, a0, 436f
                  add          a0, sp, a6
                  sub          s10, s10, a4
                  add          t5, s4, gp
                  bltu         t2, s2, 435f
                  bgeu         gp, a2, 435f
                  sub          t1, a1, tp
                  slli         s2, a3, 22
                  sltiu        s8, s5, -1025
                  sub          a3, t3, t3
428:              sltiu        sp, s4, 736
                  or           s10, t4, a3
                  sll          a7, s8, ra
                  xori         s5, t6, 1269
                  ori          s6, t3, -852
                  sub          t2, zero, s3
                  xori         s7, gp, -721
435:              andi         s3, s5, -1517
436:              bge          t3, s5, 447f
                  srli         s5, a4, 21
                  lui          t3, 935216
                  slt          a1, a2, s3
                  bltu         s4, a1, 459f
                  beq          s0, a6, 443f
                  sltiu        s7, a3, 589
443:              bne          a6, tp, 454f
                  xor          s6, a4, tp
                  add          a7, sp, s11
                  sra          sp, a3, s7
447:              xor          s1, a5, t4
                  blt          a5, sp, 458f
                  slt          s3, s5, t3
                  srl          s10, a4, a1
                  sub          a5, s5, a7
                  auipc        a2, 223788
                  bge          t5, tp, 463f
454:              bne          t5, s4, 457f
                  xor          s1, s1, a4
                  beq          s3, a0, 473f
457:              xor          s4, s6, ra
458:              ori          s4, t2, 1605
459:              add          a6, zero, s10
                  ori          s5, sp, 196
                  xor          s9, s11, a3
                  slt          a2, s8, s0
463:              add          s7, sp, gp
                  and          t3, gp, gp
                  sra          s1, t4, a3
                  auipc        s2, 167371
                  andi         t5, s3, 1
                  beq          s5, zero, 469f
469:              sra          a1, a0, a2
                  andi         t0, a2, 1703
                  xor          a6, sp, t3
                  auipc        a4, 198111
473:              slt          s8, t5, s9
                  xor          ra, s3, t4
                  sra          s10, t4, s7
                  bge          t3, s5, 488f
                  beq          s5, t3, 494f
                  srli         t3, a5, 20
                  bltu         a0, s0, 480f
480:              bgeu         s2, t3, 488f
                  sltu         zero, s4, zero
                  or           s5, a6, a0
                  nop
                  slli         a1, s2, 12
                  xor          tp, a7, s7
                  sltiu        a7, s0, -763
                  ori          a6, s7, 817
488:              add          t0, gp, a5
                  xori         a1, s10, 1340
                  slti         gp, t0, 1792
                  bge          a0, t3, 505f
                  srai         a4, s7, 12
                  bge          s5, sp, 496f
494:              addi         t2, a6, -1788
                  ori          gp, a7, 1800
496:              sub          zero, t5, s6
                  srl          s10, s9, t2
                  nop
                  srl          s7, sp, s10
                  srli         s2, t3, 9
                  slt          tp, gp, s6
                  sll          a4, a7, t0
                  beq          s8, s3, 514f
                  addi         t5, zero, 1280
505:              nop
                  auipc        a4, 913232
                  ori          tp, t2, -1627
                  sltu         s3, t4, s6
                  srai         a4, zero, 3
                  andi         s4, t2, -322
                  sll          t0, t2, s8
                  slti         t1, t4, -550
                  and          t1, t6, s5
514:              srai         s11, t6, 0
                  xor          s1, s5, a4
                  sltu         t3, gp, s0
                  blt          s6, t1, 527f
                  sub          s1, t6, s2
                  srli         a2, s4, 0
                  sub          a2, s4, t0
                  bltu         s11, a2, 526f
                  addi         t0, a3, 1824
                  add          a4, t3, a3
                  slti         a6, s4, -1815
                  sub          s9, a3, s6
526:              xori         s5, s8, 1756
527:              srai         a4, s0, 2
                  ori          a1, tp, -928
                  or           s7, a7, t3
                  ori          s3, a0, 108
                  blt          a7, s1, 548f
                  beq          a2, s8, 545f
                  beq          a5, t4, 545f
                  beq          ra, a6, 544f
                  bge          a1, t5, 546f
                  sub          ra, s7, s8
                  srl          a2, s7, sp
                  srl          a4, s8, gp
                  sll          a1, s7, a3
                  sub          a1, s8, s9
                  beq          a1, sp, 544f
                  xori         a1, s2, -1728
                  slt          sp, s11, s3
544:              sra          s1, s11, s10
545:              addi         s9, t2, 604
546:              add          s8, sp, s0
                  srl          t3, a4, a5
548:              srli         s2, s9, 1
                  blt          s7, s7, 567f
                  sub          s8, s4, s10
                  beq          s6, ra, 554f
                  sltiu        t3, t6, 674
                  slti         t2, s9, -686
554:              blt          tp, t5, 565f
                  srl          s2, t0, s2
                  and          ra, a4, s4
                  add          t0, s7, a4
                  lui          s5, 966745
                  slti         s3, sp, 1588
                  nop
                  sltu         s7, a5, s10
                  auipc        a6, 393471
                  bltu         t2, tp, 576f
                  beq          a7, s11, 566f
565:              bne          a4, s5, 566f
566:              bgeu         s1, s6, 584f
567:              srl          s2, s8, t0
                  and          a2, s6, a5
                  auipc        s5, 590315
                  sltiu        t5, t0, 648
                  bne          ra, gp, 581f
                  bgeu         s6, a6, 574f
                  addi         s7, t2, 1528
574:              or           s1, t6, s4
                  lui          t1, 169136
576:              bne          a0, a4, 585f
                  xor          s7, s9, a6
                  beq          s1, s6, 584f
                  and          a0, s9, s4
                  and          s10, s2, t6
581:              sll          t2, a5, tp
                  slli         t1, s1, 5
                  slt          s11, a0, s7
584:              sll          a1, t3, t0
585:              bgeu         t6, s0, 589f
                  bge          a0, s0, 605f
                  sll          s1, t1, t6
                  bne          s5, s3, 596f
589:              sub          tp, gp, a7
                  beq          a1, s1, 603f
                  andi         s1, tp, 124
                  bltu         a6, s11, 601f
                  slli         a3, s10, 6
                  sub          s6, a4, a2
                  sra          gp, s2, a4
596:              ori          s4, t2, -15
                  sra          s6, t5, a7
                  add          ra, a1, sp
                  sltu         t5, a3, s11
                  and          s6, t4, sp
601:              beq          s2, s9, 602f
602:              and          t2, t1, t1
603:              slti         s2, s1, 582
                  bgeu         s8, a2, 606f
605:              addi         s6, s11, 1394
606:              srl          s2, zero, gp
                  lui          tp, 982213
                  sub          s7, a6, zero
                  blt          zero, t4, 610f
610:              add          a4, s2, a6
                  slli         s2, a7, 7
                  slli         zero, t5, 20
                  bge          t5, a0, 623f
                  slt          t2, s3, s8
                  sltiu        s1, s3, -928
                  slli         s9, t5, 28
                  addi         a1, s4, -934
                  ori          s10, t5, -292
                  sll          s4, s10, s11
                  sltu         a3, t0, s7
                  slti         s10, s11, 1211
                  lui          s4, 936124
623:              xori         s3, tp, -269
                  srai         s8, a6, 23
                  addi         t3, s7, -2006
                  bne          t3, t5, 644f
                  add          a1, s10, t0
                  bne          s6, t4, 636f
                  auipc        a0, 400921
                  xori         t3, a6, 243
                  bgeu         s5, t5, 634f
                  sltiu        a4, gp, -1362
                  srl          s10, ra, a7
634:              srli         t3, zero, 7
                  sub          s4, s2, tp
636:              nop
                  srli         tp, a4, 28
                  andi         a5, s4, -1930
                  nop
                  slti         s1, t2, -1429
                  and          s4, zero, t5
                  sltu         s9, a0, a4
                  sltiu        t2, ra, 135
644:              slt          s6, s7, a0
                  srai         t0, t4, 14
                  add          a0, s4, s4
                  slti         t5, t4, 324
                  nop
                  ori          t5, a1, -223
                  sltiu        s6, s5, -1455
                  sll          a6, s2, tp
                  beq          t2, s6, 654f
                  sub          a5, s5, gp
654:              ori          s3, t6, -1092
                  slti         s1, a6, 1803
                  addi         t1, a5, -1635
                  and          zero, s4, t2
                  ori          a4, s6, 609
                  bgeu         ra, zero, 669f
                  bgeu         s3, a3, 677f
                  nop
                  bltu         s1, s10, 663f
663:              add          s3, s4, a7
                  xori         s6, t0, 1014
                  srl          s1, t0, s4
                  sra          tp, a4, gp
                  or           gp, t1, tp
                  or           t1, tp, s6
669:              nop
                  bltu         t4, s11, 684f
                  sltiu        tp, s7, 1469
                  srai         s5, t2, 3
                  sra          s8, a0, s8
                  bgeu         a5, s6, 678f
                  and          s9, t5, a0
                  slli         s1, s4, 5
677:              lui          a2, 438733
678:              slt          s3, a6, s6
                  ori          t0, t0, -1356
                  sra          s6, t4, a6
                  xori         zero, a2, 1988
                  bge          tp, a2, 693f
                  bgeu         t3, t5, 694f
684:              sra          s5, s8, s8
                  sltiu        s4, a5, -1770
                  sub          s6, a6, s8
                  andi         t1, s2, -1541
                  srli         a6, a1, 25
                  sll          s6, t6, t0
                  andi         tp, sp, -1515
                  xor          a0, t5, a6
                  sra          t0, s5, s0
693:              sra          s9, t1, s2
694:              srl          a0, s2, ra
                  bgeu         gp, a2, 706f
                  sra          s1, a4, ra
                  bgeu         tp, a7, 714f
                  auipc        a2, 1027858
                  slti         t0, a2, -1591
                  blt          a4, t0, 706f
                  beq          s0, ra, 713f
                  sra          a3, s2, t6
                  srli         s7, s7, 28
                  blt          a0, a1, 707f
                  addi         t1, s10, -1480
706:              andi         a2, s0, -1700
707:              bge          s3, a1, 717f
                  sra          t1, sp, gp
                  xor          a1, t0, s6
                  slli         t1, t2, 13
                  bge          a6, t6, 714f
                  slli         s5, t3, 26
713:              sll          s4, a1, s8
714:              srli         s1, gp, 11
                  sub          s7, gp, a2
                  slli         a7, a6, 29
717:              xori         s5, a1, -1900
                  add          t2, ra, a3
                  and          a1, t4, s6
                  slt          zero, t2, ra
                  sll          a5, sp, s2
                  lui          s2, 973199
                  blt          t6, s7, 742f
                  ori          a6, t1, 1365
                  la           sp, region_1+1570 #start riscv_load_store_rand_instr_stream_5
                  sll          s3, s0, a0
                  lbu          a0, -965(sp)
                  lb           zero, -1364(sp)
                  srli         a7, t1, 18
                  sb           s0, -82(sp)
                  slli         s4, s2, 12
                  nop
                  lh           s5, -176(sp)
                  srl          t0, s4, t3
                  auipc        t5, 407336
                  lhu          s1, 284(sp)
                  lb           s5, -429(sp)
                  lbu          a5, -88(sp)
                  sltiu        s6, s3, -1168
                  ori          tp, s3, -1142
                  ori          s4, s8, 824
                  andi         s2, s10, 177
                  lbu          t5, 199(sp)
                  sltu         t5, a0, s8
                  nop
                  addi         zero, s6, 1995
                  sb           a5, 27(sp)
                  addi         a6, t3, -1174
                  sw           s5, -1258(sp)
                  srl          s1, tp, a5
                  sh           tp, -170(sp)
                  lb           s2, -1178(sp)
                  sh           a3, -1334(sp)
                  lb           s2, -1047(sp)
                  auipc        s2, 740443
                  nop
                  and          s11, s7, s3
                  sh           t3, -1382(sp)
                  xor          t1, ra, t5
                  xori         s8, a3, 254
                  sb           gp, -1021(sp)
                  sh           a3, -58(sp) #end riscv_load_store_rand_instr_stream_5
                  bltu         a7, t4, 733f
                  nop
                  and          s1, s9, s1
                  slt          t5, tp, ra
                  auipc        s1, 845355
                  slt          a0, t3, a6
                  srai         s10, zero, 10
                  addi         s3, s9, -999
733:              andi         zero, s9, -1842
                  sub          a5, tp, s0
                  sll          a7, a3, gp
                  bltu         t1, s8, 741f
                  andi         sp, t2, 940
                  add          a7, s2, s1
                  slli         a5, tp, 11
                  bgeu         a2, s2, 758f
741:              bge          a7, t5, 753f
742:              beq          t3, ra, 755f
                  sltiu        t0, a2, -456
                  lui          a4, 961678
                  slt          s10, sp, zero
                  bge          s7, s0, 749f
                  bge          s10, a4, 753f
                  slli         t0, a5, 25
749:              lui          s6, 971526
                  srai         s7, a0, 30
                  lui          s4, 896334
                  slti         sp, s3, -1237
753:              lui          s11, 565225
                  slli         s8, t6, 8
755:              slt          t2, s8, s10
                  ori          a2, tp, -119
                  xori         sp, a3, -1911
758:              slt          s1, a4, t3
                  sll          s8, s0, a5
                  sra          t5, s3, a1
                  slti         a0, a6, -273
                  blt          t5, a0, 780f
                  lui          s3, 288192
                  auipc        s1, 677230
                  andi         t5, s5, -416
                  sra          a7, s5, zero
                  bge          t5, sp, 769f
                  sub          t5, sp, s6
769:              or           a3, t2, s11
                  slli         s11, a1, 12
                  sltu         ra, t5, a3
                  lui          t5, 493758
                  slti         t5, s5, -1286
                  sub          s11, t1, s5
                  sra          a1, s8, ra
                  andi         s7, s11, -932
                  sll          a6, s4, s0
                  beq          tp, s1, 779f
779:              blt          s4, a2, 789f
780:              srl          s3, sp, s3
                  srl          t1, s9, t3
                  srli         sp, zero, 29
                  and          a7, s6, t4
                  xori         zero, t2, -1637
                  andi         s5, a3, -1427
                  srai         s10, gp, 31
                  blt          a5, s9, 805f
                  or           s10, a4, s4
789:              sltu         s6, zero, a4
                  sltiu        a5, sp, -1201
                  sltu         a1, t5, a5
                  bltu         a3, a3, 804f
                  add          a2, a0, a4
                  sra          t1, s6, t5
                  srli         a1, t4, 8
                  bltu         tp, sp, 800f
                  sltiu        a0, t2, 189
                  srl          a7, a1, s11
                  bne          s10, a3, 809f
800:              bltu         s8, a3, 813f
                  sll          t3, s11, a2
                  add          s1, s1, s9
                  sltiu        t0, a2, 53
804:              srli         a6, s8, 13
805:              bgeu         zero, s1, 808f
                  bne          a3, t3, 818f
                  nop
808:              bge          sp, s3, 810f
809:              blt          s7, gp, 812f
810:              auipc        t3, 355609
                  xor          a2, sp, t1
812:              srai         s4, s3, 24
813:              xori         a4, zero, -325
                  bge          a2, ra, 825f
                  ori          t0, a5, 1420
                  nop
                  sltu         s4, s6, t1
818:              bge          t4, t1, 828f
                  srli         s8, t6, 12
                  sltu         zero, s8, s6
                  bltu         a3, s5, 832f
                  sltiu        s1, t0, 326
                  srl          s10, t5, a7
                  andi         t0, s9, -1441
825:              bgeu         a6, ra, 826f
826:              auipc        tp, 874629
                  sub          t2, tp, s3
828:              bge          t6, t5, 845f
                  andi         t1, s7, -1077
                  andi         a4, s0, -1298
                  blt          a3, s1, 848f
832:              slli         s1, t0, 22
                  ori          a4, a0, -1256
                  srl          zero, s7, s7
                  slli         s5, t4, 16
                  add          s6, s9, t1
                  xori         s4, a4, 1999
                  xori         a7, a4, 839
                  ori          t3, a3, 879
                  blt          t2, a6, 841f
841:              slli         a7, a5, 31
                  sub          s1, s2, t2
                  bltu         s8, ra, 848f
                  sub          s4, s11, t1
845:              srl          t2, a3, s7
                  srai         s4, s5, 8
                  slt          a1, s8, t3
848:              bne          t6, s10, 862f
                  bgeu         s6, s6, 862f
                  bltu         a4, s7, 858f
                  slt          t2, s11, t6
                  bltu         a1, s5, 863f
                  srai         s5, s8, 28
                  xori         a7, s8, -1211
                  nop
                  bne          s4, s11, 865f
                  slli         s2, tp, 16
858:              or           tp, t0, s9
                  srl          t5, t2, a1
                  sub          s8, a7, s10
                  beq          s0, a7, 869f
862:              srl          a7, t0, t0
863:              bgeu         gp, s9, 882f
                  xor          a0, t2, s1
865:              srli         s1, a2, 3
                  bge          s0, t4, 884f
                  srli         s11, zero, 29
                  srai         t2, s6, 14
869:              slli         s5, a2, 1
                  bge          t2, t6, 878f
                  or           a0, s8, a5
                  sra          s8, a2, s6
                  andi         a1, a4, -1743
                  slli         s2, s2, 6
                  bltu         s1, t1, 876f
876:              add          tp, a0, a7
                  slli         a4, ra, 20
878:              or           a4, zero, s2
                  ori          s7, a6, -1623
                  add          a3, s11, s10
                  andi         s9, s6, -912
882:              slli         s6, s11, 13
                  sltu         a1, s9, gp
884:              bge          t3, sp, 886f
                  sub          a1, s7, a5
886:              ori          s5, t3, -1582
                  bne          t5, s11, 898f
                  sltiu        tp, s0, -1113
                  lui          tp, 968596
                  sub          t3, ra, gp
                  slti         t5, s3, 606
                  add          zero, s6, s9
                  and          a6, a4, t6
                  sra          a6, ra, gp
                  sltu         t5, a0, t5
                  srl          s1, tp, t2
                  srai         s2, a1, 13
898:              srl          s10, gp, s6
                  srai         sp, s1, 24
                  xor          t3, t3, ra
                  srli         s10, a2, 11
                  lui          a5, 545167
                  nop
                  auipc        zero, 74565
                  or           ra, zero, a6
                  srai         a2, t4, 17
                  add          s8, t0, s8
                  xori         t0, t1, -1752
                  beq          a7, ra, 912f
                  slt          a2, t2, t3
                  sltiu        a6, ra, -952
912:              or           zero, s9, t5
                  bne          s6, gp, 914f
914:              beq          s0, a1, 926f
                  sltiu        a1, t1, 1028
                  sltiu        s10, a2, 762
                  addi         a2, s4, -2044
                  srai         s6, t1, 19
                  addi         gp, tp, 1771
                  slli         s2, t0, 8
                  bne          a0, a5, 924f
                  sltiu        s4, a7, -995
                  srli         zero, sp, 4
924:              bne          a3, s9, 926f
                  blt          t0, s6, 930f
926:              srli         zero, a0, 17
                  blt          zero, t1, 930f
                  srai         t1, t0, 8
                  sll          tp, s7, s4
930:              sra          t2, s9, t0
                  bgeu         a2, t3, 941f
                  nop
                  bge          t0, s9, 945f
                  bne          sp, t5, 951f
                  xori         t3, s0, 1432
                  xori         a3, s0, 1251
                  blt          s5, a6, 950f
                  srl          t5, t3, t1
                  xori         s9, s1, -1826
                  slt          a4, sp, t0
941:              blt          s6, s2, 942f
942:              slti         s11, s0, -944
                  srl          ra, t5, s6
                  or           s7, s1, s6
945:              addi         a6, a6, -352
                  sltiu        a4, tp, -33
                  sra          s1, t2, t6
                  xor          a6, t2, s1
                  add          s11, t4, a4
950:              lui          s1, 127907
951:              addi         a3, sp, 1839
                  bgeu         s6, s2, 961f
                  andi         s3, a3, -1269
                  blt          s7, a6, 968f
                  lui          a0, 350507
                  ori          t0, s11, -1503
                  ori          zero, s5, -658
                  srli         zero, s0, 9
                  andi         s8, s2, -1858
                  bltu         s5, s11, 968f
961:              xori         s1, t6, 228
                  add          a5, a6, a4
                  and          s4, tp, t3
                  lui          ra, 87002
                  bge          s9, s8, 971f
                  slli         s6, tp, 13
                  sub          s1, a3, t3
968:              and          s4, t2, a1
                  blt          a3, zero, 980f
                  addi         s1, a7, -278
971:              blt          s10, s4, 989f
                  or           a5, s11, t1
                  bltu         s11, tp, 992f
                  sub          a6, s0, s5
                  sltu         s7, s6, a4
                  bne          tp, a2, 986f
                  ori          s6, t4, -164
                  srai         s6, a0, 30
                  lui          s2, 655013
980:              bgeu         s11, s0, 991f
                  srli         a6, s5, 26
                  srl          sp, s3, gp
                  slt          a3, zero, gp
                  bge          t1, s7, 988f
                  xor          a4, s9, a3
986:              andi         s10, t2, 1956
                  add          a2, s10, a6
988:              andi         s9, a6, -1312
989:              andi         a3, s6, -517
                  nop
991:              andi         s6, a0, -1576
992:              andi         t0, zero, -122
                  addi         s6, a0, 459
                  bgeu         s4, s4, 1007f
                  slli         s7, t4, 21
                  andi         s5, t2, -1787
                  bge          t1, s1, 1007f
                  sub          t1, a1, a1
                  nop
                  slli         sp, t2, 18
                  sltu         t5, sp, gp
                  sltu         s4, s11, t2
                  or           s5, t5, s7
                  sll          a0, a5, s11
                  auipc        s4, 294762
                  bne          s9, a4, 1023f
1007:             beq          s9, s4, 1015f
                  bge          t6, t1, 1012f
                  sll          s3, t0, tp
                  srli         a5, s0, 9
                  sltu         s2, s3, a0
1012:             xor          a4, t0, s4
                  and          t3, a3, s8
                  andi         s5, a7, 390
1015:             srl          tp, gp, t2
                  srai         s4, a0, 4
                  andi         s6, s2, -1354
                  bge          s2, s8, 1020f
                  xor          tp, s0, t3
1020:             xori         t0, s9, -2
                  and          s6, s6, s6
                  blt          a3, s2, 1025f
1023:             bgeu         ra, a3, 1041f
                  bgeu         a6, s0, 1030f
1025:             slli         a7, a6, 31
                  sra          s7, s3, sp
                  sub          s6, a6, tp
                  bne          a1, a5, 1036f
                  slt          s4, a1, t3
1030:             beq          gp, s7, 1042f
                  nop
                  add          a0, sp, a6
                  sra          gp, t4, t4
                  srl          a4, a2, a3
                  sra          s11, a0, t5
1036:             sra          a5, s5, s6
                  andi         s7, ra, 1166
                  srl          t2, s8, s8
                  blt          t3, a0, 1052f
                  sra          a0, zero, a6
1041:             srl          a1, s0, a4
1042:             sra          a5, s3, s9
                  and          s3, t0, a7
                  or           s9, a2, s5
                  nop
                  slti         s4, a2, 387
                  sub          a4, t2, tp
                  andi         tp, t5, -1401
                  lui          t0, 614713
                  sub          s3, sp, gp
                  add          s5, tp, sp
1052:             bltu         s1, t5, 1063f
                  slli         t5, s9, 25
                  bltu         s6, s11, 1055f
1055:             andi         sp, s4, -1679
                  slli         a7, t2, 21
                  auipc        t3, 383110
                  slt          t3, a7, a0
                  srl          t3, gp, a3
                  nop
                  and          s6, a3, s5
                  bge          a1, s0, 1065f
1063:             sub          a3, a1, a5
                  andi         s11, t4, -1511
1065:             andi         a3, t0, 246
                  srl          s10, s5, a0
                  xori         zero, t1, -1261
                  srli         zero, t6, 19
                  add          ra, sp, zero
                  slli         a4, ra, 12
                  sll          t1, t1, s1
                  add          t1, ra, ra
                  or           s7, a7, a5
                  xori         a6, a0, 1669
                  add          gp, s10, s8
                  or           sp, gp, s5
                  srli         s6, s8, 15
                  slt          s9, s5, gp
                  xori         t2, ra, -931
                  bne          a7, s6, 1081f
1081:             bne          a2, s9, 1091f
                  bltu         s1, t1, 1083f
1083:             sub          ra, a6, ra
                  slt          s7, t1, s6
                  sub          a1, a6, tp
                  blt          s0, s7, 1088f
                  add          t5, a1, t0
1088:             auipc        ra, 1007170
                  beq          s4, t5, 1099f
                  lui          a6, 786954
1091:             sll          a1, a7, t4
                  bltu         s0, ra, 1110f
                  xori         s11, s3, 1146
                  sra          zero, a4, s2
                  sll          s3, t2, s11
                  sltu         sp, s2, zero
                  or           a6, sp, s6
                  lui          s9, 651598
1099:             srl          s10, a7, t1
                  auipc        s1, 729092
                  nop
                  or           s2, sp, s11
                  sra          a2, s0, a7
                  slt          s3, t1, a0
                  or           a5, s9, s0
                  srl          a7, s5, s2
                  bgeu         s10, a0, 1124f
                  bltu         s1, a4, 1117f
                  lui          a2, 342722
1110:             bge          s3, t1, 1113f
                  addi         a7, s4, -570
                  slt          sp, a3, a2
1113:             slli         t1, a3, 3
                  add          a6, s6, a3
                  slti         a6, a5, -287
                  xor          s1, s6, s0
1117:             and          s5, t2, zero
                  blt          s6, s3, 1129f
                  sll          a4, t1, gp
                  bge          a6, s7, 1125f
                  ori          s2, t0, -460
                  slli         s4, tp, 17
                  and          t0, s3, a4
1124:             andi         a7, ra, 1944
1125:             sra          a6, t4, t1
                  slli         t1, ra, 20
                  srai         a0, s2, 19
                  xori         s10, tp, 1245
1129:             slt          s8, t1, s8
                  srli         sp, gp, 29
                  srl          t1, a6, s0
                  xor          a7, t0, s7
                  sra          a7, t1, a6
                  auipc        gp, 75866
                  ori          t1, sp, 1238
                  bgeu         s1, s7, 1147f
                  addi         tp, a1, -1977
                  andi         s11, a7, 55
                  ori          zero, s4, -89
                  srl          t1, t3, a0
                  xori         s9, t1, -1633
                  andi         s5, s11, -1419
                  xor          a0, a2, s6
                  slti         tp, t4, 711
                  sub          t5, s8, s4
                  srai         s8, a3, 17
1147:             bltu         t3, s2, 1166f
                  bne          s9, s4, 1165f
                  addi         s5, a2, 813
                  add          a3, t6, s1
                  sra          t0, t3, tp
                  bne          s1, a3, 1162f
                  beq          s7, t0, 1166f
                  xor          a6, s9, ra
                  xor          t2, a4, s5
                  slli         a2, s8, 1
                  bne          s6, s2, 1169f
                  and          a1, a7, s4
                  bne          s7, s1, 1173f
                  addi         t2, sp, 712
                  bge          s2, a2, 1173f
1162:             blt          a6, a5, 1172f
                  sll          t5, a4, t3
                  slt          s4, gp, s10
1165:             bne          s10, t2, 1175f
1166:             srli         t2, gp, 9
                  blt          a7, t1, 1180f
                  andi         s5, s2, -948
1169:             andi         a6, sp, 689
                  or           a3, t1, gp
                  slt          s10, a1, s11
1172:             and          t3, a3, s4
1173:             slli         t0, a1, 11
                  ori          s1, s8, -1467
1175:             srli         s9, s10, 19
                  and          gp, s10, s4
                  addi         a6, t1, -1208
                  bgeu         a4, s7, 1196f
                  srl          t5, t2, t1
1180:             bne          tp, sp, 1181f
1181:             bgeu         a0, t1, 1185f
                  and          ra, t6, t0
                  slli         a2, a3, 20
                  and          tp, a2, a4
1185:             blt          s6, a5, 1202f
                  srai         s5, s1, 17
                  add          s7, s4, t3
                  sub          zero, t5, s10
                  slli         s7, ra, 26
                  bne          s11, t5, 1192f
                  bne          a7, a3, 1199f
1192:             srl          zero, s3, a6
                  nop
                  srl          tp, s6, zero
                  ori          a3, t1, -227
1196:             sll          s8, s6, s11
                  sltu         t1, t4, t0
                  xori         s3, sp, -2004
1199:             auipc        a3, 92269
                  addi         t2, s10, -1950
                  slt          t3, gp, ra
1202:             and          tp, zero, t3
                  lui          t3, 389203
                  auipc        t2, 408502
                  addi         t3, a2, 553
                  xori         a0, a5, 1156
                  auipc        a3, 727204
                  srli         t3, a7, 9
                  or           a0, t5, s0
                  blt          t0, s5, 1211f
1211:             sltu         t0, s8, s6
                  or           s5, a3, a4
                  sll          s5, a2, sp
                  srli         a7, t5, 23
                  andi         a1, a6, -2022
                  or           s6, a2, sp
                  andi         s6, s5, 1914
                  srai         s5, s6, 11
                  slt          s7, s3, s10
                  sra          s8, sp, t5
                  bne          ra, t3, 1232f
                  add          s3, a1, a1
                  xori         t1, s4, -696
                  blt          t5, t3, 1225f
1225:             bltu         s2, t6, 1237f
                  auipc        t2, 844304
                  slti         s10, a5, 1816
                  slti         s11, s5, -1364
                  add          a3, a3, tp
                  sltu         a1, s6, s11
                  bltu         tp, t6, 1242f
1232:             bgeu         a0, a3, 1237f
                  sub          t3, s8, s5
                  add          s1, a1, t5
                  blt          a1, tp, 1245f
                  ori          gp, t3, 188
1237:             beq          s6, a1, 1243f
                  beq          s5, t6, 1240f
                  auipc        t0, 663102
1240:             blt          s6, s0, 1249f
                  auipc        a0, 113877
1242:             ori          s3, s8, -998
1243:             andi         s8, s2, -1318
                  slti         t2, a1, 1177
1245:             srai         a5, t0, 5
                  xor          a5, a0, s10
                  la           a6, region_1+1942 #start riscv_load_store_rand_instr_stream_3
                  nop
                  lhu          s11, -258(a6)
                  or           t2, s3, s6
                  sb           s2, -1185(a6)
                  sb           t4, -1061(a6)
                  ori          s11, ra, 411
                  xor          s6, a2, t2
                  lhu          zero, -1532(a6)
                  lb           ra, -365(a6)
                  xor          a7, s3, s9
                  lh           s8, -516(a6)
                  lb           zero, -29(a6)
                  sb           s2, -1926(a6)
                  srli         s6, a1, 25
                  sb           s0, -203(a6)
                  sub          s11, t2, a1
                  slti         t5, ra, 1143
                  slli         a4, s6, 27
                  slli         s7, s1, 4
                  auipc        s6, 38901
                  addi         s1, s2, -477
                  srl          zero, s11, ra
                  slti         a7, a1, 2012
                  addi         s7, s11, 1711
                  lhu          s10, -644(a6)
                  srai         s7, ra, 20
                  lh           s10, -804(a6)
                  sra          s9, a4, a7
                  slli         s9, t6, 20
                  sh           s3, -736(a6)
                  lh           s9, -418(a6)
                  sltu         s11, t3, a6
                  lbu          gp, -1409(a6)
                  add          t1, s6, s7
                  add          a2, t3, s1
                  sltiu        t0, s0, 1750
                  lhu          s3, -1372(a6)
                  slli         s11, t0, 22
                  sb           a3, -1615(a6)
                  lb           t1, -383(a6)
                  lb           gp, -394(a6)
                  nop
                  slli         t1, a4, 14
                  lhu          sp, -196(a6)
                  nop
                  sb           t0, -787(a6)
                  sltu         a7, s8, s1
                  lhu          s4, -44(a6)
                  lb           s11, -1628(a6)
                  lbu          t3, -1154(a6)
                  lb           a1, -1800(a6)
                  slli         s4, a0, 24
                  lh           a4, -68(a6)
                  lhu          s10, -1812(a6) #end riscv_load_store_rand_instr_stream_3
                  xori         a3, s1, -757
                  bltu         t6, s4, 1259f
1249:             slt          sp, t2, s9
                  slt          s10, t0, t1
                  bne          a7, a5, 1265f
                  xor          t0, zero, s1
                  ori          t2, a2, 1015
                  bge          tp, s3, 1257f
                  lui          a4, 754105
                  sll          a3, t5, t4
1257:             add          a3, t0, s6
                  andi         a5, t4, 242
1259:             xori         a4, t3, 1603
                  sltu         a7, a3, t5
                  sub          s10, s7, a2
                  sll          t5, ra, gp
                  nop
                  ori          a2, ra, 966
1265:             sll          a0, s8, t5
                  ori          s3, t3, 1102
                  bgeu         a1, s9, 1280f
                  auipc        t0, 925263
                  srli         ra, t0, 24
                  bge          zero, s0, 1273f
                  beq          s0, tp, 1279f
                  addi         t2, s9, 1240
1273:             sra          s9, tp, t2
                  bne          a6, gp, 1291f
                  sub          s10, a3, s3
                  xor          s5, s4, a3
                  and          ra, sp, sp
                  or           t5, a2, t5
1279:             ori          t0, t2, -982
1280:             sub          t0, s7, t6
                  slti         t5, a0, -149
                  srai         a3, tp, 8
                  add          sp, s6, t1
                  srli         s2, s10, 17
                  add          s5, s3, t1
                  sltu         t2, s2, s3
                  srai         s5, gp, 23
                  beq          zero, a5, 1291f
                  slli         t0, a5, 8
                  or           a4, s2, t3
1291:             add          t5, s6, s5
                  sll          t0, s5, a7
                  or           t5, s9, s10
                  add          t1, s10, t3
                  ori          a5, s11, -419
                  sub          ra, a5, s11
                  slti         zero, t6, -1041
                  add          ra, ra, t3
                  sll          sp, s5, t6
                  sltiu        s9, s6, -2017
                  or           t3, gp, t2
                  slli         ra, s10, 13
                  slti         a7, t6, 236
                  xor          a4, s0, s4
                  sltu         a6, tp, s11
                  slli         tp, s11, 17
                  ori          s6, a5, 1119
                  beq          t5, gp, 1327f
                  slli         s7, a6, 1
                  or           s11, t3, s4
                  blt          a5, s8, 1329f
                  sltiu        a0, s11, -170
                  or           t2, sp, a5
                  auipc        t3, 856796
                  bge          t4, a5, 1316f
1316:             beq          t4, t6, 1334f
                  slli         s8, t6, 26
                  blt          t0, zero, 1331f
                  lui          s4, 738586
                  xor          t0, gp, a5
                  sltu         s3, t5, s0
                  slti         s5, ra, 1216
                  slti         s5, t6, -738
                  bge          a6, a7, 1341f
                  addi         zero, s8, -2037
                  slt          zero, t1, a1
1327:             andi         s11, a2, -1632
                  sltiu        s4, s0, -122
1329:             add          s10, t0, s7
                  srl          a2, t2, s7
1331:             srl          t2, t3, s4
                  bge          s4, s11, 1342f
                  sltiu        tp, s9, 1518
1334:             sltu         a3, a2, t6
                  beq          a1, a5, 1340f
                  sltiu        t0, tp, -1065
                  andi         a6, t6, -67
                  blt          a1, a5, 1344f
                  sll          s1, tp, a1
1340:             xor          a0, s3, a1
1341:             bgeu         a3, sp, 1353f
1342:             slli         a7, s6, 19
                  andi         sp, t2, -1551
1344:             ori          a0, sp, -860
                  nop
                  xor          t0, a3, a4
                  and          a0, zero, s5
                  nop
                  sra          a5, t3, a4
                  and          s11, s10, a3
                  add          zero, s10, a3
                  xor          s8, s1, s9
1353:             slli         a6, s2, 9
                  xori         s1, a5, -1036
                  srai         s3, tp, 21
                  sltiu        s10, sp, -1351
                  xori         a5, t6, 694
                  srli         sp, t1, 8
                  sltiu        s9, a7, -661
                  blt          s1, a7, 1361f
1361:             xor          a2, s6, s5
                  bge          s11, a0, 1376f
                  or           t2, a3, a4
                  srai         a5, a7, 10
                  beq          s9, tp, 1368f
                  lui          t1, 236773
                  addi         s4, s10, -1856
1368:             blt          t2, t6, 1377f
                  beq          s4, ra, 1380f
                  lui          tp, 566125
                  slti         a6, a7, -1559
                  add          a0, a2, s1
                  auipc        a2, 622432
                  slli         t2, t5, 26
                  blt          s10, s6, 1392f
1376:             srai         ra, s9, 13
1377:             bltu         s2, a5, 1381f
                  srai         s6, tp, 21
                  bne          s8, ra, 1389f
1380:             sltiu        sp, t0, -1761
1381:             sltu         a3, t4, t0
                  lui          a0, 579028
                  slt          s5, a2, s10
                  sub          t1, a4, s9
                  sltiu        t5, s4, 532
                  slt          ra, s0, tp
                  lui          a0, 507717
                  sub          a6, t6, a7
1389:             xor          a0, s9, s11
                  slt          s6, zero, a5
                  slt          t2, s6, t0
1392:             auipc        s9, 703033
                  srai         s2, a1, 20
                  beq          s1, ra, 1397f
                  sll          s5, t0, s11
                  sll          s8, s1, t3
1397:             bge          zero, s3, 1405f
                  nop
                  bge          s2, a5, 1400f
1400:             addi         s6, a1, -1292
                  nop
                  srl          s6, sp, zero
                  and          a7, a0, s2
                  auipc        s3, 1044353
1405:             bltu         t2, s2, 1416f
                  auipc        s1, 9024
                  sra          s2, t3, a1
                  bne          s6, s7, 1410f
                  srli         t3, s1, 5
1410:             slli         a0, t6, 4
                  sll          gp, a5, sp
                  nop
                  bne          s8, s10, 1426f
                  sra          s10, s6, t6
                  and          gp, t2, t4
1416:             bge          a4, a0, 1426f
                  sltiu        a0, a6, -1279
                  xori         s1, zero, 791
                  srai         tp, t2, 5
                  slt          s8, s6, s10
                  auipc        s5, 420635
                  ori          t0, t5, 1271
                  ori          ra, t0, -448
                  or           s9, t2, s2
                  lui          a4, 388178
1426:             xori         a5, s11, 1494
                  bltu         a4, s7, 1446f
                  sub          gp, a4, zero
                  addi         s1, t2, -1600
                  addi         s1, s3, -1779
                  ori          s11, a1, -386
                  sll          s3, a2, a6
                  nop
                  bge          s0, s10, 1445f
                  sub          a7, t1, s0
                  slt          s2, s0, s9
                  and          a2, t5, t5
                  slti         a4, a5, 1057
                  srai         s6, a2, 31
                  add          tp, a2, s2
                  blt          a7, s2, 1449f
                  sltu         a5, s0, a1
                  or           t1, a7, tp
                  or           tp, t3, a0
1445:             and          a6, a4, a4
1446:             bge          t2, s0, 1464f
                  nop
                  ori          s7, a7, 342
1449:             bne          s6, s9, 1452f
                  sltiu        t5, t5, -674
                  xori         a0, s11, 1618
1452:             auipc        a7, 1021567
                  sltu         s4, s7, s7
                  bne          s0, s0, 1456f
                  xor          s3, a6, s1
1456:             or           a7, t1, a2
                  bne          zero, s3, 1469f
                  sll          s9, a6, s3
                  sltu         t5, s1, t3
                  blt          ra, s4, 1462f
                  sra          a5, t1, tp
1462:             ori          gp, s9, -1795
                  and          sp, t0, ra
1464:             and          a5, tp, s11
                  ori          s3, a7, 1074
                  nop
                  sra          a3, s6, s5
                  slli         s11, a5, 1
1469:             srli         s11, t6, 5
                  sra          a5, t3, s0
                  srli         s6, s11, 25
                  or           s9, a7, s11
                  sub          s3, s8, tp
                  sub          a3, s7, t5
                  beq          a5, gp, 1478f
                  sll          a2, t4, s8
                  blt          gp, s6, 1488f
1478:             ori          t5, s7, 1518
                  bltu         a0, a3, 1489f
                  addi         s1, a5, 1890
                  xor          a3, s9, t0
                  srl          s5, t4, gp
                  auipc        t2, 758317
                  addi         a4, s10, 291
                  addi         a1, a5, -36
                  bge          ra, s4, 1487f
1487:             bltu         s1, s7, 1506f
1488:             slt          a6, s4, a3
1489:             andi         tp, sp, -490
                  sll          s5, s4, t1
                  bgeu         s8, gp, 1501f
                  sltiu        a7, s4, 1719
                  bne          s0, t0, 1506f
                  sll          tp, a6, t3
                  slt          ra, s11, s2
                  auipc        a7, 51744
                  bgeu         s5, t5, 1505f
                  srli         a0, s10, 2
                  srli         a3, t6, 19
                  bne          a3, t4, 1506f
1501:             bge          a5, zero, 1509f
                  nop
                  sll          s6, s8, t6
                  slt          s8, a0, t3
1505:             xor          t3, zero, s6
1506:             sltiu        s11, s6, -977
                  bltu         s3, s5, 1512f
                  sra          t1, t1, a4
1509:             addi         s11, t1, -1400
                  slli         t0, gp, 22
                  sltu         a1, t2, s7
1512:             or           s2, sp, gp
                  add          t2, t1, t5
                  blt          s3, t0, 1528f
                  bge          sp, a3, 1525f
                  sll          s4, a5, sp
                  beq          sp, a2, 1535f
                  and          s10, s10, a6
                  add          s3, a6, s7
                  sltu         s6, t2, a3
                  xori         ra, zero, -283
                  slti         s11, s11, -1107
                  add          s6, s11, a7
                  xori         a3, t2, -395
1525:             bgeu         ra, a3, 1528f
                  slli         s3, a5, 13
                  sltiu        t1, gp, 1046
1528:             bgeu         a4, t3, 1529f
1529:             nop
                  srli         s4, a6, 12
                  slt          a1, t1, a4
                  srai         s6, tp, 9
                  beq          s4, a1, 1536f
                  srli         sp, s10, 26
1535:             sra          s2, sp, s1
1536:             slt          t1, t5, a0
                  addi         t2, t0, 553
                  auipc        s9, 770500
                  lui          s3, 243319
                  slli         s10, a6, 21
                  srli         ra, s2, 17
                  srl          a4, t6, tp
                  xor          s9, s1, ra
                  xor          a6, a3, t1
                  bne          a2, t2, 1558f
                  slli         a1, a6, 13
                  sub          tp, t2, t0
                  addi         s5, ra, 948
                  sltiu        zero, t0, 1209
                  bge          t5, s9, 1552f
                  add          s5, a7, t0
1552:             bgeu         s1, a1, 1563f
                  bltu         t3, zero, 1564f
                  beq          a5, s6, 1571f
                  sub          a1, a5, sp
                  slti         ra, s9, 853
                  sltiu        a6, ra, 1458
1558:             beq          s4, a4, 1575f
                  ori          s10, s6, -80
                  lui          a4, 959069
                  auipc        t2, 221717
                  addi         a3, a2, 930
1563:             sll          t0, t0, s6
1564:             ori          t2, sp, -1377
                  bge          ra, t4, 1583f
                  addi         zero, sp, 1355
                  add          t3, s9, a4
                  nop
                  auipc        s8, 1005382
                  srai         a6, a6, 4
1571:             and          a2, t4, a0
                  bgeu         a6, s6, 1584f
                  sltiu        s10, a2, -893
                  add          a3, s1, s6
1575:             srli         t0, a1, 12
                  bge          a2, tp, 1585f
                  sltiu        s2, s11, -563
                  xori         s2, s5, -23
                  auipc        a1, 274349
                  sra          ra, t2, s7
                  nop
                  sltu         a3, a2, s2
1583:             sub          s9, ra, s0
1584:             sltu         t5, gp, t1
1585:             sll          sp, s5, t3
                  slti         t0, s9, 440
                  nop
                  nop
                  nop
                  beq          s9, s3, 1591f
1591:             srai         zero, a0, 31
                  sll          a4, t2, s0
                  slli         t1, a2, 7
                  lui          zero, 755379
                  slli         s2, t5, 29
                  or           t0, s4, t4
                  sltu         s1, a0, s2
                  addi         t1, a7, 60
                  ori          s6, tp, 1965
                  slt          gp, tp, t1
                  slt          tp, a3, a5
                  bne          s9, ra, 1614f
                  lui          s8, 721294
                  slti         t3, a6, -698
                  addi         zero, s7, -146
                  bge          s6, ra, 1610f
                  blt          s9, t2, 1609f
                  beq          t6, s2, 1611f
1609:             add          tp, a3, t5
1610:             sra          a4, s10, s2
1611:             bge          t2, s10, 1630f
                  auipc        t5, 346987
                  xori         sp, s7, 1382
1614:             slt          s9, s0, s5
                  xori         tp, t4, 776
                  srl          s9, ra, sp
                  slli         gp, s9, 29
                  slt          s3, t1, a3
                  addi         t0, s1, 1363
                  sra          a2, zero, t6
                  sub          a0, s6, ra
                  bgeu         ra, a6, 1634f
                  sra          a5, t2, a6
                  srl          s6, ra, t0
                  slti         a0, a3, 1281
                  xor          s1, t0, tp
                  srl          s9, t5, t6
                  bgeu         s2, t4, 1641f
                  auipc        t0, 586025
1630:             and          t3, zero, s9
                  beq          t3, sp, 1632f
1632:             beq          s6, s9, 1642f
                  sra          t1, sp, t3
1634:             sub          t2, s10, gp
                  srl          t5, a3, t3
                  beq          s10, a3, 1646f
                  bltu         t2, s3, 1646f
                  sll          a0, s6, ra
                  slli         t3, a3, 8
                  srli         a3, a4, 12
1641:             nop
1642:             and          tp, ra, a2
                  slli         sp, t4, 20
                  bge          a1, gp, 1658f
                  addi         s10, t4, -1945
1646:             sll          sp, t5, s2
                  and          gp, s2, a5
                  slli         a0, a0, 26
                  srai         a7, s7, 18
                  sltiu        s5, tp, 1610
                  xori         zero, s2, -1105
                  blt          zero, t0, 1662f
                  ori          s6, a3, -1782
                  srli         s10, ra, 5
                  bge          s6, s3, 1656f
1656:             slt          tp, s11, s10
                  srl          a5, a7, t3
1658:             srl          s9, s9, zero
                  sltu         s1, zero, s1
                  andi         s6, a0, 1396
                  or           s7, t2, t2
1662:             sltu         s6, ra, a7
                  slt          a2, s2, s10
                  bne          t6, t2, 1668f
                  bgeu         t2, a1, 1671f
                  sub          a4, a6, a3
                  ori          t2, t6, -940
1668:             slti         t3, a3, 1494
                  slti         s1, sp, -374
                  sub          a6, gp, t5
1671:             srai         ra, s9, 6
                  nop
                  xor          sp, s11, s7
                  add          ra, a2, t0
                  sll          s8, s1, s10
                  andi         t0, a3, 2027
                  sra          a5, a0, t0
                  xor          s10, s5, tp
                  bgeu         s9, s6, 1696f
                  ori          s7, s8, -103
                  beq          sp, s9, 1684f
                  slli         s11, s10, 26
                  and          t0, t2, ra
1684:             slli         a7, s9, 22
                  srli         s3, s9, 2
                  andi         t5, sp, 1279
                  or           t2, s11, a6
                  bne          s9, a6, 1706f
                  slt          a0, a6, ra
                  lui          s2, 211287
                  sltiu        t0, t5, -37
                  beq          a4, s3, 1709f
                  sra          a6, s3, a3
                  xori         t0, gp, -536
                  addi         s7, a3, 504
1696:             blt          s0, a4, 1699f
                  beq          t2, sp, 1699f
                  bge          s8, t6, 1709f
1699:             bne          a6, s9, 1707f
                  beq          t1, t3, 1712f
                  sll          s2, t4, t4
                  slli         a7, t4, 5
                  sub          a6, t4, t3
                  nop
                  lui          s7, 341578
1706:             slli         tp, a6, 5
1707:             andi         s11, s7, 1750
                  srl          t1, gp, t6
1709:             bge          t5, a3, 1720f
                  addi         t0, s10, -1562
                  sll          s8, tp, a1
1712:             sra          s5, s1, s5
                  bgeu         t6, t1, 1718f
                  sll          a2, a1, s3
                  sltu         sp, t1, t4
                  xori         a0, s9, 1904
                  slti         a1, a5, 148
1718:             srl          t1, a6, t0
                  andi         s2, s1, -1941
1720:             bge          s11, a6, 1733f
                  slt          s1, a3, a6
                  add          a2, s7, a0
                  auipc        a7, 824203
                  slt          s3, s7, a4
                  bge          t2, s2, 1736f
                  sub          ra, s3, s4
                  bltu         t2, s7, 1728f
1728:             sltu         s11, s11, s11
                  sltu         s2, a7, s8
                  sra          a6, s3, t3
                  sll          t2, s7, a3
                  blt          ra, s4, 1740f
1733:             srl          a3, a5, t4
                  srai         s1, s9, 28
                  or           a7, a6, s1
1736:             sub          t3, s10, s7
                  sltiu        a7, a4, 1293
                  addi         s4, tp, 711
                  srl          s9, s2, s4
1740:             bgeu         t4, a4, 1758f
                  ori          tp, a6, 218
                  srai         s9, s0, 9
                  bgeu         gp, a5, 1744f
1744:             sub          a5, t2, a2
                  nop
                  slli         s10, t3, 22
                  blt          s10, s11, 1757f
                  and          a1, s5, s0
                  nop
                  sub          tp, a4, t0
                  auipc        a1, 1006871
                  lui          s2, 406577
                  slti         s4, s0, -1214
                  addi         ra, a3, 1079
                  addi         zero, a7, 1361
                  bltu         a0, s2, 1764f
1757:             xor          s7, a4, gp
1758:             slti         a1, t4, -1860
                  sub          sp, s0, s11
                  xor          a5, gp, tp
                  sltiu        zero, s9, 1854
                  bne          s5, a3, 1772f
                  lui          a7, 438689
1764:             beq          gp, a7, 1778f
                  or           tp, a7, s6
                  andi         zero, t2, 139
                  srli         t2, sp, 20
                  andi         sp, s3, -151
                  blt          gp, s8, 1782f
                  beq          a5, a7, 1781f
                  addi         tp, a2, 1760
1772:             andi         s5, t6, -1929
                  sub          s10, s3, a3
                  nop
                  bge          s0, t4, 1777f
                  slt          s11, s11, t4
1777:             bgeu         s5, s0, 1788f
1778:             nop
                  xor          a1, a1, t3
                  beq          t5, s1, 1793f
1781:             blt          zero, a1, 1789f
1782:             or           a4, sp, a3
                  beq          a2, t0, 1786f
                  andi         s4, t6, -268
                  xori         s1, s7, 778
1786:             nop
                  nop
1788:             addi         t5, s0, 783
1789:             xor          a2, zero, s9
                  slti         s1, a7, -2027
                  srai         s1, t1, 10
                  nop
1793:             slli         ra, t2, 28
                  bne          gp, s7, 1795f
1795:             bne          ra, sp, 1813f
                  nop
                  and          s1, gp, s11
                  ori          gp, s2, -2028
                  sll          s5, gp, s5
                  ori          s10, a4, -1042
                  srai         a1, t1, 15
                  xor          a2, a7, s9
                  ori          t3, t3, 517
                  lui          zero, 863093
                  beq          a5, tp, 1822f
                  add          s5, s10, t2
                  auipc        s5, 770274
                  bltu         a1, s4, 1814f
                  nop
                  and          a4, a4, t1
                  srai         s7, sp, 5
                  and          s4, t3, t2
1813:             srl          s11, a6, ra
1814:             blt          t5, a3, 1833f
                  bgeu         t4, s1, 1833f
                  slti         a0, a6, 148
                  bltu         a6, s9, 1822f
                  bltu         t3, a1, 1828f
                  sltu         a5, sp, s3
                  sltu         t5, a3, s4
                  slli         zero, s0, 14
1822:             bgeu         t2, a1, 1825f
                  slt          s8, s0, s9
                  bne          s10, zero, 1826f
1825:             sltu         t0, s0, t5
1826:             auipc        t1, 387647
                  slti         s2, s8, 14
1828:             nop
                  sltu         s3, s11, s1
                  xor          ra, t3, s11
                  srl          s6, t1, gp
                  and          t3, a4, tp
1833:             sltu         a3, a6, t2
                  xor          t5, s2, s3
                  or           gp, s3, s9
                  srli         a1, s2, 29
                  bge          t5, s0, 1848f
                  xori         a3, s10, 619
                  andi         zero, a3, -1549
                  srl          a3, s10, t5
                  add          gp, s3, a7
                  nop
                  slti         sp, a3, 1184
                  srai         gp, s6, 25
                  ori          a7, a4, 1669
                  addi         a4, t4, -138
                  sltiu        s5, s2, -1233
1848:             bne          gp, a0, 1857f
                  and          a2, s5, zero
                  sll          s3, s0, s5
                  srli         t0, t0, 16
                  ori          s1, a0, -1920
                  ori          t2, s4, 1746
                  ori          a7, t2, -1317
                  ori          a6, a3, -517
                  auipc        s6, 88857
1857:             xori         s1, tp, -1224
                  blt          t0, s2, 1870f
                  beq          zero, a1, 1863f
                  auipc        t1, 364100
                  sltu         s2, s10, s0
                  slti         a7, a5, -812
1863:             addi         s1, s1, 1109
                  slti         s7, zero, -1905
                  lui          zero, 109362
                  beq          t1, zero, 1867f
1867:             beq          tp, t1, 1870f
                  beq          a7, s10, 1880f
                  srli         a4, t2, 16
1870:             bltu         s3, zero, 1887f
                  sltiu        s2, s3, -1990
                  sra          s1, s0, t1
                  ori          ra, a2, -1483
                  sra          zero, s6, zero
                  bltu         t3, s6, 1892f
                  beq          a0, t4, 1880f
                  nop
                  bltu         zero, sp, 1896f
                  srai         sp, s10, 6
1880:             bge          tp, t4, 1890f
                  ori          a7, t5, 856
                  slli         ra, s1, 25
                  andi         s10, zero, -1709
                  sltiu        a5, ra, 1202
                  sll          s10, t5, s8
                  lui          s11, 60001
1887:             and          t1, a7, s3
                  sll          s2, a0, t4
                  add          t5, s6, a6
1890:             or           gp, a6, t2
                  sra          s11, a5, zero
1892:             xor          tp, a6, tp
                  bltu         s6, t4, 1912f
                  lui          t3, 791552
                  bltu         a2, s4, 1896f
1896:             andi         s8, tp, 1284
                  bltu         t6, a7, 1906f
                  auipc        s11, 165191
                  add          a6, t5, s11
                  bltu         tp, s3, 1917f
                  or           t5, a2, s1
                  xor          s2, a5, s11
                  sra          t0, tp, sp
                  bne          zero, a4, 1914f
                  slti         s5, s11, -1468
1906:             add          a5, sp, a3
                  slti         ra, t4, 1383
                  and          zero, t0, sp
                  sltu         s4, t0, s5
                  and          s10, a0, s8
                  bne          s11, s3, 1913f
1912:             bgeu         a6, t6, 1920f
1913:             sll          s5, s4, t4
1914:             sub          s1, s0, s2
                  bne          t0, s0, 1918f
                  bne          t4, gp, 1928f
1917:             slli         a5, a7, 23
1918:             addi         a4, gp, -481
                  addi         s6, tp, 976
1920:             xor          s4, gp, t2
                  sll          t1, s2, s11
                  sltiu        sp, ra, -407
                  add          a1, s11, s11
                  nop
                  sll          t5, s2, ra
                  la           t0, sub_1
                  slli         s8, s10, 21
                  slt          a4, s11, t6
                  sltu         t5, s8, t3
                  addi         t0, t0, -449
                  xori         a1, a1, -122
                  blt          t6, t0, main_j1 #branch to jump instr
                  slt          tp, s6, t5
main_j1:          jalr         t0, t0, 449 #jump main -> sub_1
                  bne          zero, t1, 1930f
                  sltu         s11, t0, t4
                  blt          a1, a5, 1938f
1928:             lui          a1, 425339
                  auipc        s5, 18784
1930:             slt          s4, tp, s11
                  sra          a2, a4, s2
                  sltu         a1, s0, sp
                  sltu         ra, zero, t4
                  add          t0, t5, t5
                  addi         a2, s2, -850
                  sll          a2, s4, a0
                  xor          s10, s8, t3
1938:             bltu         s5, sp, 1941f
                  srai         a7, ra, 27
                  bge          a3, s7, 1951f
1941:             sll          a7, a0, sp
                  srl          zero, sp, s3
                  srli         t1, sp, 24
                  srai         s11, s10, 10
                  ori          s11, t0, -467
                  nop
                  beq          s0, gp, 1958f
                  srl          a4, s10, s10
                  blt          t4, s2, 1957f
                  sra          s11, s7, gp
1951:             srai         ra, sp, 1
                  nop
                  srl          s10, ra, a0
                  blt          a1, a4, 1960f
                  bltu         a7, tp, 1968f
                  bge          t5, sp, 1966f
1957:             sltiu        a1, s0, 998
1958:             slt          gp, a3, t6
                  nop
1960:             slli         tp, t2, 1
                  andi         a7, sp, -1938
                  sll          a6, ra, a6
                  blt          s1, a6, 1964f
1964:             auipc        a6, 495792
                  nop
1966:             sra          a2, s4, s5
                  lui          tp, 849250
1968:             andi         a4, gp, 1794
                  bne          s2, zero, 1987f
                  addi         s6, a1, -10
                  or           s3, t5, a1
                  sltiu        a6, s7, -1354
                  xori         tp, zero, 636
                  beq          tp, s10, 1977f
                  sltu         s9, a1, s8
                  add          s3, s4, ra
1977:             blt          s8, a4, 1990f
                  beq          s10, a2, 1980f
                  blt          t3, t4, 1991f
1980:             add          a0, s3, zero
                  sub          ra, sp, a4
                  bge          tp, a1, 1996f
                  bltu         sp, s10, 1984f
1984:             sltu         s3, s3, a0
                  bne          s3, ra, 1989f
                  and          s8, a1, s5
1987:             bltu         a0, t3, 1988f
1988:             beq          a2, tp, 1991f
1989:             slti         s3, t1, 887
1990:             xor          a0, a7, t5
1991:             xor          a7, s3, t4
                  or           a3, zero, t0
                  bgeu         sp, a7, 2010f
                  nop
                  sll          s1, a7, tp
1996:             addi         zero, gp, -960
                  slt          s9, s3, a5
                  blt          a5, a2, 2010f
                  sltiu        s7, tp, 546
                  blt          t3, a0, 2005f
                  auipc        s9, 454028
                  bge          s4, a4, 2020f
                  srli         t0, s8, 26
                  bgeu         a2, s10, 2010f
2005:             srl          gp, sp, s11
                  nop
                  slti         t3, a4, 717
                  add          t5, ra, t5
                  bne          t5, gp, 2018f
2010:             andi         sp, t4, 1231
                  xori         s7, t3, -1200
                  slti         s11, a7, 1622
                  sltiu        a5, s5, -1236
                  auipc        sp, 726310
                  srli         t5, a1, 6
                  srli         tp, t6, 9
                  slti         a1, s0, -1491
2018:             and          gp, a6, s0
                  or           t5, a7, s8
2020:             xor          s1, s7, s10
                  andi         a1, t2, 1689
                  srai         tp, a1, 19
                  slli         a2, t3, 14
                  auipc        a4, 512594
                  xori         s10, t2, 855
                  sltiu        s10, s10, -734
                  slt          gp, t3, s3
                  ori          tp, t3, 1374
                  sltu         t0, ra, a3
                  xor          s1, s7, a3
                  xor          s5, s10, t3
                  sltiu        gp, s0, -1099
                  nop
                  xor          s3, a7, t5
                  slti         s2, t4, 37
                  and          a7, a4, zero
                  addi         s3, a6, -1844
                  nop
                  or           ra, s5, t0
                  lui          t2, 738731
                  auipc        a1, 145044
                  and          t3, s2, a2
                  bgeu         s6, s1, 2044f
2044:             srli         a7, zero, 7
                  slli         gp, a4, 17
                  addi         s3, a5, -128
                  add          s8, t4, ra
                  and          t5, s9, a0
                  sub          sp, s8, gp
                  or           a0, a3, t5
                  add          sp, ra, s8
                  xori         a7, s3, -685
                  ori          a7, t4, 140
                  add          s4, gp, tp
                  srli         t5, a4, 13
                  srl          t3, sp, s4
                  andi         t2, a1, 330
                  srli         s6, s9, 19
                  beq          s6, s7, 2061f
                  sltu         sp, t4, a5
2061:             bge          s9, a6, 2064f
                  sra          ra, t6, s11
                  srai         s9, t3, 25
2064:             slt          tp, a5, t6
                  slli         s2, s9, 7
                  ori          s6, gp, 1715
                  andi         a4, s10, 300
                  slt          s8, a7, t6
                  slti         s9, a1, -1576
                  andi         t2, t6, 748
                  srai         t3, t5, 9
                  bge          s10, a7, 2082f
                  slti         a6, sp, 1917
                  nop
                  sltiu        s3, t0, 1205
                  andi         t5, s9, 1324
                  lui          s9, 134287
                  nop
                  sra          a4, s4, gp
                  slli         tp, sp, 19
                  sra          s1, s0, a4
2082:             xori         gp, tp, 1773
                  ori          a1, s3, 1451
                  sll          a0, s1, s3
                  slt          s9, a3, s11
                  bne          tp, s7, 2089f
                  xori         s9, ra, 2008
                  sub          s4, s3, a2
2089:             or           s4, s4, s6
                  auipc        s4, 872931
                  slti         a5, s2, -2025
                  sltu         zero, s9, sp
                  nop
                  sub          t3, s11, a6
                  slli         s1, t4, 11
                  or           a2, s1, t2
                  srli         s11, t1, 9
                  bge          zero, a5, 2115f
                  ori          s7, t0, 1865
                  srl          tp, t6, a1
                  bltu         t2, s7, 2114f
                  blt          s1, s2, 2104f
                  bltu         t4, t4, 2113f
2104:             sub          a2, s1, tp
                  sra          s9, a0, s1
                  nop
                  bne          a2, s10, 2126f
                  sltu         a7, ra, s9
                  or           s2, t3, t5
                  lui          gp, 184577
                  bgeu         s6, a2, 2124f
                  srl          s11, a1, a0
2113:             nop
2114:             and          s2, s0, s6
2115:             srli         t0, s0, 19
                  beq          s6, t5, 2124f
                  andi         a7, t6, 1912
                  xor          a7, t2, s3
                  srli         a0, s1, 22
                  add          s5, t2, t1
                  ori          a7, s7, 621
                  blt          a4, t1, 2132f
                  bltu         t5, s5, 2124f
2124:             srai         gp, s4, 18
                  slli         t1, s6, 12
2126:             srai         t1, ra, 26
                  bgeu         s8, a1, 2135f
                  beq          s5, a5, 2139f
                  srai         a4, s9, 26
                  sra          s5, t5, a7
                  add          t0, s7, s9
2132:             add          s8, s2, a1
                  bltu         s8, s9, 2145f
                  blt          s10, a2, 2148f
2135:             or           a3, a6, t4
                  ori          a7, sp, 97
                  andi         s5, s5, 1354
                  add          s7, t1, a0
2139:             beq          a0, s2, 2157f
                  ori          a7, t4, -1166
                  xor          a5, a6, a2
                  beq          zero, s5, 2153f
                  sltiu        sp, sp, 650
                  slli         a7, a7, 31
2145:             lui          gp, 620079
                  sll          s3, s3, ra
                  andi         t1, t5, 433
2148:             bne          a6, a0, 2159f
                  sub          s9, s0, t2
                  slti         a1, t3, 1648
                  srli         s1, sp, 1
                  blt          ra, s1, 2171f
2153:             lui          s6, 975099
                  ori          tp, s6, 1981
                  sll          t3, t2, s6
                  ori          s1, a5, 1211
2157:             sll          s1, gp, gp
                  lui          ra, 460254
2159:             addi         t5, s2, -951
                  bge          tp, zero, 2173f
                  srai         t1, s1, 7
                  srai         t2, a3, 27
                  auipc        t3, 394825
                  ori          sp, s4, -257
                  slt          t2, a3, t2
                  lui          s3, 492293
                  slti         s7, zero, 1981
                  addi         tp, t0, -1616
                  bgeu         s4, s7, 2170f
2170:             srl          t3, ra, s6
2171:             sll          s5, t1, a3
                  addi         s6, s11, -1599
2173:             xor          a3, s3, s0
                  addi         s10, s8, -182
                  bltu         a7, s9, 2185f
                  slli         s9, s9, 7
                  lui          a6, 969425
                  sra          s8, t1, t1
                  sll          a4, t3, t1
                  srl          s2, s2, t5
                  bgeu         a4, t4, 2189f
                  slt          zero, a2, t6
                  sub          s10, s7, s2
                  srai         a0, ra, 22
2185:             srai         zero, s10, 6
                  addi         zero, a3, -129
                  add          s9, t4, a0
                  sub          a4, s11, t4
2189:             ori          a4, t1, -1385
                  slli         t2, t5, 12
                  xori         s6, s11, -1005
                  slli         s10, s4, 0
                  sltiu        t3, tp, -287
                  srli         t1, a6, 7
                  or           t2, a3, a7
                  srli         a7, s8, 4
                  sll          s7, t6, t4
                  sll          a0, t1, t0
                  beq          s1, t2, 2200f
2200:             xor          zero, t2, a4
                  slti         s4, s7, 1151
                  sltu         s8, a2, a1
                  sltu         ra, a0, s5
                  slt          a1, a6, a4
                  xori         a5, a5, -212
                  blt          zero, s2, 2214f
                  lui          t1, 227281
                  add          a3, s9, a0
                  lui          t0, 192596
                  slt          t3, s3, t1
                  lui          a6, 702730
                  blt          t3, s2, 2214f
                  xori         s6, a3, 951
2214:             ori          s5, a4, 108
                  xor          s1, a7, zero
                  slli         t5, s2, 22
                  lui          a7, 739784
                  lui          s5, 368789
                  lui          a6, 1041960
                  or           zero, a7, sp
                  add          s11, sp, a5
                  sltu         tp, a6, a0
                  xor          a1, a2, gp
                  bgeu         s7, a1, 2235f
                  xor          a0, tp, t5
                  auipc        t2, 917245
                  sll          gp, s1, s3
                  bgeu         s7, t4, 2231f
                  bne          t6, a0, 2246f
                  addi         sp, t4, -1095
2231:             or           ra, tp, a7
                  nop
                  lui          s4, 348848
                  xori         s2, s8, -324
2235:             bge          s6, s9, 2240f
                  addi         a3, zero, 1219
                  auipc        tp, 709361
                  beq          s5, a2, 2255f
                  nop
2240:             bgeu         a2, zero, 2242f
                  srl          a0, a7, t1
2242:             slt          a0, t0, gp
                  slti         ra, a0, 1785
                  srli         s4, zero, 23
                  xori         t3, t6, -1455
2246:             and          a7, s9, gp
                  add          a7, s3, s7
                  andi         s4, tp, -1302
                  lui          a2, 301679
                  nop
                  add          a6, tp, t1
                  slli         tp, t6, 2
                  xor          a4, t3, t5
                  or           s10, sp, a5
2255:             slli         s9, s6, 29
                  or           a6, s4, t4
                  srai         sp, s10, 12
                  sra          s9, sp, ra
                  srli         a5, t4, 15
                  srl          t0, s2, t5
                  ori          t2, gp, 1649
                  add          a0, t3, t5
                  xor          a3, a2, t3
                  sra          a2, t5, s0
                  nop
                  andi         tp, t5, 1893
                  srli         a4, s1, 17
                  bne          t3, s4, 2271f
                  bge          a0, t6, 2279f
                  sra          a5, s5, sp
2271:             bltu         s6, t4, 2282f
                  slti         zero, s0, 331
                  add          a4, s2, s6
                  or           t2, tp, s9
                  blt          t4, a0, 2279f
                  sltiu        a2, s5, 1904
                  and          s9, a4, s10
                  blt          s2, s8, 2288f
2279:             and          t5, s11, s2
                  beq          a0, a4, 2283f
                  blt          a6, a4, 2290f
2282:             beq          t5, a5, 2296f
2283:             blt          sp, a5, 2295f
                  add          s7, t4, tp
                  bne          s11, a7, 2296f
                  lui          sp, 188951
                  xor          a3, gp, s3
2288:             sltiu        tp, s5, -1239
                  sltu         s10, tp, zero
2290:             auipc        t1, 244745
                  add          sp, t3, s10
                  addi         s8, a7, 124
                  nop
                  bne          s1, s8, 2307f
2295:             bge          s8, s8, 2296f
2296:             bltu         s4, s1, 2302f
                  and          t2, s9, tp
                  and          t5, s4, t5
                  andi         gp, a3, -1209
                  bltu         s11, s11, 2312f
                  sra          a3, t2, s8
2302:             sub          s7, t0, s2
                  andi         a0, s5, 679
                  bgeu         ra, s5, 2322f
                  srli         t0, a7, 22
                  beq          t2, t4, 2324f
2307:             srli         t5, a2, 7
                  sub          sp, a5, sp
                  blt          ra, t0, 2311f
                  sltu         zero, t1, s3
2311:             andi         s11, s9, 1537
2312:             andi         sp, s1, -1730
                  sltu         t0, s7, s9
                  andi         s7, s10, 85
                  slt          s8, a0, s1
                  beq          s8, sp, 2329f
                  bne          t0, t0, 2327f
                  addi         s7, t3, 1266
                  srli         a3, a2, 15
                  slli         zero, s2, 24
                  and          zero, ra, zero
2322:             sll          t0, s11, a2
                  sltu         t3, gp, tp
2324:             lui          t1, 172888
                  sltiu        a5, a6, 1702
                  sll          s6, a1, ra
2327:             slti         s6, a6, -34
                  auipc        s5, 892561
2329:             or           zero, a6, t4
                  sltu         a5, sp, s1
                  nop
                  sra          t1, a2, t6
                  bne          t4, s4, 2350f
                  or           a0, s8, sp
                  addi         s4, s5, -512
                  bne          s10, s4, 2339f
                  sub          sp, zero, a3
                  sltiu        tp, s11, 937
2339:             auipc        zero, 730085
                  and          a3, a5, s10
                  xori         a4, t3, 1770
                  addi         t5, s1, 1250
                  sub          sp, ra, s3
                  bgeu         a5, s9, 2363f
                  sra          s9, s2, a5
                  sltu         ra, sp, t3
                  bne          s8, a7, 2359f
                  sub          t1, s4, a1
                  sub          s9, s4, s8
2350:             auipc        s1, 986229
                  nop
                  or           t2, a5, s10
                  or           s9, t3, t3
                  lui          tp, 888109
                  auipc        a0, 253090
                  auipc        a4, 282005
                  xor          gp, t6, s1
                  add          s4, a3, ra
2359:             slti         s7, s10, 1480
                  andi         t0, t0, 345
                  addi         t3, a2, -580
                  srl          s5, zero, tp
2363:             sltiu        tp, t0, 460
                  slt          a0, s2, a4
                  srli         s3, ra, 4
                  nop
                  ori          s2, t3, -754
                  sll          a0, a6, a2
                  srl          a6, s0, s4
                  bgeu         a6, sp, 2373f
                  xor          tp, a6, t4
                  bne          s10, s9, 2384f
2373:             sltiu        tp, zero, -706
                  blt          s8, t5, 2385f
                  addi         ra, zero, -327
                  sll          a1, sp, tp
                  blt          t4, ra, 2388f
                  sll          t3, s3, tp
                  sll          a6, s7, s4
                  add          t0, a5, a0
                  andi         s3, s6, -1696
                  slti         a7, t2, -1816
                  xori         s4, ra, -1470
2384:             andi         ra, s0, 651
2385:             slli         a5, a6, 16
                  auipc        tp, 1005755
                  add          ra, s2, t1
2388:             auipc        s7, 745050
                  xor          s6, s8, a4
                  andi         a7, t2, -1656
                  blt          s1, t6, 2408f
                  xor          t5, s10, sp
                  bltu         a4, a4, 2403f
                  srai         a2, sp, 10
                  sra          a4, t0, a5
                  slli         a2, s5, 1
                  slti         t3, t1, -183
                  auipc        sp, 732148
                  slli         s8, sp, 11
                  bge          t5, t4, 2401f
2401:             or           a6, s10, s2
                  andi         s8, t6, 1770
2403:             xor          t3, s7, t5
                  bge          s7, a4, 2417f
                  bltu         a0, s9, 2419f
                  sub          a3, s2, zero
                  la           a5, region_0+1872 #start riscv_load_store_rand_instr_stream_15
                  slti         a1, t5, -975
                  srli         a2, t1, 0
                  sw           s3, -196(a5)
                  sb           gp, -1289(a5)
                  srli         s3, s3, 18
                  slti         s1, a3, 1063
                  nop
                  slt          s4, t6, s9
                  lb           s10, -508(a5)
                  sb           t0, -1242(a5)
                  lhu          s3, -1770(a5)
                  sltiu        t3, a6, 1074
                  lb           s8, -602(a5)
                  sub          s7, tp, s9
                  andi         gp, a3, -1143
                  lbu          s10, -1585(a5)
                  srai         s5, s11, 9
                  addi         sp, t5, -477
                  lbu          s2, -1275(a5)
                  sb           s0, -269(a5)
                  lh           s2, -588(a5)
                  lhu          ra, -1072(a5)
                  lbu          zero, -267(a5)
                  lh           t0, -848(a5)
                  lbu          t2, -1827(a5)
                  srli         s6, s9, 6
                  sltiu        t0, s9, -1350
                  slti         t0, a3, 1663
                  andi         s6, t4, -1676
                  sb           s11, -1133(a5) #end riscv_load_store_rand_instr_stream_15
                  bltu         a1, a5, 2415f
2408:             sll          t0, a7, tp
                  xor          s7, t3, t5
                  srai         a0, gp, 26
                  auipc        a4, 573932
                  srai         s8, s10, 2
                  sltiu        s11, s4, -645
                  sltu         a7, a4, t4
2415:             or           s3, t4, a7
                  and          s3, s4, a5
2417:             srai         t3, a0, 3
                  addi         s9, s9, 1575
2419:             slli         s2, s10, 19
                  bltu         gp, s5, 2423f
                  srli         s8, a4, 3
                  blt          s5, s3, 2440f
2423:             slt          s1, a7, a1
                  la           s9, region_0+1655 #start riscv_load_store_rand_instr_stream_4
                  lw           a7, -7(s9)
                  lb           s5, 14(s9)
                  sub          sp, t2, s1
                  sub          t5, s3, a1
                  add          a1, sp, s11
                  sb           a7, 15(s9)
                  lbu          s1, 6(s9)
                  lw           s10, 1(s9)
                  sltu         a0, t4, s9
                  lbu          a0, 10(s9)
                  lb           s7, -6(s9)
                  srai         s8, s7, 28
                  lbu          sp, 12(s9)
                  lbu          t0, -2(s9)
                  lb           a0, -4(s9)
                  lbu          a3, 3(s9)
                  sb           s0, -14(s9)
                  lhu          a7, -3(s9)
                  lhu          tp, -11(s9)
                  lw           s8, -3(s9)
                  nop
                  slti         tp, a4, -1370
                  lb           a3, 12(s9)
                  nop
                  sb           sp, -8(s9)
                  nop
                  sb           s1, 16(s9)
                  lbu          a0, 10(s9)
                  lbu          t2, 1(s9)
                  sh           s2, -3(s9)
                  auipc        a0, 711919
                  xor          t0, sp, a7
                  sb           t4, -14(s9)
                  sb           a3, -1(s9)
                  lb           s6, -3(s9) #end riscv_load_store_rand_instr_stream_4
                  beq          tp, a5, 2435f
                  xor          s9, s10, t1
                  andi         a0, s5, 996
                  bgeu         s7, s2, 2435f
                  slti         tp, zero, 915
                  sll          a0, a2, gp
                  andi         sp, sp, -1642
                  bne          t4, t2, 2432f
2432:             andi         t5, s5, 1433
                  sub          a0, s4, s2
                  add          zero, s8, s7
2435:             nop
                  blt          s4, tp, 2454f
                  and          s5, s7, a4
                  sll          s3, a5, s5
                  sra          zero, t2, a5
2440:             srli         a1, s8, 13
                  sll          s2, t6, a3
                  srli         t1, a3, 7
                  xor          s10, ra, tp
                  sltu         a7, s10, a4
                  bge          a5, t5, 2451f
                  bgeu         t6, s4, 2450f
                  andi         t3, a0, 579
                  and          a3, t6, s9
                  sra          t1, t0, s2
2450:             addi         a5, sp, 696
2451:             nop
                  sra          s2, a1, s9
                  or           s3, s9, a5
2454:             srl          zero, a5, tp
                  sra          s8, s1, t4
                  blt          s10, a3, 2457f
2457:             beq          a0, zero, 2459f
                  ori          s8, s1, -382
2459:             nop
                  srli         s5, zero, 29
                  sltiu        zero, a2, 453
                  xor          sp, t4, a0
                  sltiu        t5, s9, 535
                  sra          s11, a2, tp
                  blt          a1, a2, 2470f
                  blt          t4, a3, 2475f
                  srai         s5, a1, 1
                  srai         a5, s5, 5
                  sll          t0, t1, zero
2470:             slt          s10, s0, a5
                  slt          s11, ra, a1
                  xori         tp, s8, 1164
                  sll          s3, gp, a4
                  lui          t0, 343064
2475:             slti         s4, t3, -68
                  bge          s4, t4, 2486f
                  bge          tp, a4, 2479f
                  sltu         t3, tp, t3
2479:             sll          s2, s9, s9
                  or           s2, t5, s3
                  andi         a7, a4, -617
                  sltiu        s5, t4, -329
                  nop
                  add          t0, s6, tp
                  srl          t2, tp, a5
2486:             srai         s1, t6, 1
                  srl          s11, a4, a6
                  auipc        a5, 204814
                  slti         a2, t0, 1160
                  srli         zero, t1, 30
                  lui          a4, 142712
                  or           ra, a5, s10
                  sub          t2, t2, gp
                  beq          s11, t3, 2495f
2495:             auipc        a5, 731046
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            srl          a2, a4, s4
                  srai         zero, s2, 0
                  srli         s1, ra, 21
                  ori          s6, t1, 184
                  addi         s0, s0, -16
                  or           a7, s5, s4
                  and          s6, a6, t2
                  auipc        a7, 92076
                  ori          t1, a5, 373
                  sw           t0, 4(s0)
                  andi         gp, t0, 728
                  sltiu        a3, gp, 2008
                  la           s10, region_1+1241 #start riscv_load_store_rand_instr_stream_0
                  sw           s5, 51(s10)
                  lb           a3, -22(s10)
                  lb           s8, -31(s10)
                  lh           s2, 53(s10)
                  xori         a2, t2, 800
                  sltu         t5, a1, s7
                  srai         t2, t6, 3
                  srli         s5, t4, 19
                  sb           s1, -22(s10)
                  lb           sp, -27(s10)
                  slli         a5, t6, 0
                  sb           tp, 22(s10)
                  lb           s8, -52(s10)
                  sll          s3, s5, a5
                  lb           a1, 10(s10)
                  lhu          ra, -45(s10)
                  lb           s11, -12(s10)
                  lhu          a7, -59(s10)
                  lb           s11, 63(s10)
                  sltiu        a7, ra, 1646
                  lui          t2, 299411
                  sb           s6, 36(s10)
                  slli         s8, s10, 4
                  add          a1, s3, s10
                  lbu          ra, -32(s10)
                  lhu          t2, 23(s10)
                  lhu          s11, 43(s10)
                  lbu          s9, 12(s10)
                  auipc        t3, 1021440
                  or           s1, s7, tp
                  lhu          s6, -5(s10)
                  lb           t3, 20(s10)
                  xori         s5, s6, -1215
                  or           tp, a1, zero
                  sb           s9, 54(s10)
                  sltu         a5, s0, s1
                  sh           s10, -25(s10) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_0+422 #start riscv_load_store_rand_instr_stream_2
                  lbu          t3, 15(s8)
                  sll          s11, a1, s0
                  lh           sp, 4(s8)
                  lbu          t3, 15(s8)
                  sb           s2, -16(s8)
                  lbu          a7, 7(s8)
                  lb           s1, -13(s8)
                  lhu          s1, -2(s8)
                  slli         s3, s8, 23
                  sb           s10, 9(s8)
                  lbu          zero, 9(s8)
                  srli         tp, s8, 10
                  and          t5, t4, s10
                  auipc        t5, 208362
                  sb           a0, -3(s8)
                  sb           a6, 4(s8)
                  nop
                  sra          s7, gp, s8
                  lhu          zero, -14(s8)
                  sb           s3, -12(s8)
                  andi         s7, t2, 1399
                  xori         a6, a0, -210
                  nop
                  sb           s3, -13(s8) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+72 #start riscv_load_store_rand_instr_stream_3
                  or           s6, s10, s2
                  sb           sp, 5(sp)
                  lh           ra, -10(sp)
                  lb           a2, -5(sp)
                  slti         t2, s8, 406
                  sb           tp, 11(sp)
                  andi         ra, tp, -545
                  andi         a3, t3, -709
                  ori          s8, s4, -1903
                  sub          s11, s0, a0
                  lbu          a5, 15(sp)
                  lw           t0, -16(sp)
                  auipc        s4, 9298
                  or           s6, a7, t2
                  or           a4, s8, gp
                  xor          a4, zero, sp
                  addi         a2, s7, 1057
                  lb           a3, 10(sp)
                  sb           t0, 7(sp)
                  lb           a2, 7(sp)
                  lbu          a2, 3(sp)
                  srl          a4, s3, zero
                  slt          tp, tp, gp
                  andi         s7, t6, -989
                  lb           s7, 13(sp)
                  lbu          s1, -6(sp)
                  lhu          t0, -8(sp)
                  sw           a2, 12(sp)
                  sub          s10, t0, a3
                  xor          a4, a6, s11
                  slli         t2, s3, 26
                  srli         t1, sp, 5
                  or           a2, s10, s4
                  lb           t1, 1(sp)
                  sb           s6, 3(sp)
                  sb           tp, -5(sp)
                  lh           t5, -14(sp)
                  lbu          a6, -11(sp)
                  sub          s11, t1, a6
                  lbu          s2, 7(sp)
                  lhu          a3, 14(sp)
                  srli         tp, zero, 28
                  lbu          t3, -5(sp)
                  sb           a3, -1(sp)
                  sh           zero, -4(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_1+427 #start riscv_load_store_rand_instr_stream_4
                  lb           s10, 90(s8)
                  and          a2, s9, t5
                  slli         s7, s5, 1
                  sll          a0, s11, a5
                  sra          a5, a3, a5
                  lbu          a7, -154(s8)
                  lh           s6, 87(s8)
                  sh           a3, -219(s8)
                  lbu          a7, 103(s8)
                  sb           s8, 184(s8)
                  sb           t2, 209(s8)
                  sb           t6, 224(s8)
                  lbu          s7, -142(s8)
                  lbu          a0, -64(s8)
                  lb           t2, -158(s8)
                  slt          a3, s1, s11
                  lui          t3, 485651
                  lb           a5, 50(s8)
                  sra          sp, a0, a0
                  sb           t4, -228(s8)
                  lb           s6, 218(s8)
                  lbu          sp, 196(s8)
                  lb           a7, 173(s8)
                  slti         s10, s5, 1928
                  sw           s1, 141(s8)
                  sub          t0, ra, s10
                  slti         a2, s8, -1665
                  sb           t3, 244(s8)
                  sltiu        s11, t0, 1806
                  sb           s9, 247(s8)
                  lw           s3, 81(s8)
                  srai         t2, s9, 17
                  sb           s7, -118(s8) #end riscv_load_store_rand_instr_stream_4
                  xori         a1, t1, 1772
                  slt          t2, s8, t3
                  lui          a0, 161794
                  srl          t3, a0, t0
                  add          s1, gp, t1
                  auipc        s4, 857594
                  andi         s11, tp, 16
                  bgeu         t5, t4, 14f
                  xori         tp, t3, 1284
                  add          zero, t4, tp
                  beq          a7, s5, 13f
                  bgeu         a3, s0, 27f
                  sll          s4, t4, s1
13:               addi         a0, s1, 1834
14:               bge          s1, s0, 34f
                  blt          s3, a0, 35f
                  andi         t1, tp, 1984
                  sltu         zero, t3, s7
                  auipc        a3, 589984
                  addi         a3, t3, -319
                  and          s9, s10, s2
                  srl          zero, s1, a2
                  lui          s6, 536049
                  slli         s8, zero, 28
                  add          s10, s11, a2
                  or           t1, a1, a4
                  nop
27:               bgeu         s10, t3, 41f
                  sll          a5, s1, t0
                  srl          s1, t0, gp
                  sub          t2, a3, t6
                  sra          s8, s1, s5
                  bge          a2, a2, 33f
33:               slti         s4, a2, -1794
34:               lui          s7, 668384
35:               sltu         s11, s7, t1
                  srai         tp, a0, 1
                  slli         tp, s4, 28
                  add          a7, a6, s8
                  bgeu         gp, sp, 42f
                  lui          s7, 350826
41:               ori          a3, a1, 1361
42:               beq          s4, s3, 50f
                  auipc        t5, 466376
                  sltiu        t1, t6, -1239
                  sra          sp, a0, s6
                  blt          s7, s0, 52f
                  srl          t3, a6, a5
                  sra          s6, t0, ra
                  sltiu        t0, s8, -149
50:               xor          s6, a6, t5
                  sra          s9, a1, s11
52:               nop
                  and          s8, a0, t4
                  nop
                  sll          s9, s6, ra
                  sra          a5, s7, a4
                  sll          gp, a0, t4
                  nop
                  sra          s5, tp, t4
                  srli         a3, zero, 29
                  bgeu         t6, t0, 79f
                  bne          s11, a3, 78f
                  blt          t5, s10, 83f
                  auipc        a5, 736973
                  srli         s7, a7, 19
                  sub          a1, gp, sp
                  or           zero, a2, a3
                  srl          a6, s1, a2
                  slt          s5, t0, a7
                  xori         t1, a7, 1142
                  srai         s7, ra, 9
                  srai         ra, s0, 25
                  xor          s3, a6, a0
                  slli         s11, t3, 0
                  or           a6, s1, t2
                  beq          s9, s11, 95f
                  srai         a3, t5, 5
78:               beq          gp, s5, 91f
79:               bltu         a5, s6, 92f
                  sll          a3, s2, a5
                  blt          s9, s8, 94f
                  add          t0, ra, a3
83:               auipc        s8, 271845
                  la           sp, region_1+140 #start riscv_load_store_rand_instr_stream_5
                  sra          s4, gp, t0
                  nop
                  slt          a2, t3, s10
                  sra          s7, s6, t2
                  srl          t1, t4, a5
                  sb           s8, -102(sp)
                  lbu          ra, 55(sp)
                  sltu         s7, t4, sp
                  add          a0, a5, a5
                  sltu         t2, s5, a4
                  lb           a2, -75(sp)
                  addi         s7, zero, 787
                  lhu          s2, 86(sp)
                  sb           s5, 137(sp)
                  add          s8, t3, s5
                  sltu         s4, t2, t2
                  sh           s10, 104(sp)
                  auipc        t5, 482411
                  srli         s3, s0, 13
                  xori         gp, s1, -1593
                  ori          zero, a1, 346
                  sh           s1, -120(sp)
                  add          s2, s11, s8
                  add          a6, s11, sp
                  srl          a1, a0, s6
                  sb           t3, 218(sp)
                  lbu          a7, 175(sp)
                  sra          a2, zero, t2
                  lh           s2, 134(sp)
                  add          a0, sp, gp
                  lh           t2, -102(sp)
                  andi         s1, ra, 1445
                  sll          s10, t0, a7
                  lbu          ra, 49(sp)
                  lb           s4, 93(sp)
                  lb           s6, -16(sp)
                  sb           s10, 152(sp)
                  lb           gp, -109(sp)
                  sh           a4, -84(sp)
                  lbu          tp, 195(sp)
                  lhu          t3, -120(sp)
                  lb           t3, -56(sp)
                  sb           s0, -85(sp)
                  xori         zero, a7, -667
                  lb           a7, -80(sp)
                  lui          s2, 653466
                  srl          a2, a3, t0
                  lh           t2, 94(sp)
                  ori          zero, a5, -1782
                  lh           s2, 104(sp)
                  xori         t5, t5, 115
                  lbu          s10, 242(sp)
                  sw           s0, -72(sp)
                  lb           t2, 206(sp) #end riscv_load_store_rand_instr_stream_5
                  sll          s2, gp, a4
                  lui          t1, 394271
                  lui          s5, 229494
                  srl          tp, t0, s3
                  srli         s5, s9, 29
                  bge          s1, s1, 99f
                  srai         s3, a0, 27
91:               slli         a3, s11, 7
92:               beq          s4, s8, 110f
                  and          a3, a2, tp
94:               blt          gp, a0, 108f
95:               or           a5, ra, a0
                  addi         a2, t4, -1193
                  sltiu        a5, gp, -1404
                  or           zero, t0, s8
99:               slti         gp, a1, -1193
                  nop
                  bne          ra, a6, 112f
                  auipc        a6, 276124
                  srli         tp, s9, 14
                  sll          s9, s7, t0
                  bltu         t0, s0, 107f
                  sll          s5, s1, s3
107:              sra          a4, a0, t2
108:              and          s7, s4, tp
                  and          t0, t5, t3
110:              slti         a1, s3, 1501
                  and          s10, s1, t0
112:              sltu         a3, s5, s1
                  slt          s11, t5, s5
                  slti         a5, a4, 1930
                  ori          zero, t4, -800
                  sll          a3, ra, s10
                  andi         a1, a5, 1173
                  or           s2, t3, t0
                  blt          s4, a4, 134f
                  bltu         s10, t3, 125f
                  sra          s4, s2, tp
                  xori         s9, t5, 241
                  xor          t5, s6, a2
                  sub          a1, a5, a6
125:              or           t0, a6, s11
                  auipc        s2, 885571
                  sra          a2, t4, s1
                  beq          a2, t2, 144f
                  sub          t5, s7, s11
                  sll          sp, s4, a5
                  slt          a3, a3, s9
                  sub          s10, a3, a2
                  beq          t6, a1, 146f
134:              auipc        a2, 91738
                  auipc        sp, 80832
                  or           s6, t0, s7
                  srli         s10, t0, 0
                  slli         s1, s1, 23
                  and          a3, s4, zero
                  bgeu         a6, ra, 153f
                  srl          zero, zero, a3
                  sll          ra, s9, a4
                  blt          s11, a1, 144f
144:              and          ra, s7, s4
                  srl          a6, s3, s6
146:              sra          a7, t2, a3
                  sltu         a7, t5, s10
                  bge          a6, t3, 150f
                  slt          gp, a3, a3
150:              bne          tp, gp, 162f
                  blt          s3, s0, 166f
                  xor          s8, a5, t0
153:              bltu         a2, s7, 165f
                  add          a1, a1, t6
                  srl          a7, a5, s11
                  addi         sp, s11, -1686
                  nop
                  blt          ra, s7, 174f
                  auipc        s8, 790735
                  srai         s5, t1, 10
                  nop
162:              bltu         sp, gp, 170f
                  andi         tp, t2, -161
                  sltu         a2, s8, s3
165:              nop
166:              sltiu        s4, a5, 1773
                  slti         a0, ra, 683
                  and          a7, s2, ra
                  andi         s9, t2, 1953
170:              auipc        a6, 496231
                  sra          a5, a1, a2
                  andi         s7, zero, -363
                  slti         s6, a7, -35
174:              auipc        s6, 767118
                  sltu         s8, s10, a2
                  la           a6, region_1+1116 #start riscv_load_store_rand_instr_stream_1
                  lui          s10, 955799
                  sh           t3, -12(a6)
                  lb           s6, -2(a6)
                  lb           s10, -14(a6)
                  lhu          a1, 6(a6)
                  sb           t3, 14(a6)
                  sltu         t2, zero, a1
                  lb           s3, -13(a6)
                  ori          s10, a4, -527
                  lbu          a4, 3(a6)
                  and          tp, t4, a2
                  nop
                  lb           zero, 5(a6)
                  lb           t2, -2(a6)
                  and          t2, sp, ra
                  lh           t2, 14(a6)
                  sh           s4, 12(a6)
                  addi         zero, s8, -811
                  add          zero, s9, s4
                  slti         s6, ra, 1592
                  andi         gp, s10, -1632
                  sb           s10, 15(a6)
                  slti         t5, a6, 98
                  sltiu        a3, t4, 1199
                  lhu          a2, 10(a6)
                  lh           a3, -2(a6)
                  lbu          t0, 6(a6)
                  sll          s10, gp, t4
                  xor          a3, s11, s4
                  sb           sp, 11(a6)
                  sb           zero, -16(a6)
                  xori         s10, t5, 1013
                  slt          a5, t4, gp
                  sb           a2, 1(a6)
                  lb           s4, 7(a6)
                  lw           s4, -4(a6)
                  lbu          a5, 13(a6)
                  and          s1, gp, s9
                  lhu          a4, -4(a6)
                  lb           t2, 10(a6)
                  addi         s2, s11, -573
                  sb           t4, 7(a6)
                  add          s11, t0, s8
                  lbu          s7, -9(a6)
                  srai         s1, s6, 6
                  sll          t3, a3, a0
                  lb           zero, 5(a6)
                  lb           s3, 11(a6)
                  or           t0, a7, t3
                  lh           s1, 2(a6)
                  sra          s7, s1, a5
                  sb           s10, 11(a6)
                  srli         a4, a5, 22
                  lbu          a0, -5(a6) #end riscv_load_store_rand_instr_stream_1
                  slt          a4, s1, s0
                  sra          t0, t3, a4
                  nop
                  lui          sp, 304907
                  and          zero, t1, a5
                  bgeu         a0, a6, 186f
                  bge          s11, t3, 192f
                  srl          a1, a4, t3
                  auipc        s5, 197410
                  slti         a2, t1, 679
186:              ori          s10, t2, -148
                  sltiu        s7, t3, 303
                  slti         a2, t3, -989
                  sltiu        s11, zero, 623
                  andi         a7, a0, -811
                  sltu         a1, a3, s7
192:              bge          a2, t2, 212f
                  bltu         a7, ra, 211f
                  xor          ra, tp, a5
                  xor          zero, a1, s7
                  xori         ra, s1, -1210
                  sra          tp, s0, t5
                  bgeu         t0, t1, 200f
                  auipc        s6, 689572
200:              slli         s10, s5, 28
                  bne          s1, t0, 214f
                  srli         a2, s4, 2
                  xor          t1, s4, sp
                  srli         a4, a5, 0
                  auipc        s1, 518971
                  srli         a7, s10, 17
                  lui          a1, 447646
                  bgeu         t2, s3, 228f
                  sltu         s1, s10, t3
                  sll          s4, a1, t0
211:              sub          a1, t5, gp
212:              lui          a1, 598959
                  bge          a6, t1, 231f
214:              sltiu        s2, s7, 5
                  ori          tp, t0, -368
                  bne          s9, s7, 219f
                  srai         tp, s0, 22
                  blt          s9, a2, 224f
219:              slti         t5, s1, -604
                  lui          s1, 348222
                  lui          t1, 745138
                  bltu         s2, ra, 233f
                  srai         t0, s5, 0
224:              xori         s5, s9, 1321
                  blt          t1, t3, 238f
                  sra          a1, a6, a6
                  ori          a7, a4, 22
228:              bltu         s8, s1, 244f
                  and          s3, a3, s0
                  lui          t5, 954728
231:              sltiu        s7, a1, -1527
                  slt          sp, s3, s1
233:              srai         s2, s5, 16
                  bltu         s2, t5, 248f
                  add          a4, tp, zero
                  nop
                  ori          t0, s7, -375
238:              slti         t2, zero, 1438
                  ori          s10, s6, 323
                  sltiu        t3, a7, -1757
                  lui          t2, 586181
                  sub          s2, sp, s8
                  lui          s5, 629895
244:              beq          a0, s6, 263f
                  srli         s7, tp, 1
                  ori          s10, a1, -91
                  blt          a7, s2, 260f
248:              blt          a4, t4, 251f
                  bge          a3, s3, 250f
250:              ori          a5, a0, 1895
251:              sra          a2, t6, t0
                  sra          a4, s0, s8
                  beq          t2, t1, 273f
                  add          s5, s7, ra
                  nop
                  srai         s5, a0, 27
                  sra          zero, a6, t6
                  nop
                  add          a1, a0, s6
260:              slli         t0, a3, 7
                  sub          s1, s2, s11
                  auipc        s8, 162688
263:              lui          s9, 256687
                  auipc        s6, 636209
                  srli         a3, a3, 2
                  ori          ra, t2, 622
                  lui          a5, 279757
                  sub          s5, s11, s11
                  sub          a1, s11, t6
                  bge          s2, a3, sub_8_j12 #branch to jump instr
                  xor          a5, t2, ra
sub_8_j12:        jal          t0, sub_10 #jump sub_8 -> sub_10
                  srai         s11, s3, 15
                  bne          sp, zero, 281f
                  srl          a4, t5, a3
                  addi         zero, t3, -1870
                  sltu         s5, s5, a3
                  andi         gp, a6, 1895
                  or           gp, s9, s0
                  sra          a7, a5, a3
                  blt          zero, a4, 279f
273:              blt          ra, s4, 286f
                  blt          gp, t6, 275f
275:              andi         s10, s0, 1491
                  lui          t1, 332738
                  sub          gp, gp, s0
                  xori         a3, a2, 1909
279:              add          a1, s10, s3
                  bgeu         a0, s1, 293f
281:              add          a7, ra, s2
                  sll          s6, zero, s2
                  beq          s3, s2, 285f
                  auipc        s3, 873151
285:              slti         a7, t0, -1305
286:              beq          s10, s2, 300f
                  lui          a3, 372173
                  beq          a1, tp, 302f
                  xor          s9, s1, s0
                  sltiu        t0, ra, 316
                  slti         a1, s8, 1775
                  bltu         a4, a3, 303f
293:              add          s2, s11, t0
                  nop
                  addi         s10, a2, 1740
                  beq          a1, tp, 315f
                  addi         s4, s10, 940
                  sub          a1, t5, t6
                  beq          a4, s5, 315f
300:              sltiu        a0, s2, -861
                  bne          a3, a3, 319f
302:              blt          t6, t4, 315f
303:              bgeu         sp, s7, 319f
                  ori          a2, s3, -462
                  auipc        s8, 418208
                  xor          a7, s11, s11
                  sub          ra, s3, zero
                  bgeu         a3, tp, 316f
                  sra          s1, s9, a3
                  and          s3, zero, s11
                  sll          s7, a4, sp
                  sll          a6, t6, a4
                  slli         s2, ra, 0
                  beq          s7, a6, 320f
315:              ori          a4, s7, -36
316:              sltu         s2, s8, s7
                  bgeu         s10, tp, 329f
                  sll          s4, t0, s5
319:              bge          t5, t6, 332f
320:              bgeu         a6, s8, 335f
                  bgeu         a1, t3, 339f
                  bgeu         s8, gp, 338f
                  xor          a6, s9, t1
                  bgeu         s10, a4, 326f
                  and          s6, s7, s10
326:              xori         t3, t1, 951
                  sra          t1, s1, s4
                  auipc        s11, 605217
329:              xori         sp, sp, 1665
                  addi         t1, t3, 1787
                  sra          s5, s7, t2
332:              slli         sp, sp, 30
                  slli         t0, sp, 13
                  beq          t3, a6, 354f
335:              sltu         s1, a3, a4
                  sltiu        s3, a0, 1668
                  add          t2, t2, tp
338:              ori          s8, s0, 541
339:              add          s3, a1, s8
                  sltiu        s4, sp, -307
                  slt          a1, sp, s11
                  srl          s9, a5, t2
                  add          s8, s5, s11
                  sltu         a6, a2, gp
                  lui          t0, 94109
                  nop
                  sra          s7, t6, a1
                  beq          s1, s3, 349f
349:              bge          s10, s6, 362f
                  xor          t5, t6, a3
                  bltu         t4, a4, 353f
                  and          a1, a0, gp
353:              ori          a6, a4, -887
354:              sltiu        s5, a3, 350
                  and          a1, a6, t1
                  slti         zero, t1, -518
                  slti         sp, s8, 673
                  bltu         t0, sp, 371f
                  sltiu        t0, s5, 841
                  srl          zero, s3, sp
                  xor          a2, s10, t4
362:              xor          gp, tp, s11
                  xor          s1, sp, t6
                  slt          s7, s7, t6
                  andi         s5, s2, -690
                  or           a1, a2, t3
                  sltiu        s10, s0, -475
                  sub          ra, t2, s3
                  bne          s1, s10, 389f
                  bltu         a4, t4, 375f
371:              andi         t3, a1, -882
                  and          s11, s11, s0
                  bne          s0, t4, 383f
                  sltiu        t1, s8, 315
375:              addi         a6, gp, 219
                  bne          gp, s2, 377f
377:              slti         gp, s1, -492
                  bgeu         s9, s11, 391f
                  lui          t3, 179113
                  bltu         zero, s6, 387f
                  bltu         t1, a1, 395f
                  srl          a6, s10, s3
383:              sub          t1, a4, a4
                  sltiu        s11, t6, -1530
                  srai         a3, s7, 5
                  slt          s4, a2, a2
387:              lui          s10, 506033
                  xori         s1, t4, 1911
389:              slt          t2, t3, s7
                  or           s3, a6, t1
391:              and          s7, a3, a2
                  beq          t2, s0, 395f
                  sra          s7, s3, s3
                  addi         a0, t2, -1936
395:              bgeu         t1, s8, 415f
                  and          s5, s5, s9
                  sra          s6, t2, a2
                  bltu         t3, s10, 401f
                  bltu         t0, s1, 417f
                  sltu         tp, tp, s0
401:              nop
                  addi         gp, t6, 771
                  slt          s10, s7, s2
                  and          a6, sp, s0
                  bne          s8, s2, 418f
                  bne          s4, gp, 419f
                  or           a1, s10, t5
                  beq          ra, sp, 416f
                  sub          a0, zero, t4
                  andi         a1, s6, 473
                  ori          sp, s10, 33
                  xor          s7, a7, a4
                  ori          a7, a3, 1923
                  blt          t0, s9, 420f
415:              nop
416:              srai         s5, ra, 8
417:              lui          a6, 491757
418:              ori          s2, a2, -537
419:              and          s2, t6, s10
420:              slt          a1, s4, t5
                  sll          ra, t2, a7
                  auipc        a1, 671954
                  xori         t3, a3, 894
                  bgeu         s4, t1, 429f
                  srli         s6, s7, 2
                  ori          t3, a2, 388
                  beq          s4, s10, 430f
                  bltu         t3, t6, 442f
429:              sltiu        ra, s7, -1343
430:              bne          t4, t0, 443f
                  bge          t2, t0, 433f
                  bge          gp, s5, 434f
433:              srli         a2, s7, 6
434:              bne          s4, t3, 437f
                  bgeu         a5, a6, 447f
                  ori          s3, t0, 1193
437:              bgeu         s3, t0, 452f
                  lui          t0, 966639
                  sub          s8, s1, t3
                  bge          s7, s2, 458f
                  lui          s6, 532434
442:              addi         t5, s2, -1395
443:              blt          t5, a4, 459f
                  srl          a1, s0, a0
                  bne          s2, s2, 458f
                  bge          t3, t3, 466f
447:              ori          t3, a0, -871
                  ori          s1, zero, 1643
                  sub          a3, a6, s2
                  slti         a4, t4, -121
                  add          sp, a5, a4
452:              and          a5, s3, s9
                  slli         t3, t4, 10
                  sltiu        a6, sp, -1618
                  andi         t3, a1, 1540
                  sra          s1, s3, a0
                  addi         t3, a0, 1484
458:              nop
459:              or           a0, a3, t3
                  bltu         a4, gp, 461f
461:              lui          sp, 593124
                  or           s6, s10, s2
                  bgeu         t0, zero, 483f
                  bne          a1, s10, 477f
                  or           s10, s9, a6
466:              blt          s6, a1, 482f
                  srl          s9, s4, s6
                  ori          t3, a4, -1308
                  srl          tp, t6, s8
                  bge          s4, zero, 484f
                  addi         s9, s5, -633
                  sltu         t2, sp, t1
                  or           s11, t0, s1
                  xor          t0, a0, gp
                  sll          s2, a2, s5
                  bne          s1, a1, 496f
477:              bge          a3, ra, 487f
                  slt          gp, s1, t1
                  srai         sp, s10, 15
                  add          a4, s1, t0
                  and          s2, a4, s0
482:              beq          t0, t6, 493f
483:              bltu         t4, a0, 484f
484:              beq          t3, a3, 491f
                  and          t2, s2, t3
                  addi         s11, s0, 593
487:              xor          a5, s2, a3
                  slti         s11, s5, -1826
                  srli         a4, s6, 3
                  add          a5, s9, sp
491:              srl          s6, zero, t4
                  and          a7, s9, gp
493:              srl          t0, s10, a5
                  andi         s10, a7, 75
                  andi         zero, ra, -501
496:              srli         s4, a4, 3
                  bge          sp, s8, 516f
                  sltiu        a4, a3, 1792
                  blt          a3, a6, 515f
                  lui          a2, 717806
                  ori          s2, t2, 833
                  slti         tp, gp, -1579
                  sltu         a3, a4, s10
                  srli         s7, s9, 31
                  bltu         t0, a0, 512f
                  bne          t1, t1, 520f
                  lui          a3, 272406
                  xor          s8, t3, a1
                  lui          a4, 602425
                  or           s2, s6, s10
                  sub          gp, t1, s3
512:              srli         a4, a1, 25
                  add          s10, s2, zero
                  srl          s7, t5, s10
515:              sra          gp, s7, a7
516:              bne          s4, t0, 518f
                  srli         s11, s1, 7
518:              blt          s4, ra, 521f
                  add          t0, t3, t5
520:              beq          s0, a2, 531f
521:              add          t0, t4, t6
                  slli         s11, t1, 12
                  xori         s6, tp, -661
                  beq          s11, a4, 534f
                  beq          s10, a3, 537f
                  bne          s7, t2, 528f
                  nop
528:              sra          tp, a5, t3
                  add          a5, s10, a3
                  sra          s2, t3, s8
531:              nop
                  xor          a3, s7, t6
                  lui          t0, 166519
534:              slli         a6, s1, 6
                  xor          t2, zero, t3
                  sll          s9, t2, tp
537:              xor          s1, a1, a4
                  srl          s5, s10, zero
                  or           tp, s5, a1
                  blt          a7, t1, 553f
                  add          s9, t4, s1
                  sll          s8, s4, s6
                  bgeu         s7, a7, 556f
                  bltu         s2, s6, 557f
                  slt          a5, zero, t2
                  sll          a3, s6, a6
                  sub          s6, t4, t3
                  auipc        a5, 959000
                  addi         a3, tp, 538
                  andi         t5, a7, 1893
                  bltu         t6, a6, 566f
                  nop
553:              slt          ra, s7, t6
                  addi         t2, a1, 880
                  and          s7, a6, t4
556:              nop
557:              sra          s8, ra, gp
                  srl          a6, s8, s8
                  bne          s11, ra, 572f
                  bne          sp, a2, 561f
561:              slti         zero, s10, 1864
                  ori          s6, t5, -367
                  srli         t2, s8, 7
                  slli         tp, a6, 16
                  slt          a3, a7, s7
566:              sltiu        s1, s10, -1429
                  nop
                  ori          a5, t5, 558
                  sltiu        s6, t1, 696
                  xori         t1, a1, -881
                  beq          s2, t5, 589f
572:              auipc        a5, 886554
                  blt          s3, t5, 592f
                  sub          s8, s11, s3
                  bgeu         s3, a2, 583f
                  srai         a5, a5, 21
                  lui          s3, 325029
                  bge          t2, a7, 579f
579:              srli         s11, t2, 28
                  bne          s6, s0, 600f
                  srl          s11, a7, a6
                  andi         a1, a3, -1605
583:              sltu         a1, ra, a3
                  andi         s2, t4, 1479
                  andi         t0, s5, -1405
                  xori         tp, a5, 771
                  blt          s4, ra, 600f
                  sltiu        s3, zero, -1586
589:              ori          s10, s8, -1516
                  sra          s5, sp, a1
                  srl          a5, t4, a1
592:              slli         t0, tp, 22
                  srai         s2, s9, 9
                  and          s4, tp, s11
                  blt          tp, t0, 613f
                  sltu         s1, t5, s0
                  lui          s11, 662796
                  bne          t5, a0, 604f
                  bgeu         s8, zero, 615f
600:              sltiu        a7, t3, 1356
                  srli         t2, a2, 1
                  sltiu        t0, tp, -1106
                  bltu         t4, s5, 608f
604:              sll          a5, s0, a4
                  sub          t0, s4, s0
                  and          ra, s0, s6
                  bge          s5, s2, 621f
608:              sll          s6, t2, tp
                  sub          tp, t3, a2
                  srli         s6, s4, 12
                  and          s2, a3, gp
                  sra          gp, s11, gp
613:              sll          a2, sp, sp
                  auipc        s7, 1042136
615:              add          t3, s8, gp
                  ori          t3, t5, 1410
                  srai         tp, s6, 11
                  andi         sp, s7, -1303
                  or           s9, a4, zero
                  bne          s5, a3, 636f
621:              slli         t5, a0, 29
                  add          s5, a3, t2
                  andi         zero, s3, -357
                  slt          t3, t2, s7
                  bge          s6, t6, 641f
                  andi         t5, s1, 273
                  or           t2, t1, s6
                  xor          a1, s8, a5
                  addi         a0, s4, 173
                  bltu         s11, t0, 633f
                  auipc        t2, 652763
                  blt          sp, s1, 652f
633:              sra          a2, s7, a7
                  and          s3, t1, s7
                  bne          s7, a2, 655f
636:              blt          s8, s2, 650f
                  xori         zero, s7, -256
                  srai         s2, tp, 1
                  ori          t1, s4, -1457
                  nop
641:              xor          t5, tp, t1
                  and          ra, s10, s0
                  beq          s3, s7, 655f
                  andi         a2, a5, -1097
                  bne          t2, a6, 665f
                  nop
                  xor          sp, s7, t0
                  auipc        s7, 774644
                  bgeu         s5, s7, 650f
650:              sra          s4, a4, a7
                  and          t3, s4, a5
652:              srli         s6, ra, 11
                  xor          s2, s3, a1
                  sltiu        t2, t6, -1289
655:              slti         a1, a5, 927
                  and          t0, s6, s4
                  ori          s4, a0, -448
                  bltu         s3, tp, 660f
                  addi         s7, a7, -561
660:              addi         a1, sp, 683
                  and          s5, s3, a0
                  xor          gp, a5, a6
                  slli         t3, a2, 19
                  nop
665:              srai         s2, a2, 30
                  sll          a1, sp, s2
                  srl          s2, zero, s8
                  sra          a0, a4, zero
                  sltu         s4, tp, a5
                  sll          gp, s8, s6
                  andi         t3, s3, -200
                  bge          a2, a0, 692f
                  lui          t5, 389826
                  andi         zero, s11, 1404
                  andi         a0, s4, -1945
                  srai         s4, s5, 29
                  srli         zero, a5, 9
                  beq          a6, s5, 683f
                  sub          s9, s2, a2
                  sra          a6, s6, ra
                  xor          t0, s5, a5
                  beq          s4, t6, 702f
683:              bgeu         a3, t1, 701f
                  srai         a2, s10, 24
                  or           t5, s6, gp
                  srli         t2, a3, 23
                  slti         s7, s0, 1309
                  sltu         s4, t4, s5
                  srl          t3, sp, s6
                  slli         sp, s6, 17
                  slli         a2, a0, 1
692:              nop
                  sub          s8, s4, a3
                  sltiu        a5, sp, 1195
                  bne          s3, t0, 696f
696:              sub          zero, ra, t6
                  slli         s9, s6, 26
                  sll          tp, t1, a5
                  sra          s7, s4, s11
                  bne          s9, s9, 716f
701:              xor          t5, sp, a3
702:              beq          a2, t4, 715f
                  bne          t0, t0, 716f
                  xor          t0, s10, a1
                  sltu         s7, a2, a0
                  bge          s4, s5, 721f
                  xori         t3, t0, 970
                  xor          zero, a4, s7
                  slli         s3, zero, 9
                  xor          s5, a3, a4
                  sub          s1, t5, gp
                  auipc        s3, 420825
                  ori          s4, s5, 962
                  sltu         tp, s3, s3
715:              addi         s10, t5, 1000
716:              srai         a3, t5, 4
                  bltu         a4, s1, 730f
                  srli         t0, s7, 18
                  srl          a6, s6, zero
                  blt          t2, a7, 730f
721:              auipc        s2, 832703
                  and          s9, s10, a5
                  bge          t6, t2, 730f
                  bltu         s10, s1, 727f
                  sll          a7, s0, s4
                  sll          sp, a5, s5
727:              addi         gp, a3, -614
                  bgeu         t3, ra, 730f
                  ori          zero, a2, -1776
730:              srl          a1, gp, a3
                  auipc        sp, 372397
                  bltu         s10, s8, 743f
                  addi         a5, zero, 948
                  add          a7, t2, s2
                  sll          t5, t5, a4
                  sll          gp, zero, a3
                  sub          a6, s0, a2
                  srai         a0, a4, 0
                  sub          s3, t6, s10
                  and          tp, s8, t2
                  xor          t3, gp, a0
                  sra          t5, s4, sp
743:              blt          t6, t6, 749f
                  slli         a3, ra, 4
                  beq          s1, a6, 753f
                  nop
                  srli         s10, t5, 29
                  or           sp, t5, t2
749:              xori         s8, s4, 2032
                  auipc        s2, 663762
                  ori          a4, a3, -1839
                  sll          t0, tp, s5
753:              sra          s4, a2, t2
                  sltiu        s10, a2, -1752
                  blt          t6, s3, 771f
                  bne          tp, s2, 759f
                  srl          s6, a0, t4
                  slli         a5, a4, 17
759:              addi         t2, t0, -726
                  srai         sp, t0, 29
                  xori         ra, zero, -1628
                  nop
                  slt          s9, t5, sp
                  xor          a2, gp, s7
                  bltu         s0, s2, 783f
                  bne          s8, s1, 785f
                  srai         a7, s9, 20
                  xori         s2, a7, -649
                  bgeu         s10, t6, 783f
                  and          zero, s9, s10
771:              sltu         a1, s4, s2
                  slli         tp, gp, 25
                  sltiu        s3, s2, 941
                  add          t5, ra, t2
                  sltu         a4, t6, a1
                  xor          a5, s2, s5
                  add          t0, t1, a5
                  addi         tp, s7, -1996
                  addi         s1, s0, 1219
                  andi         a3, s2, -395
                  addi         t5, s11, 1757
                  xor          ra, a0, a7
783:              bne          s6, a6, 789f
                  sra          a5, a2, a5
785:              slti         a7, s7, -843
                  sub          tp, a6, s8
                  lui          tp, 256379
                  lui          s6, 828955
789:              slt          a3, a6, a7
                  slti         t2, s1, -586
                  addi         s6, s2, 818
                  ori          a5, t3, 1592
                  slt          a1, ra, s7
                  lw           t0, 4(s0)
                  add          s1, t3, ra
                  andi         s1, s4, -1476
                  addi         s0, s0, 16
                  or           t5, tp, a1
                  xor          a5, s8, s8
1074:             addi x20, x5, 1
1074:             jalr x20, x20, 0
sub_2:            sub          a4, t3, t5
                  srli         zero, t4, 24
                  addi         s0, s0, -56
                  sw           t0, 4(s0)
                  sltu         ra, t1, s4
                  srli         s2, s3, 20
                  xor          tp, a0, t1
                  andi         t2, a6, 996
                  srai         t5, s11, 7
                  srli         tp, s8, 28
                  slt          a3, gp, a5
                  sra          sp, a2, t3
                  sltiu        sp, gp, 1769
                  slli         a7, s11, 23
                  auipc        t2, 966646
sub_2_j5:         jal          t0, sub_5 #jump sub_2 -> sub_5
                  auipc        ra, 509835
                  slti         a4, gp, -437
                  auipc        s8, 1048018
                  srli         t5, s8, 5
                  slli         a1, t0, 21
                  addi         s4, t0, -224
                  la           s6, sub_4
                  ori          s4, sp, 418
                  addi         s6, s6, 32
                  xori         t1, a4, 1619
sub_2_j6:         jalr         t0, s6, -32 #jump sub_2 -> sub_4
                  sub          a3, s7, t0
                  la           s1, sub_6
                  xori         t2, gp, 1136
                  sltu         a6, a0, s9
                  and          s2, t5, sp
                  nop
                  nop
                  addi         s1, s1, 164
                  sub          t2, a1, tp
                  auipc        t3, 363971
                  auipc        s3, 641607
sub_2_j7:         jalr         t0, s1, -163 #jump sub_2 -> sub_6
                  la           s2, region_1+1706 #start riscv_load_store_rand_instr_stream_0
                  lw           s3, 10(s2)
                  lb           a7, 5(s2)
                  addi         a2, a1, 151
                  slti         gp, s6, -189
                  sltiu        s6, s2, -809
                  lhu          s7, -6(s2)
                  sb           s6, 13(s2)
                  ori          s3, t4, 82
                  ori          t1, ra, 1050
                  lb           s7, 0(s2)
                  slti         a1, zero, -1483
                  slti         s8, t3, 978
                  sll          gp, t2, t0
                  auipc        s4, 97071
                  lui          tp, 326869
                  xori         a6, s4, -900
                  sh           a6, 14(s2)
                  slt          s6, sp, a7
                  andi         a5, t3, 1143
                  sltiu        t0, s10, -202
                  sh           s8, 4(s2)
                  slli         t3, a6, 14
                  sltu         zero, sp, a5
                  sra          t0, zero, a7
                  add          t5, tp, a5
                  xor          t3, s4, a0
                  lh           s7, -4(s2)
                  andi         t1, a4, 1492
                  sub          s4, a4, a7
                  lh           sp, -8(s2)
                  srai         a5, t6, 24
                  sltiu        s3, a5, -772
                  lb           s4, -3(s2)
                  xori         s7, s7, 1009
                  srli         a1, a7, 16
                  lb           s7, -1(s2)
                  sw           a3, 6(s2)
                  lb           gp, -7(s2) #end riscv_load_store_rand_instr_stream_0
                  xori         s9, a6, 794
                  auipc        a3, 594342
                  bltu         s8, a3, 20f
                  andi         s5, t5, 531
                  xori         a7, ra, 1494
                  beq          t5, s5, 24f
                  xor          a2, a6, ra
                  or           s3, s2, t2
                  sltiu        s4, s2, 1788
                  addi         s10, t5, 132
                  sll          s9, ra, ra
                  sltiu        a3, s5, -308
                  slli         s1, gp, 7
                  srl          s10, a6, s8
                  add          s3, t0, a6
                  and          s3, t3, s6
                  blt          t4, s10, 35f
                  ori          s3, s4, -128
                  lui          s4, 495345
                  slt          a3, t3, s7
20:               add          t1, a4, t2
                  srai         s9, t4, 14
                  srl          t5, ra, s0
                  and          s4, a7, s9
24:               sltu         gp, s8, s4
                  slli         s3, s8, 29
                  blt          a5, t4, 33f
                  add          zero, a7, t4
                  srl          t5, t4, s10
                  slli         s8, a2, 28
                  add          a5, s11, gp
                  xor          sp, t4, gp
                  bltu         a2, a4, 35f
33:               sra          sp, s0, t1
                  or           t3, s11, s3
35:               addi         s1, t2, 25
                  add          ra, s0, s10
                  andi         a7, gp, 559
                  bgeu         sp, gp, 41f
                  xor          a7, t0, s11
                  ori          a3, s10, -1565
41:               beq          s7, s8, 55f
                  slli         sp, s7, 29
                  slti         tp, t6, 527
                  beq          a1, tp, 50f
                  ori          a5, t2, -387
                  bge          s4, t1, 59f
                  addi         s7, a3, -1951
                  or           t1, zero, a0
                  srli         a5, a4, 20
50:               bltu         s4, s1, 61f
                  slli         t2, t1, 3
                  sll          s2, t0, s6
                  slt          a5, tp, s0
                  sll          s8, s5, a4
55:               nop
                  beq          gp, t5, 59f
                  sub          s10, s7, s7
                  blt          s3, a7, 67f
59:               slti         a4, tp, 1503
                  srli         s7, a4, 30
61:               srli         t3, a4, 19
                  bgeu         t3, t4, 75f
                  blt          s6, a2, 73f
                  add          s1, a7, s9
                  beq          s8, s0, 66f
66:               and          ra, s3, s1
67:               beq          t0, t0, 78f
                  bgeu         s8, s3, 70f
                  xor          a4, t5, t0
70:               sll          t5, s1, a3
                  beq          t0, s9, 89f
                  addi         a6, a6, -781
73:               slti         a1, a4, 756
                  bne          s8, s8, 80f
75:               slti         ra, t4, -1902
                  sub          a7, t2, s0
                  bne          s6, a4, 92f
78:               or           s3, s4, a0
                  bgeu         s0, a6, 89f
80:               ori          s8, ra, -743
                  beq          ra, s3, 89f
                  xor          t2, s0, ra
                  slti         s5, a6, 1151
                  add          tp, a3, s1
                  nop
                  sltu         a4, s10, s9
                  beq          t5, a1, 88f
88:               slt          t5, t6, t3
89:               sltiu        t0, s11, 304
                  slli         a2, a0, 29
                  sltu         a7, s6, t6
92:               sll          t3, s8, a7
                  ori          t3, tp, -666
                  bltu         gp, s3, 111f
                  and          s3, tp, s9
                  bge          s8, a2, 99f
                  bge          s8, t6, 111f
                  bne          s8, t0, 111f
99:               bgeu         a5, t6, 103f
                  blt          s0, a4, 119f
                  bne          s3, t4, 119f
                  bne          a3, a1, 104f
103:              addi         s9, s7, 1495
104:              or           s4, s11, a7
                  bgeu         a2, a3, 118f
                  slli         s3, t1, 12
                  auipc        s10, 594853
                  slti         t2, s7, 1753
                  bge          s0, t3, 119f
                  blt          s4, a3, 129f
111:              auipc        t0, 402959
                  beq          s10, s10, 121f
                  slt          ra, a6, s3
                  bne          s3, t1, 122f
                  ori          tp, a2, 1692
                  or           s11, a0, s8
                  andi         s7, s3, 1292
118:              bge          s1, s9, 121f
119:              auipc        a2, 860445
                  addi         a4, a3, -1176
121:              xori         sp, a4, -1791
122:              or           a4, s10, a5
                  slt          t5, a7, t1
                  bltu         a2, tp, 137f
                  sra          a3, t4, ra
                  bge          a5, s11, 129f
                  slti         s2, s9, -1673
                  auipc        a2, 289501
129:              addi         s6, t3, -1675
                  auipc        t5, 389522
                  bge          s2, s5, 150f
                  xor          s1, s11, zero
                  and          t5, t0, s11
                  sra          a1, a1, a1
                  blt          a0, t2, 138f
                  xori         tp, a1, 125
137:              beq          s5, a5, 138f
138:              slli         a3, s4, 7
                  ori          s4, s0, -533
                  slli         a6, a4, 15
                  slti         ra, s2, -482
                  ori          a7, a5, -1275
                  la           a3, sub_3
                  sll          s7, sp, t0
                  sltu         ra, a1, t1
                  addi         a3, a3, -608
                  bne          s7, s4, sub_2_j3 #branch to jump instr
                  nop
                  or           a0, a0, t4
                  lui          s10, 631388
sub_2_j3:         jalr         t0, a3, 609 #jump sub_2 -> sub_3
                  bne          a5, s2, 152f
                  auipc        ra, 585043
                  lui          t1, 557812
                  nop
                  bne          s0, ra, 164f
                  blt          t0, a5, 157f
                  andi         s5, gp, 366
                  bgeu         t1, t5, 154f
                  slt          t1, zero, s0
150:              bne          a4, a3, 164f
                  srli         a0, ra, 3
152:              addi         s2, a7, 719
                  nop
154:              xori         a3, s3, 1316
                  or           zero, s11, a5
                  xori         s10, s1, -1110
157:              nop
                  srl          gp, s4, a7
                  sra          s3, tp, t6
                  slti         t1, s0, -306
                  sub          s10, s0, s8
                  xori         tp, s8, -369
                  sltu         a4, a2, gp
164:              slt          ra, t4, s0
                  slt          a5, s11, ra
                  sub          a4, t2, t1
                  slti         a7, zero, 1742
                  and          a6, t5, s9
                  slti         s10, s2, 445
                  sub          t1, a7, tp
                  xori         a7, t1, -1157
                  srl          s8, s5, t4
                  sltiu        a6, s0, -1583
                  xor          a5, a3, a4
                  sub          a6, a1, s6
                  blt          s6, s0, 191f
                  sra          s7, t5, gp
                  nop
                  sltiu        a2, a2, -428
                  slti         gp, a2, 1851
                  sub          ra, t3, a0
                  addi         a6, a0, 848
                  slti         a6, a6, 581
                  bltu         a7, s3, 202f
                  slli         a0, s5, 24
                  slli         s9, a1, 31
                  blt          s1, s9, 201f
                  beq          t1, a0, 206f
                  or           a3, s9, gp
                  ori          s11, a2, -1686
191:              or           s1, s8, s5
                  nop
                  srli         t0, a7, 7
                  sra          t0, t3, ra
                  add          t5, s10, a7
                  xor          s7, s6, s6
                  sltiu        s8, s0, 783
                  xori         t3, s3, 717
                  sra          t2, s1, a4
                  xori         t1, tp, -902
201:              addi         a4, sp, 1907
202:              sra          s8, sp, t5
                  sll          a7, a2, ra
                  sub          zero, t1, s5
                  bne          a5, s1, 212f
206:              slt          gp, t6, s9
                  xori         s11, t1, -700
                  bne          t1, s8, 212f
                  sra          s1, s7, tp
                  la           t3, sub_6
                  slt          a4, s6, s8
                  addi         t3, t3, -603
                  xor          t0, a2, zero
                  sll          a2, zero, a6
                  nop
                  bne          a2, sp, sub_2_j4 #branch to jump instr
                  slt          t5, t3, ra
                  sll          t5, s9, s0
sub_2_j4:         jalr         t0, t3, 603 #jump sub_2 -> sub_6
                  lui          s4, 650404
                  slt          tp, a5, s9
212:              addi         s7, a5, 1978
                  add          tp, gp, t3
                  srli         a7, s2, 17
                  xori         ra, ra, -1380
                  or           a3, a6, ra
                  bge          s6, t3, 220f
                  sltu         a1, a5, t3
                  srl          sp, ra, ra
220:              sltiu        a2, s11, 581
                  lw           t0, 4(s0)
                  srli         a4, t4, 28
                  add          zero, ra, a6
                  addi         s0, s0, 56
                  and          a3, s3, a7
325:              addi x1, x5, 0
325:              jalr x1, x1, 0
sub_1:            sra          s9, a5, ra
                  bgeu         ra, a4, sub_1_stack_p
                  slt          sp, t4, a0
sub_1_stack_p:    addi         s0, s0, -20
                  auipc        a1, 962240
                  slli         s5, s10, 21
                  xori         a5, t3, -1672
                  sw           t0, 4(s0)
                  andi         s9, t3, 1225
                  lui          s4, 939961
                  bge          a5, ra, sub_1_j2 #branch to jump instr
                  lui          gp, 1036596
                  add          a1, zero, s5
                  xor          a1, a0, t2
                  xor          t2, a1, s1
                  lui          s6, 481070
                  and          s2, s0, t6
sub_1_j2:         jal          t0, sub_2 #jump sub_1 -> sub_2
                  beq          a3, s6, 1f
1:                xori         a7, zero, 118
                  sra          sp, s7, s2
                  auipc        a6, 54576
                  beq          tp, s9, 7f
                  auipc        gp, 59517
                  slli         a4, a6, 26
7:                srl          a2, a7, s0
                  bltu         t4, t2, 22f
                  srl          t1, s4, gp
                  add          a5, s7, s7
                  and          a4, s9, t0
                  sltiu        t2, t5, -727
                  add          s6, a7, a2
                  bne          a3, t5, 34f
                  andi         t0, s2, -636
                  slti         gp, s1, -423
                  bge          a0, t3, 28f
                  or           t0, s7, a6
                  bgeu         ra, a4, 30f
                  bne          tp, a2, 36f
                  bne          ra, t5, 36f
22:               bltu         zero, a5, 25f
                  beq          t4, s11, 39f
                  andi         gp, s7, 1379
25:               ori          a3, t3, -339
                  bne          a6, t4, 41f
                  and          a2, t1, tp
28:               slli         gp, tp, 12
                  bgeu         t5, s8, 35f
30:               xor          t1, s0, t2
                  and          a5, t0, a3
                  bltu         zero, a7, 51f
                  blt          a4, s7, 39f
34:               slt          zero, ra, t6
35:               addi         zero, t3, -1589
36:               add          t0, a6, t4
                  srai         a4, s8, 10
                  lui          a6, 718818
39:               slti         sp, s0, -969
                  addi         s10, a7, 297
41:               bne          tp, ra, 46f
                  add          sp, s0, s8
                  bge          tp, s3, 53f
                  blt          s10, s2, 54f
                  bge          a7, t3, 53f
46:               or           a0, t5, s5
                  andi         a0, s9, 199
                  bge          a6, s3, 57f
                  bge          s8, gp, 62f
                  add          t2, a3, a7
51:               slt          a0, s6, s1
                  nop
53:               xori         ra, t6, 937
54:               or           t0, s0, t6
                  sltiu        s8, gp, 481
                  bge          sp, sp, 68f
57:               slt          a0, t1, ra
                  slt          tp, s4, a5
                  andi         a2, a5, 586
                  sltu         t3, t4, s0
                  sltu         s1, a6, s5
62:               slti         s7, s0, -410
                  and          s10, s10, a3
                  srl          t0, ra, t1
                  lui          a7, 197287
                  andi         a2, sp, 1155
                  add          gp, a3, t3
68:               and          s2, s9, t0
                  andi         s11, t3, -1903
                  sltiu        s1, t0, -576
                  ori          a7, t2, 1408
                  xor          a2, s10, gp
                  and          a1, a7, s8
                  sub          s10, t5, a3
                  auipc        sp, 470487
                  srl          a2, t1, gp
                  slt          sp, s8, s0
                  ori          a3, s7, -617
                  bgeu         a6, t1, 88f
                  or           s11, s3, s10
                  auipc        s11, 964259
                  auipc        a5, 639197
                  andi         t2, s2, -963
                  nop
                  or           ra, t1, s0
                  ori          s11, t1, 227
                  sltu         s6, a2, a7
88:               nop
                  sll          s8, s4, ra
                  xor          a2, a2, a1
                  andi         s10, t6, 674
                  sltu         s1, s7, ra
                  xor          s4, t0, a0
                  slli         s2, t1, 26
                  srl          t5, s6, s2
                  ori          s3, s9, -1434
                  and          sp, a6, s9
                  lui          s9, 574786
                  srl          a5, t6, a6
                  lui          s4, 701827
                  srli         a5, t1, 8
                  lui          s4, 858442
                  xori         s2, t1, 223
                  lw           t0, 4(s0)
                  auipc        s3, 887294
                  sltiu        s9, s4, 123
                  nop
                  addi         s0, s0, 20
                  ori          t3, s1, 1182
                  addi         a4, s4, -1495
129:              addi x11, x5, 1
129:              jalr x11, x11, 0
sub_4:            srai         a6, a1, 31
                  sll          s1, s10, s11
                  slti         a1, tp, -1233
                  slli         s8, t2, 4
                  beq          s6, ra, sub_4_stack_p
                  srai         s11, t2, 27
                  srai         s6, s9, 4
sub_4_stack_p:    addi         s0, s0, -56
                  sw           t0, 4(s0)
                  srli         a5, s1, 28
                  srl          s8, a7, a7
                  xori         t1, s6, 795
                  nop
                  la           t1, sub_9
                  xori         s4, a7, 891
                  slli         s11, s2, 26
                  sll          a7, s5, t3
                  ori          t0, a1, -587
                  addi         t1, t1, 498
                  and          s7, s1, t5
                  slti         s11, a0, -282
                  ori          a2, zero, 428
                  blt          t1, a7, sub_4_j8 #branch to jump instr
                  ori          a1, s5, 1805
sub_4_j8:         jalr         t0, t1, -497 #jump sub_4 -> sub_9
                  bne          a4, t3, 20f
                  slt          s9, s9, t2
                  sltiu        s7, t0, -601
                  slt          s8, t3, s4
                  slti         a6, s5, -1996
                  nop
                  bne          s0, s2, 15f
                  slti         a5, t6, -1619
                  or           s9, s4, t4
                  sltu         a6, s1, s9
                  srli         t3, s9, 31
                  slt          a4, s11, a4
                  lui          t1, 561237
                  sra          a0, t5, a5
                  slt          a1, ra, a3
15:               xor          a5, s4, a7
                  xori         a1, ra, 511
                  srli         s7, t5, 17
                  ori          s1, sp, 1281
                  sltu         zero, gp, a5
20:               slli         s7, a3, 2
                  andi         t2, s9, 1838
                  slti         ra, s10, 937
                  xori         t0, s3, -462
                  and          s4, a1, s10
                  nop
                  slti         a6, t4, -1639
                  blt          tp, s0, 42f
                  xori         sp, zero, -905
                  xor          s6, a5, sp
                  sra          a4, a5, s0
                  and          tp, a3, a3
                  sltiu        a5, gp, 1290
                  sltu         sp, s9, s2
                  bgeu         a3, tp, 50f
                  srl          s3, s7, t6
                  sra          s10, s3, s7
                  nop
                  blt          s9, s4, 52f
                  sll          ra, a7, s11
                  bge          a4, t5, 52f
                  bltu         gp, s2, 52f
42:               and          a3, a2, t1
                  srai         t2, s9, 29
                  ori          a7, t1, -528
                  sra          a0, t6, ra
                  slt          s9, a2, zero
                  add          a5, s2, t2
                  srli         s1, tp, 30
                  nop
50:               srl          ra, a3, t2
                  sub          s8, s5, s5
52:               slti         a2, s6, -1884
                  and          s11, gp, t4
                  slt          a3, s7, s6
                  lw           t0, 4(s0)
                  sltu         t2, s0, s7
                  or           s9, s1, s7
                  or           a6, s1, a2
                  xori         t1, t2, -1403
                  addi         s0, s0, 56
                  nop
87:               addi x11, x5, 1
87:               jalr x11, x11, 0
sub_3:            slli         s2, sp, 15
                  srai         a3, t5, 2
                  beq          s4, a4, sub_3_stack_p
                  srl          s10, s0, s6
sub_3_stack_p:    addi         s0, s0, -60
                  sw           t0, 4(s0)
                  addi         t1, s8, 1332
                  bne          s6, zero, 2f
                  xori         t0, a6, 391
2:                sll          gp, a2, a4
                  nop
                  sub          s10, s4, t0
                  bne          s9, zero, 7f
                  add          ra, s2, s6
7:                bgeu         t4, t6, 9f
                  sll          s7, gp, zero
9:                slt          t3, tp, t0
                  bge          s5, a0, 18f
                  sltiu        t3, a6, 1885
                  sra          tp, s4, s5
                  and          s6, t1, s2
                  blt          a4, t3, 18f
                  xor          s5, t1, s5
                  bgeu         a6, t6, 18f
                  bne          s7, a7, 18f
18:               addi         ra, s3, -222
                  addi         a1, tp, -591
                  lw           t0, 4(s0)
                  sltiu        t2, a7, 694
                  add          a3, a4, s2
                  auipc        s3, 6129
                  addi         s0, s0, 60
                  xor          s5, t0, s9
33:               addi x2, x5, 0
33:               jalr x2, x2, 0
sub_9:            sltu         a4, s2, s7
                  auipc        ra, 252965
                  bgeu         a4, a7, sub_9_stack_p
                  xor          zero, a6, s7
                  sltiu        a2, t4, -1718
                  srai         tp, s9, 6
sub_9_stack_p:    addi         s0, s0, -40
                  srai         a1, s4, 5
                  sw           t0, 4(s0)
                  srai         sp, s3, 15
                  lui          a3, 789679
                  or           tp, a4, s7
                  and          a1, a3, s1
                  beq          zero, gp, 9f
                  auipc        t3, 608868
                  slli         t5, a0, 26
                  lui          s3, 325965
                  lui          a6, 273530
                  srai         s6, a6, 29
                  srli         t1, s7, 28
                  sub          s8, zero, s5
9:                and          s3, t1, a0
                  nop
                  slt          s7, s7, s10
                  sltiu        s9, a5, 1410
                  sub          s7, gp, zero
                  lw           t0, 4(s0)
                  slt          a4, a3, s9
                  and          s6, a4, gp
                  sra          tp, ra, a6
                  srai         a2, gp, 17
                  addi         s0, s0, 40
                  srli         sp, s10, 3
33:               addi x20, x5, 1
33:               jalr x20, x20, 0
sub_10:           auipc        a3, 212896
                  xori         gp, a7, 1590
                  addi         s0, s0, -44
                  sll          s4, s0, a1
                  sw           t0, 4(s0)
                  sltiu        s2, a6, -1387
                  slt          s5, s8, t5
                  auipc        s10, 330765
                  la           t3, region_1+1972 #start riscv_load_store_rand_instr_stream_0
                  lb           t0, -11(t3)
                  and          t2, s3, s8
                  srai         a2, a3, 0
                  lb           s4, -15(t3)
                  xor          s11, s4, sp
                  lb           a6, 1(t3)
                  lb           t1, -7(t3)
                  lhu          t2, -2(t3)
                  lbu          t0, -9(t3)
                  add          gp, gp, s4
                  srli         s2, a7, 4
                  sltu         a0, zero, t2
                  and          a0, tp, tp
                  lb           s11, 2(t3)
                  lhu          zero, -4(t3)
                  lb           s8, 16(t3)
                  lbu          s10, 16(t3)
                  or           s1, s8, t1
                  lbu          s9, 11(t3)
                  slli         a3, t2, 27
                  lhu          s10, 10(t3)
                  sll          s5, a2, a6
                  nop
                  lbu          s10, 16(t3)
                  lb           t5, -5(t3)
                  addi         s9, a0, 1786
                  lhu          a0, 6(t3)
                  sltu         ra, a2, s8
                  sub          s7, t4, a7
                  sub          t1, a3, a5
                  lbu          s10, -2(t3)
                  nop
                  lbu          a6, -16(t3)
                  sltu         s9, sp, sp
                  xor          a1, a6, ra
                  srl          zero, a4, a6
                  sb           t0, 15(t3)
                  sh           t1, 0(t3)
                  sw           t0, 8(t3)
                  sub          zero, a7, s11
                  xor          s11, sp, zero
                  lb           s3, 12(t3)
                  lb           s2, -11(t3)
                  slli         tp, a3, 15
                  slt          s5, a2, a3
                  lb           a4, 5(t3)
                  lb           t1, 9(t3)
                  lbu          s9, -3(t3)
                  sb           zero, 3(t3)
                  slti         t1, s10, 19
                  lui          s6, 198682
                  auipc        s5, 661041
                  lbu          t2, 9(t3) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+996 #start riscv_load_store_rand_instr_stream_4
                  lbu          t0, -199(t3)
                  slt          t1, s9, t2
                  lbu          a0, -93(t3)
                  lhu          a6, 236(t3)
                  xor          a3, s2, s7
                  sb           t5, -142(t3)
                  sltiu        a3, a1, 417
                  sltiu        s2, a3, 345
                  or           a1, a3, t6
                  ori          a1, s10, 1753
                  sb           s8, 174(t3)
                  xori         gp, s6, -361
                  slt          s8, s8, sp
                  xor          s1, s8, t3
                  or           t0, t2, s4
                  lh           t2, -224(t3)
                  sh           s4, -232(t3)
                  lh           zero, 242(t3)
                  or           a6, t2, tp
                  sb           a6, -173(t3)
                  or           tp, t1, tp
                  sh           s9, -166(t3)
                  sb           tp, 197(t3)
                  sh           s0, -176(t3) #end riscv_load_store_rand_instr_stream_4
                  la           ra, region_1+1995 #start riscv_load_store_rand_instr_stream_1
                  slli         t3, a0, 3
                  sltiu        s1, t2, -1142
                  lb           s1, -13(ra)
                  sb           s9, -121(ra)
                  sb           s8, -18(ra)
                  srli         a5, a2, 10
                  srli         s10, s8, 14
                  and          s5, t4, a5
                  sb           s11, -164(ra)
                  sb           s11, -256(ra)
                  sb           a3, -230(ra)
                  lbu          a0, -100(ra)
                  lbu          t1, -240(ra)
                  ori          s1, ra, -1941
                  lb           t3, -223(ra)
                  sub          a7, t6, a6
                  sb           a0, -143(ra)
                  slli         a6, s11, 16
                  sw           t0, -39(ra)
                  sb           s1, -216(ra)
                  slt          a7, s7, t3
                  lh           gp, -131(ra)
                  lbu          t0, -133(ra)
                  auipc        s9, 19177
                  auipc        zero, 690724
                  sra          gp, tp, s6
                  sb           t4, -148(ra)
                  srai         zero, s0, 23
                  lbu          a1, -110(ra)
                  lb           a1, -165(ra)
                  sub          s2, s7, s6
                  sltiu        s2, t3, -1518
                  lh           s9, -153(ra)
                  and          s2, a6, t4
                  and          s9, t6, a1
                  slti         s8, s8, 2041
                  lbu          s4, -150(ra)
                  srai         zero, a4, 30
                  sb           t2, -148(ra)
                  lh           a4, -41(ra)
                  lb           tp, -126(ra)
                  srai         s2, a6, 27
                  lbu          a3, -184(ra)
                  lbu          a3, -79(ra)
                  lbu          s9, -53(ra)
                  addi         a1, a1, 311
                  sb           a5, -30(ra)
                  sw           s5, -99(ra)
                  lbu          s7, -112(ra)
                  sb           s5, -199(ra)
                  lbu          t3, -252(ra) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+581 #start riscv_load_store_rand_instr_stream_2
                  lbu          t1, -248(a0)
                  sw           s5, 71(a0)
                  sltu         s11, s11, a1
                  ori          tp, a2, -171
                  sb           a0, 66(a0)
                  add          a1, gp, t5
                  srai         s5, t5, 29
                  sb           t5, 172(a0)
                  lh           s1, 243(a0)
                  addi         s2, s2, -1856
                  slli         t2, t5, 16
                  srai         a5, s9, 9
                  srai         s3, a0, 13
                  and          s4, s2, gp
                  lhu          tp, -197(a0)
                  sb           t4, -223(a0)
                  lhu          ra, -235(a0)
                  lhu          zero, 247(a0)
                  xor          a6, t3, a5
                  lh           zero, -233(a0)
                  srl          ra, t4, gp
                  lb           s2, -192(a0)
                  slt          t5, t1, a6
                  srai         t3, t6, 20
                  sra          s10, tp, s2
                  srai         s11, t3, 13
                  lb           a1, 218(a0)
                  lhu          s7, 31(a0)
                  srl          t2, t4, s1
                  add          t2, s0, s6
                  auipc        t0, 810151
                  nop
                  sb           tp, -203(a0)
                  sra          s11, t5, s4
                  auipc        sp, 863032
                  slli         ra, a5, 12
                  lh           gp, -209(a0)
                  sb           tp, 136(a0)
                  lb           s11, 130(a0)
                  slti         s7, s9, 1717
                  lb           t1, -123(a0)
                  slli         s11, t2, 29
                  auipc        ra, 748899
                  lh           s5, 177(a0)
                  lb           a5, -44(a0) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1887 #start riscv_load_store_rand_instr_stream_3
                  add          s11, zero, t4
                  sltu         a7, a2, gp
                  sltiu        a5, t6, -1604
                  lb           a0, -1324(sp)
                  slt          a2, t2, s9
                  sb           t4, -1808(sp)
                  sb           t4, -109(sp)
                  lb           t5, -1333(sp)
                  sra          t3, a1, s5
                  srl          a5, tp, a5
                  lbu          t2, -1820(sp)
                  sh           ra, -1437(sp)
                  and          s4, s8, s2
                  lbu          a2, -75(sp)
                  xor          a0, t2, sp
                  lb           a7, -1480(sp)
                  lbu          a5, -667(sp)
                  lb           gp, -1566(sp)
                  lhu          s6, -107(sp)
                  lb           a6, -900(sp)
                  xori         s5, s11, -83
                  lui          s3, 27923
                  sltu         t2, s6, t6
                  ori          s4, t0, -1435
                  lbu          s3, -846(sp)
                  srai         ra, s7, 27
                  sltu         s11, gp, s4
                  lb           s4, -1316(sp)
                  sb           s2, -1673(sp)
                  sb           s6, -399(sp)
                  sb           s0, -1136(sp)
                  ori          a2, s0, 1351
                  sb           s10, 86(sp)
                  lb           s11, -1772(sp)
                  slti         a4, s9, -1604
                  sb           a1, -1052(sp)
                  sb           s3, -1678(sp)
                  lhu          a1, -893(sp)
                  sltu         s3, t2, sp
                  lb           s1, -1436(sp)
                  lh           s6, -23(sp)
                  lbu          a3, -370(sp)
                  lhu          t1, -217(sp)
                  add          t0, t0, s4
                  lbu          t5, -1800(sp) #end riscv_load_store_rand_instr_stream_3
                  xor          s2, gp, s10
                  sra          s7, s7, tp
                  bgeu         a2, s9, 9f
                  srli         t0, t6, 10
                  slt          a4, tp, t4
                  srl          s3, t3, s3
                  bne          s8, s0, 8f
                  sub          s2, a6, a2
8:                slti         tp, s3, -632
9:                ori          s4, a7, 2036
                  addi         zero, a0, -1948
                  srli         gp, s6, 31
                  bne          a1, a2, 26f
                  srl          s11, gp, a5
                  ori          t1, s0, -1018
                  andi         s3, t0, 101
                  srai         s8, t2, 29
                  ori          sp, t1, 806
                  slli         ra, s10, 28
                  add          a5, s10, a2
                  srai         s3, s11, 12
                  srli         a6, s4, 9
                  bge          t2, t2, 35f
                  blt          s4, a5, 42f
                  srli         t3, s3, 10
                  bgeu         s4, s6, 43f
26:               lui          s6, 140500
                  bge          s7, t0, 33f
                  sra          a4, s5, a6
                  srli         s8, tp, 17
                  bge          tp, a3, 38f
                  sra          a7, a4, t5
                  sltiu        a6, a5, -622
33:               sra          a2, s0, sp
                  sll          s3, t5, s2
35:               sltu         s3, t2, t5
                  sll          s5, s11, zero
                  bne          a7, s4, 39f
38:               bltu         a0, a7, 52f
39:               bgeu         t6, a1, 53f
                  beq          t3, s3, 52f
                  lui          t2, 817482
42:               or           a5, a6, a6
43:               sltu         a7, zero, a7
                  slli         s3, gp, 12
                  auipc        s1, 702357
                  bgeu         t2, a2, 54f
                  slt          s8, s4, tp
                  srai         t5, s3, 18
                  bgeu         a6, s7, 61f
                  nop
                  bne          s2, s9, 54f
52:               bgeu         a0, s6, 64f
53:               srai         a3, s3, 13
54:               slti         s10, s6, 1811
                  sltiu        a6, s10, 1078
                  lui          t2, 972610
                  addi         zero, a5, 1230
                  or           s5, t4, gp
                  beq          tp, a5, 73f
                  slli         s5, a4, 1
61:               slli         tp, a5, 7
                  add          a5, s2, a6
                  and          a1, s2, sp
64:               sltu         t2, a7, a6
                  srai         sp, s1, 27
                  ori          s1, gp, -1474
                  and          gp, a5, a4
                  srli         s1, a2, 9
                  add          s5, t4, a1
                  bltu         s7, s4, 90f
                  slti         t5, s5, 973
                  auipc        s9, 219319
73:               bne          a1, s4, 83f
                  srl          s8, a5, s3
                  sltu         s2, tp, s9
                  slli         t5, t4, 29
                  blt          a7, s5, 88f
                  add          a7, t1, t6
                  lui          a6, 825652
                  sltiu        s7, t5, 1685
                  bne          sp, tp, 83f
                  and          t5, ra, sp
83:               sub          a2, s9, t5
                  addi         t3, zero, 353
                  blt          s11, zero, 101f
                  and          sp, t0, s3
                  bgeu         s9, s1, 94f
88:               lui          s11, 228646
                  ori          t0, a1, -324
90:               ori          s3, t1, 269
                  bltu         s5, t0, 106f
                  slli         a0, s8, 8
                  sll          a7, a4, t2
94:               or           ra, a4, tp
                  sltiu        s10, t1, -1868
                  srai         s9, t0, 9
                  bgeu         sp, sp, 116f
                  bge          a5, a0, 108f
                  auipc        s2, 967661
                  slt          a5, t1, zero
101:              lui          zero, 92951
                  sll          s10, s4, ra
                  slli         tp, s9, 8
                  sltiu        a3, t2, -1761
                  nop
106:              sltiu        zero, a4, 675
                  add          s8, s3, t3
108:              srai         s4, a3, 0
                  xor          tp, a0, a4
                  bge          ra, s10, 127f
                  srli         a5, a1, 20
                  slli         s9, tp, 21
                  sra          s4, s9, a7
                  srli         sp, s11, 18
                  andi         t0, a5, -754
116:              sltiu        tp, s8, 180
                  sll          a0, s2, zero
                  andi         t5, a0, 1440
                  slti         t3, ra, -152
                  or           s1, t0, a3
                  ori          a0, s9, 392
                  bne          s7, a6, 127f
                  sub          t0, s11, a1
                  srli         s6, s6, 0
                  bge          t6, a2, 139f
                  andi         a5, a5, 248
127:              bne          t1, t2, 140f
                  bltu         a0, s1, 130f
                  slt          t1, a5, a7
130:              slti         a1, s7, 1757
                  bge          s4, s6, 141f
                  srai         s9, t3, 1
                  slti         ra, s4, 422
                  slti         s11, t1, 1927
                  slt          a3, a7, a3
                  srl          t3, a5, tp
                  srl          s11, s9, gp
                  sltiu        a0, gp, 1451
139:              sra          s1, t1, t3
140:              bltu         s7, s1, 145f
141:              srai         s3, a7, 2
                  slli         s9, t1, 10
                  slli         ra, tp, 21
                  sub          gp, t0, s1
145:              or           tp, s3, s1
                  sltiu        s4, t0, -1075
                  srli         s11, s4, 1
                  add          s3, t5, s8
                  sltu         tp, s7, a7
                  sltu         s11, gp, sp
                  sub          sp, a1, s6
                  blt          zero, t0, 168f
                  xor          a4, a2, s7
                  bne          a6, s0, 162f
                  srai         s1, t5, 15
                  or           sp, s1, s0
                  blt          t0, a2, 176f
                  addi         a3, a0, -116
                  andi         a4, tp, 1903
                  sub          s7, ra, s9
                  andi         s4, a6, 567
162:              sltiu        s8, a6, 1373
                  or           a4, a2, s4
                  sub          t5, s11, ra
                  bgeu         s11, s11, 172f
                  bne          s10, a0, 178f
                  ori          s4, a4, 830
168:              bge          a4, t6, 182f
                  sll          s5, a0, s0
                  sll          s3, a6, a4
                  bltu         sp, a3, 183f
172:              srai         a5, t3, 10
                  sltiu        a6, t5, -1575
                  srli         s5, t5, 29
                  srai         t2, t3, 15
176:              bge          s1, t6, 191f
                  andi         a3, ra, 692
178:              auipc        a5, 141985
                  sll          a3, a2, s2
                  or           a6, t5, t3
                  srli         a6, s11, 8
182:              bltu         s2, s2, 188f
183:              srl          a7, s11, s7
                  xori         a1, t5, -1548
                  slt          ra, a3, t4
                  sll          a1, t2, a5
                  slt          gp, s1, sp
188:              xor          sp, s10, t6
                  sltiu        s2, s3, 764
                  slli         a1, a5, 13
191:              srai         a7, a6, 23
                  sub          a0, s2, zero
                  bne          a3, s7, 207f
                  beq          s6, s4, 208f
                  srl          a1, zero, s8
                  xor          a1, s3, s3
                  bltu         gp, s10, 211f
                  xori         s1, s4, 489
                  nop
                  slt          t1, s3, t0
                  bne          s6, s2, 220f
                  sltiu        s10, gp, 491
                  bgeu         ra, tp, 217f
                  addi         s7, s1, -1608
                  sltiu        a1, s7, -1456
                  auipc        gp, 123500
207:              bge          a2, t1, 227f
208:              slli         s9, s2, 1
                  xori         s2, s3, -1529
                  bge          t1, s5, 223f
211:              xor          a7, a6, s11
                  or           t1, s3, t6
                  slti         s11, t1, -1219
                  and          s5, a5, s2
                  bne          s1, a0, 217f
                  bge          a4, s8, 228f
217:              blt          a5, tp, 220f
                  sll          t3, t6, sp
                  beq          a7, t5, 230f
220:              beq          s9, a4, 237f
                  sltiu        t3, a4, 1623
                  ori          t5, t5, -619
223:              lui          t3, 378434
                  xor          s10, s6, s8
                  srli         s7, a5, 13
                  srli         s4, t5, 12
227:              beq          a2, s1, 234f
228:              nop
                  sub          s3, s10, s3
230:              sltu         t3, t6, s5
                  blt          a3, zero, 233f
                  add          s1, a3, s0
233:              auipc        t5, 160217
234:              slli         a6, a3, 16
                  sra          t0, a3, t1
                  ori          a4, s6, 812
237:              andi         t3, s11, -629
                  or           s7, t2, a0
                  xori         a3, a1, 979
                  sltiu        ra, a0, 1969
                  sltu         zero, s4, t6
                  auipc        tp, 456254
                  slti         sp, a6, 1893
                  sll          t3, a0, a1
                  beq          s0, a0, 255f
                  srli         s4, t3, 28
                  sub          s4, a0, a4
                  addi         ra, t0, -937
                  sltu         t2, zero, t4
                  srl          a4, a0, t3
                  or           t1, ra, s5
                  xor          s4, s7, ra
                  sltiu        s2, ra, -475
                  srli         s6, s3, 0
255:              sltiu        a6, s1, 853
                  nop
                  andi         ra, a4, 1116
                  srl          s10, t3, s8
                  xor          a4, a4, a1
                  srli         a0, t5, 3
                  sra          s10, t5, tp
                  slti         s9, a7, 490
                  srli         s5, s0, 25
                  srli         a3, a3, 28
                  slli         s11, a7, 30
                  add          a1, a2, t6
                  and          s2, s7, gp
                  andi         s7, t5, 1873
                  srl          t2, s10, a5
                  slt          a3, a5, t1
                  beq          s3, s8, 284f
                  srli         a2, a5, 27
                  and          t2, s9, s7
                  slt          s9, gp, s4
                  srli         t0, zero, 27
                  ori          a3, a0, 1028
                  srli         s7, tp, 14
                  blt          s3, a1, 286f
                  slt          s6, s6, s2
                  addi         s3, t3, 682
                  lui          t0, 562776
                  sub          s1, s4, s8
                  sra          a6, a2, s5
284:              bne          tp, s0, 302f
                  sll          a3, s8, t2
286:              lui          t5, 780116
                  bne          ra, a2, 292f
                  sub          s9, a0, s5
                  andi         t2, s3, 1115
                  bge          a5, s0, 301f
                  srl          t1, s6, a2
292:              srl          zero, s5, s2
                  ori          a5, t0, 410
                  sltu         ra, s5, sp
                  bge          ra, a6, 298f
                  add          zero, t5, s4
                  bne          a7, tp, 316f
298:              bltu         s1, s9, 308f
                  addi         a4, a2, -1358
                  auipc        gp, 1014443
301:              and          t2, ra, gp
                  la           s1, region_1+1919 #start riscv_load_store_rand_instr_stream_5
                  lw           t1, -15(s1)
                  auipc        a0, 244879
                  lb           t3, 2(s1)
                  sw           t2, -3(s1)
                  slti         s10, t6, -1276
                  lbu          s11, 1(s1)
                  slt          s11, s3, s3
                  slli         a7, s7, 2
                  lb           t5, 4(s1)
                  lbu          a5, 0(s1)
                  or           t0, a2, t5
                  lbu          s5, -14(s1)
                  slli         gp, tp, 12
                  lb           s4, 9(s1)
                  lb           s7, -6(s1)
                  sb           s4, 0(s1)
                  addi         s3, s4, 75
                  sltiu        sp, t2, 499
                  sh           a2, 3(s1)
                  auipc        ra, 908434
                  lh           s11, 3(s1)
                  sra          a3, s1, a6
                  sll          a7, tp, t4
                  sb           s2, -8(s1)
                  or           t2, s9, a2
                  andi         zero, t0, -1963
                  lbu          s7, 12(s1)
                  sb           gp, -5(s1)
                  sltiu        s3, s4, 326
                  sh           s6, 11(s1)
                  sb           s4, 4(s1)
                  lbu          a3, -5(s1)
                  srli         a4, t2, 30
                  lb           zero, 2(s1)
                  lb           t3, 10(s1)
                  srli         t3, t6, 20
                  lui          ra, 209687
                  lb           s3, 4(s1)
                  lbu          s8, -8(s1) #end riscv_load_store_rand_instr_stream_5
302:              sltiu        s9, a2, 1793
                  bltu         tp, t1, 316f
                  sltu         a3, a3, s7
                  sub          s8, a5, ra
                  add          s5, s8, s4
                  sll          s7, t6, a4
308:              bgeu         a5, sp, 326f
                  xori         a4, t0, 953
                  and          gp, s8, s1
                  srli         a3, ra, 30
                  sll          ra, a6, a1
                  beq          s10, t3, 327f
                  sltiu        a0, tp, -1079
                  nop
316:              slli         s8, s6, 6
                  bge          a4, s0, 324f
                  auipc        s2, 469390
                  add          zero, a0, s4
                  srai         sp, s1, 11
                  andi         t5, t0, 1811
                  blt          t5, a6, 336f
                  srai         zero, s8, 21
324:              ori          s4, t3, -1424
                  and          ra, a4, s7
326:              sub          ra, a2, t0
327:              sub          a7, ra, a4
                  blt          s8, t1, 334f
                  andi         a2, t4, -250
                  lui          s4, 76383
                  blt          a0, s8, 343f
                  sub          a6, s8, t0
                  slt          s4, t2, t2
334:              and          a2, a1, s6
                  lui          tp, 979173
336:              add          s7, s7, a7
                  bne          s9, a2, 356f
                  bltu         a4, a1, 358f
                  or           s5, t3, s7
                  bge          s5, a2, 342f
                  blt          s5, s6, 349f
342:              lui          s8, 25131
343:              andi         s9, a2, -766
                  srai         s11, s6, 30
                  slli         tp, t5, 28
                  andi         a2, a7, 1834
                  beq          s4, ra, 359f
                  srli         a3, a4, 30
349:              slt          s5, t2, a7
                  slt          a5, a3, a5
                  sltu         s4, zero, a4
                  srli         s5, s10, 30
                  and          t0, a0, a3
                  andi         s3, a5, 558
                  addi         ra, ra, -1291
356:              bge          a2, t0, 369f
                  bge          a2, tp, 359f
358:              slt          a4, a2, t5
359:              slli         gp, s5, 31
                  bge          s7, s2, 376f
                  or           a6, ra, t6
                  srli         a0, s10, 3
                  sltiu        s1, t6, 285
                  bgeu         s6, s9, 379f
                  ori          s1, t4, 709
                  slli         a4, a4, 7
                  nop
                  auipc        a5, 420405
369:              lui          zero, 638943
                  beq          s9, s6, 384f
                  slt          t3, a0, s9
                  bne          s1, s8, 379f
                  sra          t5, ra, s10
                  add          a7, s4, ra
                  sra          s8, a5, t3
376:              beq          sp, t2, 388f
                  sra          s11, gp, a4
                  bgeu         sp, s10, 392f
379:              sll          t1, s7, a7
                  add          s4, zero, a6
                  andi         a3, s1, -1338
                  or           a2, a7, t6
                  add          t2, sp, t6
384:              nop
                  and          s9, zero, s8
                  srli         a3, s5, 29
                  srai         s8, s3, 11
388:              xori         s9, s1, 1623
                  addi         sp, t0, -1280
                  addi         t2, s11, -411
                  bne          t1, t3, 405f
392:              add          t2, s11, s6
                  blt          s0, a0, 403f
                  xor          t2, s7, s2
                  xor          a0, a6, zero
                  bgeu         s1, t3, 404f
                  nop
                  slli         s10, t4, 1
                  xor          s2, s6, s1
                  xori         t2, a2, -656
                  ori          a0, a5, -269
                  xori         a1, t0, 6
403:              srl          t2, t6, s3
404:              srl          ra, a3, s2
405:              sub          a4, s3, s4
                  bgeu         s10, s10, 408f
                  xor          zero, s10, s11
408:              beq          s1, a4, 425f
                  or           zero, s7, a3
                  bltu         t0, a4, 429f
                  srl          s3, a1, t2
                  srai         sp, a5, 18
                  sra          a2, t4, a2
                  srai         a5, a4, 1
                  xor          s1, t4, sp
                  xori         s11, t0, 320
                  andi         s9, s4, 980
                  slti         zero, t0, 1940
                  or           s11, t2, t5
                  beq          t5, a2, 434f
                  sltu         gp, a2, t0
                  or           t1, s9, s11
                  lui          tp, 945739
                  bltu         a4, s3, 442f
425:              sra          s1, t5, t5
                  srl          t3, s10, s11
                  beq          s2, s7, 447f
                  xor          a7, tp, a0
429:              bge          a3, s8, 443f
                  bne          s1, t3, 435f
                  blt          s6, ra, 433f
                  xor          gp, s10, s1
433:              bgeu         t6, a3, 435f
434:              slli         t2, s8, 8
435:              andi         t1, s2, -1568
                  blt          t6, a0, 448f
                  blt          ra, t4, 449f
                  sltiu        gp, a4, 341
                  sltu         s6, t1, t3
                  auipc        s10, 516147
                  sltiu        t0, s7, 945
442:              nop
443:              bgeu         a5, s7, 458f
                  xor          s5, s10, a3
                  bge          a7, s9, 458f
                  sub          s2, t4, s10
447:              xor          t3, t4, tp
448:              bgeu         a5, a1, 462f
449:              xori         s3, t4, -1768
                  sub          a5, s9, a3
                  ori          s4, a2, -672
                  blt          ra, sp, 465f
                  xori         s2, a4, -1790
                  srl          s10, s10, t4
                  slli         sp, s11, 2
                  srai         a1, s2, 23
                  slt          a5, s10, sp
458:              slli         s11, t3, 31
                  xor          s5, s11, a4
                  sra          s8, a6, s9
                  srl          zero, s0, a4
462:              add          s8, s4, s1
                  slti         t0, gp, 1053
                  bge          a4, a4, 475f
465:              srli         s11, s1, 19
                  bgeu         s10, a2, 468f
                  bltu         s5, t1, 474f
468:              sra          a7, t6, t5
                  xori         s7, s10, 1844
                  slt          sp, s9, s10
                  andi         t1, s10, -281
                  beq          a6, a0, 491f
                  srli         s9, s10, 21
474:              xori         s7, t3, 1818
475:              sra          a7, sp, s1
                  or           s9, a4, s7
                  sra          t0, a5, a0
                  sltiu        tp, a3, -93
                  bne          t4, a7, 495f
                  xori         a4, a0, -1346
                  or           s1, s11, s8
                  or           gp, sp, a7
                  ori          s3, t4, 624
                  bgeu         t5, ra, 494f
                  sltiu        s7, s7, 2000
                  bltu         s8, a5, 494f
                  sub          a6, t2, sp
                  srli         zero, t5, 18
                  slti         s1, a4, -32
                  nop
491:              xor          t1, s3, t1
                  srai         a4, gp, 9
                  nop
494:              bgeu         a0, zero, 506f
495:              bge          s3, ra, 503f
                  sltiu        s4, s2, -25
                  srli         sp, a6, 8
                  sll          s3, s8, a0
                  bltu         a4, t6, 502f
                  nop
                  and          s11, a5, t0
502:              auipc        sp, 600216
503:              andi         t0, s3, -1226
                  sll          s5, s7, s8
                  srai         sp, s11, 14
506:              srai         s10, a1, 12
                  add          s4, t6, a6
                  sra          gp, t3, s2
                  ori          gp, t3, 1249
                  xori         a0, a3, -1392
                  nop
                  bne          a4, a3, 522f
                  sll          zero, a3, a1
                  or           t3, a3, a5
                  srli         s2, t1, 22
                  bltu         a2, s5, 522f
                  xori         t3, s4, -1991
                  auipc        s11, 560013
                  srl          s3, s1, a2
                  blt          s10, s5, 527f
                  bgeu         t5, t0, 535f
522:              bne          s10, s11, 539f
                  addi         s1, a0, -407
                  add          s3, s5, ra
                  auipc        t1, 703432
                  sra          s2, s10, sp
527:              sll          t5, t4, gp
                  slt          s6, a0, a2
                  addi         s6, s2, -844
                  srl          t5, s3, a4
                  ori          t3, a6, 214
                  andi         zero, s10, -495
                  andi         a0, t6, -1533
                  auipc        s7, 540476
535:              bge          t2, s6, 549f
                  bne          s10, t2, 549f
                  srai         a5, ra, 2
                  srai         s3, a3, 4
539:              beq          t1, a2, 547f
                  ori          s7, a0, 1835
                  andi         sp, s6, -165
                  auipc        a5, 244179
                  xor          s7, s4, s2
                  sub          s10, s1, gp
                  andi         t5, a7, -595
                  lui          a2, 925594
547:              sra          zero, s7, tp
                  auipc        a4, 469525
549:              sra          s7, sp, t5
                  addi         t3, a1, 934
                  sltu         a4, a6, tp
                  bge          s5, gp, 565f
                  and          a6, t1, s1
                  sub          s6, zero, s0
                  bge          zero, tp, 566f
                  xori         t3, t1, 1761
                  sltu         a6, t1, t2
                  blt          sp, t6, 572f
                  bgeu         s10, a7, 573f
                  bne          sp, gp, 563f
                  blt          t0, t1, 563f
                  beq          ra, s0, 574f
563:              xor          tp, s2, s3
                  srl          s9, s8, a2
565:              ori          a3, s4, -1804
566:              andi         s7, a2, 834
                  bne          t6, s8, 586f
                  auipc        s7, 156183
                  srl          s3, s9, t4
                  ori          tp, tp, -1924
                  ori          s4, a4, 322
572:              srai         ra, t6, 19
573:              sra          s7, t1, a6
574:              sltu         zero, s3, s2
                  srai         s8, t0, 20
                  bltu         t0, s11, 578f
                  bge          s0, a4, 587f
578:              srl          s5, tp, s11
                  xor          t5, s1, s2
                  beq          a1, s7, 594f
                  addi         s4, s9, 1286
                  add          s4, s11, a2
                  or           s1, ra, t4
                  sub          s2, a0, a3
                  xor          t3, zero, s4
586:              or           a3, a1, ra
587:              nop
                  add          s5, a0, a1
                  srli         sp, a7, 17
                  srli         s2, a6, 5
                  srl          a1, a3, a2
                  bgeu         t6, ra, 608f
                  addi         t2, s1, 856
594:              bne          s4, s8, 606f
                  srl          t2, t2, a7
                  lui          s3, 627424
                  slti         a4, s2, -1226
                  bne          t4, sp, 616f
                  auipc        s3, 675867
                  bltu         t6, ra, 602f
                  sub          s6, a5, s5
602:              blt          ra, a7, 614f
                  slt          s5, zero, s2
                  slli         a4, a1, 12
                  bltu         t4, s11, 611f
606:              sltiu        s5, s6, 1240
                  ori          a7, t3, -248
608:              bltu         s3, zero, 613f
                  bgeu         ra, a2, 616f
                  sub          a4, a4, sp
611:              auipc        a7, 192800
                  srl          a3, gp, s1
613:              or           t0, t4, s6
614:              and          s5, a7, s2
                  andi         s11, tp, 514
616:              sub          t0, t6, s4
                  slt          a7, s8, s4
                  srli         s10, s3, 13
                  add          a1, gp, s4
                  sra          s5, gp, t6
                  xori         a6, t2, -342
                  srl          tp, s6, a5
                  blt          t6, a1, 642f
                  srli         s9, s0, 0
                  and          s6, s2, s0
                  andi         tp, s3, 1843
                  slli         a1, tp, 27
                  slli         t3, zero, 17
                  beq          s4, tp, 636f
                  sltiu        a4, a7, -1011
                  sltu         s4, zero, a0
                  lui          t2, 323930
                  srl          a7, s7, s3
                  bgeu         sp, s0, 648f
                  srai         s2, t3, 27
636:              xor          a6, s1, a1
                  srl          a2, a4, t1
                  bltu         a7, a6, 648f
                  slli         a6, s2, 21
                  sll          a4, s5, ra
                  andi         a5, a6, -859
642:              srli         a1, a6, 2
                  bge          s9, s10, 651f
                  ori          t0, s5, -1749
                  auipc        s8, 825350
                  xor          a1, a2, t5
                  lui          a7, 550835
648:              bltu         a7, a0, 662f
                  auipc        s6, 57559
                  sra          s11, a5, a5
651:              srai         t5, s10, 4
                  add          s8, ra, t2
                  xori         s11, s8, -1038
                  srli         s6, a1, 4
                  and          s11, t4, sp
                  addi         t5, t4, 1272
                  andi         a7, s4, 83
                  ori          s9, s0, -2032
                  xor          a4, t3, s6
                  xor          a2, ra, t0
                  bgeu         s9, gp, 676f
662:              bgeu         t2, t3, 682f
                  slt          s5, s1, s11
                  beq          ra, a1, 681f
                  auipc        ra, 849078
                  add          s6, t4, t4
                  lui          s2, 457136
                  addi         s3, s2, -1787
                  srli         sp, t4, 7
                  srai         s5, t6, 19
                  srli         t2, a5, 25
                  blt          gp, t5, 685f
                  srai         tp, zero, 20
                  srl          s4, a4, a7
                  bltu         zero, sp, 689f
676:              bge          s0, s7, 688f
                  ori          a1, s4, 768
                  bge          s2, a0, 688f
                  ori          t0, t1, -887
                  bge          zero, tp, 700f
681:              slti         s3, s0, 1941
682:              sltiu        a5, s0, 541
                  srai         s11, s6, 24
                  xor          s6, a0, gp
685:              sll          s1, a0, s2
                  srl          a6, t5, a4
                  xor          s8, s7, a2
688:              srl          s2, a5, a2
689:              bne          a4, s5, 708f
                  beq          a7, t1, 703f
                  beq          t5, t1, 703f
                  bltu         tp, a3, 711f
                  add          s4, t5, zero
                  sll          a0, t5, a1
                  sub          gp, s8, t2
                  ori          s2, a6, 1944
                  add          t0, s4, a0
                  slti         a5, s6, 1173
                  bgeu         s0, t1, 713f
700:              sltiu        s11, s5, 53
                  blt          s8, a6, 704f
                  and          t1, s4, s7
703:              nop
704:              slt          t0, zero, s11
                  slli         s2, s3, 12
                  addi         s11, tp, 1925
                  sub          t3, s2, s4
708:              addi         a2, a5, 28
                  andi         s6, s11, 1456
                  sltu         a2, s8, gp
711:              xori         a7, s7, 977
                  sra          a6, s9, s3
713:              bge          zero, a0, 730f
                  or           a1, s9, a4
                  beq          s9, s1, 729f
                  beq          ra, t4, 731f
                  bge          a2, t1, 722f
                  bgeu         s7, a0, 720f
                  bgeu         a0, s7, 726f
720:              bltu         s6, s9, 728f
                  slt          a5, a1, s2
722:              sub          s5, zero, t0
                  bne          s3, s0, 734f
                  bltu         t5, a6, 731f
                  beq          s5, a2, 739f
726:              nop
                  lui          a0, 772771
728:              andi         a2, s1, -1854
729:              beq          t1, s1, 745f
730:              bgeu         s3, s10, 736f
731:              xor          a6, a7, a3
                  sub          s10, a6, a4
                  bne          s4, a3, 745f
734:              and          s11, gp, tp
                  slli         a7, t6, 7
736:              and          a2, a7, s11
                  andi         a2, s8, 955
                  slti         t0, t4, 1522
739:              add          a6, gp, a3
                  xor          t2, tp, ra
                  srl          s8, zero, s0
                  slti         s8, t0, -1237
                  bge          t5, t2, 745f
                  andi         t5, s3, 1283
745:              sra          a5, s4, t1
                  bltu         a3, t5, 754f
                  and          zero, a6, s0
                  beq          t1, a4, 750f
                  lui          s6, 963181
750:              bgeu         a0, s8, 768f
                  and          a0, s3, sp
                  andi         s5, s3, 1408
                  nop
754:              xori         t0, a2, 698
                  bgeu         zero, zero, 769f
                  ori          a3, a3, 561
                  beq          s3, a2, 767f
                  sra          a7, s0, tp
                  sltu         t2, s2, tp
                  slti         s10, tp, -359
                  auipc        a7, 14453
                  xor          t2, s4, a7
                  andi         s10, t1, -815
                  slti         s7, s11, -479
                  and          s11, s10, a0
                  xor          t5, s8, s8
767:              bgeu         ra, t1, 779f
768:              slt          s5, tp, t4
769:              slt          zero, s10, a6
                  beq          s9, a2, 783f
                  slt          a4, s11, a4
                  andi         a5, s10, 146
                  srai         t3, s5, 27
                  srai         t1, t3, 4
                  srai         t1, a7, 28
                  slt          a4, t6, s10
                  xor          a3, a5, s7
                  sll          s7, t4, tp
779:              addi         s2, s4, 989
                  and          tp, t3, a2
                  ori          s10, s5, -1586
                  slli         t0, s5, 11
783:              bltu         s3, a3, 791f
                  bne          a1, a4, 803f
                  srli         s11, t4, 20
                  bge          a6, ra, 798f
                  sub          a3, s6, s6
                  ori          a5, gp, -1536
                  add          gp, a3, tp
                  addi         s8, s4, -1993
791:              add          t0, s7, s10
                  beq          tp, s1, 794f
                  beq          zero, tp, 801f
794:              beq          s4, t5, 803f
                  add          a3, s6, t5
                  bne          t2, t4, 799f
                  and          a2, s8, s6
798:              sub          t3, t3, s9
799:              auipc        gp, 863302
                  nop
801:              and          sp, a0, s6
                  slt          zero, a3, s2
803:              sub          s3, a3, a1
                  lui          t1, 438744
                  xori         a7, t5, 1107
                  lw           t0, 4(s0)
                  slli         a2, a5, 3
                  srli         tp, t5, 29
                  slti         a6, s8, -1918
                  slti         a2, a3, 1866
                  addi         s0, s0, 44
                  srl          t1, t2, s3
1084:             addi x27, x5, 1
1084:             jalr x27, x27, 0
sub_5:            bgeu         a1, a4, sub_5_stack_p
                  slti         t2, t4, -78
sub_5_stack_p:    addi         s0, s0, -16
                  srl          s2, t6, s5
                  sw           t0, 4(s0)
                  andi         tp, t3, -1327
                  sltu         a1, tp, a6
                  slt          a6, s10, s2
                  la           s5, sub_8
                  add          a2, gp, a0
                  addi         s5, s5, 516
                  srai         s9, t4, 18
                  or           a7, sp, a2
                  sll          t0, a3, a2
                  sltu         t3, s7, s3
sub_5_j9:         jalr         t0, s5, -516 #jump sub_5 -> sub_8
                  sll          s5, a5, t3
                  andi         s2, s0, 1153
                  auipc        s10, 822023
                  nop
                  blt          t6, t3, 10f
                  srli         s1, a1, 29
                  sll          zero, a5, t3
                  beq          s0, s6, 8f
8:                ori          s4, s7, -973
                  bgeu         t3, s8, 10f
10:               sltu         s9, a1, s9
                  and          s1, s8, t1
                  lw           t0, 4(s0)
                  addi         s0, s0, 16
                  nop
                  slti         s4, tp, -1105
32:               addi x23, x5, 1
32:               jalr x23, x23, 0
sub_7:            lui          t1, 539186
                  blt          s11, t1, sub_7_stack_p
                  srl          s2, a7, a3
sub_7_stack_p:    addi         s0, s0, -36
                  sw           t0, 4(s0)
                  lui          s4, 50671
                  la           tp, region_0+93 #start riscv_load_store_rand_instr_stream_0
                  sub          gp, t0, t0
                  add          s4, t1, s11
                  ori          t1, s3, -1288
                  lb           zero, 1586(tp)
                  lbu          zero, 843(tp)
                  sb           t2, 178(tp)
                  lb           a1, 368(tp)
                  lbu          s11, 1445(tp)
                  slti         s1, ra, 16
                  slt          t2, s5, t6
                  sh           t1, 1195(tp)
                  xori         t5, gp, 1613
                  auipc        s4, 1022603
                  srl          a5, s9, a1
                  srl          a1, t5, t3
                  slt          s3, t1, s2
                  lh           a3, 1809(tp)
                  lb           a3, 1531(tp)
                  or           t5, s9, sp
                  xor          a0, zero, s9
                  sb           a7, 1500(tp)
                  or           t2, t3, a1
                  sb           a3, -24(tp)
                  lb           s3, 1027(tp)
                  sb           s10, 476(tp)
                  sb           t1, 338(tp)
                  nop
                  lui          a2, 1017570
                  auipc        t2, 455689
                  sll          s2, s5, s1
                  srl          t2, s4, s6
                  lbu          s6, 1218(tp)
                  sra          a5, s5, t3
                  lbu          a1, 1152(tp)
                  slli         a6, s4, 5
                  sb           gp, 1759(tp)
                  lbu          t0, 927(tp)
                  sb           t1, 1851(tp)
                  srli         s3, s2, 18
                  xori         s8, a5, -1640
                  nop
                  nop
                  slli         s9, s11, 26
                  lbu          s4, 899(tp)
                  lb           s8, 98(tp)
                  sub          s4, t4, t1
                  lb           s6, 518(tp)
                  lbu          s4, 34(tp)
                  sw           s6, 963(tp)
                  xori         ra, a4, 1766
                  sltiu        a1, a6, -750
                  ori          t5, t3, 632
                  sb           s10, 676(tp)
                  lh           s4, 1481(tp)
                  sb           a7, 428(tp)
                  sh           a1, 57(tp)
                  xori         t0, t1, -1516
                  lw           t2, -61(tp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1647 #start riscv_load_store_rand_instr_stream_2
                  sltu         s3, a4, s2
                  lhu          s2, 23(sp)
                  sub          a5, t0, s8
                  slti         t1, a2, -1973
                  sb           s9, 190(sp)
                  sub          tp, ra, a2
                  sh           ra, 23(sp)
                  sb           a1, -35(sp)
                  sb           s1, -24(sp)
                  add          a7, s5, s6
                  sb           s6, -49(sp)
                  sb           sp, -153(sp)
                  xor          a0, s9, s3
                  sltiu        s11, a6, -1915
                  sb           a7, -138(sp)
                  sb           t4, -168(sp)
                  slti         a4, s8, -1122
                  sll          a1, t3, t1
                  sb           s10, 155(sp)
                  slti         s6, t0, -842
                  sb           ra, 121(sp)
                  sb           zero, -60(sp)
                  lhu          t0, 47(sp)
                  lb           a3, 92(sp)
                  sb           t4, -98(sp)
                  sll          a5, gp, s7
                  add          a1, zero, ra
                  lh           gp, 207(sp) #end riscv_load_store_rand_instr_stream_2
                  blt          s7, t5, 3f
                  lui          s2, 798411
                  auipc        a6, 885266
3:                sltu         t2, t5, s11
                  srl          sp, s5, zero
                  slli         a7, a7, 9
                  bge          s11, a7, 11f
                  addi         a7, t5, -1058
                  blt          s11, ra, 12f
                  beq          a4, t1, 29f
                  bltu         s1, s10, 16f
11:               and          a0, a6, a0
12:               srl          zero, sp, a0
                  lui          sp, 992878
                  auipc        a3, 703024
                  sltu         t1, t2, a7
16:               blt          t3, a6, 17f
17:               srl          t5, a5, a4
                  xor          a7, ra, s9
                  slti         t5, t6, -1413
                  or           a5, ra, s5
                  sltiu        t3, a3, 1742
                  andi         s3, a0, -1041
                  srli         a2, sp, 2
                  add          s4, t5, sp
                  srai         t1, a5, 4
                  ori          a3, s2, 1829
                  auipc        s7, 488580
                  srl          ra, s9, s10
29:               slli         zero, t0, 9
                  bne          sp, s5, 50f
                  bgeu         s10, s2, 37f
                  sll          s8, s5, s5
                  slt          tp, s5, gp
                  srai         t2, a2, 12
                  sll          ra, s0, t6
                  addi         gp, s6, 1839
37:               srai         tp, s3, 4
                  bne          t1, sp, 49f
                  bltu         s10, a7, 59f
                  srai         ra, a0, 14
                  auipc        s7, 20614
                  bltu         t2, a2, 48f
                  srl          s6, s1, s9
                  blt          t4, s10, 47f
                  bltu         t0, a0, 47f
                  sltiu        s10, s4, 1487
47:               sll          zero, t0, s0
48:               ori          t3, t2, -533
49:               bgeu         sp, tp, 54f
50:               slt          a0, s5, a6
                  nop
                  srl          s5, ra, a0
                  xor          s5, t4, s5
54:               addi         t3, s2, 1905
                  bltu         t4, t1, 56f
56:               xori         a5, tp, -1656
                  bne          a3, a2, 60f
                  slli         s8, zero, 14
59:               srai         t1, t3, 19
60:               bltu         ra, a5, 61f
61:               bgeu         sp, s11, 79f
                  andi         a6, t1, -1267
                  srli         a1, a1, 28
                  blt          s6, sp, 79f
                  sltu         t3, t2, t4
                  srai         a7, s6, 30
                  lui          s8, 800118
                  bltu         s10, t1, 86f
                  srli         s5, s1, 6
                  xor          gp, s5, a4
                  nop
                  bge          a7, zero, 76f
                  and          t1, a2, tp
                  auipc        a7, 927173
                  bgeu         t1, s8, 87f
76:               ori          s5, tp, -1661
                  srai         ra, tp, 0
                  bge          s8, s2, 90f
79:               bne          t2, zero, 84f
                  slt          s5, a1, a6
                  lui          s11, 669304
                  bgeu         a1, s7, 94f
                  addi         t1, t4, -1733
84:               beq          t3, a5, 90f
                  sltu         a7, gp, s9
86:               sltu         s4, s1, sp
87:               xor          ra, s6, s1
                  srli         s5, t1, 27
                  xor          gp, a1, t0
90:               srai         a0, s6, 13
                  nop
                  bge          s9, t2, 109f
                  srl          tp, s2, sp
94:               bne          tp, a3, 111f
                  srli         s4, s6, 29
                  slti         a2, ra, -1935
                  nop
                  andi         s8, a1, -542
                  xori         a7, t1, 1234
                  auipc        a4, 684290
                  sltiu        s3, tp, 621
                  slti         a7, ra, 767
                  addi         a4, s10, 659
                  srl          s8, s7, ra
                  sub          s8, s4, s10
                  bgeu         a3, t3, 112f
                  sltu         s8, t1, ra
                  add          a1, t1, s8
109:              andi         s1, s10, 1842
                  nop
111:              blt          a3, sp, 122f
112:              sltu         a2, t5, tp
                  bne          a3, s10, 117f
                  sltu         ra, t0, s9
                  beq          t3, s1, 135f
                  nop
117:              sltiu        s5, s1, -915
                  addi         s3, tp, 520
                  ori          a0, a0, -500
                  sltiu        t2, s10, -1969
                  sra          a1, a7, a7
122:              sra          t5, s5, a4
                  sltu         s4, t1, a6
                  sltu         s9, s11, t0
                  sltiu        t0, a0, 544
                  sra          t5, t5, s3
                  lui          a4, 480874
                  sll          a7, s11, a0
                  bgeu         s7, t4, 130f
130:              bge          a5, a0, 141f
                  sra          t3, t6, s8
                  sll          a0, t6, a7
                  slti         s6, s11, -1293
                  ori          zero, s10, -1141
135:              lui          s5, 607387
                  slti         s1, s6, -360
                  sra          zero, s0, a4
                  beq          t3, t4, 155f
                  xori         a7, a0, 1457
                  srli         t3, s1, 16
141:              xori         t3, s5, 593
                  srli         a4, s7, 14
                  slli         a4, t5, 15
                  srl          a3, s7, s6
                  slti         sp, t3, -1556
                  slli         zero, t4, 31
                  sra          s3, s10, sp
                  auipc        a4, 148030
                  lui          a3, 577373
                  xori         s10, s5, -205
                  bltu         s0, ra, 154f
                  sll          ra, a4, s5
                  sll          s1, tp, tp
154:              sltiu        zero, t3, -1921
155:              sra          a3, s0, ra
                  sll          tp, s9, a4
                  andi         t3, s7, 483
                  bge          s5, t2, 176f
                  srai         t0, s8, 16
                  beq          gp, s5, 180f
                  auipc        a3, 287896
                  bltu         s10, s5, 168f
                  ori          s7, t1, 221
                  sra          s1, t1, a2
                  slt          s5, a1, sp
                  sltu         s6, s7, t3
                  or           s7, t0, a5
168:              nop
                  slli         s8, a4, 6
                  xor          s6, t1, s10
                  srli         a0, s5, 9
                  srli         a6, s8, 15
                  slti         s7, s9, 1374
                  sra          sp, t4, t4
                  addi         t0, a6, -404
176:              addi         s3, a2, 1381
                  addi         s6, s1, -1681
                  andi         gp, t3, 1395
                  srli         s3, t3, 4
180:              and          a1, t4, a2
                  srli         t3, s5, 15
                  andi         a4, s9, 332
                  lui          t3, 573185
                  sltu         a0, a6, a2
                  slli         a6, zero, 20
                  srai         ra, a1, 28
                  addi         a6, t6, 1044
                  srl          s3, s5, a6
                  bgeu         a6, s7, 209f
                  bne          t5, t3, 195f
                  add          a5, t4, t6
                  xori         s10, s7, -832
                  andi         s11, s7, -763
                  la           a2, region_0+1466 #start riscv_load_store_rand_instr_stream_1
                  xori         t1, a2, 1190
                  auipc        t5, 793593
                  sra          t1, s9, t3
                  sll          gp, a0, t3
                  slti         s3, s2, 1645
                  lb           a5, 245(a2)
                  srl          s9, s4, t6
                  addi         a0, t3, 183
                  lhu          s11, -1428(a2)
                  lbu          a6, -1362(a2)
                  sh           t0, -120(a2)
                  lbu          t0, -194(a2)
                  andi         a6, s5, 770
                  sub          s8, a6, s7
                  srli         s11, zero, 12
                  lb           a5, 7(a2)
                  lbu          sp, -1304(a2)
                  sb           t6, -475(a2)
                  lb           a5, 115(a2)
                  andi         s6, s8, 1076
                  addi         s2, a4, 537
                  andi         zero, a6, -476
                  sra          s8, gp, t6
                  sll          a7, ra, a0
                  addi         s4, tp, 1823
                  lb           tp, -567(a2)
                  andi         a4, a3, 1911
                  slti         ra, ra, -286
                  sra          s1, ra, a0
                  slli         s7, t4, 11
                  and          s7, s7, s3
                  lw           a1, -910(a2)
                  lbu          a0, -775(a2)
                  sltiu        a1, s6, 52
                  lb           zero, -361(a2)
                  sb           s4, -1377(a2)
                  lw           s10, -654(a2) #end riscv_load_store_rand_instr_stream_1
                  bgeu         s11, a7, 195f
195:              add          t2, s4, a6
                  or           a5, s8, a4
                  auipc        gp, 534951
                  and          a4, sp, a7
                  lui          a7, 77111
                  sll          a4, t1, s6
                  xori         sp, gp, 533
                  and          s9, s11, a3
                  slli         s4, s9, 9
                  add          s4, sp, t2
                  auipc        t5, 747873
                  nop
                  and          s10, s7, s4
                  and          s1, tp, zero
209:              slli         tp, a7, 23
                  xori         t0, t2, 1243
                  add          sp, sp, a0
                  bne          t2, t5, 218f
                  bgeu         t0, a2, 216f
                  sltiu        a3, a2, 703
                  beq          sp, t5, 227f
216:              blt          a4, a3, 219f
                  sra          s6, t1, t5
218:              srl          ra, a2, a5
219:              add          s9, a1, s6
                  slli         s3, s5, 24
                  bge          s7, s6, 222f
222:              xori         s2, t4, -649
                  and          zero, zero, a6
                  sll          ra, t4, s7
                  bne          s7, s4, 231f
                  sltu         s2, sp, s6
227:              slli         t2, a6, 28
                  sub          s8, s5, s5
                  or           tp, s7, t5
                  sub          t5, ra, a6
231:              nop
                  bge          s1, t3, 234f
                  xor          a1, s4, a4
234:              sltu         a7, s0, t4
                  slti         a5, t1, 1319
                  slt          s11, sp, s3
                  sll          a5, s0, s10
                  auipc        s2, 657010
                  xori         a7, sp, 1339
                  andi         a4, a6, 1349
                  bgeu         s7, s3, 246f
                  addi         a2, s9, 151
                  auipc        t1, 764403
                  nop
                  xori         a5, s10, -45
246:              add          t1, a3, t1
                  srli         s7, s6, 7
                  sub          tp, s6, ra
                  ori          sp, t0, 1950
                  bgeu         t4, s10, 265f
                  sub          a7, t3, a2
                  lui          t2, 724809
                  auipc        s11, 1003744
                  sltiu        a3, t4, 179
                  slli         s2, s7, 3
                  bge          t0, t4, 262f
                  bne          s0, s1, 261f
                  xori         s3, a5, 427
                  srli         t2, s0, 12
                  sltiu        a6, a0, 117
261:              srai         t0, s5, 3
262:              sltu         s9, zero, gp
                  srai         t5, s2, 7
                  bne          t2, t6, 275f
265:              bltu         s4, s0, 282f
                  beq          s7, t3, 278f
                  ori          t2, sp, -1664
                  srli         ra, a6, 9
                  xori         ra, tp, -1988
                  or           t1, t0, ra
                  auipc        t2, 291906
                  lui          a1, 481861
                  sltiu        a5, ra, 305
                  sltiu        ra, s9, 1575
275:              addi         s5, s5, 1969
                  addi         a2, ra, 995
                  andi         s2, sp, -719
278:              slt          t1, zero, t3
                  nop
                  lui          a7, 253898
                  add          gp, a4, t5
282:              beq          a3, a1, 300f
                  add          s11, s7, s10
                  and          t1, sp, ra
                  sub          a0, tp, s9
                  srl          t1, a5, zero
                  and          s11, t6, a7
                  blt          s1, s2, 294f
                  srl          t3, a1, s0
                  sll          a2, a1, t4
                  xor          s10, t5, a3
                  bge          t4, s9, 304f
                  srl          s8, s7, s1
294:              srl          s4, t0, t3
                  srli         a6, s5, 8
                  sll          s1, tp, t1
                  sub          a5, gp, s11
                  or           a6, tp, ra
                  nop
300:              add          t2, a1, t2
                  sltu         s9, a0, gp
                  xori         s3, t1, 585
                  srl          s4, s5, t6
304:              or           s4, a7, a0
                  srl          sp, a7, s11
                  xori         gp, s3, -321
                  sll          a5, zero, a0
                  add          s2, s1, a2
                  beq          s0, ra, 314f
                  addi         zero, s5, 153
                  nop
                  bne          s2, s11, 318f
                  ori          a7, s9, 188
314:              bge          s7, tp, 319f
                  addi         s11, a7, -1621
                  lui          s4, 405831
                  auipc        a2, 854830
318:              srai         s2, s2, 0
319:              andi         s1, s0, -768
                  sub          ra, t3, s3
                  or           t2, s3, zero
                  blt          s3, a0, 328f
                  blt          tp, s2, 329f
                  beq          a5, t4, 335f
                  slti         ra, a3, -352
                  add          a2, t4, a5
                  lui          a6, 1046822
328:              sub          a2, s0, s5
329:              xor          a4, s5, t5
                  srl          tp, a1, a7
                  add          a3, s5, s1
                  addi         s9, s6, 1728
                  bge          a5, s10, 351f
                  sltiu        t0, s4, -1711
335:              auipc        ra, 64329
                  slt          t5, s1, sp
                  add          t0, s11, s1
                  sra          a3, s3, a0
                  srai         a1, t0, 25
                  bltu         sp, a4, 344f
                  blt          a1, s4, 359f
                  bne          t3, s9, 345f
                  bge          s8, s0, 345f
344:              blt          a7, t1, 349f
345:              sltiu        s4, gp, 1017
                  bge          s0, a6, 350f
                  sltu         s7, a1, a4
                  srli         tp, t4, 22
349:              and          s2, s5, s1
350:              srai         t2, s10, 17
351:              srli         s7, a7, 10
                  or           t5, s8, a7
                  addi         ra, a5, 287
                  slli         a4, ra, 7
                  srai         s6, s3, 29
                  or           t0, a3, t3
                  and          t0, a5, t0
                  slli         t3, t6, 14
359:              slt          s1, a7, a0
                  bne          s4, s0, 363f
                  xor          a2, t2, t1
                  or           s8, s3, s6
363:              srai         a4, s8, 19
                  srai         sp, sp, 14
                  sll          a5, s5, s4
                  srli         s8, t4, 5
                  and          a3, s3, s8
                  bne          s10, t0, 369f
369:              auipc        ra, 928674
                  xor          s9, t3, a7
                  xori         s10, a0, 464
                  xor          s8, a0, s5
                  sltu         t3, t3, gp
                  nop
                  slli         t3, s10, 8
                  sra          t2, s7, a3
                  bge          s8, t0, 397f
                  sll          s8, s11, t0
                  beq          a5, tp, 385f
                  add          a1, a7, a7
                  ori          t1, a5, 1463
                  nop
                  xori         a0, s2, -1466
                  bge          a7, s7, 390f
385:              beq          a6, s1, 397f
                  slti         sp, s0, -1047
                  add          gp, s3, s3
                  and          t3, a2, sp
                  slt          s4, s8, ra
390:              sltiu        t1, zero, 1376
                  sra          a7, t1, sp
                  sra          s3, s8, a7
                  bne          s4, s11, 394f
394:              bne          t5, s6, 406f
                  sub          s8, a1, gp
                  blt          a1, a6, 411f
397:              lui          s3, 67128
                  and          s7, s3, t4
                  or           a0, t5, ra
                  xori         s11, s2, 1620
                  srai         s7, a7, 5
                  sll          s6, s5, a5
                  blt          s4, a2, 423f
                  blt          sp, s6, 424f
                  xori         s4, a6, 1751
406:              bge          a4, tp, 418f
                  blt          a5, a0, 418f
                  or           a5, s2, s10
                  srli         t5, a0, 26
                  sll          a0, gp, ra
411:              sll          a3, ra, t2
                  bgeu         ra, a0, 413f
413:              slli         s8, s5, 13
                  slti         a6, t2, -1571
                  bgeu         a1, a5, 432f
                  nop
                  beq          s9, s1, 434f
418:              andi         s7, t2, -1032
                  slti         t0, sp, -1011
                  slti         a4, s5, 1125
                  addi         s3, s4, -984
                  addi         a6, s2, -1867
423:              addi         t3, s1, 1923
424:              add          s1, t3, s11
                  or           s3, t2, a6
                  ori          zero, t0, 39
                  sub          a7, s2, t1
                  srai         s1, s2, 9
                  slt          s1, t6, a1
                  beq          tp, sp, 435f
                  bne          s5, a0, 434f
432:              sra          a5, a1, sp
                  ori          t3, a2, 1269
434:              bltu         gp, s5, 440f
435:              srli         s2, s3, 29
                  or           s2, s8, a3
                  ori          zero, s0, 35
                  auipc        gp, 720724
                  sltu         a5, sp, ra
440:              lui          s2, 892247
                  add          t2, s1, s11
                  blt          s5, s5, 447f
                  srl          t0, tp, sp
                  bge          a2, t1, 461f
                  auipc        a2, 914882
                  sltiu        t5, s9, -1189
447:              xor          s5, sp, s11
                  bge          s9, gp, 449f
449:              slt          s6, tp, a1
                  srli         s8, a6, 22
                  blt          a5, t3, 452f
452:              addi         a7, t1, 1281
                  ori          ra, a1, 283
                  and          a7, gp, ra
                  sll          a4, t6, ra
                  andi         t1, a5, 511
                  sll          a5, a0, a2
                  sub          sp, s3, s8
                  add          s7, a3, t5
                  addi         s5, a4, -431
461:              bge          tp, s7, 462f
462:              srl          s8, s5, ra
                  nop
                  bltu         s5, s10, 466f
                  and          t5, a0, s9
466:              or           a7, s8, t0
                  sll          a1, s11, a7
                  sltu         s2, s6, a6
                  sltiu        t3, ra, -2000
                  lw           t0, 4(s0)
                  and          a2, tp, a0
                  addi         s0, s0, 36
                  srai         s4, a1, 15
                  xori         t5, a7, -1169
607:              addi x24, x5, 1
607:              jalr x24, x24, 0
sub_6:            bne          s3, gp, sub_6_stack_p
                  srl          gp, ra, s10
                  addi         a0, tp, -3
sub_6_stack_p:    addi         s0, s0, -60
                  srli         a2, s6, 4
                  slti         a1, s2, -480
                  srl          tp, s6, a5
                  lui          s7, 797729
                  srl          sp, sp, sp
                  ori          a1, a1, 464
                  sw           t0, 4(s0)
                  auipc        a3, 502792
                  and          a4, a1, a2
                  andi         a3, a7, -457
                  auipc        s1, 483656
                  la           gp, sub_7
                  addi         s8, s2, 493
                  and          a4, s9, s7
                  addi         gp, gp, 752
                  slt          a2, s7, s4
                  or           t3, s8, s3
                  slt          a5, a5, a2
                  andi         ra, tp, 576
sub_6_j10:        jalr         t0, gp, -752 #jump sub_6 -> sub_7
                  la           ra, sub_7
                  slli         t1, ra, 16
                  xori         s6, s9, 291
                  slt          a1, sp, a0
                  srai         zero, zero, 0
                  addi         ra, ra, 4
                  sub          t1, s10, s9
                  lui          s1, 413508
                  sub          s4, s9, s5
sub_6_j11:        jalr         t0, ra, -4 #jump sub_6 -> sub_7
                  nop
                  or           zero, zero, zero
                  sra          zero, s1, s3
                  xor          t3, a0, tp
                  auipc        s7, 750788
                  andi         t3, a3, 1418
                  srli         t0, s10, 20
                  sltiu        a7, t3, -705
                  lui          gp, 657656
                  slt          s7, a2, s7
                  beq          t0, s2, 15f
                  nop
                  andi         t5, a7, 1701
                  xor          s9, tp, t1
                  slli         a0, t3, 20
15:               blt          t4, a3, 28f
                  sltiu        t2, a5, -1015
                  sub          t1, s4, s6
                  srl          t5, t6, t2
                  srai         s4, a7, 23
                  andi         s3, t3, -207
                  addi         s10, tp, 265
                  bge          a4, s11, 23f
23:               sltiu        t1, s2, -1169
                  xori         tp, s6, -764
                  bgeu         sp, t1, 28f
                  addi         tp, a0, 1044
                  srl          t1, s1, t1
28:               srli         tp, t2, 31
                  lw           t0, 4(s0)
                  slti         a5, s8, 773
                  addi         s0, s0, 60
                  add          s7, s5, s0
                  ori          s9, a5, -548
                  srai         a2, t2, 29
69:               addi x23, x5, 1
69:               jalr x23, x23, 0
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
.word 0x7e71aed4, 0xb8cb6812, 0x4b6936da, 0x233adcb1, 0x86e27026, 0x75442346, 0x3a644e56, 0x96cc2d31
.word 0x2a3f1289, 0x9129249c, 0x311132d8, 0xdf819863, 0xc72d3823, 0x490b8d2e, 0x17e9bfd1, 0xa5089687
.word 0x0a547225, 0xb8ba0846, 0xd50d1037, 0x9abaa5b1, 0x1d85821a, 0xb63ca88b, 0x92a24971, 0x0e80f87d
.word 0xf659e17e, 0x48a2ef19, 0x58845c45, 0x671105dc, 0x7d23f4fa, 0x9a6a980d, 0x1c87104b, 0x0e627733
.word 0xaa78e3c5, 0xb6dda22f, 0xab304f9f, 0x147fbf7f, 0xaeab674b, 0xfc5fe2c1, 0x591d74db, 0xee782270
.word 0xecd2d1a6, 0x45b81b2b, 0xf798679e, 0x8ee34a76, 0x6c2103b8, 0x55491935, 0x5dc3b93f, 0x4286b3a2
.word 0x1da70d2b, 0xbc8a3c93, 0x1290be0f, 0x6c23096f, 0xf6eb2f6e, 0xbecd70d2, 0x49b5a7e7, 0xf90749ae
.word 0xecbfbff5, 0x35a98332, 0xde3b9371, 0x500e961e, 0xbf026df2, 0xf73214bd, 0x018ff390, 0xda9d492c
.word 0xfdb9f2c7, 0x0c765c1a, 0x5e854275, 0xc88357f7, 0x30071f14, 0x7b36c3f7, 0xc762cd2a, 0x5b883ae8
.word 0xff4dee0e, 0xb03baa68, 0xe90feb7a, 0x63229374, 0x9d9935e8, 0x1e4c7af9, 0x2a6d6dc6, 0x0b3107fc
.word 0x5fe41d71, 0x4de129d6, 0x7ac963f1, 0x196edd8a, 0x2723d5c6, 0x6bc5a459, 0xca8efbe3, 0x9d7dbf5a
.word 0xa31be1c3, 0xba915c3a, 0x4aa9a160, 0x876e6862, 0x789a81ad, 0x1f4a69fe, 0x94028374, 0x1fced4f2
.word 0x8e76cf5a, 0xb0124854, 0xc1b1662b, 0xe702482a, 0xaa218b55, 0x1446dae8, 0x722aed6c, 0x6bf90ea8
.word 0xd12e5da6, 0xc98c7edf, 0x4b36b612, 0x0e3e1157, 0xfa82978d, 0x2cc3dd1d, 0x25232429, 0xb9411239
.word 0xa3870f8d, 0x36375658, 0x37bd125e, 0x85f8c8fd, 0x2217df18, 0xb4b6694d, 0xe292380e, 0x4f9f10cd
.word 0xf02edbc1, 0xcd7bba02, 0xa6faaef0, 0xe1819a39, 0xc4592806, 0xf8789f73, 0xbd75d5ab, 0xe3969cbf
.word 0x5a2030a7, 0x5592237a, 0x96c6b6e1, 0x384f9ab5, 0x10912046, 0x73f582f6, 0x5503bdca, 0x59240389
.word 0x11eea8c2, 0xd2d9e893, 0x0064ba71, 0x3582d213, 0x623d77f8, 0xe58deb17, 0x1d939607, 0x684ee55f
.word 0x7bd3d620, 0x7aa53a30, 0xa61235e8, 0x49741e3b, 0x6cc8e4cc, 0xaff8f69f, 0x50b8d351, 0x24d32282
.word 0x1e1f08cf, 0xec38f552, 0x8cfe0305, 0xdcfc8c65, 0x4f3e35c7, 0xa7000e10, 0x9a5eb451, 0xc096f233
.word 0x84bbd839, 0x789e5e31, 0x3340114b, 0x5cbf1ada, 0x044a0a9e, 0x5ba88a35, 0xe2e1f60e, 0x0e3f8297
.word 0x4016ac9d, 0xb835e1eb, 0x4ef74aca, 0x95793efe, 0xc99254d0, 0xfaac8b16, 0x66a3072d, 0xe2d8ea34
.word 0xfab13026, 0xbe81559b, 0x68a31f62, 0xbe45d52e, 0x0761c89e, 0xed71889d, 0xaf6b7c16, 0xe7be684d
.word 0xe58d10be, 0x6b48e948, 0x429d1548, 0x016dd94f, 0x5004a810, 0x893262f9, 0x7c22ac7c, 0x6ecea1c8
.word 0x9b933682, 0x9a964e1a, 0xbcbd2a5a, 0x3bccf974, 0xa08475ec, 0xc8252a9e, 0x1c763e67, 0x1e357a1a
.word 0x3d429eb7, 0x9c798e5c, 0xf7e87351, 0xeda41b6a, 0x0c256397, 0x6c6fd161, 0x0e1aaebb, 0x6c1da13b
.word 0x463cc604, 0x897f7d94, 0x509d0da7, 0x9ab85d33, 0x7918a22d, 0x085c1529, 0x101bd331, 0x3403da98
.word 0xdd39cbbd, 0x5891886e, 0xbc435c1e, 0x72f221c5, 0x060e180e, 0xe6baeda0, 0x814ceb2f, 0x990ec2bd
.word 0xae17388b, 0x19b68543, 0x883a010d, 0x198543cb, 0xb3cc0efc, 0x66b35e44, 0x26c8b751, 0xec1e5819
.word 0xe26a35e2, 0xd2d86d81, 0x3f9b4266, 0xbcc4f666, 0x675a1af8, 0x3d3d4cfe, 0x19f23e8a, 0xcfba861c
.word 0x7aff2223, 0x20e541ec, 0x9df87a2a, 0x83790287, 0xac0e427b, 0x4225f6ce, 0x8affdd3e, 0x513da157
.word 0xa653705a, 0x57b601e4, 0xd474cdfe, 0x3c3acb3c, 0xba5219b9, 0xc8c8f6e7, 0x558a1280, 0x39612393
.word 0x341a6750, 0x250c23b0, 0x1c1bd0c2, 0x0aaceb3d, 0x613c357b, 0xe60cd876, 0x9fccb5b8, 0x994e20af
.word 0x3ec21460, 0x1a8259a7, 0x9dc570a7, 0xece54426, 0x8f7f3f5e, 0x001899f1, 0x45a3e7bb, 0xf4f3224e
.word 0xf2089584, 0xd51fbf9f, 0x0be28549, 0x26a1e8af, 0x57b09d9b, 0x7c4048d0, 0xd4d28c15, 0xc9e1ef21
.word 0x747eb124, 0x2b2c43ed, 0x143ac424, 0x80b32240, 0xf1a6657e, 0xe5e1c29c, 0x57962fc2, 0x88f3cf32
.word 0x5703f9f9, 0x1ce91dce, 0x76a40172, 0x5ab666db, 0xab05c827, 0x6d1bf050, 0xb60539ab, 0xa47330a3
.word 0xce5d478a, 0x1482b57b, 0x3b249943, 0xd4eadcaf, 0x8b9b07b4, 0xaf9f70ca, 0xecfce88f, 0xbdc76eae
.word 0x25bd7cc6, 0x8847b309, 0xd192822b, 0x6736be85, 0x0c71fe99, 0xa363fbc8, 0x5bcc14cf, 0xa5550239
.word 0xc7a605f7, 0xf2ac23ea, 0x97e600b1, 0x5bfb4179, 0x0ea3c4c3, 0x878e9489, 0x0418f27a, 0x715648bd
.word 0x8dbd8a5c, 0x7b0f8606, 0x926f7a05, 0x1d9d8efd, 0xbcd80a3f, 0xbaada53e, 0x1231ef0d, 0xadef08db
.word 0x47272dbb, 0x9f248e5b, 0x095c94d5, 0x4c2f6e57, 0x508644a6, 0x8402342d, 0x25c67a85, 0x2827ba01
.word 0x0ea8bbf6, 0xdfb4f3ca, 0x966ea478, 0x07113f76, 0x0c90ad34, 0x03c4c34d, 0x45fd7ca3, 0xd584acdd
.word 0xcc72827f, 0x66bc0da7, 0x353cbf66, 0x026d1b2f, 0x82edeeab, 0xbf4b03d4, 0x0de83976, 0x258c0776
.word 0x544748d7, 0xfea5fa37, 0xf0b1af6c, 0x1b45bdda, 0x555d21e2, 0x9727398e, 0x08e52684, 0x1b5d3aef
.word 0xffcab254, 0x693538a5, 0x28e1f6fb, 0xc67dab87, 0x9712008a, 0xebee83d0, 0xf0e8035d, 0x9037eec4
.word 0xabe3be88, 0x33555a5a, 0x81c229f2, 0xf9c8c8cd, 0x40159cb1, 0x062c33e7, 0x27bb51da, 0x59698e3c
.word 0xa6824438, 0xda030374, 0x47c92ee3, 0x5a3d2266, 0xb45a4632, 0x71adf45f, 0x6ab4f1f7, 0xee180a7c
.word 0x7310eded, 0xa5880ec8, 0x18e86f93, 0x89b81d38, 0xe77a7537, 0x422691c4, 0xb82c7bb7, 0x737040a0
.word 0x5d801aa5, 0x22b5c9e8, 0x36658791, 0xeaee884d, 0xcebee511, 0x392cd7a4, 0x8f0972e8, 0x99a1b65d
.word 0x57f74495, 0x1c7fb1e9, 0xd94bf66b, 0x8f3a7b72, 0xe5ac16a8, 0x177926e0, 0xd2d63617, 0x216dd19b
.word 0x2c7af1b8, 0x8b1e657d, 0x1d1d5f8d, 0x5828d5bc, 0x5ff288bd, 0x81157ce9, 0x0596668c, 0xa1c92cd9
.word 0x4b7348a2, 0xeba2e74c, 0x63d35d39, 0xa687d8ec, 0xc1d69c54, 0x78d2e4cc, 0x8d59be6d, 0x3bf3ab96
.word 0x77e48778, 0xf7725e85, 0xeeeb295d, 0x837d4fc5, 0x8ffb3e53, 0x04cd0c24, 0xe13bbb0c, 0x610a5d9c
.word 0x60965bb0, 0x5a0ff308, 0x3671c458, 0x0d3635f8, 0x452f614d, 0x87695599, 0xfc1de53e, 0x45632a89
.word 0xe3e42dcb, 0xe5253f80, 0x56528e11, 0x509c4042, 0x399e2162, 0x52e30b92, 0x67a71418, 0x1fd5dac3
.word 0xc05079e0, 0x4f9e1057, 0xaebd4474, 0xacd3819b, 0x1c417e97, 0x596d9b72, 0x448ca499, 0x494b6608
.word 0x9c27bbfb, 0xd4469bf2, 0x111b30f1, 0x42f044ef, 0x8ae839ad, 0xe75d451b, 0x8a616009, 0x1a71f802
.word 0xcfc59d64, 0x940a3877, 0xcae0657d, 0xb2875257, 0x47949ead, 0xf78004c3, 0x49068b04, 0x71b0fc91
.word 0xafa918cb, 0x8ff1457b, 0x1fefd65b, 0x1207f43e, 0x5ce2d380, 0x920fc0e6, 0x6d162333, 0x5df2ac32
.word 0x720d5347, 0x726aada0, 0xd186d5aa, 0xfb863aec, 0x747cf4ad, 0x8c5449df, 0xd0ea5457, 0x3783207a
.word 0x40a0f38b, 0x0c6592c3, 0xa3b40b7b, 0x33c680a6, 0x4f4a799a, 0xc13dccf2, 0x5d4507e3, 0x418dfb9f
.word 0x3a1c18f8, 0x74bdba03, 0x2f3be475, 0x070a5db9
.section .region_1,"aw",@progbits;
region_1:
.word 0x6d7c061e, 0x46e3e93f, 0xb5df6dd7, 0xf31a5207, 0x7ea15585, 0x8d00bdb8, 0x811d8e38, 0x543d53e0
.word 0xc7af6fc4, 0x7ef27570, 0x5280b27f, 0x81610446, 0x7f00a38a, 0x8fa10f7d, 0xdf070342, 0xd2dc02e3
.word 0xc3a83c42, 0xea0ebf73, 0x8e211adb, 0x321e0a06, 0x02e9042b, 0x09a5cf4a, 0x84beb106, 0xa852071a
.word 0x04927bed, 0x64c59786, 0x744152cf, 0x2748dce0, 0xd8ef0909, 0x686fd805, 0x0fae966b, 0xe9443e5b
.word 0xc3777d5d, 0xbab84cb5, 0x5f9f2797, 0x4c4aca33, 0xf07a2b87, 0x327cd2ff, 0x24d905ba, 0x29faa860
.word 0x2f2ad8cd, 0x4730354a, 0x3391552f, 0xfcd4a1b2, 0xc376c87d, 0xf839215f, 0x2a4c818a, 0x2224eb43
.word 0xd50981fd, 0x876ba113, 0x273aa79b, 0x06db686e, 0x096650b4, 0x5800bdff, 0x13d754ce, 0xc9446161
.word 0x6c5a8109, 0x10f007e2, 0xfc115ec3, 0x712b58a3, 0x8209b39b, 0x9678b72a, 0x65a7ca96, 0xd5ff7fa7
.word 0xa021a4f2, 0x55a2bbdf, 0x409587b1, 0xe178fd2c, 0xe8fd15b9, 0xbc785abf, 0xf7b66042, 0x10905a85
.word 0xb5d4dc34, 0x05c70b2d, 0xf3d95a43, 0xab268e74, 0x7ac3ff56, 0x55f4eeb0, 0x9d707004, 0x9196e0a8
.word 0x493de817, 0x51839649, 0xe196524f, 0xb7883138, 0xf3f7fb7d, 0x9cc813f3, 0x80515da9, 0x1d315df4
.word 0xb225cb18, 0xfe518c9b, 0xc1b98f9d, 0x44c53946, 0x58673f28, 0x2dffe09f, 0xf12b99c3, 0xe685760d
.word 0xfc4130ff, 0x9cacf63c, 0x4877fcfb, 0x41c3ba60, 0x3fa88f55, 0xf651c362, 0xd553c178, 0x74fb05c4
.word 0x964760a7, 0x998132df, 0xf9b1592e, 0x8b194a46, 0x61d21a40, 0x43a60144, 0x9aa47c21, 0xce314d8b
.word 0xcc90dd78, 0x0c790abd, 0x01818fba, 0x16efef90, 0x72491f39, 0x7e3cec63, 0xf3b82cae, 0x7fc1d316
.word 0xec2795d1, 0x03bce750, 0xac7b175a, 0xf1cbe894, 0x84209fe8, 0xf9b6d4a8, 0x20bfef5c, 0xab3a6d4d
.word 0xdcd38dfc, 0xd9506934, 0xf64c403e, 0x6b5343f6, 0xac165561, 0x57138010, 0x79265a55, 0x9dac8c99
.word 0xb720ecf1, 0xf4d032c1, 0xb84f225b, 0x59e6cf72, 0xa98cd4ee, 0x707c7f9f, 0xbd6bec69, 0x60effe8f
.word 0x8b85904e, 0x4ecc396a, 0xec3d6657, 0x54bda3ae, 0xb6db7b6e, 0x8a67fc5b, 0xceea8472, 0x7d11bdcc
.word 0x86e8ac75, 0xcdde4747, 0x4c42d4b2, 0xf2d8ef2d, 0xbd0cc157, 0xde716288, 0x23e45047, 0xf68f3606
.word 0xf24128d4, 0xc40f131f, 0x404c4a97, 0xf01dc376, 0x191eaa2c, 0x27400ac9, 0xce5b22b8, 0x384f3ad4
.word 0xcd691657, 0x30d0b32b, 0x712461e4, 0xcde48eea, 0xfb67f7a7, 0x26e7729c, 0xabc9e121, 0x40b13461
.word 0x1adaa6ba, 0x39bae06e, 0x79e654c4, 0x9b1bfc5d, 0x6ac705e8, 0xd65cd1df, 0x1336f6d7, 0xff7c76fe
.word 0x3bfc4401, 0x52eb1be5, 0x7fbb8ff5, 0x725120d5, 0xadcac113, 0x2f8b519d, 0x1d638429, 0x33e4190e
.word 0x4f5cb359, 0x7a7e324e, 0x1615df71, 0x96e3dc4b, 0x36ee2894, 0x9e72bd6e, 0x366f69bc, 0x7c4044a9
.word 0xa3614b31, 0x2554deaf, 0xd65301d5, 0x670a6253, 0x05af20f9, 0xf1210762, 0xf777d29d, 0x86ad2de6
.word 0x242865cc, 0x08cc201c, 0xc9463854, 0x8cb84abb, 0xaaf9f8c2, 0xd1863b69, 0x66ab1bbb, 0x39b087d6
.word 0xac49837a, 0xcb632455, 0xcad67361, 0xaf42efc1, 0xca2d2ed3, 0xcc8ea278, 0xae239d41, 0xedb234d8
.word 0x11568386, 0xc2927c3a, 0x6dd2db30, 0x6a720423, 0x93b164b5, 0x1400e97b, 0xa3167235, 0x8fd773bd
.word 0x991ebf98, 0x76fbaf6b, 0xb75f215a, 0x3fd37a41, 0x37fc52e7, 0xc0b859de, 0x02dfa20e, 0xe1c59ef8
.word 0xf292d462, 0x54dcf36d, 0x01634f1c, 0xb0c2a9a7, 0xd1c637c1, 0x2138719b, 0x15b7ae47, 0xc9b90598
.word 0xebfa5c44, 0x6d1fa711, 0x4a3f8120, 0xd32248c5, 0xce851af0, 0x6d07a612, 0xa75a6b51, 0x403fb832
.word 0xea263a99, 0xdf195950, 0x3cff622e, 0xda64638d, 0x36d9ec56, 0x696e454c, 0x0cc3e3c4, 0x1044524c
.word 0x987149da, 0x2f68c51d, 0xaa928f66, 0x6977dd92, 0x0b28ddb2, 0x42fdc0c0, 0x45ec079d, 0xbeec05de
.word 0x40f1f791, 0xbf99cb1f, 0x54f1ad93, 0x2ebb1566, 0xc3351175, 0x7b7ec2f5, 0x7d11d724, 0x6f0042f3
.word 0xbe9b0c1b, 0xc48e9d2c, 0x1f6437a8, 0xd66278e0, 0x26c63f04, 0x91fb154a, 0x776d4a9f, 0xd024b8ae
.word 0xb004b871, 0x47c901a5, 0x06888a3f, 0x4ddac21a, 0xcdd23ef3, 0x7252f2dc, 0x309243d5, 0x644c097e
.word 0xcc44e0ef, 0x6b110df0, 0x2728e8ab, 0x84d22866, 0xda610017, 0x2777226e, 0x5c1c06e0, 0x9c5e90f2
.word 0xdd17451f, 0xd31ca20f, 0x45907c98, 0x4b853a06, 0x8eee3048, 0x94406913, 0xf0498054, 0x4762a0c8
.word 0x583ca9b1, 0xc3f8467f, 0x850b3c6a, 0x8dc14096, 0x2625f658, 0xde4d7448, 0xce51ff03, 0x07d4e726
.word 0xc6de5a43, 0x82c36467, 0x6af52935, 0x83bc4baf, 0x3a11ecac, 0xe3e85a54, 0x29e9ffae, 0x8da5475b
.word 0x1e90cef0, 0x3630eaa4, 0x74181b2b, 0x400500f9, 0x21a6bda9, 0xe2bfaa23, 0x3b6d55a1, 0x57d63f33
.word 0x46a7688d, 0x05653017, 0x32719498, 0x6e4560bc, 0xb64b858e, 0x25ea1ced, 0x06a94a43, 0x940ddf93
.word 0x52977a1a, 0x0e73b914, 0x8cdcfd86, 0xe150b4cc, 0x4cfee593, 0xcf1de55e, 0x99b2d600, 0xd8e20c82
.word 0x0f653c23, 0xa5816e97, 0xd7dcdf90, 0x030898d7, 0x76e6f329, 0xcd8f190b, 0xd1ba948f, 0x0c506e80
.word 0x3ed5eae3, 0x171eb3e2, 0x4d954dbd, 0x3ca89624, 0x8d82b2b3, 0x352f9fe8, 0x4ef6792c, 0x2675b49f
.word 0x844e110b, 0x58d7ee29, 0x6d00ed31, 0xe026f7ff, 0xd7baeaa4, 0x6bd6382d, 0x01597eb5, 0x584c235f
.word 0x33ae9230, 0xba6f5809, 0x7afd5330, 0x63142375, 0xcdf264f2, 0x00055ef1, 0xbc8b0863, 0x5c2aa2de
.word 0xbc9fd4dc, 0xd76fc5a7, 0x6b78e019, 0x2bb8d2b0, 0x799c38a6, 0xbc4b3737, 0x9515aada, 0x4016273c
.word 0xc8d39af2, 0x5cb91370, 0x38fb089b, 0x104360e6, 0xe2e0a8f7, 0xbd53a2ad, 0xf442e064, 0xa3e53084
.word 0xeb567cd0, 0x931c213d, 0x28f3254e, 0x31aedc6c, 0x7d630a6c, 0x4c904b6c, 0x0c5778d5, 0xbd68b681
.word 0x9dee9e7e, 0xa67d04ea, 0xe62a4f74, 0x11c7fdd3, 0x5677c66c, 0xa8ad341e, 0xe7e30cce, 0xcf15dcea
.word 0x75c5ee15, 0x83b8138f, 0x94342d3c, 0xb70e0685, 0x858d25b2, 0x2464173d, 0xb54b550f, 0xe657bb1e
.word 0xca538390, 0xad245973, 0xc0b9d025, 0xd13ef307, 0x3f0aafec, 0x70b1e37b, 0xf77ad050, 0x0c6c7fc7
.word 0x3660b880, 0xce7e3fea, 0x22e15641, 0xd53da481, 0xa7c73e43, 0x1846306c, 0xda2af33f, 0xe59eda3c
.word 0xde4b8ec1, 0x57fdb769, 0x9bb36a05, 0x822aab1d, 0xc7d16d69, 0x512ba7f7, 0x2f78ff28, 0x4f0383fc
.word 0x86cbfc60, 0x0196c692, 0x5a5f1785, 0xf3e5efa6, 0x37921523, 0xfa576311, 0xaed763d3, 0x25990e3c
.word 0x816eae4a, 0x1496abfc, 0xc6ffdd2a, 0xcb3f1db7, 0x32caaf2c, 0x43fe1c2b, 0x10192dc4, 0x2e4135b1
.word 0x54786857, 0xb317abf5, 0x05cb818c, 0x51682a5e, 0xc5b1f117, 0x7788093e, 0x8fdda995, 0x329f243f
.word 0x001404c6, 0xfd729a01, 0x4ddba61b, 0x94f3548e, 0x8676e768, 0x7463c28c, 0x3703da21, 0x1f52be2e
.word 0xe01682c2, 0x1eb09430, 0x3f8baaf1, 0x6573630d, 0x6f1fb914, 0x2000c0e2, 0x376a6f74, 0x7a17d607
.word 0xf4aa07f5, 0xc1fe6edd, 0xbace0cca, 0x4b89acf1, 0x5dbf13b8, 0x5f3bcece, 0x67f517a1, 0x0b056c77
.word 0x4b9d6f8c, 0x886b2dcc, 0xea747288, 0x7bd1500a
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
                  add x31, x8, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x20, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x20, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x20, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x20, x4, ecall_handler
                  li x4, 0x1
                  beq x20, x4, instr_fault_handler
                  li x4, 0x5
                  beq x20, x4, load_fault_handler
                  li x4, 0x7
                  beq x20, x4, store_fault_handler
                  li x4, 0xc
                  beq x20, x4, pt_fault_handler
                  li x4, 0xd
                  beq x20, x4, pt_fault_handler
                  li x4, 0xf
                  beq x20, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

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
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x8, x31, zero
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
                  add x8, x31, zero
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
                  add x8, x31, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x8, x31, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x8, x31, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x8, x31, zero
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
