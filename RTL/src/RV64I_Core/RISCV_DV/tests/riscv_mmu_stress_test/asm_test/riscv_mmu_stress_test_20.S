.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xa
                  li x3, 0x80000000
                  li x4, 0xa29db1cb
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x8ea73c25
                  li x9, 0xe
                  li x11, 0xf
                  li x12, 0xfbd4c1c6
                  li x13, 0x0
                  li x14, 0x5
                  li x15, 0x5a86656a
                  li x16, 0xf8255f60
                  li x17, 0x0
                  li x18, 0xb
                  li x19, 0x80000000
                  li x20, 0x8
                  li x21, 0x2
                  li x22, 0x1c19af8e
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0xf17fce64
                  li x26, 0x4bf84d
                  li x27, 0xe
                  li x28, 0x0
                  li x29, 0xfc65251c
                  li x30, 0xff89345d
                  li x31, 0x0
                  la x10, user_stack_end
main:             la           tp, region_1+999 #start riscv_load_store_hazard_instr_stream_2
                  sh           s3, -15(tp)
                  lbu          s1, 2(tp)
                  lbu          sp, 2(tp)
                  sb           s10, 2(tp)
                  sltu         t4, s8, t1
                  lb           a6, 2(tp)
                  lbu          s9, 2(tp)
                  lb           s5, 2(tp)
                  lh           t5, 5(tp)
                  lhu          zero, 15(tp)
                  addi         t5, t6, 1510
                  sb           t4, 15(tp)
                  lhu          t2, 15(tp)
                  add          s5, s6, t3
                  srai         s0, t5, 20
                  lb           t2, 16(tp)
                  ori          s1, s7, 966
                  addi         s9, a1, 1181
                  lb           a2, 16(tp)
                  lb           t1, 16(tp)
                  lb           t4, 16(tp)
                  lbu          s5, 16(tp)
                  lbu          a2, 6(tp) #end riscv_load_store_hazard_instr_stream_2
                  la           ra, region_1+1160 #start load_store_instr_stream_0
                  la           s11, region_1+890 #start load_store_instr_stream_1
                  sh           s0, 72(ra)
                  lbu          t5, -1(s11)
                  lhu          tp, -188(ra)
                  lbu          s7, 9(s11)
                  lbu          a6, 122(ra)
                  sb           s8, -15(s11)
                  lh           gp, 0(s11)
                  lbu          s10, 12(s11)
                  lb           s1, -130(ra)
                  sb           ra, 11(s11)
                  lbu          t1, -12(ra)
                  lb           t3, -15(s11)
                  lbu          s8, 105(ra)
                  lb           t4, -15(s11)
                  lbu          a7, 7(s11) #end load_store_instr_stream_1
                  lh           t2, -84(ra) #end load_store_instr_stream_0
                  la           t5, region_1+1330 #start load_store_instr_stream_1
                  la           s3, region_1+946 #start load_store_instr_stream_2
                  lb           s7, 4(t5)
                  lbu          s4, -1(t5)
                  sb           a5, -12(t5)
                  la           s2, region_1+296 #start load_store_instr_stream_3
                  la           t6, region_1+154 #start load_store_instr_stream_0
                  lb           s8, -5(t5)
                  lhu          tp, 174(s3)
                  lb           a3, 864(s2)
                  sb           t2, 18(s2)
                  sb           a3, -12(t5)
                  lbu          t2, 377(s2)
                  lbu          a5, -49(t6)
                  lbu          t1, -264(s2)
                  lb           ra, 13(s3)
                  sb           s10, 49(t6)
                  sb           t3, -67(s2)
                  lbu          sp, -255(s3)
                  sb           s4, 7(t5)
                  lb           s0, -2(s3)
                  sb           a6, 275(s2)
                  lbu          s6, -7(t5)
                  sb           s0, 42(t6)
                  lb           a5, 269(s2)
                  lbu          s9, 97(s3)
                  lb           s0, 6(t5) #end load_store_instr_stream_1
                  sb           s8, -155(s3)
                  sb           s8, -79(s2) #end load_store_instr_stream_3
                  lw           s10, -22(t6)
                  lbu          s0, -167(s3) #end load_store_instr_stream_2
                  sh           a4, 6(t6) #end load_store_instr_stream_0
                  la           a7, region_0+3 #start riscv_load_store_hazard_instr_stream_4
                  sb           sp, 193(a7)
                  lbu          s2, 193(a7)
                  lb           t6, 176(a7)
                  lb           s7, 176(a7)
                  sb           s11, 256(a7)
                  sb           ra, 256(a7)
                  sb           a3, 35(a7)
                  srl          s10, s0, a5
                  sb           t0, 35(a7)
                  or           a6, a3, s1
                  lhu          s4, 183(a7)
                  lhu          s9, 9(a7) #end riscv_load_store_hazard_instr_stream_4
                  la           ra, region_0+280 #start riscv_load_store_hazard_instr_stream_0
                  sltiu        a5, t0, 306
                  sltiu        s5, zero, 1514
                  lbu          t4, 66(ra)
                  lh           tp, 66(ra)
                  xor          zero, zero, t5
                  lb           t3, 66(ra)
                  lh           s3, 66(ra)
                  lbu          gp, 66(ra)
                  or           s9, gp, s0
                  lh           s0, 66(ra)
                  lh           s3, 230(ra)
                  lb           s5, 230(ra)
                  lb           a1, 230(ra)
                  slli         s8, a3, 18
                  lb           s2, 230(ra)
                  lh           a6, 230(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+931 #start riscv_load_store_rand_instr_stream_2
                  srl          s4, a5, t3
                  sltiu        s4, t3, 596
                  lbu          ra, -480(sp)
                  sra          s8, ra, a1
                  lbu          tp, -347(sp)
                  lbu          s0, -103(sp)
                  lh           t4, 175(sp)
                  lui          s9, 116621
                  sub          t6, s10, gp
                  lh           ra, 201(sp)
                  srli         t3, t6, 13
                  xor          a7, ra, a0
                  addi         ra, t0, 54
                  sb           t1, -138(sp)
                  sra          s0, ra, t1
                  addi         s10, s7, 1556
                  add          s1, a5, sp
                  lbu          a6, 12(sp)
                  nop
                  srai         t2, t2, 30
                  lb           a2, 706(sp)
                  andi         a7, a5, -802
                  sb           a4, 154(sp)
                  lb           a5, -348(sp)
                  srai         s2, t1, 0
                  add          zero, gp, a1
                  lw           t1, -271(sp)
                  sltiu        s4, ra, -56
                  lbu          s9, 406(sp)
                  sll          s2, s7, s7
                  lbu          s9, -662(sp)
                  lb           t4, 928(sp)
                  srli         t3, s0, 9
                  lb           t4, 72(sp)
                  lb           s7, -498(sp)
                  srl          a5, s2, s9
                  andi         s9, s6, 646
                  sb           a5, -538(sp)
                  sb           s1, 488(sp)
                  nop
                  xor          a6, s8, s4
                  lb           t2, -312(sp)
                  sra          a3, t6, a0
                  slti         s5, s10, -1225
                  lbu          a6, 436(sp)
                  sh           t0, 1021(sp) #end riscv_load_store_rand_instr_stream_2
                  la           ra, region_0+270 #start riscv_load_store_rand_instr_stream_5
                  and          s1, s7, s5
                  lb           s9, 46(ra)
                  srl          t6, s6, a0
                  sltu         s8, a2, s6
                  ori          s6, a7, -2021
                  sltu         s9, a5, ra
                  lh           s1, -64(ra)
                  sltiu        a6, a3, -807
                  slti         s5, a7, 539
                  lb           t6, -56(ra)
                  sb           s1, -23(ra)
                  sub          t6, s1, a6
                  slt          t6, zero, s2
                  xor          sp, t2, a5
                  nop
                  xori         s7, a7, -441
                  lui          s11, 33665
                  slt          a6, t1, gp
                  lh           s11, 0(ra)
                  lh           s11, -40(ra)
                  slli         zero, t5, 11
                  sltiu        zero, a6, -125
                  slli         t5, s3, 29
                  ori          s2, s8, 256
                  sltu         t3, a6, zero
                  slt          s7, s7, ra
                  sltiu        t5, ra, -1667
                  lb           a1, 30(ra)
                  srl          a3, a5, a4
                  xor          t4, tp, zero
                  lbu          zero, -7(ra)
                  sltu         s8, s11, a1
                  sltu         a5, a1, s0
                  srl          s10, ra, ra
                  ori          a1, s5, 776
                  srli         s8, s1, 9
                  lb           a3, -23(ra)
                  lbu          a7, 45(ra)
                  srai         t6, s11, 11
                  sw           a1, -26(ra)
                  lbu          s7, -27(ra)
                  sb           s9, -33(ra)
                  sh           a4, 42(ra) #end riscv_load_store_rand_instr_stream_5
                  la           s9, region_0+1938 #start load_store_instr_stream_1
                  lb           s5, -26(s9)
                  la           s6, region_0+553 #start load_store_instr_stream_0
                  lb           s7, 14(s6)
                  lb           s3, 15(s9)
                  lb           s4, 12(s6)
                  lb           s7, -45(s9)
                  sb           t5, 14(s6)
                  lb           t3, -16(s6)
                  sb           a2, 4(s9)
                  sb           s4, -13(s6)
                  lbu          s2, 11(s6)
                  lbu          sp, 11(s6)
                  lb           a6, 39(s9)
                  lbu          s4, -6(s6)
                  sb           s5, 19(s9)
                  lbu          s0, -12(s6)
                  lbu          t1, -51(s9)
                  lb           s7, -35(s9) #end load_store_instr_stream_1
                  sb           t5, 13(s6) #end load_store_instr_stream_0
                  la           sp, region_0+1964 #start riscv_load_store_hazard_instr_stream_1
                  sh           ra, 2(sp)
                  lhu          s5, 2(sp)
                  sub          ra, a2, t2
                  sb           zero, 2(sp)
                  sh           a3, 2(sp)
                  andi         s10, tp, 1907
                  xori         t5, a0, 711
                  lh           a3, 2(sp)
                  lbu          a2, 2(sp)
                  lbu          s10, 2(sp)
                  lb           s10, 2(sp)
                  sh           s3, 2(sp)
                  lbu          s0, 2(sp)
                  xor          t2, a4, sp
                  lhu          s3, 2(sp)
                  lhu          s11, 2(sp)
                  lh           s11, 2(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t5, region_1+182 #start load_store_instr_stream_3
                  la           a2, region_1+1755 #start load_store_instr_stream_1
                  la           s9, region_1+1869 #start load_store_instr_stream_0
                  la           s4, region_1+455 #start load_store_instr_stream_4
                  sb           a2, -388(s4)
                  sh           s5, -14(t5)
                  lb           t6, -4(t5)
                  la           s6, region_1+1373 #start load_store_instr_stream_2
                  sb           s8, -9(t5)
                  lbu          sp, -5(a2)
                  lhu          s0, -19(s9)
                  lb           a3, 876(s4)
                  sb           a1, 14(a2)
                  lb           s10, -7(t5)
                  lb           s11, -16(a2)
                  sb           ra, -52(s9)
                  sb           s8, 44(s9)
                  lb           a3, 9(a2)
                  lhu          t3, 1447(s4)
                  lhu          ra, 0(t5)
                  lb           tp, 1(t5)
                  lhu          sp, -3(a2)
                  lbu          a7, -4(s9)
                  lb           s2, 13(s6)
                  lb           a6, 13(a2)
                  lbu          s2, -352(s4)
                  sb           t2, -12(s6)
                  sh           sp, -6(t5)
                  sb           a1, 940(s4)
                  lbu          s0, -12(a2)
                  sh           s2, -1(s9)
                  lb           s10, -3(s6)
                  sb           a5, 1(s6)
                  sb           a5, -4(a2) #end load_store_instr_stream_1
                  sb           a6, 1174(s4)
                  lbu          a7, 16(s6) #end load_store_instr_stream_2
                  sb           t5, 651(s4)
                  sw           tp, -10(t5) #end load_store_instr_stream_3
                  sb           s10, 340(s4) #end load_store_instr_stream_4
                  lb           t1, -30(s9)
                  lb           a7, 40(s9) #end load_store_instr_stream_0
                  la           s1, region_0+1308 #start riscv_load_store_hazard_instr_stream_3
                  lui          t5, 866922
                  sltu         tp, t5, s10
                  lw           t1, -12(s1)
                  sw           t6, -12(s1)
                  lh           s3, -12(s1)
                  add          t4, a4, t0
                  lbu          t4, -7(s1)
                  lbu          s8, 10(s1)
                  lh           ra, 14(s1)
                  lh           a1, 14(s1)
                  lh           t5, 14(s1)
                  lb           s11, 14(s1)
                  lh           ra, -14(s1)
                  lbu          tp, -14(s1)
                  sb           s6, -11(s1)
                  xori         tp, t0, -1437
                  lw           ra, -8(s1)
                  sb           s10, -8(s1)
                  lbu          sp, 14(s1)
                  lh           s4, 14(s1) #end riscv_load_store_hazard_instr_stream_3
                  la           a7, region_0+1986 #start riscv_load_store_rand_instr_stream_0
                  or           a5, s5, t2
                  nop
                  and          t3, a4, sp
                  lb           t5, 2(a7)
                  srl          sp, a2, sp
                  lbu          t3, -39(a7)
                  sub          t5, a4, a7
                  add          t2, s8, s9
                  lb           s7, -25(a7)
                  addi         s2, t5, 1595
                  slt          a3, a2, s9
                  sb           s4, -59(a7)
                  lh           t3, -36(a7)
                  lbu          s0, -63(a7)
                  sb           t6, 0(a7)
                  lb           t4, -47(a7)
                  slt          t3, sp, a2
                  lhu          s10, -32(a7)
                  nop
                  sb           a0, -62(a7)
                  sltu         s5, s5, t6
                  slt          a6, a0, s0
                  sb           tp, -6(a7)
                  auipc        s9, 582336
                  sb           t1, -39(a7)
                  sh           a3, -44(a7)
                  lbu          gp, -19(a7)
                  sh           s3, -16(a7)
                  srli         sp, s6, 17
                  sh           gp, -60(a7)
                  lb           a5, -55(a7)
                  lhu          s6, -58(a7)
                  lw           a2, -58(a7)
                  add          t3, s0, gp
                  lb           a1, -48(a7)
                  sltiu        s9, s7, 199
                  xori         zero, ra, -203
                  lb           s9, -30(a7)
                  sh           s9, 12(a7)
                  lb           s6, 7(a7)
                  sltiu        t5, s11, -132
                  xor          ra, s4, t5
                  lw           s3, -54(a7)
                  auipc        t1, 345858
                  sh           s3, 8(a7)
                  sll          s5, s6, a7
                  lb           s10, -18(a7)
                  lb           a3, -21(a7)
                  andi         a3, sp, -799
                  lh           a1, -4(a7)
                  lw           s0, -58(a7) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+1265 #start riscv_load_store_rand_instr_stream_3
                  add          gp, t3, s2
                  or           a5, t6, a7
                  lbu          s11, 14(a7)
                  andi         s3, s9, 1982
                  lb           a3, 4(a7)
                  lh           s3, -1(a7)
                  lb           t6, 6(a7)
                  sw           a5, 15(a7)
                  srli         s10, a0, 20
                  and          s2, t1, s8
                  lhu          t4, -7(a7)
                  sb           t4, -6(a7)
                  sub          s8, s3, s4
                  add          s3, gp, a5
                  srl          s0, s10, gp
                  lh           zero, 9(a7)
                  sw           a2, 7(a7)
                  xori         s3, ra, -509
                  slti         t6, t6, 1367
                  lh           t2, -5(a7)
                  add          s10, s9, s9
                  add          s3, a4, t1
                  lh           zero, 7(a7)
                  add          a5, ra, a4
                  sh           sp, 15(a7)
                  nop
                  lb           gp, -14(a7)
                  lbu          a6, 8(a7) #end riscv_load_store_rand_instr_stream_3
                  la           s6, region_0+1980 #start load_store_instr_stream_1
                  sh           s6, -20(s6)
                  lb           s2, -27(s6)
                  lbu          ra, -49(s6)
                  lb           s2, -46(s6)
                  la           sp, region_0+942 #start load_store_instr_stream_0
                  lbu          s0, -571(sp)
                  sb           a5, 966(sp)
                  sh           s11, 930(sp)
                  lbu          t1, -879(sp)
                  lbu          t1, -604(sp)
                  lb           t1, -43(s6)
                  lh           a7, -56(s6)
                  lw           t1, -4(s6)
                  lhu          zero, -48(s6) #end load_store_instr_stream_1
                  lhu          a2, 920(sp) #end load_store_instr_stream_0
                  la           t2, region_0+1671 #start load_store_instr_stream_1
                  la           tp, region_0+884 #start load_store_instr_stream_0
                  lh           s4, -1227(t2)
                  lbu          ra, -29(tp)
                  sb           s4, -1377(t2)
                  sh           t3, 46(tp)
                  sb           a1, -1317(t2)
                  lb           t4, -22(tp)
                  lbu          sp, 55(t2)
                  lhu          zero, 18(tp)
                  sh           s8, -1433(t2) #end load_store_instr_stream_1
                  lbu          s10, 11(tp) #end load_store_instr_stream_0
                  la           s3, region_0+1837 #start riscv_load_store_rand_instr_stream_4
                  sltu         a6, a0, zero
                  lbu          a2, -1792(s3)
                  lbu          s5, -1574(s3)
                  lhu          s10, -1045(s3)
                  sb           a4, -550(s3)
                  lbu          s7, -927(s3)
                  ori          a7, s0, -1525
                  or           s2, a5, s8
                  lbu          tp, -664(s3)
                  lbu          t3, -1184(s3)
                  sh           sp, -441(s3)
                  sll          a6, s8, t4
                  srli         s5, t1, 7
                  lui          t5, 806360
                  sb           ra, -1307(s3)
                  slti         s8, t1, 1198
                  nop
                  lh           t4, -417(s3)
                  lb           s9, -1300(s3)
                  lhu          s5, -1447(s3)
                  lbu          a3, -951(s3)
                  lh           sp, -1435(s3)
                  lbu          a7, -622(s3)
                  lbu          gp, -1814(s3)
                  lbu          t1, -978(s3)
                  lhu          t4, -87(s3)
                  sltiu        s6, s9, -1535
                  sh           zero, -1797(s3)
                  lw           a7, -81(s3)
                  sb           a5, -166(s3)
                  lui          a6, 1043443
                  sh           s6, -1603(s3) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1772 #start riscv_load_store_hazard_instr_stream_6
                  lb           s1, 7(sp)
                  sb           s8, 7(sp)
                  sw           a7, 0(sp)
                  lui          a5, 266975
                  srl          s10, a2, a2
                  lhu          a6, 0(sp)
                  srai         s1, a2, 8
                  sh           ra, 0(sp)
                  lui          t4, 443328
                  sb           a2, -1(sp)
                  lb           s8, -1(sp)
                  lbu          t6, -1(sp)
                  sb           zero, -1(sp)
                  lbu          s5, -1(sp)
                  lhu          s11, 10(sp)
                  lb           s0, 10(sp)
                  lb           a5, 5(sp)
                  lbu          zero, 5(sp)
                  sb           a3, 5(sp)
                  lh           a2, -16(sp)
                  lw           a5, 0(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           sp, region_0+1838 #start riscv_load_store_rand_instr_stream_6
                  srai         s0, sp, 3
                  srai         s7, s7, 15
                  ori          s11, t2, -434
                  lhu          t2, -8(sp)
                  slt          s11, s7, t6
                  sb           s6, -4(sp)
                  lhu          a2, -12(sp)
                  lbu          t5, -1(sp)
                  lh           s3, -14(sp)
                  srl          s5, tp, zero
                  lhu          zero, -10(sp)
                  lui          s9, 98131
                  add          t6, t4, a7
                  sb           s9, 16(sp)
                  lb           a6, 7(sp)
                  sb           a1, -16(sp)
                  or           s0, zero, t2
                  lhu          a6, -8(sp)
                  sw           gp, 10(sp)
                  sltiu        s9, s2, -798
                  sltu         zero, s1, t6
                  slti         a6, t2, -564
                  lhu          s0, 4(sp)
                  addi         s1, s6, 875
                  lb           s5, 3(sp)
                  lh           s8, -12(sp) #end riscv_load_store_rand_instr_stream_6
                  la           t3, region_0+1944 #start load_store_instr_stream_1
                  sb           a7, 16(t3)
                  la           s2, region_0+1726 #start load_store_instr_stream_2
                  sb           a1, -435(s2)
                  la           a1, region_0+899 #start load_store_instr_stream_4
                  la           s5, region_0+1374 #start load_store_instr_stream_3
                  lhu          a2, -541(a1)
                  lw           s0, -1030(s2)
                  lbu          s3, 654(a1)
                  la           a7, region_0+1487 #start load_store_instr_stream_0
                  lh           s4, -1130(s2)
                  lw           s10, 809(a1)
                  lh           tp, 83(a7)
                  lbu          ra, -1583(s2)
                  lbu          s4, -1104(s2)
                  lb           s10, -37(a7)
                  sw           zero, -4(t3)
                  lb           s10, -40(a7)
                  sb           a3, -1539(s2)
                  lb           t2, 16(s5)
                  lbu          zero, 44(a7)
                  sw           a2, 14(s5)
                  lbu          t2, 5(t3)
                  lhu          s1, 178(s2)
                  lh           s7, -41(a7)
                  lbu          s9, -10(s5)
                  lbu          s7, 192(a7)
                  sb           a2, 5(t3)
                  sb           a7, 7(s5)
                  lb           t4, 727(a1)
                  lbu          a6, -13(t3)
                  lhu          t1, 4(s5)
                  lbu          a3, -1615(s2)
                  sh           zero, -183(a7)
                  lbu          s4, 107(a1) #end load_store_instr_stream_4
                  lhu          s3, -10(t3)
                  lb           t1, 2(t3) #end load_store_instr_stream_1
                  lbu          s7, -1629(s2)
                  lh           a3, -560(s2) #end load_store_instr_stream_2
                  lbu          s9, -13(s5) #end load_store_instr_stream_3
                  lb           a5, -17(a7) #end load_store_instr_stream_0
                  bne          a2, s10, 13f
                  or           gp, a7, s8
                  or           s0, a7, t4
                  lui          s0, 987404
                  or           t4, t0, s11
                  bgeu         ra, s7, 21f
                  or           t3, a1, a1
                  and          s4, a2, t6
                  xor          t4, ra, a0
                  slt          t4, a1, t0
                  slli         s10, t5, 16
                  sll          ra, t6, s6
                  slli         s8, zero, 25
13:               bgeu         s3, t6, 17f
                  bgeu         s4, s11, 31f
                  bgeu         s1, a1, 35f
                  slt          s10, a6, a5
17:               sltu         t4, a6, tp
                  nop
                  addi         a5, s9, 1398
                  blt          t6, s7, 27f
21:               auipc        t3, 628273
                  bge          t6, s2, 41f
                  slli         a5, s9, 5
                  srli         s3, ra, 18
                  srl          s8, s10, a2
                  bltu         s10, s7, 34f
27:               addi         s4, t4, -1068
                  bge          a5, s8, 36f
                  slli         zero, a1, 8
                  slt          s5, gp, a6
31:               lui          s9, 817853
                  add          s3, gp, s3
                  xor          s5, t3, a5
34:               sll          s0, s11, s5
35:               and          tp, s2, t5
36:               slli         t5, t4, 25
                  srai         s0, sp, 4
                  andi         s1, s10, 89
                  slti         ra, s3, -35
                  sra          s1, s2, tp
41:               blt          ra, a6, 58f
                  lui          s4, 387938
                  srai         s3, t3, 10
                  auipc        s3, 792784
                  srli         s6, t0, 30
                  xor          a5, a7, a6
                  add          gp, s10, t2
                  sub          tp, a0, s0
                  or           a5, a0, s3
                  sltiu        t6, ra, -1454
                  srl          a5, a7, s4
                  sub          a5, s2, t0
                  xor          a5, a0, tp
                  srai         t5, tp, 28
                  sltu         a3, s9, s2
                  slt          tp, s9, a0
                  slti         t1, a6, 447
58:               beq          a7, a0, 65f
                  srai         a2, s4, 4
                  slt          s9, s9, t4
                  auipc        gp, 305446
                  and          sp, a3, a4
                  blt          s10, t1, 73f
                  sra          a7, ra, s4
65:               blt          s4, a4, 73f
                  ori          s1, s5, 1058
                  blt          s10, t6, 80f
                  addi         s0, s11, 268
                  xor          s9, a5, s7
                  sltu         a5, s9, ra
                  bltu         t2, sp, 81f
                  xori         a2, a3, -204
73:               bgeu         s10, s11, 79f
                  xor          gp, t2, tp
                  or           t5, t6, a2
                  addi         sp, a5, 609
                  sra          t5, a0, a6
                  addi         t3, a6, -1964
79:               addi         s2, a0, -1038
80:               addi         t1, s4, -587
81:               blt          t0, s4, 94f
                  auipc        s5, 564969
                  xor          s6, a0, a1
                  srai         s1, s5, 17
                  sub          sp, t6, a3
                  bge          a2, t5, 96f
                  bltu         a1, a4, 101f
                  ori          t5, a4, -515
                  bge          t2, s6, 109f
                  addi         gp, a3, -180
                  slti         s9, t2, -69
                  auipc        t6, 427331
                  add          s4, t0, sp
94:               blt          t5, s1, 97f
                  or           s4, s10, s7
96:               sltiu        s0, ra, -698
97:               slli         t2, s11, 9
                  sltiu        s4, s9, 674
                  sub          s11, s2, sp
                  bgeu         s4, a6, 119f
101:              sra          ra, tp, t4
                  srl          s0, a3, s10
                  srli         s11, t4, 9
                  xori         t3, sp, -5
                  xor          gp, a5, s1
                  xori         s10, a5, 1690
                  beq          s0, a4, 119f
                  bge          ra, a0, 124f
109:              lui          a6, 702998
                  andi         t3, t6, -943
                  auipc        t1, 147092
                  bgeu         s7, tp, 130f
                  sra          ra, gp, t2
                  lui          s7, 161486
                  addi         sp, s5, 1253
                  sltu         a5, s10, a1
                  srli         s1, s0, 11
                  srli         t6, s7, 18
119:              bge          s10, s7, 133f
                  sll          t2, s1, ra
                  or           a5, s0, tp
                  beq          s1, a1, 133f
                  sll          a7, t5, tp
124:              bge          a2, a2, 129f
                  xori         s6, s3, -1812
                  xor          a5, a6, t3
                  bge          gp, t2, 144f
                  sltiu        a5, t6, 1300
129:              add          zero, t4, a6
130:              or           s9, s6, s2
                  bltu         t3, gp, 147f
                  nop
133:              nop
                  xor          s11, t0, t1
                  lui          a5, 197316
                  addi         ra, s7, 514
                  sll          tp, s5, s3
                  bne          t4, s0, 148f
                  srai         a3, s7, 7
                  xori         t2, gp, 754
                  sra          t3, ra, ra
                  and          t5, a0, s11
                  andi         s0, t4, 958
144:              slli         a2, a3, 4
                  xori         s11, s5, -1276
                  auipc        s5, 430410
147:              slli         s1, a0, 6
148:              bne          t3, t6, 161f
                  ori          a6, a6, -119
                  or           ra, s2, a3
                  ori          t6, s5, -730
                  sll          a1, a4, s10
                  slt          s8, sp, a2
                  and          s8, a7, gp
                  ori          s3, a3, -2033
                  ori          a6, s7, -1660
                  bltu         t3, a2, 169f
                  sub          s6, t4, a6
                  sll          t2, sp, gp
                  and          s10, t1, t2
161:              sltu         s10, s4, t5
                  slt          sp, s10, s4
                  bltu         t2, t1, 171f
                  la           s7, sub_1
                  add          t2, s10, s1
                  add          a5, s11, s8
                  xori         a1, sp, -821
                  auipc        t2, 143143
                  addi         s7, s7, -885
                  xor          s9, s4, s5
main_j1:          jalr         s7, s7, 885 #jump main -> sub_1
                  blt          a7, a7, 180f
                  bltu         s11, s1, 170f
                  srli         s2, s0, 8
                  bgeu         s9, t5, 187f
                  xori         s8, t2, -830
169:              lui          gp, 413419
170:              bgeu         t6, s11, 174f
171:              srli         tp, tp, 9
                  bltu         a4, t3, 186f
                  addi         s1, t3, -1941
174:              bltu         t6, s11, 181f
                  ori          tp, s2, 251
                  sra          s1, ra, t6
                  lui          ra, 99941
                  slt          zero, s7, a2
                  sltu         zero, a7, s4
180:              ori          sp, s8, 1284
181:              bltu         t4, s5, 184f
                  srli         s0, t6, 5
                  slli         s9, a3, 1
184:              and          s7, t4, a6
                  blt          s4, zero, 201f
186:              bltu         s1, s2, 205f
187:              bne          s11, sp, 207f
                  xori         t4, a7, -1780
                  xori         s9, ra, 1150
                  nop
                  bltu         a3, s8, 201f
                  or           a7, t4, a5
                  sll          a7, gp, ra
                  lui          s7, 907587
                  srl          tp, t3, s0
                  auipc        zero, 26908
                  nop
                  or           t2, a7, gp
                  auipc        s10, 342425
                  bne          s9, s9, 207f
201:              auipc        t6, 110177
                  bge          s9, s11, 219f
                  srl          t5, sp, s11
                  lui          s11, 607880
205:              slli         s1, a5, 8
                  and          t1, s4, sp
207:              add          t4, s2, s2
                  beq          a5, s1, 225f
                  sltiu        s2, s11, 859
                  bgeu         t5, a7, 227f
                  bne          s3, a4, 222f
                  bne          s1, a0, 220f
                  sltu         s4, s8, tp
                  lui          s7, 780410
                  auipc        s5, 15944
                  srl          t6, sp, t2
                  bltu         t6, a0, 225f
                  andi         s3, a1, -861
219:              add          t2, s2, t4
220:              bgeu         a3, a5, 234f
                  lui          t1, 887752
222:              andi         a3, a7, 231
                  sub          a5, s11, s9
                  auipc        s10, 73490
225:              slli         t2, zero, 16
                  bge          a1, s1, 244f
227:              or           t4, s4, a2
                  slli         tp, a1, 16
                  bge          a1, s6, 235f
                  nop
                  sltu         s10, s10, t6
                  sltiu        gp, a2, -310
                  srai         s9, t2, 21
234:              beq          a2, a7, 247f
235:              xori         tp, a4, -1075
                  srl          t2, zero, a5
                  slt          a3, s6, s1
                  xor          s5, a3, sp
                  addi         t3, s8, -1347
                  srl          a3, s7, tp
                  sub          t2, t2, s1
                  and          t3, s11, s7
                  nop
244:              sub          s2, a4, s4
                  srli         a3, t6, 9
                  srai         s9, a3, 9
247:              slti         gp, s7, -1329
                  xor          s0, s10, s2
                  slti         zero, t3, -513
                  bge          s9, t5, 269f
                  auipc        s5, 441610
                  bne          a6, a3, 265f
                  sra          t2, s8, a7
                  slli         t1, a5, 29
                  ori          t3, t2, -1748
                  bltu         ra, s2, 272f
                  bltu         s6, t5, 267f
                  auipc        a7, 620674
                  add          s4, s3, t5
                  sltu         s3, a5, a6
                  or           s5, a7, a1
                  bge          t6, s1, 279f
                  bne          a3, t6, 270f
                  beq          a0, s5, 272f
265:              slti         s3, s2, 697
                  nop
267:              bne          t4, a3, 272f
                  slli         s0, s2, 24
269:              sltiu        t3, s1, 1794
270:              lui          s2, 161203
                  and          a2, ra, a3
272:              sltiu        a5, gp, -53
                  slti         t5, a0, 1545
                  sub          a3, a1, sp
                  blt          a4, tp, 295f
                  bltu         s3, a6, 295f
                  slti         t5, s11, 354
                  and          s4, a0, t2
279:              bge          s3, s8, 287f
                  sltiu        gp, t3, -1604
                  and          t2, a5, zero
                  and          s7, a0, s0
                  sub          s9, s6, s6
                  bltu         s5, t2, 300f
                  bge          t0, t1, 299f
                  xor          t1, a5, gp
287:              bne          s6, a3, 300f
                  bltu         s9, a1, 294f
                  srli         s0, t5, 23
                  lui          t1, 586009
                  bge          t3, tp, 294f
                  blt          a1, tp, 299f
                  slli         t6, s7, 7
294:              sltu         t2, s8, t2
295:              and          s3, a6, s4
                  sub          a6, s7, a1
                  nop
                  sltu         s3, sp, tp
299:              lui          a7, 714649
300:              bgeu         t3, s6, 316f
                  slti         s6, s7, -1822
                  bgeu         a1, a0, 320f
                  nop
                  blt          a3, a4, 314f
                  auipc        sp, 681060
                  sltu         a7, t5, s2
                  srli         s11, s8, 28
                  srli         tp, t0, 19
                  sll          s5, s2, t3
                  xori         sp, s3, -1543
                  nop
                  srai         s10, s10, 1
                  and          a2, s7, a0
314:              bne          s2, s5, 322f
                  slli         tp, t3, 30
316:              xor          a7, a1, s10
                  ori          a5, s4, -1904
                  bne          ra, ra, 332f
                  beq          a4, s8, 338f
320:              xori         t5, a4, 1869
                  srli         gp, gp, 19
322:              bge          s3, t4, 339f
                  and          tp, s6, s0
                  sub          s1, s8, a5
                  add          s7, t4, a7
                  sltu         s11, a0, s1
                  sll          t5, a7, t6
                  sltu         s4, s0, a3
                  and          s1, a2, ra
                  blt          a4, t0, 350f
                  lui          ra, 85480
332:              xori         a6, t0, -864
                  srai         s5, a2, 3
                  addi         a1, t0, -875
                  bge          s9, s3, 351f
                  andi         sp, t2, 1006
                  sltiu        ra, a2, -1909
338:              ori          s6, s2, 229
339:              auipc        a5, 275548
                  xor          a6, gp, s0
                  auipc        t6, 465792
                  beq          s6, a0, 355f
                  sra          t3, s2, s7
                  or           s3, t6, sp
                  nop
                  and          a3, a7, ra
                  auipc        a3, 507588
                  slti         a3, t0, -283
                  bne          t2, s10, 366f
350:              ori          t3, t3, 1891
351:              srai         a1, s3, 31
                  add          s1, a5, a5
                  sltiu        t2, s8, 1227
                  blt          t0, t1, 358f
355:              sra          a3, t1, a7
                  add          a3, gp, t3
                  auipc        s3, 232372
358:              sra          a6, a7, s8
                  bge          s3, a5, 369f
                  andi         s2, t6, -1071
                  bltu         tp, s7, 374f
                  bgeu         s1, s11, 373f
                  andi         sp, a6, -391
                  sub          sp, s10, tp
                  lui          s4, 125938
366:              bgeu         sp, gp, 378f
                  ori          s5, s10, 1015
                  bgeu         s9, s5, 378f
369:              ori          s4, s0, 1352
                  sltiu        zero, t1, -2009
                  lui          s5, 871171
                  sra          s5, s1, sp
373:              xori         s4, a1, 755
374:              bltu         t1, a6, 384f
                  addi         a3, s7, 662
                  sra          s8, t6, t6
                  bne          a5, s9, 385f
378:              srl          gp, s2, gp
                  beq          a5, t0, 397f
                  andi         s8, s8, 1155
                  blt          ra, s4, 388f
                  or           s5, s4, s0
                  addi         s2, gp, 1668
384:              srai         t5, a0, 10
385:              blt          s3, s0, 402f
                  bne          t2, a6, 399f
                  beq          t2, gp, 400f
388:              nop
                  or           s4, tp, sp
                  sub          s5, a6, t0
                  srli         s7, s5, 2
                  blt          t4, sp, 403f
                  andi         s5, t4, -901
                  srli         t3, a1, 23
                  sltiu        tp, a6, 1455
                  blt          s4, s6, 402f
397:              xori         a1, s6, 1551
                  addi         tp, s10, 53
399:              or           s1, t1, s6
400:              blt          a7, a3, 408f
                  bne          sp, zero, 420f
402:              slt          t4, a7, a4
403:              srai         ra, a3, 8
                  andi         a3, s5, -109
                  lui          s1, 383664
                  bge          gp, s9, 420f
                  xor          s0, s7, s4
408:              add          s2, t1, t5
                  srai         sp, s11, 23
                  bgeu         t5, t6, 417f
                  sub          s4, s7, t5
                  addi         s7, sp, 912
                  xor          s3, a7, s5
                  sltu         s5, s8, a2
                  or           a3, t6, t3
                  srli         a1, s7, 20
417:              sltu         s0, a7, a3
                  srai         tp, a6, 17
                  bgeu         a4, s1, 424f
420:              and          ra, a5, s1
                  srl          a5, s8, t0
                  srli         s7, a5, 19
                  sub          a1, a1, a7
424:              sub          a5, t2, s8
                  nop
                  bne          t2, gp, 443f
                  add          s9, a7, t0
                  sub          a5, a3, s4
                  slt          t1, s2, a1
                  addi         s0, s6, -1341
                  xori         s0, s9, -250
                  bgeu         a7, s6, 444f
                  lui          t4, 662648
                  slti         s9, t5, -1912
                  nop
                  xori         sp, t2, 634
                  auipc        tp, 564701
                  la           t5, region_1+222 #start riscv_load_store_rand_instr_stream_1
                  sb           s2, 273(t5)
                  sltiu        t1, ra, 183
                  ori          a7, t5, -608
                  sw           a3, 538(t5)
                  lb           a7, 921(t5)
                  xori         a7, a5, -374
                  lb           t4, 779(t5)
                  sb           ra, -132(t5)
                  srl          t2, sp, t2
                  lhu          s8, 1562(t5)
                  add          t1, s2, s1
                  xori         s6, s7, 1271
                  lbu          a3, 1125(t5)
                  lb           a5, 1524(t5)
                  lbu          t4, 1174(t5)
                  sb           t0, -129(t5)
                  slt          s7, sp, gp
                  lb           a7, 1305(t5)
                  xor          t3, sp, a0
                  srl          s8, ra, a5
                  lbu          zero, -174(t5)
                  sh           t6, 1052(t5)
                  and          s1, a3, s11
                  lhu          a7, 1378(t5)
                  sb           s3, 1228(t5)
                  lb           s9, 675(t5)
                  lbu          s10, 1373(t5)
                  sb           s6, 1498(t5)
                  sw           t1, 66(t5)
                  lbu          a7, 1116(t5)
                  slt          s7, a3, tp
                  auipc        s9, 133373
                  lb           s2, 923(t5)
                  sb           t2, 1559(t5)
                  lbu          t6, 1723(t5)
                  lb           tp, 647(t5)
                  lb           s9, 1435(t5) #end riscv_load_store_rand_instr_stream_1
                  and          s0, a0, s11
                  la           a7, region_1+161 #start riscv_load_store_hazard_instr_stream_5
                  lb           s4, 28(a7)
                  ori          s4, t1, 957
                  xor          t5, zero, t3
                  srl          s9, a7, s5
                  lbu          s0, 48(a7)
                  srli         a3, s10, 16
                  lb           s0, 24(a7)
                  sb           t5, 24(a7)
                  lbu          s5, 24(a7)
                  lb           t1, 24(a7)
                  lbu          s3, 23(a7)
                  lbu          t5, 63(a7)
                  addi         gp, gp, -953
                  slti         t1, a1, -1907
                  ori          a5, s7, -240
                  lbu          t4, 36(a7)
                  lb           s8, -4(a7)
                  lb           s3, -4(a7)
                  sb           ra, -43(a7)
                  lh           t2, 25(a7) #end riscv_load_store_hazard_instr_stream_5
                  bne          ra, a7, 449f
                  auipc        a6, 901462
                  xori         a2, a0, 629
                  bltu         t0, a1, 458f
443:              slli         tp, a7, 31
444:              sra          s5, t5, sp
                  add          t3, s0, s2
                  srai         s1, s4, 27
                  bgeu         s1, s9, 460f
                  bge          s8, a6, 464f
449:              blt          t4, s11, 469f
                  bgeu         a4, s9, 466f
                  slli         s7, s3, 2
                  sll          s5, gp, s7
                  auipc        t6, 97572
                  bne          t1, s7, 468f
                  bne          a3, a5, 463f
                  addi         s11, s3, -1487
                  slti         s5, s6, 923
458:              sltu         zero, s7, t6
                  slti         t1, t1, -1689
460:              bge          gp, tp, 479f
                  beq          a2, s10, 471f
                  lui          s1, 356569
463:              add          t5, s6, s0
464:              bne          s2, t4, 481f
                  nop
466:              xor          tp, s4, ra
                  sltu         s8, s6, t6
468:              srl          s2, a5, t5
469:              and          tp, gp, s7
                  bltu         a0, s10, 473f
471:              srli         s9, a2, 11
                  bne          tp, t5, 492f
473:              andi         a5, s9, 1749
                  sltiu        s4, s0, 1955
                  sltu         t6, s8, a5
                  lui          s7, 353279
                  sub          sp, s8, s10
                  sra          s0, t4, s1
479:              srl          s8, s11, s8
                  slt          t1, tp, a6
481:              sltiu        a2, t3, 1452
                  add          tp, a2, a4
                  nop
                  srli         sp, t5, 7
                  sra          sp, s0, s1
                  blt          sp, t5, 490f
                  sltu         a1, t4, a0
                  slti         s0, s5, -424
                  xori         s6, a0, 391
490:              srli         s2, s8, 27
                  addi         s0, s2, 1268
492:              srli         a1, tp, 18
                  sltu         gp, t4, s2
                  slli         zero, a5, 22
                  sltiu        ra, a1, 386
                  slt          s3, s6, t3
                  sltu         a7, s11, t5
                  lui          s7, 309226
                  bne          a5, t0, 513f
                  slti         sp, a1, 1184
                  beq          a0, s6, 520f
                  addi         ra, s10, 1720
                  bne          a1, s7, 513f
                  or           ra, a4, t4
                  bgeu         a3, s8, 518f
                  bltu         s1, s11, 525f
                  bgeu         s11, s1, 513f
                  slli         a1, s8, 19
                  add          a5, s6, s7
                  auipc        a1, 738015
                  slti         a3, s0, 1093
                  lui          a5, 588042
513:              bge          s6, a7, 523f
                  srai         gp, s1, 27
                  sub          t1, a3, s1
                  sra          t1, t4, s2
                  slti         s5, a3, 820
518:              bge          s9, a5, 521f
                  srai         s2, s11, 14
520:              sub          a1, s6, s3
521:              ori          zero, s9, 1188
                  ori          s0, s9, 1381
523:              bgeu         s8, t1, 531f
                  beq          s1, sp, 541f
525:              nop
                  lui          a2, 64902
                  and          s11, s11, a3
                  sltu         s6, a4, a4
                  bgeu         t3, a4, 537f
                  bltu         t6, s9, 546f
531:              sltu         a1, s8, a3
                  and          s8, s7, s6
                  blt          s3, s11, 541f
                  auipc        t3, 273217
                  blt          t1, gp, 548f
                  nop
537:              beq          a4, a1, 544f
                  lui          t3, 778518
                  addi         s7, a6, 780
                  slti         s11, a4, -1601
541:              sll          t6, zero, t6
                  slli         s4, t4, 0
                  addi         s1, s11, 1654
544:              lui          sp, 456922
                  andi         s0, s1, -679
546:              sll          a1, t6, s0
                  srli         sp, ra, 20
548:              sub          s9, a3, s10
                  sll          sp, t1, t3
                  slt          s3, t4, s3
                  auipc        a6, 670647
                  bgeu         s8, s2, 572f
                  blt          s8, s0, 566f
                  and          s4, tp, s0
                  or           s8, a3, zero
                  sll          sp, s5, s2
                  bgeu         t6, tp, 575f
                  slt          s2, s7, t0
                  slti         t4, s10, 354
                  bne          s4, zero, 571f
                  andi         s2, gp, -900
                  sltu         a1, ra, t4
                  lui          s5, 680892
                  addi         zero, a7, 309
                  bltu         a3, a2, 570f
566:              ori          s5, s9, -1270
                  slli         zero, a2, 30
                  ori          zero, s9, -1305
                  or           s0, t0, t2
570:              ori          a6, t4, 1994
571:              sll          s4, t3, s8
572:              sltu         t2, s5, a7
                  lui          s0, 883907
                  andi         s10, s5, -904
575:              slt          t3, ra, s5
                  lui          s10, 955325
                  sltiu        s0, s11, 1042
                  auipc        s1, 900083
                  slt          s5, ra, a1
                  sltiu        a6, s11, -1712
                  nop
                  bge          t1, a1, 599f
                  blt          a3, s11, 597f
                  add          s4, a2, s2
                  blt          s8, gp, 595f
                  xori         s2, t4, -636
                  xor          a7, s6, ra
                  nop
                  bne          a3, s8, 593f
                  beq          sp, t4, 606f
                  srli         ra, a7, 23
                  slt          ra, s1, s3
593:              bgeu         s3, s10, 605f
                  srli         sp, a3, 14
595:              blt          gp, a1, 612f
                  and          a2, s3, tp
597:              slli         s0, zero, 31
                  sltiu        tp, s1, 494
599:              nop
                  bltu         a5, t2, 616f
                  addi         a3, a6, -1943
                  xor          t1, a7, s2
                  add          sp, t3, gp
                  bge          t1, a6, 624f
605:              xori         s7, s0, 1859
606:              sltiu        s7, s7, -1608
                  lui          a7, 555496
                  xori         s4, s0, -1106
                  sltiu        sp, t5, -1866
                  srli         s10, a1, 14
                  srli         s5, a0, 12
612:              sltu         s11, t6, t1
                  lui          t4, 98617
                  bge          t2, zero, 621f
                  ori          s7, a6, -534
616:              bge          a3, s9, 635f
                  bne          sp, t0, 625f
                  and          s10, s4, a1
                  andi         s11, t0, -1064
                  beq          s8, s2, 636f
621:              bgeu         t1, t2, 628f
                  bltu         ra, s4, 635f
                  auipc        s8, 4891
624:              auipc        s1, 643813
625:              add          s7, sp, a4
                  slti         a6, t4, 1833
                  bltu         t3, sp, 635f
628:              srli         t6, t2, 14
                  and          a1, sp, t5
                  slli         s7, s0, 10
                  sltiu        t4, a2, 972
                  add          a3, t3, s11
                  bltu         t2, s6, 646f
                  slt          sp, zero, t1
635:              or           t1, gp, ra
636:              bltu         tp, s9, 654f
                  nop
                  blt          a1, t0, 655f
                  beq          zero, a4, 656f
                  slt          s2, s7, t6
                  slt          ra, a1, sp
                  addi         s6, t6, -1779
                  srli         gp, t4, 6
                  slli         t3, s0, 2
                  sll          s6, a1, a0
646:              bgeu         t5, s9, 662f
                  srl          s2, a4, s3
                  ori          s4, s8, 957
                  and          s6, a0, zero
                  addi         s10, s7, 1542
                  xor          s7, a7, tp
                  sltiu        s3, a7, -2045
                  srai         a3, s4, 26
654:              sltu         a1, s2, ra
655:              andi         t1, t5, -892
656:              or           s10, s5, s8
                  sltiu        s1, t4, 1744
                  srli         a6, s2, 16
                  addi         s5, t1, -1193
                  and          a6, zero, t2
                  bgeu         t1, s10, 667f
662:              srl          t1, s2, s9
                  sltiu        a2, s4, 2025
                  slt          s2, a4, s0
                  lui          s0, 277608
                  bgeu         zero, zero, 679f
667:              bge          zero, a3, 681f
                  and          s0, t4, sp
                  addi         s10, s6, 290
                  add          a3, a6, s6
                  bgeu         t4, s2, 691f
                  xori         zero, s3, -436
                  bgeu         s9, s6, 683f
                  bgeu         a7, a4, 686f
                  andi         a2, a0, -684
                  andi         s0, s10, -1044
                  sltu         t5, s2, tp
                  slti         t1, t1, 1496
679:              lui          a7, 934181
                  xor          s10, gp, s3
681:              srli         s5, t2, 28
                  sltu         gp, gp, s6
683:              slli         t5, t6, 5
                  lui          s10, 94253
                  lui          t3, 262259
686:              bgeu         t6, a7, 706f
                  bne          a4, s6, 703f
                  srli         s8, a7, 4
                  xori         zero, sp, -1792
                  xori         s2, s10, -652
691:              or           zero, t2, t4
                  lui          a6, 391647
                  slt          s5, s7, s10
                  slli         t3, a2, 19
                  bne          t0, s8, 705f
                  srai         a3, zero, 1
                  srai         s2, s0, 25
                  bgeu         a0, a7, 705f
                  sra          s11, t0, s8
                  sltu         t5, s2, t0
                  slti         a2, t3, -1456
                  or           zero, t5, a7
703:              slti         a6, ra, -481
                  sltiu        s2, a2, 1914
705:              srli         t2, a0, 30
706:              nop
                  auipc        t2, 425370
                  auipc        a2, 57177
                  slti         a6, t4, 1959
                  bltu         t2, t1, 715f
                  nop
                  sub          s3, zero, t3
                  sub          t3, s8, s0
                  sub          s6, a4, gp
715:              srli         t3, t2, 12
                  addi         a6, t2, -149
                  lui          tp, 68183
                  sra          s5, a5, t2
                  blt          a0, s10, 723f
                  bne          a3, a6, 730f
                  nop
                  xori         s6, a3, -20
723:              beq          s2, s1, 737f
                  xori         t6, s10, -1892
                  slli         t4, a2, 0
                  sra          t1, s0, sp
                  bge          a7, ra, 746f
                  auipc        a6, 350784
                  sltu         s10, a7, sp
730:              slt          s11, t0, s11
                  slti         t2, s2, -813
                  sub          s4, t2, a3
                  andi         s5, s9, -1450
                  srli         s10, a3, 3
                  andi         a1, t2, -2029
                  andi         a7, s0, -1723
737:              bgeu         s10, s8, 748f
                  srl          s5, zero, a3
                  sra          t1, s10, s9
                  srl          s4, s5, t6
                  ori          tp, sp, 1630
                  srai         s10, s0, 15
                  sub          t1, a4, s1
                  ori          a2, ra, -856
                  sltiu        t3, s2, -1357
746:              addi         s0, s3, 590
                  sltiu        s1, a1, -1416
748:              sll          a1, s0, s7
                  xori         s6, a5, 328
                  sub          s4, t2, ra
                  sra          a1, a6, a6
                  lui          s7, 564855
                  slti         ra, gp, 1730
                  sra          s11, a5, a7
                  andi         t2, t2, 205
                  add          s1, s6, a1
                  xor          ra, s6, s1
                  sra          t4, t2, ra
                  srai         t1, s7, 20
                  bge          a4, s7, 768f
                  and          s5, a0, a1
                  and          s4, s3, a0
                  srai         s1, sp, 21
                  srai         a7, tp, 26
                  bgeu         t5, s0, 782f
                  sll          zero, t1, t2
                  addi         a5, s11, 1908
768:              andi         tp, gp, -1058
                  andi         zero, a7, 458
                  slli         s6, t3, 8
                  srli         ra, t0, 13
                  ori          zero, t3, 897
                  sltu         a2, zero, s5
                  bltu         s6, s5, 777f
                  beq          s8, t5, 786f
                  sltiu        s2, s11, -620
777:              xori         s3, t4, -586
                  bne          t3, s0, 786f
                  lui          s0, 358857
                  slti         s3, a1, 1036
                  auipc        a3, 516736
782:              srli         s11, a1, 1
                  nop
                  beq          s0, s11, 786f
                  and          t2, s7, s4
786:              slt          a3, s8, t6
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            add          a3, t5, t2
                  slt          s10, s3, t1
                  add          a3, s5, t3
                  xori         tp, tp, -1103
                  srai         t1, t6, 3
                  bgeu         a2, s0, sub_1_stack_p
                  lui          a6, 592664
                  sll          a6, s1, s1
sub_1_stack_p:    addi         a0, a0, -40
                  sw           s7, 4(a0)
                  ori          a6, s5, 404
                  sll          t3, s1, a1
                  la           t6, sub_2
                  sltiu        s9, s7, 145
                  addi         t6, t6, 451
                  addi         t5, ra, -1978
                  ori          gp, s11, -318
                  andi         a1, t5, -430
                  bltu         a1, t6, sub_1_j2 #branch to jump instr
                  addi         gp, t4, -2030
                  xori         s6, t4, 1971
                  sub          s4, t0, tp
sub_1_j2:         jalr         s7, t6, -451 #jump sub_1 -> sub_2
                  srl          a2, t6, a0
                  blt          s7, s0, 14f
                  sltiu        s11, tp, 666
                  and          a3, s7, a3
                  blt          s9, s7, 14f
                  sltu         t1, a5, sp
                  xor          a6, a2, gp
                  auipc        gp, 279554
                  bltu         gp, sp, 13f
                  sltiu        s1, zero, 613
                  sltu         t6, a0, a3
                  slt          ra, a0, a5
                  sltiu        t2, s2, -719
13:               sll          a3, ra, a0
14:               auipc        t2, 1019393
                  srli         s8, a0, 1
                  lw           s7, 4(a0)
                  addi         a0, a0, 40
                  andi         t4, t1, -1615
                  sub          s10, a5, s8
                  xor          sp, zero, a4
                  nop
45:               addi x9, x23, 1
45:               jalr x9, x9, 0
sub_2:            and          t4, t3, gp
                  slt          a1, t1, ra
                  sra          zero, a5, sp
                  bne          tp, t6, sub_2_stack_p
sub_2_stack_p:    addi         a0, a0, -56
                  sw           s7, 4(a0)
                  auipc        s0, 86808
                  lui          s3, 427950
                  sub          s5, t3, sp
                  la           s11, region_1+1002 #start riscv_load_store_rand_instr_stream_0
                  nop
                  lbu          t6, -43(s11)
                  sltu         s5, s3, s3
                  lbu          s4, 229(s11)
                  srl          a6, t5, s1
                  lh           t5, 66(s11)
                  lbu          s1, -138(s11)
                  ori          s5, s11, -150
                  slti         s0, a0, -1837
                  sltiu        t5, s0, 1
                  lbu          t2, -119(s11)
                  sb           a6, 119(s11)
                  srai         t6, tp, 18
                  sltiu        sp, ra, 576
                  andi         s9, s4, 1297
                  lb           t1, -111(s11)
                  lh           s10, -10(s11)
                  lbu          t3, 155(s11)
                  sb           s5, 127(s11)
                  srai         a7, s4, 25
                  sh           a0, -164(s11)
                  or           t6, t5, s0
                  lhu          sp, -100(s11)
                  sb           t0, 73(s11)
                  lbu          s1, -206(s11)
                  sb           s5, -51(s11)
                  sh           s5, 192(s11)
                  slli         t5, a0, 7
                  sb           s0, 212(s11)
                  lhu          a1, -46(s11)
                  lbu          a2, 245(s11)
                  lb           sp, 159(s11)
                  sb           gp, 17(s11)
                  nop
                  sltu         zero, tp, t6
                  lh           s8, -92(s11)
                  sw           a2, -42(s11)
                  lhu          t3, -222(s11) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+718 #start riscv_load_store_hazard_instr_stream_0
                  lbu          tp, -200(sp)
                  sh           s9, 168(sp)
                  lbu          s0, 53(sp)
                  sb           a2, -167(sp)
                  lb           zero, -208(sp)
                  lw           s8, 118(sp)
                  sb           t4, 53(sp)
                  lbu          t1, 53(sp)
                  sb           a3, -253(sp)
                  sw           s4, -146(sp)
                  addi         zero, s1, 956
                  sb           t4, 77(sp)
                  and          t5, a7, a6
                  lb           t1, 157(sp)
                  lb           t2, 195(sp)
                  lbu          a5, -13(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t2, region_0+476 #start load_store_instr_stream_1
                  la           s11, region_0+267 #start load_store_instr_stream_0
                  sb           a6, -49(t2)
                  lh           s7, -19(s11)
                  lhu          a3, -100(t2)
                  sh           t1, 86(t2)
                  lbu          s3, -48(s11)
                  lh           t6, 142(t2)
                  sb           t5, -24(t2)
                  lb           s5, 53(s11)
                  lh           t3, 50(t2)
                  sh           s4, -3(s11)
                  lbu          a3, -53(t2)
                  sb           s3, -18(t2)
                  lbu          s6, 239(t2)
                  lb           tp, 10(s11)
                  sb           a2, 12(s11)
                  sb           s0, -22(s11)
                  sb           s6, 13(s11)
                  lb           t5, -59(t2) #end load_store_instr_stream_1
                  sb           ra, 50(s11) #end load_store_instr_stream_0
                  slt          s5, a4, tp
                  add          s9, s11, t4
                  sltiu        gp, s5, 1038
                  slt          s8, s9, s8
                  addi         s7, sp, 609
                  andi         s10, s1, 260
                  and          t2, t1, a3
                  sll          s10, s9, s2
                  and          s3, a2, t0
                  beq          s0, a2, 28f
                  blt          a4, s5, 26f
                  beq          t0, a5, 21f
                  srai         s9, a3, 1
                  xori         t2, gp, 1259
                  auipc        t6, 844467
                  srai         s2, a4, 9
                  bgeu         a2, a5, 30f
                  slli         gp, gp, 10
                  srl          s7, sp, a4
                  sll          t1, t4, s7
                  auipc        t6, 160161
21:               sra          s2, s3, s1
                  bne          a5, a3, 37f
                  bgeu         t1, s6, 31f
                  add          ra, s6, t3
                  xor          t1, t2, s11
26:               sll          a6, s6, tp
                  auipc        t3, 606489
28:               bne          tp, a4, 43f
                  andi         s3, s10, 746
30:               bltu         t5, s1, 34f
31:               bge          s10, a1, 43f
                  bgeu         s10, s3, 50f
                  beq          a7, a7, 53f
34:               add          s1, a4, s6
                  xor          tp, a5, t0
                  bne          tp, ra, 49f
37:               sltiu        s0, s6, 425
                  beq          sp, a1, 45f
                  slli         t4, gp, 16
                  andi         a3, s8, -410
                  addi         s3, gp, 1152
                  bltu         s4, t1, 56f
43:               add          s2, s5, a5
                  xor          t4, s2, t4
45:               sll          ra, s10, zero
                  sltu         s5, s5, s4
                  andi         tp, s0, -37
                  srli         t5, zero, 16
49:               addi         sp, a7, 1544
50:               lui          t5, 253399
                  xor          s9, t6, s2
                  and          s10, s5, t3
53:               slti         s3, s6, 607
                  sra          s9, t5, t5
                  srl          a3, t2, t6
56:               beq          t5, zero, 68f
                  sll          t2, s2, s0
                  andi         s1, s8, -175
                  xor          s11, s9, t1
                  blt          t3, zero, 79f
                  ori          t2, s6, 86
                  and          t3, s9, a6
                  add          s5, a3, tp
                  auipc        zero, 761200
                  nop
                  add          t3, t1, s9
                  sll          s5, a4, s1
68:               xor          tp, t5, tp
                  or           s7, ra, t2
                  srai         sp, a2, 18
                  bne          s3, t6, 79f
                  bne          a1, t6, 83f
                  add          a1, s7, sp
                  ori          a1, a6, 1244
                  xor          a6, sp, a0
                  or           sp, gp, sp
                  sltu         zero, s5, s10
                  sra          t3, a7, a6
79:               beq          a1, t5, 85f
                  and          s10, s8, a2
                  andi         a1, s1, 554
                  nop
83:               slt          t6, s11, s9
                  srli         sp, s5, 24
85:               andi         s2, a1, 406
                  sltu         s3, a5, t6
                  blt          t5, t0, 88f
88:               auipc        s0, 997127
                  lui          t2, 361859
                  bne          a4, s7, 92f
                  bltu         t3, s3, 96f
92:               xori         t4, t5, -537
                  nop
                  andi         tp, s7, 278
                  auipc        s11, 255353
96:               or           ra, a7, t1
                  addi         s0, s8, -1975
                  sltu         s11, s6, s11
                  sub          t3, a4, a5
                  sra          s5, t3, s10
                  add          s10, s7, s11
                  beq          t1, s6, 119f
                  srai         s0, s11, 9
                  slt          s0, t6, sp
                  srl          a5, s11, t4
                  slt          s8, t0, a6
                  bltu         zero, a0, 119f
                  xori         s1, t0, 1401
                  bge          a2, sp, 117f
                  srli         s7, s7, 7
                  sltu         a2, ra, s4
                  sltu         s0, s9, a3
                  bltu         s10, ra, 133f
                  sra          s10, s4, a3
                  sub          s5, t5, t5
                  auipc        t6, 531569
117:              add          s11, gp, s7
                  sll          a6, s10, s4
119:              or           a3, s7, t3
                  andi         t3, zero, 1429
                  or           s4, a7, a7
                  blt          a4, a0, 132f
                  sra          s6, s6, t0
                  slli         a3, a6, 25
                  slt          t4, t1, a7
                  srai         s4, s9, 1
                  sra          ra, zero, a0
                  xor          a3, t6, gp
                  srl          s4, a6, a1
                  andi         t4, a7, 1220
                  srl          a2, a1, s6
132:              sra          sp, s2, s2
133:              addi         s8, s1, -1861
                  ori          a2, sp, 91
                  sltiu        s3, t5, 889
                  add          a2, tp, tp
                  bne          s7, a4, 152f
                  slti         zero, t1, 748
                  slli         s10, s11, 23
                  slli         a5, tp, 25
                  add          s9, s6, tp
                  add          a7, s1, tp
                  sra          s10, a1, a7
                  or           s9, s0, a3
                  xor          t5, s4, tp
                  sra          ra, s9, t5
                  lui          a1, 43981
                  xori         a5, zero, 1876
                  bne          ra, s1, 164f
                  add          t3, s5, s10
                  srli         t6, tp, 15
152:              xor          a1, zero, t4
                  nop
                  srl          gp, s10, t6
                  slt          a2, s10, s3
                  slt          s0, s6, a0
                  srai         a2, t6, 29
                  addi         zero, s9, 68
                  sltu         tp, s1, s4
                  bne          tp, s9, 179f
                  bne          a2, a7, 178f
                  sub          a6, gp, t2
                  sltiu        t2, sp, -959
164:              srai         ra, s3, 26
                  auipc        a3, 699045
                  or           s6, t5, s8
                  bne          ra, s11, 178f
                  xori         s1, s1, -63
                  add          t6, sp, t3
                  srli         a7, s9, 16
                  srli         t1, a4, 23
                  xori         t5, a5, -180
                  srl          t3, gp, t5
                  sll          s9, t3, t2
                  bgeu         a2, a3, 194f
                  add          t5, s8, s5
                  and          s11, t3, s0
178:              bgeu         s6, s6, 180f
179:              srli         s7, s3, 25
180:              slt          t5, t6, t1
                  ori          t2, s1, -1163
                  blt          t1, t1, 194f
                  srl          t3, sp, t0
                  lui          zero, 726770
                  sltu         a3, s0, s3
                  srli         s3, s11, 31
                  bgeu         t0, t1, 195f
                  nop
                  addi         s1, s6, -2018
                  sltiu        s3, s1, 1525
                  blt          s0, t4, 196f
                  auipc        s4, 1017221
                  xor          t4, a6, a2
194:              bgeu         gp, t6, 196f
195:              sub          s11, s6, t6
196:              lui          s5, 310545
                  sub          a1, tp, s10
                  lw           s7, 4(a0)
                  addi         a0, a0, 56
                  nop
                  srai         t3, s7, 12
288:              addi x6, x23, 1
288:              jalr x6, x6, 0
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
.word 0x6c85fc52, 0x33c5b79c, 0xb5bf6f24, 0x694dda75, 0x18a5d2d5, 0x621244f3, 0x6bf86c2f, 0xd64a0b22
.word 0x7e5c4ca7, 0x956e9f39, 0x36140796, 0x8acf83c0, 0x3ca713a2, 0xdaac8e21, 0x9cfdaa91, 0xd7435477
.word 0x40036061, 0x060007e4, 0x156f2b97, 0xaa750f26, 0xce6dcf46, 0x56071324, 0xa6d7b55d, 0xbac06684
.word 0x01c1cad8, 0x952967d5, 0x5fa06c42, 0x6256a5d4, 0x8e0ca54b, 0x32acbad4, 0xc03ead46, 0xe89b8831
.word 0x44e0abd6, 0x39bc7c4e, 0x85d93eec, 0x1e730c69, 0x65ac229c, 0xfe7f0782, 0x21a9043c, 0x60b508cd
.word 0x66a5099f, 0xdae3ddb6, 0x92b1808b, 0xa261d0fa, 0xd3e3d895, 0xb666ba59, 0x159b6f04, 0x72d3c8d4
.word 0x8ace14c0, 0xd760f744, 0xc0481647, 0xc77abb9e, 0x4125efb7, 0x58fb4dd4, 0x2bf9e9c9, 0xd9187d99
.word 0x2d368563, 0x443eb9f0, 0x25042bb9, 0x862217ee, 0xc4abf451, 0xdec53813, 0x83921cfe, 0xc83a157b
.word 0xef42409a, 0x422f9d5f, 0xce9ab0b2, 0xa222a9f1, 0x342d249e, 0x2f9df23d, 0xc208d18d, 0xadc0a838
.word 0xe5d638fd, 0x35a2a94f, 0xef4753df, 0xaacf30b4, 0x3fc35981, 0xb395d64c, 0xb0b0cde5, 0x7db81f11
.word 0xa3155526, 0x2181d0ab, 0x45dce3e7, 0x60d79c50, 0x60cfcc1f, 0x335e84a7, 0x18459c26, 0xf0be925e
.word 0xdf5530d4, 0x40fe1fc0, 0xeb1eedb3, 0xbdedd3d0, 0x7e386261, 0xedbe1d47, 0x660781ad, 0xfbdc0629
.word 0x3e0f7e4b, 0x97d67dbd, 0x6a865be4, 0x5db7d3c6, 0x2ca05a53, 0xf0edee43, 0x4a61b8a0, 0x96877dd6
.word 0x58c44267, 0x6e00c43a, 0x742d8d86, 0x075943ae, 0x09154184, 0xec1c2665, 0x4dcbb907, 0x21709da2
.word 0x107f055d, 0x5aa7b7bb, 0x7abe9fd2, 0xadd69579, 0x29d4b8be, 0x271a703b, 0xe62d4d0b, 0x6c981955
.word 0x89c888a0, 0x3a0e34bd, 0xaf43d82e, 0x062cf13c, 0x84953a94, 0xccaee687, 0xbf0a5f59, 0x5a625653
.word 0x1aa0c664, 0xe0df87e3, 0xee62520f, 0x0424ecfa, 0xef95758e, 0xfa33d4fe, 0x6d90d6b0, 0x9a5e45b5
.word 0x9dbde7a4, 0xc9bf89ac, 0x373bc9a2, 0x851c6fb4, 0x68044e86, 0x191c5e49, 0xdaa012b5, 0x23bde921
.word 0x265675d4, 0xc13f22f8, 0x3bf959c8, 0x052669b1, 0x664a3206, 0x57feaa01, 0xeebcae3f, 0x004d6487
.word 0x8f0d62c8, 0x0460ce6b, 0x63700565, 0x3fc983c1, 0x016cb6d4, 0x6169080a, 0xbf25ecff, 0x5aef77fd
.word 0x89f976b2, 0x93f50004, 0x0bd10b3c, 0x66ea7de1, 0xeb7a1355, 0x8e90b58b, 0x7fdf9aa8, 0xb5311166
.word 0x799ea994, 0x4b9fe7a4, 0xd3507be6, 0xedbcaef3, 0xa8ee8a67, 0x3fd8b82c, 0x74829814, 0x07bc107a
.word 0x0fa554ef, 0xf80c8a0e, 0x45a592fe, 0x84e0a195, 0xd61418e9, 0x79ab28ec, 0x57e60b7e, 0xaca881dd
.word 0x28620675, 0x1a01511b, 0xe611f13a, 0x6a8f1eeb, 0x4e9a6e8c, 0xb11a2deb, 0xc68f031f, 0x3d5354f8
.word 0x32f505aa, 0xba0722d9, 0xd08f7044, 0x84032c7a, 0x262a8374, 0x602b450b, 0xe276535a, 0x32a6baad
.word 0xc7e1097d, 0xda2aafc0, 0x77c0e05e, 0x4c1b8c45, 0xaa42be26, 0xd7f48a7a, 0xed233199, 0xd85214f6
.word 0xa42d55c2, 0x104420e3, 0x7d76cee3, 0xc1c3b958, 0x80f2f768, 0xdcb6e520, 0x3e2bee90, 0x16a9b2d0
.word 0x737f1a39, 0x141da883, 0x0680dbd5, 0x085657c5, 0xd113202e, 0x510b71c3, 0x2aa91bec, 0xb1196543
.word 0x6210f01c, 0x66f4ee61, 0x0e1a12c6, 0x22d88187, 0x1d06d10d, 0xaaf5ad90, 0xf1f71caa, 0x0ddb7a5c
.word 0x1a6f3a0b, 0x3734c86c, 0x407886e2, 0xf70ebd28, 0x0c1a3a62, 0x536203d1, 0x0904fd0a, 0x0dfb7c3c
.word 0xa61b84b2, 0x9f519d74, 0x626f92b3, 0xd644f52d, 0x1c5a31bf, 0x57dda839, 0x17059dba, 0x005d96ee
.word 0x3889abcb, 0x2932013e, 0x604706bd, 0x5b4d3e00, 0xf4769886, 0x61ecd0d6, 0x8eadd6ab, 0x03f50d34
.word 0x0f5e3ca2, 0xc97ddbec, 0x67dd3e0d, 0xd7702fd4, 0x2fb3a09d, 0xe921157d, 0xf888bd02, 0x7239c5ba
.word 0xf96ada85, 0xf645710e, 0xf590cad6, 0x270e708f, 0xd7bdf1b9, 0x036f6f63, 0x022f842b, 0x7d708cf0
.word 0x364fcca2, 0xad32cc2f, 0xdc8d71dc, 0x2bf11435, 0xb66c9126, 0x7a73544d, 0x33af67a6, 0xd76727f2
.word 0xe2be0e24, 0x49a69326, 0xff6ae8f7, 0xe7a8bf16, 0xbe78aed7, 0x25549efa, 0x7a9f7bcc, 0xd535ae50
.word 0x5d481681, 0x0c469fa3, 0xdccb8193, 0x4f193cf7, 0x80809322, 0x11ef65d5, 0x9486706b, 0xbbdffb19
.word 0x935eabfc, 0xafb05221, 0x98f5306e, 0xedf0f519, 0x93a9dfa3, 0x2d70b37e, 0x0ea74574, 0x655275b2
.word 0x28a52aaa, 0x94d98aa2, 0x7d895ed0, 0x297e13cb, 0x9dd192f4, 0x34c25188, 0xf14db236, 0x3fa3808e
.word 0x9058d5c3, 0xf738a5b6, 0x0af5da56, 0x38fefc1f, 0x578f1743, 0x826b44a3, 0x0fe3819e, 0xeddc1984
.word 0x0ca55f08, 0xdf54e484, 0x7e32eb98, 0xa77d8b25, 0x6231fbc8, 0xfcccd175, 0xf6ea3896, 0x30efb1de
.word 0x43a61fc9, 0x4fbed8cc, 0xce9d2e4c, 0xcc227758, 0x38728374, 0xa8d830e3, 0x4aeafbab, 0x665b0542
.word 0xc23aace0, 0x50586401, 0xdd10321d, 0x94dfb722, 0x062e4f27, 0xdf841bed, 0xe5de4ef9, 0xb55f14b5
.word 0x71c69a0a, 0xbce7e42e, 0x8d762682, 0x0a0fb6f3, 0x86e1c6e5, 0xaac54070, 0xa84e3fdb, 0xcd9b6b23
.word 0xca9d7389, 0x0855405d, 0x5da52615, 0x1a4d589a, 0x4b1bd4ad, 0xf2bce9f0, 0xe23b199d, 0xb317b95d
.word 0x155d00ee, 0xc4339059, 0xaf274382, 0x135f0544, 0x7ca0d683, 0x34fcada6, 0x37704361, 0x9c84bad9
.word 0x65e878de, 0x07749851, 0x3271749d, 0x30bfb451, 0x6066b69d, 0x79485998, 0x424e6a93, 0x6fcfd2b0
.word 0x25772c43, 0x5cc56784, 0x617d5231, 0xa4a72704, 0x6ea9ff47, 0xa36138a0, 0xe64c9d18, 0x84b81565
.word 0x9578368e, 0xe98f3370, 0x5b68635f, 0x56b8b264, 0x56fa9bf5, 0x570d0943, 0x23432d84, 0x27556b55
.word 0x7606ab6c, 0x46bc7f3f, 0x071f7d5a, 0x474e9593, 0x76f6419d, 0x3d4b74fb, 0x6728f661, 0x6340d8b4
.word 0x417c99ee, 0x986b8f1d, 0x1713c140, 0x34ae8a7e, 0xfcc76140, 0x9a29a7d5, 0xba3317bd, 0x1c2eca27
.word 0xaebfc158, 0x8eedd9de, 0xc4302994, 0x907897fe, 0x4eec26f0, 0x7ca8f180, 0x3ce497b0, 0x70417adc
.word 0x1722b763, 0xf5e7442e, 0x1b31a44f, 0x938e4151, 0xfc079c83, 0xfcac3b0a, 0x66e96573, 0x78d4ea03
.word 0x584a8a1f, 0x277abfdd, 0x722b50bb, 0x9ed9d894, 0x37dd9530, 0x2626179f, 0x8e708560, 0x9062e665
.word 0x39ad8e81, 0x909d58f4, 0x2605a5da, 0xc8ff532e, 0x12670903, 0xdf5f8d83, 0x1bb7225d, 0xa568c2dc
.word 0x97a873aa, 0x55b82b06, 0xb97f4651, 0x9a75e7d7, 0x7bece9e5, 0xf918f9f2, 0xeaaa707d, 0x099fe397
.word 0xe1a46a9f, 0x48758ce1, 0x7c7ba8f7, 0x0e91fa2a, 0x903b6060, 0x5b2928e4, 0x1e61ba49, 0x26d3d950
.word 0x3f0f80f3, 0xb33fc6c9, 0xba343014, 0xb6c1548e, 0x7b230cd5, 0x39380f7a, 0x95cfaf82, 0xb23b461e
.word 0x3e9dc175, 0xe85d584b, 0xba3a4396, 0xd82e046b, 0xafcb89ff, 0xb9375cb4, 0x537542de, 0x2082cf59
.word 0x5e37247a, 0xde8a65f2, 0xf7a918d2, 0x97346b14, 0x245dfdd9, 0x4266632a, 0x3f0b13bb, 0x4f280a2c
.word 0x9f2da616, 0x1b8d5a66, 0x9cfb69d6, 0x56aa2738, 0x30f9fd82, 0x0e36813e, 0x72d03d20, 0x83ec3865
.word 0x6865a95f, 0x40afd2a8, 0x936dbfaf, 0x2f82aaa3, 0x6d7aade3, 0x51c54f06, 0x050056ce, 0x2ef2cbfb
.word 0x1b75247c, 0x51517ca0, 0xf2601d61, 0x33fe05bd
.section .region_1,"aw",@progbits;
region_1:
.word 0x2e8bec7b, 0x887c1494, 0x3dbba2cc, 0xa39f7177, 0x7dbe0b42, 0x00da9008, 0x313995d5, 0x3b19cb1a
.word 0x1426d820, 0xf038a0ce, 0x79a74ad4, 0x1350482d, 0x6ae46c6d, 0xb58d619e, 0xc77b9629, 0xd1947c17
.word 0x6c218c74, 0x92f6562d, 0x649b5c91, 0xed36d2b0, 0x82ebc1ff, 0x7d180473, 0x0a864703, 0xf7b52f56
.word 0x5282196f, 0x357c30d5, 0x3d75e0ec, 0x2c63df72, 0x1b208c50, 0x6151fb94, 0x86ff5ad1, 0x478cea10
.word 0xe6a0b7ed, 0xc914f713, 0x646ad9ba, 0xe6f2832d, 0xaa779336, 0x11c70ecf, 0x8096988e, 0x23f53005
.word 0xca6293f8, 0x0780c1e0, 0x77d8edbc, 0xe7955b94, 0x26e58517, 0x8d73e872, 0x4c37d11d, 0xcf45ab29
.word 0xfa9c4c89, 0xfc448c98, 0x52a2d0d3, 0x648ecd4a, 0x68b6d8d9, 0x5e999335, 0x5ec5f18b, 0xe20be67f
.word 0x41d5d11a, 0x6d441871, 0xe349e5cf, 0xe1480832, 0xf036940f, 0xef817db1, 0xf1d59366, 0x8be5e6cd
.word 0xedef3a42, 0x0618b515, 0x13c06f78, 0x31df33ff, 0x5494ac8a, 0xe89be2f4, 0x9da2a943, 0xaa97bf09
.word 0x396aaa24, 0x309bcfd0, 0x9d83b83c, 0x1a8cae0e, 0xdee2869a, 0x6ef423f3, 0x380fdffb, 0x7e5cc25b
.word 0x6fe67ae7, 0xbd6fdfd1, 0x7b5d4af2, 0x88ddebe6, 0xbe726a8c, 0xf322f6a1, 0x1b7b9ad6, 0x2b43f8c0
.word 0xd9c065fc, 0xa33d6f0e, 0xfe65d2e2, 0x5f360cf3, 0x4760d571, 0x69a284a2, 0xd7ad83d0, 0xd588d446
.word 0x1ea39fbc, 0x2b5d5733, 0xc8b1550d, 0xee9fc734, 0x603a1885, 0x5fedd104, 0x825f455f, 0x1632acda
.word 0xb2f09fa0, 0xd240bbe8, 0x0adb5770, 0x9dce73e3, 0x7344375e, 0x7aedbd89, 0x01053d00, 0x0e546e71
.word 0x5289d512, 0x97a11242, 0x88eb80af, 0xad8e6f85, 0x4d0622d8, 0x8478fc92, 0x5fa2ae97, 0x8ae69ce0
.word 0xb061310a, 0xb8e9b0d2, 0x8c124e42, 0x11eacbd2, 0x9240e313, 0xe17e4915, 0x4b289b5c, 0x338483c7
.word 0x43a371e8, 0x3b97a6b4, 0x4faf7805, 0x6b19424a, 0xc19dcda1, 0x66774ed4, 0x518460a8, 0xed9bb7ac
.word 0xae0b1265, 0x8b6526a9, 0x168dd7be, 0x3e559c1b, 0xe8672578, 0x19e65f96, 0x3bdb1e6f, 0xd8532464
.word 0xbeeae200, 0xffd219f1, 0xd0d8a6d3, 0xf93181ad, 0x9c794670, 0x07cc1524, 0x40ccad17, 0xf46d69ad
.word 0xb6597165, 0x6d49a123, 0x31f48207, 0xa9bda357, 0xea3ec772, 0x15b30844, 0x7d665d24, 0x06a0c9fb
.word 0xb15d9771, 0xa51218de, 0x6621de88, 0x03ccf651, 0x46a0f837, 0xbea3c5e1, 0x2aea03e9, 0xff1bbb9c
.word 0x871d26a0, 0x02339e64, 0xb8d011c5, 0x0e97850c, 0xa8877228, 0x2a02a7f2, 0x70e6f62b, 0x9fb1f7f6
.word 0x22cb22bc, 0x21c1c2ef, 0x4102397b, 0x21006df1, 0xdaafdd0b, 0x33d47d85, 0xb327e38d, 0x5d898fbb
.word 0x8672c66a, 0x7014fcd1, 0x85865485, 0xec379013, 0xaeb56cd7, 0x4e573802, 0x0df7f7a8, 0x72d7cc12
.word 0x84d81817, 0x5fbf9067, 0x6f7c8996, 0x768b4ab5, 0xa2ed0e9a, 0x392935e9, 0x508fcfbb, 0xc5fca5c5
.word 0xc5d948d7, 0xbf1f6d66, 0xa0e2d57e, 0x03a71413, 0x0b3df188, 0x0f71a18f, 0xbf0f8c25, 0x8759cb4d
.word 0x400b7b65, 0xd52617e6, 0x180988ff, 0x5bcf47bc, 0x3fec8005, 0x2b97e5dd, 0x8f964a3c, 0xfc0b7858
.word 0x5dd2e94a, 0x2a685712, 0xec93c3c0, 0xf3cae37e, 0x66793383, 0x1d063212, 0xf6a617ee, 0x023fcc19
.word 0xcb2a9796, 0x3868e5fa, 0xba7ea0b0, 0x1a7c9c10, 0x6c4bd749, 0xa2b69ab9, 0x05890fcf, 0xc2ec35ec
.word 0xc57146bc, 0x5aa29798, 0x09b0dbf6, 0xb774ec39, 0x7305122b, 0x9d2d9dc2, 0x6e6465dc, 0x7c274cfa
.word 0xf06621de, 0x5501bc0b, 0xf8f631f8, 0x447860a5, 0x7df1e8e7, 0xd490d314, 0x16a3a921, 0x3d91d739
.word 0xe4e789fb, 0xb0fa006b, 0x6ad78762, 0xbfe89fdd, 0xed590cf9, 0x5232eb8e, 0x7d0c24a9, 0x11372e48
.word 0x401b6cd4, 0x61702714, 0x7b62c72c, 0x5ba8ea87, 0x9fe22e20, 0xe997e5b2, 0x85b5e181, 0xd4f2b035
.word 0x9325eaa6, 0x0a48ecbd, 0xea8476c8, 0x69c32343, 0xeb9027a0, 0x54860d9b, 0x01e19a78, 0xe8531025
.word 0x447d1814, 0xafb5d94c, 0xc09654f2, 0xdb6beac6, 0xe69adaeb, 0xf50e9376, 0xb40d4de6, 0x031e606c
.word 0x33511956, 0x3ed1082e, 0xdead80b7, 0x5cb8f779, 0x2deffae0, 0xb2f11409, 0xcc634180, 0x7ec742df
.word 0x55c56322, 0x51338204, 0x083f449e, 0x853e0c78, 0x91624f7f, 0x94ea5c85, 0xe75ced63, 0xc149aae9
.word 0xe2cb0f90, 0x5bf46b7c, 0xfbcca200, 0x51f788f5, 0xa5a645cc, 0xc53511f4, 0x95c6a9fa, 0x66a80b22
.word 0x684c395b, 0xe7cb1247, 0x002b9fe5, 0xf2b6a6bc, 0xebe99aa3, 0xc96cf8fc, 0xbe853d41, 0x7002a1bf
.word 0x24fc130c, 0x415417d8, 0x7573b78f, 0x80f43806, 0x6a5f37bc, 0xa58b1a42, 0xdf2fb52d, 0x88d4f928
.word 0xfcc10f64, 0x46e8d2af, 0xc03741c5, 0x603b0a56, 0xb4d71f23, 0x1cb4d11f, 0xc3574df6, 0x1ff5cba9
.word 0xd46f930e, 0x0655d66b, 0x21d8da95, 0x990557ec, 0xacb6a209, 0x88db6770, 0x25ff6d3f, 0xb7ed7b6f
.word 0xc807b354, 0xf4f3a1aa, 0x6584ec3a, 0x5718836b, 0x9dddff04, 0xd2b5f597, 0xe7c0042b, 0x5a63da5e
.word 0xc42f9387, 0xba8bab59, 0x4858ec1b, 0x5b93d05e, 0x8d266585, 0xbc0454df, 0x8892b1aa, 0xdd15e3ba
.word 0xab10f96f, 0x4c146cfc, 0x8bcb4774, 0xd453c630, 0x5f0e6d43, 0x1eafa07a, 0xd0041f58, 0xf1de45a2
.word 0x0750dc3c, 0xc24c3bd0, 0x97707dd2, 0xf2e78174, 0xae91cfdb, 0x4fb4a03d, 0xce7c6a85, 0x0ea022d3
.word 0x6ce0c396, 0x80fe1835, 0xa8a88bf6, 0x49942bb4, 0xa4e506ee, 0x7972e8b5, 0x61a680e3, 0x5a76acf2
.word 0x919e6687, 0xc11bf34a, 0x48513f71, 0xe9f13160, 0x7e535f36, 0xd34e19a6, 0x9cf996d9, 0x240b4386
.word 0xed2b8708, 0xb1208f1b, 0x437daf79, 0x93bd0be6, 0x6478191f, 0x05743d5e, 0x549ae0f0, 0x6f791a54
.word 0x0cd354f3, 0x3259102f, 0xdade522f, 0x3e0e12cd, 0x4c329976, 0x2147b0a2, 0xb4edcefb, 0x7d74016a
.word 0xcf36c281, 0xddb20a8b, 0x17323a5e, 0x6aff0f90, 0x2a724943, 0x4e61a2aa, 0x9f327e30, 0x53a73fed
.word 0xd2ffceb0, 0x631fa0ee, 0xeb61d782, 0xec6bfcce, 0x315bc4d3, 0xe9496f6f, 0xdb88e053, 0x75eba63d
.word 0x64e57078, 0xd6aa0e41, 0x474e6b1a, 0xcd58be42, 0x07f6852c, 0x2a543ec4, 0xe7083dd5, 0xa5fb5714
.word 0x3db1a3ed, 0xe2a7850d, 0x5f090ebc, 0x005e81be, 0xa905a10e, 0x34da9540, 0xb2213e91, 0x44e17720
.word 0x5a8996c4, 0x5bddf9e9, 0x332ea17b, 0x4a98b07b, 0x17b823e1, 0xb051d9bd, 0x257cca04, 0x84c9a7ec
.word 0x3c607330, 0x4cd27f14, 0x22c43452, 0x972bf558, 0x23e8cc70, 0x1740210c, 0xf2c95e0e, 0x1bc321b2
.word 0x24fdce9d, 0x3e8ae053, 0xfc6d1729, 0xb88e3515, 0x6a7e5ef8, 0x1dcf134a, 0x8204e7d7, 0x1cc4b70f
.word 0xc0874883, 0x7c99a5c4, 0xdaa3caa1, 0xad534a27, 0xdcf52204, 0x6eb62d13, 0xe23d9e00, 0x71443c1f
.word 0xcf017cad, 0xbf557935, 0xbc82c01d, 0x6af2fda9, 0x68896790, 0x8d7d3339, 0xdec0ff02, 0xa71f13bf
.word 0xe5921af6, 0xa61ceb13, 0x7db0fda8, 0x30e5de66, 0x6b31ac5e, 0xa334d6f0, 0x348a231b, 0xd2df7c64
.word 0xfc8994f0, 0x4a8fe1e0, 0xbdb64ea6, 0x23262be5, 0x62b67a22, 0xb8f19112, 0x4ed06f09, 0xcb2ee4c5
.word 0xf58a7a88, 0xc2356a6f, 0xa3b7c028, 0xf03a8512, 0x38b2d6ef, 0x02098618, 0x9435c585, 0x505a462b
.word 0x194ee35e, 0x24de849d, 0xf26779f4, 0x8f045265
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x5, x10, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x13, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x13, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x13, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x13, x24, ecall_handler
                  li x24, 0x1
                  beq x13, x24, instr_fault_handler
                  li x24, 0x5
                  beq x13, x24, load_fault_handler
                  li x24, 0x7
                  beq x13, x24, store_fault_handler
                  li x24, 0xc
                  beq x13, x24, pt_fault_handler
                  li x24, 0xd
                  beq x13, x24, pt_fault_handler
                  li x24, 0xf
                  beq x13, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
