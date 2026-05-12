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
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x2
                  li x1, 0x5
                  li x2, 0x9
                  li x3, 0x6
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xfbb102ea
                  li x8, 0x80000000
                  li x9, 0x0
                  li x11, 0x0
                  li x12, 0xfed9b721
                  li x13, 0xfa3e96af
                  li x15, 0x1
                  li x16, 0x1
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0xf1353b73
                  li x20, 0xf2f8ba35
                  li x21, 0x2
                  li x22, 0x9
                  li x23, 0xb
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xfe87922f
                  li x27, 0xa
                  li x28, 0x0
                  li x29, 0x4
                  li x30, 0xf6a4d52f
                  li x31, 0x3
                  la x14, user_stack_end
main:             srli         t1, zero, 30
                  xor          zero, s8, s6
                  slti         s11, s0, -980
                  slti         ra, t5, -244
                  auipc        t2, 246521
                  xori         a3, s1, 97
                  la           sp, sub_2
                  and          s4, a3, t4
                  addi         sp, sp, 644
                  sra          a1, s3, s4
                  xor          tp, a2, s8
main_j2:          jalr         s3, sp, -644 #jump main -> sub_2
                  la           s8, region_1+617 #start riscv_load_store_hazard_instr_stream_0
                  lbu          tp, 1(s8)
                  lb           ra, -32(s8)
                  lb           s3, -32(s8)
                  lb           a5, 10(s8)
                  sb           s10, 10(s8)
                  sb           s1, 10(s8)
                  lb           t6, -11(s8)
                  sll          t2, s3, s6
                  sb           a1, 5(s8)
                  sh           zero, 37(s8)
                  sb           a6, 37(s8)
                  sb           s7, 37(s8)
                  xori         s1, s8, -795
                  lui          s5, 646792
                  lhu          a3, 37(s8)
                  lbu          t1, -38(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           tp, region_1+1487 #start riscv_load_store_rand_instr_stream_0
                  lb           a7, -4(tp)
                  sh           s10, 9(tp)
                  sb           sp, -1(tp)
                  lbu          s1, -11(tp)
                  lui          sp, 699629
                  slt          a2, t3, s3
                  lb           a3, 9(tp)
                  slt          zero, s0, a5
                  lbu          s8, 7(tp)
                  xori         t6, s3, -193
                  lb           t6, 3(tp)
                  lbu          t2, 15(tp)
                  lb           a3, -9(tp)
                  sb           t5, 2(tp)
                  sub          a7, s1, t3
                  sltu         ra, a0, s5
                  srai         s8, a6, 20
                  sra          sp, t1, s2
                  lui          a5, 661462
                  sb           a5, 12(tp)
                  auipc        s4, 248469
                  srli         ra, sp, 10
                  sltiu        a6, t5, 1447
                  slti         s5, s8, -361
                  ori          t6, tp, -1199
                  srl          t1, s3, t2
                  auipc        s9, 942755
                  lb           a7, 10(tp)
                  srl          sp, a5, t2
                  lbu          s1, -11(tp)
                  or           a1, ra, s8
                  sltu         t6, s9, a6
                  sb           t4, 12(tp)
                  sh           s11, -7(tp)
                  add          t2, s2, ra
                  sra          s7, a0, ra
                  lh           s4, -1(tp)
                  srli         s8, a5, 11
                  lb           s7, 13(tp)
                  auipc        t2, 764899
                  lbu          a1, -8(tp)
                  lbu          s11, 0(tp)
                  slt          a1, t2, s0
                  lb           a3, -4(tp)
                  slli         t0, a0, 5
                  sb           sp, 2(tp)
                  sb           a0, 8(tp)
                  nop
                  lh           a7, 9(tp)
                  lbu          sp, -2(tp) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_1+569 #start load_store_instr_stream_0
                  la           s6, region_1+482 #start load_store_instr_stream_2
                  la           s3, region_1+771 #start load_store_instr_stream_1
                  lb           a7, -29(s3)
                  lh           t2, -29(s3)
                  sb           a5, -43(t1)
                  sb           t6, -15(s3)
                  sb           a3, 36(s6)
                  lb           t0, -5(t1)
                  lhu          gp, -8(s6)
                  lbu          ra, -63(s6)
                  sb           s5, -56(s3)
                  sb           zero, -6(s3)
                  sb           tp, 22(t1)
                  lb           t6, 39(s6)
                  lbu          ra, -24(t1)
                  sb           s8, -31(s3)
                  lb           s0, 44(s6)
                  lhu          s0, 38(s6) #end load_store_instr_stream_2
                  lbu          a1, -26(t1)
                  sb           t3, 21(t1)
                  lbu          s8, -20(s3) #end load_store_instr_stream_1
                  lb           t0, -16(t1) #end load_store_instr_stream_0
                  bltu         ra, s3, 2f
                  srai         a2, a4, 2
2:                sra          t0, s0, a1
                  sll          s9, t5, s2
                  slt          a3, s8, gp
                  bne          t0, s6, 20f
                  bge          t0, zero, 11f
                  andi         a5, t5, 1607
                  blt          a7, a7, 20f
                  add          a7, a4, s6
                  sltiu        a3, t1, -1070
11:               sub          s8, s4, t1
                  slt          zero, t2, t5
                  add          t3, sp, t1
                  blt          t6, t2, 21f
                  slt          s8, s7, s6
                  ori          s8, a7, 282
                  slt          t6, s6, s11
                  srli         a6, s11, 10
                  la           s3, sub_1
                  xori         s1, s8, 1488
                  addi         s3, s3, -776
                  sltiu        t4, s11, 1672
                  nop
                  auipc        tp, 713560
                  sra          ra, ra, s11
main_j1:          jalr         s3, s3, 776 #jump main -> sub_1
                  srl          s7, s1, a0
                  sltiu        s7, s10, -952
20:               sltiu        s9, zero, -1755
21:               sll          a3, tp, s5
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xori         s1, s1, -868
                  andi         s1, s4, -825
                  addi         a4, a4, -28
                  slt          a7, s8, s6
                  sltu         s10, a4, t2
                  nop
                  andi         tp, s9, 607
                  sw           s3, 4(a4)
                  or           s9, a0, t2
                  sltiu        ra, tp, -621
                  la           s10, region_1+1033 #start riscv_load_store_rand_instr_stream_2
                  srl          s1, t2, a4
                  sb           tp, 14(s10)
                  sb           a3, 16(s10)
                  sb           a0, -10(s10)
                  nop
                  auipc        a2, 1048056
                  lh           a3, 11(s10)
                  sb           a2, -7(s10)
                  lbu          a3, -16(s10)
                  addi         a7, s8, 1319
                  lbu          s4, 6(s10)
                  lh           t0, -15(s10)
                  lbu          tp, 2(s10)
                  or           t4, s10, a2
                  slli         s11, s3, 12
                  lb           t4, -14(s10)
                  sb           zero, 12(s10)
                  sh           a1, -15(s10)
                  srl          s0, a0, zero
                  sltiu        s4, a1, 581
                  sub          t4, t5, s8
                  sltu         sp, s3, s8
                  sltiu        s2, s4, 1327
                  slti         a6, a5, 997
                  ori          s7, s8, 790
                  lbu          a5, -6(s10)
                  lb           a3, 12(s10)
                  lb           zero, 7(s10)
                  or           s1, s3, ra
                  lb           sp, 0(s10)
                  sltiu        t4, zero, -1645
                  srli         t2, a7, 18
                  sltu         zero, a0, s1
                  lbu          s0, 8(s10)
                  slli         t6, a0, 2
                  sw           a7, 7(s10)
                  lhu          t3, -3(s10)
                  slti         s6, s2, 1250
                  sh           t0, 15(s10)
                  lbu          zero, -14(s10)
                  sra          s8, a4, s5
                  addi         s0, t5, 1137
                  slli         s7, s4, 19
                  slt          a6, a0, tp
                  andi         a2, a0, 292
                  or           s8, a3, s9
                  lbu          tp, -4(s10)
                  sb           s9, -16(s10)
                  lhu          a2, -7(s10)
                  lbu          a7, -4(s10) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_1+227 #start riscv_load_store_hazard_instr_stream_2
                  lb           s7, 1411(a7)
                  lh           s2, 1411(a7)
                  nop
                  lh           a5, 1411(a7)
                  lbu          s4, 1411(a7)
                  sb           a5, 1411(a7)
                  lbu          ra, 1411(a7)
                  lbu          s6, 1411(a7)
                  lb           gp, 1411(a7)
                  sb           s6, 1411(a7)
                  lbu          s1, 894(a7)
                  sb           t3, 894(a7)
                  lbu          s6, 894(a7)
                  lb           t4, 894(a7)
                  lbu          ra, 700(a7)
                  lw           s0, 1213(a7)
                  slti         t1, a1, -829
                  lb           s9, 1669(a7)
                  slti         s4, s4, 561
                  lbu          s9, 1669(a7)
                  lbu          a3, 1669(a7)
                  lhu          t3, 1669(a7)
                  lh           t3, 1669(a7) #end riscv_load_store_hazard_instr_stream_2
                  la           gp, region_0+1564 #start riscv_load_store_hazard_instr_stream_1
                  lhu          ra, 6(gp)
                  lui          s4, 395750
                  lhu          s8, 6(gp)
                  nop
                  lbu          ra, 6(gp)
                  add          a2, ra, s5
                  sh           s5, 6(gp)
                  sh           t0, 6(gp)
                  lhu          s8, 6(gp)
                  lbu          s11, 6(gp)
                  lhu          t1, 6(gp)
                  lbu          t3, 6(gp)
                  sb           t5, 6(gp)
                  sh           s8, 6(gp)
                  lh           s10, 6(gp)
                  sb           t2, 6(gp)
                  lhu          zero, 6(gp) #end riscv_load_store_hazard_instr_stream_1
                  la           s1, region_1+1941 #start load_store_instr_stream_1
                  la           a5, region_1+1198 #start load_store_instr_stream_0
                  la           a7, region_1+1653 #start load_store_instr_stream_2
                  sw           s3, -289(a7)
                  sb           a5, -13(a5)
                  la           s0, region_1+268 #start load_store_instr_stream_3
                  la           s7, region_1+1500 #start load_store_instr_stream_4
                  sb           s2, -911(a7)
                  lhu          s3, 398(s7)
                  lbu          s6, -29(s1)
                  sb           s5, -18(a7)
                  lbu          tp, -208(s0)
                  sb           t2, -63(s7)
                  sb           s3, -18(s1)
                  lw           gp, 448(s7)
                  lb           a6, 3(a5)
                  sb           t0, -14(a5)
                  sw           t1, -352(s7)
                  lhu          t6, -551(a7)
                  lbu          s5, 7(s1)
                  lb           s9, -1163(a7)
                  sh           a3, -384(s7)
                  sb           t2, -618(a7)
                  lh           ra, -66(s0)
                  sb           s5, -202(s7)
                  sh           s9, -12(a5)
                  lb           s11, -1397(a7)
                  lb           s5, -911(s7)
                  lb           s11, -539(a7)
                  sb           s11, -967(s7) #end load_store_instr_stream_4
                  lb           a2, 1(a5)
                  sb           s3, -45(s1)
                  sb           t3, -11(a5)
                  lb           t3, 3(s0)
                  lb           s10, -142(s0)
                  lb           s6, -32(s1) #end load_store_instr_stream_1
                  sb           a0, 256(s0) #end load_store_instr_stream_3
                  lb           t4, -1143(a7) #end load_store_instr_stream_2
                  sb           a3, -15(a5)
                  sb           s0, -4(a5) #end load_store_instr_stream_0
                  la           t6, region_0+57 #start riscv_load_store_hazard_instr_stream_4
                  sb           a1, 14(t6)
                  lbu          t3, 14(t6)
                  lbu          t2, 14(t6)
                  sb           s1, 14(t6)
                  lb           a6, 14(t6)
                  lb           t2, 14(t6)
                  lb           sp, 57(t6)
                  sltiu        a3, gp, -1227
                  addi         t4, t1, -522
                  lhu          a6, 57(t6)
                  xor          t3, s8, gp
                  lhu          s2, 57(t6)
                  slti         s4, sp, 359
                  lhu          s6, 57(t6)
                  lb           sp, -52(t6)
                  sb           a4, -52(t6)
                  srai         s5, tp, 11
                  slli         s3, a6, 2
                  lb           s10, 10(t6)
                  lb           a6, 10(t6)
                  sltiu        s8, a6, -1283
                  lbu          s5, 10(t6)
                  sb           s7, 10(t6)
                  sb           a5, 10(t6)
                  lbu          s8, 10(t6) #end riscv_load_store_hazard_instr_stream_4
                  la           s11, region_0+1389 #start load_store_instr_stream_2
                  la           a5, region_0+809 #start load_store_instr_stream_1
                  sh           t0, 15(s11)
                  lbu          t6, 6(s11)
                  la           s3, region_0+1220 #start load_store_instr_stream_0
                  sb           t6, -61(s3)
                  lb           gp, 11(s11)
                  lb           gp, -38(a5)
                  lhu          a6, -45(a5)
                  lbu          zero, -56(a5)
                  lh           s0, -64(s3)
                  lbu          a1, 4(s11)
                  lb           s2, 39(s3)
                  sb           a0, 6(s11)
                  lbu          gp, -5(s11)
                  sb           gp, 20(a5)
                  lb           s4, 13(s3)
                  sh           s2, 5(s11)
                  lb           a1, -41(s3)
                  lh           t2, 15(s11)
                  sh           a4, 44(s3)
                  lbu          t3, 0(s11)
                  sb           s6, 26(a5)
                  sb           t0, 3(s3)
                  lbu          t6, -22(a5) #end load_store_instr_stream_1
                  lh           s4, 11(s11) #end load_store_instr_stream_2
                  lb           t0, 27(s3)
                  sb           t3, -1(s3) #end load_store_instr_stream_0
                  la           ra, region_0+1329 #start load_store_instr_stream_1
                  lbu          a3, -58(ra)
                  la           a5, region_0+1052 #start load_store_instr_stream_0
                  la           tp, region_0+1723 #start load_store_instr_stream_2
                  lbu          a6, 58(ra)
                  sh           a4, -447(tp)
                  sb           zero, 30(ra)
                  sh           s6, -29(ra)
                  lb           s1, 94(tp)
                  lw           a7, 4(a5)
                  sb           s10, -17(ra)
                  lh           s1, -1623(tp)
                  lw           s1, -24(a5)
                  lbu          gp, 56(ra)
                  sb           s5, -22(a5)
                  sb           s8, -55(a5)
                  lbu          t6, -1616(tp)
                  sb           t2, 45(ra)
                  lbu          a3, -54(ra)
                  lh           t3, -24(a5)
                  lb           s11, -1228(tp)
                  sb           t0, -259(tp)
                  lb           a2, -690(tp)
                  lbu          t4, -1202(tp)
                  lbu          s7, 37(ra)
                  sw           t4, -723(tp)
                  sb           tp, -25(ra) #end load_store_instr_stream_1
                  lbu          s2, 31(a5)
                  lh           s10, -1657(tp) #end load_store_instr_stream_2
                  lbu          s4, -2(a5) #end load_store_instr_stream_0
                  la           sp, region_0+1660 #start riscv_load_store_rand_instr_stream_4
                  nop
                  sw           s9, -12(sp)
                  lb           a7, -15(sp)
                  sra          s5, ra, a7
                  sb           t3, 11(sp)
                  lhu          t3, 12(sp)
                  xor          s8, ra, s5
                  xori         a6, s0, 1653
                  lw           t4, 16(sp)
                  sb           t1, 9(sp)
                  sb           a1, 12(sp)
                  lbu          s3, -4(sp)
                  sw           s9, -16(sp)
                  srl          s11, ra, ra
                  sw           t6, -16(sp)
                  sltiu        s10, a5, -597
                  xor          s3, s10, a6
                  lbu          t4, -13(sp)
                  sll          t1, s3, gp
                  lb           t3, 3(sp)
                  xori         s6, s7, 1334
                  sltu         s6, s6, tp
                  add          s4, tp, ra
                  and          s1, gp, t3
                  lhu          s10, 10(sp)
                  sb           s2, -11(sp)
                  auipc        a3, 291403
                  sltu         t1, gp, t2
                  xori         t6, s3, 232
                  lbu          s2, 15(sp)
                  lhu          t4, 2(sp)
                  lbu          t0, 9(sp)
                  ori          s0, s11, -1874
                  slli         a2, s5, 8
                  lb           s8, -13(sp)
                  lbu          a7, -15(sp)
                  addi         s4, s11, 534
                  lbu          tp, 2(sp)
                  ori          t0, a5, 648
                  sb           s8, 11(sp)
                  lb           s9, -5(sp)
                  lbu          a2, -9(sp)
                  sw           sp, -4(sp)
                  auipc        s5, 524310
                  lb           s5, -1(sp)
                  add          t0, s10, s7
                  lb           t2, 1(sp)
                  sb           s6, 3(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s4, region_0+1788 #start riscv_load_store_rand_instr_stream_3
                  sb           t1, -3(s4)
                  sb           a1, 5(s4)
                  sll          s6, s2, a7
                  lhu          t6, 14(s4)
                  slti         t0, t4, -1037
                  lb           s7, -11(s4)
                  slti         s1, t0, -1125
                  srl          t1, a4, t6
                  lbu          a6, 9(s4)
                  slti         s2, t3, 332
                  lbu          a1, -14(s4)
                  sltiu        s0, s5, 605
                  sltu         s9, t4, a4
                  addi         a3, t2, 350
                  slli         s9, a0, 2
                  ori          s0, sp, -1753
                  srl          s7, s11, t4
                  andi         t3, a1, 1510
                  xori         s8, s10, -1146
                  sb           s5, 9(s4)
                  lui          a7, 675143
                  xor          tp, s1, s5
                  xor          s6, a5, s1
                  lbu          s10, 9(s4)
                  lb           a6, 11(s4)
                  sltiu        s5, zero, -903
                  lbu          a5, -12(s4)
                  ori          ra, t3, 1427
                  sw           t5, 0(s4)
                  lbu          s6, 6(s4)
                  or           s7, a7, a1
                  or           s5, gp, s4
                  lhu          s11, -4(s4)
                  and          t6, ra, s5
                  sub          t2, t1, a3
                  sw           t3, 8(s4) #end riscv_load_store_rand_instr_stream_3
                  la           s10, region_1+514 #start load_store_instr_stream_2
                  la           s1, region_1+1666 #start load_store_instr_stream_4
                  la           gp, region_1+523 #start load_store_instr_stream_3
                  la           tp, region_1+1392 #start load_store_instr_stream_1
                  lw           a6, 1314(s10)
                  sh           a4, -12(s1)
                  lbu          s8, 412(s10)
                  lbu          s4, -190(s10)
                  lbu          s4, 19(gp)
                  lb           t0, 347(tp)
                  sb           tp, 1357(s10)
                  la           s9, region_1+47 #start load_store_instr_stream_0
                  sb           a3, -782(tp)
                  lb           s4, 15(s1)
                  sb           gp, 20(gp)
                  lb           t1, 275(tp)
                  sb           t0, -1(s9)
                  lb           t1, -32(gp)
                  sw           a5, -10(s1)
                  sh           a2, 152(tp)
                  lbu          ra, 30(s9)
                  lb           ra, -771(tp)
                  lhu          sp, -750(tp)
                  lb           zero, 38(s10)
                  sh           a2, -14(s1)
                  sw           t6, -10(s1)
                  sb           s8, 52(gp)
                  lb           a6, -15(s1)
                  lbu          s6, -233(tp)
                  lb           t0, -9(s1)
                  lh           s0, -21(gp)
                  sb           gp, -33(s9)
                  lb           t4, 40(s9)
                  lh           s5, -266(tp)
                  sb           s8, -24(gp)
                  lhu          s7, 14(s1)
                  sw           tp, 70(s10)
                  lb           ra, -13(s1)
                  sw           a4, -7(gp)
                  lw           a3, -372(tp)
                  lb           t1, 1042(s10)
                  lb           s11, -253(tp) #end load_store_instr_stream_1
                  sh           t6, -41(gp)
                  lbu          s2, -11(s1) #end load_store_instr_stream_4
                  sb           a0, 84(s10) #end load_store_instr_stream_2
                  lb           ra, -15(gp) #end load_store_instr_stream_3
                  lb           s0, -37(s9) #end load_store_instr_stream_0
                  la           sp, region_0+1740 #start riscv_load_store_hazard_instr_stream_3
                  sb           tp, -9(sp)
                  sltiu        a7, a5, 1727
                  sw           ra, -4(sp)
                  sb           s9, 3(sp)
                  sb           a7, 3(sp)
                  lbu          s5, 3(sp)
                  lbu          s2, 1(sp)
                  lbu          a7, -15(sp)
                  lbu          s8, -15(sp)
                  lb           s5, 0(sp)
                  lw           s8, 8(sp)
                  lbu          a5, 8(sp)
                  lw           s10, -12(sp)
                  lbu          t4, -12(sp)
                  lb           ra, -12(sp)
                  lw           a5, -12(sp)
                  or           a1, s8, s11
                  lhu          s3, -12(sp)
                  lh           a1, 6(sp)
                  sb           t4, 6(sp)
                  lb           gp, 6(sp)
                  sb           s6, 6(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t2, region_0+341 #start riscv_load_store_rand_instr_stream_0
                  lb           t3, 686(t2)
                  sb           t4, -162(t2)
                  or           a1, s3, s4
                  lui          a5, 857253
                  lhu          zero, -111(t2)
                  lbu          s8, 1313(t2)
                  sh           s7, 521(t2)
                  ori          s8, s4, -23
                  lb           t4, 772(t2)
                  xori         s2, a0, 685
                  srli         a6, t3, 22
                  lbu          t3, 84(t2)
                  sra          tp, a4, s4
                  slli         tp, a7, 30
                  sb           s2, 1401(t2)
                  sb           a7, 716(t2)
                  srai         s10, sp, 30
                  nop
                  ori          ra, tp, -737
                  xori         ra, zero, 1326
                  sub          a1, zero, gp
                  sra          s0, s6, a7
                  lb           s10, 375(t2)
                  lb           a2, 1217(t2)
                  lhu          gp, 953(t2)
                  lbu          a2, 230(t2) #end riscv_load_store_rand_instr_stream_0
                  la           a1, region_1+14 #start riscv_load_store_hazard_instr_stream_5
                  sb           s10, 975(a1)
                  lbu          tp, 975(a1)
                  lb           a2, 975(a1)
                  andi         s3, t6, -1219
                  sra          t2, a2, s6
                  lb           t4, 975(a1)
                  sb           a3, 975(a1)
                  slt          s11, zero, a4
                  sb           s7, 975(a1)
                  lb           s7, 975(a1)
                  sb           t3, 975(a1)
                  ori          zero, a6, -1508
                  lb           a3, 975(a1)
                  sra          tp, t3, a5
                  lbu          tp, 975(a1)
                  lb           t2, 975(a1)
                  lb           t3, 975(a1)
                  lb           s7, 975(a1)
                  lbu          t3, 975(a1)
                  lbu          sp, 975(a1)
                  lbu          t0, 975(a1) #end riscv_load_store_hazard_instr_stream_5
                  la           s9, region_1+674 #start load_store_instr_stream_2
                  lb           a6, 537(s9)
                  la           sp, region_1+1354 #start load_store_instr_stream_1
                  lh           t2, 16(sp)
                  la           a2, region_1+1595 #start load_store_instr_stream_0
                  sb           s0, 5(sp)
                  sb           a5, -7(a2)
                  sb           s6, -67(s9)
                  lbu          t2, 13(sp)
                  lh           t6, 3(a2)
                  lb           t1, 6(a2)
                  lb           t0, -415(s9)
                  lw           s1, 1110(s9)
                  lb           t4, -15(sp)
                  lb           s2, 11(sp)
                  lb           gp, 13(a2)
                  lbu          s5, 0(sp)
                  lbu          s0, 673(s9)
                  lbu          gp, -244(s9) #end load_store_instr_stream_2
                  sb           t4, 9(sp)
                  lb           s5, -9(sp)
                  lb           t6, 1(sp) #end load_store_instr_stream_1
                  sh           gp, -11(a2) #end load_store_instr_stream_0
                  la           a5, region_0+206 #start riscv_load_store_hazard_instr_stream_0
                  slli         s4, t5, 3
                  lbu          s1, -171(a5)
                  andi         t6, s3, 1999
                  lb           zero, -171(a5)
                  lb           s11, -171(a5)
                  xori         t1, zero, -75
                  sb           s1, -171(a5)
                  sb           s6, 171(a5)
                  xori         s10, a2, 216
                  sb           s6, 171(a5)
                  sb           tp, -101(a5)
                  lb           s8, -101(a5)
                  lb           t6, 229(a5)
                  srli         a1, s8, 16
                  lb           a3, 229(a5)
                  lbu          tp, 229(a5)
                  sb           s6, 229(a5)
                  lh           s0, 24(a5) #end riscv_load_store_hazard_instr_stream_0
                  or           ra, s3, gp
                  sltiu        t0, s2, 1334
                  nop
                  sltiu        t0, t3, -394
                  bltu         a0, s7, 5f
5:                srai         s10, a5, 11
                  and          s0, sp, a0
                  sll          s11, a3, a3
                  xori         t4, s3, 1296
                  ori          t3, s0, -1371
                  bltu         a6, t0, 22f
                  bge          a7, t0, 27f
                  or           s2, s8, s2
                  beq          s9, s6, 27f
                  beq          t4, a6, 22f
                  srli         s6, tp, 22
                  sra          tp, a0, s9
                  blt          t1, zero, 18f
                  la           sp, region_0+1131 #start riscv_load_store_rand_instr_stream_1
                  sltiu        t4, s11, -1569
                  add          s8, s9, s6
                  srli         s9, zero, 10
                  sb           t3, 238(sp)
                  sb           s3, 84(sp)
                  nop
                  lb           s7, 196(sp)
                  lbu          s10, -48(sp)
                  sltiu        s5, s9, -804
                  andi         a6, a6, 1390
                  andi         t4, s7, 1828
                  sb           a2, -135(sp)
                  sll          a5, a0, a7
                  slt          t6, t6, gp
                  slli         t1, s7, 15
                  sll          s4, a6, t2
                  sltiu        zero, t1, 983
                  lb           s7, -178(sp)
                  lbu          s1, -45(sp)
                  lbu          zero, -90(sp)
                  sb           a6, 224(sp)
                  xori         a1, s5, 1945
                  lbu          s3, 56(sp)
                  or           s3, zero, t2
                  sh           zero, 171(sp)
                  sltu         a5, s9, t0
                  sltiu        a5, s0, 1262
                  xor          a5, a6, s5
                  xor          s10, a5, s7
                  auipc        s10, 555756
                  sb           a3, -68(sp)
                  sb           s11, 50(sp)
                  lhu          ra, 53(sp)
                  andi         a1, t5, 456
                  lb           gp, 62(sp)
                  slli         s11, zero, 0
                  xor          s3, tp, a2
                  lh           ra, 55(sp)
                  lbu          a2, -78(sp)
                  lui          t0, 889622
                  lh           s11, -31(sp)
                  lbu          t6, 92(sp)
                  sltiu        a1, s0, 1527
                  lb           s6, 12(sp) #end riscv_load_store_rand_instr_stream_1
18:               addi         s10, s7, 261
                  addi         s0, s7, -1124
                  slli         s7, s8, 12
                  bge          s3, s9, 33f
22:               xori         s4, t3, 1867
                  lui          t4, 1027342
                  slt          s9, s9, a6
                  add          s5, s0, s3
                  and          s2, s5, s6
27:               slt          s10, t4, gp
                  and          s6, s7, gp
                  srai         s1, a3, 25
                  beq          s11, s9, 47f
                  blt          tp, zero, 49f
                  andi         s2, a5, 1881
33:               add          zero, t4, s11
                  lui          ra, 883560
                  andi         tp, t3, -264
                  bge          s6, a4, 50f
                  nop
                  srli         s3, sp, 13
                  slti         t3, s7, 741
                  or           s11, s1, s7
                  slt          s10, a3, t0
                  addi         t2, t5, 1977
                  sltu         t2, s8, ra
                  bgeu         s3, s7, 49f
                  add          sp, ra, t6
                  bge          t3, s1, 61f
47:               ori          a3, s10, 182
                  beq          sp, s10, 62f
49:               sra          s11, zero, t1
50:               lui          t6, 944145
                  and          a3, a1, s9
                  srai         s11, s2, 25
                  beq          t5, ra, 73f
                  bge          s4, t1, 61f
                  sra          a2, a7, s6
                  srai         s6, a4, 22
                  bltu         a2, s1, 63f
                  xori         t0, s3, 233
                  bne          s7, s9, 70f
                  add          s0, t1, s4
61:               srai         zero, a2, 0
62:               sra          a2, a7, s10
63:               slt          zero, t3, sp
                  auipc        a3, 386651
                  add          t4, sp, t3
                  bltu         s4, t2, 81f
                  sltiu        s0, t5, -1225
                  sll          s5, s10, a4
                  srl          s3, s9, ra
70:               auipc        s11, 595078
                  lui          tp, 597911
                  beq          s2, sp, 86f
73:               sll          a5, s8, t6
                  sra          sp, a2, s9
                  sltiu        s1, s11, 1984
                  sra          s9, s10, t3
                  bgeu         s0, a0, 81f
                  lui          gp, 685658
                  srai         s0, a6, 19
                  srai         s4, s11, 11
81:               sltu         sp, s0, s11
                  and          t0, s9, s9
                  srl          s2, t4, s1
                  slti         s4, s5, 632
                  nop
86:               srai         s6, t1, 1
                  slti         t6, t5, -492
                  ori          a1, a4, -1846
                  blt          t6, t4, 91f
                  srl          t0, t3, zero
91:               sltiu        t0, gp, -876
                  srl          a7, sp, t4
                  bgeu         s5, s1, 103f
                  add          s0, a1, a3
                  sll          a6, a5, a2
                  bltu         a3, s8, 99f
                  sra          s2, a3, s0
                  sll          gp, a2, t1
99:               and          a7, s2, sp
                  sub          zero, t3, s4
                  ori          zero, a4, -1924
                  xor          s1, t3, a7
103:              auipc        s10, 638461
                  blt          s8, a1, 124f
                  sub          a2, s4, gp
                  srli         a5, t1, 10
                  beq          a6, a4, 121f
                  xori         s4, t1, -337
                  xor          t2, t5, ra
                  bgeu         a2, s11, 114f
                  bne          s0, s1, 112f
112:              slti         t1, s3, -395
                  lui          sp, 239799
114:              bltu         a1, t1, 134f
                  and          t2, t5, zero
                  andi         s7, ra, -881
                  bne          a1, s5, 124f
                  sltiu        s5, s11, 1558
                  andi         a7, a4, -257
                  xori         sp, t4, 90
121:              nop
                  srl          gp, t0, a0
                  sltiu        s1, s11, 759
124:              bne          a6, tp, 137f
                  sll          s6, s11, a6
                  xori         a6, a3, -1394
                  add          t2, s9, a5
                  addi         s4, s11, 1582
                  slli         s0, s1, 11
                  bne          a7, s11, 131f
131:              bge          a2, t6, 132f
132:              bgeu         s5, s7, 146f
                  ori          gp, s5, -1904
134:              auipc        gp, 271979
                  sltu         s3, t0, a7
                  srai         a2, a3, 15
137:              sll          a2, s7, a4
                  or           s6, ra, t5
                  srl          a5, s2, t0
                  sll          s2, a3, a4
                  ori          tp, a4, -1761
                  slt          sp, a0, s3
                  sltu         t0, s0, t0
                  xor          s8, s11, s8
                  sub          s1, a1, a5
146:              srai         t1, a2, 13
                  slti         s5, s7, 1825
                  beq          s8, s0, 166f
                  auipc        s7, 555601
                  nop
                  srai         zero, a6, 8
                  andi         s8, s2, -1036
                  slti         a3, s6, 1193
                  addi         t6, s8, -806
                  ori          tp, s5, 755
                  slli         a6, t5, 21
                  addi         t4, t1, -1987
                  xori         a1, sp, 685
                  bne          s1, s3, 166f
                  ori          t3, sp, 118
                  slt          a5, t1, tp
                  xor          s11, t0, s0
                  sltu         t1, s9, s5
                  slt          s8, s9, s10
                  slti         s3, t3, 326
166:              lui          s3, 268691
                  nop
                  bne          s2, s2, 182f
                  and          sp, s6, t2
                  beq          a6, s10, 178f
                  bge          t5, tp, 181f
                  addi         t0, a7, 1136
                  or           s7, t1, s8
                  nop
                  auipc        t4, 610500
                  nop
                  sub          s4, t1, s2
178:              addi         a7, a6, 725
                  beq          s10, t2, 196f
                  xor          s8, s0, a0
181:              bltu         a2, s8, 201f
182:              srli         s7, t6, 27
                  add          s2, a7, t6
                  nop
                  xori         s0, s5, 10
                  sub          s7, s7, s5
                  bltu         a7, a2, 201f
                  srli         s4, s8, 19
                  slti         s11, t0, -319
                  sltiu        s2, a2, -345
                  ori          s7, a5, -1321
                  sra          zero, s1, s8
                  ori          s6, s2, -349
                  and          t0, tp, a4
                  bne          gp, gp, 209f
196:              addi         t0, s6, -2014
                  slt          tp, s7, t3
                  and          t6, s4, gp
                  xori         t0, a6, -483
                  auipc        s1, 371998
201:              or           s6, s3, a0
                  lui          s3, 391700
                  bne          t0, a4, 208f
                  slli         a3, t3, 12
                  auipc        s8, 203724
                  addi         s8, ra, 1334
                  xor          a7, a2, a7
208:              nop
209:              sltiu        a3, s10, 690
                  slli         t4, a6, 26
                  and          s3, s2, s9
                  blt          a6, s9, 226f
                  beq          s1, zero, 217f
                  xor          a3, sp, t3
                  or           s9, a1, tp
                  andi         s7, t1, -1348
217:              sll          gp, zero, tp
                  or           t6, s6, s8
                  slli         zero, s3, 6
                  bltu         t6, t2, 232f
                  ori          s10, a7, -2019
                  sll          a2, ra, s11
                  sltu         s11, a6, s11
                  sra          a2, a6, t6
                  sltiu        a6, t4, 252
226:              sltu         s0, s4, s2
                  sll          sp, sp, s4
                  srli         t0, t5, 6
                  addi         s3, t0, 1622
                  bltu         s0, a4, 245f
                  sll          s1, s11, s11
232:              auipc        s5, 582890
                  sltiu        s10, t3, -609
                  slt          t1, t2, s10
                  and          s5, s8, t4
                  bltu         a4, s6, 238f
                  slti         s2, zero, 647
238:              srai         zero, s4, 10
                  sub          a2, a3, ra
                  sltu         t1, t6, a7
                  srli         a6, s6, 17
                  add          sp, s7, s5
                  nop
                  bltu         s3, t3, 250f
245:              lui          a3, 590896
                  slti         gp, t2, -1673
                  andi         s4, a6, 758
                  nop
                  xori         t6, s7, 460
250:              add          t3, a5, s7
                  or           t4, a5, ra
                  sll          a5, a5, a2
                  bne          a7, t4, 256f
                  or           t4, s11, a7
                  srl          zero, t4, s8
256:              addi         s2, s3, 359
                  ori          a7, s9, 1827
                  xor          sp, s11, gp
                  srl          t1, t1, s3
                  sltiu        a2, a0, 1585
                  xor          t1, a0, s8
                  sltiu        t4, a0, -1034
                  blt          s5, s10, 274f
                  sltiu        ra, t6, -939
                  slli         a2, s9, 23
                  slt          s4, s7, a1
                  bge          s6, s10, 280f
                  or           s9, ra, t0
                  bltu         t3, s5, 281f
                  srli         tp, s0, 12
                  bgeu         a1, a5, 287f
                  slti         s0, s9, 1493
                  srai         t2, tp, 16
274:              bltu         gp, gp, 294f
                  bltu         t3, t4, 295f
                  blt          a2, s1, 277f
277:              addi         s5, a0, 1266
                  srli         a3, s9, 3
                  sll          s3, gp, s10
280:              nop
281:              and          a5, tp, a6
                  sub          sp, s0, t5
                  srl          tp, s5, a6
                  xori         a1, tp, -1385
                  ori          s7, s1, -667
                  add          t2, s11, t4
287:              nop
                  andi         t6, s11, -2028
                  sub          s9, a7, t6
                  sltu         s9, s8, sp
                  sll          s10, s4, t5
                  lui          ra, 159222
                  and          t4, a6, s2
294:              addi         s6, a1, 1597
295:              bgeu         a3, t4, 299f
                  xor          a6, t2, a2
                  bltu         s3, a7, 304f
                  or           gp, a2, ra
299:              srli         s2, zero, 0
                  slt          sp, a4, s0
                  sll          a2, zero, t6
                  slt          t1, s0, a5
                  bltu         t4, t4, 318f
304:              addi         s9, s0, 94
                  bne          t3, a5, 306f
306:              sll          s6, a5, s0
                  sub          s10, a5, t2
                  ori          ra, s6, 768
                  or           s5, s3, s10
                  auipc        a2, 995522
                  blt          s7, a6, 323f
                  slti         zero, a1, 759
                  nop
                  la           gp, region_1+816 #start load_store_instr_stream_1
                  lbu          t3, 30(gp)
                  la           a5, region_1+464 #start load_store_instr_stream_0
                  sb           t6, -45(gp)
                  lb           s3, -303(a5)
                  lbu          s0, -35(gp)
                  lbu          s9, 383(a5)
                  sh           t5, 22(gp)
                  lh           t6, 14(gp)
                  lh           a1, -330(a5)
                  lh           a2, -22(gp)
                  lw           t6, -16(gp)
                  lhu          t1, 1302(a5)
                  sb           s9, -1(gp)
                  sh           s7, -206(a5)
                  lh           s11, -64(gp)
                  sb           s6, -373(a5)
                  lh           a6, 1262(a5)
                  sb           gp, 950(a5)
                  lb           s8, 1298(a5)
                  sb           s11, 47(gp) #end load_store_instr_stream_1
                  lbu          t6, 1501(a5) #end load_store_instr_stream_0
                  sub          s7, a1, a2
                  auipc        s9, 1002664
                  lui          gp, 796548
                  bne          s7, tp, 331f
318:              slti         t3, a3, -903
                  bne          ra, s0, 321f
                  bgeu         s8, t5, 334f
321:              lui          a6, 311557
                  addi         s6, s6, -133
323:              bltu         s5, s11, 337f
                  sltiu        a3, s0, -391
                  slt          a5, a5, sp
                  sub          s3, ra, a0
                  bgeu         s4, t0, 342f
                  sll          zero, ra, s4
                  sltiu        t4, a5, -1630
                  add          s10, t2, s8
331:              auipc        s0, 528398
                  andi         s5, t1, -919
                  add          t3, a0, s3
334:              bge          s3, s5, 351f
                  auipc        sp, 868338
                  xori         sp, zero, -211
337:              bge          a6, s9, 343f
                  blt          a5, s7, 349f
                  xor          a6, t3, s7
                  or           s5, t2, a3
                  bgeu         t5, s0, 353f
342:              or           s8, s11, a4
                  la           sp, region_0+1342 #start riscv_load_store_rand_instr_stream_5
                  lbu          t0, 21(sp)
                  lh           t1, 58(sp)
                  auipc        s0, 900069
                  lui          s10, 187186
                  lw           a1, -22(sp)
                  andi         s7, zero, -1089
                  sb           s2, -7(sp)
                  slti         t0, s10, 861
                  sb           t0, -29(sp)
                  lb           tp, 41(sp)
                  xori         a7, t5, 321
                  lbu          s10, -29(sp)
                  sb           t4, 39(sp)
                  and          a6, t4, s10
                  lbu          a2, 55(sp)
                  sb           a0, 9(sp)
                  or           s5, a4, a2
                  sll          t6, a7, a5
                  lbu          s7, 5(sp)
                  sh           t5, -2(sp)
                  xor          a1, s10, s2
                  auipc        s11, 477540
                  slti         s9, a5, -1348
                  lui          s6, 583226
                  xori         s9, a1, 38
                  auipc        t0, 19134
                  sh           t4, 60(sp)
                  sb           sp, 13(sp)
                  xor          s5, s3, s8
                  add          a7, s10, t6
                  xor          s7, s2, a2
                  srl          t1, gp, s6
                  ori          a3, a2, 400
                  auipc        s4, 486160
                  lhu          s3, -36(sp)
                  slti         t6, gp, -815
                  lb           t2, -13(sp) #end riscv_load_store_rand_instr_stream_5
343:              or           sp, s1, tp
                  bne          gp, t2, 351f
                  bge          a7, s5, 363f
                  sra          gp, tp, s5
                  bge          a3, s11, 351f
                  addi         t0, s0, -1497
349:              lui          s5, 33444
                  bltu         s0, s3, 351f
351:              slli         s8, gp, 20
                  slli         zero, a4, 17
353:              blt          a5, s0, 361f
                  addi         s5, a2, 2047
                  lui          s2, 453293
                  nop
                  sltiu        s3, t3, 944
                  xori         tp, a5, 451
                  ori          s9, a5, -130
                  addi         gp, tp, -362
361:              add          s0, t6, a3
                  auipc        t6, 1026532
363:              sll          sp, gp, tp
                  srli         s3, s8, 0
                  bgeu         t5, t4, 379f
                  sra          a1, t4, t5
                  sra          s7, s9, a6
                  sll          s0, sp, a5
                  srli         s8, a5, 12
                  bge          t4, s7, 374f
                  sub          s2, s2, t3
                  bltu         a0, s6, 385f
                  slli         a6, t5, 21
374:              blt          a3, a2, 377f
                  sltiu        t1, a1, -1523
                  slti         sp, t0, -474
377:              slt          s1, t0, s9
                  auipc        s9, 159479
379:              lui          a6, 111471
                  slti         t4, t2, 882
                  slt          s10, s7, gp
                  ori          a3, s3, 2021
                  bgeu         s7, t1, 384f
384:              xor          a5, tp, a1
385:              andi         ra, a7, -1636
                  xori         a5, s1, -162
                  bgeu         zero, s4, 402f
                  nop
                  andi         t3, t5, 419
                  xori         s10, s11, -1681
                  slti         sp, a1, -955
                  slli         sp, s8, 1
                  bge          ra, sp, 400f
                  add          a7, a1, t1
                  slti         a2, t2, 1478
                  xor          a3, s8, s9
                  srai         a1, a7, 3
                  bgeu         t0, t1, 418f
                  bge          s5, t0, 415f
400:              auipc        a7, 743175
                  nop
402:              bne          s1, s10, 422f
                  xor          s10, a0, t3
                  sltu         s3, a0, zero
                  srli         a2, s9, 16
                  auipc        a6, 990008
                  xori         gp, sp, -261
                  sltiu        s3, s6, 706
                  sltu         t3, s1, s10
                  bge          t3, a4, 430f
                  nop
                  bge          sp, t0, 426f
                  srai         s8, gp, 7
                  bge          a2, s1, 424f
415:              srai         a1, t1, 6
                  ori          t0, a3, 1295
                  beq          t0, t2, 422f
418:              or           sp, a1, ra
                  slti         t3, s2, -496
                  or           s5, t3, s1
                  xori         s4, s8, -1517
422:              and          s0, s8, tp
                  beq          s6, s6, 424f
424:              add          a1, s3, a3
                  or           t6, a7, a3
426:              nop
                  or           s7, gp, s4
                  beq          t4, zero, 430f
                  bltu         s11, s7, 441f
430:              auipc        s11, 26901
                  bgeu         s2, s11, 436f
                  sltiu        t3, s4, -1064
                  xori         t6, a6, -992
                  lui          s10, 949824
                  or           t4, s10, s11
436:              or           a2, s6, t3
                  beq          t6, a7, 444f
                  blt          ra, t1, 456f
                  srli         zero, t0, 7
                  lui          s0, 495288
441:              or           ra, s8, a7
                  slt          s5, s11, t2
                  bge          t4, a6, 455f
444:              srl          a6, zero, t4
                  xori         tp, s8, 416
                  addi         a5, a0, 1041
                  blt          s6, t5, 451f
                  slti         s6, t2, -1285
                  srli         s4, a1, 17
                  auipc        t6, 452499
451:              sra          t4, s8, s1
                  slti         s1, s4, -886
                  sub          s10, tp, a1
                  sltiu        s3, tp, -880
455:              sltiu        s3, a6, -1975
456:              auipc        s11, 56984
                  or           a3, a2, s4
                  slli         s2, t4, 6
                  bge          zero, t5, 475f
                  add          t4, ra, s7
                  slli         t6, t5, 6
                  blt          s9, t5, 468f
                  sra          s5, t5, s6
                  bne          s7, t4, 484f
                  slli         t0, a2, 22
                  andi         a6, a1, -764
                  sltu         s1, t5, s2
468:              srli         s7, s9, 14
                  blt          s0, s1, 470f
470:              addi         a1, gp, -1944
                  bne          ra, t4, 485f
                  add          s9, tp, tp
                  srli         a7, s9, 27
                  bge          a1, t1, 478f
475:              srli         a7, a7, 6
                  beq          s6, a5, 490f
                  auipc        s1, 958035
478:              and          s1, tp, s3
                  sltiu        s0, s2, 1292
                  bgeu         s4, t4, 495f
                  srai         a7, a3, 16
                  add          a5, a1, a5
                  nop
484:              or           tp, s4, s0
485:              slti         a3, s7, 1885
                  sub          s5, a3, s8
                  lui          s4, 228230
                  bge          s2, tp, 491f
                  slti         s4, s0, 450
490:              beq          s6, s2, 505f
491:              sltu         a7, zero, s10
                  nop
                  bgeu         a7, t0, 507f
                  and          s3, a0, s2
495:              lui          s9, 104954
                  bltu         a5, a2, 507f
                  sltu         gp, t6, a5
                  srl          a2, t2, t2
                  srli         s6, s9, 14
                  slli         sp, sp, 3
                  srl          s0, t5, s11
                  sll          t6, s7, t3
                  sub          a2, s7, s9
                  lui          zero, 619335
505:              bltu         s8, t4, 506f
506:              srli         t4, gp, 5
507:              bge          t6, s8, 521f
                  sltu         a6, t5, a6
                  slt          gp, zero, s1
                  and          s0, s6, s11
                  sltu         s9, s11, s2
                  slti         gp, ra, 204
                  and          zero, s1, a3
                  slli         t0, a0, 19
                  sub          zero, s10, s7
                  bgeu         t6, tp, 526f
                  xori         t1, t5, 205
                  sltu         sp, a1, gp
                  srl          s5, a5, s6
                  andi         s10, a5, 329
521:              auipc        s6, 249055
                  auipc        zero, 974137
                  lui          t0, 887429
                  blt          s8, s9, 538f
                  xori         t0, sp, 1755
526:              sll          s3, s8, s5
                  beq          t5, t5, 540f
                  sltiu        a6, a7, 807
                  sub          s8, s9, sp
                  sll          s8, t0, tp
                  auipc        a5, 678835
                  slti         a5, a0, -35
                  xori         t3, s2, 1488
                  addi         tp, zero, -907
                  slti         ra, s3, 986
                  lui          a6, 465755
                  srl          a7, s8, s6
538:              xor          zero, s10, s4
                  srli         gp, s5, 17
540:              ori          s6, t5, -1055
                  srl          tp, s7, t2
                  slti         a6, s4, 216
                  sltu         t2, t4, a3
                  sltu         s5, t0, gp
                  sltu         ra, a5, a1
                  and          ra, a0, t2
                  nop
                  sll          ra, tp, a2
                  beq          s3, s0, 566f
                  slti         gp, s0, 581
                  sll          t1, a2, t1
                  sltu         sp, a2, s3
                  slli         t0, s5, 16
                  andi         s10, a7, 395
                  bgeu         t6, s2, 575f
                  srai         t2, s10, 28
                  bgeu         s11, s2, 577f
                  sra          s10, t5, zero
                  srl          ra, s7, sp
                  bgeu         zero, t3, 567f
                  nop
                  slt          a7, a5, t0
                  lui          t1, 375301
                  srli         s5, a7, 22
                  sltu         tp, tp, s11
566:              bge          a2, t2, 574f
567:              sll          s2, s1, s2
                  slt          t2, s10, s2
                  auipc        a3, 321898
                  slli         s7, t2, 10
                  beq          t3, a3, 583f
                  bgeu         s7, a2, 574f
                  auipc        t4, 252091
574:              bltu         zero, s3, 579f
575:              srai         s7, s8, 24
                  ori          s8, a4, 1136
577:              nop
                  sub          ra, gp, s4
579:              blt          s1, s1, 593f
                  sltiu        a2, ra, -1308
                  srai         a7, a4, 18
                  ori          ra, s5, 46
583:              bne          a5, s8, 584f
584:              and          ra, a3, s3
                  nop
                  xori         t6, a4, -1576
                  ori          a1, s0, -510
                  sra          ra, a2, a3
                  ori          s3, s2, -798
                  andi         sp, s6, -842
                  slt          a2, s3, t4
                  xor          a6, s4, s11
593:              slt          zero, s4, s8
                  xor          s10, t0, sp
                  add          a3, s3, s5
                  nop
                  ori          t3, s0, 2002
                  bltu         a6, t3, 613f
                  add          t4, s2, s1
                  bge          a0, s2, 601f
601:              sra          ra, a1, a7
                  srli         s6, a2, 17
                  slt          gp, sp, s8
                  sltiu        s9, sp, 657
                  sll          a2, zero, s0
                  bge          ra, t0, 620f
                  xori         s4, a0, -1534
                  auipc        s0, 820635
                  andi         a5, t2, 1233
                  srai         sp, zero, 26
                  bne          sp, gp, 625f
                  lui          a5, 502492
613:              slli         s8, t1, 5
                  sltiu        s9, a2, -1412
                  addi         s0, s8, -1795
                  blt          a0, s2, 617f
617:              slti         s8, t3, 457
                  lui          a2, 321662
                  sll          s7, s10, sp
620:              lui          s3, 855355
                  blt          s5, s4, 635f
                  lui          a1, 115259
                  xori         a5, s10, 1456
                  and          s6, a7, s11
625:              xori         s8, s8, 1126
                  nop
                  auipc        gp, 638698
                  ori          sp, a7, 1545
                  or           t4, a0, a4
                  bltu         a1, a0, 650f
                  and          a1, a6, s1
                  lui          t2, 571561
                  or           s4, tp, s11
                  sll          a7, a3, s2
635:              beq          sp, a0, 645f
                  andi         t2, s3, 1471
                  bne          s2, a2, 648f
                  or           t4, t1, t2
                  lui          s2, 560283
                  srai         s6, s7, 10
                  lui          t1, 41927
                  add          t1, s4, a0
                  slti         s0, s1, -2030
                  sltu         s2, s0, gp
645:              sra          s9, a3, t4
                  xor          tp, zero, s6
                  srai         t1, t0, 19
648:              bgeu         s8, s9, 665f
                  bgeu         sp, t2, 653f
650:              sub          t6, t2, s1
                  srai         t4, t5, 13
                  slli         gp, s1, 2
653:              blt          a7, t5, 657f
                  nop
                  blt          t4, sp, 675f
                  nop
657:              sub          a3, s1, zero
                  blt          s11, s0, 671f
                  beq          t0, a7, 667f
                  andi         s1, t3, 1638
                  bltu         a7, s1, 673f
                  bltu         a3, t2, 680f
                  sltiu        sp, s6, -989
                  blt          a0, tp, 667f
665:              auipc        t2, 116721
                  lui          s9, 525236
667:              bge          t2, a0, 674f
                  srli         s1, a7, 28
                  beq          s11, t3, 675f
                  sll          t2, s11, a5
671:              addi         gp, a3, 2015
                  sra          s2, ra, a0
673:              lui          tp, 401333
674:              andi         s9, gp, 502
675:              nop
                  xori         s6, s5, 1971
                  sltu         s4, tp, t1
                  srai         t2, s5, 31
                  sra          t2, t4, a4
680:              bne          s1, t3, 687f
                  slti         s10, s2, 1207
                  bgeu         t6, s11, 687f
                  addi         sp, s7, -1178
                  lui          s9, 164656
                  nop
                  beq          a3, s11, 687f
687:              sra          gp, t1, s7
                  auipc        a6, 1011232
                  lw           s3, 4(a4)
                  srai         s2, a3, 13
                  add          a2, a4, sp
                  sltu         sp, t5, s5
                  slti         t2, ra, 47
                  slti         sp, s4, -1376
                  addi         a4, a4, 28
                  and          s11, a7, s1
                  xori         s6, a4, -1034
                  auipc        t3, 119991
1278:             addi x31, x19, 0
1278:             jalr x31, x31, 0
sub_1:            nop
                  bgeu         s3, tp, sub_1_stack_p
                  srli         s5, s5, 6
                  and          t0, s0, s7
                  addi         gp, a7, 88
                  slli         t3, s9, 7
                  sltu         s0, s8, s7
sub_1_stack_p:    addi         a4, a4, -64
                  srl          a7, a5, s6
                  srli         s11, s7, 8
                  add          a5, s4, a4
                  sw           s3, 4(a4)
                  sltiu        s1, s3, -34
                  la           a7, region_0+1425 #start riscv_load_store_rand_instr_stream_1
                  sltu         a5, t5, s10
                  lbu          a2, -4(a7)
                  lb           t4, 6(a7)
                  lb           s0, -14(a7)
                  add          a2, a3, a3
                  lhu          t2, -11(a7)
                  sra          s1, t5, t2
                  sb           s4, 2(a7)
                  sub          a6, sp, s2
                  or           t4, zero, s3
                  lh           a3, -5(a7)
                  lh           a5, 1(a7)
                  lb           zero, 16(a7)
                  xori         a3, a4, 959
                  lui          s0, 787651
                  add          s11, t3, s0
                  andi         a5, s1, 1765
                  lb           gp, -4(a7)
                  lbu          t6, -4(a7)
                  lbu          gp, -12(a7)
                  sb           a1, 10(a7)
                  sb           t6, 2(a7)
                  lb           zero, 14(a7)
                  sb           a7, 16(a7)
                  lbu          a6, -15(a7)
                  sltu         s1, gp, s10
                  srai         t1, t6, 11
                  lb           s4, 4(a7)
                  srai         a2, s6, 13
                  sh           s9, -3(a7)
                  xori         s5, t3, -1075
                  lbu          a3, 10(a7)
                  lb           t2, -12(a7)
                  sw           s8, -13(a7)
                  lb           s8, 0(a7)
                  lbu          t2, -8(a7)
                  lhu          t3, 15(a7)
                  xor          s11, s8, ra
                  lw           s5, -13(a7) #end riscv_load_store_rand_instr_stream_1
                  la           ra, region_1+1089 #start load_store_instr_stream_1
                  la           t2, region_1+255 #start load_store_instr_stream_3
                  la           tp, region_1+1842 #start load_store_instr_stream_2
                  lbu          t0, -38(ra)
                  la           s3, region_1+980 #start load_store_instr_stream_4
                  sh           s0, 152(tp)
                  la           s5, region_1+153 #start load_store_instr_stream_0
                  sb           t3, 54(s3)
                  sb           t1, -44(t2)
                  lbu          t4, 48(t2)
                  lb           t4, -59(ra)
                  lbu          t6, 123(tp)
                  lh           a3, 86(tp)
                  lbu          t4, 1257(s5)
                  lh           s1, 707(s5)
                  lbu          s11, -43(t2)
                  lh           gp, 11(ra)
                  sb           a4, 402(s5)
                  lb           s8, 9(ra)
                  lbu          a3, -177(tp)
                  lbu          a5, 155(tp)
                  lb           sp, 21(tp)
                  lbu          t0, 16(t2)
                  sh           s11, 1781(s5)
                  lb           a5, 16(s3)
                  lb           zero, 4(ra)
                  lhu          s8, -43(t2)
                  lbu          a7, -46(s3)
                  sh           a3, -220(tp)
                  lh           t6, -25(t2) #end load_store_instr_stream_3
                  sh           gp, 761(s5)
                  lw           a7, -16(s3)
                  lb           s8, 1050(s5)
                  sb           a0, 394(s5)
                  lb           s7, -15(s3)
                  lb           t0, 20(ra) #end load_store_instr_stream_1
                  lh           t6, -180(tp) #end load_store_instr_stream_2
                  sh           sp, -16(s3) #end load_store_instr_stream_4
                  sb           zero, -3(s5) #end load_store_instr_stream_0
                  la           s5, region_0+1783 #start load_store_instr_stream_1
                  la           a6, region_0+1389 #start load_store_instr_stream_4
                  la           t1, region_0+1212 #start load_store_instr_stream_2
                  la           s3, region_0+506 #start load_store_instr_stream_0
                  la           t6, region_0+623 #start load_store_instr_stream_3
                  sh           s6, -5(s5)
                  lhu          s0, 5(a6)
                  sb           a2, 6(s5)
                  lhu          t2, -1(a6)
                  lb           s10, 16(s5)
                  lbu          s8, 154(t1)
                  sh           t5, 250(s3)
                  lbu          s10, -203(t1)
                  sh           a3, -7(s5)
                  lhu          zero, 16(s3)
                  lhu          s7, -9(a6)
                  lbu          t2, -2(s5)
                  sb           s1, -2(s5)
                  lbu          s0, -16(s5)
                  lbu          zero, 19(t1)
                  sh           s9, 168(s3)
                  lb           s6, -1(s5)
                  sb           s7, -2(a6)
                  sh           a1, -6(s3)
                  lhu          ra, -110(t1)
                  lw           zero, -9(a6)
                  lb           t4, 151(s3)
                  lb           s9, 14(t6)
                  lbu          t2, 252(s3)
                  sb           t0, 14(a6)
                  lbu          s7, 117(t1)
                  lw           s1, 15(a6) #end load_store_instr_stream_4
                  lhu          gp, 104(t1)
                  lh           t4, -105(t6)
                  lhu          t2, -13(s5)
                  lb           a7, 36(t6)
                  lb           s4, -209(t6)
                  lbu          s8, 96(t1) #end load_store_instr_stream_2
                  lb           s8, 2(s5) #end load_store_instr_stream_1
                  sw           a2, -55(t6) #end load_store_instr_stream_3
                  lw           a1, 158(s3) #end load_store_instr_stream_0
                  la           a7, region_0+628 #start riscv_load_store_hazard_instr_stream_0
                  sb           t3, 253(a7)
                  sub          t6, s1, tp
                  lh           s0, 390(a7)
                  lh           t6, 390(a7)
                  lb           ra, 942(a7)
                  sb           t0, -347(a7)
                  sb           s11, -347(a7)
                  lb           s5, 387(a7)
                  sb           zero, 387(a7)
                  sb           a6, 387(a7)
                  lh           s6, -296(a7)
                  sh           zero, -296(a7)
                  sb           s8, -296(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           t0, region_0+1914 #start riscv_load_store_hazard_instr_stream_1
                  lhu          s1, -420(t0)
                  sb           t6, -420(t0)
                  lbu          t4, -420(t0)
                  lbu          s6, -420(t0)
                  lb           s9, -1217(t0)
                  sb           t2, -1217(t0)
                  lb           s6, -1217(t0)
                  sb           a1, 68(t0)
                  sb           s5, 68(t0)
                  sb           a5, 68(t0)
                  sb           s9, -537(t0)
                  lb           s4, -537(t0)
                  sb           a0, -537(t0)
                  lbu          a1, -537(t0)
                  lb           s2, -1108(t0)
                  lhu          a5, -1108(t0)
                  slli         s4, s9, 22
                  sb           zero, -53(t0)
                  lbu          zero, -53(t0)
                  lbu          a6, -53(t0) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+230 #start riscv_load_store_rand_instr_stream_0
                  lui          a7, 211582
                  lbu          a2, 1227(sp)
                  lb           s1, 1334(sp)
                  lb           gp, 1486(sp)
                  sra          gp, t6, a1
                  lbu          s3, 1232(sp)
                  sb           s3, 839(sp)
                  lb           s11, 1414(sp)
                  srli         s4, sp, 18
                  xori         s9, a0, -525
                  sb           a0, 625(sp)
                  or           t3, s0, a1
                  sb           a3, 1409(sp)
                  addi         s6, s10, -1260
                  lb           s1, 1682(sp)
                  srl          s2, t2, s5
                  lbu          s0, 210(sp)
                  sb           s10, 1191(sp)
                  sb           sp, 962(sp)
                  lb           tp, 11(sp)
                  sh           gp, 1594(sp)
                  sh           t0, -6(sp)
                  lbu          a1, 1073(sp)
                  ori          ra, t3, -706
                  sh           a4, 462(sp)
                  xori         s2, sp, -90
                  sltu         gp, t6, t4
                  sltiu        s2, a5, 534
                  lb           a2, 1482(sp)
                  ori          a2, ra, -1368
                  slli         s2, a0, 27
                  slt          s4, s1, tp
                  sb           zero, 1167(sp)
                  srli         s6, a3, 26
                  lbu          s7, 1185(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  and          t1, s9, t4
                  ori          a7, a6, -835
                  slt          t1, t2, s6
                  xori         s3, ra, 1993
                  sll          s6, a6, ra
                  xori         s9, a3, 1277
                  srai         t4, a4, 5
                  slt          zero, a1, t2
                  xori         t6, a5, -1630
                  lui          t2, 693400
                  bge          a1, t1, 13f
                  bltu         s9, a5, 27f
13:               auipc        s7, 10180
                  sra          a5, gp, ra
                  nop
                  slti         t3, gp, -1789
                  srli         a5, s2, 2
                  andi         s2, s7, 1451
                  sltu         gp, a4, s5
                  xor          s4, t6, tp
                  ori          s8, t2, -47
                  sub          s9, s10, t1
                  nop
                  slti         ra, t0, 1370
                  sra          s4, a4, a5
                  sltu         s1, sp, sp
27:               srai         t3, t5, 12
                  ori          a6, tp, -687
                  sub          tp, s1, gp
                  ori          zero, a4, 665
                  srl          t2, a1, s5
                  bge          a6, s1, 50f
                  sub          s8, s3, s5
                  lui          a5, 744664
                  bge          s8, zero, 55f
                  ori          a7, sp, -1735
                  and          s4, s8, s8
                  slti         a6, s9, 1150
                  and          s8, t0, a2
                  slt          a2, a5, s1
                  sltu         gp, a0, a7
                  add          s5, t3, s3
                  bltu         s6, s9, 62f
                  sltu         s0, s6, a5
                  add          t3, t4, a1
                  blt          s7, s10, 54f
                  slli         t3, t4, 26
                  add          sp, ra, a5
                  ori          t4, s3, -765
50:               sltiu        t4, a3, -2021
                  sll          s10, gp, s2
                  bge          a6, a5, 66f
                  auipc        t0, 208126
54:               xori         a2, tp, -86
55:               xor          s1, t0, a3
                  and          s4, a7, t1
                  sltiu        t2, zero, -1770
                  addi         s8, a1, 1143
                  xor          gp, s2, t6
                  sltu         s5, a2, a1
                  sll          sp, s8, t2
62:               slt          t3, t0, gp
                  sra          gp, t1, s8
                  addi         a6, t2, 1933
                  andi         sp, s9, -1987
66:               beq          zero, gp, 68f
                  sll          a3, s2, t3
68:               slt          t0, t4, a5
                  or           t2, sp, ra
                  xori         s7, s11, -1771
                  xori         sp, s11, 274
                  sub          s6, s11, a1
                  xori         s9, ra, 204
                  bgeu         s8, s1, 88f
                  bge          s10, s1, 94f
                  addi         gp, t4, 606
                  sra          t4, a5, a5
                  or           zero, a5, t6
                  blt          s1, t4, 95f
                  nop
                  lui          s9, 26187
                  sll          s8, ra, s1
                  sub          a5, a2, ra
                  andi         t2, a0, 385
                  or           t1, a6, a7
                  sltiu        a7, t6, -1067
                  addi         t3, gp, 1620
88:               srai         t3, s9, 26
                  slti         a1, s5, -604
                  slt          a7, s4, zero
                  bne          s1, s8, 100f
                  auipc        t6, 339475
                  lui          a1, 1030711
94:               slti         zero, a4, 1925
95:               xori         s3, sp, -895
                  sra          s6, s7, gp
                  sltu         gp, a0, s0
                  sra          t2, sp, s0
                  lui          t1, 246189
100:              or           t0, a5, s4
                  bne          s7, sp, 108f
                  srli         s1, tp, 30
                  srai         a5, a5, 13
                  auipc        s11, 642775
                  ori          t6, a2, 351
                  srl          s3, t2, a1
                  slt          s11, a5, s1
108:              slti         t3, a2, -904
                  bgeu         t2, a5, 129f
                  ori          s1, a7, 172
                  ori          a1, t5, -1913
                  slt          s6, s1, a6
                  bge          s2, s6, 122f
                  slt          t1, ra, a3
                  bne          s7, a4, 123f
                  auipc        s11, 179032
                  sltu         s11, a2, t3
                  bgeu         t2, ra, 134f
                  srl          t2, s8, ra
                  sll          s4, t5, a1
                  slti         t4, zero, -1911
122:              srai         sp, t6, 22
123:              srli         tp, s3, 31
                  srl          s2, a3, a7
                  bltu         a0, s7, 141f
                  beq          ra, a6, 133f
                  slli         s0, t5, 26
                  bge          s4, s9, 139f
129:              addi         t1, a7, 832
                  srl          t0, s6, a6
                  ori          t6, s3, -369
                  lui          s6, 918461
133:              sll          a5, s9, gp
134:              or           t6, a5, gp
                  xor          a7, t0, s3
                  and          s8, s2, s5
                  slt          ra, t3, tp
                  bltu         s11, sp, 143f
139:              xori         a6, a4, 1655
                  ori          sp, s2, -336
141:              bltu         a0, t6, 151f
                  bge          sp, a7, 154f
143:              slt          t3, t4, s6
                  xori         s10, a5, -427
                  sltu         s4, s3, a1
                  blt          t2, t1, 164f
                  sltiu        tp, a6, -278
                  blt          s9, a7, 166f
                  sltu         a2, s5, zero
                  bge          s1, t2, 162f
151:              andi         a6, s5, 1294
                  bge          s4, s3, 161f
                  sltiu        a5, s0, 507
154:              srl          gp, s6, s1
                  bltu         a4, s8, 166f
                  nop
                  sub          a2, gp, s9
                  or           a1, a0, s2
                  blt          s9, a5, 169f
                  slli         s0, t0, 0
161:              bge          s9, a7, 166f
162:              bne          s7, tp, 174f
                  or           zero, a5, gp
164:              sll          s8, ra, ra
                  nop
166:              srl          t2, ra, a5
                  or           sp, s0, s6
                  bne          s6, s11, 177f
169:              bne          s2, s2, 188f
                  nop
                  sll          s1, sp, a1
                  bgeu         a0, t5, 180f
                  sltu         a7, a0, a0
174:              bge          a7, tp, 190f
                  bge          sp, gp, 180f
                  sll          a7, t2, sp
177:              xori         tp, s6, -1949
                  and          t2, s2, s9
                  and          t4, t5, s10
180:              blt          t6, s10, 198f
                  xor          s5, t1, a3
                  srli         s8, s4, 28
                  add          s6, s4, t1
                  bge          a2, a2, 189f
                  bltu         t0, a7, 194f
                  srli         zero, s10, 1
                  beq          a2, s8, 196f
188:              bgeu         s10, a1, 204f
189:              sra          s11, t4, s6
190:              bne          t4, a1, 202f
                  addi         a7, a0, 579
                  nop
                  sltu         t4, a2, a3
194:              bne          s3, a7, 208f
                  ori          t3, sp, 435
196:              sltiu        t4, sp, -1446
                  ori          s9, s8, 870
198:              bltu         t2, s4, 216f
                  sll          t2, s8, t3
                  ori          ra, t2, -366
                  bgeu         t6, zero, 216f
202:              sltu         gp, s6, s9
                  sltu         a3, a0, s0
204:              xor          s0, a4, s1
                  auipc        s0, 208840
                  xori         s4, zero, -468
                  srai         a2, s1, 23
208:              and          ra, a7, a6
                  auipc        t4, 310947
                  bgeu         sp, t3, 221f
                  xori         t6, a6, 2010
                  auipc        s3, 361785
                  xori         t1, t5, -1394
                  bne          t5, sp, 225f
                  bgeu         a2, a6, 233f
216:              sub          s0, s11, t0
                  auipc        s8, 1000331
                  sra          s8, s11, t3
                  beq          s0, s8, 226f
                  lui          a5, 132389
221:              xori         t6, t0, 154
                  sltiu        a1, s5, 1981
                  bne          a2, a5, 242f
                  sltu         s2, tp, s10
225:              xor          gp, a7, t2
226:              bge          s8, a0, 228f
                  nop
228:              slt          s5, a6, a1
                  xori         a1, a0, -98
                  or           s7, t0, t4
                  xor          s9, sp, s11
                  sub          tp, gp, t4
233:              bltu         s11, s11, 253f
                  bne          s5, t2, 250f
                  srli         a3, a7, 29
                  bge          a4, s4, 238f
                  ori          a3, a1, 509
238:              auipc        zero, 177425
                  slt          tp, s9, t4
                  bltu         zero, a1, 250f
                  blt          a2, t5, 248f
242:              bne          s0, a7, 256f
                  sll          s4, t4, a7
                  sub          t1, s10, ra
                  blt          t4, s9, 255f
                  slti         s7, s0, -2035
                  srl          a6, s8, s4
248:              andi         a3, a3, -190
                  sltu         s0, s8, a3
250:              srl          s4, a1, s6
                  add          s4, t2, a1
                  srli         t6, a4, 28
253:              srli         s5, s5, 31
                  slt          t1, s6, s2
255:              bltu         s5, t0, 275f
256:              sltu         a1, zero, a5
                  nop
                  or           s0, t1, t3
                  sra          a5, a0, s0
                  sub          t1, sp, t4
                  sll          a5, s2, s1
                  addi         s5, s8, 348
                  beq          s3, a5, 271f
                  andi         t2, s3, -669
                  and          s11, s2, sp
                  or           sp, a3, a4
                  bgeu         a1, s1, 272f
                  andi         s7, a7, 1737
                  bge          sp, s0, 278f
                  nop
271:              xor          t6, s7, s4
272:              nop
                  xori         s7, t0, -1095
                  bne          s2, s2, 282f
275:              addi         a2, gp, -393
                  sll          a2, s10, a4
                  srai         s11, s10, 14
278:              slli         t6, s10, 22
                  bge          s10, a1, 289f
                  slt          s1, a5, a6
                  beq          zero, t5, 289f
282:              srli         t1, a3, 22
                  srl          s0, t0, s10
                  beq          t2, t3, 289f
                  add          tp, t3, a3
                  sll          t0, a5, s10
                  and          s8, a0, s6
                  lui          sp, 874096
289:              xor          a2, s10, tp
                  srl          t3, zero, s8
                  lw           s3, 4(a4)
                  sra          gp, s10, s3
                  sra          a2, s9, s2
                  add          s9, s1, s1
                  nop
                  addi         a4, a4, 64
                  lui          a7, 408914
                  xori         a5, t0, 1576
                  sltiu        zero, s11, 888
                  and          ra, s6, a5
                  srli         t0, t4, 31
506:              addi x29, x19, 0
506:              jalr x29, x29, 0
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
.word 0x74a4776e, 0x9ab2b627, 0xec7ddcdd, 0xd6f123e1, 0x5925f5c6, 0x926ac411, 0xce6a95ab, 0x451ab5b3
.word 0x3fcb090e, 0xc6ffb879, 0x1733bf54, 0xad14116b, 0x107507f7, 0x564d26b2, 0xf7eeb43a, 0x4bae01fa
.word 0x32a11c59, 0x0cf31539, 0xcca42b9c, 0x6534a1d3, 0xd81baa02, 0x81a514c0, 0xb18512c0, 0x0554f87c
.word 0x17e40b4d, 0x1a4672c5, 0x58811849, 0x3b46fd11, 0x2564039a, 0x28110519, 0x5b43f9e8, 0xa7daae9d
.word 0x80d49e06, 0x052a8d3a, 0xbbad72ab, 0x091341fb, 0x61b85e0f, 0x91e1202c, 0x85e9df11, 0x65fd3532
.word 0x9d1572af, 0x70d30cd9, 0x4692a93d, 0x4db3426c, 0x7f651263, 0x6fb2c5cf, 0x8902be37, 0x246fae6c
.word 0x2bae3a91, 0x8c5b2e64, 0x0a3bd830, 0x749f9da9, 0xc99dbba0, 0xf9a77a79, 0x2244ad07, 0x7b6c1b0f
.word 0xc9793236, 0x1b6b3754, 0x7ebbf9f7, 0x2bc35873, 0x623984f1, 0x63f7fce8, 0x04207a1a, 0xaff1fbf6
.word 0xf7fff55a, 0xa9ce67ae, 0xce8d7d80, 0xfecea1ea, 0x4effdcea, 0x149c495f, 0xf1b4acb7, 0xaab55ba9
.word 0x7819a297, 0x8256af1e, 0xd790955f, 0x15845406, 0xf459c3f7, 0x6eb5844b, 0x8a1b306f, 0xe9369161
.word 0x1c4c3b21, 0x0c5e7735, 0x6f56be23, 0x927dce06, 0x3efcb53b, 0x158995b9, 0xa24bb7ee, 0x1e267523
.word 0x0771e60b, 0x3569026a, 0x16e978f8, 0x2b33fc18, 0x271a9936, 0x1cc399b4, 0x3a61b647, 0xeeae1c76
.word 0xa4645e8c, 0xdea4f5e5, 0x5c3d52ba, 0x5368d86d, 0xc8318a67, 0x8e1db3dc, 0x6bc563b2, 0xc73d296a
.word 0x5bcf7611, 0xd02b0b6e, 0xf25a4076, 0x48b35634, 0x24f868e0, 0x289999a6, 0x56a2352d, 0xc71d83b3
.word 0x9055247b, 0x412dd6b2, 0x7921dd25, 0x8a561f12, 0x602adcbf, 0x60d9ab22, 0xf3b0b195, 0x8e1f431c
.word 0x1cbcd207, 0x8d2c7dd4, 0x40978f57, 0x11632ad3, 0xbec632ac, 0xd04813ed, 0x7c9d9673, 0x4bcc8908
.word 0x46463516, 0x3960817f, 0x99c3a88b, 0x8442ea51, 0x1a00f1cb, 0xb56214e6, 0x566968ba, 0xf9224c85
.word 0x0ea9c897, 0x68676117, 0xd7c87dde, 0x1413cf13, 0x1b504ff0, 0xb41cf620, 0x064df835, 0xd811ec5c
.word 0xb2b63cb1, 0x119eb942, 0x0756f5eb, 0x03c88238, 0x7b505273, 0x8ee5bb70, 0x0c82262f, 0xbd5019cd
.word 0xd66fe151, 0x7897e37b, 0x41fdaeab, 0x6e877274, 0xfd01fbbb, 0x89ea85dc, 0xec9b6da5, 0x9079c174
.word 0x81ab000f, 0x5dba0c90, 0x876b73c3, 0x770fb7ca, 0x216c291e, 0xae807344, 0xbcbd6749, 0xda297a84
.word 0x3259fe48, 0x0f8387f5, 0xd8788c5a, 0xa3f2471e, 0xa88e2b5c, 0xe74123c2, 0x2c1dabcd, 0x57a6d8e2
.word 0x59ade071, 0x504650c2, 0x662841b2, 0xdbe9cebd, 0xd82b578a, 0xbca663aa, 0x000f602f, 0x0bad783a
.word 0x15d78b29, 0xf6580a14, 0x09e34b8b, 0x484cbe90, 0x14b759df, 0x2ac998c1, 0x145ecc88, 0xfd39b61d
.word 0x4acb8927, 0x79a8653c, 0x6e94d713, 0x4213a547, 0xe7053df5, 0xa366253a, 0x1a95ae33, 0x31db16ba
.word 0x6f88e560, 0x2fa8534c, 0x1428b0cf, 0x6893ffdb, 0x7c976a89, 0x30fd0af0, 0x49a74886, 0xd8486402
.word 0xe08da7e8, 0xe00dc9d2, 0x871a54bd, 0x0655733c, 0x8d766b30, 0x3dc3df55, 0xe057e9a6, 0xaa6bca8e
.word 0x023882be, 0x3fe1f26d, 0x9522a1b9, 0x88d81e70, 0xa499b6ab, 0x4ff2f322, 0x8b6fead6, 0x5ff14260
.word 0x7471da81, 0xf4f1db93, 0x3a6cad0e, 0x203eb9eb, 0xe9c66fed, 0xb27c54a1, 0x7a040695, 0x244beab0
.word 0xbd68337f, 0xfa21e7ca, 0x43a0c489, 0x847b7ba3, 0xd6724f84, 0xb4f94ef7, 0xcff9d4d2, 0x634e2b53
.word 0xa777f157, 0x65f4cb8f, 0x07a769ef, 0x026a357e, 0x9a6e469e, 0x843960d3, 0xfdae4f23, 0x5c315999
.word 0xa263314e, 0x2a88bb88, 0xfdbbd590, 0x56820689, 0x3cea26c8, 0x8cf20afe, 0x90b25b82, 0x2636cd67
.word 0xee1e09d5, 0xb91bb2bb, 0xaf81ec04, 0xa7e90480, 0x2e16a59f, 0xfde489a4, 0xf0b0b1db, 0xb0006bcd
.word 0x89c1105f, 0x0bf1d0fc, 0xb70fa78c, 0x3f43979b, 0xd8a45128, 0x3e56395d, 0x218ee179, 0x1a5a0d1a
.word 0x4aa7cfd6, 0xaec5c04b, 0xb7ece798, 0x4b6b95e1, 0x84c9fb71, 0x4b18b171, 0x29eaf3f8, 0x983c901a
.word 0x57ccfaaf, 0x420d30be, 0x56f52b0f, 0x871855b0, 0x83f5ba58, 0x15d3b0d8, 0x621b3ef8, 0x89aa616d
.word 0x78a4c999, 0x74fa6ffb, 0x5f0c3956, 0xdd9a8721, 0x92d05643, 0x6ded30f7, 0xf16cfb35, 0xc99dbe4f
.word 0xf50d782b, 0x7c7c3e08, 0xc4e15eb8, 0x4c62735c, 0x9f27cc83, 0x3dedef5f, 0x1e93d0bb, 0xb19a011c
.word 0xf1b4d52e, 0xcadf2025, 0xb4c60ded, 0x928928d7, 0x08e4daf1, 0x0dbaf899, 0x5d0554a3, 0xf4482696
.word 0x81f3aeaf, 0x46f128af, 0x99b95254, 0xe1ec6328, 0xdaeadae4, 0x5a7f8d66, 0xd0a25644, 0x933fad6b
.word 0x06c0163b, 0x2c2768de, 0xd8bca804, 0x222bb40e, 0xbcd4208d, 0x9a266d94, 0x5c61f91f, 0xb634592e
.word 0x5aac7cc0, 0x6c03e5b1, 0xe4ce3f55, 0x2215041b, 0x26b1e125, 0xb3066173, 0xb1a12db7, 0x30783917
.word 0x5848d3d6, 0x5782e78b, 0xbda5e84a, 0xbffb2d77, 0x7387ec65, 0x7b3e54e1, 0x6dda03d4, 0x5a0ab552
.word 0xdd383f3c, 0xe52068a0, 0xd9ac5de7, 0x4f2c0347, 0x0d4471d5, 0x6e038c71, 0x31ab1813, 0x599867fe
.word 0x61813e5f, 0xd82eef22, 0xca031e22, 0x683dd37f, 0x8cf9b6c5, 0x99dc6c92, 0xfd433fe1, 0x176c682c
.word 0x2afef845, 0x4a0f4784, 0xeb5c628a, 0x0a36240e, 0x1df28395, 0xd902eba0, 0x2d5c70df, 0x02d54459
.word 0x5410d4de, 0xcdf4cdcf, 0x10e97b2f, 0x688e4e6c, 0x5dd30388, 0x80efba82, 0xd1c71a26, 0x89202cc6
.word 0x83275487, 0x6cdc1c09, 0x643e9f1a, 0x59ea647c, 0xe7545790, 0x6f983aaf, 0xa572e197, 0x904a6a6b
.word 0xabfbafa5, 0x7b79d06f, 0x536878cb, 0xaf32de47, 0xa9451792, 0x772f8ed5, 0x7d19ec3f, 0xc444e1ca
.word 0x72f8c5f9, 0xef2b7bd5, 0x032f4086, 0xcdefbf2b, 0x571d5b4d, 0x47d08f80, 0x0649d794, 0x2b3b175e
.word 0x125cdf6d, 0x2ec624e9, 0x7b7de254, 0xc23a77b2, 0xd3ecc624, 0x480d1a3f, 0x7f6e85a4, 0x02289bed
.word 0xa65d328c, 0xa84d4a92, 0x39f9637f, 0x861df7ca, 0x8e278887, 0x33abf2d7, 0xa3ca88a6, 0xc7041eef
.word 0xaaeb1f34, 0xe45fbecf, 0xe196d169, 0xe8a04614, 0xa2e75bea, 0xf20e659c, 0x67afd714, 0xbb85dc8e
.word 0xedd26549, 0x70ec1bb1, 0xf86fa491, 0xa8b18a68, 0xab6900f5, 0xf67bfeab, 0xdcf5018b, 0x304816a2
.word 0x61726bb9, 0x5bddf0f7, 0x7f35b752, 0x11088af5, 0x4590b679, 0xd22456eb, 0x9d7ee539, 0x914b48da
.word 0x66e03ab2, 0xd1ea0b03, 0x01b5c862, 0xd535c471, 0x56231965, 0xf797cc30, 0xe72b733c, 0x925d79f0
.word 0xf38c2b00, 0x92a50a17, 0xa82405b7, 0x699dc676, 0x0be3dc96, 0x651de7b7, 0x549089c8, 0xfe1e7753
.word 0x360edebd, 0x5a93cf5e, 0xad5ab2be, 0xec5895a2, 0x6e072131, 0xcd5d6455, 0xc389ea0b, 0xac99c629
.word 0xddfaf4dc, 0x119e3639, 0xd44a2e1f, 0xa854c6f3, 0xe42d6c16, 0x81e30ea3, 0x988e5af5, 0x31800609
.word 0x1c763e83, 0xbad5cf11, 0xb4f58c90, 0x54aa03cb, 0xdc08fa83, 0x2f67eccd, 0x655ea38b, 0x35bf2933
.word 0x6b490baa, 0xe05c97c7, 0x7737c258, 0x9cc0bd70, 0x909ab6ba, 0x46d08b51, 0x672c8cfc, 0x829fd0e0
.word 0xeb392e62, 0x88880839, 0x27f48763, 0xa176ec0c, 0xc9e97041, 0xd2d367a7, 0x6ce1c6b7, 0x4ec36967
.word 0xf70cc040, 0x4367bba4, 0x3c23eb05, 0x4c518571
.section .region_1,"aw",@progbits;
region_1:
.word 0xcb9619e6, 0x8b369399, 0x0509e2dd, 0xf512c142, 0xd788f54f, 0x37e2618a, 0xf79c0a96, 0xead06441
.word 0x04db2cf6, 0xe9fed568, 0xcab04730, 0x9147cfa6, 0x1e3cad8c, 0x7429efd0, 0x5f4171f3, 0xcdca2b3b
.word 0xf26e9d43, 0x076a5e37, 0x921f3314, 0x1594225a, 0x4ddd96bb, 0x4f19f28c, 0x8fdee281, 0xcc3f629f
.word 0xd44ae644, 0xe1468a57, 0x2b1ca573, 0x973fa371, 0xc1550701, 0xbdffb3fb, 0xc535d7b7, 0xea5c5978
.word 0x96beffc2, 0xba9008c8, 0x955c3494, 0x398d9f63, 0xe5be563c, 0x8e3edb64, 0xa4feee76, 0x5c1b05b0
.word 0x1e1fffc9, 0x24822b70, 0x5f09ceb2, 0x2ec0360e, 0xcb3a81c6, 0xcda48977, 0x2b853648, 0x0765f791
.word 0x26b7f037, 0x6098b9d8, 0xd4dccc02, 0xb0a36a37, 0xd058212a, 0x91695207, 0xd5b09188, 0x477e8e8a
.word 0x29d90d04, 0x430e7a8b, 0x98459b29, 0x98e4a59d, 0x6202775b, 0xb58aa0ea, 0x921352da, 0x1a3c3138
.word 0x63a228e5, 0x451777f6, 0x637b7349, 0x51b757ea, 0x49e3b991, 0xe9dff0a8, 0x768a1e43, 0xccb8cd63
.word 0x661acaf1, 0xee6e8a17, 0x9557ea5d, 0xbb8a2336, 0x7cff1cac, 0xabbc15ec, 0xf1b9314a, 0xf99a475d
.word 0x61f6045d, 0x15b828b4, 0xf0438735, 0x298070b7, 0xcca31994, 0xe1a9eebd, 0x4290fc5b, 0xc7770813
.word 0x083dd58f, 0x195f4f88, 0xc231dcc5, 0x2406da47, 0x686835f1, 0xf1235f95, 0x126fca40, 0xa879ce89
.word 0x8c51d3d2, 0x99eec249, 0xefb3628c, 0xf92b96c6, 0x3b05854c, 0x2488ae86, 0xb16d6eb2, 0x7097e085
.word 0x5fc3cc0f, 0xaf927e16, 0x94a3c18c, 0x19d1a255, 0x2d329243, 0x824fb4ef, 0xa8c06aa8, 0x9e41ae6c
.word 0x63fe0619, 0x5f2e819e, 0x281fb85c, 0xc2f0c4a4, 0x35867453, 0x117a8bab, 0x7d0ebb37, 0x1199b6da
.word 0x30bbb557, 0xe4d32206, 0x860ef4ab, 0xfaee366e, 0xa7cd0647, 0x00a7e62f, 0xb4b8fe19, 0xaa7f8a70
.word 0xd7a0ad68, 0xc10ac416, 0x2313d52e, 0xe7f5611d, 0xc4fdae79, 0x8739522a, 0xc3f3cbcd, 0xe285ddf6
.word 0x3eade12f, 0xf4586b21, 0x024e7d1d, 0xce78133e, 0xa357263a, 0x7ca330e7, 0xab734f79, 0x15e2ba45
.word 0xb8fb279d, 0x39961b85, 0x92cea863, 0x1f500957, 0x99ec8bc7, 0x201a67dd, 0x255bffc8, 0x25d3c5e0
.word 0xa51c02e5, 0xb8c23dba, 0x0ecefb3e, 0xa9b12485, 0xdafef294, 0xbfbeb56f, 0x470dd725, 0x69f78175
.word 0x1364c9db, 0xc136ce3b, 0x7562e7ed, 0x76bbd679, 0x2a4df3cd, 0xb4a179fb, 0xa9aa72e0, 0xd4bc7a95
.word 0x3ed36fa5, 0xc0964dc9, 0xf0b5cc01, 0xb7e1fa25, 0x83be2126, 0x98b711dc, 0x55fe377b, 0x6ddcda74
.word 0x08e300c5, 0x22b203bc, 0xc9d28eed, 0x6d6394b9, 0x610c1a40, 0x8f45ce50, 0xd92af686, 0x0fa03623
.word 0x0814704a, 0x9fdb54de, 0xd942efd5, 0x2f84c358, 0x488f76df, 0xbd7c0ac0, 0xd827313d, 0xb4b833c1
.word 0xf5571515, 0x08c9dc65, 0x044d2437, 0x2a90af3a, 0x47c8f4c2, 0x42374809, 0xcfb503f9, 0xb6fc1d73
.word 0x67b2750c, 0xd66bd932, 0x7af834d3, 0x6dbe2462, 0x1a7d859e, 0x318a475f, 0x5dbaac10, 0x4db298f8
.word 0x440a1297, 0x74e0d0dc, 0xed577864, 0x39b6250b, 0xf86ef2b5, 0x0966086d, 0x2a8b56a0, 0xe4604cc5
.word 0x21114c72, 0x4e993d73, 0x00180596, 0x41f7e419, 0x6da42ee1, 0x8bc417ee, 0x1fab398b, 0xc8aae3f2
.word 0x3ffd7119, 0xffaf218b, 0xf95d2d43, 0x7ff776ca, 0x9368af3c, 0x58f71210, 0xe9723dd4, 0xf1d51d57
.word 0x07cb1fee, 0x2a59ba85, 0x5ee60299, 0x73ce500e, 0x2e5b54ee, 0x800551d0, 0x1523df2b, 0xbf26e32d
.word 0x8af2cfb3, 0xf8291e81, 0xe97fb7ef, 0x08bbdbae, 0xf7d29224, 0x2cea9efe, 0x320109f9, 0xd512b6e1
.word 0x5bd613b6, 0x478bcf87, 0x63acfc2f, 0x54d61862, 0xc69d9549, 0xe7a454c4, 0xeadd3890, 0x12e7a09d
.word 0x2c6cd8ed, 0xc2a9ddca, 0xc15b4e53, 0x405237d3, 0xfe2f4967, 0xaace3875, 0xb9814ff7, 0x1ad774f3
.word 0x4f58cf45, 0x0240b80b, 0x40ef8272, 0x1083450a, 0x65b1a6c9, 0x343d64eb, 0x916f8788, 0x8bc9509c
.word 0x7ddad5ac, 0xc29b56e4, 0xfdeb1d67, 0x45fbed0d, 0xfd22b240, 0x2499c7a7, 0x262e3841, 0x74a4de36
.word 0x35305afe, 0xb10318ec, 0xd7676121, 0x5b50af3d, 0xa085be69, 0x65a1e3ad, 0x065ec1c5, 0xaa373e43
.word 0x11da3357, 0x2e1bf1e1, 0x3ff920e4, 0x17a9168b, 0xe80360b4, 0x99f7f18f, 0x221a7dd7, 0xa0d1f8de
.word 0xc7574b7e, 0xb5855f3d, 0x062a8389, 0x812585f0, 0x8a65923f, 0xb23766c4, 0x7a0ee8cd, 0x6144e035
.word 0xba0626ef, 0x99cd5be7, 0xb485d9f4, 0x303bab09, 0x10702ca8, 0x600b57cf, 0x302bb089, 0x75982f2b
.word 0xc423f7ed, 0x5f14dff0, 0x854a5fac, 0xb48e1e7d, 0x190a0986, 0xd7cb56e0, 0x7f182549, 0xd3a13411
.word 0x46db4882, 0x1d01d0f1, 0xb1137f11, 0x03b9ec5b, 0xcbf67e9a, 0xf796fe4f, 0x347e7cfe, 0x726bd46b
.word 0x01502d5c, 0x3a5a5eff, 0x585f56c4, 0xe0aeeb53, 0x3199042c, 0x6983d369, 0xdb4afb6f, 0x4f8192f6
.word 0x34952fdf, 0xfd13b46d, 0xe81b4fa2, 0x5afebb5e, 0x66c2150e, 0xa06ec9e0, 0xd1e1b97c, 0x7b9a41a8
.word 0x2aa55afb, 0xe8a0e581, 0x36dd7a9b, 0x675910ac, 0xfbe8c4ad, 0x7d5ac1da, 0xce4527e8, 0x946a5ed4
.word 0x49f1ec1e, 0xeebb7898, 0x998c4da0, 0xef35c9a2, 0x4af7ad0c, 0xaebd72cd, 0xe6035fc9, 0x0e800f19
.word 0x36293bcf, 0x3f9a9688, 0x77f7bbf5, 0x8cc6caa6, 0xbdd88d8a, 0xc2a7a540, 0x2567eec8, 0xe0a8c084
.word 0x8be47182, 0x6de6e3db, 0x4ef7ab37, 0x5447d868, 0xe77ae887, 0xd1960089, 0x49afedb5, 0xe098f71a
.word 0x5e1a1904, 0xf62a92de, 0xf4e5364e, 0x3dd11203, 0xa6596c3a, 0xcabe58b0, 0x26ec0f82, 0x0f7819c3
.word 0x402ad7a9, 0x5f998d5e, 0xd878b0b2, 0x0e829812, 0x28b28aa3, 0x01f93930, 0xd5242a43, 0x88ff3a8c
.word 0x39afc9f1, 0x4790f31f, 0x542bf6cf, 0x2e5855c9, 0xfbdffadb, 0x896d17c1, 0x8b397726, 0xbe77d812
.word 0xcaf7dc47, 0x807a7a1b, 0x92c7b28d, 0xaef0b188, 0x7e00e40f, 0xadfa9c10, 0x9ad46dde, 0x104e6e0d
.word 0xa46c29dc, 0x31b318bc, 0x5c028be5, 0x1ab3fac3, 0xe760c595, 0x39854ce6, 0xa57e4605, 0x928b6d51
.word 0x749876bd, 0xa96c6936, 0x325f0dac, 0x92feee43, 0x319b033d, 0x1f2fecef, 0x560254d7, 0x55e77514
.word 0xb1058404, 0x4f275852, 0xf1032dbe, 0xf549b169, 0x8153314c, 0x26adbbf5, 0x92fcac37, 0x86073053
.word 0xf1abb630, 0xe9ffa239, 0x6961cedd, 0xef9bbd44, 0x8338ef70, 0xb506b92e, 0x15247b66, 0x9eadfbdf
.word 0x91cba37e, 0x2d74ec07, 0x09339b0c, 0x9c03d67e, 0xb2c6ee85, 0xf9a8a7e6, 0x322a1d97, 0x44d40d43
.word 0xc52baaa0, 0x802400d1, 0xcc3dcb38, 0x8139ed56, 0x26710a40, 0x2e00c05c, 0xfd53c7ac, 0xddf3fb8b
.word 0xf18bc3bb, 0x19a802e5, 0x098b7f55, 0xd3a31cea, 0xbe3cacf0, 0x489f375d, 0x0812abbf, 0x3d16546d
.word 0x3d45fe40, 0x3474eb34, 0xccb42286, 0x36fcc1a1, 0xcf22717a, 0xf6419c71, 0xb6c751cf, 0x983488a3
.word 0x01ac4e1d, 0xb6359d6d, 0x472d1d28, 0x6d8c9560, 0xd88f8d7f, 0x25b59e1d, 0xf3377747, 0x871ee8dc
.word 0xbf3b05e6, 0x37363b1c, 0x8ff97290, 0x88aa1af5, 0x6fda55c3, 0x9ec9b761, 0x8a1f77f6, 0x13be2fed
.word 0x52787d9a, 0x943618e0, 0x79ed0026, 0x05678c9e, 0xd058b351, 0xadf201f7, 0xecd72085, 0x11f394bb
.word 0x6bb7ea3a, 0x00d2ad1c, 0x2a5b6c87, 0x030475f9
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x10, x14, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x25, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x25, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x25, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x25, x2, ecall_handler
                  li x2, 0x1
                  beq x25, x2, instr_fault_handler
                  li x2, 0x5
                  beq x25, x2, load_fault_handler
                  li x2, 0x7
                  beq x25, x2, store_fault_handler
                  li x2, 0xc
                  beq x25, x2, pt_fault_handler
                  li x2, 0xd
                  beq x25, x2, pt_fault_handler
                  li x2, 0xf
                  beq x25, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x14, x10, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x10, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x10, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x14, x10, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x14, x10, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x14, x10, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
