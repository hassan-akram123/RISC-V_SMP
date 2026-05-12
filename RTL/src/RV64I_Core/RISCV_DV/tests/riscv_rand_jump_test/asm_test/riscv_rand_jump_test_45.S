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
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 1
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xd
                  li x2, 0x80000000
                  li x3, 0xf15dd2a1
                  li x4, 0x93ac3bd
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xb
                  li x8, 0xdf17b770
                  li x9, 0x80000000
                  li x10, 0xe
                  li x11, 0xa
                  li x12, 0xf64bae0e
                  li x13, 0xf819f703
                  li x15, 0xb431cd8
                  li x16, 0xfb1093b8
                  li x17, 0x5
                  li x18, 0xfc353a64
                  li x19, 0x80000000
                  li x21, 0x4
                  li x22, 0xf5478785
                  li x23, 0xaa7f7c6a
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x10074500
                  li x27, 0x4
                  li x28, 0x0
                  li x29, 0x9f63c954
                  li x30, 0xa
                  li x31, 0x0
                  la x20, user_stack_end
main:             la           sp, region_0+1451 #start riscv_load_store_rand_instr_stream_25
                  lbu          s9, -160(sp)
                  xor          a7, t4, a6
                  andi         t6, t0, -1535
                  slli         s1, s6, 3
                  sh           t0, -185(sp)
                  sb           a3, 220(sp)
                  lb           a5, 156(sp)
                  lw           s1, -119(sp)
                  sltu         a2, s7, t3
                  lbu          t1, 80(sp)
                  nop
                  addi         s3, a5, 555
                  sltiu        t3, ra, -675
                  and          t5, s5, a1
                  srai         a6, s5, 7
                  andi         s2, t3, 1378
                  sb           s5, 236(sp)
                  addi         a6, a5, 831
                  sltiu        a0, s4, -1485
                  xori         s8, s2, 117
                  sra          a7, t4, s11
                  or           s1, s10, s0
                  sltiu        a7, t3, -2016
                  lb           s0, 46(sp)
                  srl          s8, gp, s2
                  auipc        s0, 535540
                  sw           t4, -255(sp)
                  xori         t5, t6, -39
                  lb           s0, 180(sp)
                  add          t5, s4, a6
                  lbu          s5, -48(sp)
                  add          t2, s7, a0
                  andi         a7, a0, -1456
                  lbu          a1, -148(sp)
                  add          s8, t0, t5
                  lhu          t5, -19(sp)
                  lb           a2, 28(sp)
                  lhu          t2, -23(sp)
                  lb           a2, -202(sp)
                  sw           tp, 153(sp)
                  sb           a0, 199(sp)
                  sh           a6, 127(sp)
                  sb           a6, 122(sp)
                  lw           s10, -251(sp)
                  lbu          ra, 160(sp) #end riscv_load_store_rand_instr_stream_25
                  la           a3, region_0+1093 #start riscv_load_store_rand_instr_stream_2
                  sb           t4, -55(a3)
                  and          a5, a4, gp
                  lh           tp, -15(a3)
                  lb           s10, 32(a3)
                  auipc        t1, 112817
                  lh           s0, -39(a3)
                  srl          t3, t3, tp
                  lui          a7, 923385
                  sltiu        s3, s6, 1871
                  nop
                  xor          a0, a3, a5
                  lw           gp, -25(a3)
                  lw           s9, 3(a3)
                  sb           t2, 44(a3)
                  sb           s3, 21(a3)
                  lhu          a6, -39(a3)
                  lbu          sp, -13(a3)
                  sll          t1, a2, s9
                  sltiu        t1, ra, -1077
                  or           t2, s2, sp
                  lbu          a6, -63(a3)
                  lbu          t3, -38(a3)
                  sub          s9, a7, s2
                  lbu          gp, -43(a3)
                  xori         t1, s5, -1304
                  slti         sp, t1, -945
                  lh           s3, 41(a3)
                  sw           sp, -57(a3)
                  lbu          sp, -36(a3)
                  sh           s9, -19(a3)
                  lb           ra, -64(a3)
                  srai         zero, s4, 6
                  sltiu        s8, s3, -1550
                  sb           s0, -36(a3)
                  lh           s7, -51(a3)
                  lbu          a7, 56(a3)
                  sh           t4, 11(a3)
                  lb           s0, -14(a3)
                  sb           gp, 51(a3)
                  lhu          t2, -11(a3)
                  sub          s7, s2, s3
                  sltiu        s8, s0, -370
                  lbu          s9, -64(a3)
                  lw           a7, 51(a3) #end riscv_load_store_rand_instr_stream_2
                  la           gp, region_0+672 #start riscv_load_store_rand_instr_stream_20
                  lbu          zero, -61(gp)
                  slti         s3, t4, 165
                  slt          t3, t6, a2
                  lbu          a7, -41(gp)
                  sub          a2, t4, s6
                  sltiu        s8, s5, 1514
                  xor          s1, s6, s2
                  xor          t5, s9, s1
                  sub          s7, a3, s10
                  sltiu        t3, s6, 227
                  sh           s4, 28(gp)
                  sb           s6, 18(gp)
                  sll          zero, s7, s2
                  sb           s0, 42(gp)
                  slti         s11, s7, 2038
                  or           a7, s11, s3
                  srl          t3, a7, t1
                  srai         t0, s7, 6
                  nop
                  sra          a3, ra, t3
                  lbu          a2, 46(gp)
                  auipc        t3, 507366
                  slt          a7, gp, a0
                  sb           ra, 26(gp)
                  nop
                  sll          zero, a1, s7
                  sltiu        tp, tp, 1320
                  auipc        a7, 804961
                  lb           a6, -26(gp)
                  srl          a2, ra, ra
                  lbu          s0, -50(gp)
                  sltiu        t2, a6, -1393
                  sb           t2, -12(gp)
                  slt          tp, t3, s0
                  lbu          a0, -50(gp)
                  sltiu        t1, t6, 1166
                  andi         s10, s6, -556
                  srli         zero, s1, 23
                  nop
                  nop
                  sb           ra, 46(gp) #end riscv_load_store_rand_instr_stream_20
                  la           sp, region_1+1036 #start riscv_load_store_rand_instr_stream_11
                  slt          a6, a0, a2
                  slt          a5, tp, s11
                  andi         a2, s5, 1720
                  srli         s7, s3, 3
                  lbu          a5, 191(sp)
                  sll          zero, s11, t3
                  lbu          s10, -67(sp)
                  sh           s2, 202(sp)
                  xor          s10, s5, zero
                  sb           s0, 33(sp)
                  lb           a3, -211(sp)
                  sb           s5, -106(sp)
                  sltiu        s3, s11, 1550
                  slti         s0, gp, -305
                  sltiu        s6, s2, 1088
                  srai         t1, s9, 20
                  slli         s6, s10, 3
                  lb           a2, -76(sp)
                  lbu          a5, 42(sp)
                  slli         t6, s2, 7
                  slli         t2, a5, 19
                  srai         gp, s3, 0
                  lbu          s3, -55(sp)
                  nop
                  lui          a1, 700880
                  lbu          ra, -231(sp)
                  sltu         s3, s7, s2
                  lh           s7, 82(sp)
                  sh           tp, 150(sp)
                  ori          s9, t3, 622
                  lbu          t0, -1(sp)
                  lb           s5, -166(sp)
                  lbu          t1, -219(sp)
                  lhu          t1, -8(sp)
                  ori          s7, a6, -1848
                  lb           t2, -131(sp)
                  lbu          s6, 179(sp)
                  lh           a3, -256(sp) #end riscv_load_store_rand_instr_stream_11
                  la           a1, region_0+362 #start riscv_load_store_rand_instr_stream_14
                  and          gp, a6, s7
                  lbu          t5, 1389(a1)
                  sub          ra, s2, t2
                  lh           s5, 160(a1)
                  lh           s1, 78(a1)
                  lbu          s7, 1550(a1)
                  lbu          s9, 159(a1)
                  xori         a3, t0, 1470
                  lbu          a7, 1148(a1)
                  lbu          t3, 1325(a1)
                  sltu         a6, s8, gp
                  srai         s1, a0, 20
                  lbu          s0, 1288(a1)
                  andi         t0, a1, 1999
                  lhu          tp, 1444(a1)
                  andi         a6, t0, 540
                  xori         t5, a7, -66
                  lhu          sp, 86(a1)
                  slli         s10, s10, 17
                  slti         t6, s2, -338
                  lb           s10, 1269(a1)
                  or           a6, t3, a3
                  srli         s5, s6, 29
                  sw           t4, 1322(a1)
                  add          t0, s0, s1
                  xori         s11, a4, -214
                  ori          s0, s2, -870
                  sb           s7, -313(a1)
                  lb           s1, 447(a1)
                  slti         gp, zero, 580
                  xori         a2, gp, -2042
                  sh           a4, 1078(a1)
                  xor          a6, tp, t4
                  sb           a0, -336(a1)
                  or           ra, s3, s8
                  add          zero, s9, a7
                  sll          s8, a1, ra
                  nop
                  ori          zero, s8, 1436
                  sub          a7, s9, a2
                  lbu          s9, 1355(a1)
                  lbu          zero, 573(a1) #end riscv_load_store_rand_instr_stream_14
                  la           s5, region_0+447 #start riscv_load_store_rand_instr_stream_27
                  lbu          a7, -285(s5)
                  lbu          t5, -178(s5)
                  sb           a3, -70(s5)
                  slli         s2, a4, 2
                  lb           s1, 137(s5)
                  add          t2, a3, t3
                  lhu          s9, 135(s5)
                  lb           a3, 1311(s5)
                  and          sp, gp, t6
                  sub          s1, a0, t6
                  lh           s6, 1351(s5)
                  add          s7, gp, t6
                  lbu          s10, 22(s5)
                  sb           gp, 318(s5)
                  lb           s10, 447(s5)
                  sub          s0, s9, s8
                  sub          s11, s6, s4
                  lbu          s10, 1250(s5)
                  lbu          t3, 754(s5)
                  add          a7, s8, t4
                  sltiu        s0, s1, -1605
                  lb           s1, 973(s5)
                  sll          t2, s1, s7
                  srl          s0, a2, s5
                  lbu          a7, 598(s5)
                  lh           a3, 1497(s5)
                  lhu          a6, 133(s5)
                  and          s6, sp, t2
                  andi         t0, ra, -126
                  lhu          s3, -363(s5)
                  lh           s7, 781(s5)
                  sb           s3, -320(s5)
                  slli         s0, a0, 30
                  sltiu        s11, t2, -352
                  auipc        t5, 640795
                  sb           ra, 1106(s5)
                  lui          ra, 107316
                  sh           a7, 959(s5)
                  lb           a1, -64(s5)
                  xori         s8, a3, 520
                  lb           a0, 482(s5)
                  ori          ra, sp, -358
                  slti         ra, t1, 1914
                  ori          a6, gp, -1138
                  sltu         a7, t2, t2
                  srl          a5, a2, s6
                  andi         a3, s0, 336
                  lhu          s11, 737(s5)
                  lb           t0, 1265(s5)
                  slt          s8, s4, a5
                  sb           a7, -432(s5)
                  sb           t4, -164(s5)
                  ori          s7, s5, -1614
                  and          s9, a1, a2
                  lb           s6, 184(s5)
                  lb           s7, 1424(s5)
                  sh           gp, 161(s5) #end riscv_load_store_rand_instr_stream_27
                  la           t3, region_1+414 #start riscv_load_store_rand_instr_stream_7
                  nop
                  nop
                  and          s8, t1, s0
                  sb           gp, 14(t3)
                  lw           s6, 14(t3)
                  srli         a5, a7, 23
                  slti         sp, a3, -1943
                  lbu          t6, -11(t3)
                  sb           s5, 15(t3)
                  sh           tp, -14(t3)
                  and          t1, a1, a5
                  slti         s5, s7, 1779
                  ori          a1, t6, 408
                  nop
                  lb           s2, -11(t3)
                  auipc        t1, 1005820
                  lb           s8, -11(t3)
                  add          a3, gp, t5
                  lbu          t0, 15(t3)
                  sw           s2, 6(t3)
                  sltiu        s9, tp, -818
                  lh           ra, -16(t3)
                  lbu          a6, -7(t3)
                  nop
                  lh           t6, 4(t3)
                  sb           s3, -4(t3)
                  addi         s8, zero, -2006
                  sb           t1, 13(t3)
                  lhu          t0, -12(t3)
                  lbu          tp, -13(t3)
                  sltiu        s0, a2, 1637
                  auipc        a1, 410763
                  slli         s7, gp, 1
                  slt          t2, tp, s8
                  lb           s3, 11(t3)
                  ori          s8, tp, -743
                  andi         a3, gp, -1421
                  lb           a1, 9(t3)
                  ori          ra, a6, -98
                  sb           tp, 3(t3)
                  lb           s10, 6(t3)
                  lbu          sp, 1(t3)
                  lh           tp, -12(t3)
                  lb           s1, 11(t3)
                  sb           s4, 16(t3)
                  lb           sp, 5(t3)
                  sltu         a1, a3, ra
                  nop
                  lb           a5, -5(t3) #end riscv_load_store_rand_instr_stream_7
                  la           gp, region_0+1961 #start riscv_load_store_rand_instr_stream_12
                  sb           s5, -62(gp)
                  srai         s0, s8, 16
                  sw           s11, -33(gp)
                  srli         s11, t6, 27
                  nop
                  srai         s9, gp, 25
                  lhu          s11, -35(gp)
                  nop
                  lh           s6, 19(gp)
                  slti         t6, s2, -1119
                  lb           t0, -18(gp)
                  sra          a6, s0, s11
                  lbu          a3, -41(gp)
                  sb           s4, -60(gp)
                  lbu          t1, 12(gp)
                  sra          a6, s9, s5
                  andi         a5, a1, 160
                  sltiu        a3, a6, -187
                  ori          s1, ra, -1959
                  lb           a3, -2(gp)
                  lbu          sp, 2(gp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1022 #start riscv_load_store_rand_instr_stream_8
                  sb           s6, 36(sp)
                  lbu          s6, -9(sp)
                  nop
                  auipc        a6, 158633
                  sw           t2, 54(sp)
                  srai         a7, t5, 6
                  or           s1, a3, gp
                  sb           s3, 21(sp)
                  sll          s6, t0, sp
                  sb           t5, -20(sp)
                  xori         a7, a0, -1797
                  ori          t2, gp, -966
                  sll          s2, s3, t3
                  or           t2, a7, s5
                  xori         zero, s7, -16
                  sll          s0, t6, t4
                  lb           tp, 22(sp)
                  and          s10, t0, t3
                  andi         s9, a4, 1523
                  srli         a0, zero, 10
                  slli         t1, gp, 13
                  lbu          t2, -46(sp)
                  lbu          t1, 54(sp)
                  srl          gp, t4, a6
                  sh           s10, 16(sp)
                  lb           s8, 45(sp)
                  slli         tp, t1, 1
                  sb           t3, 56(sp)
                  addi         s8, t5, -233
                  slti         gp, a5, -349
                  and          s2, sp, gp
                  lhu          a7, -50(sp)
                  lbu          s8, 64(sp)
                  lui          a2, 585602
                  srl          a7, s6, a7
                  nop
                  auipc        t5, 756690
                  lh           a5, -52(sp)
                  add          t3, a6, zero
                  sra          s0, tp, t2
                  xor          s11, a5, ra
                  sltu         s2, s7, t1
                  sltiu        s10, t1, -2000
                  lhu          t1, 20(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+107 #start riscv_load_store_rand_instr_stream_4
                  lb           t6, -32(sp)
                  sh           gp, 47(sp)
                  srli         s1, ra, 18
                  add          a5, a2, s3
                  addi         tp, s5, 1207
                  lb           t0, 29(sp)
                  addi         t3, s3, 692
                  xori         tp, s3, -909
                  add          gp, s1, ra
                  xori         s7, a2, 1963
                  slti         a0, s5, 797
                  sh           a0, -61(sp)
                  lb           s11, -22(sp)
                  sb           gp, 33(sp)
                  lui          s6, 27110
                  lb           s8, -55(sp)
                  sll          a5, s3, t0
                  sltu         s7, a5, s11
                  lbu          s3, -48(sp)
                  addi         s8, a5, 976
                  add          a6, s1, s6
                  lb           a6, 56(sp)
                  sra          s1, t6, s4
                  slt          gp, s5, a2
                  lbu          a6, -48(sp)
                  add          s10, s10, ra
                  lbu          s0, -46(sp)
                  ori          s6, s0, 1163
                  xori         tp, tp, -584
                  addi         a3, a4, -1362
                  sub          a7, s0, zero
                  xori         t2, s2, 1302
                  auipc        a0, 915053
                  lh           s8, -49(sp)
                  sra          s3, a2, s3
                  lui          s5, 518860
                  xor          ra, gp, s6
                  xor          s5, s5, ra
                  lbu          s3, -34(sp)
                  addi         s7, sp, 1114
                  andi         a1, gp, 679
                  sltu         s3, s1, t6
                  lbu          a6, 12(sp)
                  lbu          t0, 50(sp)
                  sb           t2, 2(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s7, region_0+751 #start riscv_load_store_rand_instr_stream_13
                  add          s0, s3, gp
                  lhu          a6, -9(s7)
                  lbu          tp, 9(s7)
                  add          a7, s3, a4
                  lbu          t2, -15(s7)
                  lb           a6, 8(s7)
                  slti         s10, a5, -1850
                  xori         zero, s2, -1470
                  sh           s1, -7(s7)
                  lb           gp, 16(s7)
                  andi         s5, a5, 933
                  srai         t1, t3, 27
                  sb           t3, -6(s7)
                  slti         t2, s1, 202
                  lbu          t2, 12(s7)
                  sub          s2, s3, t0
                  add          s0, s7, t3
                  addi         s5, t1, 1976
                  sb           t3, 13(s7)
                  add          t6, zero, s4
                  ori          s8, t0, -393
                  lui          t5, 381566
                  lhu          s0, 1(s7)
                  slli         gp, t4, 30
                  lui          gp, 283701
                  slli         s0, s10, 29
                  auipc        a6, 472436
                  lh           s3, -1(s7)
                  sub          a7, t5, ra
                  slti         s10, sp, -290
                  slti         a3, s6, 138
                  slti         t1, a3, -1458
                  andi         sp, s10, -1760
                  sb           a6, 8(s7)
                  sh           a3, -7(s7)
                  xori         a6, s1, -1734
                  lh           t6, -9(s7)
                  sb           s8, 10(s7) #end riscv_load_store_rand_instr_stream_13
                  la           t1, region_0+1442 #start riscv_load_store_rand_instr_stream_22
                  or           t3, a4, s4
                  sb           s1, 39(t1)
                  lb           s7, -777(t1)
                  lh           t3, -1178(t1)
                  lui          s9, 289861
                  slti         a3, a2, -1430
                  lhu          a1, -468(t1)
                  add          a7, s0, t1
                  sh           t1, -264(t1)
                  slti         t2, t6, 310
                  lb           a6, -941(t1)
                  srai         a5, s9, 7
                  lbu          t3, -573(t1)
                  lhu          t6, 260(t1)
                  lb           t6, 411(t1)
                  add          t0, s10, a0
                  lui          t0, 672522
                  sb           a1, -1371(t1)
                  auipc        s7, 848026
                  sb           gp, -73(t1)
                  lhu          s9, 430(t1)
                  slli         s7, a1, 9
                  sb           t1, -1129(t1)
                  xor          t5, s4, t2
                  lbu          s7, 76(t1)
                  sub          a3, t0, s7
                  ori          s0, a3, -1050
                  lh           t2, 512(t1)
                  xori         gp, ra, -1552
                  lh           s2, 302(t1) #end riscv_load_store_rand_instr_stream_22
                  la           t5, region_1+1428 #start riscv_load_store_rand_instr_stream_0
                  ori          s2, a6, 1514
                  lui          t1, 367993
                  slti         gp, s11, -244
                  xori         s7, s4, -1943
                  lb           t3, 9(t5)
                  auipc        t1, 830499
                  sltu         s3, a5, a5
                  sltiu        s1, t5, -697
                  xor          ra, s2, s7
                  lh           a1, 10(t5)
                  lb           a6, 11(t5)
                  srl          s11, a6, t6
                  srai         t2, a1, 19
                  sub          ra, t1, s6
                  sb           t0, -5(t5)
                  lw           t3, -8(t5)
                  auipc        s9, 875919
                  srli         t6, sp, 1
                  xor          s1, s1, s10
                  sltu         a6, a5, s2
                  nop
                  xor          a1, t3, s3
                  lhu          s10, -16(t5)
                  srl          sp, s1, a0
                  lb           t6, 11(t5)
                  sll          s10, s11, s3
                  lb           a0, 15(t5)
                  slli         s11, s7, 6
                  sltu         a1, t6, a3
                  srli         ra, t2, 4
                  lb           s0, 3(t5)
                  srai         a1, a7, 20
                  sb           s3, 9(t5)
                  srl          t6, s1, s2
                  andi         t3, t2, 1392
                  sub          t0, t2, s1
                  slti         s11, t3, 1413
                  lbu          tp, 16(t5)
                  lbu          t2, 5(t5)
                  xor          t1, a4, s1
                  lh           s6, 16(t5)
                  sb           s5, -15(t5)
                  sb           a5, 9(t5) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_1+723 #start riscv_load_store_rand_instr_stream_9
                  lb           s1, 160(s9)
                  auipc        zero, 591102
                  sub          s8, gp, a5
                  sb           s7, 1018(s9)
                  and          t0, s7, a0
                  sb           t6, 5(s9)
                  sw           s4, 525(s9)
                  and          a6, tp, s2
                  sra          t3, s2, a0
                  lbu          t6, -68(s9)
                  sltu         s6, t2, s1
                  slli         a0, a3, 31
                  ori          s11, s1, 1128
                  lui          s5, 850418
                  lb           a2, -527(s9)
                  slt          s1, s1, a1
                  srli         tp, a0, 20
                  sb           tp, 526(s9)
                  sb           a2, -259(s9)
                  lbu          s5, 764(s9)
                  slli         tp, s8, 23
                  sb           a7, -59(s9)
                  lw           a5, 321(s9)
                  lhu          t1, 1143(s9)
                  slli         tp, s6, 25
                  sw           zero, -195(s9)
                  sra          s11, a6, t1
                  xori         s0, a7, -1139
                  srli         t6, t4, 9
                  lbu          s5, 200(s9)
                  srl          s10, t3, s5
                  sb           s11, -177(s9)
                  sb           s3, 1096(s9)
                  slt          s1, t3, t2
                  lw           zero, 21(s9) #end riscv_load_store_rand_instr_stream_9
                  la           s0, region_0+1157 #start riscv_load_store_rand_instr_stream_19
                  auipc        tp, 475486
                  slli         s11, s9, 0
                  auipc        gp, 658249
                  sll          a0, t5, s11
                  sb           tp, 6(s0)
                  sub          t2, a0, sp
                  lh           s11, -7(s0)
                  sltiu        zero, s11, 1659
                  lh           a5, -5(s0)
                  auipc        t0, 980218
                  sb           a5, 8(s0)
                  lb           sp, 8(s0)
                  lw           a2, 7(s0)
                  lui          s5, 813744
                  sb           t0, -11(s0)
                  nop
                  slt          t3, t1, s1
                  lbu          a1, 5(s0)
                  sltu         s2, t4, s8
                  lb           s3, -11(s0)
                  andi         t6, s0, -160
                  sh           zero, -1(s0) #end riscv_load_store_rand_instr_stream_19
                  la           ra, region_1+1302 #start riscv_load_store_rand_instr_stream_21
                  and          tp, s5, a7
                  add          t1, gp, s1
                  lbu          a3, -11(ra)
                  andi         s10, t5, -229
                  lbu          tp, 10(ra)
                  lb           s3, -4(ra)
                  srai         s2, a7, 30
                  lw           s10, 10(ra)
                  lbu          a6, -15(ra)
                  sub          s1, s1, s4
                  slli         s5, a5, 20
                  lbu          t3, -4(ra)
                  and          s7, t3, t6
                  lui          s0, 185880
                  lui          s10, 495422
                  sb           zero, -1(ra)
                  lbu          s9, -10(ra)
                  sb           s6, -16(ra)
                  slt          a6, s10, s0
                  lbu          s5, -13(ra)
                  xor          tp, zero, a1
                  sll          s0, t2, a5
                  andi         t6, a5, 108
                  lb           t6, -13(ra)
                  and          sp, sp, t5
                  lb           a2, -6(ra)
                  lhu          t2, 4(ra)
                  sb           s0, 13(ra)
                  sb           ra, 1(ra)
                  lb           t3, -15(ra)
                  or           s10, s1, t4
                  lb           t0, 3(ra)
                  ori          a5, s3, 254
                  sb           t0, -15(ra)
                  add          s8, t1, a3
                  sb           t0, -13(ra)
                  lui          a2, 270161
                  lb           a7, 1(ra) #end riscv_load_store_rand_instr_stream_21
                  la           a5, region_0+1410 #start riscv_load_store_rand_instr_stream_17
                  sltu         zero, a6, a6
                  sh           s2, 2(a5)
                  lb           gp, 55(a5)
                  lh           t5, 30(a5)
                  slli         s10, a7, 3
                  lh           t3, 42(a5)
                  auipc        t0, 89882
                  ori          a3, s11, -1138
                  sra          s7, sp, s11
                  lhu          s11, 28(a5)
                  lb           ra, -11(a5)
                  sh           ra, 44(a5)
                  sb           a0, -25(a5)
                  lb           t6, -63(a5)
                  xori         s3, a7, 368
                  lbu          a1, -38(a5)
                  sb           s7, 45(a5)
                  lui          t1, 668231
                  lbu          t2, -59(a5)
                  add          t6, t5, t5
                  srai         s1, s2, 30
                  ori          s3, s9, 840
                  lbu          s10, -61(a5) #end riscv_load_store_rand_instr_stream_17
                  la           a7, region_1+200 #start riscv_load_store_rand_instr_stream_24
                  lbu          zero, 6(a7)
                  xor          a0, s4, s8
                  lh           tp, 6(a7)
                  addi         zero, t3, -832
                  slli         a5, s1, 5
                  sb           tp, -10(a7)
                  and          s1, a0, s3
                  auipc        s3, 1019534
                  sra          s2, s8, t6
                  sra          t3, ra, zero
                  lb           a6, 4(a7)
                  sb           a1, 7(a7)
                  sh           t6, 12(a7)
                  xor          zero, t3, t6
                  lb           s6, 3(a7)
                  lui          t5, 1011136
                  andi         t5, a2, 1140
                  lbu          t5, 5(a7)
                  lb           sp, -9(a7)
                  auipc        s10, 562477
                  add          t3, t1, t1
                  srli         s8, s4, 0
                  srli         s7, gp, 25
                  sb           tp, -6(a7)
                  lh           a6, 10(a7)
                  lb           zero, -11(a7) #end riscv_load_store_rand_instr_stream_24
                  la           a7, region_1+1945 #start riscv_load_store_rand_instr_stream_28
                  slli         s5, a0, 3
                  lb           zero, -1932(a7)
                  sb           a4, -1286(a7)
                  lhu          t0, -1773(a7)
                  lw           s5, -1669(a7)
                  sb           s8, -1784(a7)
                  auipc        a0, 975866
                  lbu          a3, -848(a7)
                  lh           s1, -1805(a7)
                  srli         s2, s6, 30
                  lbu          ra, -210(a7)
                  lbu          tp, -1600(a7)
                  lb           s2, -90(a7)
                  lb           a1, -298(a7)
                  sb           a3, -824(a7)
                  lb           a2, -154(a7)
                  sh           t2, -1835(a7)
                  add          ra, t0, a0
                  srai         sp, s8, 19
                  sltu         a0, gp, a1
                  xor          s8, t3, s9
                  sll          t2, a2, s8
                  lbu          gp, -465(a7)
                  lhu          a1, -1387(a7)
                  xori         t5, a5, -1214
                  srl          a6, a3, s9
                  lb           s2, -1276(a7)
                  sltiu        sp, s8, 1296
                  xor          s0, s11, t1
                  lbu          a3, 30(a7)
                  lbu          t3, -1387(a7)
                  sh           s10, -199(a7)
                  lui          t1, 182694
                  lb           t0, -180(a7)
                  srl          s8, s7, t0
                  sb           zero, -636(a7)
                  lhu          gp, -67(a7)
                  srli         a0, a0, 15
                  lw           s10, -45(a7) #end riscv_load_store_rand_instr_stream_28
                  la           s5, region_0+1534 #start riscv_load_store_rand_instr_stream_16
                  and          s7, t1, a5
                  lbu          tp, -63(s5)
                  lb           s2, 55(s5)
                  sb           t0, -4(s5)
                  lb           s6, -46(s5)
                  or           s10, s0, s11
                  lbu          a0, -55(s5)
                  slli         s3, s6, 11
                  lb           s1, 62(s5)
                  sb           a2, -49(s5)
                  srl          a0, s9, a3
                  xori         a7, t2, 1681
                  lhu          s11, -38(s5)
                  slti         s1, tp, 1158
                  lb           s11, -62(s5)
                  sw           s6, -62(s5)
                  sll          sp, t6, a5
                  lhu          s0, 20(s5)
                  sb           a3, -41(s5)
                  and          s6, gp, gp
                  sll          s3, s11, s3
                  add          t1, s2, s10
                  sh           s1, 2(s5)
                  slti         zero, tp, 1542
                  sb           a5, 59(s5)
                  lbu          a0, -34(s5)
                  sub          s11, t3, t4
                  lbu          t2, -53(s5)
                  nop
                  ori          a3, s2, -1308
                  sltu         sp, s8, t3
                  sb           s9, -43(s5)
                  lbu          t3, 25(s5) #end riscv_load_store_rand_instr_stream_16
                  la           sp, region_1+1970 #start riscv_load_store_rand_instr_stream_5
                  lbu          t3, -66(sp)
                  sltu         t3, s1, a7
                  slli         t2, a3, 31
                  lbu          s11, -197(sp)
                  sb           t0, -47(sp)
                  lb           zero, -61(sp)
                  addi         t3, s0, -793
                  lbu          s5, -19(sp)
                  sltu         s8, gp, t0
                  lbu          s7, -65(sp)
                  ori          s3, s2, -86
                  srai         a3, s4, 28
                  andi         t3, s7, -1414
                  lb           s6, -141(sp)
                  srli         a6, s10, 29
                  add          s6, s6, s11
                  lb           a1, 15(sp)
                  auipc        tp, 396242
                  lb           s2, 4(sp)
                  srai         s9, s8, 10
                  or           t2, tp, t6
                  sltiu        s3, t2, -1921
                  andi         s10, a0, 1508
                  lh           t2, -252(sp)
                  lb           s8, -179(sp)
                  addi         a5, s6, 1531
                  srli         s10, gp, 14
                  lui          a1, 291731
                  sh           t3, -108(sp)
                  slti         a7, tp, -256
                  or           s11, s10, s9
                  sh           a7, -58(sp)
                  slti         s7, s4, 148
                  lb           a2, -31(sp)
                  lui          t5, 588395
                  sb           t3, -155(sp)
                  slli         zero, s4, 4
                  lb           s6, -132(sp)
                  lui          s11, 515933
                  lb           s0, -24(sp)
                  slti         tp, t2, -1238
                  xori         t1, t6, -187
                  and          a5, ra, ra
                  srli         tp, s3, 2
                  sb           a5, 13(sp)
                  lb           s8, -163(sp)
                  sll          t2, s2, t2
                  sb           s10, -201(sp)
                  lb           t1, -99(sp)
                  slli         t5, tp, 9
                  nop
                  lbu          s7, 23(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s2, region_1+1115 #start riscv_load_store_rand_instr_stream_3
                  sltiu        s9, s3, -89
                  slti         s0, s2, 1050
                  lhu          s11, 53(s2)
                  lh           s6, -3(s2)
                  srli         t6, zero, 7
                  sra          a7, a2, t0
                  sra          t5, t2, a7
                  lb           a1, 1(s2)
                  lhu          t3, -63(s2)
                  lbu          a3, 55(s2)
                  sltu         a1, a3, t2
                  lb           s1, -2(s2)
                  sb           s3, -36(s2)
                  lb           tp, 44(s2)
                  lbu          a2, 58(s2)
                  lbu          t5, 62(s2)
                  lh           s6, 1(s2)
                  lb           tp, -36(s2)
                  sh           a4, -61(s2)
                  sll          s11, zero, s4
                  lb           t2, -64(s2)
                  lh           zero, 29(s2)
                  lui          t0, 290716
                  sw           s10, -43(s2)
                  sra          gp, t6, a1
                  srl          s5, a3, a7
                  slti         s11, s5, -1845
                  sb           tp, -16(s2)
                  slti         s9, s3, -438
                  lb           t5, 2(s2)
                  lb           tp, -27(s2)
                  sh           t5, 29(s2)
                  slti         a1, a7, 769
                  sb           a7, 27(s2)
                  lh           a1, 51(s2)
                  lhu          t6, -37(s2)
                  sltiu        s10, zero, 1828
                  sltiu        s9, t6, -543
                  sb           t0, 18(s2)
                  and          sp, gp, s0
                  sltiu        s1, ra, 1083
                  andi         s6, s11, 1802
                  sub          s3, t5, s2
                  srli         a2, a0, 23
                  sb           s1, 60(s2) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1126 #start riscv_load_store_rand_instr_stream_10
                  slt          a5, s8, a4
                  lbu          gp, 24(sp)
                  srai         a6, t1, 25
                  lbu          s5, 59(sp)
                  srai         a7, s0, 7
                  addi         s8, t1, 1771
                  lui          a1, 101720
                  lh           t5, -12(sp)
                  lb           t0, -17(sp)
                  sb           s0, 19(sp)
                  xor          s7, s0, t2
                  sll          s3, s11, gp
                  slli         s10, s11, 14
                  slli         t5, a1, 29
                  lhu          a3, -28(sp)
                  sb           sp, 39(sp)
                  or           zero, s8, t3
                  auipc        s2, 731806
                  and          s6, a0, t4
                  lh           zero, -12(sp)
                  slt          s8, t0, a5
                  ori          tp, s7, -705
                  slti         s8, s0, -1070
                  lbu          a7, -11(sp)
                  sb           t6, -38(sp)
                  srli         s11, s6, 8
                  nop
                  lb           t0, 4(sp)
                  sltu         ra, sp, a0
                  lb           a5, 33(sp)
                  lbu          s10, 63(sp)
                  slt          s0, a0, s0
                  srl          s6, gp, a2
                  and          s8, t4, t0
                  sb           t3, -13(sp)
                  slti         a6, a6, -1272
                  srl          a5, t2, t3
                  andi         s3, s7, 1676
                  lw           s5, -54(sp)
                  lb           t6, -41(sp)
                  sltiu        t2, s1, -924
                  sb           s6, -61(sp)
                  sw           t4, 30(sp)
                  lb           s1, 45(sp)
                  sltu         tp, s9, a6
                  lhu          a0, -38(sp) #end riscv_load_store_rand_instr_stream_10
                  addi         sp, a3, 1676
                  slti         t6, t4, 683
                  ori          s8, a7, 1649
                  sub          a0, zero, s5
                  srli         s8, a7, 25
                  bltu         a6, gp, 13f
                  andi         s6, a4, -1543
                  bgeu         a2, t5, 10f
                  srai         t0, a2, 31
                  andi         s5, s4, -483
10:               lui          a5, 992815
                  srl          t1, sp, t6
                  sltu         s5, sp, s3
13:               blt          t6, a5, 20f
                  sltu         ra, s10, a0
                  srai         a1, s0, 26
                  bne          s6, zero, 33f
                  sll          a6, a6, sp
                  slt          t3, s4, s8
                  sltiu        a1, s3, 942
20:               sltu         t0, s11, ra
                  lui          a6, 521594
                  beq          s11, zero, 25f
                  andi         t6, a1, 362
                  sra          s11, a1, t3
25:               or           s5, t1, s0
                  sub          a2, zero, t3
                  bltu         a1, s9, 36f
                  slt          s11, gp, a2
                  auipc        s10, 94907
                  srl          s2, s0, s10
                  bltu         s2, ra, 43f
                  add          s3, s8, s3
33:               srli         a7, s8, 23
                  sltiu        s7, s5, -200
                  add          t2, s6, a6
36:               sub          s7, sp, a0
                  srl          a2, s2, s6
                  slt          s9, t1, s3
                  sll          a2, a1, s4
                  bge          s11, a7, 43f
                  bltu         t6, a5, 49f
                  and          t3, a2, a3
43:               auipc        s8, 922972
                  nop
                  sltiu        tp, t5, 83
                  beq          s5, a7, 50f
                  srai         a6, s5, 3
                  srai         s10, t1, 1
49:               bge          a7, s0, 67f
50:               blt          t6, tp, 61f
                  xor          s11, sp, t2
                  srai         a1, sp, 20
                  srai         t1, ra, 19
                  slti         s9, s5, -972
                  sra          a2, s1, a5
                  and          s5, t6, a6
                  bge          s7, s4, 68f
                  nop
                  srai         s0, s10, 23
                  bltu         a1, s3, 77f
61:               slti         ra, sp, 1078
                  srai         sp, s6, 13
                  slti         t1, s6, -396
                  srli         s3, tp, 29
                  bgeu         a5, zero, 74f
                  bltu         a0, gp, 85f
67:               or           a5, sp, a7
68:               ori          a3, zero, 1702
                  xori         s0, zero, 1169
                  bne          a6, s6, 89f
                  bgeu         s4, t5, 79f
                  bge          s6, a2, 77f
                  auipc        s1, 623857
74:               slli         s7, tp, 28
                  slt          s5, a3, a1
                  bltu         s1, s5, 94f
77:               or           s8, t5, ra
                  ori          s10, s5, 1657
79:               beq          s10, a2, 83f
                  nop
                  auipc        t3, 633304
                  sub          t5, s10, s5
83:               sltu         a1, s10, s10
                  auipc        s8, 847691
85:               sltiu        s11, s10, 123
                  slt          ra, a3, s4
                  bge          s0, a2, 96f
                  or           gp, a6, t2
89:               ori          t6, s9, -1216
                  slti         s0, a1, -1232
                  ori          zero, s8, 999
                  slli         a7, s9, 14
                  sub          zero, a1, s6
94:               or           tp, sp, s9
                  bge          a5, t1, 110f
96:               or           s11, s10, tp
                  sra          t1, s11, a3
                  sltiu        a2, s9, -340
                  bge          s1, s8, 110f
                  sltu         t6, a5, a0
                  slti         s2, a2, -1700
                  bgeu         s10, a1, 107f
                  slti         t0, t4, 2032
                  lui          a2, 886485
                  ori          s1, s5, -361
                  la           ra, region_0+1288 #start riscv_load_store_rand_instr_stream_6
                  sb           s10, 111(ra)
                  lh           t1, -90(ra)
                  lb           t3, -241(ra)
                  lb           s11, 217(ra)
                  slli         a3, s10, 8
                  sb           s0, -199(ra)
                  sb           a4, 203(ra)
                  lbu          a3, -91(ra)
                  lb           s8, 29(ra)
                  lb           sp, 69(ra)
                  sb           s5, 153(ra)
                  lhu          a3, 10(ra)
                  add          gp, a6, a4
                  sltiu        gp, s5, -1542
                  lh           t0, 0(ra)
                  sh           a1, 20(ra)
                  sb           a6, 237(ra)
                  sra          a5, a7, s3
                  addi         t1, s1, -923
                  lui          s0, 761912
                  sll          a3, ra, ra
                  slli         s1, t2, 31
                  lb           a2, -89(ra)
                  or           s8, t6, zero
                  ori          s7, s8, -159
                  auipc        a7, 347437
                  lb           s11, -165(ra)
                  lb           a1, -89(ra)
                  sb           a6, 56(ra)
                  sb           s9, -106(ra)
                  lbu          t2, -209(ra)
                  lbu          t5, -148(ra)
                  sb           s6, -55(ra)
                  srli         s11, gp, 1
                  lh           t5, 112(ra)
                  sltiu        s3, t4, -1205
                  lb           s11, -109(ra)
                  sltiu        s1, s5, -718
                  sb           t4, -122(ra)
                  sb           a2, -25(ra)
                  sb           a2, 78(ra) #end riscv_load_store_rand_instr_stream_6
                  sub          s9, s8, a5
107:              xor          tp, a7, t3
                  slli         s10, s10, 17
                  blt          s0, t2, 113f
110:              lui          a5, 249734
                  bltu         gp, s10, 130f
                  andi         s1, s2, -479
113:              sub          s11, sp, a7
                  and          t3, t3, tp
                  srli         a0, s6, 16
                  srli         gp, a5, 4
                  nop
                  lui          s11, 603334
                  xori         a6, s0, -1394
                  ori          t2, s9, 1558
                  srli         t0, s11, 3
                  bgeu         t0, t5, 124f
                  ori          a1, ra, -1072
124:              auipc        a7, 823176
                  sltiu        s7, t2, -542
                  bne          a4, s3, 141f
                  srli         a2, sp, 18
                  xor          s10, t5, a2
                  sll          t2, a6, s0
130:              auipc        a7, 321796
                  sra          a2, gp, a2
                  nop
                  bltu         s5, s6, 135f
                  sub          gp, s7, t3
135:              sra          s3, a1, s10
                  slli         gp, s7, 21
                  srli         t1, s6, 14
                  bltu         s2, s3, 157f
                  add          t1, ra, s2
                  slli         s3, s11, 4
141:              sra          tp, a3, t6
                  sltu         a7, tp, a0
                  xor          s5, s2, s2
                  auipc        a6, 958925
                  ori          t5, t3, 1511
                  add          s5, s3, ra
                  xori         a0, t3, 266
                  bgeu         t1, a6, 159f
                  bge          tp, s1, 152f
                  xori         a6, a5, 1990
                  sltiu        zero, a6, 2009
152:              xor          t0, a0, t3
                  ori          t2, a6, -1531
                  sltiu        a3, s11, 279
                  nop
                  addi         s8, gp, -1081
157:              xor          t6, s4, a6
                  sll          a5, a6, t2
159:              sltiu        a2, s11, -435
                  bltu         zero, s4, 164f
                  sltiu        s2, s0, 266
                  sll          a7, a5, s0
                  sltiu        s5, t3, -1707
164:              beq          s7, t2, 172f
                  xor          a0, s5, t2
                  auipc        s0, 151453
                  and          s6, t5, t1
                  beq          gp, s11, 170f
                  bgeu         t1, s3, 188f
170:              auipc        s0, 27961
                  lui          ra, 734143
172:              xor          a6, t2, s4
                  bgeu         t3, t0, 176f
                  sra          s1, a6, s7
                  nop
176:              srl          t5, t3, a1
                  sll          s7, s1, s4
                  nop
                  or           s5, s6, a3
                  add          a3, s5, s11
                  or           s3, s9, s11
                  srli         tp, s1, 23
                  slti         a7, t3, -1376
                  slli         s9, s3, 17
                  beq          t5, a5, 193f
                  addi         s9, t5, -121
                  srai         zero, s11, 16
188:              slt          tp, ra, a0
                  srli         a3, s10, 10
                  slti         a6, s6, -721
                  sra          a6, s4, a5
                  addi         t1, s1, -1958
193:              bne          a3, a4, 211f
                  addi         tp, t1, -543
                  bltu         t1, s9, 210f
                  beq          t2, s1, 213f
                  srli         t2, a7, 11
                  beq          a3, t6, 215f
                  bne          s2, a6, 218f
                  bltu         sp, s9, 209f
                  add          t1, s1, tp
                  srai         a6, s0, 27
                  bltu         t3, a0, 205f
                  srli         t2, t2, 10
205:              sltiu        s3, s0, -439
                  add          t3, a4, s5
                  sll          s8, t6, s11
                  sll          t6, a2, ra
209:              slti         a2, zero, 504
210:              andi         t2, s1, -1105
211:              lui          s11, 666900
                  beq          s2, s7, 216f
213:              xori         s3, s1, 1072
                  blt          a3, t6, 221f
215:              lui          t2, 589892
216:              slli         a6, t0, 8
                  xor          s7, t4, zero
218:              slt          t6, tp, a3
                  bltu         t5, t3, 228f
                  add          t0, s11, a0
221:              xor          s6, t5, t6
                  srli         t1, a7, 5
                  xori         sp, s9, -1078
                  sub          s0, ra, a5
                  slt          t0, a3, s11
                  beq          s1, t5, 241f
                  and          a0, s10, a1
228:              bge          a4, a7, 232f
                  slt          t6, s10, a6
                  add          s10, tp, s7
                  add          s0, s9, s5
232:              add          t3, a3, t4
                  lui          s0, 119174
                  bltu         t2, a3, 252f
                  srl          t2, t3, t6
                  addi         s2, t0, 60
                  slt          ra, a6, t5
                  srl          gp, a7, a0
                  srai         a7, t2, 26
                  add          sp, s3, a5
241:              auipc        s2, 495428
                  sra          s6, s9, t0
                  and          sp, a6, t5
                  sll          t3, s1, t3
                  and          s2, s9, a2
                  bgeu         s5, s1, 251f
                  andi         a7, a3, -701
                  and          s8, zero, a3
                  xori         s7, s8, 354
                  srai         ra, s4, 23
251:              andi         s9, gp, -161
252:              and          gp, s6, t0
                  slt          s10, s2, t3
                  beq          sp, zero, 265f
                  andi         a3, a3, 434
                  sra          t5, s9, a7
                  xori         a0, a5, 1675
                  bge          a3, sp, 270f
                  srli         s7, zero, 26
                  xori         t2, a7, -1006
                  bge          t1, t4, 272f
                  slti         t6, s4, 1546
                  sltu         tp, sp, s2
                  nop
265:              srai         t6, s1, 0
                  slti         s2, a4, 1352
                  lui          s2, 949247
                  srl          t0, s11, s5
                  slli         a0, t1, 17
270:              or           s8, a5, s8
                  bge          s11, s9, 280f
272:              add          s1, a4, s2
                  andi         s8, t4, 698
                  bge          t1, gp, 279f
                  slti         a0, a7, -89
                  srli         s7, s9, 20
                  addi         s1, a1, 1791
                  srl          t2, zero, s9
279:              xor          s10, ra, a2
280:              xor          t1, t2, t0
                  beq          a6, s8, 289f
                  slti         tp, s8, -1395
                  add          s9, a0, t4
                  nop
                  addi         a6, s5, 1538
                  srai         s11, a0, 18
                  sltiu        t1, t6, 257
                  sltiu        sp, tp, 1120
289:              ori          sp, s11, 751
                  slti         gp, s8, -450
                  slti         s0, s10, 729
                  add          a1, sp, a4
                  srli         s6, s3, 16
                  ori          tp, t3, 992
                  auipc        t6, 982257
                  blt          a1, t5, 299f
                  slt          s6, s5, gp
                  xori         zero, a3, -1157
299:              bltu         a3, a2, 316f
                  slti         a5, a7, -147
                  srl          t2, s1, s6
                  lui          s9, 898179
                  bgeu         t2, t3, 321f
                  add          t1, t2, a6
                  sltiu        a0, t4, 1826
                  srai         t5, tp, 18
                  bne          t0, a6, 326f
                  xor          sp, s8, a5
                  bltu         s7, zero, 311f
                  lui          ra, 414825
311:              add          sp, t6, s4
                  sra          t2, a0, s9
                  bne          t1, a4, 322f
                  auipc        s3, 322769
                  srl          s9, a4, s9
316:              ori          s11, sp, -599
                  bge          a1, s1, 322f
                  blt          a7, a7, 326f
                  blt          s9, a5, 330f
                  slli         a5, t0, 23
321:              nop
322:              slli         t3, s9, 12
                  lui          s2, 46631
                  srai         sp, a3, 4
                  srli         t3, tp, 14
326:              bltu         a6, sp, 329f
                  bgeu         s6, t2, 339f
                  xor          t3, t1, a7
329:              slt          a6, s9, t5
330:              sra          s10, ra, sp
                  bgeu         tp, s6, 338f
                  add          s6, a4, a0
                  sub          s10, s2, zero
                  add          s8, t6, s8
                  sub          s5, s0, s10
                  slt          a3, a3, s7
                  sll          sp, a6, tp
338:              beq          a7, s11, 357f
339:              sltu         zero, s7, sp
                  sll          t6, s3, s9
                  sltu         s5, s10, t1
                  auipc        gp, 55213
                  or           s3, t5, a3
                  sub          a1, a0, s2
                  srli         a1, s8, 26
                  addi         a6, s5, 148
                  blt          t6, sp, 351f
                  and          s11, s10, t0
                  addi         s7, a0, -1825
                  srl          a2, t2, a1
351:              sll          s5, ra, t0
                  sltu         s11, a7, a5
                  and          a2, t3, s7
                  srli         s3, t1, 9
                  blt          t4, s4, 359f
                  xor          tp, s10, s9
357:              sltu         s1, s9, s6
                  addi         sp, t3, -1019
359:              sub          s11, s2, a4
                  auipc        s0, 609782
                  auipc        t3, 397100
                  andi         s8, a6, -340
                  ori          t2, a7, -1520
                  sub          a3, a6, s10
                  add          a5, t3, s8
                  or           gp, t3, gp
                  and          s5, a7, t1
                  nop
                  lui          a3, 36868
                  andi         a2, a5, -559
                  bge          gp, a3, 390f
                  addi         zero, t6, -1777
                  slli         t1, s0, 16
                  sll          a2, a6, a5
                  sltu         a2, s3, a2
                  blt          s4, t3, 381f
                  srl          s5, sp, t0
                  slti         s10, t5, 69
                  andi         s8, s1, -18
                  add          t1, t6, t3
381:              or           zero, s9, s8
                  xori         a6, sp, -1652
                  srai         gp, a3, 11
                  xori         s8, s7, 1459
                  slli         s9, ra, 11
                  sub          zero, t3, tp
                  srl          s3, s3, s4
                  sub          s0, a3, tp
                  and          zero, a2, t3
390:              bne          t0, t5, 399f
                  and          s1, t3, a3
                  srli         s5, t0, 25
                  andi         gp, t5, -1555
                  sll          sp, a6, a5
                  srli         s9, s3, 24
                  xori         sp, a1, -1325
                  bgeu         s11, s7, 399f
                  sll          sp, a2, s5
399:              bltu         a0, a1, 402f
                  sub          t5, s1, t4
                  sra          ra, s11, a3
402:              add          zero, s3, gp
                  lui          s3, 559897
                  bltu         t2, s8, 419f
                  sra          t3, t5, t6
                  sub          sp, s6, t2
                  slli         s5, a4, 10
                  xori         s9, s5, 1766
                  and          s0, s6, t1
                  sub          s0, gp, a3
                  slli         s1, a5, 31
                  sltiu        a6, t1, -1588
                  sra          s0, a7, t3
                  sra          ra, s6, t4
                  andi         a7, s10, 1698
                  auipc        s1, 1034339
                  and          s1, a4, s1
                  auipc        a7, 120107
419:              bgeu         a7, s6, 422f
                  bne          t1, t5, 428f
                  add          a6, a4, s2
422:              and          s9, s0, s7
                  andi         t0, s5, -1426
                  bgeu         a6, a3, 439f
                  slt          s9, s1, s9
                  sltiu        tp, a2, 787
                  srai         a1, s0, 31
428:              lui          a1, 466781
                  or           s10, a2, a7
                  sll          a3, a7, s0
                  sra          s9, t4, s6
                  blt          s0, a1, 441f
                  slli         a5, s9, 2
                  slli         t3, a1, 26
                  sll          a6, s11, t3
                  add          a5, s5, tp
                  auipc        a5, 600769
                  sra          t3, a4, t2
439:              bltu         s2, gp, 443f
                  ori          ra, s9, -1003
441:              bne          zero, ra, 458f
                  lui          a2, 999066
443:              bne          a0, a1, 454f
                  lui          t2, 818690
                  xori         s3, ra, -173
                  sltiu        s7, s6, -1237
                  sltiu        ra, t4, 417
                  bge          s3, t0, 466f
                  andi         a3, a6, 1024
                  bgeu         s2, zero, 458f
                  addi         zero, zero, 570
                  bge          a7, sp, 463f
                  bne          s0, a0, 464f
454:              bne          t5, t1, 469f
                  sltiu        t5, t0, 1385
                  or           a2, s6, a0
                  bge          s9, s6, 468f
458:              sub          zero, tp, s4
                  sltu         a5, s2, t0
                  lui          sp, 462261
                  slli         t3, s6, 31
                  blt          a3, t0, 470f
463:              sra          a0, s3, s8
464:              xori         a6, a2, 442
                  add          s0, zero, s11
466:              xori         t5, s10, 174
                  bge          tp, t6, 476f
468:              bge          zero, t5, 473f
469:              slti         a6, tp, -1078
470:              add          s11, s6, s9
                  srai         gp, a0, 1
                  lui          a2, 554133
473:              xori         a0, a6, -1485
                  sll          s9, s10, s7
                  bge          a1, s1, 487f
476:              bgeu         t2, s5, 494f
                  nop
                  srai         s9, s4, 10
                  nop
                  xor          t6, s8, s9
                  xor          t5, s3, s5
                  srl          s0, t4, a5
                  srl          t1, s1, a6
                  srl          gp, a0, s9
                  srli         t6, zero, 8
                  blt          s2, s10, 490f
487:              xor          a7, ra, s9
                  add          a7, gp, s9
                  slli         a6, a1, 12
490:              lui          a3, 453138
                  blt          s10, t6, 493f
                  lui          s5, 366100
493:              add          s8, t5, s0
494:              sltu         s1, s0, a1
                  sll          s11, a4, gp
                  srl          s1, s7, s1
                  slt          s1, ra, t5
                  lui          s2, 111900
                  slli         a6, s2, 16
                  slt          s1, t5, t6
                  xori         gp, t4, -1272
                  xori         a2, ra, 2016
                  sll          s8, a4, t3
                  bgeu         a7, s1, 507f
                  slti         gp, a6, -1371
                  or           t0, a0, a0
507:              srli         s3, a3, 15
                  add          t6, t1, s4
                  bltu         a2, a7, 526f
                  srli         t5, t5, 23
                  andi         a1, t4, -702
                  la           a1, region_0+515 #start riscv_load_store_rand_instr_stream_15
                  lbu          zero, 15(a1)
                  addi         s10, t1, -546
                  sra          t5, t4, s1
                  sw           t4, 5(a1)
                  srli         t5, tp, 28
                  lbu          a3, 12(a1)
                  lb           s11, -5(a1)
                  sll          s3, zero, s9
                  sb           t6, 2(a1)
                  srai         a5, s9, 0
                  nop
                  xor          t5, t5, s9
                  sb           a0, 15(a1)
                  sb           t0, -3(a1)
                  lhu          t5, 11(a1)
                  addi         t2, a4, -95
                  sll          s6, a0, gp
                  sll          t3, a4, s2
                  sra          s2, s11, s7
                  lbu          a0, -5(a1)
                  lb           gp, 10(a1)
                  sra          s9, a3, a3
                  lh           a6, 7(a1)
                  sb           s10, -4(a1)
                  sub          t3, s5, a4
                  xori         a0, s2, 639
                  sb           s3, -9(a1)
                  sltu         s2, t2, sp
                  andi         s9, a2, -1909
                  sub          s2, s4, s0
                  sb           s2, 8(a1)
                  sltu         s0, t1, s1
                  srli         s8, a0, 28
                  lui          a7, 914211
                  slt          t0, s8, a7
                  nop
                  sb           tp, -5(a1)
                  addi         gp, sp, 1764
                  sb           s9, 4(a1)
                  sb           a2, 11(a1)
                  srl          a6, s2, t1
                  srai         s10, t1, 16
                  sltu         s11, s5, a6
                  lbu          a5, 8(a1)
                  addi         gp, a7, 1543
                  lbu          tp, -10(a1)
                  sltu         a2, t0, a6
                  addi         a0, s10, -1503
                  lh           s5, 7(a1) #end riscv_load_store_rand_instr_stream_15
                  sltu         sp, a5, t0
                  or           t5, t6, s0
                  sltiu        s2, t1, 1508
                  add          a1, a3, s11
                  andi         t0, t3, -40
                  add          a6, a6, ra
                  or           s3, s6, s8
                  andi         s3, zero, -656
                  xor          s2, s5, t5
                  slt          a5, a5, s7
                  bne          ra, a7, 540f
                  addi         a2, t1, -63
                  ori          a7, s7, 1256
                  andi         s9, s1, -1834
526:              andi         a7, t2, -910
                  beq          t4, s7, 546f
                  srli         t3, s0, 29
                  beq          zero, s11, 538f
                  bgeu         s2, zero, 545f
                  andi         a2, s11, -380
                  slli         s1, t4, 9
                  auipc        a0, 833608
                  beq          s2, t0, 551f
                  xor          s1, s3, t3
                  srl          s10, t2, gp
                  sra          a5, s3, a3
538:              auipc        s1, 868378
                  sra          a2, a6, s3
540:              slti         t6, t0, 776
                  ori          a0, a7, 1849
                  xori         s7, a7, 1620
                  srai         a6, t2, 24
                  add          s3, t5, s11
545:              and          s0, s6, a6
546:              sltiu        a5, a0, -1729
                  sub          t0, s3, s9
                  xori         t5, a7, 1189
                  lui          a7, 707788
                  sra          a1, s7, sp
551:              addi         a1, s11, -317
                  slti         a6, t5, -407
                  sll          a2, a2, a1
                  bltu         t6, s4, 565f
                  bgeu         t2, s6, 563f
                  srai         sp, a4, 7
                  bgeu         a7, gp, 559f
                  bge          a4, t5, 577f
559:              srl          a3, s6, a4
                  bltu         s8, zero, 564f
                  sra          a5, zero, a4
                  auipc        s11, 340054
563:              bgeu         a7, s4, 570f
564:              xor          zero, s6, s7
565:              and          ra, a5, t0
                  addi         s0, t6, -1619
                  bgeu         s0, s3, 570f
                  add          s3, s7, a3
                  or           a2, zero, a3
570:              nop
                  sra          s1, t0, s7
                  sub          t2, a2, s4
                  xori         s0, s3, 2045
                  auipc        a7, 378223
                  srli         t3, a1, 22
                  or           s0, a4, tp
577:              slti         a2, a3, -367
                  add          s10, a5, s1
                  xor          zero, a0, t0
                  sltiu        s10, a3, -1798
                  xori         s11, t4, -503
                  andi         a2, t5, -14
                  xor          a3, a7, s4
                  ori          t0, s4, -854
                  ori          sp, t4, -1689
                  xori         a6, s7, 112
                  srli         s6, s10, 31
                  slt          gp, sp, t5
                  xori         t6, a6, 1989
                  auipc        s3, 316867
                  nop
                  bltu         t3, t1, 600f
                  xor          zero, a4, s8
                  slt          s3, ra, s9
                  sll          gp, a1, a6
                  bne          ra, t5, 605f
                  bge          s1, t4, 616f
                  xor          s3, a6, t2
                  sltu         s8, s5, s0
600:              beq          s0, s6, 605f
                  add          s11, t6, a5
                  nop
                  sub          s6, t6, s9
                  slli         s6, t5, 15
605:              nop
                  add          t0, s11, a0
                  xor          zero, s0, t4
                  slli         s7, t5, 19
                  xori         s6, s2, -679
                  sltiu        t2, s11, 560
                  bne          t3, t3, 614f
                  lui          s5, 193438
                  andi         t0, s0, -164
614:              sra          gp, t6, s7
                  slti         ra, t0, 1610
616:              lui          sp, 753695
                  sub          sp, zero, s6
                  slli         s0, s10, 10
                  nop
                  sltu         t5, tp, ra
                  sll          a5, a2, s2
                  bne          s4, a6, 626f
                  xori         sp, t4, -70
                  blt          zero, t3, 643f
                  srli         s3, s1, 20
626:              sll          s6, t2, a7
                  slt          s6, tp, t5
                  and          s11, a6, s5
                  add          t3, t3, a3
                  ori          s0, gp, -765
                  bgeu         s8, a6, 642f
                  auipc        s2, 490376
                  bgeu         s10, a5, 638f
                  sub          s0, ra, t2
                  and          t0, t5, s1
                  auipc        a2, 883976
                  srl          s2, zero, s4
638:              srl          t6, a7, ra
                  sub          a3, a2, a6
                  srl          ra, s7, a1
                  sll          a1, t4, t5
642:              nop
643:              bltu         t5, s3, 661f
                  xori         s11, s9, -486
                  sll          a7, t1, a7
                  sltu         a2, s1, a1
                  sll          s8, tp, t5
                  sub          t5, s0, tp
                  bgeu         t4, a0, 653f
                  srl          tp, s9, t5
                  slli         s0, s6, 25
                  xori         a1, a1, -1239
653:              srl          a2, s6, sp
                  sll          t3, a1, a2
                  bne          a3, a7, 659f
                  slli         s3, s0, 2
                  blt          gp, t3, 662f
                  sll          t6, s11, s4
659:              slli         sp, s9, 7
                  xor          t1, s11, a5
661:              srl          s9, s0, tp
662:              andi         t5, s3, -1018
                  slti         s3, tp, -791
                  sra          a1, s1, a2
                  auipc        a5, 1003177
                  andi         gp, t3, -346
                  la           s1, sub_1
                  ori          gp, t6, 1321
                  addi         s1, s1, 1023
                  ori          t6, t6, -177
                  lui          s5, 696517
                  sltu         s0, a5, a1
                  nop
                  lui          ra, 518826
main_j1:          jalr         t1, s1, -1023 #jump main -> sub_1
                  add          s10, t3, s0
                  auipc        t3, 333580
                  bne          s6, gp, 670f
                  srl          t0, t4, s0
                  srai         t2, s11, 18
670:              sltiu        a6, sp, -424
                  srai         a1, s5, 24
                  srai         a6, s0, 2
                  srl          t3, s1, t2
                  beq          a0, s11, 682f
                  srai         t0, s5, 26
                  addi         t0, a5, -1174
                  slt          sp, sp, t0
                  andi         s8, s7, 915
                  lui          s2, 494436
                  srl          sp, a3, a1
                  bltu         a0, sp, 692f
682:              srai         a6, s0, 22
                  ori          a2, a0, 1690
                  slt          a5, t5, tp
                  andi         tp, t4, 1182
                  bne          s7, ra, 695f
                  addi         t5, t1, -1753
                  lui          zero, 851863
                  sltu         s5, s2, t2
                  xori         t1, zero, -1847
                  auipc        s7, 993298
692:              xor          s8, a6, t6
                  beq          s0, s9, 702f
                  sll          s10, s7, s1
695:              bltu         ra, t6, 697f
                  and          tp, s2, s6
697:              or           s9, s0, t2
                  or           a7, a4, a4
                  auipc        ra, 741734
                  srli         t0, s9, 20
                  slli         s6, s6, 10
702:              slt          s8, s10, a6
                  bgeu         s7, t6, 720f
                  sub          s5, t6, gp
                  ori          a5, s7, -984
                  addi         a1, s7, 142
                  sltu         s3, s10, sp
                  srl          s0, a2, a6
                  beq          a2, t1, 726f
                  andi         s7, s3, -1451
                  sltu         t6, a6, s4
                  auipc        tp, 546152
                  srai         s3, s9, 8
                  srai         s8, s0, 12
                  xor          a1, tp, a6
                  xori         s1, t2, -1568
                  andi         t6, s4, 1395
                  sub          s11, s2, a6
                  sltu         s2, s8, s3
720:              srai         sp, s7, 18
                  slt          tp, s9, s10
                  bgeu         s2, s5, 725f
                  bltu         s10, ra, 735f
                  slti         t1, a6, -918
725:              and          sp, zero, s4
726:              xori         s10, a6, 1562
                  srai         tp, t4, 21
                  sra          s10, s5, t1
                  xori         s9, a5, 414
                  nop
                  xori         t6, t2, 1107
                  and          a0, a5, s0
                  nop
                  auipc        s1, 879709
735:              blt          s11, gp, 754f
                  andi         ra, a5, -1064
                  slt          s9, s3, a4
                  and          a0, a6, t3
                  lui          zero, 807335
                  addi         t1, s10, -962
                  xori         s6, zero, -1381
                  srai         t2, a1, 11
                  bltu         t4, a0, 758f
                  xor          ra, zero, a0
                  xor          s0, a0, sp
                  add          s11, a7, t4
                  srl          a6, gp, s10
                  slti         s5, t4, 365
                  blt          s11, s9, 758f
                  sub          t0, t3, s2
                  nop
                  bgeu         a6, s11, 771f
                  blt          a5, t0, 761f
754:              bne          tp, a7, 762f
                  sltiu        t6, tp, 1979
                  and          s9, t6, t1
                  slt          s11, t2, ra
758:              andi         s1, s5, 207
                  beq          s2, s10, 762f
                  sll          t3, s0, s3
761:              bgeu         s7, s0, 768f
762:              sll          sp, a2, s9
                  bgeu         t0, a2, 774f
                  slt          sp, a6, a5
                  sll          a0, a2, t0
                  xor          t0, a6, s6
                  slt          a7, t4, s10
768:              srli         s3, s0, 30
                  bgeu         a2, s11, 784f
                  beq          sp, a5, 788f
771:              srli         a5, s5, 10
                  or           t6, a5, s7
                  auipc        s11, 157067
774:              auipc        s3, 541343
                  xori         a7, s6, 1544
                  nop
                  slti         s5, s8, -758
                  slli         sp, s2, 3
                  lui          t5, 1004291
                  andi         s2, a7, 1810
                  ori          a1, s1, -630
                  add          s10, t5, a4
                  xor          s10, t3, a4
784:              srl          t1, a3, zero
                  beq          s8, t5, 789f
                  srai         t5, t2, 18
                  lui          t2, 105653
788:              beq          zero, a5, 790f
789:              ori          s0, a2, 751
790:              ori          s10, ra, 470
                  bge          zero, t3, 802f
                  bgeu         t2, ra, 811f
                  or           ra, gp, t1
                  auipc        s8, 236873
                  bne          ra, a5, 804f
                  sra          sp, ra, a6
                  addi         a1, a4, 1129
                  sll          a7, s3, a4
                  xori         gp, s3, -881
                  ori          a5, s5, 1876
                  auipc        s6, 489754
802:              add          a2, s11, t0
                  lui          a1, 350995
804:              addi         zero, t4, -512
                  bgeu         s6, t4, 807f
                  sltiu        s7, a6, -1718
807:              sltu         s0, s5, s3
                  andi         a3, t3, -137
                  xor          t3, ra, s2
                  beq          sp, ra, 819f
811:              sra          sp, gp, gp
                  bne          s1, s11, 820f
                  sra          s0, zero, a7
                  slli         a0, a2, 27
                  sub          a6, s5, s5
                  sltiu        t2, a6, -1252
                  bne          s11, s1, 832f
                  bltu         a0, s5, 825f
819:              srl          s6, t6, t4
820:              auipc        zero, 543601
                  andi         sp, a7, 812
                  bne          t1, a1, 840f
                  sra          t0, s0, t5
                  sltiu        tp, s2, -1997
825:              bgeu         a0, t0, 836f
                  blt          s11, a2, 829f
                  addi         a5, s10, 1352
                  beq          a6, s7, 846f
829:              srl          a1, a4, a1
                  auipc        s7, 114123
                  sll          gp, s2, a7
832:              bne          a2, a7, 835f
                  bne          a2, s9, 841f
                  bltu         s0, s0, 851f
835:              srl          tp, a7, t6
836:              nop
                  xori         s7, s0, 1140
                  sra          a5, t2, s1
                  bltu         s10, s9, 847f
840:              sub          a7, a0, a1
841:              sll          s7, a6, t6
                  nop
                  slli         zero, s3, 16
                  srl          s11, s7, s9
                  srli         zero, s10, 24
846:              bltu         s0, a7, 850f
847:              ori          a1, s4, -1792
                  bgeu         a6, a1, 867f
                  auipc        sp, 654943
850:              bltu         s4, t2, 862f
851:              srai         a1, t2, 3
                  slli         ra, a6, 17
                  srli         s7, s1, 7
                  beq          a5, sp, 858f
                  slti         s0, ra, 1107
                  blt          t0, a6, 858f
                  blt          s7, s7, 862f
858:              slti         ra, s4, -1962
                  xori         sp, t3, 647
                  srai         a3, t0, 29
                  or           a1, a2, s6
862:              add          s5, a0, t3
                  nop
                  lui          s3, 135753
                  xor          s11, a4, s9
                  lui          s9, 383344
867:              xori         s1, t5, -1007
                  blt          a7, a3, 883f
                  blt          a5, sp, 886f
                  ori          tp, a2, -1708
                  bltu         t1, s1, 880f
                  beq          gp, t5, 883f
                  bne          s8, ra, 877f
                  or           sp, s0, s7
                  blt          a3, s3, 878f
                  srli         t3, a1, 25
877:              andi         t3, s7, 1383
878:              sll          s1, s6, s3
                  xori         a2, s2, 1142
880:              sll          ra, s7, a3
                  slti         t6, a0, 289
                  srl          s0, t3, a7
883:              srli         t1, t0, 12
                  blt          s4, s11, 903f
                  auipc        a6, 995663
886:              xor          t3, a1, a0
                  srli         a6, a2, 5
                  ori          s1, a2, 2021
                  slti         s7, t2, 357
                  srl          a1, a7, ra
                  srli         ra, tp, 31
                  addi         a6, a7, 1155
                  slti         s0, s9, 850
                  sltu         t5, s4, a1
                  bltu         s11, s11, 900f
                  slli         a3, s7, 13
                  srl          s8, s10, t3
                  nop
                  sltiu        a5, s11, -356
900:              srli         t0, t4, 1
                  xor          sp, s7, a0
                  ori          t3, ra, 1367
903:              sltiu        a1, t6, -1702
                  ori          t2, s10, 1686
                  add          a5, t4, s7
                  srl          s6, s8, t0
                  sra          s2, sp, s1
                  sltiu        t1, s5, -464
                  ori          tp, t1, -1511
                  sltiu        s2, s8, 82
                  bltu         s5, zero, 930f
                  srli         s7, s11, 27
                  ori          t5, t6, -768
                  srli         t2, ra, 22
                  bne          t6, a3, 923f
                  sra          a1, s5, s5
                  srl          s11, sp, a7
                  add          s7, t0, tp
                  lui          s6, 239499
                  bge          t0, a6, 925f
                  xor          t3, t1, a3
                  sub          a7, a6, a6
923:              bltu         t2, t1, 940f
                  slli         a1, t4, 9
925:              nop
                  sltu         s3, zero, sp
                  auipc        sp, 375479
                  srli         zero, gp, 14
                  srai         t1, a4, 31
930:              auipc        s11, 401415
                  auipc        s11, 8117
                  bne          s4, s7, 935f
                  xori         s9, s8, 1776
                  auipc        a5, 76910
935:              srli         t5, a6, 27
                  sra          ra, a4, s2
                  addi         s9, t4, 1732
                  bgeu         t5, ra, 953f
                  srli         s5, a3, 16
940:              xori         t6, s6, 466
                  blt          a1, s11, 952f
                  srl          a1, s2, s3
                  sll          a5, a0, t6
                  addi         t2, a3, -1307
                  slt          t6, zero, gp
                  auipc        t2, 566654
                  auipc        s10, 697833
                  add          zero, t5, sp
                  srai         a0, gp, 0
                  sltiu        s6, s5, -741
                  bne          tp, s5, 955f
952:              nop
953:              addi         a0, a2, -179
                  auipc        s11, 149517
955:              srai         gp, s5, 15
                  sltu         sp, tp, s1
                  srai         s9, t0, 5
                  slt          s3, a2, s6
                  sltiu        t5, tp, -1787
                  sltu         ra, ra, t3
                  xor          s11, t2, t0
                  slti         t1, a6, -1207
                  sll          s8, t3, s4
                  sll          a0, s9, s11
                  auipc        a3, 453603
                  sltiu        sp, t3, -119
                  addi         sp, ra, -591
                  bne          s8, a4, 972f
                  sub          ra, a6, t6
                  bgeu         t5, a3, 988f
                  sll          ra, t6, s7
972:              beq          s1, a6, 980f
                  and          a6, a5, s11
                  xori         a1, s1, -854
                  sltu         s0, t5, a6
                  sltiu        s2, s3, 521
                  or           s7, t2, s1
                  add          a3, t1, t0
                  andi         s7, s6, 438
980:              andi         a7, t1, 867
                  ori          s0, t0, 219
                  bltu         zero, s0, 989f
                  addi         s5, a6, 1971
                  sltu         s3, t0, ra
                  sra          tp, s4, a0
                  auipc        t5, 597672
                  bne          t5, t2, 995f
988:              sltu         s0, t4, sp
989:              sra          a2, tp, t3
                  slli         s10, s3, 29
                  and          t1, t4, gp
                  and          gp, s0, s5
                  srli         s0, ra, 20
                  bge          a1, t6, 1003f
995:              slt          s3, sp, s4
                  and          sp, s10, s11
                  slt          zero, a4, s0
                  auipc        a0, 793199
                  slt          s2, a3, tp
                  slli         s10, zero, 15
                  or           s10, a6, gp
                  srai         s6, gp, 0
1003:             bgeu         s10, s4, 1007f
                  srl          t2, t0, zero
                  blt          a3, a1, 1008f
                  srli         a5, s11, 28
1007:             bgeu         tp, s10, 1022f
1008:             ori          t3, t2, -1770
                  bne          s5, gp, 1026f
                  sra          s11, t6, a7
                  bge          t2, s0, 1020f
                  xor          t6, s6, ra
                  sra          s11, a4, s9
                  add          a7, t3, tp
                  nop
                  or           a0, ra, s9
                  add          a3, s0, a2
                  slli         s9, s5, 9
                  bgeu         t0, t5, 1038f
1020:             xor          a3, a6, s7
                  srai         a0, a4, 0
1022:             sltiu        sp, a0, -400
                  sltu         s6, sp, a3
                  blt          ra, s10, 1042f
                  auipc        zero, 1017842
1026:             sub          t2, s4, s1
                  lui          t1, 723735
                  beq          s5, s7, 1037f
                  sll          zero, sp, s8
                  bltu         t2, s2, 1042f
                  auipc        s2, 30261
                  lui          s3, 637163
                  or           s9, a4, tp
                  add          gp, s8, t3
                  bgeu         s0, a1, 1046f
                  addi         s7, a6, 1064
1037:             srl          s5, t2, s0
1038:             blt          a5, s6, 1040f
                  sll          s1, s9, s2
1040:             and          a5, s8, s10
                  srli         a0, s3, 31
1042:             and          s8, s4, a1
                  nop
                  bgeu         s0, s1, 1049f
                  bge          s0, a7, 1064f
1046:             add          t1, zero, s7
                  srl          tp, s11, s9
                  srl          s7, t5, gp
1049:             sll          t6, t3, a7
                  auipc        s2, 912994
                  addi         t1, s10, 1154
                  ori          s8, s11, -1056
                  nop
                  ori          tp, s0, -247
                  srli         s3, t0, 18
                  sltu         s7, t4, s0
                  bne          s5, s2, 1060f
                  andi         s0, t2, 1065
                  slli         a5, ra, 30
1060:             srl          t2, a3, s9
                  add          t0, sp, s5
                  auipc        ra, 897993
                  sra          s1, t0, a3
1064:             beq          a6, s6, 1066f
                  addi         s11, zero, -1704
1066:             beq          s10, sp, 1077f
                  srl          a2, t4, tp
                  blt          s11, s7, 1073f
                  blt          a4, t3, 1080f
                  auipc        a0, 771435
                  addi         t0, t0, -643
                  blt          s5, tp, 1074f
1073:             addi         s9, s4, 643
1074:             bge          tp, a7, 1076f
                  nop
1076:             andi         tp, t2, -503
1077:             sra          a6, a0, s11
                  blt          ra, a7, 1082f
                  auipc        a5, 591231
1080:             sll          a7, s9, t0
                  slti         gp, a1, 534
1082:             beq          s10, s6, 1093f
                  auipc        a7, 947991
                  sra          s2, t6, a0
                  addi         a3, s8, -1588
                  ori          a7, s7, 1271
                  andi         t5, a5, -1080
                  or           s8, a1, s1
                  auipc        a3, 900777
                  sll          sp, s0, s5
                  or           s11, s3, t4
                  bne          s10, s7, 1100f
1093:             or           s5, t0, a4
                  slt          s1, t3, t2
                  or           s5, ra, a7
                  slti         s11, t0, -478
                  srai         s9, a6, 19
                  sub          t6, t3, t5
                  bne          s7, t0, 1102f
1100:             nop
                  xori         t0, s7, 1747
1102:             lui          t6, 544090
                  nop
                  slti         s0, t1, -536
                  sub          zero, a1, zero
                  srai         s6, a2, 28
                  slli         s11, s0, 17
                  ori          s10, s2, -1067
                  sub          t0, t3, t0
                  sll          sp, sp, a4
                  beq          a6, tp, 1123f
                  srl          a7, s0, s1
                  srl          a1, s11, sp
                  sltiu        t2, s1, 762
                  srai         s1, a2, 0
                  blt          s0, s0, 1135f
                  sra          a6, s3, a6
                  bltu         a5, s1, 1127f
                  andi         a3, s9, -365
                  bltu         s4, tp, 1139f
                  srli         sp, s1, 8
                  auipc        s1, 145082
1123:             slli         t6, a4, 11
                  addi         t0, a6, -1174
                  ori          a6, s8, -1845
                  srli         t2, t1, 24
1127:             sll          a5, a7, s7
                  ori          a5, s8, -472
                  sll          ra, a0, t6
                  xor          tp, a6, a0
                  bgeu         t4, t1, 1142f
                  bgeu         s7, s1, 1147f
                  and          a6, s10, s0
                  srai         sp, a0, 5
1135:             sub          s0, a4, s3
                  slli         a0, t3, 25
                  slli         s5, s0, 3
                  add          a0, s10, s8
1139:             addi         a7, a1, 1448
                  ori          s8, s6, 965
                  add          a3, t0, tp
1142:             srai         a2, t1, 23
                  bne          ra, t1, 1146f
                  bge          t2, s7, 1163f
                  srli         s9, a4, 27
1146:             bltu         a0, a0, 1164f
1147:             auipc        s5, 878962
                  sltu         t3, s4, s6
                  or           a3, a3, zero
                  and          s1, a4, a4
                  andi         t6, t3, -882
                  beq          s10, a1, 1169f
                  beq          t5, sp, 1161f
                  beq          s4, s5, 1172f
                  xori         s5, s7, 1405
                  andi         t2, a5, 1338
                  addi         s5, s10, -340
                  addi         a6, t3, 1371
                  and          s1, zero, s4
                  srai         t6, s7, 27
1161:             slti         a1, t1, 471
                  addi         t3, s2, -802
1163:             bltu         a5, a7, 1167f
1164:             sra          a2, a6, s3
                  addi         t6, s5, 375
                  or           s3, t6, t1
1167:             srl          s6, a2, s5
                  bltu         s6, zero, 1183f
1169:             or           s9, s2, s10
                  sub          s1, s9, t3
                  bgeu         t6, ra, 1179f
1172:             add          s11, s3, a7
                  addi         s7, t2, 18
                  xor          a5, t5, s9
                  srli         t5, s5, 18
                  bne          a2, s11, 1181f
                  beq          s5, s11, 1186f
                  sll          s7, s10, t5
1179:             addi         t6, a6, -1679
                  andi         t5, t2, -1000
1181:             add          zero, s9, s2
                  blt          a2, s11, 1185f
1183:             lui          a5, 37300
                  ori          s9, s0, 1781
1185:             srl          gp, s8, s5
1186:             andi         t1, a7, 1495
                  blt          s7, s10, 1196f
                  bltu         t2, a0, 1205f
                  sra          a1, a3, a1
                  ori          ra, a6, -1286
                  srl          s9, s10, s0
                  srli         s5, tp, 21
                  slt          sp, s9, t0
                  blt          tp, t2, 1201f
                  or           t1, t6, t3
1196:             and          a6, zero, t2
                  lui          s6, 1034431
                  slt          s5, s5, a0
                  bne          a0, a1, 1203f
                  add          t5, s7, s4
1201:             add          s9, a3, tp
                  ori          s3, t2, -316
1203:             sltiu        a7, s11, -2016
                  lui          t3, 483410
1205:             srai         s10, a5, 17
                  lui          t6, 549219
                  addi         s1, t1, 2041
                  lui          ra, 911592
                  slli         s3, s5, 1
                  srli         s0, sp, 29
                  bge          t5, s7, 1218f
                  andi         s11, s8, -927
                  sra          s11, a5, s3
                  bge          t1, s10, 1225f
                  beq          a7, zero, 1224f
                  sub          t2, a7, ra
                  slli         s10, a6, 22
1218:             bltu         s1, zero, 1222f
                  slt          s11, a1, s8
                  bge          s1, a0, 1228f
                  add          a6, s1, t0
1222:             slli         s2, s2, 7
                  or           t2, a2, s3
1224:             blt          s8, t3, 1235f
1225:             sub          t5, t5, sp
                  and          s0, s0, t2
                  srl          t0, s11, sp
1228:             sra          s7, s10, a7
                  sltu         a0, t0, t4
                  or           a2, sp, s6
                  ori          t5, t5, -649
                  xori         t2, t6, -347
                  sltu         s11, s1, t2
                  sra          ra, s4, s5
1235:             slt          a2, s1, a1
                  addi         a5, a2, 505
                  sltiu        a7, t0, -753
                  srai         a3, s9, 23
                  lui          t3, 847535
                  auipc        s10, 264531
                  bne          tp, t0, 1245f
                  lui          tp, 946263
                  srl          a6, a1, t2
                  or           s8, s0, a7
1245:             bgeu         s5, s11, 1257f
                  ori          sp, s11, 1521
                  slli         s3, a0, 15
                  slt          a2, gp, t6
                  add          t0, s4, t1
                  sltiu        s6, a7, 491
                  blt          gp, s2, 1260f
                  auipc        a0, 487003
                  xor          s1, t6, s4
                  beq          s4, a5, 1257f
                  sub          s6, s11, a6
                  srli         t2, s11, 2
1257:             auipc        s3, 631074
                  sra          s0, gp, t2
                  and          s9, a3, a0
1260:             bgeu         zero, a2, 1277f
                  xori         s7, t1, 1663
                  sltu         s9, ra, t6
                  beq          a7, s0, 1267f
                  auipc        a3, 559615
                  srli         a7, s1, 16
                  auipc        t1, 873185
1267:             blt          s10, s5, 1270f
                  auipc        a2, 12799
                  sltiu        a7, sp, 264
1270:             slti         a7, s1, 1235
                  blt          t1, a2, 1288f
                  xori         s9, a7, 1648
                  srl          sp, sp, a0
                  slt          s6, s2, s11
                  lui          s9, 343742
                  addi         a7, s4, -164
1277:             beq          s4, sp, 1286f
                  nop
                  slt          t0, gp, a7
                  beq          sp, a0, 1299f
                  srli         a6, a4, 25
                  and          a7, s7, t5
                  xori         s1, s3, -99
                  nop
                  andi         s7, s8, -1456
1286:             sltiu        s1, s7, -104
                  sltiu        s3, a5, 1401
1288:             lui          t1, 1031976
                  addi         s9, a0, -753
                  or           s11, s10, t5
                  blt          t1, a4, 1293f
                  bne          a5, t0, 1297f
1293:             srl          a0, s5, t2
                  slt          a6, a1, s4
                  or           s2, a1, sp
                  lui          a3, 720060
1297:             nop
                  srli         zero, s0, 31
1299:             slti         s7, t1, -188
                  blt          s5, t3, 1305f
                  sltiu        s6, s7, 1196
                  sltu         t0, zero, s3
                  slli         sp, a4, 29
                  or           a1, a1, s4
1305:             add          sp, s2, t0
                  srl          s1, sp, s6
                  bgeu         a3, s10, 1309f
                  beq          s10, t6, 1311f
1309:             and          a2, s9, s6
                  bge          s7, gp, 1328f
1311:             xori         a7, t6, 1704
                  slli         a5, a3, 9
                  srai         a0, t2, 18
                  lui          s8, 357377
                  bne          a2, a1, 1330f
                  slli         t5, s9, 11
                  slt          s5, a1, s1
                  xor          t0, a4, t2
                  xor          a3, gp, a2
                  bne          a6, ra, 1331f
                  srl          a3, s10, t3
                  srli         s9, tp, 23
                  sub          zero, zero, s10
                  sra          s2, s2, zero
                  bge          t5, a0, 1344f
                  slti         zero, t2, -362
                  auipc        s7, 404088
1328:             slti         sp, t3, 434
                  sll          s6, s0, zero
1330:             bgeu         ra, a7, 1338f
1331:             xori         s11, s8, -471
                  andi         s11, t3, 2016
                  sub          a1, sp, gp
                  xori         ra, a0, 167
                  bne          s8, t6, 1343f
                  lui          a7, 351900
                  slli         a1, a0, 23
1338:             sub          s1, ra, a5
                  srl          s9, a2, gp
                  auipc        tp, 332201
                  addi         t6, s5, 1814
                  blt          s9, t3, 1361f
1343:             slli         s3, t4, 2
1344:             sra          s0, ra, s9
                  sltu         s8, s5, s9
                  auipc        a5, 307052
                  bltu         a6, s7, 1362f
                  add          a1, a6, t0
                  blt          t2, a5, 1367f
                  addi         sp, s3, -1643
                  ori          a2, s4, -1635
                  andi         t3, s1, -1476
                  bltu         s6, t6, 1362f
                  bgeu         s8, s9, 1361f
                  bltu         s4, a4, 1363f
                  srli         ra, s3, 16
                  slti         s0, s5, 168
                  bltu         a6, sp, 1369f
                  bne          gp, sp, 1362f
                  sub          s8, t6, t3
1361:             sltu         s5, a4, a4
1362:             or           tp, a1, t4
1363:             srai         s10, a3, 17
                  nop
                  xori         tp, a6, 581
                  xori         s10, t5, -165
1367:             bgeu         sp, sp, 1369f
                  or           s1, s8, a6
1369:             slli         s6, t2, 14
                  slli         tp, s0, 29
                  bne          s2, s0, 1373f
                  sltiu        t6, zero, -1572
1373:             lui          t1, 507906
                  bne          t1, sp, 1378f
                  sll          t1, t5, ra
                  xor          ra, s2, a3
                  srl          zero, a7, s3
1378:             sra          t0, a6, s7
                  srl          s1, s10, a7
                  sra          tp, a7, s0
                  bge          s5, a2, 1399f
                  srai         tp, gp, 7
                  beq          zero, s8, 1388f
                  srai         a1, t2, 29
                  sltiu        zero, a6, 313
                  slli         t3, t6, 22
                  srai         s11, s1, 1
1388:             slli         s6, a0, 1
                  andi         s7, s11, -166
                  add          a5, t0, a7
                  xori         gp, s3, -49
                  xor          t0, zero, s4
                  auipc        a3, 228919
                  auipc        zero, 414739
                  srai         t5, sp, 22
                  xor          tp, sp, a3
                  lui          sp, 38692
                  blt          tp, t4, 1415f
1399:             bgeu         s11, ra, 1407f
                  beq          s0, t5, 1403f
                  sltu         ra, tp, a1
                  xor          ra, s9, s9
1403:             addi         t0, s1, -1625
                  xori         t0, t6, -146
                  beq          zero, tp, 1414f
                  addi         a3, t6, 61
1407:             xori         t0, t3, 726
                  lui          sp, 77224
                  sub          s10, s6, s7
                  bne          s11, s11, 1425f
                  bne          a2, t1, 1430f
                  addi         t0, s1, -1026
                  auipc        t0, 865438
1414:             srai         t3, a5, 6
1415:             bne          t0, s9, 1418f
                  srai         t0, a7, 20
                  sub          sp, a6, a5
1418:             ori          t2, gp, -1471
                  bne          a2, s1, 1436f
                  bltu         gp, t5, 1425f
                  bgeu         a0, t4, 1432f
                  slt          zero, t1, s6
                  xori         s1, t5, 1259
                  slli         s5, t0, 7
1425:             add          a3, s9, a0
                  sltiu        a2, s7, 1342
                  sll          s5, zero, t5
                  sll          tp, s4, s1
                  auipc        s7, 685330
1430:             slt          s7, s11, a6
                  srl          a2, s7, s7
1432:             ori          zero, a6, -1356
                  xori         s10, tp, 1530
                  beq          s2, t0, 1438f
                  blt          s8, s7, 1450f
1436:             srai         t3, zero, 3
                  slli         a1, t5, 1
1438:             lui          a3, 492905
                  srli         s1, sp, 15
                  or           zero, s3, sp
                  sltu         s11, t5, s4
                  beq          s8, t3, 1451f
                  bne          t0, sp, 1454f
                  sltiu        a7, t5, 945
                  sra          a0, s3, s4
                  slt          s6, t4, a5
                  add          s11, a6, t0
                  and          s1, s10, s2
                  andi         s10, a1, -1184
1450:             or           a6, a1, s6
1451:             auipc        s9, 197932
                  sltiu        s7, a5, -73
                  add          a5, s2, s11
1454:             srai         a3, a1, 1
                  slli         gp, zero, 3
                  auipc        t3, 157681
                  bgeu         gp, s2, 1465f
                  sltiu        t0, t6, -871
                  slli         s11, s7, 10
                  sra          ra, gp, a2
                  xori         s6, tp, -1402
                  or           t6, gp, a2
                  slti         a7, a6, -351
                  bltu         a2, s11, 1476f
1465:             sll          a2, s11, a3
                  sltu         a2, s5, t3
                  auipc        a5, 313581
                  srli         s3, tp, 20
                  xori         ra, t3, 467
                  sra          t5, a3, gp
                  xor          zero, a7, s3
                  slt          t2, tp, s5
                  auipc        s11, 1045067
                  sra          s8, t5, s3
                  bge          a7, a1, 1494f
1476:             beq          ra, ra, 1495f
                  bltu         s11, a2, 1481f
                  nop
                  beq          zero, sp, 1497f
                  or           a0, s7, s9
1481:             sltu         s6, s8, a4
                  xori         s5, s9, -1613
                  lui          s7, 829158
                  addi         a5, a1, 1656
                  sub          s1, a2, a6
                  sltiu        s1, a0, 668
                  sltiu        a6, a1, 228
                  sll          a5, a3, t3
                  srl          t6, s11, a0
                  sra          s11, t4, t6
                  sll          t0, s6, a7
                  sltiu        t1, s6, -1164
                  sltiu        a1, t2, 1526
1494:             sltiu        s2, s8, 991
1495:             sltiu        s1, t2, -1412
                  bne          t5, t3, 1513f
1497:             auipc        tp, 927133
                  slti         s9, s9, 2025
                  and          s2, a1, a6
                  or           a0, sp, s3
                  and          sp, s9, a6
                  lui          s8, 207720
                  lui          s5, 611318
                  srli         a3, s0, 29
                  srli         a6, ra, 10
                  xor          t5, a0, s1
                  bge          a2, s8, 1522f
                  srai         t1, s1, 8
                  srli         s8, t2, 15
                  sltiu        a6, a1, 1076
                  bltu         sp, s3, 1522f
                  bge          t1, s7, 1531f
1513:             sub          s8, gp, s1
                  xori         t6, s0, -628
                  sub          s8, t0, t0
                  xori         s11, t1, 894
                  srli         t0, gp, 3
                  sltu         s8, t6, s9
                  auipc        a0, 914282
                  sub          a6, a4, a6
                  beq          sp, t5, 1523f
1522:             sra          s3, s0, s4
1523:             beq          tp, a0, 1526f
                  xor          zero, s5, t5
                  addi         a7, tp, -2017
1526:             srl          a5, s2, a1
                  sltiu        s2, a7, 387
                  slti         zero, a6, -1240
                  ori          a2, gp, 1092
                  bne          a4, t1, 1541f
1531:             blt          s4, s3, 1535f
                  bge          t2, tp, 1537f
                  xori         ra, tp, -1393
                  sub          s5, ra, a7
1535:             add          s6, s1, a4
                  auipc        ra, 34959
1537:             addi         s1, a5, 764
                  nop
                  srai         sp, a2, 9
                  bgeu         s10, sp, 1549f
1541:             ori          t5, s8, -191
                  beq          s1, s10, 1550f
                  xor          s10, s8, t0
                  auipc        t0, 1021507
                  la           a2, region_1+1112 #start riscv_load_store_rand_instr_stream_26
                  sltu         s0, t0, t1
                  sh           t4, -336(a2)
                  xor          tp, s9, s11
                  sra          s10, t5, gp
                  lb           gp, 310(a2)
                  lb           s3, -285(a2)
                  srli         s8, s4, 8
                  srai         t3, t6, 2
                  lbu          tp, 661(a2)
                  or           a1, a6, t3
                  lbu          s6, 377(a2)
                  lb           a1, -577(a2)
                  sub          a6, t6, t2
                  slli         t1, a3, 30
                  lb           s11, 129(a2)
                  lb           s2, -717(a2)
                  ori          s10, a3, 135
                  lbu          s6, -2(a2)
                  sh           a3, 62(a2)
                  add          gp, a5, s7
                  sll          t0, a6, s1
                  lb           t0, 115(a2)
                  lhu          ra, 482(a2)
                  lhu          t3, 164(a2)
                  lh           a1, 260(a2)
                  sw           t6, -744(a2)
                  lbu          t5, -509(a2)
                  srl          a6, ra, t1
                  lb           s9, -1107(a2)
                  ori          gp, t4, 143
                  lb           t5, -323(a2)
                  sb           a6, 804(a2) #end riscv_load_store_rand_instr_stream_26
                  auipc        t6, 700615
                  addi         s5, s6, -1817
                  addi         a5, s6, -1978
                  andi         s0, a1, -790
1549:             slti         sp, s0, -998
1550:             and          s8, s9, a4
                  auipc        t3, 74546
                  addi         t5, s3, -1059
                  sub          ra, s8, t4
                  sll          s7, t0, a7
                  bne          a2, s1, 1558f
                  srai         a5, t5, 9
                  sltiu        t1, s10, -538
1558:             sltiu        gp, ra, 509
                  or           s10, s9, t1
                  addi         a6, t1, -1372
                  addi         s10, s10, 1593
                  bgeu         s8, s7, 1577f
                  bne          t6, ra, 1582f
                  add          a6, s5, t5
                  sltu         s11, s6, s2
                  srai         s0, t5, 7
                  bgeu         t4, a6, 1576f
                  beq          s1, sp, 1570f
                  nop
1570:             blt          t2, t6, 1573f
                  sra          t6, t3, s0
                  xori         tp, gp, 1282
1573:             sub          s11, a0, s1
                  sub          a2, tp, a6
                  slli         a5, ra, 4
1576:             sltu         zero, s8, a3
1577:             nop
                  ori          t2, gp, -10
                  srai         a7, gp, 30
                  add          s3, t3, ra
                  blt          t5, t1, 1599f
1582:             or           s1, a0, ra
                  srl          s9, ra, s7
                  nop
                  ori          sp, a2, -649
                  slt          a7, a1, sp
                  sra          t3, t4, s0
                  srl          a5, a5, tp
                  srai         t5, a4, 20
                  beq          t4, s0, 1609f
                  bge          s3, ra, 1599f
                  nop
                  addi         a2, s10, -448
                  sltiu        a0, sp, 15
                  xori         zero, zero, -941
                  sll          s2, sp, s0
                  bne          t5, a7, 1601f
                  bgeu         t4, s2, 1602f
1599:             slli         s6, zero, 26
                  srl          tp, s0, sp
1601:             bltu         t2, a6, 1612f
1602:             bltu         s11, a5, 1609f
                  sltiu        a5, t3, 680
                  bltu         s7, s7, 1616f
                  ori          s1, s8, 1456
                  lui          s7, 110307
                  xori         s1, a2, -269
                  or           t0, s0, a1
1609:             bltu         gp, s8, 1627f
                  sub          a6, t6, zero
                  slt          s8, a0, t5
1612:             xori         s0, s8, 719
                  bltu         t1, s7, 1618f
                  nop
                  or           s6, s5, t0
1616:             bltu         t0, a5, 1633f
                  bgeu         t0, t5, 1626f
1618:             add          s7, s0, sp
                  andi         a3, s8, -270
                  auipc        sp, 169225
                  andi         s7, s2, -1787
                  bgeu         sp, s6, 1630f
                  xori         s3, zero, -1547
                  bge          s9, a4, 1642f
                  bne          s11, s2, 1642f
1626:             sltu         sp, a7, sp
1627:             slt          s10, s11, t2
                  srli         a7, t1, 4
                  and          s7, zero, a4
1630:             slti         s1, a0, 1612
                  andi         a1, s10, -1207
                  slt          a2, t0, a4
1633:             bne          s2, t5, 1650f
                  or           a1, t1, a2
                  slli         ra, a0, 11
                  slli         t6, s5, 12
                  srli         zero, ra, 30
                  nop
                  bge          a7, t0, 1648f
                  bgeu         s1, s10, 1645f
                  bne          a6, ra, 1656f
1642:             sll          t5, s5, a6
                  sltu         a2, t4, s11
                  auipc        s2, 49721
1645:             bge          ra, t1, 1649f
                  xor          a0, s9, t1
                  sltu         a3, t4, a7
1648:             slt          a1, s6, t0
1649:             add          s6, a4, a5
1650:             srl          a0, s8, a7
                  andi         zero, t3, -1503
                  auipc        t2, 763156
                  slti         a3, gp, 527
                  slli         sp, a7, 10
                  nop
1656:             addi         s5, a7, 1010
                  sltiu        s9, s6, 1031
                  beq          t1, zero, 1676f
                  bge          t2, s10, 1661f
                  bne          s10, s10, 1667f
1661:             bge          s7, s1, 1673f
                  bge          a4, gp, 1671f
                  sltiu        tp, t2, -751
                  sub          t5, a3, a6
                  bgeu         s7, ra, 1684f
                  ori          t2, a6, -1289
1667:             or           zero, gp, t2
                  la           t6, region_0+1277 #start riscv_load_store_rand_instr_stream_23
                  sb           s0, -768(t6)
                  xori         t5, gp, -883
                  sb           s8, -1103(t6)
                  add          t1, zero, s7
                  or           t3, a4, t3
                  nop
                  lb           a0, -840(t6)
                  lbu          t2, 252(t6)
                  slti         a6, s0, -1182
                  lhu          a6, 585(t6)
                  lb           t2, 659(t6)
                  lb           t3, -564(t6)
                  lb           a7, 436(t6)
                  ori          t0, t6, -633
                  ori          s2, s4, 303
                  lb           gp, 227(t6)
                  xori         s1, t0, 380
                  lb           sp, -473(t6)
                  sb           t5, -763(t6)
                  lb           s1, -923(t6)
                  sltu         a7, a5, s1
                  xor          a3, ra, s2
                  lb           s6, 615(t6)
                  or           t1, t3, t1
                  lw           s5, 19(t6) #end riscv_load_store_rand_instr_stream_23
                  sll          a6, s1, a1
                  andi         a0, s8, -723
                  nop
1671:             auipc        zero, 971802
                  andi         ra, t5, 1562
1673:             bne          a7, tp, 1692f
                  sltu         a0, sp, s6
                  slli         a7, t2, 10
1676:             beq          s4, s3, 1681f
                  blt          a1, s4, 1696f
                  sltiu        t2, s3, 566
                  nop
                  blt          t0, a1, 1683f
1681:             lui          s2, 759446
                  addi         tp, s9, 1214
1683:             slt          a1, s9, a2
1684:             slt          t5, s10, s10
                  sll          t3, a3, s11
                  sltiu        t0, t2, 251
                  xor          s2, a2, s3
                  add          a2, s7, s5
                  or           a2, gp, s1
                  slli         gp, a4, 20
                  bge          t0, s8, 1694f
1692:             bltu         s7, t1, 1703f
                  srai         a0, a6, 11
1694:             ori          a1, ra, 916
                  beq          a7, ra, 1710f
1696:             xori         s1, a6, 1894
                  nop
                  slti         s0, s9, 235
                  nop
                  and          t0, s9, s3
                  xor          s2, a5, t6
                  ori          a5, a4, -158
1703:             addi         ra, a7, -301
                  auipc        s1, 877734
                  slti         s6, s2, 1725
                  xor          a5, s7, s7
                  sll          t0, s1, gp
                  andi         ra, ra, -1711
                  ori          s9, t1, 1272
1710:             bltu         s1, a5, 1718f
                  xor          s2, t5, a1
                  slti         s11, tp, 1211
                  blt          t6, gp, 1722f
                  blt          zero, gp, 1725f
                  bge          s10, zero, 1723f
                  srli         a7, t2, 31
                  auipc        ra, 184894
1718:             ori          a3, a1, -492
                  andi         t1, zero, -1469
                  slt          a7, s1, s4
                  srai         t1, sp, 7
1722:             sub          a5, a3, a3
1723:             bne          gp, t4, 1731f
                  sll          t6, gp, a2
1725:             or           s3, s9, gp
                  sub          s1, a3, t2
                  xor          a6, tp, t6
                  slli         s8, t0, 12
                  addi         a5, s9, 1204
                  xor          s3, zero, t6
1731:             auipc        s1, 731441
                  ori          t0, t1, -622
                  addi         ra, a1, -1514
                  slti         s8, a6, -1340
                  and          tp, t4, a0
                  andi         t6, a0, 211
                  nop
                  beq          a1, s2, 1749f
                  xor          s7, a4, ra
                  sub          s6, t4, a2
                  auipc        s6, 1010614
                  slti         t2, s3, 1743
                  sll          t5, s8, a7
                  srai         s6, a6, 0
                  slt          a1, t4, a1
                  lui          sp, 157952
                  xor          a6, t0, s7
                  bne          t3, ra, 1752f
1749:             sub          t3, s6, t4
                  ori          s10, s0, 225
                  sll          a1, t3, s10
1752:             lui          s7, 723904
                  andi         s1, sp, 396
                  slli         s8, sp, 12
                  bne          s7, s1, 1758f
                  sra          s9, s9, t4
                  sltiu        s8, gp, -1538
1758:             and          s8, tp, t6
                  sltiu        a2, t1, 462
                  lui          sp, 749514
                  srl          zero, t0, ra
                  blt          t1, a3, 1764f
                  nop
1764:             beq          zero, t0, 1768f
                  ori          gp, t3, -1849
                  beq          t3, a6, 1768f
                  and          a5, a2, t4
1768:             srli         ra, s8, 28
                  bgeu         gp, s9, 1772f
                  srai         t3, s2, 7
                  auipc        t0, 90897
1772:             slti         s1, t1, -407
                  blt          s9, a1, 1792f
                  sub          s8, zero, t6
                  auipc        a3, 346309
                  ori          t6, t4, -201
                  addi         t6, a5, -757
                  slli         t6, t5, 16
                  xori         s5, t5, -320
                  and          t6, gp, sp
                  blt          t0, s7, 1790f
                  andi         s10, s1, -1016
                  srli         a5, s2, 1
                  sll          a0, s11, s8
                  bge          t0, a6, 1797f
                  auipc        s5, 916764
                  srli         s9, s4, 14
                  bgeu         s5, s0, 1803f
                  srli         s9, t6, 15
1790:             slt          t3, tp, a3
                  xor          zero, t3, t1
1792:             sll          s9, a1, a3
                  blt          t1, tp, 1810f
                  sltu         t1, t6, a2
                  slli         s3, s2, 28
                  bltu         sp, sp, 1807f
1797:             xori         t1, s5, 71
                  nop
                  and          a6, a3, s9
                  srai         t5, a3, 16
                  xor          a1, a7, t0
                  bge          s3, a0, 1821f
1803:             srl          s11, s11, t3
                  sltiu        s7, a6, -1066
                  bge          s5, a3, 1823f
                  bltu         a5, t0, 1821f
1807:             andi         s7, t0, -1326
                  sll          a0, t3, sp
                  ori          a7, s10, -792
1810:             bgeu         s11, t5, 1813f
                  sra          s3, zero, a3
                  sll          t0, sp, s1
1813:             slti         s7, ra, 946
                  addi         t0, zero, 347
                  slti         s2, s2, -1603
                  xori         t3, s10, 1089
                  blt          s5, s3, 1836f
                  lui          s10, 554354
                  add          t5, a2, a3
                  addi         tp, a2, 1299
1821:             slti         a3, s3, -1601
                  addi         a7, t2, 1865
1823:             auipc        t0, 740002
                  srl          s6, t2, a4
                  slti         t3, s10, 1150
                  bltu         a2, a2, 1835f
                  bltu         s0, s6, 1835f
                  sub          zero, t6, gp
                  srl          s5, ra, s8
                  sra          gp, t4, s3
                  nop
                  nop
                  ori          sp, s1, 1453
                  srai         a7, t6, 1
1835:             and          gp, t2, a7
1836:             blt          a0, a6, 1841f
                  srli         a7, a7, 21
                  xor          a0, s0, s2
                  srai         s6, s11, 14
                  bne          a4, s10, 1844f
1841:             and          t5, ra, s5
                  bltu         a1, a2, 1844f
                  srai         t3, s11, 16
1844:             xor          a7, s0, t6
                  xori         s5, t0, 757
                  sra          ra, a4, s8
                  sll          ra, s9, s1
                  sub          a7, s1, gp
                  bge          t5, t5, 1854f
                  srai         a6, s9, 17
                  andi         s6, zero, 1577
                  sll          s6, s11, s5
                  slli         s8, a7, 10
1854:             addi         s5, t5, -688
                  nop
                  nop
                  andi         a5, s8, 50
                  beq          s0, t6, 1869f
                  sub          ra, t2, t6
                  sub          s3, a6, s9
                  slti         a1, sp, 599
                  sll          a0, sp, a2
                  bltu         a2, a4, 1871f
                  sltiu        a7, t0, -1741
                  sltu         t6, gp, s5
                  blt          s5, a1, 1875f
                  bgeu         s9, a7, 1871f
                  xor          s5, t6, s10
1869:             xor          t6, s0, s6
                  sub          t2, s9, a3
1871:             or           s3, t4, t2
                  sll          t1, s11, s5
                  or           s9, t1, t4
                  xori         s1, s5, -589
1875:             sra          s2, s11, s10
                  xori         a3, t0, 1184
                  slt          a0, s4, zero
                  xor          s6, a0, t3
                  slti         gp, zero, 1195
                  bltu         s6, s11, 1888f
                  beq          zero, s10, 1899f
                  beq          t5, t6, 1886f
                  srai         gp, s9, 2
                  beq          sp, a3, 1895f
                  addi         s2, s10, 1863
1886:             bge          zero, a2, 1903f
                  srl          tp, a6, gp
1888:             bgeu         s5, s4, 1895f
                  nop
                  slti         s8, s2, -1387
                  sra          a0, t3, a0
                  sltiu        s9, a1, -1430
                  srai         s11, a1, 10
                  blt          a7, a7, 1897f
1895:             beq          s2, t2, 1903f
                  andi         tp, a5, -1810
1897:             or           s2, s4, s10
                  sll          t5, t0, s8
1899:             slt          zero, t5, a5
                  auipc        s7, 869685
                  sra          s11, t4, a4
                  add          gp, s3, s11
1903:             lui          tp, 1044032
                  and          sp, a5, s8
                  slli         s2, s9, 1
                  xori         s8, zero, -1506
                  andi         s7, t3, -355
                  sub          s0, tp, gp
                  addi         a6, a2, 1624
                  xori         s6, t3, -1475
                  srai         a0, s4, 12
                  lui          t3, 228491
                  sltu         s5, s6, a5
                  xori         t3, s10, 140
                  slti         sp, a1, 1424
                  sltu         ra, t1, t1
                  slt          s6, ra, t1
                  and          t2, t3, ra
                  slt          s2, s10, a7
                  andi         a1, s3, 696
                  srai         s0, ra, 11
                  xor          sp, sp, s1
                  sltu         s6, zero, a5
                  lui          gp, 213952
                  blt          s7, a7, 1934f
                  srai         a6, s7, 26
                  bne          ra, a5, 1939f
                  slli         s7, a0, 3
                  sll          s7, a2, zero
                  slli         ra, a1, 7
                  nop
                  nop
                  ori          t0, a1, -755
1934:             andi         s5, a1, -299
                  nop
                  lui          t6, 50771
                  slti         s6, a5, -2001
                  ori          t6, a4, 1676
1939:             srl          gp, s2, s1
                  sll          s8, s4, tp
                  xor          s10, s0, t1
                  slli         s7, a6, 11
                  slt          zero, s2, sp
                  srai         s2, tp, 9
                  auipc        s0, 347313
                  sltiu        s0, s11, 188
                  and          s10, tp, gp
                  ori          t2, a2, -1541
                  sltiu        s0, s10, 2011
                  bgeu         s6, gp, 1952f
                  blt          s7, a0, 1959f
1952:             sll          s9, a2, a3
                  add          ra, s8, ra
                  or           t3, s5, t0
                  slli         ra, s5, 28
                  addi         zero, s5, -737
                  xor          a5, a0, t1
                  srl          sp, sp, t5
1959:             bltu         s3, t5, 1966f
                  auipc        s8, 43864
                  slli         t0, s7, 7
                  nop
                  lui          ra, 395737
                  bgeu         s6, t1, 1979f
                  slli         a7, s8, 8
1966:             slli         zero, t2, 27
                  srl          s2, t6, t6
                  sub          gp, t5, a1
                  slt          s8, s11, a6
                  srli         s5, s7, 14
                  lui          a7, 14679
                  xor          a5, sp, s7
                  blt          a5, tp, 1977f
                  beq          a3, s2, 1982f
                  sltiu        s8, zero, -1001
                  sltiu        a2, a1, -1211
1977:             auipc        s9, 267761
                  beq          a2, a3, 1982f
1979:             blt          s8, s10, 1984f
                  srai         s9, a6, 3
                  and          sp, s1, gp
1982:             beq          t1, s6, 1993f
                  addi         sp, a3, -1681
1984:             srl          t0, a1, zero
                  bgeu         s9, sp, 2004f
                  or           s5, s7, s9
                  andi         a0, s10, -1765
                  sub          t0, t6, a0
                  slli         t5, s3, 9
                  bgeu         t4, s0, 1999f
                  nop
                  bge          s6, s0, 2007f
1993:             and          a0, s2, sp
                  addi         t1, s0, -1368
                  sub          s6, a1, zero
                  slli         s0, a1, 27
                  sub          a1, s1, s3
                  sll          gp, t1, t6
1999:             sra          s5, a2, s9
                  slti         s6, t3, 1743
                  srli         ra, a4, 13
                  bltu         s1, t0, 2011f
                  addi         t6, t1, -2021
2004:             srli         t6, tp, 5
                  slt          gp, ra, tp
                  beq          s4, s2, 2017f
2007:             add          gp, s8, s6
                  sub          s3, s11, a7
                  lui          zero, 1035064
                  bltu         zero, a7, 2027f
2011:             srai         a1, t3, 24
                  andi         t0, t4, 936
                  or           t0, gp, a5
                  sll          t0, s9, t4
                  sll          a3, s1, t5
                  or           a5, t0, zero
2017:             andi         t2, t2, -1803
                  or           t5, t1, s9
                  add          s7, a6, s4
                  sltiu        a1, sp, 1092
                  nop
                  srli         s1, a0, 24
                  sub          t2, t1, tp
                  beq          zero, s6, 2043f
                  ori          s0, a6, -909
                  addi         s1, a2, 223
2027:             sll          t2, a2, s2
                  bne          a5, sp, 2046f
                  bne          s5, t1, 2032f
                  srl          a0, t2, a0
                  sltiu        tp, a4, -346
2032:             xor          s6, sp, s3
                  xori         a2, a0, -40
                  nop
                  or           a6, ra, s7
                  ori          s5, a5, -1785
                  slti         tp, t3, 1972
                  auipc        t0, 911804
                  srl          s0, a6, s9
                  sll          s5, zero, gp
                  lui          sp, 381753
                  auipc        zero, 701273
2043:             addi         t3, gp, 1057
                  bne          a7, s10, 2062f
                  or           a5, a3, t3
2046:             srl          a6, s5, a7
                  srl          a2, a4, gp
                  sra          sp, gp, t3
                  xor          s0, zero, sp
                  sltiu        t3, s0, 1821
                  sll          a1, s1, t5
                  nop
                  blt          s7, s0, 2070f
                  srl          s0, a7, s9
                  srl          t5, s0, sp
                  blt          t0, s2, 2075f
                  lui          gp, 960175
                  srl          s2, s5, s0
                  bge          a4, s8, 2063f
                  bne          s7, t5, 2062f
                  bgeu         t1, s11, 2064f
2062:             srli         t2, a0, 3
2063:             slt          a6, ra, s5
2064:             srai         ra, a0, 29
                  blt          a2, t4, 2068f
                  addi         s2, s3, 1263
                  xor          a6, a6, s5
2068:             bge          a7, sp, 2079f
                  slti         tp, s9, -690
2070:             lui          s6, 259414
                  or           s10, tp, tp
                  nop
                  sltu         zero, t1, s11
                  srl          s3, ra, s7
2075:             sltiu        a2, a0, -1308
                  bne          s3, gp, 2081f
                  and          a3, t0, s4
                  and          s3, t6, a3
2079:             andi         s1, s11, 727
                  lui          t6, 942789
2081:             slti         s2, a2, -193
                  srl          a6, ra, sp
                  sll          a1, t0, t3
                  xor          s2, ra, a1
                  nop
                  sltu         t6, s9, a2
                  slt          sp, t6, s5
                  sltu         sp, s8, s9
                  xor          s3, sp, s5
                  blt          s9, sp, 2094f
                  lui          a6, 22139
                  andi         s11, s10, -952
                  and          a5, s7, t6
2094:             addi         t3, s4, 519
                  nop
                  sra          a2, s3, t4
                  addi         a6, t5, 1870
                  bltu         a7, a4, 2106f
                  andi         s2, s10, 766
                  bge          s8, sp, 2117f
                  addi         a6, t4, 1190
                  and          a1, ra, t3
                  beq          t3, s7, 2121f
                  srl          gp, t0, s9
                  and          ra, a5, a0
2106:             blt          s7, t0, 2111f
                  xor          s5, ra, t3
                  bge          t0, a5, 2123f
                  ori          t0, sp, 1015
                  bge          t0, t1, 2121f
2111:             addi         gp, a2, 304
                  lui          t3, 744868
                  xor          s0, sp, t6
                  add          t3, sp, s7
                  slti         t2, t6, -412
                  bne          s2, s10, 2135f
2117:             or           sp, s8, tp
                  bgeu         a0, s9, 2122f
                  slti         ra, s6, -1164
                  lui          s5, 562276
2121:             srl          a5, s10, s9
2122:             sltu         a1, tp, zero
2123:             xor          s0, s3, a2
                  sub          a3, t2, t5
                  sra          a7, a7, ra
                  bge          t4, a5, 2133f
                  slli         a7, sp, 10
                  bltu         s3, gp, 2146f
                  xori         tp, s5, 323
                  slli         sp, s9, 6
                  bge          s1, s3, 2140f
                  sra          s11, t1, a2
2133:             xori         zero, s8, -897
                  or           a1, gp, a1
2135:             and          s11, s11, a6
                  xor          t5, gp, zero
                  bgeu         a4, tp, 2148f
                  and          a3, a7, s0
                  bgeu         t0, s1, 2158f
2140:             or           s10, sp, s0
                  nop
                  xori         s5, t4, 1850
                  sltiu        a2, t2, 517
                  nop
                  sltiu        s10, s8, 1435
2146:             sub          a0, s1, ra
                  andi         gp, t3, -967
2148:             slt          s11, a7, a5
                  xor          gp, s1, s0
                  slt          s7, a0, a5
                  lui          s0, 352939
                  bne          s7, s11, 2155f
                  sltu         s3, a4, t4
                  andi         t2, s11, 1719
2155:             or           s11, gp, s8
                  slt          s1, s0, s8
                  auipc        s3, 680823
                  la           gp, sub_1
                  sltiu        s10, s0, 1933
                  slti         a3, a0, 390
                  addi         gp, gp, 107
                  or           sp, t5, a5
                  bltu         ra, t1, main_j2 #branch to jump instr
                  sltu         sp, a7, a0
                  xor          a6, tp, s10
main_j2:          jalr         t1, gp, -107 #jump main -> sub_1
2158:             andi         t0, sp, -979
                  sra          sp, t0, t0
                  ori          s10, s10, -1585
                  beq          s6, s5, 2170f
                  bgeu         s3, t6, 2179f
                  addi         s10, s4, -1859
                  sltu         gp, s4, t4
                  srai         a7, s3, 24
                  xori         s7, t2, 817
                  bge          s0, s5, 2176f
                  sltiu        s2, t1, -1100
                  or           gp, s3, t1
2170:             sltiu        s10, s2, 1761
                  sltu         t6, gp, s8
                  bge          t4, s2, 2183f
                  andi         s1, s3, -1253
                  xor          a3, s6, a6
                  or           s6, a1, s6
2176:             srai         t0, s3, 24
                  sltiu        s1, zero, -1693
                  slti         a5, t3, -1620
2179:             bltu         s9, t4, 2183f
                  srai         t3, s4, 8
                  bgeu         a5, s5, 2189f
                  nop
2183:             srai         a7, s4, 17
                  add          s9, a3, t5
                  sub          s7, s5, s8
                  andi         a0, s8, -813
                  and          gp, s4, s9
                  beq          s8, t6, 2203f
2189:             lui          s10, 873391
                  and          s7, t1, ra
                  beq          t6, s5, 2194f
                  srl          t6, s11, a1
                  slt          a5, s8, ra
2194:             xor          s9, s3, sp
                  sltu         t1, t4, t3
                  nop
                  beq          s8, s7, 2205f
                  or           t1, t6, s0
                  blt          sp, t1, 2204f
                  beq          a1, a5, 2212f
                  bne          s7, s2, 2220f
                  beq          a4, s2, 2205f
2203:             xori         a0, s0, -675
2204:             blt          gp, s11, 2206f
2205:             addi         s10, s1, -1935
2206:             addi         s7, sp, -400
                  sltu         s9, a5, s4
                  or           t5, s1, a2
                  bne          s3, s2, 2211f
                  blt          s8, s9, 2221f
2211:             slt          a3, s0, s4
2212:             sltiu        s2, t4, 130
                  andi         gp, s1, 425
                  or           t2, s5, ra
                  xor          tp, s2, t6
                  bltu         gp, a7, 2228f
                  xori         t1, a1, 1781
                  sltiu        s10, s2, 1302
                  srai         t1, s9, 1
2220:             nop
2221:             xor          t2, s2, a0
                  slli         s3, s7, 29
                  beq          gp, s4, 2226f
                  srai         tp, s8, 31
                  srli         s6, s3, 8
2226:             add          a7, ra, s7
                  sra          s6, s2, t6
2228:             andi         t5, a5, 1360
                  add          ra, s2, t2
                  or           tp, a6, t0
                  add          tp, s0, t0
                  addi         t0, t4, -859
                  srli         s2, zero, 8
                  sll          s9, t3, s9
                  sltiu        t3, t3, 821
                  sub          a3, sp, a4
                  bltu         gp, t1, 2245f
                  bne          ra, s10, 2242f
                  sra          s11, a5, s3
                  andi         a7, t3, 621
                  ori          t6, s5, -1381
2242:             srai         a2, s11, 10
                  sltiu        tp, zero, -1458
                  sltu         s6, zero, s10
2245:             bne          a1, ra, 2262f
                  bne          a1, a7, 2251f
                  ori          s11, a0, -1061
                  xori         ra, s4, -1974
                  sll          a3, a2, s7
                  sll          t5, s7, a2
2251:             srai         t0, t5, 12
                  srai         tp, t4, 21
                  blt          t3, s0, 2257f
                  srli         t6, a4, 14
                  srl          s3, gp, a4
                  nop
2257:             sub          s8, s2, a5
                  sra          a5, a3, s9
                  srai         t2, s4, 10
                  sll          gp, t2, t3
                  add          s1, t4, s7
2262:             and          a3, s4, t4
                  auipc        tp, 108701
                  bne          zero, t0, 2268f
                  slt          gp, t3, s7
                  add          t0, a3, s1
                  ori          a6, s8, 90
2268:             bge          ra, a0, 2285f
                  srai         s0, t3, 24
                  auipc        t3, 803523
                  sll          a6, t1, s0
                  ori          t3, t3, 1831
                  bltu         s9, a1, 2276f
                  add          ra, a3, t3
                  bgeu         t3, t5, 2284f
2276:             bltu         s3, t1, 2294f
                  xor          s2, t0, t6
                  bge          a7, a7, 2285f
                  sltiu        s1, s6, -1708
                  srli         s2, s2, 15
                  xor          zero, s0, s8
                  bge          s10, s11, 2284f
                  sltiu        a0, a7, -1892
2284:             sltiu        s2, gp, -785
2285:             add          s7, s3, t4
                  auipc        tp, 787215
                  bge          a4, s9, 2290f
                  bgeu         a6, s3, 2296f
                  and          t0, sp, a4
2290:             add          s1, gp, s6
                  beq          s9, s8, 2310f
                  sll          a2, s3, t4
                  lui          s7, 722947
2294:             sra          t5, t0, gp
                  sub          tp, zero, s7
2296:             sltu         t0, t3, t2
                  bge          s7, sp, 2308f
                  lui          a7, 521279
                  add          t2, s11, zero
                  blt          sp, a1, 2302f
                  bge          gp, a6, 2319f
2302:             bltu         s4, s6, 2311f
                  lui          zero, 99577
                  auipc        t1, 317578
                  bge          a3, s6, 2310f
                  bne          sp, gp, 2315f
                  sll          s3, s11, a1
2308:             addi         t6, t6, 463
                  or           s11, tp, ra
2310:             add          s11, s10, a2
2311:             srli         s7, s7, 23
                  sltu         t6, t6, a0
                  srli         s3, s7, 14
                  nop
2315:             bge          s2, zero, 2330f
                  nop
                  sll          t3, s0, a0
                  bltu         s11, s1, 2337f
2319:             auipc        ra, 844609
                  sll          s2, a2, a4
                  nop
                  add          a6, a7, t6
                  ori          a5, s11, -1271
                  xor          s2, a2, t3
                  xor          s2, gp, t2
                  blt          s0, a7, 2334f
                  xori         s5, s11, 1477
                  slli         t6, a1, 15
                  add          s2, t0, a7
2330:             slli         t2, s2, 19
                  bltu         t2, s9, 2350f
                  bge          a6, s5, 2347f
                  bne          t5, a5, 2344f
2334:             nop
                  slti         t6, a1, 602
                  srli         t3, s9, 28
2337:             sltu         s1, s11, gp
                  slt          gp, a7, s10
                  slli         t6, t4, 2
                  srai         t5, a2, 19
                  srli         ra, s6, 26
                  lui          s2, 103066
                  sll          a5, a7, s5
2344:             auipc        t5, 978867
                  sll          a7, a3, a5
                  srl          t2, gp, t5
2347:             xori         zero, t2, -2035
                  sll          a7, s7, gp
                  slt          s6, s6, s2
2350:             addi         t0, s5, -931
                  or           t1, a7, s7
                  and          s11, a6, s1
                  or           a6, t4, a1
                  auipc        s6, 146851
                  lui          t0, 285437
                  srai         t1, gp, 22
                  nop
                  nop
                  srl          s9, t4, t5
                  blt          s7, t5, 2369f
                  add          ra, a3, a4
                  slli         gp, s0, 15
                  sll          s7, a6, zero
                  andi         t3, s0, 383
                  beq          a1, s5, 2367f
                  ori          a6, zero, -688
2367:             and          t5, gp, tp
                  auipc        t2, 601712
2369:             srai         s9, t0, 2
                  bne          s1, s0, 2378f
                  bne          s9, zero, 2388f
                  or           s8, t3, sp
                  lui          t6, 886378
                  andi         s0, sp, -961
                  srli         s10, t4, 26
                  slt          t6, s0, t1
                  srai         a6, s6, 17
2378:             xor          s7, t6, a7
                  slti         a3, s0, -551
                  and          s6, s5, s1
                  bge          tp, t0, 2390f
                  srli         t0, a1, 29
                  xori         t0, s5, -265
                  add          a6, tp, s8
                  xori         t1, t5, -1351
                  xori         t1, tp, -1121
                  auipc        a1, 378242
2388:             andi         t0, s5, 553
                  xor          a1, s9, a0
2390:             srai         tp, s4, 17
                  sll          a0, a3, a6
                  sltiu        a3, ra, 8
                  or           t1, s0, s1
                  andi         tp, s2, -1001
                  addi         s0, gp, 245
                  slli         s2, s6, 20
                  addi         s2, a2, 1005
                  slt          t5, s8, a5
                  sra          t0, s7, zero
                  bge          a2, t3, 2407f
                  lui          s5, 973778
                  bne          s5, a6, 2413f
                  sltiu        a1, sp, 514
                  slt          a3, gp, tp
                  sltu         s10, gp, t3
                  slt          a0, a1, s11
2407:             nop
                  ori          s5, ra, -2029
                  addi         tp, s10, 884
                  sltu         t1, s9, s6
                  ori          gp, s11, -1036
                  bne          s0, s8, 2431f
2413:             addi         s5, s4, -87
                  addi         gp, a1, 651
                  sltiu        zero, sp, -1346
                  add          a6, s10, ra
                  slt          t3, s2, a5
                  bge          gp, t2, 2429f
                  bne          a5, s1, 2424f
                  srl          a6, t6, t1
                  slti         a0, t5, 1283
                  nop
                  slt          s7, s10, s4
2424:             sll          a3, s8, s3
                  srai         t3, s8, 21
                  slt          zero, s4, s2
                  sub          s2, s5, s6
                  srai         a6, s6, 18
2429:             addi         s3, s1, 674
                  bltu         t1, s9, 2438f
2431:             xori         s9, s11, 598
                  or           a1, s11, ra
                  nop
                  and          sp, a4, a7
                  beq          a0, a2, 2439f
                  sra          s6, a1, a2
                  bne          a7, s6, 2456f
2438:             nop
2439:             sra          ra, gp, s5
                  addi         s9, t3, 1047
                  and          a2, a6, zero
                  slli         t5, s5, 2
                  addi         s7, s1, 768
                  sll          s7, a1, s10
                  slt          t6, t1, s8
                  lui          s3, 165883
                  xor          s9, s2, a5
                  beq          gp, a5, 2459f
                  la           sp, region_0+1933 #start riscv_load_store_rand_instr_stream_18
                  sll          zero, t3, a0
                  lh           zero, 3(sp)
                  lh           s8, 3(sp)
                  or           a7, t6, s2
                  lhu          s11, 11(sp)
                  lb           s0, -16(sp)
                  sh           tp, 11(sp)
                  lbu          s0, 10(sp)
                  lbu          s8, 0(sp)
                  lhu          a2, -7(sp)
                  sw           s4, 3(sp)
                  lbu          tp, -7(sp)
                  lui          s3, 120870
                  lbu          t5, 8(sp)
                  xor          a0, a0, t1
                  lbu          t6, -16(sp)
                  lbu          a2, 6(sp)
                  xori         t6, a3, 148
                  sb           ra, 2(sp)
                  add          a7, s9, a5
                  sb           a5, 16(sp)
                  nop
                  sll          a1, t0, a6
                  lb           s0, 12(sp)
                  lb           gp, 2(sp)
                  sra          s7, s11, gp
                  lb           s5, -12(sp)
                  lbu          a7, 12(sp)
                  auipc        t3, 755395
                  auipc        gp, 375016
                  srl          t6, a7, a4
                  sll          t0, t1, ra
                  sw           a0, 7(sp)
                  or           gp, a6, t3
                  lui          s6, 204633
                  lbu          s1, -3(sp)
                  sb           t6, 3(sp)
                  lbu          t2, 4(sp)
                  slli         s6, s0, 21
                  lbu          ra, -9(sp)
                  lh           t3, -3(sp)
                  auipc        t1, 284486
                  add          s1, a4, t2
                  sb           a3, -2(sp)
                  lhu          t3, -3(sp)
                  lbu          s1, 2(sp) #end riscv_load_store_rand_instr_stream_18
                  auipc        s10, 16481
                  slli         zero, t2, 2
                  sltu         t3, s8, s6
                  and          s0, s2, t5
                  add          a5, gp, s10
                  sra          s0, t2, a5
                  blt          a4, sp, 2457f
2456:             nop
2457:             sub          s8, a4, s1
                  addi         t3, a6, -535
2459:             sltiu        s11, a3, 1019
                  nop
                  slti         t0, a1, 401
                  sltu         a7, s0, a0
                  ori          a0, s9, -872
                  slli         s2, s11, 29
                  auipc        s7, 120781
                  or           t2, s9, s11
                  bge          a4, a1, 2470f
                  sll          a7, a4, s7
                  auipc        a2, 849412
2470:             beq          s9, t3, 2488f
                  andi         zero, s6, -1508
                  beq          tp, a2, 2481f
                  lui          a0, 454922
                  sub          s6, gp, t5
                  slt          s7, tp, s1
                  sub          s10, t5, zero
                  bltu         s9, s0, 2494f
                  addi         sp, a3, -1740
                  sra          a6, s8, tp
                  nop
2481:             andi         zero, t3, -1618
                  sub          a1, s4, a3
                  blt          t3, t5, 2501f
                  sltu         s7, a4, s8
                  sll          s2, s4, a4
                  bltu         a3, tp, 2498f
                  or           s10, a6, zero
2488:             srai         t6, t4, 11
                  or           s8, s9, s8
                  and          s9, a6, s4
                  and          s5, t4, a5
                  or           zero, s7, t0
                  beq          t2, s7, 2497f
2494:             beq          tp, s4, 2498f
                  addi         t6, s7, 1036
                  sltiu        a3, a4, -1942
2497:             slt          gp, ra, a3
2498:             blt          s9, a2, 2503f
                  slti         ra, s7, 779
                  ori          a2, a7, 497
2501:             slli         a5, s11, 20
                  bltu         t6, a3, 2521f
2503:             bltu         s1, a0, 2511f
                  slt          s3, s10, t4
                  sub          s6, s11, t0
                  slt          s5, s5, s0
                  bge          s0, s6, 2522f
                  ori          t5, t3, -1597
                  srl          t0, a3, ra
                  slt          s8, t2, s4
2511:             and          a1, s10, a3
                  auipc        s6, 507117
                  beq          t1, s8, 2516f
                  srl          t6, a0, t0
                  lui          t1, 741230
2516:             add          s8, zero, t4
                  bne          a2, ra, 2520f
                  bge          t1, t4, 2533f
                  slti         s6, s3, -1739
2520:             bge          a7, a4, 2535f
2521:             srai         s3, sp, 7
2522:             ori          t0, s7, -252
                  lui          t2, 698774
                  slli         s8, t1, 23
                  lui          s0, 622368
                  slti         s11, t5, 442
                  sra          s5, a6, s4
                  or           a3, t4, t2
                  bgeu         a6, s1, 2534f
                  or           s2, tp, a5
                  sltiu        zero, t5, -613
                  srai         a0, a6, 27
2533:             xori         a5, s0, -1469
2534:             addi         s10, t2, -1114
2535:             sra          a6, sp, a7
                  nop
                  beq          a3, s9, 2541f
                  and          s7, a6, s11
                  beq          a3, ra, 2542f
                  nop
2541:             bltu         ra, a6, 2549f
2542:             beq          t4, t5, 2557f
                  bne          a6, gp, 2551f
                  srai         s7, a0, 26
                  slli         a0, t0, 31
                  sll          s3, a1, t1
                  srl          a2, t4, a7
                  bgeu         a0, a5, 2567f
2549:             srli         ra, s1, 4
                  blt          s6, t1, 2557f
2551:             auipc        s8, 954465
                  ori          t2, s2, -1113
                  ori          s6, gp, -1211
                  blt          s1, ra, 2573f
                  slt          a5, ra, tp
                  addi         ra, s8, 1185
2557:             bge          s9, a5, 2575f
                  sub          a6, t5, t3
                  xor          s9, a1, a6
                  slli         a1, zero, 3
                  nop
                  and          s2, zero, s5
                  ori          a7, a2, -1464
                  or           a0, a6, s10
                  andi         s1, t2, 258
                  srai         t2, t5, 16
2567:             slli         s9, s3, 12
                  add          t6, s11, ra
                  blt          t3, a6, 2571f
                  andi         s8, a2, 1308
2571:             addi         t6, t4, -695
                  xori         s11, s11, 1410
2573:             ori          t5, s2, -1470
                  or           t1, s0, tp
2575:             bltu         s6, s5, 2593f
                  sll          s2, a0, s1
                  slli         sp, s9, 19
                  bge          t3, s3, 2581f
                  bge          t0, a3, 2588f
                  bltu         s5, s6, 2591f
2581:             bgeu         t3, s10, 2592f
                  bltu         s10, t3, 2586f
                  xor          a1, a0, s9
                  xor          a0, s7, a5
                  sltu         s1, a1, s9
2586:             and          a5, s6, t4
                  nop
2588:             sltu         s5, s8, t2
                  srli         s9, s2, 25
                  sltu         s5, s1, a0
2591:             sll          t1, s5, s11
2592:             bge          s5, t4, 2596f
2593:             ori          s9, s11, 171
                  sltu         s10, t1, t1
                  bne          s4, a5, 2612f
2596:             bgeu         s9, t5, 2605f
                  xori         s0, t0, 602
                  blt          a6, a2, 2609f
                  sub          a5, s5, s2
                  nop
                  xor          a1, s6, a3
                  sra          sp, a4, s11
                  addi         s2, tp, 1932
                  beq          ra, s10, 2607f
2605:             sll          s9, t0, s10
                  ori          zero, t5, -1759
2607:             srli         a0, s0, 3
                  nop
2609:             or           ra, tp, s11
                  blt          a0, gp, 2615f
                  ori          s8, s0, -942
2612:             sltu         s1, s5, s5
                  or           a2, a1, t3
                  sub          ra, a0, gp
2615:             auipc        a0, 677514
                  ori          sp, t2, 452
                  sll          s11, a7, s5
                  srai         s5, t0, 22
                  slt          s6, sp, a5
                  slli         s6, s6, 27
                  slti         t6, a0, 1002
                  sll          sp, t0, s10
                  auipc        a5, 593661
                  srli         a1, s1, 21
                  srli         a3, t4, 27
                  bltu         a2, a0, 2643f
                  sub          s10, s9, t5
                  slti         t1, a0, 1204
                  xori         sp, gp, -245
                  srai         ra, a6, 28
                  slti         t5, t0, -412
                  add          zero, t1, zero
                  srli         s11, t2, 17
                  beq          s10, s2, 2643f
                  andi         t3, s1, 592
                  xor          s0, t1, t6
                  xor          tp, s4, zero
                  andi         a6, a7, 676
                  add          a5, zero, s8
                  sltu         s10, s4, t6
                  xor          a7, a1, t2
                  blt          a4, a3, 2661f
2643:             sub          a1, a3, s6
                  ori          t3, t3, -153
                  bge          a0, sp, 2653f
                  or           tp, t4, s11
                  sub          s1, a0, a2
                  sra          t6, t5, s2
                  srai         t5, a0, 7
                  bne          t3, sp, 2662f
                  sub          t5, t1, t2
                  add          a7, t6, a1
2653:             sll          a1, ra, a3
                  bge          s4, a4, 2656f
                  sltu         t1, a1, a6
2656:             bne          zero, a6, 2675f
                  sltiu        s2, s6, 495
                  bne          s9, a3, 2677f
                  blt          a7, s5, 2661f
                  sltiu        s5, t6, -740
2661:             bltu         s8, t2, 2665f
2662:             bne          a5, zero, 2673f
                  auipc        t2, 795037
                  lui          zero, 111716
2665:             bgeu         a7, tp, 2670f
                  bltu         tp, zero, 2674f
                  nop
                  bne          s4, t5, 2683f
                  xor          s8, a0, t2
2670:             auipc        a7, 557680
                  srl          s11, tp, s4
                  bltu         a7, t2, 2676f
2673:             slt          a3, a2, ra
2674:             blt          a6, a6, 2678f
2675:             sltiu        t3, s2, 1613
2676:             slt          s2, tp, t4
2677:             addi         sp, a7, 1611
2678:             bge          a6, a0, 2681f
                  xor          a7, s5, s2
                  srai         t3, t4, 31
2681:             lui          a0, 162131
                  srai         s11, a7, 22
2683:             xori         a7, gp, 702
                  ori          t0, s1, -1501
                  beq          a4, s1, 2702f
                  xor          s9, s0, s11
                  addi         tp, a6, -60
                  slt          s5, a1, t6
                  ori          a0, sp, -1105
                  xor          tp, s5, s4
                  sltu         s5, s6, zero
                  sub          a3, s7, sp
                  sub          sp, a2, s11
                  slli         s10, s3, 28
                  sub          s10, a0, t0
                  slti         ra, zero, 417
                  bltu         s3, s8, 2704f
                  slli         t2, gp, 18
                  lui          s3, 925201
                  addi         t6, s6, -1211
                  blt          a5, sp, 2712f
2702:             bltu         t2, s6, 2717f
                  auipc        s11, 762303
2704:             sltiu        t3, zero, -911
                  srl          a2, a6, a3
                  bne          t2, s6, 2723f
                  and          a3, s6, a0
                  auipc        a5, 907304
                  andi         s3, s2, 1803
                  bne          s2, t2, 2713f
                  andi         zero, s4, -1229
2712:             lui          s9, 889873
2713:             add          t0, t0, s0
                  ori          a6, s2, -1401
                  bne          t2, s5, 2723f
                  bne          s10, t1, 2725f
2717:             srai         a5, a1, 10
                  addi         t6, t0, 179
                  srli         t2, tp, 22
                  auipc        t1, 907906
                  or           s2, a6, zero
                  beq          t5, s1, 2725f
2723:             nop
                  xor          a6, a0, a6
2725:             slt          s10, a3, s1
                  xor          s5, a4, a3
                  srl          s2, t1, a3
                  beq          zero, s9, 2737f
                  ori          t1, s4, -1419
                  andi         sp, a7, 591
                  bne          sp, t6, 2749f
                  xori         gp, tp, 1829
                  addi         t6, a6, -1800
                  and          s5, s10, a6
                  sra          ra, t0, t5
                  sra          a6, sp, a2
2737:             srl          a3, s7, ra
                  sub          s2, s0, a3
                  sll          t0, a2, s1
                  xori         s2, s3, 1614
                  sll          sp, s3, s2
                  bltu         a7, t5, 2761f
                  sra          s6, s1, t2
                  bge          a0, s10, 2756f
                  xor          s8, t5, s3
                  sltiu        tp, t6, -914
                  lui          t2, 401494
                  add          s11, tp, t6
2749:             add          s1, gp, t5
                  bne          t0, a3, 2761f
                  bne          ra, s3, 2769f
                  bge          a7, s4, 2761f
                  srai         s2, a6, 25
                  srl          a2, a2, t4
                  sltiu        s11, s7, 35
2756:             or           a7, s0, ra
                  addi         s9, a3, -1110
                  auipc        s7, 678260
                  xori         s5, a5, 1982
                  and          a0, a4, a2
2761:             xori         t3, sp, 1921
                  sltiu        t6, a0, 1669
                  sra          t1, s10, gp
                  add          s9, s6, t3
                  xori         t0, s6, -230
                  sll          t6, tp, a3
                  addi         s9, a2, 153
                  blt          t3, a3, 2776f
2769:             lui          a6, 85962
                  blt          s10, ra, 2775f
                  sll          s10, a6, s0
                  srli         s11, a7, 19
                  xori         a2, s6, -345
                  xori         s9, a6, -1765
2775:             slli         sp, sp, 27
2776:             add          s10, t0, s9
                  sra          s5, t4, a2
                  blt          a0, ra, 2780f
                  ori          s7, s10, -954
2780:             auipc        t0, 28229
                  ori          a7, a7, -1171
                  slti         t1, s8, -1199
                  bne          a3, a1, 2786f
                  lui          s2, 1040669
                  ori          a2, s9, 578
2786:             sll          a1, a0, s0
                  sra          a2, s3, t1
                  or           s1, ra, ra
                  addi         a3, a0, -1467
                  andi         s9, s3, 108
                  beq          a5, ra, 2808f
                  bge          s11, sp, 2803f
                  bltu         t0, s5, 2795f
                  andi         gp, a5, -1253
2795:             slli         s1, t4, 12
                  sub          t5, s9, t4
                  nop
                  sra          s0, tp, s9
                  and          tp, s11, zero
                  slli         tp, a3, 9
                  slt          sp, s4, t6
                  slti         s9, s2, 173
2803:             addi         s8, s0, -261
                  and          s0, s3, s5
                  nop
                  srai         t6, t4, 23
                  add          s11, t1, a7
2808:             blt          s7, sp, 2823f
                  bltu         a0, a0, 2824f
                  srli         s6, zero, 26
                  bgeu         a4, tp, 2830f
                  bne          a4, a4, 2823f
                  bne          s10, sp, 2817f
                  bgeu         t2, s2, 2823f
                  srl          s1, s11, a4
                  sra          a3, t6, s9
2817:             nop
                  srl          s5, tp, s6
                  andi         a6, s1, 419
                  slti         a6, s2, 1174
                  slt          s6, a4, s0
                  xori         a7, zero, 130
2823:             srli         t6, ra, 15
2824:             bge          t6, s4, 2832f
                  bge          sp, s4, 2833f
                  beq          zero, a2, 2844f
                  bge          ra, a7, 2830f
                  xor          a0, t4, a5
                  slt          tp, t5, ra
2830:             beq          a4, a4, 2848f
                  slli         a7, s5, 18
2832:             and          a5, t3, a5
2833:             slli         a1, s5, 27
                  ori          a1, a3, 2016
                  sra          gp, t6, tp
                  andi         s0, s3, 1779
                  bne          s5, a0, 2842f
                  sll          a2, tp, a5
                  ori          s5, a5, -1930
                  addi         a7, t2, 172
                  blt          s0, a6, 2858f
2842:             sub          s7, s8, s10
                  andi         t5, s5, 497
2844:             xor          t3, s6, s5
                  xor          s7, s4, t6
                  and          t0, a5, s9
                  or           s9, tp, sp
2848:             bgeu         a6, t6, 2850f
                  ori          s6, s7, 647
2850:             sltu         s2, a4, s7
                  srl          s8, s6, a1
                  add          a3, a5, a6
                  sll          s7, t0, t4
                  addi         t6, a6, -1759
                  ori          s3, a4, -1325
                  srli         a5, t2, 1
                  sltiu        a7, t3, -587
2858:             slti         tp, gp, 1857
                  bgeu         s7, s4, 2863f
                  srai         a3, a2, 3
                  xor          t6, s4, a0
                  bge          s1, ra, 2869f
2863:             sll          tp, s5, t3
                  blt          t0, a3, 2867f
                  sltiu        ra, a2, -1056
                  bne          ra, s3, 2874f
2867:             bgeu         s3, t5, 2872f
                  blt          a5, t0, 2887f
2869:             and          s2, a6, s3
                  sll          t5, s10, s0
                  add          t2, a1, s11
2872:             srli         s1, a0, 7
                  nop
2874:             sra          s1, a2, t1
                  slt          a7, sp, zero
                  sub          s0, a4, t1
                  bne          a5, a5, 2886f
                  auipc        s8, 1047162
                  blt          s2, s3, 2888f
                  srl          a6, s0, s5
                  addi         t2, a3, 506
                  slt          s10, a6, s4
                  nop
                  lui          t3, 594550
                  bltu         s4, a1, 2896f
2886:             bne          s1, a4, 2905f
2887:             slli         t6, s11, 1
2888:             sltiu        s9, zero, 241
                  slti         s7, s2, -80
                  slli         s11, s3, 15
                  blt          t3, gp, 2903f
                  slli         a7, s9, 19
                  sll          a0, s2, s1
                  srli         s2, a4, 24
                  addi         a6, zero, -299
2896:             xori         ra, s6, -1820
                  blt          s1, a1, 2901f
                  addi         ra, a7, -1515
                  bgeu         s3, t3, 2916f
                  add          t6, t1, s4
2901:             addi         s0, s10, -286
                  sra          s9, a3, a2
2903:             xor          a1, t1, s0
                  bltu         t5, a6, 2908f
2905:             ori          s0, s3, 1593
                  slt          s0, s0, t5
                  sltiu        a5, s8, 720
2908:             or           t0, t6, s5
                  lui          t2, 431769
                  blt          s5, a0, 2919f
                  slt          s8, s6, gp
                  bne          a6, zero, 2927f
                  andi         t3, a4, -347
                  slli         ra, a5, 16
                  add          sp, a6, gp
2916:             sll          s3, t3, s7
                  ori          sp, s9, -1853
                  sub          a0, s2, t6
2919:             bne          zero, t0, 2936f
                  blt          a7, a7, 2931f
                  nop
                  sra          t3, s11, tp
                  beq          zero, t6, 2927f
                  xori         s1, a1, 1039
                  addi         tp, a3, -10
                  lui          s0, 413657
2927:             xor          a2, a6, ra
                  slt          t5, t6, a2
                  sra          t0, s11, a4
                  auipc        t0, 632985
2931:             addi         a1, sp, -1974
                  bne          a7, s4, 2943f
                  and          t5, s4, tp
                  slti         a7, gp, 1496
                  srai         tp, s8, 27
2936:             nop
                  slti         s1, s7, -144
                  bge          s10, a6, 2950f
                  ori          a1, gp, 1778
                  lui          s0, 43944
                  beq          s6, s0, 2960f
                  andi         t0, s3, 890
2943:             andi         s8, t5, 785
                  bgeu         s7, s7, 2962f
                  andi         t5, a3, -2044
                  andi         t0, s7, -1641
                  slti         s7, a6, 1111
                  sll          t5, s1, s3
                  lui          t6, 318420
2950:             xori         t6, zero, 1259
                  bge          zero, t5, 2955f
                  and          s1, t2, gp
                  ori          t2, s6, -1595
                  or           t0, a5, gp
2955:             nop
                  sll          a6, ra, s7
                  srli         t1, tp, 22
                  add          s10, t5, s10
                  add          s7, s9, a7
2960:             bne          t0, a5, 2967f
                  slt          t1, a5, s9
2962:             slli         t5, s3, 24
                  ori          s0, s8, 693
                  srai         a1, a6, 10
                  sll          s11, s4, s7
                  lui          a3, 303200
2967:             or           s8, a3, a6
                  blt          a2, a6, 2977f
                  bne          t2, t1, 2978f
                  addi         a3, sp, -124
                  and          s0, gp, s9
                  andi         s8, zero, -423
                  nop
                  xor          a2, s2, s4
                  xori         t6, a2, 1574
                  and          a5, s6, a4
2977:             slt          zero, zero, s4
2978:             auipc        a5, 504789
                  sltu         ra, sp, ra
                  bge          t4, s10, 2985f
                  auipc        t2, 51705
                  sub          s8, t3, s5
                  srai         s8, s9, 22
                  sltu         s6, zero, a5
2985:             slti         s7, tp, 587
                  ori          t6, s3, -506
                  and          t5, gp, a0
                  andi         s2, a6, -459
                  slli         a0, s10, 7
                  auipc        s3, 114893
                  sltu         s3, s0, s2
                  sltiu        a5, s6, 1111
                  ori          a3, s6, -1661
                  or           s9, zero, t6
                  addi         gp, a6, 361
                  nop
                  lui          t1, 140747
                  slli         t1, s1, 11
                  srl          zero, s3, ra
                  srl          t1, ra, s4
                  addi         a7, t2, 1810
                  srl          s6, a7, s9
                  bgeu         s11, s8, 3008f
                  or           s1, a4, s11
                  srl          s10, ra, tp
                  sll          s8, s5, a2
                  addi         gp, a5, -1357
3008:             sltu         a5, t6, a6
                  bge          t4, t1, 3017f
                  sltiu        sp, a7, -1571
                  or           s6, s0, a3
                  srl          t1, s4, s6
                  slli         s2, s9, 22
                  bgeu         s3, t0, 3017f
                  sltu         ra, t3, s3
                  bge          zero, s8, 3031f
3017:             bltu         t1, a4, 3036f
                  or           gp, tp, a2
                  blt          ra, a6, 3022f
                  or           s11, zero, t4
                  and          s3, t3, s7
3022:             xori         s2, a0, 856
                  slt          s2, s0, t1
                  blt          s8, a3, 3027f
                  bgeu         t4, s5, 3044f
                  bltu         s11, zero, 3037f
3027:             slli         t0, a2, 10
                  bge          s2, s0, 3036f
                  xor          s5, s1, s8
                  ori          gp, t1, -2035
3031:             srai         gp, t2, 4
                  srli         s1, gp, 3
                  xor          t5, t0, tp
                  beq          s10, a4, 3042f
                  xori         ra, s10, 1029
3036:             and          a1, sp, s0
3037:             bne          gp, s7, 3039f
                  sub          t2, s6, s5
3039:             nop
                  srai         t0, tp, 18
                  srai         a6, s6, 1
3042:             slt          zero, s1, s6
                  ori          a1, a3, 617
3044:             nop
                  bltu         s6, a6, 3047f
                  andi         s1, t2, -16
3047:             add          t6, s1, zero
                  and          s5, t3, s10
                  slt          ra, a1, a1
                  sltiu        s8, a5, 2024
                  and          a2, t1, s1
                  sub          gp, s1, t2
                  srai         s10, a0, 25
                  addi         s2, sp, 670
                  sub          sp, zero, s10
                  nop
                  sltu         t5, s10, a1
                  auipc        t0, 42150
                  sra          a1, tp, a2
                  beq          s8, s7, 3078f
                  sltiu        s9, zero, 1042
                  add          a7, a4, s8
                  srai         s2, s6, 8
                  srl          zero, s5, s5
                  ori          t6, a5, -782
                  slti         zero, s5, -165
                  srl          t6, a3, s10
                  andi         t0, t2, -614
                  ori          s2, s6, -736
                  sltiu        a6, t3, -1967
                  and          s1, t5, s5
                  sra          s2, a0, s5
                  slt          a1, t6, a4
                  sltu         s0, a1, a4
                  ori          a5, s11, 196
                  sll          t3, s8, t2
                  srl          a0, t5, t6
3078:             nop
                  bge          zero, zero, 3088f
                  nop
                  slli         a5, t1, 30
                  andi         s8, t0, -176
                  lui          a7, 847667
                  slli         a7, a3, 7
                  bgeu         zero, a6, 3093f
                  slti         s5, a4, -1508
                  and          s9, s4, s5
3088:             addi         a7, s1, 973
                  sra          s5, s0, s2
                  srl          t1, a1, zero
                  srli         a6, t0, 3
                  sra          t3, s6, tp
3093:             add          tp, a5, t6
                  sltiu        a1, s4, -1001
                  add          ra, a7, t0
                  lui          a2, 724552
                  sll          s9, ra, s11
                  xori         t0, sp, 1081
                  sltiu        ra, a3, 1739
                  bge          gp, s9, 3103f
                  auipc        t6, 202307
                  lui          gp, 100233
3103:             sub          tp, t0, t4
                  andi         gp, a2, 88
                  sub          t2, a7, s8
                  bgeu         s6, s5, 3125f
                  and          s2, s4, s1
                  sltiu        zero, s1, -2029
                  or           a2, t6, s5
                  and          s1, t2, a4
                  lui          s11, 369219
                  blt          s10, a7, 3117f
                  sll          a7, a0, s1
                  sub          t3, s9, s0
                  sll          a0, s3, a4
                  ori          t3, a2, 560
3117:             or           s2, s8, s8
                  sltiu        t6, s5, 412
                  srl          a1, a7, s8
                  bge          tp, t6, 3128f
                  blt          t6, ra, 3126f
                  slt          zero, s8, s3
                  or           s5, a6, a6
                  bltu         a2, gp, 3141f
3125:             bltu         s11, zero, 3140f
3126:             ori          t5, s3, -639
                  xori         tp, a4, 1841
3128:             addi         a2, s7, 1294
                  ori          gp, t3, -773
                  srai         t6, t2, 18
                  bne          s1, t4, 3142f
                  and          a6, t2, s9
                  and          s7, a7, tp
                  srai         tp, s2, 30
                  slt          s6, a0, t0
                  sltu         ra, zero, s3
                  and          s9, s4, a7
                  nop
                  sub          s3, t3, s1
3140:             sltu         gp, t1, a4
3141:             sub          tp, s6, a4
3142:             xor          t5, tp, sp
                  blt          a5, s10, 3145f
                  bge          s11, s3, 3155f
3145:             sub          s6, a4, t3
                  srl          t3, s9, s11
                  slli         zero, t6, 4
                  xori         t5, a3, -1735
                  srl          a1, s8, s8
                  sra          s3, a7, s2
                  sub          a6, a0, s9
                  and          t5, s2, s4
                  bne          s11, s10, 3161f
                  xori         s1, s4, 7
3155:             auipc        a1, 948822
                  xori         t3, a7, 739
                  slti         t5, s9, 1192
                  auipc        s9, 865393
                  sub          t6, t4, s6
                  addi         a3, a4, -1599
3161:             sra          s3, s4, t5
                  beq          a3, tp, 3180f
                  or           tp, a0, ra
                  ori          t3, s6, 164
                  srli         s9, a1, 11
                  bgeu         s11, s3, 3168f
                  beq          t1, tp, 3182f
3168:             srai         ra, s2, 11
                  lui          sp, 530516
                  auipc        sp, 250548
                  sltiu        a1, a0, -420
                  xor          gp, a3, a6
                  add          t1, zero, s2
                  sra          tp, a6, s8
                  bgeu         a7, s4, 3192f
                  bge          gp, t6, 3185f
                  sra          s10, s3, s11
                  nop
                  nop
3180:             addi         t6, s11, 692
                  or           a3, s7, s5
3182:             xori         sp, s6, 1959
                  beq          a0, s11, 3186f
                  srai         sp, t4, 27
3185:             and          s5, a0, a2
3186:             sltiu        a3, a0, 1325
                  srai         s9, a3, 7
                  bltu         a1, t2, 3200f
                  or           tp, tp, ra
                  bne          a2, a3, 3194f
                  blt          s8, sp, 3210f
3192:             bgeu         s5, a7, 3201f
                  or           t0, t4, s5
3194:             slli         zero, ra, 29
                  or           a2, t3, a2
                  blt          s5, t6, 3215f
                  nop
                  sra          a0, t1, t3
                  bne          a2, s1, 3206f
3200:             srli         tp, a3, 26
3201:             slt          s9, s10, t5
                  bne          s1, a5, 3206f
                  srli         a5, s9, 4
                  and          s2, s10, s1
                  bltu         a7, s10, 3209f
3206:             xor          s1, a3, a5
                  sub          s11, zero, t0
                  srai         s2, s7, 1
3209:             and          s8, s0, t4
3210:             ori          t6, t6, 1153
                  bge          a2, s2, 3214f
                  and          s0, t0, s6
                  slt          s5, a0, a3
3214:             and          s8, s7, s9
3215:             xori         t6, s11, -1750
                  srl          s5, a1, t4
                  andi         t3, t6, 687
                  bltu         t4, ra, 3229f
                  bne          s3, a3, 3237f
                  bgeu         s8, zero, 3238f
                  sltu         a3, s10, t3
                  add          t1, a2, s5
                  add          s2, ra, a0
                  beq          t2, s10, 3232f
                  nop
                  and          s10, a0, s10
                  srai         sp, a6, 27
                  blt          a6, t2, 3233f
3229:             andi         zero, t1, -520
                  sub          a1, a6, zero
                  add          s5, s7, s1
3232:             lui          a5, 556225
3233:             slli         a0, t1, 2
                  sub          t2, s0, s5
                  srli         s7, a0, 5
                  add          s8, s10, a1
3237:             beq          a0, zero, 3256f
3238:             beq          s1, s11, 3257f
                  srai         gp, s5, 1
                  blt          t5, t6, 3248f
                  ori          a7, t1, 202
                  add          a5, s11, a3
                  slti         a7, a1, -731
                  srli         zero, t6, 22
                  slli         a2, tp, 22
                  sltiu        s5, s3, 241
                  srli         s3, s0, 1
3248:             slti         t2, t3, -307
                  xor          a0, a6, s5
                  ori          s10, sp, 1944
                  beq          a0, s4, 3255f
                  sub          s6, s0, a0
                  nop
                  lui          a0, 920874
3255:             sub          t6, tp, a1
3256:             sltu         t3, a3, a1
3257:             slt          s11, t1, s11
                  bne          a5, sp, 3273f
                  slt          t2, t5, gp
                  and          gp, t1, tp
                  sra          s1, s1, t6
                  slt          s0, s11, zero
                  sra          s6, t1, a2
                  la           sp, region_1+709 #start riscv_load_store_rand_instr_stream_1
                  lh           a1, -7(sp)
                  add          s1, t6, s4
                  lbu          tp, 6(sp)
                  xor          t2, t5, t6
                  slt          t6, zero, s1
                  sh           t0, 15(sp)
                  slti         t3, a5, 123
                  sltiu        s11, t4, 701
                  sll          a7, t4, t4
                  lb           t6, -12(sp)
                  nop
                  xori         gp, s0, -1418
                  srl          a7, a4, sp
                  sh           s11, -3(sp)
                  or           ra, s9, gp
                  lui          t2, 337497
                  andi         s0, s5, -1983
                  slli         s11, s9, 22
                  sltu         t3, a0, a7
                  and          s7, s0, a3
                  sub          s8, t3, s2
                  add          s7, gp, s8
                  lb           a0, 12(sp)
                  lbu          t2, 8(sp)
                  sltu         tp, tp, t1
                  sb           a0, 4(sp)
                  auipc        s5, 822219
                  lbu          tp, -11(sp)
                  sb           s8, 6(sp)
                  lhu          t6, 15(sp)
                  add          a6, t2, a3
                  lh           s8, 1(sp)
                  srai         t6, s4, 14
                  xori         s8, ra, -780
                  sb           t2, -12(sp)
                  lui          a3, 6546
                  lb           t1, -8(sp)
                  xor          s9, s11, s0
                  sll          a0, gp, s10
                  sltu         s7, a6, s9
                  slt          a7, t6, a2
                  lb           t2, 9(sp)
                  sb           s3, 5(sp)
                  andi         t6, s0, 235
                  lh           s6, -5(sp) #end riscv_load_store_rand_instr_stream_1
                  slt          ra, zero, a1
                  bge          s2, t3, 3268f
                  slli         sp, a0, 10
                  xori         s3, t2, -1304
3268:             srl          t5, s9, s7
                  bgeu         t2, s7, 3274f
                  bge          s10, s4, 3272f
                  nop
3272:             slt          ra, a1, t2
3273:             xori         s11, s2, -480
3274:             bltu         a6, s4, 3285f
                  blt          s10, s5, 3287f
                  add          gp, a6, t5
                  sra          s5, s7, s8
                  ori          s8, s5, -60
                  and          t6, t6, sp
                  blt          t3, s3, 3282f
                  bltu         t1, s11, 3285f
3282:             ori          s0, ra, 1811
                  ori          a0, s10, 1668
                  bge          t4, s9, 3301f
3285:             bne          s6, s6, 3289f
                  or           s8, s11, t4
3287:             sub          s2, s5, a6
                  add          s10, s1, s5
3289:             srl          s3, a5, a7
                  slli         s2, a6, 8
                  andi         s0, a2, -1637
                  xori         s10, t1, -895
                  bge          s10, a5, 3296f
                  slti         a1, s8, 711
                  ori          s9, t3, -850
3296:             sub          a2, gp, a2
                  slti         a5, t0, -796
                  xori         t1, a3, -1510
                  slti         a5, a1, -594
                  sra          a2, s2, t6
3301:             srai         a1, t2, 24
                  srli         sp, t6, 30
                  or           s9, t6, s0
                  or           t0, s4, t0
                  beq          s2, s9, 3314f
                  add          t1, a7, t2
                  nop
                  bgeu         s7, t2, 3327f
                  bltu         tp, s11, 3320f
                  sltiu        s3, ra, 1003
                  bgeu         s5, s11, 3328f
                  slti         t6, gp, 38
                  sra          a7, s9, a6
3314:             sltu         tp, a0, t5
                  sra          ra, ra, zero
                  bge          a1, s2, 3325f
                  srli         s11, a2, 23
                  xori         t6, s11, -1487
                  sub          gp, a3, s4
3320:             or           t5, a3, s3
                  nop
                  xori         s0, a5, -1567
                  sltiu        s10, t6, 1017
                  bge          t2, s3, 3342f
3325:             addi         a1, a1, -399
                  sub          s0, a6, s3
3327:             xor          t6, a6, s3
3328:             andi         s1, s10, 1107
                  addi         gp, a4, -679
                  srai         sp, a7, 15
                  or           tp, t2, s1
                  beq          a1, s10, 3347f
                  bltu         s4, t6, 3340f
                  andi         s8, t6, 1030
                  sub          t1, t3, s10
                  ori          t3, a7, -686
                  auipc        s1, 803603
                  srl          s11, s0, a0
                  srl          s11, zero, t3
3340:             sll          ra, t6, s0
                  lui          s9, 587938
3342:             auipc        s0, 580570
                  slt          ra, s9, ra
                  sltu         a7, ra, a3
                  and          a1, a2, sp
                  lui          t3, 286389
3347:             xor          t3, tp, s4
                  xori         sp, a3, -1027
                  lui          t0, 515015
                  xori         sp, t6, 1693
                  add          s11, t3, s10
                  sltu         s10, s8, a2
                  sra          s2, s5, t6
                  bge          a7, s4, 3365f
                  sub          s7, ra, t0
                  ori          s1, a6, -1558
                  sltiu        s1, t5, -273
                  ori          s0, sp, 1203
                  ori          t3, a1, -1330
                  srai         s0, sp, 6
                  xori         a1, sp, 377
                  slt          tp, s4, s11
                  srl          a2, s3, s8
                  slti         a7, s5, -1027
3365:             add          s9, t1, s1
                  srai         s0, a1, 10
                  beq          t0, ra, 3375f
                  xor          s6, t2, sp
                  srl          s10, s4, t4
                  slti         t1, a1, 507
                  blt          a6, s4, 3374f
                  bne          t6, a0, 3381f
                  slt          a0, sp, s2
3374:             bgeu         tp, t2, 3393f
3375:             or           s9, a7, t3
                  srai         s7, a5, 14
                  bne          t5, ra, 3385f
                  srai         a1, gp, 9
                  bne          t3, s8, 3386f
                  bgeu         a3, s8, 3389f
3381:             lui          s9, 520095
                  srl          s9, t4, s1
                  xor          s5, a1, t3
                  xor          gp, t6, s2
3385:             sll          a0, s11, t4
3386:             srli         s1, t1, 13
                  xori         s2, gp, 1668
                  xori         tp, a6, 1101
3389:             nop
                  srl          a1, t5, s9
                  slt          s6, a3, s1
                  or           t2, t3, t4
3393:             beq          s1, t3, 3411f
                  and          s1, t0, s5
                  auipc        s11, 801316
                  nop
                  sub          s2, a0, t5
                  blt          a3, a0, 3407f
                  srl          a5, a4, s4
                  xori         s5, ra, 804
                  lui          t6, 825191
                  xor          a1, s2, gp
                  slt          t3, a2, s4
                  xor          a7, tp, s3
                  bgeu         s1, a3, 3416f
                  srai         a2, s0, 28
3407:             xor          a6, gp, a6
                  lui          a2, 726814
                  slt          t6, t6, s6
                  srl          a2, s3, t5
3411:             slti         a1, a1, 224
                  sll          a0, t0, s1
                  slti         gp, s7, 2031
                  blt          a2, a4, 3416f
                  bge          t0, s5, 3417f
3416:             or           gp, s0, a5
3417:             sra          s8, s4, t5
                  lui          a1, 436787
                  xori         s6, t0, -1967
                  sub          s7, tp, s10
                  auipc        a0, 565772
                  sub          a0, s6, a0
                  auipc        s11, 728829
                  nop
                  sra          s8, s3, t5
                  sub          ra, t3, sp
                  addi         s9, s10, 1787
                  and          s6, t0, s1
                  andi         s10, s4, -1746
                  add          a0, s10, t0
                  xor          tp, t4, t5
                  ori          s11, t0, -1561
                  or           s5, t0, t3
                  blt          a6, zero, 3453f
                  or           s7, s0, t4
                  sra          s8, t1, t3
                  ori          t2, a3, -642
                  srli         t3, s2, 17
                  sra          s6, t0, t3
                  sltu         a2, s8, s9
                  xor          a7, s8, s5
                  sll          sp, s6, sp
                  and          a7, a3, a2
                  bgeu         t0, s9, 3459f
                  bne          sp, s7, 3453f
                  andi         s11, a4, -234
                  slti         a1, s6, -752
                  lui          t5, 364639
                  andi         a6, ra, -1215
                  bltu         t3, t3, 3453f
                  bgeu         t4, s6, 3454f
                  nop
3453:             sltu         s1, t4, s10
3454:             bltu         t6, t4, 3458f
                  beq          s7, gp, 3474f
                  slli         s1, sp, 28
                  srai         s6, s1, 31
3458:             bne          t0, s10, 3463f
3459:             sll          a7, a2, a5
                  bne          s2, s8, 3471f
                  lui          s0, 84571
                  addi         gp, s9, -1988
3463:             slt          s10, s1, t2
                  sra          s9, a2, s5
                  bne          t0, a5, 3468f
                  xori         t2, a6, 510
                  bltu         a5, s10, 3472f
3468:             lui          sp, 995572
                  sll          a3, a1, a4
                  add          s6, a4, a1
3471:             xori         a2, a7, -481
3472:             sra          a3, ra, s11
                  slli         a5, a5, 14
3474:             ori          t3, a3, 208
                  beq          a2, s10, 3483f
                  ori          a1, a1, 1238
                  add          t6, s8, a7
                  blt          s10, t0, 3496f
                  lui          s7, 292892
                  slt          t3, a4, a1
                  srl          s7, a5, t3
                  beq          s11, a4, 3497f
3483:             srli         a5, a0, 0
                  bltu         s8, s2, 3488f
                  bltu         s10, s4, 3502f
                  blt          s10, gp, 3490f
                  sll          s11, tp, a2
3488:             srai         s6, t5, 13
                  lui          s7, 1016085
3490:             slt          s10, t2, s5
                  bne          a5, ra, 3503f
                  sub          t0, zero, s0
                  nop
                  nop
                  xori         s7, zero, 1983
3496:             add          t5, s4, s3
3497:             slt          zero, sp, a4
                  ori          s11, a1, -1708
                  ori          t1, s9, -1934
                  bgeu         s10, zero, 3511f
                  or           a3, s6, s11
3502:             slt          t6, s4, a1
3503:             add          s1, s8, a0
                  lui          a1, 964692
                  sltu         tp, a6, s4
                  blt          sp, tp, 3523f
                  nop
                  srai         t5, a6, 21
                  bltu         gp, s11, 3518f
                  sltu         s9, t2, s9
3511:             slli         s8, t0, 28
                  addi         t2, s8, 1196
                  nop
                  auipc        gp, 1029557
                  auipc        s0, 190897
                  slt          s3, a3, a5
                  bgeu         s5, s5, 3525f
3518:             bgeu         a7, s9, 3527f
                  sltiu        s8, s10, -1696
                  blt          a5, t3, 3537f
                  and          t1, s2, a5
                  sltu         a3, s7, a5
3523:             sll          a0, sp, sp
                  add          s8, a2, a7
3525:             slti         a0, t5, -1366
                  or           gp, a1, a1
3527:             srl          s2, sp, a5
                  bge          t1, a5, 3536f
                  andi         t3, s8, 1467
                  srai         ra, s5, 13
                  sltu         s7, s8, gp
                  bltu         s9, gp, 3551f
                  xor          s1, s1, s6
                  slli         s6, a1, 13
                  sltiu        s10, s2, -1243
3536:             slt          t3, s3, ra
3537:             and          zero, s9, s4
                  bgeu         t2, a3, 3541f
                  sra          s0, s0, s5
                  sltu         t1, s8, t2
3541:             nop
                  xor          s10, s8, s11
                  sltiu        a0, s7, -804
                  or           s0, t2, s0
                  xori         a6, t2, -1818
                  sra          zero, t3, tp
                  slt          s8, t5, a5
                  bltu         s9, a4, 3559f
                  xor          sp, ra, s5
                  slli         t0, s8, 15
3551:             bge          tp, s8, 3554f
                  bne          t4, s9, 3559f
                  auipc        s2, 64611
3554:             or           s2, s3, s4
                  or           t2, s8, t6
                  sub          gp, s6, t4
                  srli         sp, t0, 13
                  srli         s5, a3, 16
3559:             sltiu        s5, tp, -228
                  sltiu        s0, a0, -982
                  slti         s1, s7, 137
                  blt          s9, a0, 3565f
                  sub          a6, s6, s1
                  srl          ra, s6, s9
3565:             sub          s3, ra, t1
                  addi         s3, s9, -586
                  blt          ra, t1, 3576f
                  nop
                  xori         s7, s5, 142
                  sll          sp, s0, s5
                  ori          s1, zero, -176
                  bltu         gp, tp, 3591f
                  xori         s10, a0, -936
                  auipc        t3, 650346
                  srl          t6, t4, a0
3576:             sra          sp, a4, tp
                  add          a5, sp, s9
                  sltiu        s1, s1, -127
                  sll          a1, t3, s10
                  bltu         s5, zero, 3584f
                  add          ra, s11, tp
                  slli         a7, a4, 26
                  xori         sp, a1, -2023
3584:             lui          t1, 34021
                  bltu         a7, sp, 3596f
                  srl          sp, tp, s0
                  sll          s6, zero, t2
                  sub          s6, a3, a3
                  addi         s0, t3, 1516
                  xor          a0, t2, s3
3591:             beq          s11, t6, 3595f
                  slti         s3, a4, 979
                  srli         sp, s4, 26
                  srl          s5, t2, a5
3595:             bltu         a4, s2, 3606f
3596:             andi         a1, s2, 1761
                  bltu         zero, s10, 3616f
                  sltiu        a0, s3, 1687
                  bge          t0, tp, 3601f
                  or           a2, s6, tp
3601:             blt          s4, t4, 3609f
                  sltiu        tp, a0, 2031
                  srai         a6, t5, 25
                  sub          s2, ra, t1
                  sltu         sp, t5, a1
3606:             bgeu         t4, t5, 3624f
                  bgeu         s3, zero, 3612f
                  sltiu        a2, gp, -460
3609:             bgeu         a1, t4, 3626f
                  srai         t5, a7, 9
                  or           s7, sp, t2
3612:             or           zero, a3, a6
                  beq          s11, a4, 3628f
                  slli         a6, t6, 12
                  addi         zero, s6, 2023
3616:             bltu         s11, t4, 3618f
                  blt          s4, a0, 3632f
3618:             xori         s9, sp, 921
                  slli         a3, a5, 12
                  sll          a1, t6, t3
                  and          a3, t2, s0
                  ori          s2, s5, 1472
                  xor          ra, sp, a1
3624:             sltiu        t2, s1, 1074
                  sltiu        zero, s5, 1947
3626:             slli         a1, tp, 22
                  auipc        s11, 216601
3628:             bltu         ra, s2, 3637f
                  bge          a6, t3, 3634f
                  blt          a6, s11, 3634f
                  slt          a6, s4, a7
3632:             sll          ra, s5, a4
                  xori         tp, t0, -172
3634:             auipc        a2, 224593
                  sltu         a2, s11, t0
                  blt          a7, a3, 3654f
3637:             nop
                  slli         a2, t6, 12
                  blt          tp, ra, 3651f
                  auipc        a5, 31599
                  add          s7, a2, a0
                  nop
                  xor          t0, t5, a6
                  ori          a1, t0, 1788
                  blt          zero, t2, 3653f
                  xor          s5, s8, t3
                  ori          s8, s11, 1880
                  srai         a6, a5, 24
                  slti         t1, t0, -145
                  srai         a6, s4, 6
3651:             xori         a1, a4, -960
                  or           s5, a2, s11
3653:             xor          ra, s1, s1
3654:             bgeu         s0, t2, 3671f
                  addi         tp, a0, -595
                  and          s9, tp, t4
                  bltu         t4, a1, 3675f
                  bne          s6, a6, 3663f
                  sll          s3, a0, gp
                  sltiu        a6, t2, -450
                  bne          t0, s7, 3676f
                  srl          a7, a0, a2
3663:             bgeu         a0, a2, 3670f
                  addi         s9, t0, -548
                  xor          sp, s6, s1
                  blt          s8, a4, 3669f
                  lui          s10, 289408
                  nop
3669:             bgeu         tp, t5, 3678f
3670:             sltu         s1, s4, s6
3671:             sub          gp, t3, s0
                  lui          t0, 475283
                  beq          s2, zero, 3676f
                  sub          a1, s2, a5
3675:             add          t2, t4, ra
3676:             sltiu        t3, t5, 1155
                  blt          s6, s2, 3686f
3678:             bne          s7, s1, 3682f
                  srli         t0, a5, 17
                  auipc        t1, 812524
                  sra          tp, ra, sp
3682:             ori          s9, s3, -1179
                  or           a3, a5, t5
                  blt          a5, s2, 3686f
                  bltu         t3, a4, 3703f
3686:             xor          t0, a1, a2
                  sltu         a5, s11, a2
                  sll          t0, tp, s3
                  sub          s11, s0, zero
                  blt          s9, a5, 3693f
                  srli         t1, s8, 0
                  srl          s1, zero, gp
3693:             blt          gp, t2, 3704f
                  bltu         s11, s1, 3711f
                  sra          a1, s1, ra
                  bgeu         s10, s9, 3707f
                  sub          t2, s1, a2
                  bne          t2, s9, 3703f
                  nop
                  srai         gp, s11, 19
                  sltu         t2, t5, s9
                  sltiu        t5, a4, 272
3703:             sltiu        a6, t2, -1863
3704:             blt          s9, s1, 3711f
                  blt          tp, t6, 3709f
                  bgeu         ra, s8, 3711f
3707:             sltu         s7, gp, s8
                  lui          s3, 716552
3709:             bgeu         a7, s4, 3711f
                  bgeu         tp, a1, 3711f
3711:             add          s7, t6, t3
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            beq          ra, ra, sub_2_stack_p
                  sltiu        t6, a3, 898
sub_2_stack_p:    addi         s4, s4, -16
                  sub          t0, s8, a2
                  sw           t1, 4(s4)
                  ori          a6, zero, -432
                  slt          a7, s0, s9
                  sra          t6, s5, s1
                  sll          s10, a2, s8
                  sltu         s9, a3, a3
                  xori         s2, t5, 384
                  xor          ra, t3, t6
                  xor          t1, a7, ra
                  srli         s0, a1, 1
                  or           t1, a2, s2
                  srli         a6, t2, 23
                  sltiu        a5, a6, -1537
                  sll          sp, s0, t6
                  blt          t6, ra, 21f
                  slli         zero, t4, 31
                  slt          s9, s6, t4
                  lui          s1, 507842
                  ori          t3, t6, 1563
                  srl          s10, a7, a2
                  addi         s9, a5, 954
                  srai         s7, s9, 11
                  srai         a0, s11, 26
21:               srl          a6, a4, s9
                  andi         s3, tp, -1582
                  andi         s11, s8, -1698
                  sub          s5, zero, gp
                  sub          t1, s7, t0
                  bne          s4, s3, 28f
                  sra          s5, s2, t3
28:               and          zero, a7, a6
                  srl          s10, s8, a5
                  and          s9, a4, t2
                  sltu         s11, t4, s10
                  add          a0, s0, t2
                  bge          t5, a1, 40f
                  or           s11, s6, a6
                  slti         tp, tp, -1319
                  sub          a1, ra, a7
                  blt          s3, a4, 54f
                  xor          t6, a3, a6
                  sll          zero, tp, a0
40:               addi         t3, s10, 504
                  slti         s10, t0, -1020
                  bge          s10, s9, 49f
                  ori          t6, s9, -45
                  bge          a2, s2, 64f
                  sll          a2, a1, s6
                  beq          a6, s1, 51f
                  slti         t6, s9, 1756
                  srai         s6, t5, 6
49:               bgeu         gp, s8, 55f
                  sltiu        tp, s3, 856
51:               sltiu        a2, s2, 1467
                  beq          t1, a2, 58f
                  blt          t1, a2, 72f
54:               slli         sp, t2, 30
55:               bgeu         a4, a6, 63f
                  and          s9, gp, s10
                  and          a1, s6, a7
58:               slt          a5, a5, s0
                  blt          s10, s1, 74f
                  sltu         gp, t2, a0
                  slli         s8, a7, 0
                  addi         s7, sp, 1604
63:               auipc        s5, 165714
64:               addi         a1, s7, 471
                  add          a3, zero, s9
                  sra          t6, a4, s10
                  bltu         tp, tp, 77f
                  ori          t2, a7, 1588
                  bltu         a7, a3, 85f
                  andi         s6, sp, -1654
                  xori         tp, a3, -1082
72:               sltiu        s10, t1, 1842
                  srai         s2, a5, 31
74:               bge          zero, t5, 86f
                  bge          t0, s0, 87f
                  sll          t0, a7, s8
77:               srli         s7, s10, 27
                  srli         t0, a5, 25
                  sra          t5, ra, a2
                  lui          s6, 605454
                  addi         s3, s2, 318
                  xor          zero, s0, t1
                  sltiu        a6, s8, -1767
                  nop
85:               slt          t0, s3, t3
86:               auipc        s3, 1015763
87:               ori          t2, t1, 1742
                  srl          t2, a7, s5
                  xor          s9, a6, t1
                  slti         t3, a0, 1969
                  bne          a0, s2, 95f
                  blt          tp, s10, 95f
                  bge          ra, s7, 94f
94:               srai         t2, a4, 13
95:               srai         t5, s4, 13
                  lw           t1, 4(s4)
                  auipc        s2, 745682
                  addi         s4, s4, 16
                  slti         t0, ra, -873
                  add          t5, s11, s7
                  addi         s11, ra, 154
                  sub          a0, t5, t5
                  sltu         t3, t2, s0
                  sltiu        ra, t1, 378
                  or           s3, s11, s2
                  sltu         s2, s7, s3
                  lui          s7, 251767
114:              addi x12, x6, 1
114:              jalr x12, x12, 0
sub_7:            xori         s1, t4, -1885
                  sltu         ra, s10, t2
                  lui          a3, 32412
                  addi         s4, s4, -36
                  andi         s6, s0, 289
                  sw           t1, 4(s4)
                  xori         s6, t1, -1186
                  slli         t5, a7, 7
                  slli         a1, tp, 17
                  auipc        a1, 715842
                  slli         a7, t2, 23
                  xor          s0, s1, s9
                  la           ra, sub_10
                  lui          s8, 6963
                  sltu         a5, a0, s8
                  lui          sp, 841264
                  srl          t1, s7, t2
                  addi         ra, ra, -382
                  srai         s2, gp, 13
sub_7_j13:        jalr         t1, ra, 383 #jump sub_7 -> sub_10
                  bltu         a5, s9, 6f
                  srai         t3, zero, 25
                  auipc        a0, 53811
                  nop
                  or           s0, a5, s11
                  srai         t3, a1, 11
6:                srli         a3, t6, 19
                  slt          s7, t3, sp
                  bne          t5, ra, 9f
9:                auipc        s11, 814957
                  srl          ra, sp, sp
                  lw           t1, 4(s4)
                  lui          ra, 601684
                  addi         s4, s4, 36
                  sub          s5, s1, s3
35:               addi x3, x6, 1
35:               jalr x3, x3, 0
sub_8:            auipc        a0, 711872
                  bgeu         a6, s0, sub_8_stack_p
                  sltiu        a0, s11, 1726
sub_8_stack_p:    addi         s4, s4, -64
                  sw           t1, 4(s4)
                  ori          s9, s2, 747
                  xori         s3, zero, 1293
                  sra          a0, sp, a7
                  addi         a1, s9, 347
                  xor          gp, gp, a4
                  nop
                  slli         s5, s4, 8
                  lui          a1, 591107
sub_8_j14:        jal          t1, sub_9 #jump sub_8 -> sub_9
                  sltu         s5, sp, t3
                  sra          s5, s3, a3
                  lui          s11, 792787
                  slti         s8, t0, -212
                  slli         s3, t6, 25
                  add          t3, s5, t5
                  blt          s6, a3, 13f
                  andi         t5, s11, -2
                  sll          t5, gp, a6
                  slt          s7, sp, t2
                  blt          s1, s4, 13f
                  add          a1, ra, s0
                  slt          s9, t0, s8
13:               sll          t2, t1, s6
                  bgeu         gp, a3, 31f
                  srl          gp, a4, ra
                  sra          a1, s0, s8
                  sltiu        gp, s1, -1196
                  addi         s8, s6, 1114
                  srai         t5, s2, 9
                  sub          t5, t6, ra
                  andi         tp, s6, 1105
                  bgeu         a7, ra, 39f
                  sltu         t3, s9, a1
                  slli         s8, t2, 19
                  xor          a5, a5, t1
                  srai         s2, a3, 25
                  sll          a5, ra, s6
                  nop
                  ori          s11, gp, 1808
                  sltiu        a1, s3, 235
31:               bne          s3, zero, 42f
                  ori          s7, sp, -316
                  srai         s1, a5, 4
                  sra          t6, gp, tp
                  beq          t5, ra, 42f
                  slt          s0, t1, t1
                  ori          t6, gp, 2001
                  srai         a6, s11, 14
39:               ori          a3, zero, 1405
                  ori          zero, a0, 1011
                  srli         s9, t5, 25
42:               srai         s2, t1, 3
                  slti         a1, t4, -1498
                  and          ra, t2, t2
                  lw           t1, 4(s4)
                  auipc        s7, 144521
                  sub          s3, s2, t4
                  slti         s0, s8, -1755
                  addi         s4, s4, 64
                  srli         a6, s10, 19
                  slli         s5, s1, 1
                  sltu         s9, sp, s11
67:               addi x27, x6, 1
67:               jalr x27, x27, 0
sub_9:            addi         s4, s4, -60
                  sw           t1, 4(s4)
                  sltu         a2, a2, s10
                  lui          zero, 608795
                  and          s0, s1, t1
                  sltu         t1, a1, s2
                  or           sp, t4, s5
                  bgeu         a4, a5, 18f
                  xori         s1, s5, -932
                  slti         s1, a0, -1019
                  bltu         a6, t3, 9f
                  bgeu         a3, zero, 9f
                  auipc        zero, 922835
                  srli         a2, a1, 15
9:                sltu         t1, a1, t1
                  and          a3, s9, s3
                  nop
                  srl          s0, a3, s3
                  slli         a2, a6, 6
                  add          s10, gp, a4
                  or           s3, a3, tp
                  srli         t6, sp, 23
                  andi         s10, s2, 941
18:               nop
                  slt          s7, a3, a4
                  bgeu         s10, s5, 34f
                  auipc        tp, 1037576
                  sltiu        t5, s3, 1330
                  nop
                  srli         t2, gp, 16
                  bne          t1, a2, 31f
                  sltiu        t1, a4, -2003
                  srl          gp, a7, s0
                  ori          s2, s4, -1211
                  bgeu         s9, sp, 44f
                  addi         s3, t6, -148
31:               xori         s10, sp, -910
                  bgeu         a7, s9, 33f
33:               beq          t3, gp, 34f
34:               and          s1, t5, ra
                  lui          a5, 567296
                  sltu         a5, s3, s3
                  srai         a6, tp, 13
                  lui          s8, 914099
                  add          t5, a7, a1
                  auipc        s0, 233221
                  sra          t1, t4, t4
                  slti         t2, a6, -1323
                  xor          s5, t6, t0
44:               sltiu        t2, a5, -349
                  bge          s3, s4, 49f
                  slti         t2, ra, -1855
                  slti         zero, s5, -822
                  bltu         s2, s3, 49f
49:               slt          ra, t6, a1
                  srl          s6, tp, s1
                  sra          s8, t4, t5
                  srai         zero, s2, 13
                  auipc        a6, 740885
                  lui          s1, 947203
                  bltu         a5, s3, 59f
                  bge          s5, s9, 62f
                  bgeu         a1, a3, 63f
                  srai         zero, s7, 25
59:               bltu         t2, a4, 63f
                  lui          t3, 531664
                  bne          s8, s11, 66f
62:               blt          ra, t1, 81f
63:               sltu         zero, a3, a4
                  sra          sp, a5, s3
                  slli         s7, t5, 21
66:               bne          s1, a2, 86f
                  srli         s11, a0, 3
                  bgeu         s4, a1, 80f
                  and          t6, s10, t5
                  bgeu         sp, a1, 75f
                  or           a7, s7, t5
                  ori          tp, s3, 58
                  addi         a7, s8, 556
                  add          s5, t0, a0
75:               andi         t3, s3, -867
                  or           a2, a0, a3
                  bltu         t4, a1, 84f
                  andi         ra, s7, -945
                  blt          t0, s3, 84f
80:               sll          s3, t3, t3
81:               slti         t3, t4, -617
                  slli         a3, t6, 30
                  sll          a6, t2, a7
84:               bltu         zero, gp, 97f
                  nop
86:               beq          s6, s5, 87f
87:               bne          s9, t2, 104f
                  ori          ra, a6, -255
                  and          a6, s8, a0
                  bltu         a7, s10, 105f
                  srli         t5, tp, 28
                  sub          s10, t2, t1
                  srli         a6, t4, 28
                  add          a0, s11, s2
                  bne          a1, tp, 106f
                  or           s11, a1, gp
97:               slli         t5, s9, 16
                  bne          t4, sp, 102f
                  slli         t2, t1, 0
                  slt          t3, t2, s8
                  blt          a7, sp, 109f
102:              ori          t2, gp, -1455
                  slti         ra, a1, 460
104:              auipc        s1, 150640
105:              addi         s10, sp, 318
106:              sub          s9, gp, t3
                  bltu         s3, t3, 113f
                  xori         a5, a4, 1997
109:              bne          s7, s9, 111f
                  bgeu         gp, s8, 114f
111:              add          s5, a3, s7
                  slli         t0, s3, 10
113:              xori         s1, a4, -803
114:              sltiu        s1, t2, 1817
                  sub          s2, s8, a1
                  lui          a6, 156959
                  slli         ra, s8, 13
                  sub          s9, a2, sp
                  slli         t0, s2, 31
                  slti         s5, gp, 1623
                  sra          a2, s11, s9
                  sra          s5, a4, t4
                  ori          a6, a7, -1379
                  bgeu         s5, gp, 129f
                  lui          s5, 723692
                  sra          t2, a1, t0
                  sltu         s7, t5, t1
                  addi         s10, s11, 528
129:              bgeu         a2, a0, 144f
                  beq          t2, s9, 144f
                  slti         s10, a1, -384
                  bne          a2, t0, 136f
                  srli         s0, a0, 22
                  auipc        s11, 751569
                  sll          a1, zero, a3
136:              bltu         t5, s0, 142f
                  andi         s1, a7, 319
                  sltu         a1, a7, a5
                  srl          s10, t0, a3
                  add          s1, sp, t2
                  xor          t6, a7, s5
142:              sltu         t0, a7, tp
                  slt          s5, a2, s11
144:              xor          sp, t1, t3
                  slti         ra, a2, 1484
                  xor          a0, t3, t3
                  addi         s11, ra, -690
                  sltu         a2, s9, t1
                  srai         t2, s9, 30
                  beq          t0, a2, 153f
                  lui          t5, 987262
                  andi         s1, t6, 757
153:              xor          s5, s0, gp
                  and          t6, s7, s9
                  add          t1, gp, a2
                  lui          t6, 177816
                  la           s8, region_1+944 #start riscv_load_store_rand_instr_stream_0
                  sh           s1, -214(s8)
                  srl          a6, t2, s7
                  lh           t0, 228(s8)
                  srli         zero, s4, 24
                  lhu          s2, 44(s8)
                  lb           s3, 81(s8)
                  xor          s11, t0, t0
                  add          s10, a1, s10
                  lbu          a2, 204(s8)
                  sltu         s9, a1, a7
                  sll          t3, a7, s5
                  srl          a7, a7, s11
                  lb           s1, -217(s8)
                  and          zero, t6, t3
                  sh           s6, 60(s8)
                  lb           s7, 95(s8)
                  sb           s7, 85(s8)
                  lb           tp, -167(s8)
                  lbu          tp, -136(s8)
                  slt          s6, a5, t5
                  lb           s6, 86(s8)
                  lw           gp, 152(s8)
                  sltu         a6, a1, a0
                  lw           s6, -212(s8)
                  ori          a6, a7, -1367
                  xor          t6, a0, a0
                  lhu          sp, -22(s8)
                  sll          a1, a0, a4
                  and          s9, a3, s10
                  add          t0, t0, t4
                  or           t3, s3, a1
                  lw           t6, -112(s8)
                  slli         a0, sp, 5
                  sb           a1, -184(s8)
                  srai         a7, s0, 4
                  lbu          s2, 208(s8)
                  lh           s6, 174(s8)
                  sb           s5, 89(s8)
                  slli         s2, t0, 4
                  lb           t2, -101(s8)
                  lh           s10, 204(s8)
                  auipc        a1, 385827
                  lb           tp, 12(s8)
                  lb           a1, 49(s8)
                  addi         t2, t1, -1402
                  andi         a6, tp, -188
                  slt          s3, t4, tp
                  srai         a2, a0, 21
                  sb           s4, 22(s8)
                  andi         t0, s10, 903
                  lb           a5, 186(s8)
                  sb           t6, -37(s8)
                  lh           s5, 126(s8) #end riscv_load_store_rand_instr_stream_0
                  bltu         s4, tp, 170f
                  sll          ra, s0, a7
                  srai         a0, t0, 21
                  bge          a6, a6, 175f
                  srli         sp, a7, 31
                  srl          a0, t5, s8
                  slli         tp, s3, 21
                  xori         s1, t2, -358
                  sltiu        t5, ra, -115
                  sra          s2, s4, tp
                  slti         s5, t2, -1809
                  bgeu         s7, s6, 173f
                  lui          a7, 65182
170:              beq          t0, t6, 174f
                  addi         s2, s7, -1832
                  ori          s0, s6, -731
173:              bgeu         s9, gp, 174f
174:              bltu         a1, s5, 175f
175:              xori         a1, t0, -1
                  bgeu         t6, a0, 183f
                  add          sp, s10, s10
                  sltiu        s5, a4, -1223
                  srl          a3, s5, a5
                  sub          s0, t0, s5
                  srai         a6, s4, 17
                  bne          s11, s5, 186f
183:              xori         a5, t5, 1447
                  addi         t3, sp, 1838
                  addi         a2, s3, 132
186:              beq          s1, a1, 188f
                  sltu         t0, s7, s8
188:              srai         a2, a1, 17
                  auipc        ra, 30156
                  bge          s6, t2, 191f
191:              and          s2, s10, s9
                  andi         s0, sp, -1118
                  bge          s2, sp, 201f
                  srli         zero, s9, 19
                  andi         tp, a3, 174
                  srli         a0, s9, 22
                  lui          s2, 761553
                  bge          s5, s5, 215f
                  srai         s8, a1, 13
                  sltiu        s1, ra, 1966
201:              sub          t0, a4, s5
                  blt          a2, s7, 208f
                  sltu         sp, a1, s5
                  slti         s6, s7, -961
                  srai         t3, t0, 2
                  slli         a0, a7, 16
                  srl          sp, t3, s0
208:              srl          ra, t5, a7
                  slt          s5, s3, s3
                  bgeu         t1, zero, 229f
                  sltiu        s11, tp, -1944
                  slt          s2, t4, s2
                  srli         s10, s11, 25
                  sra          s9, zero, t5
215:              sltiu        t1, a7, -515
                  sra          t2, s10, tp
                  blt          t2, a2, 218f
218:              bne          t0, t4, 234f
                  bgeu         ra, t4, 223f
                  and          s10, zero, a4
                  bge          s6, t4, 226f
                  slti         s5, s2, 592
223:              ori          s10, s10, 1012
                  beq          t1, sp, 230f
                  or           ra, t4, t2
226:              sltu         a3, ra, zero
                  srli         t0, s7, 15
                  sra          s2, sp, t2
229:              srai         s5, a3, 8
230:              slt          s6, s6, a0
                  bge          ra, t6, 242f
                  sltiu        zero, t0, -1393
                  and          a0, tp, sp
234:              srli         a2, a5, 27
                  beq          s11, s3, 245f
                  and          ra, a2, s1
                  blt          t2, ra, 245f
                  sra          s5, a5, gp
                  bltu         t3, s6, 245f
                  and          t1, s4, a5
                  sltiu        tp, t0, 203
242:              slti         s5, s6, 403
                  and          s9, sp, t1
                  srai         s5, a0, 28
245:              slt          s9, a1, a7
                  srai         a2, zero, 19
                  sra          s11, s1, zero
                  auipc        s10, 700556
                  and          zero, a2, a5
                  lw           t1, 4(s4)
                  sltu         a7, ra, a1
                  addi         s4, s4, 60
                  sll          s8, sp, t0
                  slli         s3, a2, 2
                  xor          zero, s3, a2
                  andi         ra, t3, -715
316:              addi x18, x6, 0
316:              jalr x18, x18, 0
sub_10:           srl          a2, gp, s11
                  addi         a5, s11, -1841
                  addi         s4, s4, -32
                  slt          s5, t3, t0
                  slti         s8, zero, 1777
                  sub          gp, a2, t1
                  sw           t1, 4(s4)
                  nop
                  srai         sp, a0, 8
                  beq          t1, a0, 11f
                  slli         s5, ra, 18
                  andi         a2, t0, -150
                  slt          t0, s7, t0
                  sra          a2, tp, a3
                  sltu         tp, t3, t3
                  addi         s5, s6, -563
                  sub          sp, gp, s7
                  add          s0, zero, s11
                  sll          a7, s1, t4
                  add          t3, tp, sp
11:               sra          s1, t5, s2
                  xor          s1, s5, a2
                  srai         a3, ra, 8
                  auipc        a0, 397984
                  slli         tp, s5, 28
                  add          t3, s6, tp
                  lw           t1, 4(s4)
                  slt          a3, s9, a1
                  addi         s4, s4, 32
                  sltu         s2, s8, zero
                  slti         t6, sp, 20
31:               addi x17, x6, 0
31:               jalr x17, x17, 0
sub_4:            addi         s4, s4, -60
                  xor          s9, s5, s1
                  or           a2, a1, s6
                  srl          a5, a4, t3
                  or           s10, a5, s8
                  sub          a6, s11, gp
                  sw           t1, 4(s4)
                  lui          a7, 157981
                  la           a3, sub_6
                  sra          s11, s2, s4
                  andi         s8, gp, -1457
                  addi         a3, a3, -365
                  sltiu        t0, s3, -969
                  sll          s11, t3, ra
                  add          a5, t0, sp
sub_4_j7:         jalr         t1, a3, 366 #jump sub_4 -> sub_6
                  srai         a5, s10, 14
                  la           a2, sub_6
                  xor          gp, s0, t4
                  srai         sp, ra, 3
                  sub          s3, s2, s8
                  srai         s5, s6, 12
                  addi         a2, a2, 89
                  srl          gp, s11, a6
                  srai         s0, s1, 24
                  xor          s5, s6, s10
sub_4_j8:         jalr         t1, a2, -88 #jump sub_4 -> sub_6
                  slti         s2, a3, -564
                  bne          tp, t3, sub_4_j9 #branch to jump instr
                  andi         ra, s11, 1832
                  slli         gp, s3, 24
                  add          s11, gp, t4
                  sra          a5, s6, s8
                  slti         s8, tp, 1945
                  sub          s6, s2, s3
                  sub          s0, t6, tp
sub_4_j9:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  bne          s11, ra, 1f
1:                bgeu         tp, a1, 16f
                  lui          s10, 69110
                  sra          t5, s8, a1
                  srli         t2, s5, 5
                  xor          s9, s1, t5
                  nop
                  blt          t5, s8, 11f
                  or           t0, s2, s11
                  add          tp, s6, gp
                  slli         a1, t5, 11
11:               sltiu        s2, t0, -1602
                  bge          gp, s6, 20f
                  sll          s0, s3, a4
                  srli         s1, s7, 11
                  bltu         a0, s0, 33f
16:               slli         s10, t4, 28
                  sltu         s3, s3, s4
                  slti         ra, s9, -241
                  bge          t6, gp, 38f
20:               beq          s10, t2, 24f
                  bge          a3, s2, 33f
                  blt          s0, a4, 25f
                  ori          zero, t0, -2018
24:               bge          s11, s0, 44f
25:               and          s2, a5, a7
                  blt          ra, t1, 31f
                  sll          t6, t5, a5
                  slt          sp, s0, s6
                  addi         tp, t1, -565
                  nop
31:               bltu         s4, s1, 47f
                  auipc        a0, 927964
33:               blt          ra, a7, 47f
                  srai         a2, a7, 17
                  sll          t2, a7, zero
                  nop
                  bgeu         s2, s3, 47f
38:               xor          t2, t5, gp
                  slli         a3, s3, 0
                  slli         zero, t6, 31
                  and          s11, a1, a1
                  srl          t2, s11, a1
                  bne          t5, t3, 47f
44:               slti         s6, a2, 1816
                  xori         t6, a7, 1732
                  slt          gp, gp, s11
47:               xori         sp, tp, -1051
                  slt          s10, gp, s7
                  lw           t1, 4(s4)
                  add          a2, a3, t5
                  slt          ra, a7, sp
                  addi         t3, t4, 65
                  slt          s3, s7, s0
                  addi         s4, s4, 60
                  ori          s10, a6, -856
                  nop
                  xori         a3, a6, 1646
                  xor          s5, s8, t4
96:               addi x8, x6, 0
96:               jalr x8, x8, 0
sub_1:            and          s8, s10, sp
                  beq          a7, a2, sub_1_stack_p
sub_1_stack_p:    addi         s4, s4, -52
                  xor          t5, a0, t2
                  sw           t1, 4(s4)
                  ori          zero, a1, 898
                  sll          a5, s11, a3
                  sll          s8, gp, a3
                  bltu         a1, t0, sub_1_j3 #branch to jump instr
                  slli         ra, t0, 2
                  slti         a0, gp, -1138
                  sltiu        t1, a2, 1058
                  sltiu        s10, gp, 167
                  slti         s9, zero, -1314
                  or           s11, a5, a7
                  sltiu        a7, s10, -1706
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  la           s5, sub_3
                  addi         s5, s5, -357
                  sltu         s1, s7, a3
                  andi         s8, gp, -661
                  xori         sp, s6, 1737
                  slt          ra, s10, s1
                  sll          t3, s2, a0
                  beq          t2, a2, sub_1_j4 #branch to jump instr
                  xori         t2, a4, 1038
                  srai         tp, a0, 14
                  add          a0, s0, t3
sub_1_j4:         jalr         t1, s5, 358 #jump sub_1 -> sub_3
                  bltu         s7, s11, 17f
                  xor          a7, a6, t4
                  srli         t6, t4, 22
                  sll          t0, s7, t6
                  beq          a2, s1, 22f
                  slli         s10, t3, 24
                  ori          a3, a1, -74
                  bge          a2, s7, 11f
                  ori          t3, s2, -1916
                  sra          s6, t5, t5
                  xori         t0, s1, 1989
11:               slli         s5, zero, 30
                  bltu         s9, s8, 22f
                  sll          s10, s11, t0
                  sltu         t3, a0, t2
                  slli         s0, t0, 19
                  sltu         t5, a0, sp
17:               sll          gp, tp, sp
                  nop
                  bltu         s5, s11, 21f
                  add          t2, gp, s11
21:               slti         s0, s0, -1193
22:               auipc        ra, 59020
                  addi         s10, sp, 552
                  auipc        s0, 655242
                  srli         s10, t5, 23
                  bltu         t1, gp, 45f
                  beq          a0, s2, 37f
                  srai         a5, s2, 8
                  srl          tp, gp, a5
                  beq          tp, gp, 38f
                  sra          t0, a5, a2
                  nop
                  bne          a2, s1, 48f
                  sll          t1, s5, zero
                  sll          gp, ra, s7
                  and          s1, s4, s9
37:               beq          s0, a0, 45f
38:               srli         a3, a7, 0
                  bltu         t6, s9, 40f
40:               add          s5, t4, zero
                  slti         s3, t5, 1316
                  slli         a2, s1, 19
                  bge          s10, t3, 49f
                  srai         sp, s2, 6
45:               xor          t2, t3, a7
                  and          s9, a4, s3
                  sra          s6, t2, s4
48:               srli         zero, s2, 18
49:               sltiu        s2, a0, -1722
                  sra          sp, a7, gp
                  srai         t5, a6, 10
                  and          zero, s4, t0
                  bne          s3, s6, 56f
                  auipc        sp, 1010150
                  beq          ra, s2, 59f
56:               srli         s9, s8, 23
                  srl          t0, t2, s5
                  sra          t6, t1, ra
59:               and          s7, s3, a5
                  ori          t6, a6, -25
                  srl          t0, a2, a7
                  xori         s8, t5, 1974
                  srli         gp, t6, 13
                  sra          s0, s8, a4
                  lw           t1, 4(s4)
                  sltiu        tp, a5, 1784
                  addi         s4, s4, 52
                  sra          gp, s5, t6
                  srl          a5, t2, s1
99:               addi x2, x6, 0
99:               jalr x2, x2, 0
sub_6:            addi         s4, s4, -48
                  or           s2, t0, t6
                  lui          t0, 598657
                  sw           t1, 4(s4)
                  sra          s6, a5, a3
                  auipc        zero, 509968
                  slt          s11, s9, zero
                  sltu         s6, a6, a3
                  slti         a0, s10, -16
                  lui          s10, 1048385
                  add          tp, s2, sp
sub_6_j12:        jal          t1, sub_7 #jump sub_6 -> sub_7
                  add          t5, s5, t4
                  and          s7, ra, t1
                  bgeu         t4, zero, 9f
                  or           t1, s8, gp
                  or           a0, t1, a0
                  add          s7, s4, s11
                  bltu         t5, a7, 8f
                  bne          s11, a6, 9f
8:                and          t1, tp, gp
9:                or           sp, t4, s3
                  lw           t1, 4(s4)
                  srai         s1, a2, 10
                  slti         a6, s10, -1160
                  sll          a1, a1, s3
                  addi         s4, s4, 48
                  sub          tp, t1, t5
                  xori         s10, tp, -1007
29:               addi x25, x6, 0
29:               jalr x25, x25, 0
sub_5:            sltiu        s9, s4, 1804
                  addi         s4, s4, -48
                  ori          s11, gp, 178
                  lui          a1, 322163
                  andi         t5, s5, -305
                  sw           t1, 4(s4)
                  and          s11, a3, t4
                  sll          t5, s2, a3
                  xor          s10, sp, a1
                  and          tp, s3, s7
                  add          a3, a3, sp
                  srai         ra, s10, 18
                  sltu         s11, a2, s3
                  add          a6, sp, t4
                  slt          s6, a4, s5
                  andi         s0, a5, 207
sub_5_j10:        jal          t1, sub_8 #jump sub_5 -> sub_8
                  slt          s1, s3, s7
                  bge          s6, s5, sub_5_j11 #branch to jump instr
                  lui          t1, 704363
                  sll          zero, t4, a6
                  slti         ra, s7, 907
                  xor          s7, a1, tp
                  auipc        a3, 135979
sub_5_j11:        jal          t1, sub_7 #jump sub_5 -> sub_7
                  slli         s0, a4, 29
                  srai         a5, s11, 2
                  xor          a2, t3, s6
                  sltiu        s2, a7, -1621
                  addi         s9, s11, -1872
                  andi         gp, s0, -866
                  beq          tp, a2, 17f
                  ori          s1, t1, 1749
                  sltiu        a3, s1, 765
                  xor          s9, t3, t5
                  auipc        tp, 558764
                  andi         t1, a6, -272
                  slt          t5, s10, gp
                  srai         t1, a4, 24
                  sra          s11, s8, a0
                  beq          a6, tp, 17f
                  addi         s0, s8, 790
17:               addi         s11, zero, -781
                  xor          s2, a0, s4
                  slti         s6, t5, -1454
                  srai         t5, s6, 6
                  and          s11, s7, s4
                  srli         s10, s2, 0
                  nop
                  lw           t1, 4(s4)
                  or           t0, s10, s10
                  addi         s4, s4, 48
                  srai         a5, s2, 7
53:               addi x25, x6, 0
53:               jalr x25, x25, 0
sub_3:            srli         a3, s11, 30
                  xori         s0, t2, -574
                  sltu         s5, s4, s0
                  slti         a6, zero, -1371
                  slli         s10, gp, 9
                  ori          a1, s8, -539
                  sra          a6, t6, a5
                  addi         s4, s4, -52
                  and          a2, a7, s2
                  sw           t1, 4(s4)
                  lui          a2, 466734
                  or           a1, a5, s7
                  slli         s3, a4, 2
                  or           t6, s10, gp
                  la           s2, sub_4
                  lui          a7, 568906
                  addi         s2, s2, 225
                  bltu         a2, t4, sub_3_j6 #branch to jump instr
                  lui          t3, 520345
                  slli         gp, s10, 21
                  sll          s10, s1, t4
                  addi         sp, s3, -1717
                  nop
sub_3_j6:         jalr         t1, s2, -225 #jump sub_3 -> sub_4
                  la           sp, region_1+1454 #start riscv_load_store_rand_instr_stream_1
                  andi         t1, a2, 289
                  or           tp, s3, t4
                  lb           t6, 217(sp)
                  sra          a5, s10, t5
                  ori          s8, a2, -761
                  lbu          tp, 52(sp)
                  lui          t3, 109768
                  sltiu        t2, gp, 321
                  sltiu        s9, s2, 397
                  sb           s1, -125(sp)
                  ori          s6, s11, 1163
                  slti         s3, zero, -1647
                  slti         s1, gp, 2043
                  srli         s8, gp, 14
                  sb           s1, -137(sp)
                  lb           s10, 69(sp)
                  sltiu        a5, a7, -610
                  lhu          s10, 100(sp)
                  lbu          a0, 9(sp)
                  srai         gp, s2, 4
                  sb           sp, -65(sp)
                  lbu          s9, -209(sp)
                  sb           sp, 219(sp)
                  sb           t0, -247(sp)
                  lb           t6, 186(sp)
                  slti         a0, s8, 135
                  lbu          s2, 201(sp)
                  sltiu        a0, a7, 1314
                  slli         s1, a6, 29
                  sb           t0, 93(sp)
                  xor          t5, s4, t6
                  or           a6, s6, t5
                  lui          s10, 406228
                  add          a0, a3, s9
                  lbu          s3, 171(sp)
                  lbu          zero, 189(sp)
                  sra          s11, s10, s3
                  sb           tp, 213(sp)
                  sw           s0, -34(sp)
                  andi         s9, ra, 1827
                  andi         a1, tp, -1255
                  sra          s10, t0, a2
                  slli         ra, s2, 29
                  lbu          ra, 21(sp)
                  ori          zero, s0, -641
                  sb           s7, -37(sp)
                  srl          s11, gp, a2
                  or           t0, t1, t5
                  lui          a7, 743510
                  slt          t3, s6, s10
                  sw           s11, -230(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_1+1596 #start riscv_load_store_rand_instr_stream_2
                  srai         s10, tp, 6
                  sb           a3, 3(s11)
                  sltiu        s9, tp, 1169
                  lw           s2, 4(s11)
                  and          t3, t6, s8
                  sb           a5, 7(s11)
                  lh           s3, 4(s11)
                  lw           s3, -8(s11)
                  add          t0, t0, s2
                  lbu          t5, -3(s11)
                  sh           t3, 0(s11)
                  sb           s0, -14(s11)
                  srli         s6, s11, 19
                  slli         a0, t0, 0
                  lbu          s6, 15(s11)
                  lhu          s3, -14(s11)
                  slli         t3, a1, 30
                  lb           ra, 7(s11)
                  sb           ra, -3(s11)
                  lb           zero, 13(s11)
                  lh           t6, -8(s11)
                  and          a7, s6, a1
                  lbu          gp, -13(s11)
                  xor          s3, a3, a0
                  lbu          s2, -16(s11)
                  sb           t5, -9(s11)
                  lbu          a5, 15(s11)
                  lw           a3, -12(s11)
                  ori          t2, s7, -677
                  add          a0, s5, s1
                  and          s2, a5, s0
                  lh           a5, 12(s11)
                  lbu          a3, 3(s11)
                  srl          sp, t4, s8
                  sb           s8, 9(s11)
                  lh           s5, -10(s11)
                  sb           s0, 14(s11)
                  slt          sp, tp, s7
                  lbu          a3, -1(s11)
                  srli         t3, a6, 0
                  sb           gp, -11(s11)
                  sb           a2, -1(s11) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1168 #start riscv_load_store_rand_instr_stream_0
                  lui          s9, 973193
                  srl          s7, s3, t1
                  sltu         t0, s1, t2
                  xori         tp, t2, -1195
                  lh           s9, 6(sp)
                  nop
                  lb           t6, -35(sp)
                  lui          s2, 528452
                  lw           a6, -28(sp)
                  addi         s10, s2, 1175
                  lbu          s3, 43(sp)
                  sb           s3, 13(sp)
                  lbu          s9, -21(sp)
                  lb           a0, 7(sp)
                  sb           tp, 52(sp)
                  sltiu        a5, gp, -956
                  lh           zero, 50(sp)
                  sb           s0, -51(sp)
                  lb           t0, 46(sp)
                  lbu          s2, 23(sp)
                  sb           t0, 3(sp)
                  sra          ra, sp, s5
                  lbu          a6, -31(sp)
                  andi         s10, s1, 395
                  slli         s1, t4, 5
                  lbu          a5, 61(sp)
                  or           s1, a6, s7
                  or           t1, a3, a0
                  slt          s5, a7, s0
                  lb           t0, 37(sp)
                  lb           zero, -59(sp)
                  sb           s9, -45(sp)
                  lhu          s7, -10(sp)
                  srai         t5, a5, 13
                  sub          s2, tp, a6
                  slt          a6, zero, s9
                  lb           zero, 49(sp)
                  nop
                  lbu          s8, -27(sp) #end riscv_load_store_rand_instr_stream_0
                  srai         t3, s10, 7
                  beq          a7, s3, 11f
                  bne          s9, gp, 16f
                  slt          t6, a7, t6
                  blt          t5, t1, 6f
                  sll          s2, a5, s1
6:                blt          s2, a5, 21f
                  srl          a7, s1, s9
                  slti         s1, ra, 2024
                  bltu         a1, sp, 15f
                  xori         t6, a0, 537
11:               sub          t5, sp, a2
                  sra          t6, tp, t0
                  sltu         sp, s6, t2
                  lui          s10, 842430
15:               xor          t3, ra, s2
16:               blt          a2, s5, 25f
                  srai         s0, a1, 6
                  xori         zero, t5, -941
                  slli         a5, gp, 2
                  sra          s2, t3, s0
21:               slli         a5, s9, 28
                  beq          s0, t4, 37f
                  srli         s2, s7, 16
                  bgeu         ra, s1, 25f
25:               andi         s10, zero, 1137
                  bgeu         t2, a1, 31f
                  add          t3, s9, s10
                  beq          t3, t0, 33f
                  blt          s10, s6, 49f
                  beq          tp, t0, 38f
31:               nop
                  xor          s2, s3, s1
33:               bge          s6, t1, 43f
                  auipc        s6, 315018
                  xor          s0, t1, a2
                  sub          s8, ra, ra
37:               xori         a6, s1, -92
38:               lui          a5, 776688
                  slt          a0, gp, a4
                  beq          s6, ra, 48f
                  auipc        s10, 5490
                  addi         t6, t3, 1717
43:               sra          a7, a7, t0
                  sltiu        s6, s8, -2034
                  ori          a3, s4, 218
                  lui          s9, 203566
                  auipc        t0, 236381
48:               lui          a7, 880121
49:               blt          s1, s3, 63f
                  nop
                  xor          s3, s6, t4
                  xori         ra, s3, 428
                  beq          s5, s8, 59f
                  lui          ra, 584420
                  slti         s6, s6, -1474
                  blt          ra, s2, 60f
                  blt          s4, sp, 58f
58:               bne          s10, s5, 63f
59:               auipc        t1, 823467
60:               sltiu        tp, s0, 1667
                  slti         t3, s3, -1753
                  sll          gp, t2, sp
63:               slt          s5, s3, s7
                  sltiu        s6, t1, 698
                  bne          s6, s8, 82f
                  sltiu        s10, t3, 1307
                  beq          a1, a0, 73f
                  srai         a2, s2, 9
                  slti         ra, s8, -1557
                  lui          s0, 853347
                  sltu         a5, ra, tp
                  srl          a5, zero, t6
73:               lui          s8, 49047
                  sra          s1, s1, s3
                  bge          zero, a2, 89f
                  bltu         t6, s4, 78f
                  bgeu         s10, a0, 94f
78:               sltu         s11, s2, a7
                  ori          a1, s10, 1551
                  ori          ra, s9, -2027
                  beq          t3, a1, 94f
82:               sll          t5, sp, t2
                  ori          s1, a5, 436
                  srli         a2, s6, 4
                  bne          t3, s6, 95f
                  or           s0, t3, s10
                  addi         t6, t0, 42
                  bltu         s11, t5, 91f
89:               blt          s6, t4, 100f
                  slli         s5, t0, 14
91:               srai         s10, a1, 21
                  beq          s5, s2, 100f
                  beq          a1, s7, 109f
94:               add          t5, s5, s10
95:               beq          ra, t0, 98f
                  ori          t6, t4, 1691
                  bgeu         t5, tp, 99f
98:               srli         a3, ra, 1
99:               xor          s1, s5, t2
100:              addi         tp, ra, 914
                  andi         a5, gp, -550
                  slti         s7, s1, -640
                  sra          sp, ra, a6
                  blt          t0, s5, 121f
                  addi         s1, s11, 1850
                  beq          a1, s8, 123f
                  beq          zero, a7, 116f
                  xor          a5, a1, a6
109:              xori         t3, a6, -1961
                  sltu         t5, a7, t0
                  slti         s3, zero, -1348
                  blt          a4, a1, 126f
                  bltu         t2, s7, 117f
                  add          s2, a6, t5
                  bge          s5, t2, 131f
116:              ori          s9, s9, 445
117:              sra          t6, a4, sp
                  sub          s11, t4, t1
                  xori         gp, s11, 466
                  sll          s0, a7, s7
121:              srai         a0, a4, 23
                  ori          s1, s3, 1693
123:              slli         a7, a0, 3
                  xor          t0, t0, a1
                  bge          t2, t4, 131f
126:              slti         t1, s4, -728
                  and          a5, s0, t0
                  ori          zero, a1, -1432
                  xor          ra, s4, tp
                  bgeu         t3, a6, 132f
131:              sub          t6, s8, a6
132:              srl          s5, tp, t2
                  srai         s6, s3, 26
                  nop
                  or           t6, t4, a6
                  slt          s7, s10, t6
                  addi         t6, s4, 1544
                  andi         tp, a5, 1131
                  sra          a6, s9, t1
                  slli         s8, t5, 31
                  lui          sp, 1007224
                  srli         s3, a4, 18
                  srl          a7, s10, s5
                  srai         t5, s4, 0
                  sltu         a0, t0, zero
                  bltu         s5, s4, 152f
                  slti         s9, s6, -1869
                  bltu         a1, s1, 163f
                  slti         sp, ra, 519
                  slli         a3, t4, 19
                  ori          s6, a5, -312
152:              slti         s2, s5, -1481
                  xor          gp, a2, zero
                  bne          s8, s5, 167f
                  addi         t0, a6, 1692
                  bge          t2, ra, 167f
                  bgeu         a7, a5, 158f
158:              xori         s5, a1, -1262
                  sltiu        t3, a2, 1454
                  srai         s2, t3, 19
                  sra          t1, a2, a2
                  bltu         s0, s6, 167f
163:              bge          a1, a7, 178f
                  sltu         sp, ra, a5
                  add          s6, s1, s10
                  beq          zero, zero, 176f
167:              sltu         a5, tp, t1
                  blt          t3, a1, 182f
                  sra          a2, t6, s6
                  nop
                  beq          t6, a6, 179f
                  srai         zero, t5, 27
                  srai         sp, zero, 21
                  slli         a6, s3, 15
                  add          t3, s4, s6
176:              sll          s2, s4, a7
                  bge          gp, tp, 178f
178:              or           a2, s6, t5
179:              slt          zero, t5, s1
                  srl          s11, gp, a1
                  slti         t2, gp, 779
182:              xori         zero, s11, 337
                  bge          t4, t2, 197f
                  add          s8, t4, s7
                  bge          s11, s9, 195f
                  xor          t2, t2, a2
                  srli         a0, t5, 2
                  lui          t0, 445026
                  andi         s2, a5, 605
                  ori          tp, t2, 1633
                  bgeu         s0, t2, 196f
                  xori         s5, a2, -1134
                  auipc        t3, 675953
                  blt          t4, t1, 202f
195:              and          s9, a4, s9
196:              nop
197:              slt          zero, s4, t2
                  sra          s2, a6, ra
                  bltu         a5, s10, 219f
                  add          s8, s10, t4
                  or           a3, s10, ra
202:              xor          t1, s9, t6
                  slli         ra, s5, 18
                  sub          s0, t6, zero
                  slli         tp, a4, 23
                  sltiu        a3, s3, -315
                  xori         s2, a7, 60
                  addi         s2, a4, -1912
                  bge          a1, t3, 215f
                  sub          a6, tp, s4
                  addi         gp, sp, -759
                  la           sp, region_1+1045 #start riscv_load_store_rand_instr_stream_3
                  sltiu        ra, t6, -681
                  sll          s7, t5, a6
                  sltu         a2, s8, tp
                  lb           a0, 922(sp)
                  sh           s2, -193(sp)
                  lbu          s2, -221(sp)
                  lui          tp, 766931
                  sltu         s1, s11, t3
                  ori          s1, zero, 490
                  nop
                  lbu          s3, 702(sp)
                  lhu          s0, 221(sp)
                  lb           s3, -23(sp)
                  lb           t1, 486(sp)
                  lb           t2, -1007(sp)
                  slli         a0, t6, 16
                  srl          gp, s1, s10
                  lw           tp, -573(sp)
                  slti         s5, tp, 318
                  ori          t5, t5, 78
                  sb           s0, -1028(sp)
                  sub          s6, s6, s4
                  lw           a7, 111(sp)
                  xori         s9, gp, 1046
                  lb           t0, 612(sp)
                  lbu          s5, -72(sp)
                  lbu          a2, 451(sp)
                  sh           s6, -297(sp) #end riscv_load_store_rand_instr_stream_3
                  xori         t0, s11, -812
                  sub          a0, a0, sp
                  xori         s11, a6, -1614
215:              blt          s8, a1, 220f
                  beq          tp, s8, 226f
                  sltu         a1, s9, t6
                  bne          t1, s2, 226f
219:              nop
220:              andi         a0, t0, 291
                  xori         tp, a5, -1239
                  srl          s1, a5, zero
                  and          s6, s4, sp
                  bge          s8, a3, 232f
                  sltu         s9, a0, t2
226:              slli         zero, a1, 5
                  and          s7, ra, s9
                  addi         s1, t5, -596
                  and          a2, a5, t3
                  srl          s7, s6, t5
                  slt          s11, gp, a5
232:              slli         a5, a4, 17
                  and          t5, s3, t4
                  addi         s10, a0, -903
                  or           sp, t6, s1
                  bltu         a3, s0, 247f
                  srli         ra, tp, 2
                  ori          t0, s3, 1382
                  auipc        a2, 119833
                  beq          s9, a0, 245f
                  ori          s7, zero, -1707
                  bge          t3, s3, 245f
                  sra          t5, a4, s6
                  nop
245:              and          t3, t2, s6
                  sll          s3, t5, sp
247:              andi         a1, t2, 1631
                  xori         ra, s6, -1614
                  bge          zero, a0, 266f
                  slt          s6, t4, s1
                  or           t1, s8, s6
                  sll          ra, s11, s9
                  ori          s8, s6, 1495
                  xor          s2, s11, a7
                  slti         tp, gp, 932
                  or           a7, s7, s1
                  lui          s10, 801064
                  bge          a3, a5, 268f
                  sub          a3, a7, s11
                  xor          a7, s2, a1
                  srl          tp, a4, s8
                  andi         gp, s9, 690
                  bge          s5, a2, 265f
                  srl          t1, a1, s0
265:              sra          s11, s9, a7
266:              sll          a1, a1, sp
                  srli         t0, tp, 26
268:              sltu         s3, s9, a0
                  bgeu         a5, s6, 270f
270:              and          t2, s7, a4
                  bge          s0, a7, 281f
                  sll          a7, a6, a7
                  sub          zero, a5, zero
                  or           a7, a5, a5
                  xor          a0, s0, a6
                  sltiu        s8, ra, 556
                  srl          s11, s11, t6
                  bgeu         t6, a5, 292f
                  srli         s9, a7, 28
                  sra          t3, t4, t0
281:              srl          t3, s4, tp
                  bgeu         t0, a6, 287f
                  sub          a2, a1, s9
                  ori          tp, a5, -600
                  andi         t2, a7, -460
                  xori         s0, a0, 2024
287:              sltu         t1, s10, s0
                  xori         zero, t4, 1930
                  addi         s5, a7, 121
                  nop
                  sra          a0, ra, a5
292:              beq          a2, s2, 294f
                  slti         ra, t4, 514
294:              lui          t6, 353810
                  xori         t2, s8, -1180
                  sltu         s5, t4, t5
                  slti         a1, a2, -780
                  sltu         s6, a5, gp
                  slti         ra, s10, 342
                  blt          tp, a5, 316f
                  srl          s5, a2, t0
                  add          s2, t1, t3
                  slli         a5, t1, 8
                  sll          t3, zero, a1
                  xori         a5, a5, 1042
                  lui          s7, 356724
                  addi         t6, t0, -34
                  slt          gp, t5, s4
                  sub          s2, gp, t4
                  sltu         t1, ra, a2
                  srai         s3, tp, 30
                  srai         t1, s11, 20
                  ori          a3, zero, 1248
sub_3_j5:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  andi         t3, s2, -629
                  sra          t6, ra, s1
                  nop
                  bgeu         s8, t1, 322f
                  nop
                  and          a1, s11, t6
                  bltu         s0, t4, 316f
                  and          t6, t5, s9
                  sra          t6, a5, s9
                  add          a1, t6, s8
316:              auipc        s9, 410010
                  sub          s5, s8, t3
                  xori         s11, s8, 573
                  auipc        t2, 234896
                  sll          s6, gp, s1
                  bge          t4, t6, 329f
322:              sltu         sp, s1, gp
                  nop
                  srai         s5, a7, 19
                  slt          s10, s3, a0
                  beq          gp, t4, 346f
                  addi         s1, a4, 345
                  srai         a3, a7, 24
329:              beq          a7, s0, 337f
                  nop
                  and          a0, a5, tp
                  sll          s3, a5, s1
                  or           tp, a2, a7
                  sltu         t2, t6, tp
                  sltu         a3, ra, t3
                  add          a5, t4, zero
337:              srai         a5, a6, 15
                  addi         t1, a0, -788
                  srl          a0, t4, s9
                  addi         a2, a2, -1092
                  slti         s1, s0, 405
                  xori         tp, t0, -1283
                  andi         s1, s1, -2039
                  addi         s5, a0, -349
                  sltiu        tp, s4, -406
346:              xori         s2, s2, 384
                  lui          s2, 515292
                  sltu         s7, s5, s6
                  sltu         a1, t6, t4
                  blt          t3, s4, 356f
                  xor          t6, a2, t6
                  and          s2, a1, s10
                  or           t6, gp, a1
                  slti         a3, a5, 1430
                  xor          t3, t6, s1
356:              srai         a2, a4, 17
                  xori         gp, a1, 308
                  bne          t2, s2, 372f
                  sll          t3, s5, s0
                  slti         t6, a5, -319
                  bge          s0, s7, 367f
                  slti         s11, s2, 388
                  bltu         a4, s3, 364f
364:              addi         s11, a1, -528
                  sub          s0, t6, t6
                  xori         a7, gp, 1908
367:              and          s2, s2, a7
                  lui          s9, 970382
                  srl          gp, s3, a2
                  ori          s7, s6, 934
                  slti         gp, s7, 1338
372:              srli         a7, tp, 27
                  slti         a3, sp, 641
                  sltiu        t2, tp, 326
                  srl          a6, s8, s6
                  and          a1, tp, tp
                  or           a3, s0, t2
                  sub          ra, t1, s1
                  nop
                  srai         a3, t5, 7
                  nop
                  slt          s6, t0, a7
                  nop
                  srai         t5, s5, 19
                  slt          t5, a3, t0
                  beq          t2, a7, 391f
                  bne          ra, a5, 404f
                  slli         s2, gp, 12
                  and          a6, ra, t0
                  bne          s0, s7, 405f
391:              sll          s0, a6, a3
                  xori         tp, a0, 753
                  sll          t6, t3, t2
                  srl          s10, s4, a7
                  auipc        s9, 621210
                  sub          s9, s8, ra
                  nop
                  srl          a7, a2, zero
                  bltu         a2, t0, 405f
                  slti         s1, s9, 265
                  bltu         s10, a5, 410f
                  xori         a5, t5, 187
                  bne          t5, s0, 418f
404:              bne          ra, t0, 414f
405:              bltu         sp, a2, 419f
                  and          t5, t0, s5
                  lui          t3, 765256
                  or           s5, sp, s2
                  bgeu         a5, s8, 426f
410:              sub          s2, a1, s0
                  beq          s10, s2, 426f
                  bge          s5, sp, 420f
                  or           sp, s1, zero
414:              srli         s0, zero, 9
                  addi         s1, s11, 160
                  bltu         s2, s8, 426f
                  sub          s6, s4, a6
418:              srai         a7, a4, 20
419:              sub          s11, t0, s7
420:              lui          s1, 413812
                  bne          a5, a2, 427f
                  sra          a6, s0, s0
                  sub          s11, sp, s9
                  lui          a6, 442462
                  sll          t5, s4, a7
426:              bne          t4, a2, 427f
427:              add          t2, s3, t3
                  srl          gp, t2, s6
                  slt          a0, t1, s6
                  sra          t3, t5, tp
                  xor          ra, s8, s0
                  slt          s3, gp, zero
                  sltiu        t3, s1, -851
                  bltu         s4, a3, 436f
                  srli         sp, a0, 1
436:              auipc        s10, 58011
                  sub          s7, t0, t6
                  sltiu        s9, s1, -925
                  bgeu         t6, tp, 445f
                  xori         s0, s8, 682
                  beq          t2, a0, 449f
                  sra          s6, s11, s0
                  auipc        s11, 914282
                  sltu         t1, s2, a5
445:              ori          s1, t1, -355
                  srli         a3, s0, 16
                  sll          s3, a6, s4
                  sltiu        a1, t6, 271
449:              ori          ra, a3, -858
                  srl          s11, t2, a6
                  auipc        a7, 737670
                  and          s3, a2, t4
                  andi         s0, s6, -334
                  blt          t3, s8, 459f
                  xor          s11, s1, s11
                  add          a2, s2, s11
                  slti         t0, t2, -336
                  bltu         a4, a0, 467f
459:              sra          s2, s9, t5
                  and          t5, t4, sp
                  srl          s2, s3, a0
                  srl          sp, t3, a4
                  sll          ra, t3, gp
                  slli         t2, tp, 15
                  srli         s11, tp, 5
                  beq          a3, t5, 480f
467:              sll          t6, tp, a0
                  and          s8, a5, zero
                  beq          s9, t1, 474f
                  sra          a7, ra, t5
                  bgeu         a4, a3, 484f
                  andi         t6, a2, -97
                  auipc        t2, 270211
474:              addi         a1, ra, 1352
                  sltu         t3, s5, a5
                  srli         sp, a0, 15
                  xor          a1, t1, s2
                  blt          s0, s10, 479f
479:              xor          ra, s3, s10
480:              sub          s1, t0, a2
                  slli         ra, gp, 5
                  xori         s0, ra, -1651
                  bge          t1, a0, 489f
484:              bltu         s6, s7, 504f
                  sra          s2, t1, s7
                  bge          gp, s8, 503f
                  srl          s2, s6, a2
                  auipc        t0, 83466
489:              bne          a2, sp, 493f
                  andi         tp, a2, -1174
                  and          a1, s4, s3
                  beq          s5, s6, 500f
493:              nop
                  srai         tp, s3, 12
                  lui          a6, 771054
                  srl          sp, s5, s6
                  sra          t0, s9, s11
                  beq          s4, a0, 512f
                  srai         gp, s2, 12
500:              nop
                  andi         t5, sp, -124
                  or           s9, a2, s4
503:              bge          t2, sp, 506f
504:              sltu         a3, t0, a7
                  xori         s7, t6, 813
506:              add          s2, a5, t3
                  sra          t1, t6, tp
                  sltu         a7, a6, s11
                  add          t5, s4, s6
                  srai         t5, ra, 29
                  bge          t1, a7, 513f
512:              slti         sp, s2, -1694
513:              auipc        gp, 654123
                  blt          s1, s2, 529f
                  addi         t3, t6, -238
                  xor          a0, s4, s9
                  sub          a0, s1, t0
                  sll          a7, t2, s7
                  or           s10, a7, s7
                  ori          t3, s3, -1275
                  slti         a3, s7, 1422
                  slt          a3, t3, a7
                  sra          s11, s10, t4
                  or           s7, s2, t6
                  slti         t0, s3, -1217
                  auipc        zero, 49727
                  sub          sp, s5, t2
                  andi         gp, sp, 460
529:              sub          s5, s11, a0
                  srli         a3, gp, 29
                  xor          zero, s4, t1
                  bltu         s3, s8, 542f
                  addi         t0, s7, 594
                  bne          s6, t2, 548f
                  sltu         t3, a1, a0
                  bgeu         s4, ra, 541f
                  nop
                  beq          a5, s8, 554f
                  beq          s11, s11, 550f
                  and          gp, a7, s8
541:              bne          s5, s5, 551f
542:              or           sp, s6, t5
                  beq          s11, s9, 547f
                  auipc        s2, 277528
                  lui          s7, 541853
                  bgeu         a6, t2, 563f
547:              blt          a0, a2, 564f
548:              andi         t5, s2, 177
                  sra          s10, ra, s10
550:              sll          sp, zero, a3
551:              bge          s6, s8, 565f
                  lui          t3, 59530
                  beq          t0, a7, 563f
554:              sll          s9, tp, s10
                  slt          s8, a5, a7
                  srl          s10, sp, s2
                  xori         t6, s0, -843
                  andi         a2, t3, 1174
                  srli         s6, zero, 12
                  srli         t1, tp, 20
                  add          s8, zero, s11
                  sltu         s7, zero, s5
563:              beq          s7, t4, 569f
564:              slti         gp, s7, -374
565:              bgeu         s8, a7, 566f
566:              beq          s1, a0, 572f
                  nop
                  srl          t5, s5, t1
569:              sltu         ra, a4, s5
                  bge          s11, zero, 581f
                  bge          a5, s7, 576f
572:              and          t1, s5, t5
                  addi         s7, t5, 1997
                  bgeu         a6, s10, 590f
                  bne          gp, a1, 578f
576:              lui          s7, 682590
                  srli         s0, s7, 7
578:              slti         sp, s5, 1545
                  auipc        s0, 1038678
                  auipc        a7, 691217
581:              bne          s2, gp, 590f
                  sltu         t6, s11, a7
                  addi         s6, a4, 1418
                  bne          a7, ra, 592f
                  sub          t0, a3, t4
                  xor          s11, s10, a7
                  xori         s9, s3, 1503
                  beq          ra, s0, 593f
                  sub          sp, s6, t0
590:              addi         s10, s8, -1130
                  bge          s3, s10, 606f
592:              bne          s0, a4, 593f
593:              blt          s10, s7, 595f
                  and          s2, t2, t6
595:              sub          s8, s9, a5
                  lui          s2, 950764
                  beq          a5, t3, 607f
                  slli         s9, s8, 0
                  bge          gp, s6, 613f
                  addi         tp, gp, 1174
                  srl          s5, a0, t0
                  srai         a7, zero, 29
                  beq          s6, s8, 613f
                  slt          a7, t3, a5
                  sll          t1, t3, a6
606:              srli         s10, s2, 26
607:              auipc        t5, 804946
                  bgeu         s4, s8, 613f
                  addi         s0, a0, -1973
                  srli         s11, a5, 15
                  bge          a1, s2, 619f
                  addi         zero, s4, 398
613:              auipc        s1, 209889
                  blt          a2, sp, 634f
                  nop
                  sltiu        s0, s2, 1994
                  srai         a1, s10, 19
                  sra          ra, a7, tp
619:              bgeu         s2, t5, 633f
                  bgeu         a6, t5, 626f
                  slt          t6, t6, s11
                  srl          a3, a5, s3
                  bgeu         sp, s9, 625f
                  blt          t3, s5, 639f
625:              srli         s0, t4, 17
626:              and          s5, a3, s10
                  lui          s1, 246902
                  slt          s0, t3, s8
                  xor          t1, t3, s6
                  or           a3, t4, a4
                  ori          a5, gp, 1691
                  xor          a0, sp, a4
633:              beq          s3, a1, 641f
634:              xori         s11, s7, 1956
                  lui          t6, 1027713
                  bgeu         s3, ra, 649f
                  sub          a0, s1, a5
                  bltu         ra, a5, 644f
639:              nop
                  blt          s5, s3, 645f
641:              slli         sp, ra, 7
                  auipc        a5, 39036
                  add          a3, t5, s9
644:              add          a1, s8, t4
645:              xor          s1, zero, s6
                  xor          s8, s8, zero
                  srl          s3, s11, s4
                  srli         s11, s9, 11
649:              lui          t5, 435065
                  addi         t0, a1, 1129
                  bltu         s11, tp, 659f
                  bge          a3, a3, 656f
                  sltu         s1, ra, s2
                  addi         tp, a6, -909
                  ori          s8, a5, 2023
656:              addi         s0, ra, -572
                  slli         s5, s3, 28
                  sub          zero, a2, s4
659:              sltu         s10, s0, t4
                  bge          s5, t5, 680f
                  blt          ra, a7, 675f
                  sra          t2, ra, t4
                  xor          t5, s7, zero
                  srai         a3, gp, 3
                  or           a7, t6, s6
                  bltu         s1, t3, 667f
667:              or           a2, s7, t2
                  srli         a5, s2, 8
                  and          a2, a5, sp
                  andi         gp, t1, 956
                  andi         ra, t1, -1749
                  auipc        gp, 182242
                  nop
                  or           s1, s10, s8
675:              srli         t3, a0, 24
                  srl          tp, s0, s0
                  addi         t6, t4, 1154
                  blt          a4, s10, 679f
679:              bge          s5, a5, 687f
680:              srli         s9, a6, 1
                  or           sp, tp, t0
                  slti         a3, ra, 1176
                  and          t0, t4, zero
                  slti         a7, s5, -111
                  srai         tp, t6, 20
                  sll          gp, t3, s8
687:              slli         s8, a2, 12
                  and          a1, s9, s2
                  srli         s10, tp, 6
                  sltu         s11, t6, tp
                  sub          s11, ra, s11
                  auipc        s8, 513952
                  and          s0, s5, a1
                  slti         t1, a4, 798
                  bne          a5, t6, 706f
                  addi         t6, s5, -1160
                  addi         t1, t2, -1369
                  sll          a0, s5, s4
                  beq          s1, a1, 704f
                  srai         t2, s8, 23
                  and          s11, ra, a6
                  bgeu         t2, sp, 715f
                  bne          s7, s7, 720f
704:              bltu         s1, a7, 706f
                  slt          s0, ra, t3
706:              slt          s3, a0, a7
                  srai         s10, zero, 6
                  sltiu        t6, s4, 793
                  xori         zero, s1, 1569
                  add          tp, zero, t4
                  and          s1, s2, a5
                  sltiu        t1, s3, -1344
                  beq          s9, t2, 719f
                  blt          a4, t2, 719f
715:              bge          s4, t4, 732f
                  srli         t1, s11, 24
                  addi         a2, a6, -668
                  sll          t2, t2, zero
719:              slt          s2, s11, zero
                  la           s9, region_1+1988 #start riscv_load_store_rand_instr_stream_4
                  xori         sp, s1, 246
                  sub          a2, s9, ra
                  addi         tp, a7, 197
                  addi         s2, s8, -2002
                  sh           s4, -202(s9)
                  lbu          s5, -245(s9)
                  lbu          s11, -41(s9)
                  lb           t3, -81(s9)
                  sb           t3, -113(s9)
                  lb           a0, -235(s9)
                  auipc        s8, 941825
                  sll          t6, s0, s10
                  lhu          s6, -58(s9)
                  sh           s8, -182(s9)
                  lhu          s1, -88(s9)
                  lbu          a3, -164(s9)
                  ori          zero, sp, -974
                  lbu          s0, -238(s9)
                  ori          t0, s6, 385
                  xori         s10, a4, 1774
                  or           s5, s5, tp
                  lb           t3, 10(s9)
                  andi         t1, s5, -560
                  sub          t6, s2, t5
                  sb           t2, -3(s9)
                  sb           s1, -119(s9) #end riscv_load_store_rand_instr_stream_4
720:              or           t1, s5, a7
                  bltu         t6, t3, 736f
                  slt          s5, a5, s7
                  nop
                  sub          s7, a5, t5
                  blt          s1, a5, 735f
                  bge          t5, a0, 740f
                  slti         t0, t2, 905
                  sltu         a5, s3, s3
                  andi         a6, s8, -2003
                  bge          t3, s2, 738f
                  sltu         gp, a2, s7
732:              andi         gp, s8, -517
                  ori          t3, a0, 443
                  beq          t2, t6, 742f
735:              xori         s0, t4, -1901
736:              sra          t3, a2, a6
                  sltu         a6, s7, s1
738:              xori         s8, tp, -2046
                  auipc        ra, 439662
740:              add          zero, t4, t1
                  sltu         t3, s4, t5
742:              srl          a5, s11, t0
                  nop
                  srli         gp, t4, 1
                  lw           t1, 4(s4)
                  addi         t5, a1, -879
                  addi         s4, s4, 52
                  ori          s8, s4, -273
                  xori         tp, a0, -1858
                  auipc        s3, 1032324
                  sltiu        zero, t1, -1299
                  lui          s3, 19118
977:              addi x8, x6, 1
977:              jalr x8, x8, 0
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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x14, x20, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
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
                  add x14, x20, zero
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x22, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x22, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x22, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x22, x4, ecall_handler
                  li x4, 0x1
                  beq x22, x4, instr_fault_handler
                  li x4, 0x5
                  beq x22, x4, load_fault_handler
                  li x4, 0x7
                  beq x22, x4, store_fault_handler
                  li x4, 0xc
                  beq x22, x4, pt_fault_handler
                  li x4, 0xd
                  beq x22, x4, pt_fault_handler
                  li x4, 0xf
                  beq x22, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x20, x14, zero
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
                  add x20, x14, zero
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
                  add x20, x14, zero
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
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x20, x14, zero
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
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x20, x14, zero
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
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x20, x14, zero
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
