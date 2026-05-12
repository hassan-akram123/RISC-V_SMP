.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0xf5e8e606
                  li x1, 0xfbf45f87
                  li x2, 0x80000000
                  li x3, 0x9589510
                  li x4, 0x80000000
                  li x5, 0x7c033b59
                  li x6, 0xf300bd75
                  li x7, 0xf85425f3
                  li x8, 0xfc51e3e2
                  li x9, 0x663af67d
                  li x10, 0x0
                  li x12, 0xf762f818
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x2
                  li x16, 0x80000000
                  li x17, 0x8
                  li x18, 0x3
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x4
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x4
                  li x27, 0x2c4cd664
                  li x28, 0x80000000
                  li x29, 0x0
                  li x31, 0x0
                  la x11, user_stack_end
main:             la           ra, region_0+467 #start riscv_load_store_rand_instr_stream_2
                  lui          s1, 1005157
                  lhu          s3, -51(ra)
                  xor          a4, a2, ra
                  andi         a3, s10, -49
                  auipc        s0, 944068
                  auipc        s6, 615498
                  lb           a5, 6(ra)
                  slti         a0, gp, 533
                  xor          tp, a5, s4
                  lb           t3, 29(ra)
                  slli         t1, a0, 21
                  sltu         t0, t2, s7
                  lhu          s2, -29(ra)
                  lb           s6, -10(ra)
                  ori          gp, a3, 1
                  slt          a6, ra, zero
                  sltiu        s0, t3, 1729
                  lh           s1, 3(ra)
                  sltiu        s4, t1, 1914
                  srai         s2, sp, 30
                  lbu          t2, -13(ra)
                  sh           t0, 51(ra)
                  sh           s4, 5(ra)
                  lb           s7, 58(ra)
                  auipc        s7, 662141
                  add          s6, s7, s8
                  lhu          t3, 37(ra)
                  nop
                  lbu          t0, -20(ra)
                  lb           s0, 22(ra)
                  slli         t4, t5, 7
                  sb           s0, 44(ra)
                  lbu          s8, 20(ra)
                  lbu          gp, -18(ra)
                  slli         s8, s0, 14
                  lb           t4, 62(ra)
                  lbu          t0, 57(ra)
                  lb           s8, 61(ra)
                  lb           s8, -35(ra)
                  srai         zero, s5, 24
                  lb           t2, -13(ra)
                  xor          s2, s5, t0
                  addi         s7, s0, 913
                  nop
                  sub          tp, a4, s10
                  srli         a5, a1, 20
                  lb           sp, -8(ra)
                  lw           a6, 33(ra)
                  sub          s7, s11, zero
                  lhu          s3, 55(ra)
                  add          s9, s3, s4
                  xor          gp, s6, t2
                  lbu          s2, -34(ra) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_1+657 #start riscv_load_store_rand_instr_stream_4
                  lhu          a2, -49(s4)
                  xor          a5, a5, s7
                  add          a0, s4, t6
                  sb           a7, 87(s4)
                  srl          a6, s6, tp
                  sltiu        sp, a3, -1429
                  sub          zero, s2, a2
                  add          s5, ra, t3
                  slti         s10, a2, -374
                  ori          t3, a2, -1089
                  lh           s1, -229(s4)
                  srai         s2, s8, 0
                  srl          s6, s4, t5
                  slli         a6, a6, 4
                  sh           a3, 157(s4)
                  auipc        t0, 917497
                  sltu         t0, a7, t5
                  auipc        s10, 853773
                  xor          s7, a7, t2
                  sb           s6, -199(s4)
                  nop
                  sltiu        s1, ra, -1167
                  lb           a4, -129(s4)
                  srai         s5, t1, 25
                  srl          t0, t2, t2
                  lbu          a3, -28(s4)
                  slli         s6, s0, 25
                  slli         s1, s3, 30
                  lhu          s9, -123(s4)
                  and          a4, t0, t1
                  lh           a2, 217(s4)
                  sub          a3, zero, a3
                  xor          gp, a7, s2
                  lh           t1, 91(s4) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_0+145 #start riscv_load_store_rand_instr_stream_12
                  lbu          ra, 10(s10)
                  and          ra, a0, s2
                  sub          a6, a5, t2
                  nop
                  sb           zero, -10(s10)
                  sltu         a7, zero, s8
                  lbu          s9, 14(s10)
                  lhu          s4, 3(s10)
                  lh           a5, -13(s10)
                  lb           s11, -8(s10)
                  lbu          s4, 2(s10)
                  sltu         s2, s11, s6
                  lbu          s0, -1(s10)
                  add          gp, s7, t5
                  lb           gp, -8(s10)
                  lb           t2, 14(s10)
                  slti         tp, a4, -686
                  sb           a7, -5(s10)
                  sra          s4, s6, a6
                  sra          t2, zero, gp
                  lh           s1, 7(s10)
                  ori          s2, sp, -1418
                  lhu          t3, 7(s10)
                  lbu          t0, 8(s10)
                  sw           t3, -13(s10)
                  lh           zero, -15(s10)
                  sltiu        a3, t2, 1211
                  and          s3, s4, s10
                  nop
                  sh           t6, 5(s10)
                  xori         tp, a1, 1236
                  sb           a6, -15(s10)
                  sw           s4, 3(s10)
                  srai         s8, s2, 25
                  sub          s7, s3, a7
                  srai         zero, s1, 6
                  slt          s7, s5, t6
                  andi         a7, s8, -1616
                  andi         zero, s11, 138
                  lb           s7, -15(s10)
                  sb           gp, -1(s10) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1815 #start riscv_load_store_rand_instr_stream_1
                  or           a3, a0, a3
                  sll          t3, a0, a1
                  sh           t2, 13(sp)
                  add          a6, s5, s1
                  sra          s9, t1, t5
                  srli         s7, s9, 20
                  sb           s10, 15(sp)
                  srl          zero, a4, a4
                  sb           sp, 16(sp)
                  sll          a5, s8, a3
                  sltu         s4, s6, t1
                  lbu          a7, -12(sp)
                  lb           s5, 2(sp)
                  srl          s6, tp, t3
                  lh           zero, -13(sp)
                  lbu          t2, -4(sp)
                  slli         s6, zero, 31
                  xor          gp, s0, a7
                  lb           a2, -8(sp)
                  sb           s11, 10(sp)
                  andi         a2, zero, 171
                  sb           s8, 2(sp)
                  sb           s3, -4(sp)
                  sb           t5, 16(sp)
                  sltiu        a2, gp, -1807
                  sltu         gp, s4, t3
                  lb           s5, 5(sp)
                  slt          s2, s9, tp
                  sb           sp, -11(sp)
                  nop
                  sra          zero, sp, a1
                  srli         s8, sp, 6
                  lb           a0, -14(sp)
                  or           s8, t0, a6
                  lhu          s11, 7(sp)
                  xor          s4, s10, t4
                  sub          s9, a0, t0
                  srli         s9, s2, 10
                  sra          s8, t0, s0
                  lbu          a6, -4(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_1+1893 #start riscv_load_store_rand_instr_stream_14
                  srli         s11, a7, 8
                  lb           s11, -606(s0)
                  xor          a7, s2, s11
                  sb           s6, -940(s0)
                  lb           t2, -1634(s0)
                  lbu          a7, -96(s0)
                  lui          s7, 244012
                  add          s10, t1, s1
                  sb           s6, -945(s0)
                  lhu          a7, -577(s0)
                  lbu          a2, -20(s0)
                  sb           t3, -264(s0)
                  lbu          t1, -235(s0)
                  sltu         a3, a2, s2
                  lb           s2, -1714(s0)
                  lb           t4, -1739(s0)
                  srl          s8, ra, zero
                  lui          a6, 167930
                  sra          t1, t0, a3
                  sb           t6, -971(s0)
                  sll          a7, a6, gp
                  lbu          gp, -756(s0)
                  lh           a4, -1501(s0)
                  addi         a6, t6, -1957
                  lb           t0, -410(s0)
                  sh           t4, -1205(s0)
                  sltu         a3, t2, s11
                  sb           t1, -482(s0)
                  andi         s3, a1, 756
                  srl          s2, ra, tp
                  sra          s5, s4, t4
                  sb           s7, -411(s0)
                  sub          s2, s7, a6
                  sb           a6, -18(s0)
                  lbu          tp, -836(s0) #end riscv_load_store_rand_instr_stream_14
                  la           t1, region_1+663 #start riscv_load_store_rand_instr_stream_15
                  lw           s3, -27(t1)
                  sb           s2, -92(t1)
                  lb           s9, 68(t1)
                  addi         s1, t2, -1862
                  ori          s7, s6, 287
                  and          tp, a1, a1
                  sb           zero, -102(t1)
                  slt          zero, s9, s2
                  sb           t2, -132(t1)
                  ori          s5, s8, 59
                  ori          s4, a1, 1546
                  xori         t0, s3, 893
                  sb           a1, 38(t1)
                  lui          t0, 130746
                  lui          s10, 528168
                  ori          s8, t3, 412
                  sltiu        a5, t1, 1149
                  xori         s9, a4, -1289
                  lb           a5, 230(t1)
                  lbu          s3, -121(t1)
                  sh           s4, 7(t1)
                  lb           a6, 11(t1) #end riscv_load_store_rand_instr_stream_15
                  la           sp, region_1+1577 #start riscv_load_store_rand_instr_stream_7
                  lb           s8, -1436(sp)
                  sltiu        s11, a5, 1325
                  sh           gp, -469(sp)
                  xor          a7, s9, s5
                  sb           a3, -807(sp)
                  sh           zero, -165(sp)
                  slli         zero, gp, 8
                  lbu          s6, -352(sp)
                  sb           a0, -27(sp)
                  lw           a0, -125(sp)
                  lb           s2, -326(sp)
                  sub          gp, ra, t5
                  lbu          s0, -1450(sp)
                  sb           s6, -1078(sp)
                  lb           s8, -63(sp)
                  nop
                  sltu         s9, s2, s4
                  addi         s8, s11, 1290
                  andi         s7, s2, -287
                  sw           s6, -1157(sp)
                  srai         s1, ra, 14
                  auipc        gp, 376497
                  addi         s9, a3, 1651
                  sb           t3, -1176(sp)
                  lbu          t1, 367(sp)
                  sub          s10, a7, t3
                  lhu          zero, -395(sp)
                  srai         t3, tp, 11
                  sb           s7, -1022(sp)
                  srl          t4, t1, t0
                  sll          s8, tp, s6
                  slli         s11, s0, 4
                  lhu          tp, -1555(sp)
                  auipc        tp, 109823
                  lhu          s2, -1001(sp)
                  andi         a0, t1, -301
                  srai         s10, s4, 28
                  andi         tp, s5, -1163
                  nop
                  add          s11, a0, t4
                  lbu          s1, -1324(sp)
                  srl          a4, a5, s1
                  sll          ra, a5, a7
                  lh           a4, 261(sp)
                  lui          t1, 349733
                  addi         t1, zero, 640
                  lb           ra, -1242(sp)
                  nop
                  auipc        ra, 1023752
                  add          s9, s5, tp
                  lh           s6, 141(sp)
                  lhu          a4, 141(sp) #end riscv_load_store_rand_instr_stream_7
                  la           s1, region_0+1253 #start riscv_load_store_rand_instr_stream_6
                  lh           t3, -5(s1)
                  xori         s3, s4, 396
                  sb           a1, -16(s1)
                  slt          s2, t0, gp
                  sltu         s10, s10, a3
                  auipc        s3, 798585
                  lb           gp, -8(s1)
                  sh           tp, -1(s1)
                  auipc        s2, 378691
                  sb           a2, 11(s1)
                  sltiu        s4, sp, 1918
                  sh           tp, 7(s1)
                  lbu          s11, -11(s1)
                  sb           s11, -8(s1)
                  lb           s10, 12(s1)
                  sb           gp, -12(s1)
                  slli         zero, t2, 0
                  lb           s9, -7(s1)
                  lui          sp, 386646
                  lh           s6, 9(s1)
                  xori         t2, s5, 91
                  lh           a4, 1(s1)
                  lbu          tp, -2(s1)
                  sh           s0, -13(s1)
                  or           s10, s6, a3
                  lb           s10, 16(s1)
                  and          a2, s4, a6
                  nop
                  lbu          s9, 14(s1)
                  auipc        s3, 1021549
                  slli         t1, t5, 23
                  andi         s7, a6, 173
                  sll          a4, zero, tp
                  lbu          s8, -6(s1)
                  lbu          t0, 7(s1)
                  sw           gp, -9(s1)
                  lb           a2, 2(s1)
                  and          zero, a4, s5
                  lui          gp, 248457
                  lb           a4, 16(s1)
                  lbu          s9, 12(s1)
                  srai         s9, a5, 20
                  addi         a7, a3, 731
                  lbu          gp, 9(s1)
                  sh           s2, -15(s1)
                  lb           s4, -16(s1)
                  sb           sp, -7(s1)
                  lb           tp, 10(s1)
                  lb           s9, 12(s1)
                  add          s0, s7, t2
                  andi         t2, t4, -1712
                  ori          t1, s9, -731
                  sub          s3, a3, s1
                  sh           s0, -11(s1) #end riscv_load_store_rand_instr_stream_6
                  la           s7, region_1+927 #start riscv_load_store_rand_instr_stream_0
                  sb           a5, -31(s7)
                  lb           s2, 64(s7)
                  lb           ra, -36(s7)
                  sltu         gp, zero, zero
                  slli         ra, a2, 9
                  sh           t0, -13(s7)
                  slt          s3, a4, a3
                  lb           s9, 4(s7)
                  lbu          a2, 19(s7)
                  lb           a4, -26(s7)
                  sb           a6, 46(s7)
                  lbu          s1, -37(s7)
                  nop
                  lbu          a6, -30(s7)
                  sb           t1, 48(s7)
                  lbu          zero, 50(s7)
                  sb           a2, 12(s7)
                  sltu         t0, s1, s4
                  slti         t0, t2, -322
                  addi         s9, a0, -324
                  lbu          a2, -28(s7)
                  addi         s0, a3, 1060
                  srl          gp, t0, s2
                  slti         gp, ra, 328
                  slli         s4, s7, 28
                  nop
                  sra          t3, s8, tp
                  sra          a2, t2, tp
                  nop
                  xor          s9, s6, s8
                  srai         zero, s3, 14
                  and          gp, zero, s0
                  lbu          sp, -26(s7)
                  sb           s6, -8(s7)
                  or           t3, s6, t1
                  sh           t5, -61(s7)
                  sw           a5, -35(s7)
                  xori         s1, t6, -1013
                  lh           tp, 39(s7)
                  lb           a5, -34(s7)
                  lhu          gp, -41(s7)
                  sub          s0, s4, sp
                  lb           a0, 61(s7)
                  sh           s3, -39(s7)
                  or           gp, sp, t6
                  lhu          ra, 49(s7)
                  sra          t1, t5, s1
                  sb           a0, -45(s7)
                  nop
                  xor          t1, s8, s5
                  lb           s2, -40(s7)
                  lhu          s3, 3(s7) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+1566 #start riscv_load_store_rand_instr_stream_16
                  sh           t5, -372(s7)
                  lb           s11, -814(s7)
                  lb           a3, -613(s7)
                  sltu         a7, s5, s10
                  lhu          t1, -1336(s7)
                  auipc        a4, 250509
                  xori         ra, s11, -1243
                  lb           a0, -1047(s7)
                  lb           a4, 101(s7)
                  and          zero, a2, a2
                  lb           a2, -1443(s7)
                  slt          a3, sp, t5
                  lh           s9, -760(s7)
                  xori         t2, zero, 751
                  srli         sp, t6, 0
                  lh           ra, -1532(s7)
                  lbu          a3, 79(s7)
                  lhu          s11, -804(s7)
                  sb           a0, 14(s7)
                  or           a2, t1, t0
                  sb           s1, -1472(s7)
                  xori         a2, t5, -1096
                  lb           a2, -761(s7)
                  lhu          s5, 30(s7)
                  slli         gp, t6, 7
                  srli         s5, t5, 19
                  lb           t3, -1251(s7)
                  sw           ra, -58(s7)
                  lh           s8, -1160(s7)
                  xori         s5, s11, 1173
                  lui          tp, 43698
                  slt          t4, t2, s9
                  sltu         s8, ra, s3
                  auipc        t4, 670704
                  sll          s6, t5, a2
                  lui          a6, 967053
                  add          a2, s3, s6
                  sb           s6, -1537(s7) #end riscv_load_store_rand_instr_stream_16
                  la           s3, region_1+1498 #start riscv_load_store_rand_instr_stream_10
                  sw           a4, 22(s3)
                  lbu          a0, -61(s3)
                  srl          t3, s9, s9
                  sw           a1, -30(s3)
                  lb           s10, 48(s3)
                  sra          a4, t0, s5
                  lbu          t0, 55(s3)
                  lbu          s2, 11(s3)
                  ori          a3, s11, 1454
                  lbu          a7, 39(s3)
                  lhu          s7, -6(s3)
                  lb           sp, 22(s3)
                  sb           s10, -26(s3)
                  nop
                  xori         s4, a0, -592
                  srl          s11, s5, a2
                  sb           a6, -58(s3)
                  sra          s1, s6, a6
                  xori         s8, s0, 1073
                  slli         a4, sp, 27
                  xor          t1, t2, s0
                  lbu          s8, 17(s3)
                  nop
                  sltu         a0, s11, s6
                  lb           s8, 20(s3)
                  lbu          a2, 35(s3)
                  ori          t2, t5, -1850
                  addi         t4, a1, -711
                  xor          ra, t0, s5
                  lh           t4, -4(s3)
                  sb           s8, -61(s3)
                  ori          s6, s9, 1258
                  sb           s7, 33(s3)
                  or           a2, a2, a4
                  lb           zero, -59(s3)
                  srai         s1, t0, 18
                  lbu          t0, 49(s3)
                  lbu          gp, 46(s3)
                  andi         sp, t6, -1083
                  slt          a3, ra, s1
                  lbu          t1, -35(s3)
                  auipc        s9, 1045714
                  lh           tp, -24(s3)
                  sh           gp, 2(s3)
                  sra          s6, s11, t6
                  lb           s6, 60(s3)
                  sltiu        s1, s1, 335
                  addi         t1, t6, -424
                  sltu         sp, a4, a6
                  or           a6, a6, t1
                  lbu          t0, -25(s3)
                  lhu          s8, -6(s3) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+511 #start riscv_load_store_rand_instr_stream_17
                  sh           a6, 57(sp)
                  or           s0, tp, s8
                  add          a7, s1, ra
                  slli         s0, s5, 11
                  lhu          a2, -33(sp)
                  lbu          s11, 12(sp)
                  srai         s3, s5, 27
                  lbu          s10, 45(sp)
                  and          tp, s11, s6
                  sb           s8, 6(sp)
                  slt          s9, s5, a5
                  slli         gp, a7, 1
                  and          t1, t6, s6
                  lui          t2, 115452
                  lb           s4, 48(sp)
                  sb           s10, -55(sp)
                  lbu          s9, 64(sp)
                  xori         gp, s10, 392
                  xori         a2, s11, -592
                  andi         a2, zero, -1174
                  add          s7, t2, a6
                  ori          s2, t0, -1081
                  lhu          t2, 5(sp)
                  lbu          gp, 33(sp)
                  srai         t1, zero, 15
                  lb           t0, -50(sp)
                  sltiu        t4, a3, -1183
                  auipc        s0, 524350
                  lhu          s3, 41(sp)
                  slt          s10, ra, a0
                  slli         s11, s5, 9
                  slti         a5, a0, -241
                  lb           s4, 64(sp)
                  lbu          s9, 32(sp)
                  srli         s5, zero, 15
                  ori          tp, s5, 521
                  nop
                  lbu          s8, -20(sp)
                  sll          ra, s5, t0
                  lui          a6, 956674
                  srl          t4, s0, s0
                  or           t0, s3, s9
                  xori         s0, t2, -1265
                  sll          a6, s4, s5
                  srai         t3, s9, 23
                  lb           t4, 14(sp) #end riscv_load_store_rand_instr_stream_17
                  la           a4, region_1+157 #start riscv_load_store_rand_instr_stream_11
                  ori          a6, s6, 1905
                  lui          s3, 740422
                  lb           s1, 12(a4)
                  ori          t3, s0, -964
                  xori         t1, tp, -961
                  nop
                  and          t1, zero, a3
                  lbu          s7, 5(a4)
                  lb           s4, 13(a4)
                  sb           a7, 7(a4)
                  lh           s9, 1(a4)
                  lb           s8, -12(a4)
                  sh           a6, -5(a4)
                  xori         a7, t1, -2043
                  xori         t0, s0, -736
                  lbu          t3, 14(a4)
                  srli         s10, t3, 23
                  sltiu        s4, a1, 252
                  lhu          a0, 13(a4)
                  sb           a4, 11(a4)
                  slli         zero, a1, 16
                  add          t0, t4, a0
                  lbu          t2, 13(a4)
                  srli         tp, s1, 1
                  sb           gp, -16(a4)
                  lbu          s6, -2(a4)
                  lbu          a6, -2(a4)
                  srl          a7, t3, s10
                  lw           t1, 3(a4)
                  lhu          a5, -7(a4)
                  sll          s5, t2, a7
                  lhu          zero, -9(a4)
                  sb           a3, 6(a4)
                  sltu         s6, s6, tp
                  srli         a2, a6, 20
                  lui          s7, 388258
                  lh           t0, -13(a4)
                  sra          a3, s8, a1
                  lbu          t3, -3(a4)
                  lbu          s2, 7(a4)
                  lhu          a3, -13(a4) #end riscv_load_store_rand_instr_stream_11
                  la           s2, region_1+868 #start riscv_load_store_rand_instr_stream_3
                  sub          ra, s2, s2
                  srai         s7, s11, 7
                  lh           t4, -260(s2)
                  lhu          s6, -630(s2)
                  sb           t5, -381(s2)
                  sb           t2, -6(s2)
                  lh           a3, 284(s2)
                  lhu          t1, -668(s2)
                  lbu          s8, 365(s2)
                  sra          a0, a5, s1
                  lui          s4, 514076
                  sb           zero, -111(s2)
                  lbu          t2, 487(s2)
                  slt          s6, a0, t1
                  lb           s10, -496(s2)
                  ori          gp, gp, 1866
                  xor          s5, s6, s6
                  sb           t6, -429(s2)
                  lbu          s7, 1013(s2)
                  lhu          s1, 952(s2)
                  or           ra, t2, s2
                  andi         t1, tp, 1910
                  sb           a6, 156(s2)
                  slt          s0, sp, a6
                  sub          a0, s5, tp
                  lbu          t2, -57(s2)
                  sb           zero, -376(s2)
                  addi         s11, a1, -639
                  sb           a2, 847(s2)
                  auipc        s11, 791761
                  and          s7, s11, tp
                  sb           a1, -692(s2)
                  lbu          a6, -19(s2)
                  sltu         a3, t5, a3
                  lbu          ra, -837(s2)
                  lb           t1, -42(s2)
                  and          s3, s9, sp
                  sb           a4, 1112(s2)
                  srai         s11, a4, 17
                  lh           a0, 680(s2)
                  nop
                  lui          a4, 142442
                  lb           gp, 195(s2)
                  lb           s9, 20(s2)
                  sltu         zero, s5, t5
                  lb           s3, 967(s2) #end riscv_load_store_rand_instr_stream_3
                  lui          t4, 28504
                  bne          zero, a6, 10f
                  slt          a2, s5, a4
                  sra          a7, s7, zero
                  sll          a7, t6, s7
                  andi         s8, s4, -426
                  lui          a0, 978516
                  addi         s2, gp, 625
                  or           t0, gp, s10
                  srl          t1, zero, tp
10:               andi         s6, zero, 1736
                  ori          tp, t5, -1381
                  srli         s0, zero, 0
                  bge          s0, a4, 14f
14:               slt          s0, s5, a1
                  xor          s11, a1, tp
                  bltu         t4, a4, 35f
                  auipc        tp, 300064
                  blt          s0, s7, 23f
                  slt          t4, t6, s10
                  sll          zero, gp, s2
                  and          s11, gp, t0
                  sub          sp, a3, t1
23:               and          t3, t1, s7
                  ori          s0, t2, 1334
                  slt          tp, a5, a0
                  xori         a6, t1, 1845
                  and          a2, s1, s6
                  and          t2, s4, gp
                  ori          t2, sp, 1093
                  bgeu         a2, s3, 40f
                  addi         t2, a6, -1751
                  bgeu         t1, zero, 34f
                  and          gp, s8, s4
34:               srli         a5, s5, 26
35:               sub          s8, s4, s3
                  xor          s8, zero, s2
                  slli         s11, s10, 11
                  srli         a4, t4, 19
                  lui          s1, 422535
40:               or           a7, s4, a3
                  andi         s1, s8, -636
                  lui          zero, 647006
                  blt          a7, s5, 51f
                  bne          gp, s11, 50f
                  sltu         s5, a4, t2
                  auipc        a7, 721317
                  bgeu         t4, t0, 63f
                  andi         s0, s1, -161
                  bge          s2, a3, 52f
50:               lui          s6, 787976
51:               srli         t3, a5, 11
52:               srl          ra, a2, a5
                  sra          t1, t2, s11
                  slti         s6, s8, -1246
                  or           s1, t5, a7
                  slli         tp, s11, 26
                  add          s5, t6, s10
                  xor          gp, a2, a3
                  bne          t5, a2, 65f
                  andi         s5, t1, 386
                  bltu         a1, s1, 68f
                  lui          a4, 139723
63:               sra          tp, s11, sp
                  add          s0, a7, s0
65:               nop
                  sll          s8, gp, s2
                  sra          s11, s4, s10
68:               blt          s7, s4, 88f
                  slt          s8, t0, a7
                  or           t1, t1, t5
                  sltu         zero, s10, ra
                  slti         s9, s5, -1329
                  auipc        s1, 473451
                  bltu         gp, s7, 91f
                  ori          t4, s10, 904
                  slli         s1, s6, 7
                  sll          a7, s11, a2
                  lui          a0, 823304
                  sltu         t2, tp, a3
                  slti         s11, s6, 805
                  xori         t0, a5, -1165
                  andi         zero, s3, -1382
                  blt          s4, sp, 97f
                  blt          s9, s11, 90f
                  sltiu        t2, t5, 414
                  auipc        s6, 645476
                  and          a6, t4, s10
88:               srli         a6, a4, 30
                  srai         s5, gp, 8
90:               ori          s4, t6, -1745
91:               andi         a0, ra, 1857
                  beq          s7, s1, 93f
93:               xori         ra, ra, -1417
                  sltiu        t3, s3, 1711
                  slt          s10, s4, tp
                  sll          tp, s9, ra
97:               ori          a4, s3, 787
                  and          a0, tp, a1
                  sub          ra, s0, s5
                  bne          s0, t1, 113f
                  blt          t1, s10, 109f
                  nop
                  sltu         s10, a5, t5
                  beq          a5, s9, 107f
                  beq          a5, s3, 115f
                  srai         t2, s4, 7
107:              bgeu         s11, t1, 124f
                  and          t2, t0, s1
109:              beq          a6, s3, 116f
                  sll          s3, s3, a1
                  slli         s5, s5, 17
                  ori          sp, t5, 450
113:              srli         sp, t1, 19
                  beq          a3, t6, 134f
115:              andi         s3, s7, -1905
116:              sra          a5, tp, a6
                  xori         a3, s7, 752
                  bltu         sp, a4, 119f
119:              auipc        s8, 225418
                  or           zero, gp, s10
                  srl          t1, a6, a5
                  slli         zero, s5, 19
                  sub          zero, s3, s2
124:              xori         s6, s3, 1833
                  add          a2, gp, t6
                  beq          s8, s11, 146f
                  lui          t2, 438919
                  slli         a0, s4, 19
                  or           tp, t1, a2
                  sub          t4, a7, t3
                  sltu         s11, gp, s6
                  blt          t2, s11, 137f
                  add          a6, s4, t3
134:              auipc        gp, 21452
                  auipc        s10, 750756
                  xor          t2, ra, a4
137:              srli         s4, a2, 18
                  lui          gp, 736374
                  sra          zero, t4, s4
                  bgeu         a2, s2, 151f
                  sub          s2, s11, a3
                  sra          t2, s2, s6
                  xori         a2, s8, 271
                  srl          s10, t2, s5
                  addi         s3, s9, 1189
146:              bge          a1, t6, 160f
                  srli         s9, a2, 0
                  beq          t4, a0, 159f
                  nop
                  bltu         s8, t0, 167f
151:              andi         tp, a7, -1788
                  sltiu        s2, s0, -1839
                  slli         s2, s6, 21
                  slli         a6, t5, 23
                  xori         gp, a5, 1597
                  and          gp, s8, s11
                  srl          s8, zero, a7
                  slt          s9, t3, gp
159:              nop
160:              blt          t1, s11, 180f
                  ori          a4, s3, -409
                  slti         s11, s5, 1531
                  srai         a4, t1, 15
                  auipc        sp, 380618
                  addi         t0, s2, 1822
                  srl          t1, s3, a7
167:              blt          s0, s4, 177f
                  sltu         s11, t2, s0
                  bge          s11, s3, 176f
                  srai         s2, ra, 13
                  slt          t3, t3, t3
                  bne          zero, t4, 177f
                  beq          a2, s8, 176f
                  bgeu         s10, a0, 188f
                  sltiu        gp, a3, 853
176:              bgeu         t4, a1, 181f
177:              xori         zero, s2, -1266
                  xor          s3, a4, a0
                  srl          sp, a0, s8
180:              beq          s4, s8, 200f
181:              bge          a4, s4, 197f
                  sub          tp, s9, s3
                  auipc        s7, 231128
                  slli         t1, gp, 9
                  andi         s0, gp, 1521
                  addi         a7, s0, -133
                  srli         t4, s1, 24
188:              auipc        t3, 148054
                  slt          t0, s1, t6
                  bge          s9, tp, 209f
                  sll          t3, s5, s10
                  lui          t2, 1035463
                  bge          t5, t1, 199f
                  addi         s11, a5, 1482
                  bne          s3, s7, 206f
                  slt          t2, gp, tp
197:              bge          gp, s7, 217f
                  or           a2, sp, s8
199:              slt          s0, a6, a2
200:              blt          t4, t4, 203f
                  srai         s8, s2, 15
                  addi         s2, s3, 232
203:              sltu         s3, a6, ra
                  sub          zero, gp, sp
                  andi         sp, s5, -578
206:              lui          s4, 963608
                  add          s8, s9, a5
                  sub          ra, t6, s6
209:              slt          t4, a4, a3
                  slt          s6, t4, s9
                  srl          a2, a5, tp
                  xor          a6, s0, ra
                  bgeu         gp, a3, 222f
                  sll          a5, a1, a0
                  srl          zero, t4, a2
                  slti         t1, s9, 1753
217:              add          a2, sp, a1
                  or           ra, s3, t0
                  slli         a5, a1, 9
                  sltu         s10, s7, s6
                  sra          zero, s11, s10
222:              add          a4, s11, a7
                  add          t0, t6, s7
                  lui          a7, 813308
                  bne          a2, t0, 242f
                  nop
                  lui          s5, 45638
                  andi         s7, a6, -1346
                  sltu         a3, s10, ra
                  lui          zero, 614680
                  bge          s4, s0, 245f
                  lui          s7, 216074
                  sll          a2, t2, zero
                  add          s4, a2, gp
                  sltu         s9, a7, s7
                  bne          s3, tp, 247f
                  srli         s9, a7, 27
                  auipc        s3, 106610
                  bltu         s6, a1, 240f
240:              sll          t4, a0, s11
                  bltu         s6, tp, 247f
242:              blt          sp, t3, 250f
                  ori          s11, s1, -1054
                  sll          t1, s7, ra
245:              ori          s4, t6, 1993
                  xori         zero, s8, 1129
247:              slli         s10, s1, 11
                  srai         a2, a4, 9
                  lui          a4, 245101
250:              add          s6, t3, t5
                  slli         a4, sp, 18
                  bltu         s3, sp, 265f
                  xor          s0, s6, t2
                  ori          t1, t2, 43
                  xor          t0, s2, a5
                  sra          s2, s9, s5
                  sltu         s4, s6, a4
                  sra          s5, s9, a3
                  and          a2, s1, a2
                  addi         s1, t5, -1476
                  xori         s11, a1, -174
                  blt          s7, t4, 272f
                  auipc        s3, 708916
                  sltu         t2, s2, s8
265:              addi         s8, t6, -1545
                  xor          a6, t1, a7
                  slli         s9, a7, 4
                  bne          s0, t1, 269f
269:              bgeu         a4, s3, 275f
                  slti         a3, t1, 284
                  srli         s10, gp, 22
272:              nop
                  add          t2, t5, s5
                  ori          a7, a1, 1158
275:              slt          t4, s0, gp
                  andi         s2, ra, -345
                  and          t4, t0, s2
                  srl          a2, s9, a2
                  sra          t3, a6, t2
                  slti         s1, s2, 939
                  xor          a4, s2, t5
                  sll          a2, s7, s0
                  add          s0, t5, zero
                  auipc        s11, 941799
                  auipc        t2, 404330
                  addi         s4, t5, 193
                  slli         zero, s6, 24
                  addi         ra, s6, 838
                  sltiu        a3, s8, 1320
                  blt          t5, a3, 298f
                  bge          t6, s7, 292f
292:              srai         a6, a3, 6
                  srai         a5, s4, 15
                  nop
                  beq          a2, t3, 297f
                  srli         a5, zero, 0
297:              srai         t4, t4, 16
298:              xori         gp, a1, 1380
                  nop
                  addi         t0, zero, -1645
                  nop
                  sra          s2, s8, t2
                  beq          a2, gp, 310f
                  xor          zero, s3, t4
                  sub          zero, s5, sp
                  beq          s10, zero, 313f
                  or           s5, a5, s4
                  sra          s5, a3, s5
                  sltu         a5, s9, a4
310:              auipc        s3, 102845
                  lui          t3, 854405
                  slli         s6, a1, 4
313:              sll          ra, s9, t0
                  lui          sp, 386715
                  sll          s11, s1, s4
                  and          sp, s10, a6
                  auipc        s10, 753530
                  sra          s7, t0, s3
                  slti         a6, a4, 1675
                  sltu         t1, s11, gp
                  sltiu        a7, tp, 324
                  srl          a4, ra, a1
                  sub          ra, t4, sp
                  blt          s1, s10, 332f
                  ori          t0, a4, -1893
                  bltu         s0, t0, 329f
                  sltu         s4, sp, s5
                  slt          t0, s2, t6
329:              and          s1, t6, s0
                  sltu         s3, t2, a6
                  bgeu         zero, a3, 338f
332:              slt          s3, s5, s0
                  slt          s0, a6, s4
                  beq          s11, ra, 347f
                  or           s2, s11, t4
                  and          a4, s7, zero
                  sltiu        s9, s4, -1114
338:              blt          a7, s3, 349f
                  lui          s8, 5905
                  blt          ra, s5, 345f
                  andi         t0, s5, -1407
                  nop
                  bgeu         s8, a7, 360f
                  srai         s0, a0, 8
345:              and          s2, s5, t5
                  sltiu        tp, t0, 1499
347:              auipc        a2, 269241
                  srli         a0, s4, 0
349:              auipc        s7, 600725
                  slti         s5, t3, 612
                  sra          gp, a2, a0
                  andi         s5, a4, 968
                  srl          a5, a2, t6
                  bltu         t5, a4, 355f
355:              bgeu         s2, s11, 360f
                  slti         a2, s6, -257
                  or           s10, s10, t6
                  andi         gp, a6, 457
                  srli         s1, s3, 28
360:              sub          s0, a2, gp
                  sltu         t0, gp, t3
                  sub          t2, s3, t5
                  srai         s1, a4, 23
                  and          gp, a0, a7
                  srai         a7, sp, 20
                  auipc        tp, 304095
                  sra          a3, t4, gp
                  beq          tp, s0, 371f
                  or           a7, s6, t6
                  sll          s1, sp, gp
371:              slti         s2, s7, -273
                  sltu         t0, gp, s2
                  srai         t1, s3, 6
                  xor          ra, t3, s1
                  add          tp, s11, a1
                  or           s0, s7, a2
                  nop
                  bgeu         t2, a4, 395f
                  add          a6, s9, gp
                  sltu         gp, t3, a7
                  sltu         sp, zero, s3
                  srli         a4, s1, 15
                  slt          gp, s2, t4
                  xor          s4, s6, s0
                  andi         gp, s3, -186
                  sll          s4, s9, a3
                  sltu         s2, s1, s1
                  xor          zero, zero, s3
                  ori          s11, tp, -1389
                  slli         s1, a3, 0
                  beq          t4, s4, 410f
                  andi         s6, t3, -223
                  xor          ra, a3, t3
                  bltu         ra, s2, 405f
395:              slti         ra, tp, 379
                  slti         sp, s2, 1293
                  sll          s0, s9, sp
                  sll          t3, a4, a6
                  or           s7, a5, s5
                  and          s11, t4, a2
                  andi         s0, a4, -1256
                  auipc        a5, 559561
                  ori          a3, ra, 732
                  slli         zero, s10, 25
405:              auipc        s5, 201171
                  beq          a2, t6, 407f
407:              slti         ra, a1, 742
                  bgeu         s4, a0, 414f
                  sub          tp, zero, s9
410:              slli         s9, zero, 2
                  addi         tp, s5, -270
                  lui          t2, 819386
                  bne          sp, s3, 422f
414:              or           t1, s8, a5
                  lui          a3, 789421
                  sll          a3, tp, ra
                  xor          s5, ra, tp
                  xor          s8, a1, s9
                  bgeu         s11, s7, 420f
420:              sra          s5, a7, a1
                  sltu         s7, t6, t1
422:              andi         a7, s8, -961
                  andi         s9, a7, -444
                  bne          a2, t2, 444f
                  slt          sp, gp, t0
                  sltu         s7, t5, s7
                  sll          t3, s0, a1
                  srai         a2, s2, 9
                  bltu         s7, s11, 449f
                  beq          s9, t1, 432f
                  ori          zero, t2, 1498
432:              or           s10, a5, t0
                  xor          ra, a4, t5
                  xori         s8, a7, -1984
                  srl          t4, a0, t0
                  slli         gp, a7, 0
                  auipc        a3, 943569
                  andi         t3, a2, 1169
                  bge          s2, zero, 447f
                  sra          t0, a0, a4
                  nop
                  bltu         zero, a2, 452f
                  bge          s10, s1, 449f
444:              sra          a4, s3, t0
                  slli         ra, s4, 20
                  xori         s7, s9, 854
447:              bge          s0, tp, 457f
                  sltiu        s4, a3, 1098
449:              addi         a2, a1, -4
                  sll          s4, s6, s0
                  srl          s10, zero, s7
452:              srl          ra, t0, ra
                  bltu         t5, s2, 467f
                  lui          t3, 479907
                  srai         ra, t5, 8
                  srl          s2, t0, t1
457:              sltiu        s8, t3, 931
                  ori          s8, t0, -1463
                  xori         a0, s0, 955
                  beq          a4, t3, 476f
                  addi         ra, s5, -1453
                  nop
                  beq          s7, a1, 469f
                  beq          s7, s10, 484f
                  bgeu         s7, t4, 479f
                  sltiu        a6, s3, -664
467:              srl          s11, t5, ra
                  sltu         t2, t4, t3
469:              and          sp, a0, a0
                  srl          s7, t3, a4
                  beq          a5, s7, 491f
                  sltiu        t4, gp, -631
                  andi         t0, s8, -1952
                  beq          s11, a1, 490f
                  slt          t0, a1, s11
476:              auipc        s0, 189660
                  srai         t3, a1, 26
                  lui          s4, 151613
479:              slt          a4, t0, s10
                  add          s9, t0, t3
                  blt          t4, t3, 487f
                  ori          tp, s10, 562
                  slt          s8, a4, t4
484:              bltu         ra, s4, 494f
                  bne          s7, s2, 502f
                  srl          s1, sp, ra
487:              slti         s2, s2, 1940
                  sub          t4, gp, s1
                  sltu         t1, tp, a0
490:              auipc        s4, 519805
491:              xor          t1, a6, a7
                  sltu         s0, a4, a4
                  slt          s5, t3, t5
494:              bgeu         t5, sp, 508f
                  slt          a5, t5, a6
                  sub          s7, a4, a1
                  la           sp, sub_1
                  addi         sp, sp, 506
                  sltiu        s8, a6, 1419
                  blt          a5, a4, main_j2 #branch to jump instr
                  slti         zero, a0, 1603
                  sub          t4, s8, ra
                  srai         s9, s0, 23
                  xori         s4, t5, -1737
                  sra          a0, s10, s1
                  auipc        gp, 719258
main_j2:          jalr         ra, sp, -505 #jump main -> sub_1
                  nop
                  beq          s5, s2, 504f
                  la           t1, region_0+851 #start riscv_load_store_rand_instr_stream_5
                  sb           gp, 9(t1)
                  lbu          tp, -13(t1)
                  auipc        a2, 393534
                  add          s6, a2, a7
                  lbu          t4, -3(t1)
                  xor          t3, s3, s2
                  sltu         s8, t0, s10
                  sb           gp, 11(t1)
                  lbu          a6, 13(t1)
                  lb           a0, -8(t1)
                  lb           a2, -11(t1)
                  addi         ra, s5, -1065
                  lh           s8, 3(t1)
                  nop
                  sb           a2, -6(t1)
                  xori         tp, a7, 1691
                  or           a7, t0, gp
                  lhu          a0, 5(t1)
                  sltu         s3, s2, s4
                  lh           gp, 3(t1)
                  lbu          s1, 0(t1)
                  sb           tp, -4(t1)
                  slt          gp, a1, s5
                  andi         t3, a0, 1784
                  ori          gp, s0, -470
                  sb           s6, 8(t1) #end riscv_load_store_rand_instr_stream_5
                  xor          s5, zero, a4
                  beq          t3, gp, 511f
                  srli         s3, a1, 10
502:              slti         gp, s3, -1975
                  bltu         s6, a2, 523f
504:              sub          t1, t4, tp
                  xor          a7, t3, t1
                  srai         zero, s6, 22
                  add          s8, s4, s3
508:              slli         s10, s2, 28
                  slt          s1, t3, s5
                  srli         s3, s9, 21
511:              xor          t1, t0, a6
                  or           t1, s6, t3
                  bge          a6, s1, 521f
                  sltiu        s11, t1, -1329
                  auipc        a2, 528947
                  slt          s7, a4, s6
                  slt          s3, t3, t1
                  sltiu        t4, a3, 201
                  and          s9, tp, s9
                  bne          a7, s1, 525f
521:              sll          s0, s7, s11
                  srl          t1, ra, s6
523:              nop
                  bgeu         s3, zero, 544f
525:              slli         a0, tp, 22
                  sll          sp, a1, a3
                  bgeu         a5, a2, 541f
                  and          s4, s6, gp
                  beq          a2, a0, 542f
                  slt          t2, t0, t5
                  bgeu         s9, a3, 541f
                  auipc        a2, 940066
                  bltu         a7, s4, 540f
                  srl          tp, s1, a1
                  sltu         tp, a4, s10
                  xor          t1, a1, a7
                  sll          t4, zero, s1
                  bne          s10, t3, 539f
539:              xor          a5, t3, s0
540:              srl          a0, tp, s11
541:              srli         a2, a1, 1
542:              slli         a3, a6, 11
                  slli         s6, s5, 1
544:              addi         ra, s5, 1615
                  sltu         tp, tp, gp
                  bne          ra, s3, 549f
                  addi         t3, sp, 1559
                  bgeu         s7, a3, 567f
549:              sltiu        t2, t6, 1339
                  bne          s8, t4, 559f
                  sll          s0, s6, zero
                  sll          t0, a5, s7
                  sub          gp, t5, s10
                  sltiu        s3, s7, 1587
                  nop
                  bltu         a2, a0, 562f
                  lui          a4, 233396
                  blt          s2, a4, 565f
559:              add          s2, t5, a4
                  bge          t0, s10, 563f
                  sltu         t4, a4, t3
562:              lui          s11, 950292
563:              add          a5, ra, t6
                  bltu         s6, a4, 565f
565:              sltiu        t3, s10, 25
                  xor          t4, t3, a1
567:              sltu         s6, s11, a7
                  addi         a0, s5, -2012
                  xor          s3, s3, sp
                  sra          s8, s1, t4
                  sra          a5, t2, t2
                  or           t2, tp, t2
                  xor          s3, zero, t6
                  add          s8, s6, t0
                  add          t1, ra, a3
                  andi         s5, t1, 727
                  addi         a3, s9, -1417
                  srli         a5, gp, 25
                  nop
                  or           sp, s9, t6
                  ori          s8, s2, -1215
                  add          tp, s3, t6
                  la           t0, region_1+359 #start riscv_load_store_rand_instr_stream_13
                  lhu          s2, 1215(t0)
                  lb           s3, 592(t0)
                  auipc        s5, 660135
                  addi         t4, a2, -473
                  sltiu        s7, ra, -345
                  srli         a7, s8, 10
                  addi         a5, a3, 635
                  sh           tp, -249(t0)
                  sb           t0, 354(t0)
                  andi         t1, sp, 7
                  sh           t2, 963(t0)
                  slti         s9, ra, 1803
                  lbu          a4, 1118(t0)
                  slti         a2, s10, 1789
                  lhu          s8, 1127(t0)
                  xori         t4, gp, 1443
                  sb           t5, 68(t0)
                  xor          s11, t5, s8
                  sh           s4, -75(t0)
                  srai         t2, gp, 19
                  sll          s11, s2, a6
                  xori         s8, s2, 460
                  sll          s10, t0, s1
                  andi         s0, s9, -374
                  slti         s0, t5, -787
                  andi         s9, tp, 242
                  ori          ra, sp, -497
                  slti         s3, sp, -1630
                  sra          a2, t0, s3
                  lb           s7, 505(t0)
                  or           a4, s1, a7
                  sw           a5, 1493(t0)
                  sb           s8, 1031(t0)
                  add          s10, s8, a3
                  slt          s9, s0, t2
                  sltiu        a7, ra, -1795
                  slti         a7, t5, -475
                  nop
                  lb           sp, 218(t0)
                  sh           t2, 1455(t0)
                  lb           a6, 734(t0)
                  xori         s5, a2, -1447
                  lhu          s4, 393(t0)
                  srl          s4, t1, s0
                  or           s0, s2, t2
                  srli         s9, a6, 23
                  sb           s1, 254(t0)
                  lbu          s1, 313(t0) #end riscv_load_store_rand_instr_stream_13
                  auipc        t3, 619882
                  sll          a6, t4, t2
                  addi         s11, t2, 1793
                  srl          t2, a3, s2
                  bne          tp, zero, 595f
                  srli         s8, t3, 0
                  andi         zero, a6, 314
                  bltu         t4, a1, 601f
                  srli         s2, t0, 0
                  sra          s5, t5, sp
                  and          s3, sp, zero
                  and          s9, s6, s5
595:              addi         s2, a7, 228
                  bgeu         s0, t3, 613f
                  bgeu         s11, s0, 598f
598:              sltiu        s7, t3, -820
                  slli         s9, s6, 6
                  bgeu         s11, sp, 605f
601:              xori         t2, ra, 1758
                  slt          s9, a3, t5
                  sltiu        s9, a5, -975
                  or           t3, s7, gp
605:              srli         t3, t5, 23
                  or           a4, s10, s3
                  andi         a5, zero, -1854
                  sub          a3, a4, t5
                  srli         s4, a7, 28
                  bgeu         s3, a6, 612f
                  beq          gp, s4, 618f
612:              bge          tp, a6, 632f
613:              slti         sp, s4, -1054
                  bne          zero, ra, 619f
                  bne          t3, t3, 616f
616:              blt          s4, gp, 630f
                  auipc        s9, 22826
618:              beq          t0, s5, 638f
619:              andi         t1, ra, -1720
                  addi         t1, a1, -669
                  beq          s10, tp, 631f
                  lui          s6, 718455
                  slti         gp, a3, 832
                  bge          s8, s3, 641f
                  xor          s5, tp, a2
                  la           s2, sub_1
                  srli         a7, a0, 21
                  xor          t2, s4, s9
                  addi         s2, s2, 346
                  add          s10, a2, t5
                  slli         gp, t4, 13
                  xori         tp, s7, 1353
                  and          a6, a0, t6
                  xor          a5, t2, a0
main_j1:          jalr         ra, s2, -345 #jump main -> sub_1
                  ori          t3, zero, 723
                  addi         a4, s3, -457
                  sltu         a0, a2, s7
                  lui          s11, 653483
                  slti         a7, t0, 668
630:              andi         s11, a6, 904
631:              bge          s9, s11, 648f
632:              xori         s6, t0, 1616
                  slt          sp, s8, tp
                  sltiu        s7, s2, 335
                  sra          a3, s11, s1
                  sltiu        t4, t2, -162
                  srli         s3, a5, 18
638:              srai         a5, t0, 8
                  srai         a2, t1, 30
                  and          a3, ra, s5
641:              add          s5, s7, a3
                  srai         s3, sp, 15
                  andi         s4, s9, 1575
                  sra          s9, zero, a1
                  andi         zero, tp, -545
                  srli         a3, ra, 27
                  lui          s11, 798411
648:              srl          zero, a5, t0
                  blt          s1, s3, 655f
                  sltu         ra, sp, s5
                  sll          a7, s10, t0
                  bgeu         sp, s3, 654f
                  lui          s9, 129762
654:              lui          a2, 1007288
655:              srai         s3, gp, 28
                  ori          s0, t2, 1035
                  and          t0, t5, t6
                  nop
                  and          t0, t1, s10
                  srai         a6, a2, 23
                  beq          a5, ra, 664f
                  bgeu         s2, a7, 670f
                  addi         s4, zero, 510
664:              slt          s4, s0, t3
                  xor          s9, s5, a0
                  auipc        t1, 1014544
                  slti         s9, a3, 755
                  blt          t4, t0, 679f
                  ori          a2, t1, -1819
670:              sltiu        s0, a6, -1940
                  beq          s8, tp, 690f
                  add          t1, a0, s1
                  bgeu         s5, sp, 681f
                  sra          s3, s0, s10
                  auipc        s5, 79607
                  xori         s9, s5, 104
                  sltu         a0, s1, s11
                  sll          t0, s1, zero
679:              srli         zero, gp, 6
                  auipc        a4, 128615
681:              or           zero, a7, a2
                  srl          a6, t1, tp
                  lui          s0, 341328
                  sll          t0, s5, s4
                  bltu         tp, t4, 699f
                  bltu         sp, t2, 695f
                  sub          t1, s2, s4
                  sll          s3, s9, t4
                  and          s0, s2, s7
690:              srai         a7, t1, 27
                  ori          s4, s1, -1290
                  bltu         t4, a2, 712f
                  and          t2, t1, s2
                  ori          t2, s1, -1611
695:              addi         s5, s5, 895
                  add          s11, s6, s5
                  bltu         s3, a5, 713f
                  and          t1, t3, s6
699:              xor          sp, t0, s9
                  lui          t0, 49433
                  beq          t1, a5, 711f
                  srli         gp, t6, 12
                  auipc        a6, 764482
                  auipc        a4, 842103
                  bne          s7, s7, 718f
                  blt          s6, a2, 712f
                  sub          s3, a5, t2
                  srai         a3, s5, 7
                  slli         gp, a4, 4
                  addi         s0, a7, 1682
711:              srl          a3, t5, s9
712:              blt          sp, gp, 718f
713:              sra          s7, a6, t6
                  slt          t2, s4, ra
                  bgeu         t6, t2, 716f
716:              andi         s1, t3, -1748
                  xor          zero, a6, s10
718:              slt          s4, s10, gp
                  ori          sp, t0, 503
                  sub          s2, s2, t0
                  add          zero, a6, s7
                  srai         s2, ra, 22
                  add          a4, a0, s8
                  srl          ra, s8, gp
                  andi         a6, a2, 1110
                  blt          t2, a0, 727f
727:              srl          a3, s7, s8
                  xori         zero, s0, -467
                  add          a6, a4, a5
                  andi         a3, s3, 998
                  blt          a0, tp, 742f
                  srli         s8, s6, 29
                  beq          zero, s3, 738f
                  slli         s5, a5, 6
                  auipc        s2, 716737
                  sltu         a7, a7, a0
                  sltu         s5, s10, s2
738:              bge          sp, s5, 741f
                  auipc        s6, 998181
                  bne          t4, t0, 747f
741:              srli         s0, s8, 8
742:              srli         a2, gp, 12
                  sra          a6, a3, gp
                  addi         tp, a6, 662
                  add          ra, a6, s0
                  sltiu        t1, ra, -1156
747:              xori         s9, zero, -544
                  bgeu         s4, t4, 758f
                  bne          a5, a7, 766f
                  or           s3, a1, t2
                  or           sp, zero, s10
                  sll          gp, t6, a4
                  blt          s6, s7, 761f
                  beq          a0, s3, 774f
                  slt          s6, t2, ra
                  la           sp, region_0+1107 #start riscv_load_store_rand_instr_stream_9
                  ori          s2, t1, -430
                  slti         a2, s9, -1451
                  and          a4, s9, s3
                  lbu          t0, 885(sp)
                  add          t4, t3, t0
                  sub          s2, zero, a3
                  sb           t5, -16(sp)
                  lbu          t2, 700(sp)
                  lbu          s0, -850(sp)
                  sltu         s9, s11, a4
                  lb           s1, -385(sp)
                  lbu          t1, -724(sp)
                  srl          t0, ra, ra
                  slt          zero, s5, a1
                  lui          a2, 449097
                  sra          s9, t2, s6
                  sb           zero, -906(sp)
                  lbu          t1, -965(sp)
                  slt          zero, a1, s8
                  or           a4, s0, t1
                  lbu          zero, 444(sp)
                  lb           a2, 604(sp)
                  sra          s5, a1, a0
                  srai         t0, t6, 31
                  srli         t0, t6, 5
                  add          ra, t4, a0
                  xor          s10, s5, t1
                  sltu         zero, a1, zero
                  addi         s4, s8, -745
                  sltiu        a2, s10, 1044
                  or           s11, a4, a1
                  srli         s7, s6, 12
                  lh           s6, -597(sp)
                  lb           s11, 892(sp)
                  sb           s9, 828(sp)
                  sra          s1, s2, a6
                  lbu          a7, -738(sp)
                  lw           a5, 785(sp)
                  andi         tp, a6, 263
                  lbu          tp, 652(sp)
                  auipc        s4, 458250
                  sll          ra, t6, a1
                  sb           sp, 334(sp)
                  slt          a7, ra, s0
                  lb           s1, -76(sp) #end riscv_load_store_rand_instr_stream_9
                  srai         s2, tp, 24
                  xori         a3, a4, 170
758:              xori         zero, a5, 1506
                  sltu         a5, s7, t4
                  nop
761:              sra          s7, t2, zero
                  beq          s9, s1, 765f
                  bge          t0, a6, 782f
                  slti         s10, a5, 163
765:              bltu         s2, a7, 771f
766:              and          a5, s6, t0
                  ori          tp, a4, -729
                  ori          t3, a5, -1245
                  add          t3, a6, s10
                  bgeu         t4, t5, 778f
771:              slli         tp, s5, 3
                  xori         sp, s7, -902
                  sub          a2, s1, a6
774:              add          s3, sp, a4
                  bne          a1, t0, 781f
                  srli         s6, ra, 13
                  sltiu        a7, t6, -579
778:              bltu         s7, ra, 798f
                  bgeu         a6, s6, 780f
780:              add          s6, s11, t1
781:              sltu         zero, sp, t0
782:              lui          a3, 557292
                  slt          a0, t3, a1
                  bge          a3, s1, 789f
                  bne          t2, s1, 786f
786:              or           a3, s0, ra
                  sub          a5, s9, zero
                  xori         s3, s9, -430
789:              bge          a3, a3, 809f
                  srl          s8, a7, s8
                  add          s5, s2, t6
                  srai         t3, zero, 9
                  auipc        s7, 780739
                  and          gp, a5, a5
                  slli         s7, t2, 25
                  sltiu        t2, sp, 388
                  bge          t3, gp, 810f
798:              slli         s2, t1, 14
                  sltiu        t1, s2, 905
                  andi         s8, a3, -1293
                  srai         a7, a7, 30
                  add          s5, s6, tp
                  beq          s3, gp, 805f
                  slt          a3, t3, t0
805:              andi         gp, a1, 1035
                  sltu         gp, s2, s9
                  sltu         s3, tp, s0
                  beq          tp, sp, 818f
809:              ori          t2, a0, -399
810:              andi         t3, s2, 1846
                  beq          t5, a7, 820f
                  bge          sp, t2, 826f
                  srai         a3, s8, 14
                  add          a4, a4, s10
                  or           a6, t5, t3
                  srl          t3, s10, t1
                  ori          a0, s6, 1413
818:              sub          s6, s4, s4
                  auipc        a2, 92073
820:              or           s11, ra, a1
                  bge          gp, a3, 827f
                  or           a7, s8, s0
                  slt          s4, t4, s4
                  or           s10, t2, s3
                  xori         gp, t6, -610
826:              sra          t0, a0, sp
827:              slt          a5, s1, s10
                  lui          a2, 946783
                  srli         a5, s11, 17
                  and          s7, s6, a5
                  sub          gp, t6, a2
                  andi         sp, t5, -2030
                  beq          s11, t2, 840f
                  lui          s10, 32745
                  slti         a3, a4, -441
                  bgeu         s6, s1, 839f
                  xori         sp, t4, -223
                  bne          zero, ra, 854f
839:              slti         t2, s0, -651
840:              sltiu        a3, t6, -477
                  andi         tp, a3, -50
                  ori          s10, s5, 1523
                  sub          tp, a7, s9
                  slti         t3, t0, -149
                  or           tp, s5, t4
                  bgeu         a7, a4, 863f
                  beq          t4, s3, 861f
                  bgeu         ra, s7, 859f
                  addi         s8, a2, -42
                  auipc        t4, 772923
                  bltu         a7, s5, 856f
                  lui          s2, 94439
                  or           s6, s1, a6
854:              sltiu        a5, zero, -1409
                  lui          s10, 650069
856:              lui          t2, 42414
                  blt          s1, a5, 858f
858:              slli         s0, s2, 2
859:              sra          s6, tp, sp
                  sltiu        zero, sp, -1303
861:              sltiu        s2, s3, 1377
                  bne          s0, tp, 873f
863:              bltu         s8, t4, 870f
                  sltu         t2, s0, a2
                  ori          t1, s8, -713
                  srl          gp, a1, t4
                  sub          a7, zero, a4
                  srl          s6, s10, s10
                  bltu         sp, a4, 876f
870:              or           s11, s7, sp
                  ori          s7, s11, 1216
                  sll          a3, a4, a4
873:              sub          s10, s11, t6
                  sra          t3, zero, s10
                  add          t1, tp, s7
876:              slt          s3, a7, t0
                  xori         s5, gp, -851
                  srli         s6, s8, 9
                  sltu         t0, t0, s1
                  sltiu        s10, t2, -1601
                  slti         s7, s10, -179
                  slli         t1, s4, 14
                  beq          t1, a3, 885f
                  xori         a5, s10, -778
885:              xor          t4, t2, t6
                  bgeu         a7, t0, 892f
                  xori         s4, gp, -237
                  ori          s5, t0, 1999
                  beq          zero, ra, 896f
                  srli         s8, s11, 8
                  srli         t3, gp, 4
892:              blt          sp, t2, 893f
893:              auipc        t1, 507785
                  beq          s5, a3, 895f
895:              sltiu        s8, s0, -1386
896:              srai         s10, t1, 23
                  auipc        s5, 350025
                  auipc        t0, 220779
                  sub          s10, s7, t3
                  andi         s10, s10, 1979
                  and          a2, s4, t3
                  sltu         t2, t2, s7
                  sll          t4, t2, s5
                  xori         t0, t0, -354
                  sll          sp, a2, a1
                  xor          s8, a3, t0
                  bge          s6, s8, 912f
                  sltiu        t4, s6, -1307
                  srli         s9, t5, 0
                  lui          tp, 727041
                  auipc        gp, 534399
912:              bgeu         s8, s4, 926f
                  bltu         a3, a1, 929f
                  bge          a5, s5, 934f
                  bne          gp, s1, 934f
                  bne          s11, s2, 933f
                  add          ra, zero, a3
                  sra          zero, sp, s11
                  lui          ra, 437603
                  sltu         t0, s5, ra
                  srai         t3, t3, 9
                  auipc        a3, 1005928
                  sltu         s6, s4, s6
                  blt          t1, a7, 935f
                  slt          t0, gp, s0
926:              bge          sp, sp, 937f
                  sub          tp, a3, a2
                  sra          ra, a1, s4
929:              beq          tp, t0, 939f
                  ori          ra, ra, -1367
                  slt          a2, ra, s7
                  sra          s3, a0, a6
933:              add          s6, t4, s0
934:              sltu         a4, a0, s7
935:              nop
                  slt          s10, s11, s10
937:              ori          s2, a6, -1533
                  xor          a6, s11, s0
939:              add          a3, t1, s8
                  srai         s0, s5, 2
                  auipc        sp, 850369
                  bltu         t2, s2, 951f
                  bgeu         s2, s3, 949f
                  auipc        ra, 514770
                  sll          a7, a2, a1
                  and          t1, s2, t1
                  and          s3, ra, t6
                  bne          a1, s3, 968f
949:              bltu         a6, a7, 963f
                  xori         ra, t4, -1120
951:              beq          a5, t2, 957f
                  bltu         t6, s0, 953f
953:              sll          s9, s11, t1
                  sltiu        t2, a5, 954
                  bltu         gp, a3, 960f
                  and          t3, t6, s3
957:              nop
                  nop
                  auipc        t2, 268216
960:              bgeu         a4, a3, 968f
                  beq          s6, t6, 978f
                  bge          s2, t1, 970f
963:              bgeu         a4, s2, 983f
                  slt          s6, ra, sp
                  add          t4, s5, a4
                  blt          t5, a4, 969f
                  blt          sp, sp, 970f
968:              xor          s6, s5, s2
969:              bge          t1, a6, 979f
970:              srl          t2, t0, a1
                  srai         ra, s6, 8
                  xori         s11, a6, 24
                  lui          s0, 541563
                  addi         t4, a0, -1943
                  blt          gp, t0, 988f
                  bne          a7, t5, 981f
                  beq          a0, zero, 982f
978:              xori         t1, a7, 678
979:              xor          a6, a0, s4
                  slt          t2, a6, s2
981:              addi         s9, t3, -375
982:              srli         a7, a5, 17
983:              xori         s6, s5, 27
                  sltiu        s9, s9, 1705
                  xori         s3, s7, -1007
                  blt          s2, a0, 997f
                  nop
988:              add          s9, t2, t4
                  auipc        s0, 740714
                  and          a0, t0, a7
                  and          zero, t1, s7
                  andi         s4, s7, -785
                  ori          s4, ra, -417
                  add          s11, t2, t4
                  lui          s8, 1047681
                  bne          t0, s8, 999f
997:              slt          a6, s9, a1
                  bne          s3, s2, 1017f
999:              nop
                  ori          sp, t0, -220
                  andi         s5, s5, 1259
                  slt          s8, a2, a7
                  and          a5, s2, t4
                  sltiu        sp, t0, -120
                  sra          a2, s5, s11
                  bne          ra, ra, 1012f
                  slt          t0, s1, a5
                  slli         sp, t1, 10
                  ori          s8, t4, -1579
                  bne          s11, sp, 1017f
                  srai         a0, s8, 20
1012:             sll          gp, a4, s8
                  srl          s9, s6, a6
                  slli         a5, t1, 1
                  slli         a4, t3, 7
                  srli         zero, s10, 3
1017:             bgeu         s2, s7, 1037f
                  bgeu         t4, sp, 1024f
                  bgeu         gp, ra, 1027f
                  slti         s11, t2, -2004
                  bgeu         s5, s1, 1035f
                  ori          a7, s4, -1791
                  bne          s3, s7, 1039f
1024:             auipc        a5, 844284
                  bge          s1, s6, 1042f
                  nop
1027:             or           s6, s9, t0
                  sltiu        t3, t1, 302
                  slt          a6, zero, s6
                  sra          a2, s6, a0
                  blt          t4, s11, 1045f
                  bltu         t6, sp, 1052f
                  bgeu         zero, s10, 1034f
1034:             and          a7, a5, t2
1035:             ori          t2, s9, -1663
                  srai         tp, zero, 16
1037:             bgeu         s11, t6, 1046f
                  bge          s5, s5, 1039f
1039:             xori         gp, s0, 1526
                  beq          a2, a7, 1053f
                  andi         tp, zero, 1998
1042:             add          s11, s8, gp
                  sll          s6, s9, sp
                  slti         s4, a7, 1953
1045:             sub          s10, t6, t2
1046:             or           a5, s9, s0
                  sub          s2, s11, s1
                  blt          s10, a3, 1049f
1049:             slt          s1, t6, s7
                  slli         s0, a3, 24
                  slt          a0, a3, tp
1052:             or           s11, t2, s4
1053:             auipc        s1, 579790
                  blt          s4, tp, 1064f
                  srai         a0, t0, 22
                  srli         a3, t4, 9
                  sub          s2, s8, s4
                  nop
                  slt          a0, gp, t5
                  xor          zero, a1, s0
                  sub          s6, t1, t2
                  andi         a2, s0, 1912
                  beq          a4, a4, 1080f
1064:             ori          a2, s4, 1345
                  slti         s10, t6, 1519
                  slti         t1, a3, -1752
                  or           s6, t3, s9
                  xor          t2, ra, a5
                  and          a4, s8, a7
                  bge          a6, s10, 1078f
                  sll          s8, s9, s2
                  nop
                  srl          a6, a5, s9
                  sltiu        s0, s4, -599
                  sll          s6, s3, s2
                  and          sp, s10, a1
                  add          zero, s10, t4
1078:             sra          s6, t3, s4
                  slti         zero, a5, 660
1080:             bltu         s10, s3, 1086f
                  blt          sp, t4, 1101f
                  sra          a4, s9, gp
                  sub          t1, t1, gp
                  bne          t2, s0, 1086f
                  auipc        t3, 550140
1086:             sltu         a7, s3, tp
                  and          s2, ra, s0
                  bltu         s6, a0, 1095f
                  nop
                  sra          t1, a3, a5
                  slt          s9, zero, s7
                  sll          gp, s8, t4
                  bgeu         a0, t5, 1104f
                  bne          s8, t2, 1104f
1095:             srli         a0, t4, 1
                  bgeu         t3, gp, 1099f
                  sub          s2, s7, s2
                  xori         s10, ra, 295
1099:             and          t2, s8, sp
                  xori         a2, s8, 740
1101:             bge          a2, t5, 1121f
                  sltiu        a5, gp, 1616
                  addi         t4, s5, 1163
1104:             sltu         s0, t6, a3
                  xori         s1, s0, 1497
                  srai         a4, s2, 28
                  or           s0, s1, s6
                  lui          gp, 1033084
                  bgeu         a6, t6, 1110f
1110:             sltiu        t2, a5, 1100
                  ori          zero, sp, 1744
                  xor          t2, t1, s2
                  bne          s6, s10, 1124f
                  sltu         a5, s8, a6
                  andi         s8, a6, 945
                  auipc        s6, 441428
                  nop
                  bgeu         s8, s8, 1121f
                  slt          s0, a3, t2
                  xor          s4, a0, t3
1121:             blt          a1, a0, 1135f
                  ori          a7, s10, -709
                  and          s4, t3, a3
1124:             srli         s10, s10, 13
                  srai         a2, zero, 3
                  srli         t4, t3, 17
                  srai         s11, s8, 30
                  slti         s3, s3, -111
                  slt          s1, a7, a4
                  sltiu        s6, s2, 920
                  slt          a5, gp, s0
                  add          a3, s7, ra
                  bltu         t1, s0, 1140f
                  andi         t3, a5, -461
1135:             slli         gp, s9, 27
                  srai         a5, s11, 31
                  and          s6, s8, a1
                  sub          t3, t6, t0
                  bne          t0, zero, 1144f
1140:             and          s2, t5, t1
                  bgeu         t4, t4, 1161f
                  blt          t2, gp, 1156f
                  nop
1144:             bge          t5, a6, 1150f
                  addi         t1, a6, 1166
                  srl          a5, ra, s2
                  and          s4, t0, s8
                  or           a7, s10, tp
                  blt          tp, t3, 1150f
1150:             lui          zero, 52903
                  xori         t0, t1, -1
                  xor          s11, s2, sp
                  srl          s4, s10, s11
                  nop
                  xor          s1, ra, a3
1156:             andi         s7, s0, 797
                  bge          tp, t1, 1160f
                  bge          s11, zero, 1174f
                  addi         a6, sp, -1439
1160:             add          zero, s0, s2
1161:             addi         s1, s8, -237
                  slt          s1, s10, s2
                  sltu         a5, t3, s5
                  sltu         a6, s1, s4
                  srli         t1, t1, 5
                  bne          s2, s0, 1174f
                  xor          s6, tp, s10
                  bne          a7, s4, 1178f
                  sltiu        zero, a3, 79
                  bgeu         s11, t0, 1177f
                  bne          s0, s10, 1190f
                  lui          a2, 1043327
                  ori          a7, a1, -1819
1174:             srli         a2, a6, 12
                  sll          t3, t1, t1
                  beq          s6, t5, 1193f
1177:             addi         s0, s3, 156
1178:             slt          t1, sp, zero
                  slli         t1, sp, 25
                  sltiu        s9, t0, -295
                  add          a3, t0, a7
                  xori         a4, a6, 1857
                  srli         sp, t2, 8
                  bge          s3, a2, 1195f
                  sub          a4, t5, s2
                  add          s4, tp, a1
                  add          s7, sp, s2
                  xori         s5, s8, 555
                  addi         s5, s11, 1761
1190:             slti         s10, s7, -525
                  auipc        t0, 200953
                  sub          a5, a6, gp
1193:             sll          s4, s3, ra
                  auipc        s8, 118125
1195:             bne          t0, t2, 1197f
                  ori          sp, t1, 686
1197:             sra          a3, s4, s3
                  slli         a0, a3, 3
                  bge          s8, s6, 1204f
                  beq          a2, sp, 1210f
                  slli         ra, t6, 21
                  srai         t2, s7, 20
                  bltu         s9, t6, 1204f
1204:             sub          t2, t6, s6
                  srai         a2, ra, 15
                  blt          t1, sp, 1212f
                  srl          a2, sp, s9
                  srl          a2, t4, t2
                  xori         t0, s8, -957
1210:             beq          s7, a7, 1227f
                  bgeu         s5, s11, 1231f
1212:             or           s7, a1, a4
                  addi         s1, a3, -750
                  andi         s4, s1, -1901
                  auipc        t2, 465162
                  blt          s0, s11, 1225f
                  sra          s0, a4, a6
                  or           sp, s5, s6
                  sub          t3, s0, s8
                  and          a4, s2, a2
                  slli         ra, tp, 1
                  srl          a0, s2, a3
                  beq          a3, t0, 1229f
                  sltiu        t4, t3, -777
1225:             sltiu        a0, t5, -1601
                  blt          sp, s5, 1234f
1227:             slti         a0, a1, -1647
                  sltu         s5, a5, t1
1229:             and          a3, s10, s5
                  xori         a6, t6, 1788
1231:             slli         tp, gp, 9
                  srli         s5, s2, 25
                  bne          s5, t3, 1246f
1234:             xor          zero, tp, a1
                  addi         gp, a5, -659
                  sltu         a4, a3, t3
                  xori         a2, ra, 282
                  auipc        a4, 973193
                  srai         s11, t3, 3
                  and          s5, a0, tp
                  slti         s9, a0, 81
                  slti         s4, t3, 1821
                  bgeu         s5, t1, 1244f
1244:             slt          t1, t2, a6
                  sltiu        t1, ra, 562
1246:             srl          s2, s1, tp
                  blt          s3, a1, 1249f
                  ori          a3, s5, -1148
1249:             auipc        tp, 555463
                  sltu         a0, a4, s4
                  sltiu        s7, tp, 432
                  srli         a4, gp, 31
                  slti         a4, a7, 1571
                  xor          s9, a7, s8
                  auipc        sp, 136309
                  sltiu        s10, t6, -812
                  and          ra, a0, sp
                  bltu         zero, a6, 1271f
                  sltu         sp, s3, t5
                  srl          s10, sp, t0
                  xor          s7, a1, a4
                  sub          a5, a6, s0
                  addi         s10, a3, 136
                  srl          t2, t2, a6
                  srl          ra, s10, s1
                  blt          s2, tp, 1272f
                  slt          s8, zero, zero
                  bltu         s6, s2, 1285f
                  srai         s0, s0, 20
                  add          s3, a4, a6
1271:             sub          a7, s9, t2
1272:             srai         a6, a2, 10
                  andi         s1, s3, 23
                  slt          s10, sp, a7
                  bgeu         a3, t6, 1278f
                  bltu         t1, s4, 1296f
                  or           s4, a7, s7
1278:             sub          s9, s7, t1
                  addi         a3, a3, -1521
                  nop
                  ori          s7, s7, -220
                  sub          sp, t2, s1
                  bne          sp, s10, 1291f
                  addi         s3, a0, -209
1285:             bge          sp, s0, 1305f
                  slt          a5, a7, t5
                  addi         gp, t1, 1352
                  and          s9, zero, t1
                  sltiu        s7, a3, 1520
                  slti         a0, tp, 938
1291:             bgeu         s0, s3, 1294f
                  sll          s5, s0, a0
                  slli         s4, a4, 12
1294:             blt          gp, s11, 1299f
                  nop
1296:             ori          a6, a7, -1011
                  sll          t3, tp, t2
                  sltiu        t1, s2, -1950
1299:             sltu         s8, s11, s11
                  auipc        a7, 857400
                  bgeu         a6, t3, 1315f
                  sub          zero, a0, a2
                  sltiu        a5, t2, -170
                  srl          a2, t2, t0
1305:             sltiu        s11, a2, 1971
                  and          t1, s3, t4
                  addi         gp, s5, 1409
                  slli         a0, s9, 14
                  bltu         t6, a4, 1315f
                  srai         s10, s4, 11
                  add          s1, s7, s9
                  srl          s7, a0, a0
                  blt          ra, s2, 1320f
                  and          a7, a3, a3
1315:             srli         s1, t5, 12
                  sra          gp, t5, a5
                  bgeu         s0, t1, 1327f
                  andi         t4, a4, 1158
                  lui          t4, 592117
1320:             addi         s7, tp, 32
                  lui          a3, 100499
                  bgeu         tp, t5, 1333f
                  bltu         s10, s3, 1340f
                  lui          t1, 908408
                  slli         tp, s9, 4
                  slli         s3, a5, 0
1327:             slli         a6, sp, 27
                  and          ra, t2, s8
                  srl          s7, sp, s10
                  and          a0, s9, t4
                  bltu         sp, a3, 1342f
                  xori         t4, sp, 1113
1333:             and          zero, ra, t0
                  andi         s9, ra, -1769
                  and          s1, s3, s11
                  or           s0, s11, a7
                  auipc        a5, 757450
                  or           gp, t3, s8
                  bgeu         gp, s6, 1348f
1340:             xori         s0, t1, -594
                  xor          t2, gp, s0
1342:             blt          s2, gp, 1356f
                  bge          zero, a2, 1353f
                  bge          t6, t1, 1350f
                  or           t4, a1, s1
                  blt          a2, s6, 1354f
                  sltu         zero, t6, t3
1348:             bne          sp, s10, 1355f
                  blt          a5, a5, 1350f
1350:             srli         s9, s6, 29
                  and          s3, s5, t5
                  or           s3, s3, s3
1353:             srli         s0, tp, 10
1354:             auipc        a2, 346405
1355:             lui          a2, 954633
1356:             nop
                  sra          s3, t3, t1
                  slti         a0, t0, -1304
                  and          s7, t4, s8
                  add          s0, a2, a5
                  and          s1, s7, s11
                  sltu         a4, sp, a2
                  srli         a3, sp, 2
                  nop
                  sltu         t4, a1, a7
                  xor          t1, s1, t4
                  srai         s0, s3, 25
                  bgeu         zero, s2, 1373f
                  or           a4, sp, gp
                  auipc        t0, 499695
                  srli         zero, t2, 1
                  slti         sp, t2, 706
1373:             xori         s3, t0, 202
                  nop
                  bne          sp, s7, 1391f
                  slli         s5, a3, 23
                  sltu         s0, t2, zero
                  slti         zero, s0, -1290
                  slli         s9, a6, 7
                  or           s5, s2, s6
                  slli         s9, sp, 31
                  sll          s8, a6, s9
                  srl          s4, sp, ra
                  ori          a3, a7, -1826
                  sll          a2, s4, ra
                  bltu         a6, s11, 1387f
1387:             sub          t4, zero, sp
                  slt          a3, a5, s7
                  addi         s0, s2, -1917
                  slti         s3, s9, -1614
1391:             bge          s11, t5, 1410f
                  and          s11, zero, s2
                  auipc        s7, 214888
                  sltiu        ra, t0, 1120
                  srli         s0, s11, 5
                  auipc        s2, 1008106
                  sub          s8, a0, tp
                  andi         s11, a6, 241
                  bgeu         a1, s5, 1419f
                  sltiu        a3, t3, -236
                  sra          a0, t6, t1
                  slt          s6, s4, s9
                  srli         zero, s0, 13
                  slli         a7, s10, 17
                  or           s7, s11, a1
                  andi         t2, a4, 457
                  bgeu         ra, t5, 1414f
                  bne          gp, a6, 1418f
                  sra          t4, s7, zero
1410:             xor          s1, gp, a0
                  sll          s8, s11, zero
                  slti         s1, a2, 72
                  xor          s0, t6, a3
1414:             srli         s9, a4, 12
                  srli         s4, a2, 16
                  sltiu        s11, zero, 1623
                  bltu         a3, sp, 1424f
1418:             xori         a5, a4, -286
1419:             ori          s9, a6, -646
                  slt          s3, sp, t0
                  blt          s2, a7, 1438f
                  srl          s8, a7, s5
                  bltu         s7, s8, 1436f
1424:             blt          t0, s2, 1438f
                  ori          a4, s2, -2018
                  srai         s1, s6, 12
                  bne          a5, t3, 1433f
                  lui          s0, 389461
                  slti         a2, s11, 443
                  blt          ra, s11, 1436f
                  bltu         tp, a0, 1451f
                  slt          a3, s4, a3
1433:             beq          a1, a0, 1442f
                  auipc        a6, 994399
                  sll          a5, ra, a4
1436:             blt          t5, s5, 1439f
                  sub          a2, s1, a3
1438:             xor          sp, sp, a4
1439:             bge          sp, ra, 1458f
                  bne          s6, t1, 1456f
                  sll          sp, a5, t1
1442:             sltiu        t4, s10, 523
                  bne          s0, a7, 1448f
                  sra          t4, a1, a4
                  xori         a7, s2, 1465
                  sltu         a6, t3, s4
                  lui          a4, 4993
1448:             sub          s5, t5, a6
                  xor          s11, s10, zero
                  ori          s10, a3, 539
1451:             srai         zero, t6, 2
                  ori          a4, s7, 1871
                  sltiu        s7, t6, 1242
                  ori          t4, t0, -1592
                  srl          s5, s7, a1
1456:             addi         gp, gp, 1550
                  srl          t2, a0, tp
1458:             bgeu         a4, t3, 1478f
                  srai         s3, s11, 28
                  sll          t0, t2, a7
                  srli         t0, s9, 0
                  srl          s2, s7, s4
                  sll          t0, s11, zero
                  nop
                  slti         s5, s5, -1343
                  sub          ra, s2, s5
                  auipc        t1, 747497
                  sub          a7, s6, a5
                  sra          zero, t2, s3
                  srai         a5, s6, 31
                  srai         a6, a6, 25
                  or           t3, sp, a5
                  or           s5, gp, sp
                  xori         s9, t5, 1464
                  bgeu         s8, s2, 1481f
                  or           t0, s2, s10
                  and          t1, s2, t0
1478:             ori          s7, a1, 518
                  sll          a2, gp, s7
                  bltu         zero, a3, 1488f
1481:             andi         s10, s5, -1573
                  auipc        t1, 333269
                  bge          t1, t1, 1491f
                  andi         s6, gp, -287
                  xori         a3, s1, -1963
                  xori         t4, s0, 1318
                  sra          t3, a4, t1
1488:             beq          t0, t1, 1505f
                  sra          t2, t2, t5
                  slti         a0, s1, -250
1491:             sra          tp, a2, t6
                  xor          t2, s1, tp
                  nop
                  andi         t4, a6, -1552
                  ori          s6, s6, 67
                  lui          a4, 175252
                  srai         s4, s7, 20
                  beq          s5, s5, 1518f
                  slti         s0, a0, 1382
                  slt          s8, a4, a7
                  srli         s10, t4, 28
                  srl          s2, t6, s1
                  andi         t3, s7, 568
                  beq          ra, s6, 1507f
1505:             slli         s2, t2, 24
                  and          gp, a1, a5
1507:             or           s4, s0, s2
                  bltu         t0, s7, 1518f
                  beq          ra, s4, 1510f
1510:             sub          a6, s7, t5
                  add          s1, sp, s1
                  auipc        t3, 366324
                  add          s7, zero, t5
                  bgeu         t2, a6, 1515f
1515:             sub          ra, s1, a1
                  srli         t2, s6, 15
                  slt          s6, gp, tp
1518:             bge          ra, s11, 1519f
1519:             andi         t3, s5, 178
                  or           t3, a5, t6
                  andi         s3, zero, -1303
                  srl          a2, s1, ra
                  bge          s7, s6, 1534f
                  bge          s9, t5, 1526f
                  sra          t1, t4, a1
1526:             nop
                  srl          s2, t4, s5
                  srai         t1, a2, 24
                  srl          gp, t0, s7
                  xori         a7, s11, -35
                  xori         s8, tp, -954
                  bltu         a1, s9, 1543f
                  slli         ra, sp, 21
1534:             sra          gp, ra, t5
                  blt          ra, ra, 1540f
                  xori         a3, a7, 1679
                  lui          s6, 589571
                  sltu         t2, a4, s2
                  bge          s8, t1, 1553f
1540:             or           sp, a7, a4
                  slli         a2, s8, 26
                  bge          a4, gp, 1550f
1543:             slti         s9, t3, -173
                  and          s0, t3, s4
                  and          a6, s4, ra
                  lui          a5, 1007097
                  srli         gp, a0, 11
                  lui          s1, 442281
                  slt          s5, tp, s4
1550:             addi         s7, a3, 1245
                  srai         t1, s0, 29
                  bgeu         t5, s6, 1553f
1553:             xor          t4, sp, a5
                  and          a7, a3, ra
                  bge          a7, s9, 1562f
                  xor          s7, s6, t0
                  bgeu         s8, s9, 1577f
                  sltiu        t2, sp, 154
                  and          s11, zero, s9
                  or           s4, t6, s5
                  bne          t5, t1, 1578f
1562:             xori         s11, s7, -1183
                  sll          t3, s2, s5
                  and          t4, a7, a4
                  blt          a4, s5, 1582f
                  blt          t4, s6, 1568f
                  lui          sp, 808613
1568:             srai         tp, t4, 23
                  ori          a5, s10, -166
                  bgeu         s1, s3, 1584f
                  slt          a5, t4, a0
                  blt          a2, t1, 1588f
                  srli         s5, s6, 17
                  ori          s9, s9, -1493
                  and          a4, s6, sp
                  and          a2, s4, zero
1577:             nop
1578:             auipc        gp, 505124
                  sub          a4, a0, tp
                  lui          tp, 646158
                  sll          s8, s7, t5
1582:             lui          s1, 560225
                  bge          s0, ra, 1602f
1584:             bge          gp, t4, 1594f
                  beq          t2, s11, 1595f
                  srai         sp, t6, 21
                  sltu         s0, t1, sp
1588:             sub          s6, a0, a2
                  bge          a4, t0, 1595f
                  srl          ra, s9, t3
                  sra          t3, s11, t2
                  sub          ra, t1, a1
                  blt          s0, a6, 1598f
1594:             lui          t2, 554631
1595:             or           a2, t1, tp
                  sll          s4, s6, a6
                  sra          s9, t6, s7
1598:             bgeu         a2, zero, 1606f
                  beq          s10, tp, 1600f
1600:             srli         a6, a7, 18
                  add          ra, t2, a0
1602:             sra          zero, a2, s7
                  lui          t1, 588248
                  blt          a6, a6, 1617f
                  slti         sp, a2, 476
1606:             auipc        a4, 215974
                  blt          zero, t0, 1612f
                  blt          s1, a1, 1619f
                  srli         a4, s1, 17
                  slli         s7, s4, 30
                  sra          t0, s8, a0
1612:             sltu         t3, s4, s6
                  sltu         ra, ra, tp
                  srl          t4, s6, t2
                  andi         s9, t4, 276
                  addi         a5, t6, -1805
1617:             or           gp, t1, a7
                  srl          zero, t5, t6
1619:             addi         a4, s9, 300
                  slli         a3, sp, 3
                  srai         t4, a4, 25
                  slt          zero, t0, s10
                  addi         t3, s8, 634
                  nop
                  sltu         s6, s10, a4
                  slt          a0, t4, t3
                  bne          t6, t4, 1628f
1628:             sltiu        s2, s8, 802
                  xori         s8, s8, 827
                  bne          t2, s8, 1636f
                  bge          s0, t3, 1651f
                  bgeu         a0, a6, 1641f
                  slli         s0, t4, 15
                  sub          t0, s4, tp
                  add          s0, s0, s10
1636:             bgeu         s11, t2, 1650f
                  bgeu         s10, s8, 1657f
                  srai         t4, a0, 14
                  sll          s10, ra, s10
                  slti         a5, s8, 2042
1641:             sltiu        a6, t3, -681
                  sra          a4, s4, s10
                  nop
                  beq          t3, a7, 1651f
                  xori         s5, a1, -806
                  srli         zero, s10, 29
                  and          gp, t0, s5
                  beq          a7, s6, 1651f
                  or           s4, a6, a2
1650:             blt          s5, a6, 1656f
1651:             blt          s4, s9, 1662f
                  add          a0, s7, s10
                  srli         ra, s6, 23
                  ori          s8, s6, -1571
                  sll          t0, s5, s11
1656:             ori          s3, gp, -221
1657:             sra          sp, gp, t4
                  srai         s9, s0, 1
                  bltu         s8, a1, 1662f
                  sll          gp, s10, tp
                  slt          a5, s6, s7
1662:             bltu         s6, t0, 1665f
                  srli         s7, ra, 0
                  srli         s9, zero, 19
1665:             blt          tp, t1, 1685f
                  sra          tp, s0, s2
                  or           s2, s6, a2
                  bltu         t6, t0, 1682f
                  slli         zero, t6, 1
                  srl          s3, s3, a0
                  nop
                  lui          sp, 831382
                  sll          s3, a6, s0
                  bne          a1, s1, 1677f
                  sub          t1, s1, t3
                  xori         gp, gp, -1870
1677:             bge          a3, s4, 1694f
                  xori         s0, gp, 2047
                  sra          s11, s6, s0
                  andi         t2, a3, 1214
                  auipc        s3, 58595
1682:             sltiu        s7, s1, 1485
                  bne          s9, s6, 1688f
                  xor          s1, t1, tp
1685:             sra          a4, a6, a0
                  sra          a7, a1, t2
                  sll          s0, zero, gp
1688:             ori          a6, a4, 512
                  and          gp, s10, a3
                  or           s8, gp, tp
                  sltiu        a7, s6, 1858
                  sll          s1, a7, s4
                  srli         ra, gp, 10
1694:             bge          t3, s1, 1700f
                  lui          a4, 656802
                  lui          s6, 624880
                  blt          s0, t2, 1716f
                  srl          s10, s0, sp
                  slt          zero, s7, t3
1700:             xor          a5, a4, s3
                  xor          a3, s10, tp
                  nop
                  blt          a4, s8, 1713f
                  bltu         s2, a7, 1705f
1705:             slti         t4, gp, 45
                  srl          s0, s2, a6
                  and          s0, a4, a1
                  slli         t1, a5, 7
                  addi         s1, tp, 1606
                  ori          s11, s6, -1512
                  add          s2, a1, t4
                  sll          s5, s7, a7
1713:             bltu         a0, ra, 1718f
                  xor          s11, a0, a3
                  sltu         zero, s11, s7
1716:             lui          t2, 631221
                  ori          s6, t5, -421
1718:             bne          s8, a1, 1738f
                  bge          s4, t4, 1736f
                  srli         s1, s6, 6
                  slli         s4, s5, 2
                  xori         a2, a2, 467
                  sltu         gp, t2, sp
                  slti         s8, ra, -572
                  lui          s11, 795475
                  lui          t3, 922756
                  beq          s3, t4, 1734f
                  addi         tp, s3, -398
                  srl          a0, a1, zero
                  add          s4, s10, a6
                  slti         s1, t6, 1863
                  ori          s3, s1, 1504
                  sltu         gp, t5, s1
1734:             sub          t2, t3, t4
                  slt          s5, s4, s5
1736:             ori          s7, t3, -92
                  lui          a2, 947845
1738:             lui          s5, 306607
                  sra          a2, t2, s3
                  bltu         a1, s5, 1750f
                  sub          a5, a3, a0
                  slli         t3, a5, 1
                  srli         t2, t3, 21
                  blt          t3, s3, 1755f
                  addi         t3, zero, -245
                  sltu         t3, sp, a4
                  bltu         a2, s7, 1767f
                  sra          a7, gp, s11
                  nop
1750:             srli         a0, s8, 0
                  blt          ra, sp, 1759f
                  slt          zero, ra, t6
                  ori          tp, s8, -1764
                  xori         s5, s8, -1159
1755:             sub          sp, t1, tp
                  sub          t2, a1, s0
                  beq          t2, s11, 1765f
                  beq          a2, a0, 1759f
1759:             addi         a4, a0, -1628
                  xor          a0, s5, t0
                  sra          tp, a0, s6
                  auipc        s2, 948191
                  blt          t0, t4, 1764f
1764:             auipc        ra, 547928
1765:             xori         s6, s2, 1791
                  lui          a0, 7641
1767:             beq          s4, a1, 1769f
                  bne          s3, tp, 1777f
1769:             sltu         s6, t2, t5
                  sltiu        t4, a3, -998
                  bne          s0, t3, 1782f
                  slli         t4, zero, 11
                  nop
                  sltiu        a0, t1, -692
                  bge          sp, t0, 1782f
                  or           s4, t6, t1
1777:             auipc        a0, 77327
                  sub          s8, zero, tp
                  blt          s2, t2, 1792f
                  bgeu         gp, s5, 1796f
                  sltu         s3, s10, s0
1782:             slti         s6, a2, 1779
                  sra          s3, s3, s8
                  srai         a0, s9, 9
                  and          t0, sp, tp
                  sub          a2, tp, zero
                  sltiu        s6, s5, -1701
                  sll          s8, a4, a4
                  blt          s9, s6, 1795f
                  nop
                  lui          s0, 753067
1792:             xori         a6, ra, -208
                  sra          ra, a4, s5
                  bge          t3, s7, 1808f
1795:             or           a2, t5, s8
1796:             sra          gp, s8, s11
                  sub          t0, ra, t4
                  addi         s4, s8, -833
                  bltu         t3, s1, 1805f
                  addi         s1, s4, 252
                  sltiu        sp, t5, -2009
                  ori          s5, s7, 684
                  add          a5, tp, s3
                  ori          a3, a7, -1952
1805:             nop
                  nop
                  beq          s2, t4, 1810f
1808:             slti         s10, sp, -1706
                  bne          s4, s2, 1810f
1810:             blt          t3, s8, 1823f
                  sub          s10, t2, t3
                  slti         s8, s3, -354
                  bge          a6, zero, 1833f
                  or           s5, t5, gp
                  bne          tp, a7, 1824f
                  slt          t3, s10, s5
                  sub          a3, zero, t0
                  add          gp, s2, a5
                  srli         a5, s10, 6
                  addi         s9, a3, -233
                  bltu         tp, s7, 1828f
                  auipc        a5, 85679
1823:             slt          s4, a2, t2
1824:             sra          a5, t1, a5
                  sltiu        s8, a6, 1594
                  or           s10, s3, s8
                  lui          s6, 472891
1828:             ori          s2, a1, 1639
                  beq          s9, a0, 1846f
                  bge          tp, t6, 1835f
                  ori          a3, s4, 1675
                  slt          s4, s4, s8
1833:             or           s0, s10, s4
                  addi         t1, s4, -2002
1835:             lui          sp, 319884
                  auipc        a0, 498473
                  slt          s3, s10, a0
                  slli         s2, t6, 1
                  slt          gp, sp, a2
                  beq          a5, s1, 1851f
                  lui          s8, 272563
                  slti         gp, t1, -296
                  add          a5, zero, a1
                  ori          s0, sp, -1000
                  sra          zero, a2, a1
1846:             and          t1, s1, sp
                  lui          t3, 38397
                  sltiu        a3, s4, -471
                  slti         tp, t6, -1612
                  and          t2, t4, t6
1851:             bltu         s7, sp, 1870f
                  andi         a2, s2, 462
                  ori          s6, s2, -617
                  nop
                  sltu         s0, ra, s10
                  xori         ra, t5, -58
                  lui          t1, 52352
                  slti         tp, t4, 332
                  slt          s5, a3, a3
                  slli         t1, t4, 26
                  add          a4, s3, s2
                  andi         s11, s2, -65
                  slt          s8, s11, tp
                  nop
                  sll          t0, s7, s5
                  and          s0, s8, t0
                  sltiu        zero, a1, 1650
                  slli         s9, s4, 4
                  sub          s1, gp, s7
1870:             ori          s9, t6, -212
                  xori         s3, t3, -1164
                  bge          a6, a3, 1878f
                  lui          s1, 195740
                  add          a6, s11, a3
                  auipc        s0, 283090
                  bltu         s8, s8, 1881f
                  and          a7, s10, ra
1878:             slli         s11, t3, 20
                  sra          s6, a0, a5
                  beq          a0, s9, 1886f
1881:             sltu         t1, t5, t5
                  nop
                  slt          t1, a5, t6
                  xori         t3, a2, 18
                  bge          t1, s9, 1905f
1886:             ori          s2, a6, -174
                  sltu         a0, t4, s6
                  slt          a0, s0, a7
                  slti         s1, t6, -109
                  srai         a0, s5, 12
                  andi         t1, s6, -1368
                  or           s0, t6, s0
                  bne          s9, s6, 1907f
                  and          a4, s5, s7
                  srai         sp, sp, 17
                  srli         s0, s6, 31
                  xor          s3, ra, a1
                  blt          t1, t2, 1899f
1899:             sub          tp, s0, t0
                  slli         tp, tp, 5
                  slti         s2, s11, 858
                  sll          s9, a6, s11
                  xori         t3, a6, -1273
                  slli         s10, s4, 0
1905:             and          t4, s0, tp
                  and          ra, s11, a1
1907:             slti         t1, a0, 1512
                  add          s9, s9, a4
                  bge          a7, t2, 1919f
                  slt          t3, s4, a4
                  bne          tp, sp, 1919f
                  lui          tp, 598697
                  slt          s5, a6, s11
                  sll          s8, s8, a7
                  andi         t2, t3, 686
                  srai         s10, s9, 4
                  beq          t6, s1, 1931f
                  sltu         s11, s1, t1
1919:             slt          s8, a5, a6
                  slt          t0, a6, ra
                  bne          a6, s0, 1924f
                  beq          a4, a3, 1930f
                  slti         s7, s3, -321
1924:             sll          tp, tp, tp
                  sltu         tp, s1, t6
                  sra          a5, s5, a4
                  bgeu         s7, s7, 1933f
                  srai         gp, s2, 29
                  bne          s2, a6, 1946f
1930:             sll          a3, s5, s11
1931:             sra          a6, t3, sp
                  bltu         zero, a1, 1952f
1933:             sll          t0, t1, t1
                  addi         t0, s10, 1998
                  srai         t1, sp, 31
                  sltiu        s9, t4, 1130
                  slt          s3, s10, s8
                  srl          s9, a1, a1
                  bltu         t4, s10, 1940f
1940:             sll          t1, gp, s8
                  srl          t3, s2, t4
                  bgeu         s9, s5, 1958f
                  xor          gp, a3, zero
                  addi         sp, a3, -1109
                  addi         t4, s1, -143
1946:             sltu         s10, t0, s2
                  auipc        a0, 161289
                  ori          t4, a6, -2036
                  auipc        a5, 486096
                  addi         s9, t4, 1671
                  xor          sp, s9, t3
1952:             blt          a4, t0, 1954f
                  bltu         s7, a4, 1960f
1954:             bge          s7, t0, 1965f
                  bne          s9, ra, 1965f
                  auipc        t0, 195478
                  bne          t1, t6, 1971f
1958:             addi         a7, a1, 1344
                  xori         a0, a1, 869
1960:             slti         a3, s7, 513
                  blt          a4, a4, 1968f
                  bgeu         s2, s10, 1982f
                  sra          s2, t5, t3
                  sub          a0, t5, s8
1965:             lui          zero, 397850
                  blt          a3, sp, 1986f
                  nop
1968:             add          t4, s8, t5
                  sltu         t3, t4, s0
                  bge          zero, s7, 1973f
1971:             sltu         s5, a6, a4
                  addi         zero, ra, -99
1973:             and          s1, a6, t0
                  auipc        s3, 443147
                  slt          s5, t3, s5
                  slti         a5, t5, -685
                  add          a0, s9, t3
                  sra          a4, t4, s7
                  sltu         a6, a3, s4
                  sltu         s5, t5, a5
                  sltu         s8, s4, t1
1982:             srai         s3, s2, 20
                  add          a2, a5, t4
                  bltu         s9, s3, 1998f
                  and          sp, zero, a5
1986:             or           a5, s7, a1
                  bge          t5, t2, 2004f
                  beq          s6, a1, 1994f
                  bltu         s6, s5, 1997f
                  or           t4, s3, s10
                  srli         s4, s10, 8
                  bne          s0, s10, 1998f
                  bgeu         s0, ra, 2012f
1994:             ori          s5, gp, -1580
                  ori          s11, s0, -1730
                  andi         gp, s11, 1777
1997:             srl          a4, t0, a6
1998:             xori         a6, ra, 1263
                  ori          s10, s3, 1553
                  bgeu         a7, s1, 2010f
                  beq          t5, s6, 2018f
                  srli         a3, a1, 31
                  slt          a2, a0, a1
2004:             beq          a2, s5, 2005f
2005:             addi         sp, a5, -233
                  srli         s6, t6, 10
                  bne          s1, tp, 2013f
                  auipc        t2, 824222
                  sra          s4, s5, zero
2010:             xori         a2, a4, -1552
                  blt          s5, s5, 2012f
2012:             beq          s9, t1, 2013f
2013:             slt          a5, t1, t0
                  bgeu         a6, s2, 2027f
                  srai         a6, ra, 14
                  beq          a0, gp, 2021f
                  nop
2018:             sltu         s5, s9, a1
                  srli         gp, gp, 28
                  slli         s9, a6, 16
2021:             andi         s8, a4, 278
                  bne          ra, a1, 2033f
                  slli         s7, a4, 20
                  ori          gp, s6, 1729
                  lui          s0, 392102
                  ori          s1, a0, 1229
2027:             sll          s2, a4, t2
                  bne          a5, sp, 2039f
                  bltu         s10, s7, 2045f
                  sltiu        s8, ra, 82
                  sll          s10, a1, t4
                  ori          s8, sp, 1612
2033:             beq          t4, s6, 2053f
                  sub          a7, t0, a6
                  bne          a3, a4, 2037f
                  sub          s6, sp, s4
2037:             sll          s5, s10, ra
                  andi         s0, t0, 654
2039:             srai         a5, a0, 0
                  and          s2, zero, zero
                  or           t3, t0, zero
                  slli         sp, sp, 14
                  sll          s10, s0, t5
                  auipc        zero, 747416
2045:             sll          a7, s6, t1
                  andi         s11, tp, 1620
                  nop
                  srl          t4, s9, a1
                  and          sp, a6, t4
                  auipc        t3, 586269
                  ori          t0, s3, 1575
                  beq          s0, ra, 2057f
2053:             bne          s9, s9, 2062f
                  bgeu         t1, a1, 2062f
                  blt          t2, s2, 2065f
                  ori          gp, s8, -409
2057:             slti         a7, a4, -421
                  and          tp, a6, t3
                  lui          a6, 82338
                  bltu         s7, t3, 2067f
                  sra          a2, ra, a6
2062:             srai         a0, t3, 10
                  sub          s3, s2, sp
                  ori          s11, a7, 463
2065:             sltu         s4, s3, sp
                  bge          a5, zero, 2069f
2067:             sub          t1, s1, s10
                  or           s5, a7, t2
2069:             bltu         t1, s4, 2086f
                  slt          s5, t2, sp
                  srli         t3, s10, 19
                  add          a6, gp, a1
                  blt          sp, ra, 2089f
                  lui          a4, 586585
                  sltiu        a7, s9, 1651
                  xor          ra, t3, t1
                  bgeu         s11, t0, 2079f
                  lui          s8, 393461
2079:             bge          s1, s8, 2096f
                  sltu         s0, ra, a5
                  sll          ra, t3, t2
                  beq          s10, s6, 2085f
                  bge          t5, tp, 2097f
                  auipc        gp, 618815
2085:             sltu         t4, s6, t1
2086:             blt          gp, a4, 2093f
                  blt          s7, t5, 2088f
2088:             nop
2089:             bne          s9, a0, 2090f
2090:             addi         s8, zero, 1682
                  srl          a3, ra, s2
                  add          s4, s6, a4
2093:             srai         gp, zero, 5
                  sltiu        a2, s9, 1485
                  bltu         s7, s4, 2105f
2096:             and          s5, tp, a2
2097:             and          s2, t3, s6
                  add          s10, a3, s9
                  bgeu         a1, s1, 2107f
                  add          s3, s0, s8
                  slti         s5, s2, -739
                  sll          ra, s0, s9
                  xori         a5, t1, -1403
                  beq          s11, t6, 2114f
2105:             slli         t4, zero, 5
                  xori         gp, ra, 1201
2107:             sra          t2, tp, s11
                  srli         s6, s8, 22
                  nop
                  srai         t1, s5, 17
                  bgeu         s3, t6, 2117f
                  and          s0, a1, s2
                  and          a7, t5, t1
2114:             sra          s10, s5, zero
                  bge          t3, s6, 2134f
                  auipc        zero, 160063
2117:             srli         t1, a3, 15
                  auipc        s10, 688760
                  sra          a7, sp, s11
                  sltiu        s9, s6, 2016
                  auipc        t3, 522936
                  sltiu        t0, s3, -1152
                  add          t2, zero, ra
                  and          s10, t5, s4
                  andi         s6, t3, 120
                  nop
                  slt          t3, ra, s11
                  sltiu        gp, s4, 514
                  slli         s11, a1, 30
                  bltu         t0, t1, 2150f
                  slt          zero, zero, s11
                  srl          s10, zero, t5
                  sra          s8, s5, s4
2134:             and          s9, s6, a5
                  or           a7, a3, t3
                  bne          sp, s9, 2142f
                  auipc        s11, 873277
                  and          s7, t2, a3
                  auipc        sp, 2223
                  srai         t2, tp, 16
                  addi         s0, s6, -275
2142:             lui          a3, 446948
                  nop
                  sra          gp, a0, a0
                  and          a6, t0, a2
                  sub          a7, t0, a4
                  sltu         s10, zero, tp
                  bge          t2, s4, 2154f
                  sra          s1, a1, s5
2150:             or           a6, s6, sp
                  add          s1, a3, t0
                  bltu         t6, t3, 2163f
                  and          t2, sp, a4
2154:             slt          s8, gp, s8
                  ori          ra, s2, 169
                  or           a3, s2, s5
                  bgeu         tp, a6, 2162f
                  and          sp, a0, s11
                  srl          a0, a3, ra
                  bltu         t6, tp, 2171f
                  bltu         a6, a1, 2164f
2162:             bgeu         a2, s3, 2175f
2163:             xor          s1, t2, s4
2164:             or           s9, s5, zero
                  sra          s0, s9, s9
                  bltu         tp, t1, 2175f
                  auipc        a7, 823185
                  bltu         s5, tp, 2169f
2169:             nop
                  bne          s9, s8, 2190f
2171:             bgeu         zero, t5, 2191f
                  addi         sp, s5, 1173
                  bltu         a7, t1, 2180f
                  bge          a4, a5, 2179f
2175:             ori          a7, t1, 1320
                  blt          s10, s9, 2184f
                  bltu         tp, a7, 2191f
                  sltiu        tp, s6, -1776
2179:             slti         s2, s7, 1058
2180:             nop
                  xor          zero, s8, s3
                  sltu         sp, t1, s9
                  bge          gp, a7, 2202f
2184:             nop
                  add          a3, gp, a6
                  beq          s3, a2, 2187f
2187:             sltiu        a5, sp, 1910
                  slti         a4, a7, -1596
                  sltu         s1, t1, s2
2190:             addi         t1, a1, 991
2191:             bge          s3, s10, 2211f
                  sltu         a7, s7, a3
                  andi         s1, t4, 1081
                  bltu         ra, a6, 2214f
                  slli         s1, ra, 23
                  and          a5, ra, a3
                  sltiu        tp, s1, -1475
                  sltu         s3, s1, t6
                  xor          a5, s0, s0
                  srli         s7, t1, 20
                  xor          a3, t2, s0
2202:             sltu         s8, a7, t3
                  add          s2, s9, t5
                  addi         t0, a0, 28
                  srli         s10, ra, 6
                  addi         t4, t3, 623
                  xori         a2, a0, 2002
                  sub          s8, s1, a4
                  srl          t4, t0, t3
                  add          t2, s4, t0
2211:             addi         zero, s8, 1268
                  sra          s3, t0, s7
                  sll          s0, s11, s0
2214:             slt          s2, a6, ra
                  bltu         ra, a6, 2221f
                  blt          s9, s11, 2223f
                  nop
                  sltiu        a6, a1, 791
                  bne          tp, zero, 2228f
                  ori          s6, s10, 1092
2221:             sltu         s9, s5, a4
                  srli         s8, s1, 16
2223:             nop
                  slli         s7, gp, 0
                  slt          s11, s4, t2
                  sltiu        t4, t3, 1565
                  nop
2228:             srai         a3, s10, 29
                  sltiu        t4, a2, -1281
                  and          a2, a6, a1
                  beq          a0, s3, 2232f
2232:             beq          gp, s2, 2234f
                  sra          a4, t0, gp
2234:             sltu         t3, s11, t3
                  srli         gp, a4, 16
                  srli         a5, s1, 13
                  lui          s4, 764458
                  auipc        s2, 663807
                  add          t4, zero, a5
                  bgeu         a2, a6, 2246f
                  srl          s8, s0, sp
                  srl          s8, t2, s4
                  nop
                  addi         s2, s0, -724
                  xor          a0, s11, s3
2246:             bge          a6, s10, 2262f
                  bge          t5, a7, 2264f
                  lui          a5, 88571
                  beq          s7, a5, 2259f
                  sltiu        s0, a7, -639
                  and          gp, s2, t6
                  slli         s5, t5, 8
                  lui          t2, 99733
                  addi         t1, s11, -547
                  auipc        ra, 1017813
                  bltu         t3, t1, 2273f
                  srai         s6, s3, 29
                  sltiu        t3, a5, 1469
2259:             or           a7, s2, s7
                  addi         a3, s6, -1160
                  sub          t3, zero, a5
2262:             bge          s1, s3, 2265f
                  andi         t2, ra, 1735
2264:             sll          s10, t5, t2
2265:             blt          s6, zero, 2276f
                  bgeu         s1, ra, 2274f
                  bltu         gp, t0, 2273f
                  and          a3, a3, a1
                  beq          a3, s5, 2278f
                  auipc        s3, 1030194
                  bltu         s9, a4, 2278f
                  bgeu         t3, s3, 2278f
2273:             slti         s5, s10, 120
2274:             nop
                  and          s9, s5, t4
                  la           s10, region_1+709 #start riscv_load_store_rand_instr_stream_8
                  lb           s6, -6(s10)
                  lb           s1, -3(s10)
                  auipc        a6, 763410
                  lbu          t3, 10(s10)
                  auipc        a7, 808409
                  lbu          a2, -16(s10)
                  sltiu        s3, s7, -561
                  sw           s8, 7(s10)
                  slli         zero, t3, 15
                  addi         t4, s10, 616
                  srli         t3, s0, 24
                  srai         a5, a7, 19
                  nop
                  add          s0, a2, s1
                  xor          a4, s5, s3
                  ori          a3, s8, 1465
                  xor          a6, s6, t6
                  sltiu        a4, tp, -490
                  lbu          sp, -1(s10)
                  srl          s5, tp, a5
                  sll          s6, s7, a2
                  or           sp, sp, t4
                  auipc        s9, 485741
                  nop
                  lhu          s8, 9(s10)
                  add          t4, a2, s11
                  srai         s5, a6, 4
                  sb           zero, -11(s10)
                  auipc        t2, 694729
                  lbu          s5, 13(s10)
                  auipc        s3, 128595
                  sltiu        s1, a3, -1027
                  add          t2, a1, ra
                  lbu          a5, 9(s10)
                  lhu          t4, -9(s10)
                  lbu          a2, 16(s10)
                  sltiu        s8, s2, 1797
                  lb           tp, 6(s10)
                  add          s9, s1, s8
                  xori         t2, t2, -1702
                  sw           s4, 11(s10)
                  sub          tp, a5, a5
                  srli         a5, s4, 12
                  lbu          gp, 12(s10)
                  sb           ra, 16(s10) #end riscv_load_store_rand_instr_stream_8
2276:             andi         s2, sp, -741
                  sll          s11, t5, t5
2278:             auipc        a2, 25244
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            or           s10, a0, s10
                  sll          s9, s4, s2
                  andi         a6, s6, 37
                  or           s9, s8, zero
                  xori         a6, t6, -683
                  addi         a1, a1, -40
                  and          s7, s6, t6
                  sw           ra, 4(a1)
                  slti         tp, sp, 655
                  la           sp, region_0+1855 #start riscv_load_store_rand_instr_stream_4
                  add          a7, a4, t4
                  lb           a5, -1453(sp)
                  srl          s8, s2, s11
                  and          a6, t5, s0
                  srai         s0, s10, 30
                  sb           s10, -1174(sp)
                  andi         s1, tp, 1041
                  srl          tp, s2, s1
                  auipc        t1, 962683
                  xori         s6, gp, -405
                  lb           s6, -1447(sp)
                  sb           a3, -545(sp)
                  slti         s9, t1, 131
                  auipc        tp, 1046304
                  sub          t2, a6, s5
                  sb           s10, -873(sp)
                  sub          s6, s7, a7
                  sb           t6, -130(sp)
                  lbu          a3, -1389(sp)
                  lui          s3, 871922
                  sltiu        t3, a1, -314
                  sb           s11, -984(sp)
                  lbu          t3, -1080(sp)
                  sb           s6, -1688(sp)
                  nop
                  lhu          a3, -109(sp)
                  srli         s7, s10, 25
                  add          t4, t4, t0
                  sb           t1, -145(sp)
                  sb           t5, -794(sp)
                  srai         a0, a2, 5
                  lb           s0, -1108(sp)
                  lb           a0, -1278(sp)
                  xori         s8, s1, -1354
                  srli         s3, s11, 22
                  xor          zero, a6, s0
                  lw           t1, 37(sp)
                  sub          t1, s3, a6
                  lh           s3, -629(sp)
                  lw           s9, -1275(sp)
                  lb           t4, -968(sp)
                  lb           a0, -1072(sp)
                  slti         t4, zero, -263
                  ori          t4, a0, -368
                  slti         s8, s5, -791
                  ori          s1, a2, -396
                  srl          a2, s8, a6
                  lb           t2, -1688(sp)
                  lb           a2, -626(sp)
                  lb           t4, -113(sp)
                  lbu          a4, -1505(sp)
                  lhu          tp, -593(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+366 #start riscv_load_store_rand_instr_stream_2
                  lb           tp, 1(sp)
                  srl          a6, a3, s6
                  lw           s1, 2(sp)
                  sra          t3, a2, s10
                  nop
                  sra          s2, t6, s5
                  srai         s0, s4, 21
                  ori          t2, t4, 372
                  lui          a0, 227836
                  lbu          tp, 3(sp)
                  srli         gp, tp, 12
                  lbu          s0, 3(sp)
                  slti         a3, s0, -1794
                  sb           t5, 9(sp)
                  lbu          t1, 2(sp)
                  sub          t1, t1, t6
                  sb           s7, -8(sp)
                  slti         s7, s4, 1322
                  sb           a0, 9(sp)
                  lhu          s11, -10(sp)
                  and          zero, s4, s11
                  srli         gp, s0, 18
                  lb           zero, 2(sp)
                  lbu          a7, 11(sp)
                  lui          s11, 623413
                  srli         a7, t1, 30
                  lb           s6, -13(sp)
                  lb           t3, -4(sp)
                  nop
                  lh           s9, 14(sp)
                  sll          a6, s5, s4
                  sb           a7, 2(sp)
                  auipc        a0, 745373
                  srli         s7, tp, 8
                  lui          s6, 496578
                  sh           t3, 6(sp)
                  slt          s0, t0, gp
                  and          zero, s5, t6
                  lbu          ra, 12(sp)
                  srai         t1, ra, 17
                  lhu          a3, -2(sp)
                  lb           a0, -5(sp)
                  sw           t6, -2(sp)
                  andi         zero, t1, 716
                  srl          a7, gp, sp
                  sra          s10, s3, zero
                  add          t1, s5, ra
                  lb           a0, -2(sp)
                  sb           t6, 16(sp)
                  nop
                  sw           a2, -10(sp)
                  lb           a4, -13(sp)
                  lbu          s3, 11(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+811 #start riscv_load_store_rand_instr_stream_7
                  sra          a6, t5, a0
                  slli         s10, a6, 21
                  lbu          a3, -493(sp)
                  lh           a3, 1073(sp)
                  sltu         s3, s4, a0
                  srl          s10, a2, a7
                  lhu          s1, 507(sp)
                  xor          ra, s1, a7
                  sll          a7, t5, s7
                  sh           s6, 417(sp)
                  lbu          a5, 807(sp)
                  sltu         s8, s6, a6
                  lb           s5, -783(sp)
                  lhu          a0, 447(sp)
                  lbu          a6, 882(sp)
                  auipc        s7, 291149
                  lb           a0, 983(sp)
                  lb           s4, 657(sp)
                  lui          s5, 210998
                  slt          a5, s0, s7
                  ori          s4, sp, -1108
                  sltu         s7, ra, s3
                  lbu          s0, 746(sp)
                  lb           tp, 541(sp)
                  srli         s1, t4, 27
                  srl          a6, t5, s8
                  lb           a3, 1111(sp)
                  sb           t1, -476(sp)
                  sltu         t2, a0, t0
                  xori         t4, a0, 848
                  lb           t0, -442(sp)
                  lb           s5, 130(sp)
                  slt          gp, a6, gp
                  slt          s1, a7, s10
                  andi         s3, sp, -1488
                  sltiu        s4, a2, -642
                  or           s9, gp, t4
                  lhu          s4, -781(sp)
                  sltu         s10, ra, gp
                  auipc        gp, 90068
                  sb           t1, -178(sp)
                  lhu          s0, -317(sp)
                  nop
                  sb           s8, 472(sp)
                  add          t2, a6, a0
                  or           s11, t2, a7
                  lbu          s3, 526(sp)
                  lbu          s2, 133(sp)
                  lbu          a2, 419(sp)
                  sb           a4, 684(sp)
                  lbu          s3, 1159(sp)
                  slt          s6, ra, s3
                  sltiu        t1, t4, 2014
                  sra          t2, s7, s2
                  sh           s2, -493(sp)
                  lb           t2, 292(sp)
                  sh           a4, 539(sp) #end riscv_load_store_rand_instr_stream_7
                  la           ra, region_1+1370 #start riscv_load_store_rand_instr_stream_1
                  srl          s9, s10, gp
                  sb           s4, 5(ra)
                  lbu          s7, 27(ra)
                  sb           gp, -57(ra)
                  srli         s0, ra, 16
                  sb           s11, -25(ra)
                  lhu          a3, -18(ra)
                  sb           a3, -28(ra)
                  lh           a0, 0(ra)
                  lb           s8, 55(ra)
                  lb           gp, -5(ra)
                  ori          zero, s5, -503
                  slti         t4, a3, 646
                  lbu          s4, -6(ra)
                  srli         t2, s7, 27
                  sw           ra, 34(ra)
                  sltiu        s10, t6, 218
                  auipc        zero, 200799
                  sltu         t3, t4, s4
                  sb           t6, 4(ra)
                  lb           s6, 59(ra)
                  lb           s3, -14(ra)
                  lbu          s7, 43(ra)
                  lbu          a6, -48(ra)
                  lb           sp, 59(ra)
                  sub          zero, a4, t2
                  ori          t1, a0, 473
                  sb           a4, 48(ra)
                  lb           a5, -43(ra)
                  srli         sp, s9, 13
                  slti         s2, a3, 1277
                  lb           sp, -12(ra)
                  lui          t3, 795638
                  sb           s0, -11(ra)
                  lbu          s10, 48(ra)
                  lhu          t2, -58(ra)
                  addi         a4, s2, 923
                  lh           s7, 52(ra) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_1+1553 #start riscv_load_store_rand_instr_stream_5
                  slt          zero, a5, t5
                  and          zero, ra, tp
                  sll          a3, zero, a7
                  sra          t0, s9, t4
                  lb           t2, 4(s1)
                  lbu          a2, 15(s1)
                  xori         s2, a3, 1562
                  addi         zero, a5, -2041
                  sb           s8, 14(s1)
                  sb           s6, -2(s1)
                  slti         t2, t3, 560
                  auipc        s9, 67826
                  lui          s3, 647728
                  lb           s10, -16(s1)
                  lb           s7, 5(s1)
                  xori         a5, s9, -304
                  srl          zero, t2, t1
                  sb           a1, -2(s1)
                  addi         s6, s2, -1858
                  lui          a6, 412104
                  auipc        a3, 267288
                  slti         sp, ra, -68
                  lbu          zero, 2(s1)
                  sub          s0, t6, s3
                  sb           t6, 12(s1)
                  srli         s10, s10, 9
                  lhu          t0, -3(s1)
                  lbu          a7, 9(s1)
                  lbu          sp, 9(s1)
                  lbu          s11, 6(s1)
                  lh           s0, 1(s1)
                  lbu          t0, 2(s1)
                  lbu          t3, 2(s1)
                  sltu         s7, s11, s1
                  lbu          a2, -16(s1)
                  sub          s2, a4, a0
                  lui          s2, 509454
                  andi         t0, s7, 179
                  lh           s6, -1(s1)
                  lhu          s5, -1(s1)
                  lbu          s5, -8(s1)
                  auipc        a3, 525141
                  sb           a5, 6(s1) #end riscv_load_store_rand_instr_stream_5
                  la           s6, region_0+1551 #start riscv_load_store_rand_instr_stream_6
                  srai         s8, a3, 9
                  sb           a4, -37(s6)
                  add          t0, a3, s7
                  lbu          t2, -44(s6)
                  lbu          s0, -63(s6)
                  xor          zero, a1, s4
                  lb           s3, -36(s6)
                  lh           t0, 7(s6)
                  sh           a7, -1(s6)
                  sh           t2, 57(s6)
                  or           a2, s3, a5
                  xori         a0, s4, 195
                  sltu         a5, t3, a5
                  srai         s2, s10, 31
                  lbu          a5, 44(s6)
                  sub          zero, a1, ra
                  lh           s9, -61(s6)
                  lui          s4, 463601
                  lbu          ra, 26(s6)
                  sh           s6, 39(s6)
                  sll          t1, t1, s2
                  srl          a4, zero, zero
                  srli         t1, a3, 3
                  lh           s7, -1(s6)
                  auipc        t3, 743949
                  lb           s4, -1(s6)
                  or           tp, t5, tp
                  addi         s3, t5, -1743
                  lhu          s5, -9(s6) #end riscv_load_store_rand_instr_stream_6
                  la           s3, region_1+796 #start riscv_load_store_rand_instr_stream_0
                  lb           a5, 391(s3)
                  sb           gp, -77(s3)
                  lbu          a2, -209(s3)
                  and          s8, t3, gp
                  lbu          s6, 1144(s3)
                  add          a3, a2, a1
                  slt          a2, s4, a3
                  lbu          s8, -353(s3)
                  auipc        s4, 509647
                  lbu          s10, 783(s3)
                  slli         gp, s10, 14
                  xor          t3, tp, s9
                  or           s7, t0, s11
                  sb           a1, -369(s3)
                  lbu          gp, -467(s3)
                  sltiu        s9, s2, -469
                  slti         t0, t1, -1384
                  lb           a7, -141(s3)
                  lbu          s7, 439(s3)
                  auipc        t0, 966370
                  lh           s10, -304(s3)
                  xori         s10, a5, -1965
                  sb           a1, 1142(s3)
                  sb           s0, 869(s3)
                  lb           a5, 821(s3)
                  lb           t1, 239(s3)
                  srai         s4, s7, 29
                  lbu          s5, 784(s3)
                  sb           a7, 479(s3)
                  sb           s3, -601(s3)
                  lh           t0, -386(s3)
                  lb           a7, 926(s3)
                  lb           s0, -651(s3)
                  sb           t6, 281(s3)
                  sb           s7, 16(s3)
                  sb           s3, -719(s3) #end riscv_load_store_rand_instr_stream_0
                  srli         a0, s3, 29
                  lui          t3, 291837
                  bgeu         a4, s5, 9f
                  slti         s10, s0, 657
                  lui          s7, 218007
                  bgeu         t0, ra, 23f
                  bge          s5, s3, 24f
                  srai         s11, gp, 17
                  sub          s5, a3, s2
9:                beq          a7, sp, 24f
                  and          a5, s9, t3
                  or           t4, s0, s9
                  sltu         sp, t0, s9
                  auipc        tp, 461240
                  slli         gp, s2, 14
                  beq          gp, tp, 22f
                  srai         sp, a1, 1
                  sra          s0, t0, a0
                  bne          s3, s1, 20f
                  nop
20:               ori          s3, tp, -297
                  sltiu        t1, a5, 882
22:               slti         s9, a2, -911
23:               addi         t2, t4, -1404
24:               xori         s1, t1, 275
                  xor          t3, t5, t3
                  sra          a4, t0, s9
                  bne          a0, a5, 42f
                  slti         tp, a7, 935
                  bgeu         t2, t5, 38f
                  bge          zero, a6, 49f
                  addi         a5, t5, 1865
                  srli         zero, s11, 5
                  bgeu         t3, gp, 47f
                  blt          s1, a6, 50f
                  bne          zero, s1, 53f
                  auipc        a3, 102412
                  xori         t1, t3, -1690
38:               slti         s1, s4, -1887
                  and          a6, ra, s7
                  xor          t3, a1, t4
                  ori          s2, ra, 1019
42:               xori         gp, a1, 1666
                  bge          gp, t2, 48f
                  addi         t0, s9, 645
                  bltu         ra, s6, 55f
                  bltu         a0, a2, 53f
47:               bne          a4, gp, 52f
48:               bgeu         a3, s7, 58f
49:               blt          s4, s0, 50f
50:               xori         t4, tp, -320
                  sub          s9, gp, zero
52:               auipc        s1, 336153
53:               bltu         t5, a4, 54f
54:               sltu         a6, ra, s9
55:               slli         sp, t4, 23
                  bge          s6, a2, 70f
                  sll          s9, t5, t0
58:               ori          s10, a5, -981
                  sub          t0, a7, t4
                  slt          a7, sp, a1
                  bltu         a7, s9, 78f
                  srl          s6, a0, t2
                  bltu         s0, t1, 64f
64:               nop
                  ori          s7, s5, 1155
                  beq          t4, s0, 76f
                  addi         ra, sp, 1272
                  ori          zero, zero, -746
                  nop
70:               slli         a4, t3, 16
                  bgeu         s3, t5, 72f
72:               ori          s7, s0, -1498
                  and          s7, a4, t1
                  lui          s0, 427270
                  lui          s3, 13454
76:               bltu         a7, t4, 87f
                  sltiu        t1, t1, -269
78:               nop
                  andi         t2, s8, 1969
                  addi         t2, s5, -574
                  xor          a7, t4, a7
                  ori          s6, t0, 1247
                  and          s5, a4, a0
                  blt          a1, a1, 103f
                  srl          s2, ra, a1
                  xor          s5, s3, a4
87:               sra          t4, t6, gp
                  xor          tp, a3, s4
                  srli         a5, t2, 26
                  slt          s8, a0, a4
                  slli         s1, s4, 30
                  slti         s8, t2, -1802
                  xor          a5, sp, t6
                  and          s0, sp, a2
                  nop
                  and          sp, t2, a5
                  srl          s6, s1, t4
                  srl          s7, a5, s11
                  sll          s11, a3, s6
                  blt          a3, s9, 114f
                  slli         gp, tp, 26
                  slti         s2, t0, 815
103:              sra          a5, t5, s8
                  bgeu         a2, sp, 112f
                  sll          a2, s5, a0
                  sra          s0, a2, a1
                  slt          s6, a2, t5
                  sub          s7, s2, s5
                  slli         a7, sp, 28
                  bge          zero, s7, 111f
111:              beq          s6, a4, 118f
112:              slti         s9, s1, 1074
                  and          a7, s11, a6
114:              sll          s3, s6, a5
                  and          t4, zero, zero
                  bltu         s5, a7, 127f
                  slti         s9, a3, 517
118:              sltu         a3, s2, a7
                  add          s5, tp, a2
                  srai         a7, t5, 2
                  lui          s9, 218766
                  bgeu         s5, s4, 129f
                  xor          s8, t6, a7
                  slti         s6, a1, 1301
                  addi         t3, t6, 1763
                  addi         t1, s4, -1826
127:              xori         a2, s8, 528
                  bltu         a2, s8, 133f
129:              srl          t1, a5, t2
                  xor          a4, s6, s3
                  sltu         s9, a2, t5
                  bne          a4, t6, 133f
133:              sll          t0, a7, s3
                  srli         sp, sp, 22
                  srai         a4, ra, 10
                  sltu         sp, s5, t3
                  sltiu        s7, t6, 515
                  slti         ra, ra, 1806
                  srl          s5, t2, s4
                  bltu         t2, t1, 154f
                  add          s11, s2, gp
                  slt          s5, s8, s6
                  ori          s2, s0, 1472
                  bltu         a0, s3, 162f
                  add          s3, zero, s2
                  andi         a6, s5, -622
                  xori         zero, a5, -1010
                  srl          s9, s2, s4
                  beq          t0, s6, 168f
                  sltiu        a6, t6, 759
                  addi         s6, tp, 397
                  addi         s1, s4, -27
                  srl          s7, a7, s9
154:              andi         a4, a1, -789
                  srai         s10, s8, 1
                  bge          s2, t5, 163f
                  or           s6, t4, gp
                  sra          t0, s1, t2
                  beq          s1, gp, 166f
                  auipc        a6, 265842
                  sub          a6, gp, gp
162:              bgeu         t1, t0, 180f
163:              bge          gp, s10, 179f
                  srl          sp, s3, s8
                  srl          a4, a5, s9
166:              beq          tp, s6, 175f
                  beq          s9, s9, 174f
168:              bltu         s6, s3, 169f
169:              bgeu         t1, t0, 187f
                  sltiu        s5, t1, -1288
                  bgeu         s3, t2, 185f
                  slli         s3, s5, 19
                  add          t2, ra, t3
174:              sltiu        a6, s7, 656
175:              sra          zero, a3, a1
                  lui          a2, 884727
                  sltu         s1, s9, s8
                  slt          s8, s6, s0
179:              or           s2, s10, s10
180:              sltu         tp, a4, s9
                  sltiu        s1, t1, 1347
                  bgeu         gp, a5, 184f
                  slti         s4, a2, 1809
184:              srai         t4, a1, 25
185:              lui          t0, 375920
                  sltu         s4, s0, a1
187:              slti         s9, a4, 375
                  beq          t2, zero, 189f
189:              or           s5, t4, t3
                  bne          s6, ra, 200f
                  sltiu        s1, ra, 724
                  srai         s5, a5, 7
                  srl          a6, a3, ra
                  slti         s6, s7, 584
                  blt          t1, a6, 209f
                  blt          s10, a4, 206f
                  sltiu        a6, t1, 1176
                  add          s6, zero, s7
                  srl          a3, s9, s4
200:              add          t3, tp, a0
                  beq          s7, t1, 202f
202:              xori         t2, zero, 1500
                  bge          t1, a7, 220f
                  sub          a3, sp, s7
                  ori          s8, t4, -228
206:              ori          s11, a1, -1983
                  bgeu         ra, zero, 208f
208:              bge          sp, s4, 223f
209:              srli         a3, t2, 7
                  sltu         t2, t2, t5
                  addi         a4, zero, -1960
                  blt          a5, a4, 222f
                  slti         tp, s3, -1010
                  beq          a5, s2, 229f
                  slti         t0, t3, -246
                  slt          s5, s8, s4
                  bne          s10, s7, 236f
                  addi         s11, ra, 277
                  add          s1, s10, s0
220:              slt          s5, s0, a6
                  bge          s11, sp, 226f
222:              add          s5, a7, t4
223:              ori          s5, s4, -2044
                  slt          a5, a4, s3
                  or           t2, ra, s4
226:              slli         s4, t6, 5
                  beq          s6, s4, 235f
                  xor          s10, gp, t5
229:              slli         t4, t3, 7
                  sub          s9, s2, s10
                  bge          s10, t2, 249f
                  xori         t3, s7, 965
                  and          zero, gp, a2
                  slt          s8, s6, s11
235:              srli         a4, t6, 18
236:              slti         t2, t5, -1321
                  bne          s3, s8, 251f
                  bne          a1, s3, 257f
                  srai         a6, t3, 31
                  slt          s9, s5, s8
                  or           s9, ra, a2
                  ori          a0, a4, 1846
                  sltiu        a7, t2, 2020
                  addi         s8, s7, 722
                  xor          t4, t6, a2
                  sub          a5, a3, s4
                  sub          s8, s5, t3
                  blt          s4, t4, 258f
249:              bgeu         t3, t3, 257f
                  add          a3, a1, t5
251:              nop
                  add          a7, s4, a7
                  sltu         sp, t0, a4
                  beq          a4, a4, 263f
                  slli         t0, s9, 20
                  bne          s3, zero, 266f
257:              bne          s1, a6, 272f
258:              add          a6, s1, s4
                  sub          t2, a0, s0
                  sll          sp, gp, a3
                  add          s0, ra, sp
                  and          s0, ra, a0
263:              ori          t4, a7, 1138
                  sub          s5, a3, a4
                  sltu         a2, t6, a3
266:              blt          s9, a4, 280f
                  slti         tp, s6, 2015
                  or           ra, s10, a1
                  srl          s2, a6, t1
                  sltu         s4, s6, a7
                  bge          s3, s8, 282f
272:              bgeu         a1, t1, 277f
                  bgeu         s5, a5, 290f
                  sub          s7, t2, s5
                  auipc        s8, 19984
                  srli         zero, tp, 25
277:              slti         tp, t5, -252
                  slli         a5, a4, 25
                  addi         s2, s4, 1604
280:              andi         tp, s3, -373
                  xori         a3, s7, 1836
282:              sltiu        t2, gp, 1825
                  bltu         a3, a3, 290f
                  lui          a3, 687935
                  sltu         gp, t0, s11
                  slti         s7, a6, -74
                  or           t1, s0, s6
                  bge          t5, a2, 295f
                  andi         a0, s5, -1564
290:              beq          a3, tp, 297f
                  slt          ra, a6, t1
                  xori         s8, t4, 188
                  bltu         a5, s8, 294f
294:              xor          s11, t1, t0
295:              sra          s4, sp, s10
                  nop
297:              sub          s11, s3, s2
                  sub          s9, sp, s0
                  andi         s7, t0, 779
                  nop
                  auipc        s7, 1048538
                  sll          t1, a1, t4
                  xor          t0, s0, t3
                  andi         zero, s2, -154
                  addi         s10, a6, 70
                  or           t2, t0, s9
                  or           gp, gp, zero
                  sub          gp, s2, s11
                  sltiu        a7, a6, 634
                  nop
                  nop
                  andi         s10, s0, 168
                  slt          s5, t2, s3
                  beq          tp, a5, 316f
                  bgeu         a6, a0, 333f
316:              ori          a0, a4, 1808
                  and          s1, t1, t6
                  bgeu         a0, s9, 319f
319:              xori         t0, s3, 317
                  nop
                  bne          s9, t1, 322f
322:              andi         s11, s5, 249
                  sltu         t4, s0, zero
                  xori         t2, a5, -756
                  sra          ra, s5, t5
                  slli         s7, a2, 28
                  slt          a5, gp, s5
                  bne          t1, s0, 346f
                  sltiu        s7, s4, -795
                  bltu         s4, a3, 335f
                  bltu         s1, s1, 332f
332:              ori          s7, s6, -259
333:              andi         s11, a2, 1133
                  auipc        s11, 35604
335:              srli         s10, s9, 25
                  bltu         s11, s3, 355f
                  slt          t3, t3, a6
                  sltiu        a5, gp, 10
                  lui          s9, 319905
                  bge          t3, s11, 354f
                  sll          gp, t0, s0
                  xor          a4, a5, zero
                  bgeu         s3, t0, 358f
                  sltiu        sp, t3, -1961
                  ori          t4, a5, -1330
346:              sll          t3, s3, t0
                  bgeu         a0, a5, 354f
                  blt          t4, s8, 349f
349:              xor          s8, a0, s10
                  bgeu         a5, gp, 360f
                  add          t1, t5, s1
                  bgeu         s11, a0, 368f
                  slli         t0, s10, 7
354:              srl          s7, s3, s8
355:              lui          t0, 181895
                  xori         ra, ra, 1869
                  bltu         a0, a4, 362f
358:              lui          s10, 554587
                  srli         t0, a4, 26
360:              slli         a7, a5, 28
                  sltiu        s2, t6, 1412
362:              sll          s2, t3, t3
                  xori         t0, s10, 1142
                  bgeu         s6, t2, 375f
                  auipc        t2, 943645
                  xor          t2, zero, s0
                  slli         t4, t3, 29
368:              addi         t1, sp, 1637
                  sra          s1, t5, s9
                  auipc        a2, 232872
                  srli         a4, t6, 6
                  sub          s1, ra, s11
                  bgeu         s4, a2, 383f
                  srai         t2, tp, 11
375:              xori         s0, a2, -1028
                  slli         s7, s4, 13
                  slt          s0, t6, t3
                  srl          a7, s10, s0
                  ori          a7, s10, 874
                  bgeu         s3, s11, 394f
                  xor          gp, a4, a3
                  blt          t0, s5, 389f
383:              slt          a2, s8, a7
                  bne          t2, a0, 389f
                  bne          a6, a0, 387f
                  srli         tp, ra, 4
387:              bgeu         t2, gp, 397f
                  slti         a2, s2, -722
389:              xori         ra, a4, 47
                  xor          s9, tp, zero
                  sub          a7, zero, a0
                  lui          t1, 508926
                  slli         s3, a1, 6
394:              slti         a6, a7, 143
                  andi         a3, t6, -366
                  andi         s6, a7, 781
397:              sub          s11, s0, zero
                  bgeu         a4, s4, 399f
399:              or           s9, t3, s3
                  ori          t3, t6, -2044
                  sub          a2, a2, s3
                  srli         t2, t1, 14
                  beq          sp, a1, 410f
                  blt          s1, gp, 418f
                  xori         a0, a5, 462
                  addi         zero, t1, 1801
                  ori          s1, s7, 1752
                  bge          s3, a1, 423f
                  srli         s6, s1, 29
410:              lui          a7, 348534
                  sll          a5, s11, s6
                  xor          sp, sp, gp
                  addi         tp, s5, -672
                  nop
                  addi         s1, s7, -1973
                  bltu         a6, t3, 425f
                  and          s11, gp, s7
418:              lui          tp, 12610
                  srl          s5, s7, t4
                  sll          s9, s0, t6
                  bgeu         s6, t4, 428f
                  add          a4, t2, a7
423:              bgeu         gp, a3, 439f
                  lui          zero, 557329
425:              bge          gp, s1, 443f
                  sltu         s7, s9, t5
                  sra          s4, s4, s2
428:              nop
                  lui          a2, 449378
                  bgeu         s1, tp, 448f
                  sltiu        s10, t0, 1736
                  xori         t2, t5, 1797
                  addi         sp, s10, 932
                  sra          t0, ra, t0
                  srl          s10, s10, s8
                  sltiu        sp, a0, -1361
                  ori          s6, a6, 105
                  bltu         a1, s1, 439f
439:              blt          s1, s10, 457f
                  andi         t1, t2, -913
                  andi         ra, a0, 397
                  addi         t3, t0, 596
443:              beq          a7, s2, 444f
444:              srli         s10, t1, 15
                  ori          a3, s1, 1145
                  sub          a6, s6, tp
                  xori         s10, s3, -1898
448:              sra          a5, gp, tp
                  sll          s10, s5, t2
                  slti         t0, a2, -1102
                  bge          t0, s9, 452f
452:              blt          a2, zero, 453f
453:              sra          s6, s10, a0
                  sll          a0, s8, tp
                  or           a0, s8, a1
                  sll          a6, t3, s2
457:              auipc        t0, 430838
                  sub          tp, a2, s5
                  bgeu         s9, sp, 466f
                  slti         s9, s7, -798
                  slli         t3, t4, 16
                  sra          s11, a5, a0
                  beq          t6, s9, 478f
                  sltiu        sp, a3, -1272
                  nop
466:              slt          s1, ra, a3
                  xor          s6, s4, s6
                  slli         s4, s10, 29
                  andi         a4, s1, 1207
                  lui          a6, 415418
                  add          s3, s3, t2
                  blt          t5, t2, 491f
                  slli         zero, gp, 0
                  bge          zero, gp, 491f
                  sub          a3, s0, zero
                  add          a7, a0, a3
                  bgeu         s3, s0, 485f
478:              sltiu        zero, s5, -1007
                  xor          sp, a4, s10
                  bgeu         t6, t4, 494f
                  srai         a2, zero, 0
                  srli         s6, t1, 11
                  bgeu         s11, a5, 502f
                  ori          t3, gp, -2031
485:              add          s7, t0, s11
                  blt          a2, ra, 496f
                  la           s0, region_0+1697 #start riscv_load_store_rand_instr_stream_3
                  lb           s10, 52(s0)
                  nop
                  lb           ra, 41(s0)
                  slli         s3, t6, 24
                  lw           t4, -13(s0)
                  sh           a1, -3(s0)
                  auipc        tp, 906172
                  sb           s9, -32(s0)
                  sh           t5, 35(s0)
                  sb           s2, 42(s0)
                  lh           t3, 59(s0)
                  lbu          s9, 29(s0)
                  lb           t4, -11(s0)
                  sub          sp, s10, a3
                  lb           a2, 41(s0)
                  nop
                  sltiu        s2, a2, -870
                  lbu          s4, -50(s0)
                  lbu          s10, -54(s0)
                  sb           s8, -2(s0)
                  xor          s9, s8, s5
                  sltiu        s1, s6, -1881
                  lh           t4, 13(s0)
                  lb           s3, -20(s0)
                  sb           t6, 0(s0)
                  sb           s9, 11(s0)
                  lb           tp, -2(s0)
                  ori          s3, s4, -972
                  lui          s1, 908325
                  lb           zero, 52(s0)
                  sub          s5, t5, s5
                  nop
                  sh           ra, -15(s0)
                  sh           t4, -47(s0)
                  srl          s5, s3, a6
                  lh           ra, -47(s0)
                  and          ra, gp, s10
                  srai         a4, gp, 28
                  lbu          s6, 0(s0)
                  lb           t1, -53(s0)
                  slli         a3, a5, 5
                  sb           zero, -44(s0)
                  sb           t5, -34(s0)
                  lh           a7, 39(s0)
                  lbu          s6, 53(s0) #end riscv_load_store_rand_instr_stream_3
                  or           gp, s3, a2
                  xori         t2, a5, 1786
                  sub          a6, s0, s4
                  lui          tp, 845207
491:              beq          ra, s5, 505f
                  lui          sp, 126304
                  bne          s10, t3, 494f
494:              bltu         t4, s0, 512f
                  bge          a1, s6, 514f
496:              blt          a5, zero, 497f
497:              slli         s1, s0, 17
                  auipc        a4, 180297
                  nop
                  sltu         a5, t3, a6
                  add          s1, s10, s1
502:              sltu         t0, s3, s2
                  nop
                  blt          a2, a0, 521f
505:              xori         gp, s5, 1324
                  sra          a6, a3, sp
                  ori          s3, s11, 728
                  auipc        s6, 910923
                  bge          s6, tp, 527f
                  nop
                  xori         a7, t4, 1856
512:              andi         a6, zero, 1498
                  bge          a2, a4, 528f
514:              ori          t0, t1, 307
                  beq          a3, a1, 517f
                  or           s3, a1, a6
517:              srli         a5, a1, 21
                  auipc        a6, 879853
                  xori         s0, a4, -1023
                  srli         s2, t4, 17
521:              ori          sp, s3, 17
                  sltu         tp, s10, a7
                  beq          a6, s1, 532f
                  srli         s0, a5, 18
                  addi         a5, t2, -538
                  srl          tp, a3, s8
527:              xori         t1, s1, 417
528:              addi         t3, s0, 160
                  ori          a6, s1, -174
                  sra          t4, t2, t5
                  srli         s10, a1, 12
532:              lui          s5, 440030
                  ori          t1, s10, 2016
                  add          a7, t5, ra
                  or           a6, s4, s9
                  xor          a3, tp, a3
                  slti         s3, t5, 1919
                  sra          a0, a1, t3
                  lui          s1, 284988
                  srai         s5, s0, 2
                  sltu         a0, s2, a3
                  or           zero, t6, s2
                  xori         s9, sp, -431
                  lui          a7, 203037
                  srai         s9, t5, 2
                  sra          t0, t5, s0
                  lui          ra, 513886
                  auipc        zero, 450659
                  xori         t2, a1, -1973
                  bne          s11, a4, 551f
551:              bge          sp, s7, 561f
                  bge          s0, s6, 560f
                  ori          s1, gp, 1012
                  bgeu         s9, s4, 559f
                  beq          s11, t4, 565f
                  sub          s9, s0, gp
                  bne          t1, s4, 558f
558:              slt          s2, tp, s9
559:              xori         sp, t6, -2006
560:              slli         t1, t1, 28
561:              slli         a3, s8, 27
                  srl          s10, s10, t0
                  xori         a7, t5, 276
                  xori         ra, t5, 150
565:              blt          t1, a1, 583f
                  xor          s7, tp, gp
                  srli         ra, s8, 22
                  lui          t2, 286040
                  xor          s11, t6, t2
                  andi         s8, s7, 686
                  beq          a7, s2, 578f
                  bne          s10, a0, 582f
                  and          a0, s10, s11
                  blt          t3, s3, 581f
                  bltu         s2, t4, 582f
                  srl          a4, a0, a5
                  srli         s4, a1, 19
578:              srai         sp, t0, 15
                  sltiu        s8, t0, 1595
                  srai         s0, ra, 2
581:              sltiu        gp, s4, -652
582:              srli         a7, tp, 31
583:              srai         a6, s4, 16
                  xor          s1, s2, zero
                  slli         s10, s2, 23
                  slti         a4, a4, 280
                  srl          s8, a6, s3
                  and          a4, t0, sp
                  lui          s0, 690694
                  srl          s0, s0, t5
                  srl          s5, a7, s6
                  bne          s2, a0, 606f
                  blt          a6, s1, 598f
                  bgeu         t4, a7, 605f
                  bgeu         s0, s8, 610f
                  blt          zero, a3, 610f
                  beq          a4, t3, 613f
598:              xori         s10, s11, -1050
                  ori          s8, a1, -557
                  and          a5, s8, t0
                  blt          t6, a0, 602f
602:              or           s1, zero, a4
                  sll          s0, s10, s8
                  sltiu        ra, s11, 2030
605:              or           s7, a6, a7
606:              addi         a6, a7, -396
                  blt          s5, s7, 626f
                  nop
                  sltu         s9, sp, t3
610:              addi         t3, sp, 546
                  bgeu         a7, s8, 618f
                  sltu         a0, a0, s5
613:              addi         sp, s6, 1006
                  bne          a3, s7, 624f
                  andi         s4, t2, 1595
                  srai         tp, s2, 14
                  bgeu         t4, a5, 618f
618:              sltu         s1, t2, s6
                  blt          t4, t0, 629f
                  srl          gp, s9, s8
                  srai         t3, t2, 12
                  xor          t0, a3, s0
                  lui          a6, 871287
624:              sltu         s4, t4, tp
                  slli         sp, sp, 26
626:              nop
                  addi         s0, t0, 864
                  slt          a7, a7, ra
629:              slti         gp, sp, 122
                  sltu         zero, t3, t4
                  sltu         s10, zero, s5
                  sltu         t2, s0, sp
                  beq          a0, zero, 640f
                  sltu         s5, s8, a0
                  addi         zero, t4, 681
                  bltu         a1, t3, 637f
637:              bgeu         t5, t2, 655f
                  and          zero, t6, a6
                  bltu         a0, sp, 648f
640:              srai         a0, s10, 6
                  nop
                  or           a6, t4, s5
                  add          a7, s10, t2
                  srli         a5, s8, 24
                  lui          s9, 677926
                  xor          a0, s3, s2
                  bge          s3, t2, 661f
648:              slti         t0, a2, 201
                  blt          t6, s1, 667f
                  srai         zero, a0, 29
                  slli         s11, t1, 29
                  slti         s4, s1, 1597
                  xori         t4, s3, 470
                  xor          s9, a2, t3
655:              ori          a7, a5, 1011
                  srai         s7, s9, 1
                  add          a2, a7, s4
                  srai         s11, a4, 21
                  slt          s10, s0, s9
                  srai         sp, s5, 24
661:              slli         a4, a4, 19
                  sub          a7, a3, s6
                  andi         a2, s5, 1107
                  slti         s6, s9, -407
                  bltu         t4, t6, 683f
                  xor          ra, s9, sp
667:              slli         s4, s7, 0
                  srl          s0, s6, t6
                  sltu         t4, s1, ra
                  addi         a7, a6, 768
                  bgeu         a5, s0, 688f
                  bge          sp, s1, 674f
                  srai         t4, t4, 8
674:              nop
                  andi         gp, a3, -1735
                  bgeu         s5, t0, 684f
                  slli         s11, tp, 29
                  and          t1, s11, gp
                  bne          s11, sp, 698f
                  sra          tp, s0, s2
                  ori          s2, s3, -1703
                  lui          s7, 901962
683:              slt          a2, t5, a1
684:              addi         s1, t0, -1585
                  srl          a7, a4, tp
                  sra          s0, ra, a3
                  slt          zero, s11, s10
688:              or           s6, sp, a6
                  nop
                  sub          sp, s8, a5
                  addi         s8, s11, -579
                  auipc        s4, 653544
                  nop
                  sltu         t4, sp, a2
                  sub          a2, s4, t1
                  sltiu        tp, a0, 322
                  beq          t5, tp, 704f
698:              lui          a0, 1011196
                  slti         s4, s7, -1022
                  lui          sp, 1045294
                  addi         a7, t1, 680
                  and          sp, a7, t1
                  slli         s4, t2, 12
704:              nop
                  sub          t1, sp, s1
                  addi         t4, a4, -354
                  xor          a7, a6, t0
                  or           ra, a7, t0
                  bne          s8, a2, 716f
                  add          s7, s5, a4
                  ori          sp, a6, -1298
                  sra          zero, s0, t3
                  sra          a2, s4, zero
                  andi         zero, a7, -371
                  blt          zero, s5, 729f
716:              sub          s8, tp, s0
                  bltu         a5, t4, 733f
                  xor          s7, a1, s10
                  blt          t5, s8, 724f
                  auipc        t1, 159045
                  xori         t1, zero, -1094
                  andi         a7, s3, -241
                  bge          t1, s0, 724f
724:              sra          s11, a6, tp
                  bltu         t0, sp, 726f
726:              xori         s3, a4, -1952
                  bltu         ra, s3, 741f
                  srli         t1, t1, 27
729:              xor          t0, a7, a2
                  and          a4, sp, s8
                  lui          a4, 692493
                  lui          s5, 676014
733:              lui          ra, 162086
                  slti         s4, s3, 1197
                  sra          a7, s10, zero
                  bltu         t3, gp, 751f
                  beq          gp, s3, 742f
                  srai         a5, s5, 29
                  srai         s3, s3, 31
                  or           zero, t4, t5
741:              sll          a3, s2, t5
742:              sra          sp, t3, gp
                  slti         tp, t1, -61
                  slti         zero, a5, 395
                  slli         a5, s7, 13
                  srli         t1, a4, 31
                  add          t3, ra, a2
                  slti         t4, a1, 1400
                  ori          s10, gp, -1955
                  andi         a6, s2, 1083
751:              bge          s6, tp, 762f
                  lui          gp, 520644
                  slli         a0, a0, 3
                  addi         a0, s5, 1096
                  xori         a2, s3, -902
                  xori         a0, s3, -1129
                  ori          s10, a3, 1535
                  ori          gp, a2, -1617
                  xor          s8, s8, s11
                  add          s1, s1, s10
                  slt          a7, t1, t1
762:              bgeu         s11, t1, 772f
                  andi         t1, s6, -799
                  addi         s5, a5, -965
                  srl          s9, s0, s9
                  slti         t1, s8, 1765
                  beq          s6, a3, 786f
                  bgeu         s4, s7, 783f
                  beq          s7, t4, 776f
                  sra          a3, a5, s5
                  nop
772:              sub          s9, a4, tp
                  xori         a4, t6, 1362
                  add          s1, s6, a6
                  srli         t4, t3, 13
776:              srai         s6, s10, 3
                  srl          s3, a1, s4
                  add          ra, a0, t1
                  sltu         s0, s6, a7
                  blt          s10, s4, 781f
781:              bgeu         s9, s6, 795f
                  xor          s8, s9, s4
783:              auipc        a0, 234469
                  bltu         t5, s8, 792f
                  beq          t3, s11, 802f
786:              bge          a4, t4, 793f
                  ori          a7, t3, 484
                  xor          t4, s2, s6
                  srli         tp, a6, 10
                  auipc        a4, 285955
                  addi         s4, s6, 1667
792:              ori          a0, t2, -1776
793:              slti         a2, gp, 1872
                  bge          sp, s7, 796f
795:              andi         s8, s0, 31
796:              xori         a4, s5, 1040
                  nop
                  sltiu        t1, t1, -988
                  sll          s0, s5, s7
                  xori         tp, tp, -514
                  srl          s7, a3, a1
802:              srai         a5, t0, 19
                  beq          t3, s6, 810f
                  xor          gp, a1, t0
                  srai         s6, t1, 22
                  xor          ra, ra, ra
                  blt          t2, t6, 825f
                  sll          s9, s1, t2
                  slli         a0, t0, 24
810:              auipc        a7, 59710
                  sll          s9, t5, s9
                  xor          t2, zero, t1
                  sra          s6, s7, tp
                  and          s6, s1, s0
                  auipc        gp, 570948
                  xor          s3, zero, t0
                  xori         s3, s2, 611
                  bge          a0, tp, 833f
                  sltiu        s2, t2, -283
                  bge          a6, gp, 835f
                  sub          s4, a2, s9
                  andi         s9, t0, -420
                  sltu         s1, s2, s1
                  la           s4, sub_8
                  sltu         t4, s3, t6
                  add          a5, s10, t0
                  addi         s4, s4, 792
                  xor          a6, a3, gp
                  auipc        s5, 8699
                  xor          a3, t3, t1
                  or           t2, ra, s7
                  xor          s9, s6, t3
                  srl          s10, a4, s5
sub_5_j12:        jalr         ra, s4, -791 #jump sub_5 -> sub_8
                  addi         a7, a5, -460
                  sll          s5, s6, s7
                  sra          sp, s6, a7
825:              sll          t0, s10, s5
                  ori          t0, a5, -1884
                  bne          s11, a5, 834f
                  beq          s1, sp, 842f
                  xori         s9, ra, -191
                  sltu         s4, t3, t3
                  bgeu         sp, t6, 847f
                  bge          s4, a3, 833f
833:              bge          a6, t3, 852f
834:              beq          s0, s7, 844f
835:              and          t2, t3, s9
                  xori         s1, a6, -806
                  bge          s4, a7, 847f
                  nop
                  slli         a2, tp, 20
                  lui          a7, 124422
                  bltu         s9, s3, 859f
842:              addi         t4, a6, -859
                  sra          t2, t1, s6
844:              srai         ra, t1, 13
                  ori          a0, a2, -1267
                  xor          t1, a4, zero
847:              slti         t4, a2, -231
                  sltu         s2, a7, s9
                  xor          s1, s4, a6
                  bltu         a3, a2, 868f
                  xor          a6, s2, a3
852:              slt          t0, s2, s8
                  and          zero, s3, t6
                  sub          t3, s1, a4
                  xor          t3, a1, s10
                  auipc        s5, 949139
                  slli         tp, t0, 28
                  sra          s11, a1, s8
859:              auipc        a3, 55320
                  or           a3, sp, a1
                  addi         ra, s0, -1150
                  bgeu         s11, a2, 872f
                  xori         a3, a7, 1354
                  bne          a5, s10, 875f
                  sra          gp, t0, a7
                  add          t0, t4, s7
                  sll          s3, t1, t6
868:              slli         s7, s9, 16
                  nop
                  andi         a6, t4, 1254
                  add          s11, t4, s7
872:              slli         s7, s2, 29
                  sra          a5, s8, s8
                  srl          gp, ra, t6
875:              bltu         s11, s5, 884f
                  sub          s3, t1, zero
                  bge          s2, s9, 884f
                  auipc        sp, 464779
                  srl          s9, s7, s9
                  sltu         tp, s5, a2
                  and          s9, s9, t3
                  slli         s5, t0, 17
                  ori          s9, t5, -1059
884:              xor          s2, t6, ra
                  bge          t4, ra, 886f
886:              xor          s10, a7, t3
                  sub          t2, s2, t0
                  bge          t5, a0, 893f
                  slt          s0, a1, tp
                  srai         a3, t4, 25
                  ori          a6, a6, 648
                  srai         s2, t1, 13
893:              bge          a6, tp, 907f
                  lui          s5, 706261
                  slt          zero, a2, a5
                  sub          ra, s1, s6
                  xori         s3, a1, 700
                  addi         ra, t1, 331
                  slli         s2, ra, 1
                  blt          t4, s6, 901f
901:              lui          s3, 332442
                  beq          s2, s3, 921f
                  sra          s5, s2, s5
                  slt          a2, s7, s0
                  srai         a5, sp, 25
                  bltu         t4, sp, 911f
907:              sra          a7, s0, gp
                  sra          s4, a2, s6
                  sltiu        a0, a4, 494
                  xor          ra, t1, a0
911:              and          t2, t5, s6
                  sll          a7, s9, s10
                  auipc        t4, 47358
                  sub          s0, a2, s8
                  sra          s9, gp, a1
                  bltu         tp, t4, 917f
917:              lui          s8, 569101
                  nop
                  srli         a0, s1, 12
                  add          a5, a1, s7
921:              sltu         zero, t4, gp
                  lui          s6, 1045845
                  sltiu        a2, a3, 1656
                  lui          s9, 737622
                  blt          t6, a3, 926f
926:              nop
                  bgeu         a7, t6, 932f
                  and          sp, s4, s10
                  ori          s1, a1, 1688
                  bltu         ra, zero, 946f
                  auipc        t0, 986080
932:              or           t2, a2, s6
                  bgeu         t2, s0, 952f
                  sll          zero, a5, a4
                  sll          s3, sp, s3
                  lui          sp, 924349
                  bgeu         a4, t0, 945f
                  add          a3, s5, a1
                  auipc        a3, 1045706
                  auipc        a5, 770451
                  blt          gp, a6, 955f
                  beq          s0, zero, 952f
                  sltu         t0, s9, a7
                  slli         a6, s8, 1
945:              andi         s9, s0, 437
946:              and          a7, s1, s3
                  or           sp, a2, s4
                  addi         a2, t0, 1131
                  andi         a7, a1, -720
                  sltiu        t0, a7, -1040
                  bltu         a6, zero, 952f
952:              srl          t1, gp, a2
                  addi         s5, tp, 1521
                  nop
955:              srli         s6, s6, 19
                  or           s11, t5, a5
                  andi         t0, s6, -723
                  sub          s7, t5, a7
                  andi         s6, s4, 880
                  xori         s2, s7, -126
                  beq          t4, s9, 976f
                  sltu         tp, s11, a0
                  sltu         tp, a7, s10
                  slti         a7, a2, 1253
                  slt          s1, s8, s11
                  andi         t1, a6, 1429
                  andi         sp, t2, 1766
                  xor          a6, a3, a7
                  auipc        tp, 869171
                  bge          tp, a3, 985f
                  srai         a0, s6, 14
                  add          tp, sp, s10
                  sll          s5, a2, t5
                  sra          s10, s10, a4
                  srli         s9, ra, 26
976:              slti         a7, a7, 1136
                  and          s11, tp, a7
                  bltu         s3, s7, 979f
979:              slt          s2, a1, s9
                  andi         t0, t5, -404
                  srai         s8, t2, 27
                  sll          t1, s3, t5
                  sltiu        t2, a0, 790
                  sub          s0, s6, s6
985:              slli         a4, s9, 16
                  ori          s10, t3, -1703
                  nop
                  slli         a5, s5, 24
                  sltiu        t2, s11, -1162
                  sltiu        t4, s1, -1362
                  andi         gp, t1, 89
                  beq          s3, s6, 1010f
                  bge          zero, zero, 1004f
                  srl          s3, a4, t3
                  sub          s6, s10, zero
                  auipc        s0, 1044830
                  srl          t0, t2, s10
                  srli         t2, s6, 0
                  add          a4, t2, sp
                  bne          s5, s11, 1002f
                  srl          a5, a6, sp
1002:             sra          a6, zero, s0
                  bgeu         tp, a6, 1012f
1004:             add          t4, a1, t6
                  slti         a2, t1, 688
                  blt          s1, t3, 1023f
                  srai         a6, a3, 8
                  xor          s6, t4, s11
                  srl          t3, t2, t2
1010:             srli         a2, a5, 26
                  srli         s3, s2, 22
1012:             bne          s1, a4, 1030f
                  beq          s9, a3, 1027f
                  add          a4, a7, s1
                  andi         t2, t3, 1776
                  srli         s0, a2, 10
                  blt          s6, s8, 1018f
1018:             bne          sp, s3, 1028f
                  bgeu         t5, a2, 1026f
                  nop
                  bne          ra, ra, 1028f
                  add          s11, s0, t6
1023:             addi         s6, zero, 1203
                  srl          a3, zero, tp
                  add          a7, t0, s7
1026:             auipc        ra, 206221
1027:             sub          sp, a4, s7
1028:             bltu         s9, s3, 1035f
                  blt          s8, t1, 1047f
1030:             slti         s5, s4, 2006
                  sll          t1, a1, s0
                  srai         a5, t4, 20
                  xor          a5, a1, a0
                  xor          s5, ra, a0
1035:             slt          s0, s9, s0
                  slti         s3, t1, -2014
                  bgeu         s8, a6, 1038f
1038:             slti         s11, s1, -74
                  slt          t2, a5, ra
                  bltu         a4, s9, 1059f
                  blt          s9, sp, 1046f
                  xori         a3, s1, 1108
                  beq          s8, a1, 1044f
1044:             srli         t0, s1, 20
                  sltu         s5, a7, s6
1046:             sll          t0, a1, s3
1047:             sltu         a3, s5, sp
                  bltu         ra, t0, 1055f
                  xor          s2, t5, t0
                  lui          a6, 200487
                  and          s2, a7, zero
                  srli         s11, t2, 23
                  lui          a2, 675951
                  bltu         a7, s6, 1064f
1055:             beq          s6, a7, 1069f
                  sra          ra, a6, t1
                  sltu         s1, s10, s9
                  lui          s3, 70945
1059:             addi         zero, s0, 1311
                  sltu         t1, s5, a6
                  or           s4, s1, tp
                  andi         a3, s6, -1751
                  slli         s10, t6, 16
1064:             srli         a3, a3, 4
                  sltu         zero, s2, s5
                  lui          s5, 905466
                  nop
                  srai         t1, s2, 29
1069:             sll          s6, ra, a2
                  add          s6, sp, t2
                  sll          s8, a5, tp
                  slli         a6, t2, 16
                  auipc        s9, 263196
                  xor          a4, a1, s2
                  xori         s9, a1, 1786
                  slt          sp, gp, s0
                  auipc        s5, 977588
                  ori          t2, a3, -223
                  lui          a0, 600651
                  addi         s11, a6, 803
                  bge          a1, t2, 1096f
                  addi         s8, s4, -1008
                  nop
                  slli         t2, t6, 31
                  slti         s3, s9, -683
                  sub          s6, t0, s1
                  sra          a0, gp, s1
                  srai         s0, t4, 14
                  bne          a6, s9, 1108f
                  and          s3, t6, t6
                  sltiu        s6, t0, 1574
                  xor          a6, a3, s8
                  sltiu        s11, sp, -1492
                  ori          s4, a6, 162
                  sltiu        gp, s9, -1563
1096:             add          t1, t1, a3
                  bgeu         s5, a5, 1112f
                  xori         t0, a6, -32
                  bge          s2, a5, 1118f
                  bgeu         s10, a0, 1110f
                  ori          s7, t4, -1315
                  xor          s8, a6, t1
                  lui          s10, 943368
                  addi         a0, t6, 16
                  srai         zero, s7, 22
                  and          t3, zero, t1
                  srai         a2, sp, 11
1108:             addi         sp, t5, 1295
                  nop
1110:             slti         a4, s0, 701
                  slti         s9, s8, 658
1112:             beq          s10, a6, 1113f
1113:             ori          sp, a5, 1255
                  auipc        a6, 965232
                  addi         s5, s5, 1832
                  sub          a7, a4, t2
                  bge          ra, ra, 1123f
1118:             and          a7, s4, s4
                  slt          t2, a3, gp
                  xori         ra, a7, -774
                  srai         s2, s2, 19
                  nop
1123:             srl          a0, t5, s1
                  slti         a3, zero, 492
                  ori          t2, a2, 941
                  lw           ra, 4(a1)
                  sll          a6, s5, s8
                  auipc        t2, 118433
                  slt          s1, s3, t1
                  addi         a1, a1, 40
                  lui          s6, 328114
                  andi         t3, t3, -965
                  slti         a6, s5, 1258
                  srli         s0, a1, 16
                  srl          t1, gp, a1
1519:             addi x21, x1, 1
1519:             jalr x21, x21, 0
sub_10:           bltu         s10, a5, sub_10_stack_p
                  sub          s0, tp, a2
sub_10_stack_p:   addi         a1, a1, -52
                  srl          s11, sp, s0
                  slti         a5, tp, -473
                  ori          s8, t2, 1182
                  sra          s9, s11, sp
                  slt          tp, s3, t1
                  slt          s8, sp, sp
                  sw           ra, 4(a1)
                  nop
                  la           a3, region_1+653 #start riscv_load_store_rand_instr_stream_0
                  sh           s6, 5(a3)
                  sb           s7, 54(a3)
                  nop
                  lbu          ra, 5(a3)
                  add          s2, gp, a0
                  sra          t4, tp, a7
                  lbu          s6, 54(a3)
                  sra          a5, s2, a6
                  sb           s9, 31(a3)
                  sub          gp, zero, s6
                  sh           zero, -5(a3)
                  sh           a2, -55(a3)
                  xor          s1, a4, a5
                  srl          t3, a5, t6
                  lui          s5, 117459
                  srai         gp, a5, 15
                  lbu          t3, 12(a3)
                  sh           a1, 17(a3)
                  or           a4, s10, s3
                  sw           s0, -9(a3)
                  xor          gp, s6, s2
                  srli         gp, s7, 3
                  lb           s9, 49(a3)
                  sb           a0, 13(a3)
                  sra          s0, t5, t5
                  lhu          gp, -37(a3)
                  lui          ra, 18657
                  sra          t2, gp, t1
                  xor          ra, tp, a0
                  lb           s2, 35(a3)
                  sltiu        s4, s8, -707
                  auipc        s2, 337542
                  sb           t3, -54(a3)
                  lb           a6, -4(a3)
                  xori         a2, a1, 1417
                  lbu          tp, 0(a3)
                  lui          s0, 244730
                  lbu          a5, -53(a3)
                  sra          s11, a2, t3
                  addi         s11, gp, 858
                  lbu          s5, 64(a3)
                  lb           a2, -63(a3)
                  nop
                  lh           s0, -31(a3) #end riscv_load_store_rand_instr_stream_0
                  bne          s9, s6, 10f
                  srl          t1, s2, ra
                  sll          a7, s0, zero
                  sub          a2, s11, a5
                  slti         s3, a5, 7
                  slli         ra, zero, 31
                  ori          t3, a3, 1922
                  sltu         t0, a0, a4
                  auipc        t1, 755433
                  sltu         a4, a5, s3
10:               sll          s11, a3, t4
                  srai         zero, a7, 25
                  bltu         t6, t2, 25f
                  bltu         a2, a0, 21f
                  bne          tp, zero, 32f
                  srli         zero, t3, 26
                  beq          s4, s5, 27f
                  sltu         a5, s9, s10
                  bne          sp, a3, 23f
                  bge          gp, t1, 26f
                  sub          a7, s10, s6
21:               bgeu         a4, t5, 37f
                  srli         s3, s6, 20
23:               slti         s0, s4, -1977
                  slti         a7, s7, 1192
25:               xori         a0, tp, -1907
26:               sub          t2, s11, a1
27:               slli         a7, gp, 0
                  sltu         sp, ra, t2
                  bgeu         a3, s11, 46f
                  sltu         t4, zero, a6
                  srai         a4, a3, 26
32:               xori         s6, t3, 1027
                  blt          a4, s9, 49f
                  slt          s9, a5, sp
                  slt          s2, t4, sp
                  slt          t4, zero, gp
37:               sub          t2, t1, s11
                  srli         a0, zero, 6
                  xori         a2, s6, 699
                  slt          sp, s7, a2
                  addi         a4, ra, 203
                  sll          s10, s10, gp
                  nop
                  srai         a2, s3, 9
                  beq          s3, s4, 48f
46:               sll          a7, a5, s11
                  slti         t0, s0, 362
48:               beq          a4, a3, 54f
49:               sltiu        s2, s0, -1172
                  xor          a6, s10, a6
                  and          s4, s9, t3
                  slti         s0, sp, -622
                  bne          gp, a7, 69f
54:               xori         a2, a2, -1502
                  slli         gp, a3, 2
                  sltu         ra, a5, t5
                  bne          t4, t1, 63f
                  lui          sp, 58308
                  ori          a4, s3, -853
                  sltiu        s9, zero, 1581
                  bltu         s0, a7, 74f
                  andi         ra, a1, 1239
63:               and          a7, s8, sp
                  andi         tp, sp, -45
                  auipc        a2, 206733
                  auipc        sp, 204814
                  nop
                  sll          sp, zero, s4
69:               bltu         s9, a1, 79f
                  srai         t2, t0, 28
                  xori         a0, s4, 310
                  sltu         a2, t4, tp
                  beq          t5, s8, 90f
74:               xori         s11, sp, 1914
                  auipc        s9, 885127
                  or           t1, a7, t2
                  bne          a3, t4, 94f
                  ori          s6, a6, 370
79:               lui          a5, 712651
                  srli         s2, sp, 26
                  bltu         a3, s10, 92f
                  sltiu        t4, a0, 1495
                  sltiu        ra, t0, 1581
                  add          t2, a6, s1
                  auipc        s4, 275112
                  bltu         a2, s11, 93f
                  bge          t5, s2, 93f
                  blt          t3, a1, 100f
                  or           sp, ra, s3
90:               ori          s2, s3, -1406
                  lui          a4, 690514
92:               slt          a6, sp, a6
93:               sub          s4, a5, t3
94:               sltu         a2, s3, a5
                  sub          a7, a3, t5
                  add          s9, t4, a0
                  slt          s10, t6, tp
                  sltu         t1, gp, t0
                  xori         a4, a5, 1499
100:              ori          s2, s9, -1945
                  and          s10, s4, a3
                  srli         s8, s3, 8
                  beq          t2, a1, 111f
                  or           a6, s11, sp
                  sltiu        s10, gp, 1794
                  sub          a7, a5, a4
                  slti         s1, s0, 1618
                  andi         a6, s2, 2031
                  sll          a2, s0, t6
                  ori          s4, tp, -675
111:              slt          zero, a5, a6
                  sll          zero, a7, sp
                  sltiu        s4, gp, 900
                  bne          a5, zero, 133f
                  andi         a6, s5, -669
                  sltiu        a7, a4, -1378
                  add          s0, s5, s4
                  slti         s8, gp, 1828
                  bgeu         ra, t1, 132f
                  bge          t0, s9, 127f
                  sra          gp, s2, a1
                  xori         s4, a0, -668
                  sltiu        s1, a3, -810
                  sra          zero, s5, s11
                  slli         ra, s2, 31
                  auipc        gp, 619049
127:              ori          s10, t6, -1313
                  blt          a3, tp, 144f
                  nop
                  xori         a4, a0, -753
                  blt          s11, a0, 150f
132:              blt          t1, s0, 150f
133:              bne          t1, s1, 145f
                  bne          zero, a5, 153f
                  sltu         t1, t3, s0
                  lui          s1, 865250
                  sll          s5, t3, tp
                  blt          s7, s7, 155f
                  sltu         s6, t0, gp
                  xori         t4, s8, 962
                  sub          gp, a7, s2
                  add          t1, s0, t0
                  sltiu        s9, s0, -1023
144:              bge          t1, a7, 152f
145:              sltu         s9, a4, s10
                  srl          t1, t0, a1
                  sll          s6, t0, s7
                  xor          a2, s9, gp
                  bge          s0, t4, 167f
150:              bne          s7, s9, 160f
                  bltu         a5, s1, 163f
152:              xor          s7, t3, s1
153:              addi         s5, s6, -292
                  sll          s11, a3, a6
155:              lui          s6, 558400
                  srl          s11, t6, a4
                  slt          s0, t5, t2
                  bgeu         t5, tp, 165f
                  srli         s7, s8, 10
160:              slli         gp, zero, 30
                  xor          s4, s6, tp
                  srli         s4, s6, 23
163:              beq          s0, s8, 179f
                  srl          ra, a2, t3
165:              beq          s8, s7, 175f
                  slti         t4, s0, 1720
167:              slli         a3, s8, 27
                  ori          zero, t1, 1942
                  or           tp, s5, s7
                  xori         a0, t1, -322
                  srai         a2, gp, 26
                  bltu         a4, t6, 189f
                  add          gp, t3, zero
                  sltiu        gp, a0, 1348
175:              bge          t5, tp, 182f
                  bltu         a4, t0, 187f
                  sltiu        s0, s8, 924
                  srli         s3, s3, 22
179:              beq          a7, sp, 185f
                  sub          t4, s6, s8
                  bgeu         s9, s4, 200f
182:              xor          s1, t5, s9
                  slti         a3, a7, -109
                  xor          ra, a6, t0
185:              srli         a2, sp, 15
                  bgeu         s11, sp, 199f
187:              bgeu         t5, s5, 203f
                  sltu         s10, a3, s3
189:              sub          s8, a7, t0
                  bltu         a3, s0, 198f
                  or           t1, a6, a5
                  srli         s11, sp, 26
                  bge          a3, t2, 196f
                  andi         sp, s0, 1698
                  auipc        t0, 756265
196:              srl          ra, a1, s5
                  slt          s1, a4, a6
                  la           t4, region_1+681 #start riscv_load_store_rand_instr_stream_2
                  sb           s7, -16(t4)
                  sb           t3, -9(t4)
                  lb           sp, 5(t4)
                  nop
                  srli         s10, a2, 24
                  auipc        ra, 826444
                  lbu          s10, 12(t4)
                  lhu          s5, 13(t4)
                  lbu          s0, -16(t4)
                  addi         s10, t4, 1045
                  lbu          a6, 15(t4)
                  lbu          s10, -12(t4)
                  sb           t6, 9(t4)
                  sub          a5, zero, gp
                  lb           t2, 12(t4)
                  sb           ra, 7(t4)
                  lh           a7, 11(t4)
                  sb           tp, -10(t4)
                  lbu          a2, 2(t4)
                  lb           t2, 9(t4)
                  lbu          a0, 13(t4)
                  srl          gp, ra, a7
                  lbu          a7, -7(t4)
                  lb           s1, -12(t4)
                  lhu          s10, -15(t4)
                  lh           tp, -15(t4)
                  lh           s9, -1(t4)
                  sb           a5, -11(t4)
                  lb           a2, -12(t4)
                  sltu         a2, s4, ra
                  lbu          sp, 9(t4)
                  xor          s9, s9, t5
                  sltu         zero, s10, s9
                  lw           t2, 11(t4)
                  lhu          t0, -1(t4)
                  slti         s3, gp, -1748
                  add          a2, s10, zero
                  nop
                  or           s3, s0, s1
                  sb           t0, 1(t4)
                  sb           s11, 15(t4)
                  lb           a7, -11(t4)
                  srl          s10, s10, t6
                  srli         s8, sp, 17
                  sub          a0, s5, a3
                  lbu          gp, 0(t4) #end riscv_load_store_rand_instr_stream_2
198:              bne          gp, s6, 210f
199:              addi         t3, a4, -161
200:              bgeu         a2, s9, 216f
                  sltu         s0, a2, s4
                  add          s1, s10, a0
203:              slli         a3, t2, 5
                  slli         s4, t0, 19
                  sltiu        gp, a6, 678
                  sll          s11, s0, a6
                  sub          t3, t6, s11
                  xor          a5, s0, s10
                  blt          a3, s11, 214f
210:              and          t1, t6, s7
                  ori          s4, s1, 984
                  srli         t0, s10, 19
                  slli         s6, t2, 8
214:              bltu         a3, s9, 227f
                  bge          t4, s0, 226f
216:              srai         s9, a7, 14
                  bltu         s1, a4, 223f
                  bgeu         t1, tp, 234f
                  or           sp, t5, tp
                  slti         s10, s9, -1474
                  srai         ra, a7, 12
                  andi         gp, a2, 1751
223:              or           a2, s8, t3
                  beq          s3, s6, 230f
                  blt          s11, t4, 238f
226:              bgeu         sp, t1, 233f
227:              srai         s1, a1, 17
                  bne          a1, t2, 246f
                  sll          s1, s2, a3
230:              slli         sp, s8, 23
                  ori          t4, t4, 1709
                  xor          a5, t3, a5
233:              slli         zero, zero, 0
234:              bge          s1, a5, 251f
                  add          t0, tp, t3
                  xori         s2, t4, 2021
                  slti         t4, a4, -1203
238:              srl          t4, a4, s10
                  srai         s8, s2, 5
                  beq          s10, t1, 257f
                  sll          tp, a5, s1
                  andi         a4, t0, -973
                  sub          s8, a5, gp
                  srai         a3, tp, 8
                  add          sp, a3, s8
246:              add          ra, s8, s4
                  lui          s11, 105555
                  bgeu         s0, s6, 254f
                  xori         s3, s9, -1808
                  bne          a0, s9, 258f
251:              bltu         t0, ra, 267f
                  srli         a3, t3, 17
                  sltu         s9, s3, a2
254:              srli         a3, ra, 24
                  sltiu        a3, s6, -501
                  lui          t1, 949764
257:              bge          t3, t6, 265f
258:              bge          tp, sp, 268f
                  bgeu         sp, t0, 277f
                  auipc        s7, 782380
                  bgeu         s8, a0, 268f
                  sltu         t1, t4, s9
                  srl          s6, t5, s8
                  ori          s9, s10, -1984
265:              srai         s3, s10, 26
                  bne          s10, t4, 282f
267:              addi         ra, s1, 235
268:              nop
                  and          s10, s0, a1
                  sub          s6, s11, gp
                  slli         a4, a3, 14
                  add          s4, a3, s1
                  slti         a5, s10, 106
                  slti         t3, s8, 98
                  lui          gp, 863368
                  sra          sp, t5, s1
277:              and          s11, a5, zero
                  nop
                  and          a0, s9, s5
                  or           tp, s8, s6
                  nop
282:              auipc        s1, 132701
                  nop
                  bne          ra, t3, 297f
                  lui          a0, 958188
                  sll          s11, a0, t0
                  bltu         s3, s8, 303f
                  bgeu         s6, s7, 295f
                  sltiu        s7, s2, -382
                  srli         sp, a2, 16
                  slli         s6, t0, 31
                  auipc        s8, 816038
                  blt          s11, s0, 304f
                  bltu         ra, s5, 313f
295:              addi         s5, sp, -1227
                  nop
297:              slli         s3, sp, 0
                  andi         a6, s11, -1703
                  add          s4, s8, t1
                  bne          a3, a6, 313f
                  blt          a7, s8, 313f
                  slli         s6, s8, 25
303:              slli         a2, t4, 19
304:              blt          t2, s5, 310f
                  add          zero, a4, t3
                  sll          t2, t2, a1
                  or           t2, s8, sp
                  add          t3, t5, t5
                  bgeu         s8, a4, 326f
310:              bne          a1, s11, 329f
                  sra          a6, tp, s3
                  sltiu        t1, a0, -600
313:              bgeu         tp, s2, 326f
                  sll          t0, t3, zero
                  sltu         s2, t4, a4
                  srli         ra, t0, 13
                  auipc        a5, 160554
                  sub          s0, a4, s1
                  and          s10, t1, a6
                  bne          s6, tp, 337f
                  slli         ra, t6, 7
                  sra          t4, s5, a2
                  addi         s9, a2, -1573
                  bltu         a5, s3, 342f
                  bge          sp, t1, 341f
326:              or           a5, s6, zero
                  srai         s8, s9, 31
                  and          a6, s2, s3
329:              bltu         s6, t4, 332f
                  bltu         a0, gp, 335f
                  or           a4, tp, a7
332:              nop
                  srai         s0, tp, 2
                  auipc        s0, 494355
335:              bge          a6, t2, 342f
                  bge          a5, s1, 346f
337:              xor          a2, a7, a4
                  srl          a4, a6, s9
                  srl          s11, s9, s3
                  bge          a1, a6, 352f
341:              srl          s1, t4, gp
342:              sll          ra, t0, s7
                  sltu         s7, ra, a0
                  and          a7, t4, s11
                  add          t2, t3, zero
346:              sltu         a2, s5, s5
                  add          t0, zero, s5
                  slti         gp, ra, -563
                  srai         s5, t4, 2
                  la           sp, region_0+10 #start riscv_load_store_rand_instr_stream_1
                  lui          s2, 232929
                  add          a5, s4, zero
                  lbu          t4, 39(sp)
                  lb           s11, 63(sp)
                  andi         t0, tp, 206
                  sb           a3, 55(sp)
                  sub          s11, s6, a5
                  andi         zero, a0, 1963
                  lui          s5, 445440
                  ori          ra, t3, 1728
                  ori          a5, ra, 618
                  slli         t2, s0, 5
                  sw           s3, 54(sp)
                  slt          s5, t6, a6
                  srl          s4, s3, a4
                  and          tp, s6, s5
                  sltiu        s5, a0, -729
                  or           s5, t5, a6
                  auipc        s4, 293498
                  auipc        a7, 209533
                  lbu          t1, 37(sp)
                  lb           tp, -4(sp)
                  srl          zero, t5, s0
                  lb           ra, 1(sp)
                  srli         t4, a7, 12
                  lbu          a3, -3(sp)
                  lb           s11, 31(sp)
                  sltiu        s2, s11, 367
                  slt          s0, t4, a7
                  srl          s8, t5, t0
                  add          s10, s0, a5
                  sll          ra, s0, zero
                  sb           a3, 40(sp)
                  sltu         tp, s6, s3
                  lb           s1, 48(sp)
                  sh           a0, 54(sp)
                  srl          s1, s10, a1
                  lui          t4, 768209
                  sw           s0, 22(sp)
                  lw           s4, 50(sp)
                  srai         t1, s9, 22
                  sb           t0, -3(sp)
                  lh           s0, 0(sp)
                  xor          a5, s0, s2
                  srai         s6, a4, 25
                  lhu          s2, 48(sp) #end riscv_load_store_rand_instr_stream_1
                  addi         gp, ra, -1952
                  sltiu        a3, ra, -1732
352:              srl          s6, tp, s6
                  slti         s6, a6, 159
                  sltiu        s5, a1, 669
                  bge          s8, s1, 361f
                  slti         s5, s7, -371
                  srai         a6, t2, 2
                  and          a5, t1, t5
                  xor          t4, t2, t1
                  bltu         tp, t2, 371f
361:              nop
                  bgeu         a3, gp, 370f
                  srai         a5, t0, 29
                  xori         s11, s1, 1634
                  lui          s4, 148161
                  blt          a0, a4, 376f
                  ori          s0, a7, -93
                  andi         ra, t6, -391
                  auipc        tp, 543497
370:              srai         t0, s8, 20
371:              andi         s9, a5, -1346
                  bne          a0, t2, 384f
                  slt          ra, t4, zero
                  sltu         s2, a0, gp
                  ori          s7, t6, 963
376:              nop
                  bgeu         t3, s11, 393f
                  ori          s0, s1, 600
                  bltu         s9, s3, 395f
                  slli         a3, t4, 10
                  blt          s6, a3, 388f
                  bge          t5, t2, 401f
                  and          gp, s5, a2
384:              slli         s4, a3, 9
                  srl          sp, s7, s6
                  xori         t4, s10, 1827
                  bgeu         s3, ra, 400f
388:              nop
                  nop
                  bgeu         zero, s6, 401f
                  bltu         s1, a1, 398f
                  srai         a3, sp, 29
393:              sll          tp, ra, a1
                  srl          s6, s8, s9
395:              and          a4, t4, t5
                  andi         a4, t1, 569
                  nop
398:              auipc        t3, 191184
                  beq          a1, s0, 406f
400:              xor          a6, a6, s6
401:              ori          t2, s10, 334
                  beq          a3, a3, 420f
                  sltu         ra, s0, s7
                  sra          gp, t5, t2
                  sltu         s9, t0, s7
406:              slt          t0, a6, t2
                  sll          t4, a5, tp
                  srl          sp, tp, ra
                  bltu         s2, t2, 415f
                  srai         s3, s5, 12
                  addi         s6, a4, 1509
                  addi         s5, a6, 124
                  blt          s7, a1, 425f
                  bltu         a0, s6, 425f
415:              sra          s9, a1, a5
                  nop
                  sra          a3, ra, s10
                  lui          s9, 211568
                  slt          s1, a5, s11
420:              addi         t4, a6, 1705
                  sltu         s6, a4, sp
                  and          a6, a5, t4
                  bge          gp, a0, 425f
                  slt          s7, s4, zero
425:              addi         t4, t0, 1168
                  lw           ra, 4(a1)
                  nop
                  add          zero, a3, a2
                  and          s1, tp, a7
                  srl          a4, a6, s6
                  addi         a1, a1, 52
                  addi         s6, a7, -1948
                  xor          gp, zero, s0
                  sra          s2, s2, s2
585:              addi x9, x1, 1
585:              jalr x9, x9, 0
sub_4:            bne          s8, s5, sub_4_stack_p
                  sll          t3, s2, a2
sub_4_stack_p:    addi         a1, a1, -20
                  and          gp, a2, t5
                  andi         s9, tp, -1914
                  lui          t0, 906385
                  slt          s5, s0, s7
                  and          a7, tp, s5
                  sw           ra, 4(a1)
                  or           t2, zero, sp
                  slti         t1, a0, 218
                  add          t3, t0, a5
                  xori         s0, s1, 620
                  slt          sp, gp, s2
                  xori         t2, a3, 1501
                  add          s4, a2, a3
sub_4_j10:        jal          ra, sub_8 #jump sub_4 -> sub_8
                  la           sp, region_1+1747 #start riscv_load_store_rand_instr_stream_0
                  sub          s5, s11, a7
                  lbu          a2, -1086(sp)
                  lb           t3, -1662(sp)
                  sb           s9, -1588(sp)
                  lhu          s10, -1063(sp)
                  add          ra, a3, gp
                  slt          s8, s7, ra
                  lb           a3, -298(sp)
                  sb           ra, -1578(sp)
                  lb           tp, -300(sp)
                  lbu          s8, -1042(sp)
                  lbu          t0, -1526(sp)
                  ori          zero, gp, -1072
                  sll          a4, gp, gp
                  sb           s3, -1130(sp)
                  nop
                  lhu          s10, 175(sp)
                  add          gp, t4, s10
                  lbu          s6, -1268(sp)
                  sra          s0, a4, zero
                  srai         a7, a4, 19
                  sll          tp, a1, s9
                  lb           t4, 14(sp)
                  sw           s0, -243(sp)
                  sb           gp, 112(sp)
                  lb           s11, -650(sp)
                  slti         s4, a0, -383
                  lb           ra, -1470(sp)
                  sb           sp, -772(sp)
                  lbu          s5, -1016(sp)
                  lh           t0, -885(sp)
                  addi         a3, t4, 1709
                  lbu          s9, 222(sp) #end riscv_load_store_rand_instr_stream_0
                  lui          t3, 546758
                  and          s2, t3, s10
                  xori         a3, t4, -376
                  sltiu        s1, a0, -1117
                  nop
                  lui          s1, 886159
                  auipc        t4, 498872
                  xori         a0, a7, 111
                  slti         s4, sp, 1339
                  srl          s7, t3, tp
                  la           ra, sub_7
                  addi         ra, ra, 895
                  xori         s7, s4, -1127
                  auipc        s1, 279456
                  slt          s7, s10, t3
                  slti         t3, a4, 573
                  xori         t0, sp, -517
                  andi         gp, a5, 74
                  bge          s5, a7, sub_4_j11 #branch to jump instr
                  andi         s1, sp, 63
sub_4_j11:        jalr         ra, ra, -894 #jump sub_4 -> sub_7
                  nop
                  srl          t2, s9, t6
                  beq          s7, t2, 14f
                  and          s0, ra, t2
                  xor          s0, s3, s5
                  sltiu        a4, s11, -331
14:               and          s2, t6, s3
                  add          a3, tp, a5
                  bltu         t2, a7, 31f
                  xori         a2, t1, -1704
                  sll          a0, s2, s9
                  ori          s10, gp, 1156
                  beq          s11, s1, 24f
                  bgeu         a4, s4, 32f
                  sra          s3, t2, a5
                  srl          s8, s2, s5
24:               sll          a3, a5, t5
                  xor          a6, a1, s4
                  bne          t3, a7, 38f
                  slti         t4, a0, -1723
                  slti         s8, s0, 590
                  sll          zero, s11, tp
                  sltu         s5, s11, t2
31:               beq          a3, t6, 43f
32:               sltiu        s3, s7, 2043
                  addi         s2, s6, 1337
                  srli         s10, s6, 20
                  bltu         s11, s11, 47f
                  sltu         s4, s9, s0
                  blt          s7, s11, 55f
38:               slli         ra, t4, 22
                  srai         s4, a7, 4
                  slli         sp, a0, 19
                  sltu         s0, t1, ra
                  sltu         s1, t1, ra
43:               srl          t2, ra, a4
                  sll          s9, s4, s3
                  ori          a6, s2, 1326
                  add          t0, a1, t3
47:               srl          s8, t6, t3
                  add          gp, s10, a1
                  sra          s1, s9, t0
                  addi         a0, gp, 1749
                  bgeu         t0, gp, 67f
                  blt          s0, sp, 62f
                  sltu         s1, s11, t1
                  sra          s10, s11, a4
55:               sltu         a2, t3, a6
                  sltu         s6, zero, a2
                  sltiu        zero, t1, 660
                  beq          s4, a5, 76f
                  srl          t2, a7, t6
                  auipc        s6, 478833
                  blt          t2, sp, 79f
62:               srl          s6, s8, gp
                  slli         a3, sp, 1
                  beq          s9, s4, 66f
                  andi         s10, t2, 63
66:               srai         s8, s11, 24
67:               bne          a0, gp, 75f
                  blt          s11, a0, 82f
                  sra          s2, a6, t6
                  andi         t4, ra, 318
                  bge          gp, a7, 78f
                  sll          tp, s2, gp
                  auipc        s8, 559618
                  blt          t3, s7, 82f
75:               lui          s2, 349310
76:               srai         t3, tp, 18
                  ori          gp, gp, 159
78:               slti         s8, s5, 975
79:               sltiu        a4, t4, -205
                  addi         tp, gp, 1922
                  add          s4, s0, s4
82:               bge          s1, ra, 96f
                  add          a5, s3, ra
                  bge          t4, a2, 98f
                  sltu         s7, t6, s4
                  xori         s8, gp, -328
                  slti         gp, a7, 1533
                  sub          zero, s5, s1
                  auipc        t4, 743154
                  sll          t4, s1, s4
                  bgeu         ra, s6, 94f
                  beq          t5, s7, 105f
                  srli         a3, a5, 25
94:               srli         a5, a6, 0
                  auipc        s4, 362954
96:               beq          s6, a3, 102f
                  sltiu        s5, sp, -1438
98:               and          s11, t3, a6
                  slti         a0, s4, 531
                  addi         t2, s9, -1360
                  xor          t4, a5, s3
102:              auipc        s2, 548257
                  bltu         a2, s7, 114f
                  slli         a5, zero, 10
105:              blt          s6, t0, 111f
                  nop
                  nop
                  ori          t3, s7, -363
                  andi         s5, a0, 98
                  nop
111:              srai         s11, s6, 23
                  srl          s6, a0, s5
                  srli         s9, s8, 10
114:              blt          ra, s5, 120f
                  beq          s10, s7, 127f
                  and          a4, s8, a5
                  xor          ra, s8, s9
                  sub          a5, t0, a3
                  ori          sp, s7, -134
120:              lui          sp, 258592
                  sltiu        t0, s5, -1954
                  srl          tp, t1, s6
                  xori         t2, ra, -859
                  xori         s4, t5, 330
                  xori         ra, t6, 1984
                  auipc        s9, 539748
127:              nop
                  andi         a2, t6, -736
                  addi         s5, s7, 2034
                  sltiu        tp, a1, 902
                  slt          t2, a1, s0
                  andi         tp, a3, 300
                  andi         gp, s5, 925
                  sltu         t0, gp, s9
                  srai         t0, t6, 10
                  andi         a2, a3, -1941
                  sra          s8, s4, s2
                  addi         s0, s2, -1103
                  xori         t1, s6, 1277
                  bge          zero, s11, 142f
                  add          s1, t5, a2
142:              sub          s5, a6, sp
                  sub          s0, t1, a3
                  bgeu         zero, a7, 160f
                  bltu         zero, s8, 148f
                  sub          s5, t1, gp
                  srai         a0, t1, 24
148:              beq          s7, ra, 166f
                  sll          t2, gp, a1
                  bgeu         t1, a7, 153f
                  andi         a6, t5, 1001
                  add          s2, ra, s3
153:              sltu         t2, s2, t4
                  and          tp, s0, a6
                  add          a7, t5, s2
                  srai         tp, a6, 26
                  bltu         s6, a7, 168f
                  bge          s2, a5, 170f
                  xori         s3, a1, -1361
160:              bge          a3, sp, 164f
                  slti         s5, s4, 1184
                  lui          s11, 752755
                  xor          sp, t2, t6
164:              xor          t4, t2, s6
                  addi         a3, t6, 2018
166:              bltu         t4, t6, 174f
                  or           a6, a2, zero
168:              nop
                  beq          t5, gp, 174f
170:              blt          s6, s5, 174f
                  sra          s0, a5, a1
                  sltiu        t4, t4, -648
                  slli         zero, s1, 11
174:              slti         t2, s1, -114
                  and          t1, gp, tp
                  xor          a4, s6, s8
                  lw           ra, 4(a1)
                  slti         gp, s5, -627
                  and          t0, a1, zero
                  slt          s0, t5, s9
                  slt          s11, tp, s7
                  addi         a1, a1, 20
                  sltiu        a6, s10, 1361
248:              addi x22, x1, 1
248:              jalr x22, x22, 0
sub_6:            sltiu        a7, ra, 766
                  ori          a4, t6, -477
                  bltu         s10, s7, sub_6_stack_p
                  xor          s5, s2, a0
                  sltu         t3, a3, s6
                  or           a5, s10, sp
                  ori          s7, s3, 1257
                  lui          a4, 127191
sub_6_stack_p:    addi         a1, a1, -20
                  sw           ra, 4(a1)
                  srai         s8, a7, 19
                  or           t3, a4, t6
                  bne          a4, t4, 18f
                  bne          a0, a2, 11f
                  bgeu         s7, a5, 19f
                  srli         s11, t0, 12
                  addi         s9, t0, 1831
                  sub          s10, s7, s5
                  bltu         t1, t3, 25f
                  bgeu         s3, a7, 26f
                  bltu         t3, s5, 13f
                  bge          s7, t0, 14f
                  addi         a2, a3, 2020
11:               ori          s1, t5, 1539
                  bne          ra, s3, 17f
13:               ori          s1, t2, 1383
14:               bltu         t3, t4, 29f
                  addi         a2, s2, -608
                  bge          t5, s7, 33f
17:               beq          a7, s4, 18f
18:               sll          s1, t2, sp
19:               andi         s0, s4, 299
                  addi         a2, t0, 1636
                  auipc        a2, 324138
                  nop
                  blt          gp, a5, 43f
                  srai         s5, ra, 19
25:               sll          sp, a7, s9
26:               nop
                  bgeu         t3, a7, 33f
                  ori          ra, t5, 1667
29:               sub          zero, s3, zero
                  sra          s7, t4, s7
                  nop
                  nop
33:               bge          a1, t4, 53f
                  sltu         a7, t0, a7
                  slli         gp, t2, 22
                  bne          s5, t2, 47f
                  bltu         s10, s4, 44f
                  bge          s0, tp, 41f
                  ori          s0, t5, 679
                  bgeu         s8, sp, 52f
41:               bltu         s2, a6, 48f
                  bge          sp, gp, 52f
43:               srl          s4, s4, t5
44:               lui          s6, 242135
                  srai         ra, s9, 13
                  beq          tp, tp, 58f
47:               slti         s0, a7, -176
48:               bltu         zero, s6, 63f
                  sltu         t0, a7, s10
                  srai         a7, tp, 14
                  auipc        s9, 310991
52:               xor          s9, s2, a0
53:               bne          s11, t0, 66f
                  blt          t1, a5, 59f
                  lui          t1, 469805
                  sll          zero, t1, s9
                  or           a4, s0, a5
58:               bge          s1, t0, 75f
59:               sra          t4, a2, s3
                  add          s3, s3, a7
                  lui          ra, 976307
                  lui          s3, 903921
63:               bgeu         t0, gp, 80f
                  or           t3, s1, a2
                  bltu         t0, s11, 75f
66:               auipc        zero, 385326
                  blt          s5, t1, 72f
                  bltu         a7, a2, 73f
                  ori          s9, s6, -1143
                  sll          s7, t3, t2
                  slt          a5, ra, a3
72:               slli         s3, a5, 3
73:               blt          s8, a6, 78f
                  bge          s6, a6, 75f
75:               sra          s9, s4, s7
                  slti         t1, t6, -652
                  sltu         a7, t4, s7
78:               blt          a6, a5, 95f
                  srli         a3, a7, 0
80:               addi         s3, s11, -506
                  bltu         t0, s7, 98f
                  and          s9, t2, a7
                  auipc        ra, 543011
                  bge          sp, ra, 89f
                  bgeu         s11, t1, 103f
                  auipc        s9, 778400
                  or           sp, s1, sp
                  beq          s10, s8, 95f
89:               bltu         s7, s8, 101f
                  addi         s8, s6, -1039
                  auipc        a4, 195621
                  auipc        s9, 304434
                  srai         s9, s9, 25
                  bge          a6, t6, 99f
95:               or           s7, a5, a4
                  xori         s3, s5, 1472
                  xor          t3, s5, s6
98:               xori         s4, s5, -1974
99:               add          s1, t1, ra
                  and          sp, a5, s8
101:              bge          gp, t5, 106f
                  slli         s9, a0, 10
103:              bne          t4, a2, 106f
                  xori         t0, s11, -26
                  lui          a3, 47673
106:              and          a0, s5, tp
                  bne          t2, a4, 124f
                  add          s1, t0, ra
                  blt          a3, sp, 128f
                  xori         a3, s0, 423
                  bne          s3, a6, 124f
                  ori          s10, ra, -224
                  sltiu        t2, s6, 601
                  andi         a2, ra, -1498
                  bge          zero, s9, 125f
                  srli         s6, s6, 25
                  slli         s9, s5, 8
                  bne          ra, s0, 124f
                  sltiu        s7, s3, -669
                  srai         s7, s3, 12
                  lui          s8, 132700
                  bltu         a1, s11, 137f
                  ori          t4, s5, -336
124:              slli         s11, t4, 11
125:              slt          t2, t5, t1
                  addi         sp, t6, -2039
                  srai         s1, s4, 11
128:              slti         ra, t1, 874
                  sub          s5, s3, a1
                  sltu         gp, t4, s5
                  lui          t4, 625369
                  xori         a5, a2, 887
                  beq          s6, a5, 143f
                  srai         s0, a6, 19
                  sll          s8, zero, s5
                  xori         s11, zero, -997
137:              auipc        zero, 784657
                  sra          t3, t1, t0
                  andi         s8, gp, 471
                  slti         s5, s2, -1602
                  srli         t4, a2, 19
                  beq          t6, a0, 159f
143:              sll          s1, s8, ra
                  lui          a3, 397945
                  or           t3, t4, s1
                  bne          a4, s7, 158f
                  la           sp, region_0+82 #start riscv_load_store_rand_instr_stream_1
                  lb           s2, -6(sp)
                  add          ra, s10, tp
                  lb           zero, 9(sp)
                  lb           a6, -7(sp)
                  sltu         s2, a5, s11
                  auipc        a6, 569342
                  sb           s5, -16(sp)
                  lbu          s6, -16(sp)
                  slti         s3, s2, -878
                  lb           t4, -1(sp)
                  srl          s10, s0, a1
                  lbu          tp, 7(sp)
                  slt          s10, s7, t6
                  slt          a0, s11, gp
                  lbu          a3, -10(sp)
                  and          s5, t6, s9
                  andi         s7, t4, -1632
                  srl          a5, a7, s8
                  sltiu        a0, zero, -450
                  lb           s3, -7(sp)
                  ori          s7, s4, 1021
                  lbu          tp, 15(sp)
                  ori          s0, s8, 252
                  sub          a5, s8, s9
                  lb           s10, -11(sp)
                  lb           a0, 11(sp)
                  xori         s2, s4, -344
                  andi         a7, s0, -1816
                  xor          s11, a6, s2
                  srli         s8, a4, 3
                  sh           s3, 10(sp)
                  addi         s4, s0, 1970
                  lbu          t1, -7(sp)
                  lh           a4, 0(sp)
                  sb           t2, -6(sp)
                  lhu          s10, 0(sp)
                  sb           t2, 8(sp)
                  sb           s9, -16(sp)
                  lh           a3, 6(sp) #end riscv_load_store_rand_instr_stream_1
                  or           s6, t4, s3
                  auipc        t3, 594741
                  slti         t4, s1, 1101
                  srli         tp, t4, 12
                  xor          t0, s0, s6
                  slt          a3, t2, s6
                  bge          s8, a7, 173f
                  sltiu        a5, a3, -1682
                  slt          s6, gp, gp
                  xori         s0, s10, -1530
                  bltu         s10, a0, 176f
158:              sub          ra, s8, t5
159:              nop
                  slt          s7, s6, sp
                  ori          s6, a7, -166
                  srl          gp, s8, a0
                  bltu         t4, s7, 168f
                  slti         t0, t1, -1031
                  or           s9, ra, s10
                  sra          s0, ra, tp
                  blt          s1, s9, 187f
168:              blt          s10, s0, 173f
                  sub          s5, sp, t2
                  beq          a3, a5, 175f
                  nop
                  bgeu         s8, a3, 187f
173:              sub          s9, s3, a3
                  srli         s1, s1, 28
175:              blt          t5, s3, 180f
176:              xori         a2, t4, 1413
                  sltu         s9, ra, a2
                  sll          sp, a3, s6
                  sub          a7, a3, gp
180:              lui          a3, 211895
                  sub          s3, ra, s7
                  blt          s4, t2, 193f
                  sltu         a5, a6, a2
                  bltu         s7, t0, 194f
                  ori          a7, a7, 1012
                  sltu         gp, s0, sp
187:              ori          s5, t4, -352
                  sub          a3, t6, tp
                  bne          a2, t6, 196f
                  sub          s8, a1, s3
                  sltu         s11, t6, s4
                  sra          s0, s8, s2
193:              xori         s1, s9, -1271
194:              slli         t0, s11, 22
                  sra          gp, a7, s10
196:              blt          s9, t5, 216f
                  andi         s4, s9, 430
                  lui          a2, 214554
                  sltiu        s10, s6, -1306
                  srai         zero, zero, 28
                  slt          a2, a3, s8
                  nop
                  srai         t0, t5, 10
                  sltiu        s0, t6, -131
                  addi         s7, s10, 533
                  and          sp, t6, a5
                  xor          a6, s9, s11
                  xori         a5, sp, 33
                  nop
                  la           sp, region_0+1647 #start riscv_load_store_rand_instr_stream_0
                  slt          tp, s4, s2
                  sw           sp, -3(sp)
                  lbu          s0, -16(sp)
                  sb           a7, 4(sp)
                  sra          s4, a4, t4
                  lbu          a2, 0(sp)
                  lw           t0, 5(sp)
                  add          t3, s5, s9
                  lb           ra, -6(sp)
                  sltiu        ra, s4, -1803
                  lw           a0, 5(sp)
                  lb           s6, -5(sp)
                  lb           tp, -10(sp)
                  andi         t1, t2, -355
                  xor          s10, t0, ra
                  lhu          a6, 9(sp)
                  lb           s0, 13(sp)
                  sb           a5, 4(sp)
                  sub          t3, a0, s7
                  srl          s4, gp, a1
                  xori         s3, s2, 1653
                  lb           a2, 4(sp)
                  sltiu        s7, tp, 1861
                  sb           t0, -8(sp)
                  lbu          ra, -6(sp)
                  lb           gp, -14(sp)
                  sb           s5, 3(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  andi         a3, a1, -1698
                  sltu         s7, s10, t2
                  bge          t3, t0, 232f
                  ori          t3, sp, 112
                  ori          a7, s6, 1375
216:              sra          t1, a7, s7
                  lui          s6, 134597
                  bne          a5, ra, 229f
                  sltiu        s2, tp, -307
                  andi         a5, a1, 164
                  srai         zero, s0, 4
                  xori         ra, t3, 727
                  add          s9, a6, a3
                  xori         t0, a6, 1510
                  nop
                  sll          s5, ra, s3
                  xori         t2, s7, 1245
                  bltu         t4, t4, 245f
229:              srl          s2, ra, t5
                  slli         t0, tp, 12
                  auipc        s5, 372580
232:              bgeu         s6, zero, 247f
                  add          s4, t0, a7
                  addi         a2, t4, -1724
                  sll          s4, s10, s5
                  bne          t0, s5, 249f
                  xori         s11, t0, -2042
                  sll          tp, a6, s10
                  beq          t4, s1, 244f
                  add          s9, s3, s1
                  sub          t2, s4, t3
                  bgeu         s2, s8, 247f
                  ori          a7, s1, 1920
244:              slt          s0, t0, a3
245:              slli         t4, t5, 4
                  xori         t0, t4, -357
247:              nop
                  xor          gp, t0, t6
249:              blt          s3, t2, 256f
                  addi         s7, s0, 1619
                  bne          s8, s11, 256f
                  blt          t5, sp, 255f
                  slt          s11, s7, a6
                  srl          a0, s6, s10
255:              addi         gp, a0, -1165
256:              sub          a3, s11, s9
                  lw           ra, 4(a1)
                  addi         a2, t4, 1709
                  addi         a1, a1, 20
                  or           a6, s7, a6
                  auipc        s0, 379128
                  srai         a6, s11, 1
                  srl          s2, a1, a7
                  sra          sp, gp, tp
                  srli         s7, s1, 14
346:              addi x22, x1, 0
346:              jalr x22, x22, 0
sub_8:            beq          s9, s2, sub_8_stack_p
                  auipc        s4, 740752
                  andi         a7, a7, 1668
sub_8_stack_p:    addi         a1, a1, -24
                  sltiu        s0, s4, 1385
                  add          a6, a6, s9
                  or           s9, s0, a0
                  andi         tp, a6, 1149
                  slti         a6, s7, -701
                  lui          s0, 180795
                  sw           ra, 4(a1)
                  or           a3, t1, s0
                  slt          s8, t1, s3
                  srl          s0, t1, a4
                  slli         tp, s6, 5
                  slli         s0, s10, 15
                  sub          s4, s10, a2
                  and          a5, s2, s0
                  andi         t2, s11, -1896
sub_8_j13:        jal          ra, sub_9 #jump sub_8 -> sub_9
                  bge          a0, a1, 9f
                  bgeu         tp, a6, 5f
                  sra          s0, a7, a6
                  bge          s5, tp, 8f
                  xor          zero, a3, t5
5:                addi         zero, s1, -324
                  blt          s1, s9, 9f
                  bne          a0, t0, 9f
8:                sra          a6, a1, s9
9:                andi         s3, sp, 587
                  sra          a5, s10, a4
                  xor          s7, t2, s1
                  lw           ra, 4(a1)
                  add          s4, s0, t6
                  sltu         s4, t1, s5
                  sub          t4, a2, s5
                  srl          s8, t0, t3
                  srli         a0, t4, 19
                  addi         a1, a1, 24
                  and          s11, s11, t1
                  and          a3, t1, s11
41:               addi x29, x1, 1
41:               jalr x29, x29, 0
sub_9:            addi         a1, a1, -20
                  add          s10, t0, t0
                  sw           ra, 4(a1)
                  sll          t3, s9, sp
                  and          s0, s9, s7
                  srai         a5, s9, 23
                  auipc        a0, 815616
                  slti         sp, s5, -1117
                  or           s7, a2, ra
                  blt          s9, tp, sub_9_j14 #branch to jump instr
                  andi         tp, a0, 829
                  lui          a6, 644160
sub_9_j14:        jal          ra, sub_10 #jump sub_9 -> sub_10
                  addi         s2, tp, -1441
                  andi         a3, t0, 1193
                  xor          s8, t3, a1
                  slt          s9, t6, a0
                  slti         sp, a0, 643
                  and          t1, s7, s0
                  blt          tp, s10, 20f
                  ori          a7, s8, 745
                  slli         s0, s2, 11
                  or           a7, a7, ra
                  bgeu         a7, t2, 19f
                  srli         a7, t5, 13
                  sltu         a6, t0, t1
                  slti         s4, s0, -1421
                  ori          s5, a0, -1951
                  srli         s10, sp, 31
                  nop
                  add          t1, s7, s5
                  srai         t2, s3, 4
19:               nop
20:               slt          a5, t5, a3
                  blt          s10, s8, 33f
                  add          sp, a3, a2
                  auipc        t2, 954687
                  bgeu         s5, a7, 29f
                  slti         tp, t5, 1709
                  slti         sp, s4, -1645
                  andi         tp, t4, -780
                  sub          a5, s7, t1
29:               addi         s3, a7, 47
                  sub          ra, t2, a7
                  blt          zero, a2, 40f
                  bge          s7, s5, 35f
33:               bge          tp, a4, 40f
                  sra          s2, s11, gp
35:               sll          s4, s3, s0
                  blt          a5, s3, 38f
                  xor          s8, t6, a5
38:               addi         s11, a4, -1240
                  bge          s1, s0, 40f
40:               xori         s7, a3, -1414
                  lw           ra, 4(a1)
                  srli         t1, tp, 27
                  srl          s3, a0, zero
                  sltu         a2, a7, tp
                  slti         a4, t5, -1819
                  addi         a1, a1, 20
                  and          t2, ra, s0
61:               addi x16, x1, 1
61:               jalr x16, x16, 0
sub_2:            slli         s3, s3, 19
                  srai         zero, gp, 3
                  bge          t6, s6, sub_2_stack_p
                  sltiu        s2, s2, -582
sub_2_stack_p:    addi         a1, a1, -40
                  sra          t3, t1, t0
                  auipc        a0, 503007
                  srai         a4, a7, 25
                  ori          s8, a3, -34
                  add          a5, s7, s7
                  sw           ra, 4(a1)
                  sltiu        gp, s2, 455
                  sll          s2, t6, a1
                  slli         a5, s3, 13
                  sub          s5, gp, a0
                  nop
                  bne          s1, s4, sub_2_j7 #branch to jump instr
                  sra          t1, t0, s9
                  addi         a4, s0, 1295
sub_2_j7:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  la           a7, region_0+1733 #start riscv_load_store_rand_instr_stream_2
                  sh           s5, 25(a7)
                  sw           t1, -29(a7)
                  lbu          s3, 28(a7)
                  lb           s10, -39(a7)
                  addi         s7, s10, 1123
                  lb           a0, 37(a7)
                  lbu          s4, 52(a7)
                  ori          s10, a5, 791
                  lui          a2, 305850
                  nop
                  lbu          tp, -6(a7)
                  lb           s10, -7(a7)
                  slt          s0, a2, a0
                  lui          sp, 435763
                  and          t4, s9, ra
                  and          t2, a0, s1
                  sb           s5, 51(a7)
                  lw           tp, -41(a7)
                  lhu          a0, -15(a7)
                  lb           t1, 29(a7)
                  sll          s1, ra, s4
                  xor          s2, s4, zero
                  add          a4, s8, a4
                  nop
                  slli         a0, zero, 29
                  sh           zero, -55(a7) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+907 #start riscv_load_store_rand_instr_stream_0
                  addi         gp, s9, -1503
                  sltu         s1, t1, t0
                  sltu         a4, s7, s6
                  addi         t0, s4, 1380
                  slti         gp, s11, 1908
                  ori          s10, t1, 808
                  nop
                  or           s3, t0, s9
                  slti         s8, t1, -1545
                  lb           a0, 12(sp)
                  srli         t4, s4, 2
                  slti         s0, s10, -1357
                  lb           a6, -6(sp)
                  ori          t1, tp, 1061
                  lh           s3, -7(sp)
                  sll          s0, s7, sp
                  lh           s0, -1(sp)
                  and          a3, s9, s9
                  lhu          a2, 15(sp)
                  add          s2, a0, s0
                  lh           a0, -1(sp)
                  sb           s6, 15(sp)
                  lb           tp, 10(sp)
                  addi         s9, zero, -1826
                  sb           t0, -15(sp)
                  add          s8, t0, a4
                  lb           s9, 8(sp)
                  lw           s7, 13(sp)
                  lbu          t2, 14(sp)
                  add          s10, a7, ra
                  slti         a4, t2, 1840
                  slt          a4, s2, a7
                  sltiu        s7, t4, 1393
                  add          s0, t5, t6
                  andi         a3, s2, -711
                  srl          tp, zero, s6
                  add          s4, t6, s6
                  lbu          s9, -8(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a0, region_1+424 #start riscv_load_store_rand_instr_stream_3
                  slli         a2, t3, 13
                  lh           a4, 62(a0)
                  andi         s9, a2, 1842
                  slti         t2, gp, 887
                  ori          s1, s7, 105
                  slli         s6, a7, 4
                  xor          s11, a0, s6
                  sb           tp, 93(a0)
                  slli         t3, a5, 16
                  lbu          s2, -219(a0)
                  nop
                  lb           s9, 107(a0)
                  slli         t0, a2, 30
                  sb           a4, 139(a0)
                  slli         a2, t3, 18
                  sb           s11, -24(a0)
                  sb           a7, -221(a0)
                  lbu          t3, 181(a0)
                  sb           ra, -81(a0)
                  sb           s6, -123(a0)
                  sb           s2, -7(a0)
                  addi         a4, s8, -41
                  sb           s5, 57(a0)
                  sb           a0, 70(a0)
                  lb           a5, -215(a0)
                  auipc        sp, 248295
                  lh           s7, -40(a0)
                  sll          s1, s5, gp
                  sub          sp, s1, t5
                  lbu          a3, 79(a0)
                  sw           ra, 64(a0)
                  sb           zero, 122(a0) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+566 #start riscv_load_store_rand_instr_stream_1
                  sb           s8, -36(sp)
                  slli         s1, s10, 20
                  nop
                  lbu          s0, 61(sp)
                  or           s2, tp, sp
                  lbu          tp, -39(sp)
                  andi         s1, a4, -297
                  sw           a0, 14(sp)
                  sb           s9, 25(sp)
                  addi         a3, a7, 363
                  sltu         a5, a7, t2
                  sltiu        a6, s9, -1085
                  sb           s4, 45(sp)
                  lbu          t0, 3(sp)
                  xor          gp, t1, t6
                  sh           a6, -14(sp)
                  sh           s10, -34(sp)
                  xor          s8, t3, a6
                  addi         s7, t2, -376
                  sll          a3, a5, t0
                  nop
                  lbu          a5, -37(sp)
                  xori         s5, t1, -777
                  srl          ra, s10, a5
                  slt          s11, ra, a5
                  sh           sp, -22(sp)
                  sltiu        s7, t5, 577
                  sltiu        a5, a5, 903
                  sltiu        a7, s7, -783
                  lb           s0, 61(sp) #end riscv_load_store_rand_instr_stream_1
                  xori         s9, sp, 1909
                  sra          t4, t5, t0
                  blt          t0, s5, 6f
                  bltu         t1, s6, 6f
                  sub          s7, zero, sp
                  sll          s11, t6, t6
6:                bge          a2, a1, 14f
                  nop
                  srli         t3, a6, 17
                  or           a2, a6, t4
                  bge          s3, t2, 28f
                  bge          s1, s0, 19f
                  sltiu        a4, a6, -1482
                  srl          s11, a5, tp
14:               slt          sp, t1, s4
                  bge          a5, a4, 23f
                  slti         a7, t0, -229
                  beq          t3, s4, 25f
                  slt          s11, t2, sp
19:               blt          s10, s7, 28f
                  add          a6, t0, s2
                  sll          s11, t5, s6
                  lui          zero, 602563
23:               sltiu        a4, a6, -1602
                  nop
25:               nop
                  or           s1, a3, a2
                  beq          s9, s6, 40f
28:               blt          s11, s5, 42f
                  sra          tp, s4, a7
                  xor          a5, zero, s0
                  addi         s1, s7, -1665
                  slti         s11, t3, -1242
                  beq          t2, a1, 38f
                  bgeu         t4, a5, 42f
                  nop
                  beq          s5, a7, 54f
                  add          a3, t4, s3
38:               bgeu         s6, tp, 46f
                  and          s9, s11, s11
40:               xori         a7, zero, -1086
                  sltu         a4, s4, t4
42:               nop
                  slti         s8, t2, -928
                  xor          a5, s1, ra
                  srl          s9, s9, a2
46:               addi         a2, s11, 128
                  and          s1, s4, a1
                  bne          s11, t5, 63f
                  bltu         s6, s4, 60f
                  xor          s0, s4, t5
                  bltu         s1, t5, 56f
                  blt          s5, s7, 63f
                  slli         s3, s10, 4
54:               andi         tp, s6, 140
                  bltu         a6, s4, 69f
56:               slt          t3, a7, zero
                  slli         s9, a2, 10
                  addi         a4, a6, 1254
                  blt          t6, sp, 79f
60:               xori         a3, t5, 1576
                  slt          sp, zero, sp
                  xor          t2, a6, s3
63:               slli         tp, s0, 21
                  and          t2, a4, s9
                  srl          s11, a2, s10
                  slli         s1, s1, 6
                  lui          zero, 769805
                  srli         tp, t3, 5
69:               add          a0, s3, s6
                  sra          s9, s6, s7
                  srai         a5, zero, 20
                  srli         s5, s1, 22
                  bltu         s10, t6, 80f
                  sll          ra, t0, s1
                  srli         tp, t4, 2
                  and          s6, zero, tp
                  or           t4, s9, s0
                  bltu         ra, s5, 90f
79:               nop
80:               bgeu         t6, s3, 100f
                  and          s10, t3, s1
                  nop
                  lui          a4, 880314
                  addi         a4, s7, 1427
                  auipc        s2, 945032
                  xori         a2, a5, -1833
                  sltu         a0, s1, t6
                  beq          a0, s1, 94f
                  xor          ra, s1, a3
90:               srli         s1, s4, 30
                  nop
                  sltu         t0, t3, s9
                  ori          ra, s9, 1149
94:               add          a3, t2, t2
                  lui          s10, 367381
                  and          sp, t4, a7
                  addi         s3, t3, 1212
                  bgeu         a1, s10, 103f
                  lui          a5, 61905
100:              nop
                  srai         a5, s5, 11
                  auipc        s1, 782622
103:              slt          s2, s7, s3
                  and          t2, a6, t5
                  beq          s8, sp, 121f
                  srl          s8, t2, t0
                  andi         s3, s11, -370
                  beq          a5, s1, 121f
                  bge          s1, t6, 110f
110:              lui          s10, 818531
                  xori         s6, s6, -504
                  nop
                  sll          s4, t0, t3
                  xori         s3, s11, -20
                  lui          s1, 803395
                  bge          a6, t0, 134f
                  auipc        a0, 735803
                  slli         s0, s1, 23
                  sltu         a2, a3, a1
                  srli         s5, a6, 13
121:              sra          tp, s4, t5
                  sra          s9, s3, s2
                  auipc        tp, 70161
                  nop
                  srl          tp, a6, a4
                  bge          s3, s6, 127f
127:              sltiu        s8, t2, 1501
                  xori         s6, s4, 331
                  srai         t1, t1, 13
                  and          s10, s11, s11
                  addi         t1, s5, -1045
                  and          t3, s6, a7
                  slti         zero, s7, 240
134:              bne          t0, a5, 141f
                  bgeu         s7, gp, 153f
                  xori         a0, s9, 928
                  sub          gp, t1, t2
                  beq          tp, s10, 142f
                  xor          a3, a3, t1
                  srl          t0, t2, t2
141:              blt          t5, t6, 153f
142:              srli         t4, a3, 25
                  nop
                  or           zero, a4, t1
                  auipc        gp, 66395
                  slti         s11, a7, 222
                  sub          t4, a7, sp
                  blt          gp, t3, 164f
                  sltu         s4, a6, s4
                  bne          t0, ra, 164f
                  lui          s10, 283342
                  bgeu         a5, gp, 163f
153:              srli         s6, a7, 11
                  bgeu         s5, a4, 168f
                  andi         sp, t2, -1806
                  blt          a7, s5, 171f
                  lui          sp, 414197
                  lui          s8, 890354
                  slli         s0, t5, 18
                  auipc        ra, 575874
                  sltu         gp, s6, zero
                  auipc        t4, 322352
163:              sub          s2, s11, s9
164:              sll          a4, s1, s8
                  slti         t4, a7, 450
                  sra          t4, t0, s9
                  andi         s2, s0, 421
168:              sltu         a6, zero, tp
                  lui          a7, 427145
                  blt          s9, a3, 178f
171:              xori         a2, a2, -1185
                  beq          sp, s5, 185f
                  or           tp, s7, a1
                  or           a2, s11, a3
                  srl          s3, t2, a7
                  sll          s8, a1, t1
                  sltiu        sp, a4, 1173
178:              auipc        t1, 522312
                  blt          t1, a3, 187f
                  sltu         tp, sp, ra
                  sll          s0, s0, s9
                  add          a5, t5, s10
                  sltiu        gp, a1, -1146
                  lui          s4, 271866
185:              srl          gp, a4, t5
                  and          t4, s11, s6
187:              xori         gp, s9, -1696
                  sll          s6, t1, tp
                  srli         s6, t4, 16
                  srl          s11, zero, a1
                  blt          a2, a5, 199f
                  xor          a5, a0, ra
                  andi         s0, a5, 1255
                  ori          gp, t5, -502
                  sub          tp, s0, a1
                  slli         a0, gp, 9
                  sra          s3, s4, s5
                  andi         s11, t2, -1805
199:              bltu         a6, t2, 219f
                  bltu         t4, t4, 211f
                  srai         a2, a2, 25
                  slti         s11, s3, 1860
                  sra          s10, s5, sp
                  sll          s1, a3, t2
                  slt          a5, a5, a3
                  sub          s10, s2, s0
                  andi         a4, t1, 188
                  nop
                  slti         t1, a0, -830
                  srli         sp, s11, 24
211:              nop
                  sltiu        a3, t4, -506
                  sra          s4, tp, gp
                  srl          zero, a7, a5
                  nop
                  sll          t4, t4, a4
                  add          s1, t4, gp
                  srl          s2, a3, t2
219:              bne          t5, s0, 224f
                  sltu         s11, a1, s10
                  srai         tp, s8, 19
                  beq          s3, a3, 223f
223:              slli         tp, a2, 4
224:              bgeu         t0, s2, 227f
                  blt          s3, s11, 230f
                  bgeu         t4, a0, 234f
227:              and          s10, a3, s11
                  auipc        s2, 974437
                  or           t3, s10, s1
230:              sltu         s11, t0, t2
                  nop
                  xor          t4, s4, t2
                  add          t3, t6, s3
234:              bne          s0, a2, 242f
                  slt          s6, s2, t4
                  addi         t2, s9, -2045
                  srl          a4, a5, sp
                  addi         t0, a3, 880
                  slti         sp, a3, -2005
                  bgeu         a0, t1, 249f
                  lui          gp, 687688
242:              auipc        s5, 99048
                  and          tp, s2, t2
                  bge          s7, t1, 257f
                  sll          s8, s9, s6
                  blt          s0, gp, 264f
                  add          a3, gp, zero
                  xor          s11, t3, a2
249:              or           a7, t0, t1
                  sltiu        s9, s6, 1668
                  sll          a7, s4, zero
                  auipc        s1, 648111
                  nop
                  blt          a1, s6, 274f
                  srli         t1, t3, 13
                  srai         a2, gp, 16
257:              srl          s8, t3, s11
                  srli         sp, a3, 17
                  blt          t0, s5, 265f
                  bne          gp, t5, 268f
                  xor          a4, a5, t3
                  nop
                  beq          t4, gp, 268f
264:              blt          t6, a7, 282f
265:              xor          s11, a5, a2
                  addi         gp, s8, 49
                  bne          t3, t5, 268f
268:              srai         ra, sp, 25
                  bne          zero, s1, 270f
270:              slti         t2, t5, -219
                  or           a4, a1, a0
                  srai         s8, zero, 31
                  slli         s5, a0, 20
274:              bltu         s6, zero, 289f
                  add          t4, a1, gp
                  slt          zero, s4, s6
                  sub          tp, s9, a0
                  srli         t2, s4, 3
                  bgeu         a6, s4, 280f
                  slt          a7, s6, zero
                  srl          t4, s6, a3
                  xor          t3, s2, a5
                  slti         s1, a5, -396
                  sub          a2, s9, tp
                  bge          tp, a3, sub_2_j6 #branch to jump instr
                  add          s8, a2, a0
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
280:              andi         t4, ra, -1172
                  slli         t0, s10, 27
282:              sltu         a3, s6, s2
                  bne          sp, s9, 301f
                  lui          ra, 303027
                  bltu         s5, t2, 301f
                  nop
                  srai         s8, s2, 11
                  bgeu         a3, tp, 293f
289:              blt          s3, a2, 300f
                  slti         s9, s3, -55
                  addi         t4, zero, 1462
                  bge          tp, a5, 312f
293:              srli         gp, t1, 21
                  sltu         s5, a4, a2
                  sra          s0, t0, a5
                  srai         s5, t1, 8
                  sll          s3, a4, a3
                  xori         s5, t4, 1867
                  blt          s5, t0, 317f
300:              sra          s8, t2, a7
301:              xor          a4, s6, s10
                  blt          ra, s6, 320f
                  srl          s10, s1, gp
                  slti         a4, t5, 1523
                  bltu         ra, gp, 313f
                  sub          zero, t0, a0
                  xori         s11, tp, -1007
                  sub          a7, a0, a5
                  ori          gp, t0, -438
                  sub          s6, s9, s1
                  xori         a2, a6, -600
312:              xor          t3, s4, a2
313:              auipc        s4, 662332
                  bne          s9, s3, 334f
                  or           a7, a7, sp
                  auipc        zero, 1015078
317:              blt          a1, s6, 325f
                  srli         a6, a2, 23
                  slti         zero, a6, 527
320:              beq          s3, t0, 334f
                  or           s3, s8, s5
                  slli         a2, tp, 6
                  slli         tp, a0, 9
                  nop
325:              xor          s0, a1, s11
                  srl          t0, s1, gp
                  beq          t3, s7, 341f
                  srai         t0, a2, 30
                  bne          t2, a6, 337f
                  sltu         a2, t0, a7
                  bltu         s10, s2, 334f
                  nop
                  or           gp, s2, s2
334:              addi         zero, a0, -1225
                  andi         s6, a5, 77
                  slt          t1, t0, s9
337:              slt          t2, s6, s0
                  sll          ra, a7, s4
                  xori         s1, a2, 501
                  sltiu        a7, t5, -1213
341:              sltu         s10, a4, t0
                  bltu         t3, tp, 347f
                  sub          a2, t5, t6
                  sub          a2, s10, s5
                  lui          a7, 451137
                  nop
347:              sra          s0, s10, t4
                  nop
                  bge          gp, s2, 357f
                  slti         t2, t3, -603
                  sltu         s0, s5, s7
                  sltiu        gp, s6, -1356
                  bltu         s6, s7, 366f
                  andi         a4, s5, 1156
                  lui          a3, 58222
                  ori          a7, t1, -1507
357:              sra          s1, s5, gp
                  beq          a1, t5, 366f
                  lui          t3, 430805
                  bgeu         gp, s11, 364f
                  or           t1, gp, t6
                  addi         gp, a2, 1480
                  sltiu        t2, s0, 466
364:              bge          a1, t1, 373f
                  sra          s1, t1, s10
366:              sltiu        s6, s1, -38
                  sll          s7, s8, s10
                  slli         s10, s10, 22
                  lui          a7, 287791
                  xor          s10, t4, gp
                  beq          t2, s4, 378f
                  srai         a0, s7, 1
373:              andi         sp, a7, -1165
                  bne          s8, a4, 386f
                  nop
                  sltiu        a0, s4, 17
                  beq          sp, tp, 382f
378:              sll          s0, s8, a6
                  sub          tp, a4, t5
                  auipc        a5, 921421
                  srl          s1, sp, s4
382:              andi         a4, t4, 1813
                  bltu         s10, a5, 391f
                  srli         s4, s8, 30
                  andi         s8, t4, -185
386:              addi         a4, tp, -2012
                  bgeu         s2, s11, 400f
                  srai         a7, t4, 23
                  bltu         s0, s0, 400f
                  addi         a4, t6, -646
391:              auipc        a5, 518258
                  slt          s9, ra, ra
                  sltiu        s8, a1, -1970
                  xor          s0, a2, a6
                  sra          s6, t3, t6
                  blt          s11, a4, 402f
                  sll          a2, a7, a2
                  slt          t0, t5, a0
                  sll          s6, a5, a4
400:              lui          s5, 654254
                  auipc        t0, 701803
402:              ori          a3, zero, 953
                  sra          zero, s2, t0
                  and          t1, a4, a3
                  sltiu        gp, tp, -1409
                  bge          s2, s2, 414f
                  srl          sp, gp, a7
                  sltiu        s9, s11, 1298
                  andi         a6, a0, -644
                  srl          a2, s11, a4
                  sltu         t4, t4, t5
                  add          s2, a1, gp
                  xori         s11, t3, -1291
414:              lui          a6, 92576
                  bltu         sp, zero, 416f
416:              andi         t4, tp, -1158
                  blt          a7, a0, 431f
                  or           s5, s8, t0
                  slli         s7, a4, 20
                  nop
                  bltu         s9, t2, 428f
                  srai         s4, a6, 9
                  addi         a4, sp, 1958
                  srai         a6, s6, 5
                  andi         s9, gp, 956
                  or           s3, a3, s7
                  or           s3, s3, t3
428:              lui          s2, 242100
                  auipc        s10, 244351
                  sltu         s7, s2, t2
431:              slt          a6, zero, a7
                  and          gp, a2, a2
                  andi         s0, s2, -1439
                  xor          s4, t1, zero
                  slli         tp, s0, 16
                  addi         s2, t2, -312
                  blt          s11, a3, 448f
                  bge          t4, sp, 446f
                  sltu         t0, a3, t6
                  and          t4, s1, a2
                  srli         s11, t4, 14
                  lui          a3, 887708
                  sltu         gp, s3, s6
                  nop
                  sltu         t3, a3, a4
446:              bltu         s6, s8, 459f
                  xori         s5, s1, 339
448:              sltu         s6, a2, t3
                  blt          a4, a3, 452f
                  blt          a2, s9, 458f
                  bgeu         a2, t6, 465f
452:              srai         a6, sp, 13
                  slli         a5, zero, 23
                  sltu         a4, s2, sp
                  bge          sp, a4, 473f
                  srl          s10, t0, s0
                  andi         s5, s11, 1441
458:              sub          a4, a0, s0
459:              bltu         s1, a4, 474f
                  andi         s3, t6, -1536
                  nop
                  sltiu        tp, s2, -701
                  sra          s8, s6, s7
                  sltiu        t4, a7, 1688
465:              blt          sp, a4, 477f
                  xori         a0, a4, 1196
                  sra          s6, t4, s1
                  addi         a6, a1, 519
                  or           s10, s4, ra
                  srl          a3, gp, s7
                  srai         tp, s9, 16
                  addi         s8, s10, 433
473:              slli         s10, a0, 10
474:              addi         s6, s6, -1492
                  lui          a7, 97726
                  or           zero, t1, a4
477:              srai         s8, s11, 0
                  andi         s3, a6, 1306
                  auipc        sp, 77454
                  sltiu        s3, a0, 1170
                  sub          s5, s8, t0
                  sub          t3, a2, tp
                  xor          t4, gp, a4
                  srli         ra, t3, 11
                  slti         s7, a7, 1638
                  la           s8, sub_3
                  srai         a2, a6, 0
                  slti         a6, ra, 2026
                  sub          s0, s8, t3
                  addi         s8, s8, 358
                  slti         ra, s4, 1085
                  lui          s6, 402022
                  srl          gp, gp, t1
sub_2_j8:         jalr         ra, s8, -357 #jump sub_2 -> sub_3
                  ori          a0, s5, 775
                  xori         gp, gp, 392
                  slli         a4, a0, 10
                  ori          s11, s2, -1959
                  or           a4, t6, zero
                  srl          sp, gp, a1
                  xori         sp, zero, -1906
                  xor          a4, a6, t4
                  sll          s7, a3, zero
                  add          s7, t1, t3
                  bltu         a6, a6, 515f
                  srli         t1, s4, 14
                  auipc        gp, 364564
                  sub          t2, a1, a6
                  slti         sp, s3, -1970
                  add          s6, a2, s1
                  srli         a2, t2, 7
                  bltu         s4, s5, 518f
                  xori         t1, t3, -1391
                  slli         a7, s0, 7
                  sub          s5, t4, ra
                  xori         a7, a0, 562
                  bge          zero, s2, 520f
                  sub          a0, s1, a4
                  slli         s0, s11, 16
                  nop
                  srli         ra, a4, 11
                  slti         a7, gp, -1059
                  xor          a6, gp, s5
                  bne          t6, s3, 522f
515:              lui          s6, 382285
                  addi         s5, a2, -1306
                  beq          a2, t1, 535f
518:              nop
                  nop
520:              slli         s2, a1, 27
                  sra          s10, s11, t1
522:              sltiu        t2, a2, 1335
                  sltiu        s2, a4, 1553
                  sub          a0, a4, t4
                  lui          tp, 494777
                  srai         s6, t6, 6
                  and          s10, sp, s6
                  sltu         t4, s1, ra
                  bgeu         t2, s4, 530f
530:              beq          t4, s10, 535f
                  sra          s2, zero, t4
                  ori          s10, a0, 857
                  srl          zero, ra, s10
                  xor          s7, s4, a0
535:              and          s10, s1, a5
                  nop
                  add          s4, a3, a2
                  bltu         sp, a7, 543f
                  ori          s11, a0, -554
                  bne          s9, s9, 548f
                  or           s7, a4, s3
                  sra          s8, t6, a4
543:              sltu         s2, gp, t1
                  xor          t2, a1, a6
                  andi         s3, t1, 325
                  bltu         t0, t4, 551f
                  sltu         s0, a2, t5
548:              sltiu        ra, sp, -722
                  beq          t1, zero, 553f
                  or           a2, t1, t0
551:              bne          t0, a0, 562f
                  sltu         s1, s10, a4
553:              bge          s4, a4, 562f
                  slt          s11, t5, s1
                  bne          t6, t4, 573f
                  auipc        s7, 283199
                  sltu         s4, s1, s10
                  bltu         s6, t4, 578f
                  bne          s0, a1, 565f
                  nop
                  sltiu        zero, t5, -1446
562:              lui          t3, 204328
                  nop
                  slli         zero, t4, 20
565:              nop
                  addi         t0, s2, 685
                  bge          a7, a4, 575f
                  slt          s7, s0, s5
                  lui          a5, 787295
                  slt          a0, s11, s7
                  or           s8, a7, zero
                  slli         t3, gp, 15
                  slti         sp, a4, -411
sub_2_j9:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  add          s3, t6, s3
                  add          a6, a7, s8
                  sltiu        ra, s9, 1488
                  andi         s3, a2, 711
                  or           a3, a5, s1
573:              and          a5, s6, zero
                  andi         s8, s11, 1196
575:              nop
                  sll          t1, s10, a1
                  srl          s8, t6, s7
578:              bgeu         s1, s1, 592f
                  sltiu        sp, s8, 327
                  sltiu        tp, a5, -1270
                  andi         s6, t6, 1039
                  sll          tp, tp, ra
                  srli         s8, s9, 4
                  sltiu        t1, s1, -297
sub_2_j5:         jal          ra, sub_6 #jump sub_2 -> sub_6
                  slt          a7, a3, a6
                  or           a3, a4, s11
                  beq          a2, a6, 598f
                  xori         zero, t0, -1783
                  bgeu         s4, a6, 589f
                  slt          sp, s5, t4
                  xor          s7, gp, a6
                  slli         s10, s0, 9
                  xor          s6, s0, a2
589:              srli         s8, s5, 25
                  xori         s0, s8, -1621
                  slti         gp, s7, 944
592:              xor          gp, s0, t3
                  bgeu         a3, s4, 601f
                  and          s7, s5, s0
                  srai         s4, s9, 12
                  nop
                  beq          a7, sp, 612f
598:              sra          s9, s9, a3
                  xori         a3, tp, -1766
                  add          a4, sp, t6
601:              srai         s3, s10, 5
                  bgeu         a6, s6, 607f
                  sltu         a5, t1, sp
                  srli         s1, t0, 3
                  sub          s9, tp, a3
                  sub          ra, s10, s8
607:              or           t2, t6, t5
                  auipc        zero, 149304
                  bltu         s11, zero, 612f
                  andi         gp, s10, -921
                  sll          sp, a6, t2
612:              sltu         tp, sp, s1
                  srai         zero, t5, 24
                  andi         a6, t5, 1188
                  lw           ra, 4(a1)
                  xori         tp, s8, 88
                  and          s9, s6, a2
                  sub          s10, s11, s3
                  sra          s9, tp, t0
                  addi         a3, t4, -1640
                  addi         a1, a1, 40
                  slt          a6, tp, gp
804:              addi x17, x1, 0
804:              jalr x17, x17, 0
sub_1:            addi         a1, a1, -44
                  srai         t3, s11, 12
                  srai         s8, a1, 9
                  addi         s1, tp, 41
                  sw           ra, 4(a1)
                  sra          s2, ra, s7
                  sub          s0, t4, a2
                  srl          sp, a7, s2
                  slt          a6, s4, a1
                  lui          s5, 618277
                  srai         t3, s6, 2
                  sltiu        s1, a0, 319
                  la           t0, sub_2
                  slli         gp, s11, 16
                  addi         t0, t0, -485
                  sll          sp, a2, gp
                  andi         s6, s8, -1684
                  and          t4, a1, t5
                  blt          s4, s10, sub_1_j3 #branch to jump instr
                  srli         sp, s2, 26
                  sll          s1, a6, a0
sub_1_j3:         jalr         ra, t0, 485 #jump sub_1 -> sub_2
                  sltu         s2, s0, s6
                  srli         s7, gp, 6
                  bne          a2, s4, sub_1_j4 #branch to jump instr
                  sub          a3, t6, s4
                  sltu         a3, t4, a7
                  sra          s2, t6, s3
                  addi         s1, zero, -292
sub_1_j4:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  beq          a3, tp, 10f
                  srai         s2, s1, 19
                  sltu         a3, a5, a2
                  slli         t1, a0, 20
                  sltiu        tp, a5, 139
                  or           s3, s2, ra
                  slti         a4, t3, -762
                  slti         sp, t4, 1600
                  bne          t5, s2, 13f
                  sra          s0, a2, t1
10:               and          tp, a7, s10
                  sltu         s3, s10, zero
                  and          s6, sp, s6
13:               xori         t0, a4, -734
                  sub          s1, t5, a1
                  ori          t1, a6, -315
                  lw           ra, 4(a1)
                  and          a2, s4, s2
                  addi         a1, a1, 44
                  slt          t2, s0, s10
                  auipc        s9, 822269
51:               addi x18, x1, 0
51:               jalr x18, x18, 0
sub_3:            xori         s11, sp, -413
                  nop
                  addi         a1, a1, -20
                  sll          s10, t6, tp
                  andi         tp, s3, -1327
                  slt          s11, s6, a4
                  nop
                  auipc        s10, 101295
                  add          tp, t5, s1
                  sw           ra, 4(a1)
                  sltiu        s11, ra, -976
                  xori         s2, s1, -909
                  slt          s11, a5, t0
                  sltu         a6, s9, a0
                  sltu         t4, a0, a2
                  slt          sp, a2, s11
                  lui          s2, 194911
                  lui          t0, 115825
                  sll          t1, s0, a4
                  ori          s1, s9, -708
                  slti         t4, s0, 87
                  xor          t4, s8, a0
                  xor          a0, sp, t0
                  and          t0, s4, a7
                  bltu         s6, t0, 19f
                  xori         t0, a2, 299
                  ori          a3, s9, 629
                  sll          t1, a4, sp
                  sltiu        tp, s7, 1719
                  srl          s2, t2, a1
                  or           s1, t5, s5
19:               srl          t0, zero, a7
                  lui          a3, 323897
                  lw           ra, 4(a1)
                  xori         s11, s9, 1972
                  andi         sp, t5, 866
                  slt          a7, s6, s4
                  addi         a1, a1, 20
                  andi         s10, s5, -1176
                  slti         gp, tp, 1312
                  sub          a7, s0, s2
                  srli         tp, a1, 8
42:               addi x21, x1, 1
42:               jalr x21, x21, 0
sub_7:            sub          tp, s4, t0
                  bgeu         t1, t1, sub_7_stack_p
sub_7_stack_p:    addi         a1, a1, -64
                  or           s3, t6, a5
                  addi         s8, s0, 1207
                  or           zero, s10, a0
                  sw           ra, 4(a1)
                  slli         s7, a2, 8
                  slli         t2, ra, 24
                  add          a6, s4, s7
                  add          a3, a6, sp
                  srai         a0, a0, 18
                  add          t2, a1, t0
                  bgeu         a5, t6, 15f
                  nop
                  nop
                  auipc        s3, 1039975
                  nop
                  slti         a5, a6, 692
                  srai         t1, tp, 14
                  ori          gp, s1, -8
                  nop
                  bltu         s8, s7, 28f
15:               or           t3, s3, s1
                  slti         s2, tp, -1788
                  lui          zero, 330541
                  nop
                  sltiu        a3, t1, -27
                  and          s7, a7, a7
                  ori          t1, tp, 1142
                  srai         a2, s9, 11
                  slli         a2, s2, 25
                  bne          s7, s3, 28f
                  and          s3, s11, s4
                  beq          a3, s5, 30f
                  slli         s1, t3, 19
28:               bne          a2, a3, 39f
                  sra          s5, s4, s1
30:               nop
                  ori          s2, a0, -1773
                  sll          s10, s9, t2
                  srl          ra, ra, s8
                  sll          s6, t2, t3
                  srai         s7, s11, 16
                  bne          s1, zero, 39f
                  auipc        s4, 970533
                  slli         a0, a0, 18
39:               xori         s3, ra, -760
                  xor          t4, s11, s0
                  lw           ra, 4(a1)
                  and          a0, t3, a0
                  addi         a1, a1, 64
                  slli         s6, t0, 15
                  slt          a6, a7, s6
                  and          a3, a0, sp
55:               addi x9, x1, 1
55:               jalr x9, x9, 0
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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x30, x11, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x16, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x16, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x16, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x16, x8, ecall_handler
                  li x8, 0x1
                  beq x16, x8, instr_fault_handler
                  li x8, 0x5
                  beq x16, x8, load_fault_handler
                  li x8, 0x7
                  beq x16, x8, store_fault_handler
                  li x8, 0xc
                  beq x16, x8, pt_fault_handler
                  li x8, 0xd
                  beq x16, x8, pt_fault_handler
                  li x8, 0xf
                  beq x16, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x11, x30, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x30, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x30, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x11, x30, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x11, x30, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x11, x30, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
