.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0xf
                  li x1, 0x80000000
                  li x2, 0xc4f5eaea
                  li x3, 0xfa26f375
                  li x4, 0xf1701761
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0xfb1a9b0b
                  li x8, 0x9fce6912
                  li x9, 0xdd2a6c43
                  li x10, 0xf
                  li x11, 0xf
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0xb
                  li x15, 0xf2d4d476
                  li x16, 0x2ea143f5
                  li x18, 0xf66239dd
                  li x19, 0x1
                  li x20, 0xf
                  li x21, 0xfaf687f8
                  li x22, 0x6
                  li x23, 0x0
                  li x25, 0x0
                  li x26, 0xa53422a4
                  li x27, 0x80000000
                  li x28, 0xdd424a49
                  li x29, 0xf10cc6cf
                  li x30, 0x0
                  li x31, 0x9ffc1a6c
                  la x24, user_stack_end
main:             add          s6, s2, a5
                  sub          t1, a4, t4
                  slti         t5, sp, 1916
                  la           a0, sub_2
                  sltiu        t4, t5, -1717
                  addi         a0, a0, 765
                  auipc        s4, 461781
                  xor          gp, gp, t5
                  slli         s6, s8, 6
main_j2:          jalr         ra, a0, -765 #jump main -> sub_2
                  sll          a2, s2, a5
                  add          a3, a0, s4
                  slti         t3, s2, -1953
                  la           s1, sub_1
                  addi         s1, s1, 50
                  ori          s4, a7, 351
                  beq          s6, a7, main_j3 #branch to jump instr
                  srai         s11, s4, 23
                  ori          a5, t0, -708
                  and          s10, s0, s10
                  xori         s6, a7, 945
                  andi         a2, a7, -239
                  xor          s0, a4, t3
main_j3:          jalr         ra, s1, -50 #jump main -> sub_1
                  la           t5, region_0+27 #start riscv_load_store_rand_instr_stream_0
                  or           a2, s10, a3
                  and          a5, s11, a7
                  ori          s4, s0, 1844
                  sh           s3, 1083(t5)
                  sh           s7, 29(t5)
                  lhu          a3, 1641(t5)
                  ori          a1, s8, -980
                  andi         ra, a2, -424
                  lb           t4, 820(t5)
                  slli         zero, tp, 15
                  xor          s10, zero, s10
                  or           zero, a7, s11
                  lbu          a5, 40(t5)
                  xori         s2, a4, 1331
                  lbu          s2, 386(t5)
                  lb           gp, 1379(t5)
                  sltiu        a4, t1, -1878
                  sll          s11, a7, s8
                  slli         ra, t1, 28
                  lbu          a2, 1720(t5)
                  sll          s1, s2, ra
                  sb           t2, 691(t5)
                  srli         gp, t2, 8
                  lbu          ra, 669(t5)
                  lui          t1, 169073
                  sltiu        s0, s9, -1902
                  lb           a5, 564(t5)
                  sb           s2, 1665(t5)
                  auipc        s6, 706174
                  sb           s7, 98(t5)
                  sw           ra, 621(t5)
                  lb           s6, 642(t5)
                  srl          gp, t2, tp
                  lbu          gp, 1764(t5)
                  lb           s4, 249(t5)
                  sb           s9, 281(t5)
                  sb           s8, 274(t5)
                  sra          t4, tp, s3
                  sltu         s9, gp, s3
                  slt          s6, t3, t1
                  auipc        sp, 676082
                  srl          s11, s2, a6
                  auipc        s9, 580831
                  andi         a1, t3, -735
                  and          s5, sp, t6
                  lbu          s11, 1792(t5)
                  lbu          s5, 48(t5)
                  sb           s11, 996(t5)
                  lb           s0, 1024(t5)
                  addi         t2, s8, -1258
                  sb           sp, 1692(t5)
                  lh           s2, 903(t5)
                  sb           s10, 1378(t5)
                  sll          t4, a5, s5
                  lhu          t2, 781(t5)
                  auipc        sp, 171645
                  lb           s11, 339(t5)
                  lbu          ra, 172(t5) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_1+986 #start load_store_instr_stream_1
                  la           s0, region_1+1894 #start load_store_instr_stream_2
                  sb           s3, 11(a5)
                  la           ra, region_1+1283 #start load_store_instr_stream_0
                  lh           t2, -13(ra)
                  lbu          s11, -2(ra)
                  lb           s10, 32(s0)
                  sb           gp, 5(ra)
                  lb           a1, 0(a5)
                  lb           s3, -29(s0)
                  lh           tp, -15(ra)
                  lbu          a6, -847(s0)
                  lbu          s3, 6(ra)
                  lbu          gp, 1(a5)
                  sh           a3, 16(a5)
                  lbu          zero, -1781(s0)
                  lb           a3, 8(ra)
                  lhu          t3, -1110(s0)
                  lhu          t6, 16(a5)
                  sw           a0, -86(s0)
                  sw           a5, -15(ra)
                  lbu          t5, -161(s0)
                  lbu          gp, -1221(s0) #end load_store_instr_stream_2
                  sb           a0, 0(a5) #end load_store_instr_stream_1
                  lhu          s1, -5(ra)
                  sb           s2, 12(ra)
                  sb           s6, 7(ra) #end load_store_instr_stream_0
                  la           sp, region_0+708 #start riscv_load_store_hazard_instr_stream_0
                  lb           tp, -11(sp)
                  lhu          a2, 2(sp)
                  srai         s5, a6, 23
                  auipc        zero, 842448
                  lbu          a4, 13(sp)
                  lbu          t2, 13(sp)
                  lb           t0, 13(sp)
                  lw           a3, -12(sp)
                  sw           zero, 0(sp)
                  or           a2, a6, a6
                  lb           s3, 7(sp)
                  lbu          a5, 5(sp)
                  sb           t5, 5(sp)
                  lbu          s5, -9(sp)
                  sb           t3, -9(sp)
                  sb           a0, -16(sp)
                  or           s6, a4, t0
                  xor          t3, s5, s6
                  lb           t1, -12(sp) #end riscv_load_store_hazard_instr_stream_0
                  sub          s3, gp, zero
                  srai         s1, a0, 3
                  bne          a1, s5, 8f
                  slti         s1, s2, 1344
                  slt          t2, s10, t1
                  xor          a3, s6, s9
                  ori          a6, gp, 614
                  sub          a6, s2, ra
                  slli         s6, s0, 8
                  la           t1, sub_1
                  srli         gp, a1, 26
                  nop
                  addi         t1, t1, -163
                  slt          s6, s11, a6
                  slti         ra, t5, -1149
                  or           t3, s11, t6
                  slt          s10, s0, s8
                  bgeu         a5, a0, main_j1 #branch to jump instr
                  slti         s11, a4, -1466
                  sll          s6, s3, s11
main_j1:          jalr         ra, t1, 164 #jump main -> sub_1
8:                ori          a6, t3, 207
                  slt          t2, s4, a7
                  slt          tp, s10, tp
                  bgeu         a1, a6, 15f
                  bge          s7, s0, 15f
                  sll          a2, a4, s8
                  srl          s9, ra, tp
15:               sltu         a5, a4, zero
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            or           tp, s11, a5
                  blt          t3, a4, sub_2_stack_p
sub_2_stack_p:    addi         s8, s8, -20
                  and          t0, gp, sp
                  sw           ra, 4(s8)
                  add          a5, s3, s9
                  and          s11, s11, s1
                  xori         s9, s8, 1245
                  la           s10, region_0+1288 #start riscv_load_store_hazard_instr_stream_6
                  xor          s9, t0, a0
                  sb           s10, -785(s10)
                  xori         a1, s11, 112
                  srli         t1, t3, 13
                  sb           t1, 618(s10)
                  lh           s1, 618(s10)
                  sll          t0, s1, ra
                  lhu          a4, 618(s10)
                  sw           a0, -1136(s10)
                  sh           s8, -1136(s10)
                  lb           t5, -1136(s10)
                  lb           s1, -824(s10)
                  lw           t2, -824(s10)
                  lbu          a4, -824(s10)
                  addi         a4, sp, 1372
                  sb           a4, 35(s10)
                  sb           sp, 35(s10)
                  sb           a2, 35(s10)
                  lb           gp, -261(s10)
                  lbu          t3, -261(s10)
                  sb           s3, -261(s10) #end riscv_load_store_hazard_instr_stream_6
                  la           t4, region_1+1162 #start load_store_instr_stream_3
                  lbu          ra, 19(t4)
                  lbu          gp, -43(t4)
                  la           s0, region_1+60 #start load_store_instr_stream_1
                  lb           s5, 43(t4)
                  la           s2, region_1+713 #start load_store_instr_stream_2
                  lbu          t3, 677(s0)
                  lbu          a6, 62(s2)
                  la           t2, region_1+462 #start load_store_instr_stream_0
                  lbu          s10, 309(s0)
                  lhu          a2, 1148(s0)
                  lbu          s3, 1395(t2)
                  lb           a4, -63(s2)
                  sb           t0, 364(s0)
                  lbu          s1, 24(s2)
                  lh           a1, 1406(t2)
                  lb           s11, -49(t4)
                  lbu          a6, 62(s2)
                  lb           s5, 805(t2)
                  lhu          a4, 276(s0)
                  sh           a4, 400(t2)
                  lb           s5, 36(s2)
                  lbu          s1, -120(t2)
                  lb           a6, 1631(s0) #end load_store_instr_stream_1
                  lh           a0, -17(s2) #end load_store_instr_stream_2
                  sb           s10, 33(t4)
                  lb           tp, 1110(t2)
                  sb           t4, 318(t2)
                  lhu          sp, 28(t4) #end load_store_instr_stream_3
                  sb           t4, -323(t2) #end load_store_instr_stream_0
                  la           s6, region_0+526 #start load_store_instr_stream_2
                  la           gp, region_0+1074 #start load_store_instr_stream_1
                  la           s4, region_0+277 #start load_store_instr_stream_0
                  sb           t3, -28(gp)
                  sb           t2, -40(s4)
                  lbu          a4, 239(gp)
                  lbu          tp, 4(s6)
                  lbu          a5, -9(s6)
                  lbu          t5, 33(s4)
                  lbu          zero, 5(s6)
                  lb           zero, -103(gp)
                  lbu          t0, 60(s4)
                  sb           s8, -74(gp)
                  lbu          a1, 6(s6)
                  lh           t1, -37(s4)
                  lb           s3, -17(gp)
                  sb           a4, -28(s4)
                  lbu          s9, 97(gp)
                  lb           t6, -40(gp) #end load_store_instr_stream_1
                  lb           s11, -16(s6) #end load_store_instr_stream_2
                  sb           t4, 56(s4) #end load_store_instr_stream_0
                  la           sp, region_1+1091 #start riscv_load_store_rand_instr_stream_5
                  sll          s6, a1, s3
                  ori          s0, t3, -992
                  lb           t6, -626(sp)
                  addi         a2, s1, 537
                  sltu         s5, t5, a7
                  sra          a5, t6, a6
                  lb           a1, -24(sp)
                  sh           a1, 139(sp)
                  or           a2, t1, a2
                  andi         a5, s0, -101
                  and          gp, s0, t1
                  lhu          a0, -767(sp)
                  add          ra, a1, s11
                  sb           s8, 249(sp)
                  auipc        a4, 887022
                  srli         s2, s7, 28
                  lbu          t2, 334(sp)
                  sll          a5, gp, sp
                  nop
                  lbu          t6, -340(sp)
                  lbu          s2, -670(sp)
                  lbu          a4, -684(sp)
                  sb           zero, -638(sp)
                  ori          t2, a1, -824
                  addi         t6, t1, 1458
                  slti         a3, a6, 628
                  lhu          s4, -917(sp)
                  lh           a2, 303(sp) #end riscv_load_store_rand_instr_stream_5
                  la           gp, region_0+1421 #start load_store_instr_stream_2
                  la           sp, region_0+1004 #start load_store_instr_stream_3
                  lb           t6, -3(sp)
                  la           t4, region_0+880 #start load_store_instr_stream_0
                  lb           a1, 20(gp)
                  la           t1, region_0+597 #start load_store_instr_stream_1
                  lw           t0, 0(sp)
                  sb           a5, 7(gp)
                  lhu          s3, 37(gp)
                  lh           a3, 58(t4)
                  lbu          t6, -2(t1)
                  sh           s0, 54(t4)
                  sb           a1, 1(sp)
                  lbu          t3, -24(t1)
                  sh           s0, 39(t1)
                  sb           ra, 11(t4)
                  lbu          tp, -40(t1)
                  sb           s2, 15(sp)
                  lb           a3, -3(sp)
                  sb           s5, 0(t1)
                  sb           s11, 34(gp)
                  lb           s1, -45(t4)
                  lbu          a2, -15(sp)
                  sb           a0, -12(t4)
                  lh           a5, 25(t1)
                  sb           gp, -14(sp)
                  lbu          s4, 7(sp)
                  lb           s1, 5(sp)
                  lbu          tp, -24(gp)
                  lb           s1, -7(sp) #end load_store_instr_stream_3
                  lhu          a1, -48(t4)
                  lhu          a2, -47(t1) #end load_store_instr_stream_1
                  sb           a5, -46(t4)
                  sb           s9, 15(gp) #end load_store_instr_stream_2
                  lb           zero, 8(t4) #end load_store_instr_stream_0
                  la           a6, region_0+900 #start load_store_instr_stream_1
                  sh           tp, -820(a6)
                  la           t5, region_0+1528 #start load_store_instr_stream_0
                  sb           sp, -188(a6)
                  lb           a3, -15(t5)
                  lb           s3, -568(a6)
                  lh           zero, 4(t5)
                  la           s2, region_0+21 #start load_store_instr_stream_2
                  lbu          a1, 886(a6)
                  lb           ra, 115(a6)
                  lbu          a1, 8(s2)
                  sw           s5, -8(t5)
                  lbu          zero, 52(s2)
                  lbu          s4, 33(s2)
                  sb           t4, -725(a6)
                  lbu          a4, 447(a6)
                  lb           t2, -10(s2)
                  lb           a2, 23(s2)
                  lh           s4, -2(t5)
                  lbu          s4, -803(a6)
                  lbu          s10, -16(t5)
                  lbu          t1, 538(a6)
                  lb           sp, 64(s2)
                  lhu          t6, 59(s2) #end load_store_instr_stream_2
                  sb           s4, 869(a6) #end load_store_instr_stream_1
                  sb           a6, -3(t5) #end load_store_instr_stream_0
                  la           sp, region_0+242 #start riscv_load_store_rand_instr_stream_3
                  lbu          s2, 593(sp)
                  srai         s2, a5, 25
                  sw           t6, 162(sp)
                  lh           a0, 146(sp)
                  slli         zero, s3, 23
                  addi         ra, s3, -1632
                  sb           t0, 1656(sp)
                  lbu          s3, 584(sp)
                  slt          t1, s4, t1
                  lb           tp, 1529(sp)
                  sb           s9, -216(sp)
                  sb           s7, 1096(sp)
                  lbu          a1, 1301(sp)
                  lb           t4, 767(sp)
                  or           t2, a4, gp
                  ori          ra, s7, 1045
                  sb           gp, 1189(sp)
                  srli         t2, s11, 17
                  and          ra, a4, gp
                  add          t4, s11, t2
                  sll          a0, a0, gp
                  sb           sp, 1595(sp)
                  andi         a1, sp, 1647
                  xor          t4, s4, s0
                  lb           s5, 1509(sp)
                  nop
                  sh           t5, 1532(sp)
                  sb           t1, 575(sp)
                  sltu         t1, t4, s7
                  ori          s2, s7, 1157
                  xor          s0, s10, t2
                  sh           zero, 688(sp)
                  and          a2, t1, s9
                  sll          gp, s10, s0
                  lbu          t4, 427(sp)
                  sra          s0, a0, s3
                  lui          t6, 588706
                  sh           s8, 1502(sp)
                  slli         t6, a3, 24
                  sb           gp, 131(sp)
                  sll          t4, zero, s1
                  lb           s4, 1736(sp)
                  andi         t4, sp, -1904
                  sb           t0, 277(sp)
                  sra          a1, sp, t5
                  sb           s11, 1005(sp)
                  sll          gp, ra, zero
                  sh           t3, 920(sp)
                  sb           tp, 1636(sp)
                  lhu          t5, 1460(sp)
                  lh           s3, 420(sp) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_0+1686 #start riscv_load_store_hazard_instr_stream_4
                  lbu          t5, -57(tp)
                  sra          t2, a7, t2
                  sb           s0, -57(tp)
                  lb           ra, -154(tp)
                  sll          a0, s6, s9
                  lb           s9, -89(tp)
                  lbu          s9, -89(tp)
                  andi         s1, sp, 1551
                  sb           s10, -89(tp)
                  sll          t5, s8, sp
                  xori         zero, a4, 925
                  lbu          s1, -89(tp)
                  lb           a5, -89(tp)
                  sb           t6, -8(tp)
                  lbu          s2, -48(tp)
                  lbu          t6, 235(tp)
                  sb           sp, 235(tp)
                  sb           t1, 235(tp)
                  lbu          gp, 235(tp) #end riscv_load_store_hazard_instr_stream_4
                  la           gp, region_1+1741 #start riscv_load_store_hazard_instr_stream_0
                  sra          s5, s7, s11
                  slli         a6, t5, 4
                  lb           ra, 3(gp)
                  lw           a4, 3(gp)
                  lh           t4, 43(gp)
                  xori         t3, t5, -345
                  lw           tp, -225(gp)
                  sh           s4, -225(gp)
                  sb           t2, -225(gp)
                  lh           a4, 73(gp)
                  sb           t3, 73(gp)
                  lbu          s2, 73(gp)
                  lh           t4, 73(gp)
                  lhu          tp, 215(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+586 #start riscv_load_store_rand_instr_stream_2
                  lb           t1, 8(sp)
                  nop
                  slli         a5, t6, 30
                  sll          s6, t5, t1
                  slt          t3, t0, s1
                  lbu          t0, 11(sp)
                  nop
                  srai         t6, tp, 12
                  lbu          t4, -7(sp)
                  lbu          tp, 0(sp)
                  lbu          ra, -9(sp)
                  sb           t4, -5(sp)
                  sb           t0, 9(sp)
                  ori          s9, s10, -102
                  add          s6, a7, s4
                  sb           a2, -16(sp)
                  sb           s7, 4(sp)
                  sw           a3, -6(sp)
                  xor          t0, s2, a2
                  lhu          s1, -14(sp)
                  or           s0, s2, s10
                  andi         t2, s0, 377
                  or           tp, a0, t5
                  add          t3, a6, s0
                  lb           tp, 16(sp)
                  xori         a6, s10, 702
                  sh           sp, 14(sp)
                  lb           gp, 15(sp)
                  lh           tp, 6(sp)
                  lbu          a0, -13(sp)
                  xori         s3, s10, -559
                  sb           t4, 1(sp)
                  lhu          t4, -8(sp)
                  sb           gp, 9(sp)
                  lbu          s0, -9(sp)
                  sll          t2, zero, a7
                  slti         a0, s9, 784
                  sb           zero, 11(sp)
                  lb           a3, -13(sp)
                  sh           t1, -12(sp)
                  slli         s11, a5, 25
                  lui          s5, 1012108
                  lbu          s9, 5(sp)
                  sh           s6, 10(sp)
                  lb           s11, -6(sp)
                  lbu          ra, 11(sp)
                  sub          ra, s10, s5
                  lbu          t6, 15(sp)
                  addi         a1, a4, -75
                  lbu          t3, -10(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_0+870 #start load_store_instr_stream_1
                  la           t6, region_0+647 #start load_store_instr_stream_0
                  lbu          ra, -9(t6)
                  la           s5, region_0+703 #start load_store_instr_stream_3
                  lbu          t2, 120(a1)
                  lb           s6, -19(a1)
                  la           a4, region_0+789 #start load_store_instr_stream_2
                  sb           a1, -522(a4)
                  sh           s10, -126(a1)
                  sb           s6, 804(a4)
                  sb           a1, -46(t6)
                  sb           a7, 419(a4)
                  lbu          s11, -40(s5)
                  sb           a3, -121(a1)
                  lb           t1, -25(s5)
                  sb           s10, 40(t6)
                  sb           t5, 21(s5)
                  sb           s11, 912(a4)
                  lh           a3, 12(a1)
                  lh           s1, -473(a4)
                  lbu          s11, 970(a4)
                  sb           a7, -26(s5)
                  lb           tp, -57(t6)
                  lbu          zero, -50(s5)
                  lh           t3, 25(a4)
                  sw           a1, 13(s5)
                  lb           gp, 1038(a4) #end load_store_instr_stream_2
                  lh           s3, -49(s5)
                  lbu          tp, -38(t6)
                  lhu          zero, -140(a1)
                  lb           s4, -164(a1)
                  lb           s1, -49(s5)
                  lbu          s1, -57(t6)
                  lbu          t5, 72(a1) #end load_store_instr_stream_1
                  sb           a5, -15(s5) #end load_store_instr_stream_3
                  lbu          a2, 43(t6)
                  sb           a2, 47(t6) #end load_store_instr_stream_0
                  la           a5, region_0+818 #start riscv_load_store_rand_instr_stream_4
                  lh           gp, -4(a5)
                  sra          zero, s1, a4
                  lbu          gp, 3(a5)
                  srl          s2, gp, a7
                  srli         s9, s2, 28
                  srli         s2, gp, 18
                  sh           t4, -14(a5)
                  lh           s3, 2(a5)
                  auipc        s6, 611256
                  slt          s2, t2, s2
                  add          a6, tp, tp
                  slti         s10, s5, -252
                  srai         ra, a2, 20
                  lhu          s4, 12(a5)
                  srli         a4, a2, 8
                  sltu         s9, s5, tp
                  sltiu        s6, t6, -1196
                  andi         a1, t6, 2020
                  sh           a3, 14(a5)
                  sb           a3, -1(a5)
                  xor          s0, a6, a6
                  sb           gp, -13(a5)
                  sltu         s9, a0, s0
                  or           t3, a6, t1
                  sb           s3, -2(a5)
                  add          s9, t3, a7
                  lw           s5, -10(a5) #end riscv_load_store_rand_instr_stream_4
                  la           s11, region_1+1606 #start riscv_load_store_hazard_instr_stream_2
                  srai         t4, s7, 5
                  nop
                  sb           a5, 364(s11)
                  nop
                  or           t4, gp, t3
                  lh           t6, 364(s11)
                  lbu          a6, 364(s11)
                  add          t5, s11, t4
                  lbu          s4, 364(s11)
                  sh           s10, 364(s11)
                  slli         a2, a1, 28
                  lb           a1, -439(s11)
                  lui          sp, 1039677
                  sb           a6, -1581(s11)
                  lbu          s2, -403(s11)
                  sb           a4, 360(s11)
                  sh           s7, 360(s11)
                  lbu          a1, 360(s11) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1701 #start riscv_load_store_hazard_instr_stream_5
                  auipc        a5, 1048020
                  lhu          s1, 59(sp)
                  add          t6, s9, t3
                  lb           t3, -34(sp)
                  sb           s9, -34(sp)
                  sb           s10, -34(sp)
                  sb           s4, -6(sp)
                  sw           s11, -13(sp)
                  addi         s3, s7, -2013
                  sb           s3, -13(sp)
                  sb           a4, 18(sp)
                  sb           ra, 18(sp)
                  sb           t0, 18(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           sp, region_0+1316 #start riscv_load_store_hazard_instr_stream_3
                  sb           t2, 18(sp)
                  sh           a5, 18(sp)
                  lb           ra, 18(sp)
                  lhu          zero, 18(sp)
                  lbu          t2, 41(sp)
                  xor          s1, s10, s6
                  srai         tp, a1, 17
                  lb           t3, 41(sp)
                  lbu          a4, 1(sp)
                  lb           s9, 1(sp)
                  lhu          a1, -14(sp)
                  sb           a0, -14(sp)
                  lb           s9, -14(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t2, region_0+277 #start riscv_load_store_rand_instr_stream_7
                  lbu          a1, 4(t2)
                  lh           s5, -7(t2)
                  and          s1, s0, ra
                  or           a4, gp, a5
                  add          ra, sp, a7
                  slli         s3, s10, 21
                  nop
                  xori         s9, gp, -1809
                  auipc        ra, 891655
                  auipc        a1, 1033584
                  lb           a4, -10(t2)
                  lbu          t1, 6(t2)
                  auipc        gp, 27334
                  sh           s1, 11(t2)
                  ori          s3, s1, 806
                  srl          t5, s8, a4
                  slt          a2, a0, t3
                  sra          sp, s4, s0
                  lbu          s5, -1(t2)
                  lbu          s1, -4(t2)
                  sb           s7, -9(t2)
                  lh           a1, 13(t2)
                  slt          s3, s8, a2
                  lui          s10, 929591
                  lbu          sp, 6(t2)
                  sh           t0, 11(t2)
                  or           s3, s3, a3
                  sltu         s2, s6, s4
                  sb           a4, 0(t2)
                  slli         a1, a5, 26
                  lb           a1, -10(t2)
                  slli         a4, s9, 4
                  sh           a6, 3(t2) #end riscv_load_store_rand_instr_stream_7
                  la           t3, region_0+235 #start riscv_load_store_hazard_instr_stream_8
                  sh           s7, 11(t3)
                  xori         s2, t6, 992
                  sltiu        s3, zero, 1502
                  sh           zero, 17(t3)
                  lh           t6, 17(t3)
                  or           s10, s8, s5
                  sw           a3, 17(t3)
                  sll          t5, s5, s0
                  auipc        t2, 806502
                  lhu          a6, 17(t3)
                  sb           s9, 35(t3)
                  sltiu        t2, s4, -1600
                  lbu          ra, 35(t3)
                  sb           t5, 35(t3)
                  srl          s6, s10, a1
                  lhu          s2, 35(t3)
                  lh           a1, 35(t3) #end riscv_load_store_hazard_instr_stream_8
                  la           a4, region_1+924 #start riscv_load_store_hazard_instr_stream_7
                  slt          a6, s6, s11
                  sb           s11, -780(a4)
                  andi         gp, sp, 1070
                  sltu         s1, s7, s4
                  lhu          t5, -780(a4)
                  lh           a3, 814(a4)
                  sb           s3, -767(a4)
                  sb           a2, 369(a4)
                  lbu          a2, -787(a4)
                  lb           t6, 985(a4)
                  sh           s1, 282(a4)
                  sh           sp, 282(a4)
                  sra          s5, a2, s8
                  lbu          t3, 277(a4)
                  lb           t3, 161(a4)
                  lb           t0, 161(a4)
                  lhu          s3, 70(a4)
                  sb           t3, -95(a4)
                  xor          zero, sp, tp
                  sb           a2, -678(a4)
                  lb           s1, -720(a4)
                  lb           a6, 871(a4)
                  sb           a7, -920(a4)
                  sb           s3, 81(a4)
                  lbu          t5, -683(a4) #end riscv_load_store_hazard_instr_stream_7
                  la           sp, region_0+873 #start riscv_load_store_rand_instr_stream_1
                  lbu          t5, -16(sp)
                  andi         t4, a5, 1922
                  sh           a0, 13(sp)
                  sb           a0, 5(sp)
                  lb           s6, 14(sp)
                  sltiu        a0, s11, 1293
                  sb           tp, 10(sp)
                  lbu          s9, 2(sp)
                  lbu          tp, -8(sp)
                  sw           t6, 7(sp)
                  sh           t4, -9(sp)
                  lb           s1, 2(sp)
                  srl          s4, zero, a7
                  sltu         t1, s7, t4
                  sb           gp, -10(sp)
                  sb           a6, 11(sp)
                  srli         a6, t3, 11
                  lhu          t3, 13(sp)
                  sh           zero, 9(sp)
                  andi         s5, s4, 479
                  sltu         t2, t5, s6
                  auipc        a0, 28647
                  nop
                  lhu          zero, 3(sp)
                  lh           a0, -15(sp)
                  lbu          a1, 11(sp)
                  srl          a5, s10, t0
                  nop
                  sltu         s1, t3, zero
                  lbu          s5, -8(sp)
                  auipc        zero, 886032
                  nop
                  lbu          s10, 12(sp)
                  sll          t6, s7, t1
                  srai         s4, t3, 0
                  lw           s6, -1(sp)
                  lb           a5, 14(sp)
                  sb           zero, -8(sp)
                  lb           s11, -10(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t2, region_1+880 #start load_store_instr_stream_3
                  la           s9, region_1+1362 #start load_store_instr_stream_4
                  sw           gp, -450(s9)
                  sb           s7, -34(t2)
                  lb           a2, 41(t2)
                  lbu          a6, -49(t2)
                  la           t1, region_1+979 #start load_store_instr_stream_1
                  la           t4, region_1+1801 #start load_store_instr_stream_0
                  lb           s1, 16(t1)
                  lhu          zero, -152(s9)
                  sb           s9, -46(t4)
                  la           t3, region_1+1808 #start load_store_instr_stream_2
                  lh           a3, -9(t1)
                  lb           a4, -881(t3)
                  lhu          t5, -5(t1)
                  lb           s10, -68(s9)
                  lhu          a1, -530(t3)
                  sb           t6, 499(s9)
                  lhu          zero, -55(t4)
                  lbu          s11, -119(t3)
                  lb           a2, -16(t1)
                  lhu          s5, -1174(s9)
                  lhu          a6, -50(t2)
                  lh           ra, 29(t4)
                  lbu          s6, 27(t3)
                  lbu          s5, 143(s9)
                  sh           tp, -13(t4)
                  lbu          a4, 32(t4)
                  sb           a5, -15(t1)
                  sb           s10, 21(t2)
                  lb           s5, -624(s9)
                  sb           a3, 15(t1)
                  sb           zero, 123(t3)
                  sh           a5, 11(t1)
                  sw           s11, -8(t2)
                  lb           t5, -53(t4)
                  sb           t0, 41(t2)
                  lbu          s11, -273(s9)
                  lb           s1, -1(t1)
                  lbu          a0, -1245(s9) #end load_store_instr_stream_4
                  sb           t4, 15(t1) #end load_store_instr_stream_1
                  lbu          a0, -227(t3) #end load_store_instr_stream_2
                  lb           t5, -60(t4)
                  sb           a2, 59(t2) #end load_store_instr_stream_3
                  sb           t2, 36(t4) #end load_store_instr_stream_0
                  la           t0, region_0+1355 #start riscv_load_store_rand_instr_stream_0
                  lb           zero, -74(t0)
                  sb           t1, -301(t0)
                  lh           s3, -1085(t0)
                  xori         a2, s3, -755
                  sh           t0, 611(t0)
                  or           t5, s8, s1
                  sll          zero, t6, a3
                  lb           s4, -1250(t0)
                  lb           zero, 94(t0)
                  lb           tp, -1350(t0)
                  lhu          t6, -1013(t0)
                  lhu          s6, -17(t0)
                  sb           s7, -160(t0)
                  slli         t5, a0, 16
                  lbu          s5, 165(t0)
                  lb           t4, -294(t0)
                  slti         tp, a5, -775
                  slli         sp, sp, 25
                  srl          t4, zero, t2
                  add          s2, tp, a1
                  sb           t1, 180(t0)
                  sw           sp, -835(t0)
                  sra          zero, a0, t1
                  lb           s1, 156(t0)
                  sb           a3, -1093(t0)
                  lbu          sp, 64(t0)
                  srai         s1, s2, 15
                  add          tp, a2, s6
                  lbu          s10, 417(t0)
                  sra          s11, a0, zero
                  sltiu        s3, t6, 1884
                  slti         a5, s5, 1796
                  sltiu        s9, s3, 1541
                  srai         s4, s10, 4
                  sh           ra, 455(t0)
                  sll          s11, s6, a0
                  lb           t6, 339(t0)
                  addi         t3, s9, -149
                  andi         a2, t4, 1908
                  slti         t1, s0, 1313
                  sw           a7, -299(t0)
                  ori          s1, a7, -812
                  lhu          a4, -83(t0)
                  sb           gp, -1125(t0) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_1+1433 #start load_store_instr_stream_0
                  la           s11, region_1+253 #start load_store_instr_stream_1
                  sb           a2, -3(s11)
                  lb           s4, 5(s11)
                  lb           zero, 7(s11)
                  sb           t5, 2(s11)
                  la           a4, region_1+539 #start load_store_instr_stream_2
                  sb           ra, 4(s5)
                  sb           a5, -1(s11)
                  sh           t5, -289(a4)
                  lw           s10, -1(s11)
                  lbu          ra, -269(a4)
                  lb           s9, -10(s11)
                  sw           ra, 31(s5)
                  sb           s6, -33(a4)
                  lhu          ra, -5(s5)
                  lw           a1, 7(s11)
                  lb           t6, 55(s5)
                  sb           gp, 14(s11)
                  lhu          ra, 857(a4)
                  sh           s0, -303(a4)
                  lw           a3, -21(s5)
                  sh           a1, 187(a4)
                  sb           t4, -227(a4)
                  lbu          t6, 2(s11) #end load_store_instr_stream_1
                  lbu          sp, 459(a4) #end load_store_instr_stream_2
                  lb           t6, 52(s5) #end load_store_instr_stream_0
                  la           t6, region_1+623 #start riscv_load_store_rand_instr_stream_8
                  sh           t6, -171(t6)
                  lb           s4, -180(t6)
                  srl          s10, s8, gp
                  addi         s3, a3, -109
                  sll          s3, a5, s6
                  sh           s10, -143(t6)
                  and          a0, a1, a1
                  auipc        t5, 129097
                  sub          zero, s7, s2
                  addi         a6, s6, -587
                  lb           a2, -214(t6)
                  andi         a4, a7, 1603
                  and          t0, t5, zero
                  sb           s0, -89(t6)
                  slti         s9, a1, 1667
                  sb           zero, 92(t6)
                  sltu         t4, t6, tp
                  addi         s5, s4, 1454
                  sb           s9, -141(t6)
                  lb           t2, -24(t6)
                  lbu          s10, 80(t6)
                  sll          a4, zero, a3
                  sb           tp, 176(t6)
                  lb           a1, -204(t6)
                  slt          s1, s7, s7
                  lh           s11, -73(t6)
                  slt          s3, s10, a2
                  lbu          s3, 212(t6)
                  addi         s1, t0, 1439
                  slti         s5, a6, -1063
                  srli         s11, s10, 9
                  xori         a6, t5, -112
                  srli         s10, s6, 23
                  nop
                  lbu          s5, 52(t6)
                  lhu          gp, 53(t6)
                  and          s2, s0, t0
                  srai         t1, t6, 9
                  slti         s11, a1, 280
                  lh           t1, 175(t6)
                  ori          ra, a0, 1748
                  addi         s10, s2, -1381
                  slt          zero, zero, s3
                  sra          a0, t1, a5
                  lbu          s4, -242(t6)
                  sll          t4, a6, t0
                  lhu          s2, -91(t6) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s11, 11(sp)
                  lb           t3, 11(sp)
                  lh           s5, 11(sp)
                  sw           a5, 11(sp)
                  sh           t3, 11(sp)
                  sra          s6, s8, s10
                  lhu          a0, 11(sp)
                  sh           t4, 11(sp)
                  sh           t2, 11(sp)
                  lhu          zero, 11(sp)
                  lbu          s10, 11(sp)
                  lh           s4, 11(sp)
                  lh           a0, 11(sp)
                  sb           t5, 11(sp)
                  lhu          t4, 11(sp)
                  lbu          s5, 11(sp)
                  sh           s5, 11(sp)
                  sw           a4, 11(sp)
                  sw           s5, 11(sp)
                  lh           zero, 11(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+334 #start load_store_instr_stream_0
                  sb           tp, -209(sp)
                  lb           s5, 1123(sp)
                  lb           s9, 267(sp)
                  la           ra, region_0+222 #start load_store_instr_stream_1
                  lbu          a2, 9(ra)
                  lbu          s10, 1463(sp)
                  lb           a0, -2(ra)
                  lh           s9, 12(ra)
                  lbu          t2, 40(sp)
                  lbu          s11, -13(ra)
                  lb           t0, 1593(sp)
                  sh           s10, 0(ra)
                  sb           t1, 5(ra)
                  lh           s0, 864(sp)
                  sb           s10, -7(ra)
                  lbu          a1, 7(ra)
                  sb           ra, 1347(sp)
                  sb           s2, 15(ra) #end load_store_instr_stream_1
                  lbu          a4, 902(sp)
                  lb           t0, 886(sp) #end load_store_instr_stream_0
                  add          s3, s8, s10
                  xor          tp, a2, gp
                  add          t6, s7, ra
                  lui          t6, 503688
                  sub          a1, t4, a0
                  bltu         t3, s4, 18f
                  add          t3, s4, a4
                  bne          a0, a0, 13f
                  sltu         s1, s5, a3
                  slti         gp, s8, 270
                  xori         t1, a4, 1557
                  nop
                  srl          zero, s10, s7
13:               bltu         a1, s8, 27f
                  sra          a3, gp, t1
                  sll          a5, s4, ra
                  bgeu         t0, a6, 18f
                  srli         zero, a0, 0
18:               sra          t5, t1, t2
                  bge          s8, t2, 24f
                  or           a1, t4, t0
                  bge          a0, s7, 24f
                  addi         tp, zero, -1654
                  ori          s5, s8, -1540
24:               auipc        zero, 134976
                  srai         s2, s3, 29
                  auipc        s4, 913321
27:               sra          s6, t5, s11
                  xor          s0, s3, t1
                  slli         tp, s4, 31
                  bgeu         s6, t6, 39f
                  la           s1, region_0+953 #start load_store_instr_stream_1
                  la           a0, region_0+1953 #start load_store_instr_stream_3
                  la           a2, region_0+336 #start load_store_instr_stream_0
                  la           s10, region_0+526 #start load_store_instr_stream_2
                  lb           s0, 665(s10)
                  sb           s6, -158(s1)
                  sb           a6, 509(a2)
                  sb           a0, 44(a0)
                  lb           s3, 752(s1)
                  lbu          tp, -28(a0)
                  lh           gp, 772(s10)
                  lw           t4, -177(s1)
                  lb           s2, 1156(s10)
                  sb           s10, 620(s10)
                  lbu          s3, -770(s1)
                  sb           s6, -28(a0)
                  lbu          s2, 12(s10)
                  lbu          t2, -271(a2)
                  lb           t6, 790(a2)
                  sh           gp, 385(s1)
                  sw           a6, 131(s1)
                  sb           a5, -28(a0)
                  lbu          s2, 1203(s10)
                  lh           s0, 157(s1)
                  sh           s10, -4(a2)
                  lbu          s4, 889(s10)
                  lbu          s4, 958(s10)
                  lbu          a1, -281(s10) #end load_store_instr_stream_2
                  sb           t4, -396(s1)
                  lw           s4, -49(a0)
                  sh           s4, -909(s1)
                  lb           s11, 1028(s1) #end load_store_instr_stream_1
                  sb           t0, -38(a0)
                  lbu          a1, 46(a0) #end load_store_instr_stream_3
                  sb           gp, -187(a2) #end load_store_instr_stream_0
                  sra          t2, a3, a2
                  slt          a3, a4, a5
                  xori         t0, a2, -598
                  slt          t0, a2, a1
                  sll          ra, t0, a3
                  sltiu        a1, s10, -428
                  lui          a2, 1032554
                  sra          a3, t1, a3
39:               sub          t0, ra, a5
                  xor          s1, zero, t2
                  slti         zero, s11, 579
                  xori         t4, zero, 1667
                  bne          tp, t6, 48f
                  slti         t3, t6, 1068
                  sltiu        t2, s9, -169
                  bne          a0, t3, 49f
                  sll          t0, a0, zero
48:               srli         a6, t3, 22
49:               nop
                  bltu         a0, t4, 67f
                  sub          a6, a2, gp
                  bltu         a5, t3, 66f
                  bge          tp, t5, 60f
                  sll          tp, s10, s11
                  srli         tp, s6, 12
                  srai         s9, a5, 25
                  or           s0, sp, a6
                  lui          t5, 606919
                  sra          a3, s3, s3
60:               nop
                  add          zero, s3, s5
                  srl          s6, s4, ra
                  addi         a4, a6, -1394
                  bltu         zero, gp, 76f
                  add          ra, ra, a1
66:               addi         s4, t1, -1440
67:               sltu         t5, s5, s6
                  sub          t1, s1, a5
                  xori         sp, t1, 875
                  xori         a5, gp, 940
                  sll          s1, tp, a4
                  xori         t6, a6, -1003
                  ori          t2, sp, -1877
                  blt          s9, tp, 84f
                  ori          a6, t5, 218
76:               slli         s4, t6, 3
                  bgeu         a3, s1, 92f
                  ori          a1, s2, -752
                  and          a0, a1, t1
                  srli         s4, a5, 18
                  sltu         s2, a0, t0
                  sub          t1, sp, a2
                  bne          s6, a6, 103f
84:               sub          s9, s11, a5
                  xor          a3, zero, s7
                  slti         t6, a6, -346
                  addi         tp, s0, -1907
                  slti         t2, s3, 558
                  slt          s9, s4, t0
                  xori         a2, t1, -522
                  blt          s7, t0, 98f
92:               sltu         a3, s3, s0
                  srai         a3, gp, 2
                  sra          t6, s2, s5
                  sltu         tp, zero, zero
                  sll          a0, t0, ra
                  sra          tp, a3, sp
98:               addi         s11, s4, 1963
                  addi         a6, s7, -850
                  auipc        s11, 783430
                  xori         s10, sp, 1774
                  bgeu         t4, s7, 122f
103:              xori         a4, a3, 954
                  sltu         t0, s0, gp
                  nop
                  srai         s11, t5, 8
                  blt          s5, a6, 112f
                  bgeu         sp, t6, 123f
                  sltu         sp, t3, s10
                  sll          a4, s0, s5
                  slt          t3, s6, a7
112:              lui          a1, 41083
                  andi         a5, t0, -229
                  beq          ra, a6, 124f
                  ori          s3, t1, -1876
                  sltiu        t6, t0, 148
                  sra          s2, s3, t3
                  bgeu         t2, t1, 123f
                  slti         s6, sp, -1664
                  auipc        t3, 270296
                  sra          a6, s4, s5
122:              andi         s10, t2, -96
123:              bne          s2, t3, 134f
124:              nop
                  slt          sp, gp, gp
                  bltu         a2, a2, 141f
                  addi         t6, gp, -1351
                  or           gp, t0, a1
                  slli         s0, s4, 2
                  auipc        a5, 560105
                  bge          s8, t3, 137f
                  auipc        t5, 157204
                  nop
134:              bne          t3, s10, 148f
                  ori          a0, t0, -507
                  nop
137:              xor          s6, a4, sp
                  bge          s8, s0, 148f
                  srli         a1, s4, 15
                  slt          s11, t0, s4
141:              addi         a0, s5, 612
                  bgeu         s7, s7, 157f
                  srl          t5, zero, a4
                  srai         s6, t5, 1
                  srli         gp, a1, 20
                  andi         a0, a5, -2044
                  srl          s10, a4, a6
148:              beq          ra, s8, 150f
                  sltu         ra, t1, s1
150:              slti         t0, t5, -576
                  add          sp, sp, a4
                  ori          gp, t3, 268
                  bge          t6, s6, 156f
                  nop
                  xor          zero, gp, s8
156:              srl          t1, a3, t3
157:              bge          s3, t2, 164f
                  srli         s1, zero, 24
                  bltu         t4, s9, 161f
                  bge          s2, a6, 171f
161:              lui          t4, 901105
                  nop
                  bne          gp, t2, 166f
164:              blt          sp, a2, 184f
                  bne          a7, gp, 168f
166:              srli         a4, a6, 14
                  slli         ra, s6, 4
168:              sra          t2, s7, a5
                  or           tp, gp, s0
                  slti         s5, s4, 1677
171:              add          s6, a4, s4
                  bgeu         a6, t4, 184f
                  sltu         s4, t3, a7
                  ori          s5, s5, -1446
                  sub          s0, t2, s3
                  lui          t0, 757882
                  sltiu        t3, s0, 1783
                  bgeu         s2, a7, 184f
                  bne          s1, a3, 182f
                  and          t4, a7, s3
                  bgeu         a0, s2, 196f
182:              sra          sp, t1, s2
                  blt          s4, t3, 188f
184:              auipc        s9, 861285
                  andi         t3, s6, 1386
                  srai         zero, a1, 16
                  sltu         t3, t0, a2
188:              sltu         s6, t2, gp
                  addi         t5, s10, -1631
                  xor          t0, a6, s4
                  sltiu        t0, a0, -315
                  slli         a3, a7, 30
                  xor          s11, a7, a3
                  xori         s11, sp, -2029
                  slt          tp, ra, s3
196:              bne          s8, s2, 206f
                  xor          s6, a2, t5
                  sra          t4, s7, t6
                  bgeu         s3, t2, 216f
                  bltu         a6, a6, 220f
                  add          gp, t0, a5
                  bge          s0, a3, 212f
                  blt          t5, t6, 218f
                  srl          s10, tp, a6
                  sltu         s0, s7, a0
206:              xor          s3, t6, gp
                  slt          s10, t1, s0
                  beq          gp, a6, 210f
                  or           t2, a6, s7
210:              srai         t2, s7, 15
                  and          a5, t4, sp
212:              ori          t4, s10, 1830
                  srli         a6, s6, 14
                  andi         t5, t0, -1922
                  sra          s1, a7, a4
216:              sra          ra, tp, zero
                  and          a1, a1, t4
218:              addi         s10, t4, -1285
                  bge          s2, s10, 232f
220:              add          s2, t4, a3
                  slli         t5, s6, 30
                  and          a4, zero, tp
                  bltu         a7, sp, 237f
                  andi         s6, s11, 1592
                  sltu         gp, gp, gp
                  add          s4, s0, a5
                  auipc        tp, 158007
                  bge          s9, s0, 233f
                  slti         a5, a5, -1169
                  blt          a0, a2, 245f
                  beq          ra, a3, 236f
232:              lui          a4, 590394
233:              srai         s9, t1, 16
                  sltu         zero, t6, sp
                  xor          s4, zero, s1
236:              beq          gp, s3, 242f
237:              srai         ra, a4, 23
                  lui          gp, 417708
                  slt          s0, s3, s2
                  auipc        s10, 189050
                  bge          s7, a1, 250f
242:              bne          zero, a6, 247f
                  sltiu        t3, s4, 1653
                  xori         s5, s9, -869
245:              sltiu        ra, ra, -928
                  bge          s10, gp, 253f
247:              beq          t2, a6, 257f
                  srli         a5, sp, 23
                  xori         s5, a3, 408
250:              bge          a1, t0, 264f
                  sll          a1, s3, tp
                  sll          t6, gp, t3
253:              slti         a2, a0, 1847
                  blt          a0, a4, 268f
                  lui          a4, 777153
                  bltu         s2, a1, 271f
257:              and          t0, a6, a5
                  lui          a6, 834104
                  srli         s1, t2, 12
                  sub          t1, a1, s6
                  srli         sp, s9, 31
                  lui          a1, 193404
                  sub          t4, t1, s2
264:              srli         s11, a1, 9
                  sll          s3, zero, t1
                  beq          s2, a6, 281f
                  sra          a0, t2, zero
268:              andi         t1, a4, -1691
                  srai         tp, s7, 8
                  srli         ra, t6, 14
271:              beq          a3, sp, 285f
                  or           t1, s9, a3
                  andi         zero, s4, 352
                  sra          t1, ra, s9
                  lui          t5, 959117
                  addi         t4, a6, -1926
                  srai         t2, t0, 17
                  sltiu        t0, t1, -1359
                  xor          a1, zero, s10
                  bge          t4, s5, 286f
281:              lui          ra, 678728
                  slt          s10, s2, s0
                  bne          t2, a6, 288f
                  srai         s11, sp, 12
285:              xori         tp, gp, -373
286:              add          s0, s9, s6
                  sub          ra, t2, a5
288:              blt          a7, a6, 293f
                  srai         s0, a3, 18
                  xori         t5, sp, 1051
                  nop
                  xor          s3, a1, t1
293:              slli         zero, s4, 17
                  addi         t2, s3, 987
                  sub          gp, s8, ra
                  sub          a4, sp, a4
                  bgeu         s9, s9, 302f
                  srl          t0, a3, t2
                  bgeu         s7, s3, 309f
                  lui          a5, 115507
                  sll          tp, s4, t3
302:              sltu         s1, a1, s5
                  srli         t6, s9, 27
                  bne          zero, s2, 310f
                  bgeu         s4, s3, 325f
                  sltiu        s9, s6, -1183
                  or           a2, sp, s1
                  lui          tp, 30526
309:              lui          s9, 211075
310:              slli         s2, t0, 9
                  xor          tp, s5, s4
                  sltu         tp, s4, s9
                  and          t6, s8, s8
                  bge          s7, t5, 319f
                  xori         t3, ra, -52
                  ori          s11, s1, 850
                  bltu         t5, s7, 319f
                  addi         s10, s7, -1171
319:              auipc        tp, 461217
                  beq          s6, s1, 335f
                  nop
                  bgeu         t3, a0, 337f
                  srl          t5, s4, s2
                  and          a1, a7, s6
325:              sll          t5, a3, s3
                  srl          a6, a2, s4
                  blt          s8, s11, 342f
                  addi         s0, a3, 1758
                  sltiu        s1, s1, 1380
                  addi         s5, s7, -973
                  slti         a6, s2, -1755
                  nop
                  slli         a3, s8, 14
                  sra          tp, s4, s11
335:              sltu         s1, t5, sp
                  bgeu         tp, a5, 353f
337:              beq          sp, a1, 349f
                  srli         ra, gp, 17
                  sra          t4, s5, s7
                  nop
                  and          a0, t5, tp
342:              bgeu         s4, s2, 353f
                  sltiu        t5, a3, 420
                  addi         s6, a6, 503
                  sll          t0, s0, s7
                  slli         zero, t5, 14
                  sltiu        a0, a0, -804
                  bge          s7, ra, 358f
349:              bltu         sp, s1, 352f
                  auipc        s9, 374181
                  lui          s1, 699846
352:              bgeu         s9, s3, 365f
353:              add          s2, gp, tp
                  slti         s9, s11, -1031
                  or           s4, t0, s11
                  bge          t2, s9, 363f
                  ori          a6, s0, -862
358:              xor          t0, s6, t1
                  ori          sp, ra, 250
                  ori          gp, sp, 1346
                  and          s5, s11, gp
                  sltu         gp, zero, tp
363:              xor          a2, a3, a6
                  blt          s10, gp, 366f
365:              xor          ra, t2, a0
366:              xori         a2, ra, -715
                  slti         t1, a2, -2030
                  srai         s11, s2, 8
                  srli         s4, s0, 30
                  sltu         a2, s5, t2
                  srl          a2, s1, gp
                  sltu         s1, s11, a6
                  sltiu        a1, s7, -659
                  beq          s3, sp, 388f
                  sltiu        t6, a1, -423
                  addi         t6, t4, -1990
                  bge          t0, a1, 387f
                  slt          s6, s3, s11
                  lui          ra, 440554
                  sub          a3, t4, s11
                  ori          a4, s11, -621
                  or           s10, t3, t3
                  bltu         tp, s0, 392f
                  sub          s0, gp, a0
                  srli         sp, t4, 17
                  blt          s2, s0, 400f
387:              sltu         gp, t5, s6
388:              bltu         s7, s9, 391f
                  sub          s5, t0, a3
                  srl          a0, s9, t6
391:              srai         zero, s3, 0
392:              nop
                  bne          t4, t5, 413f
                  beq          a1, s8, 401f
                  xor          t5, s1, zero
                  blt          ra, a5, 399f
                  sltu         s0, s4, gp
                  and          s6, t5, s1
399:              nop
400:              slti         zero, a0, 295
401:              sub          a3, s7, t6
                  bge          s5, a3, 419f
                  slti         s2, a6, 1095
                  bne          s11, a3, 413f
                  or           sp, t2, s1
                  bgeu         s11, s8, 412f
                  bgeu         a5, s6, 421f
                  bge          t0, s11, 414f
                  ori          ra, a1, 1145
                  blt          s8, s0, 424f
                  blt          t1, tp, 421f
412:              auipc        t4, 493091
413:              beq          s1, t4, 415f
414:              bne          a6, t2, 429f
415:              sll          s9, sp, s8
                  blt          a1, tp, 418f
                  beq          s3, s1, 432f
418:              sltiu        s11, ra, 1272
419:              bltu         a5, s8, 430f
                  xor          ra, t4, t5
421:              slt          ra, t4, s6
                  sub          t6, t4, s1
                  srai         s11, s1, 14
424:              srl          a3, s0, s3
                  auipc        t2, 240694
                  srl          t3, s10, gp
                  or           s2, sp, s9
                  lui          a2, 667878
429:              ori          s4, sp, -140
430:              bltu         a5, s11, 437f
                  nop
432:              bne          a5, t0, 447f
                  slti         sp, s2, 179
                  bge          a6, a0, 439f
                  sltu         t0, a6, s10
                  slt          s11, a6, s11
437:              sra          s10, s8, t2
                  or           a4, s11, s4
439:              nop
                  addi         s1, t2, -1994
                  bge          t1, tp, 456f
                  and          a6, s5, s1
                  blt          a5, s7, 448f
                  slt          t4, a1, s3
                  sll          sp, a1, t4
                  add          s4, zero, a1
447:              slt          s0, a6, s7
448:              auipc        s3, 910797
                  slt          t5, s1, t3
                  sub          s3, s1, t6
                  srli         s5, gp, 20
                  bge          a4, ra, 462f
                  auipc        zero, 410706
                  slt          t6, s10, t1
                  nop
456:              xor          t5, s6, t2
                  bltu         t3, t5, 460f
                  xor          s9, sp, gp
                  blt          t1, a4, 473f
460:              sltiu        s5, t5, -779
                  bge          s11, s7, 466f
462:              sll          t1, a1, t6
                  bne          gp, s10, 473f
                  lui          s11, 149904
                  sra          sp, sp, a4
466:              srai         s0, s10, 2
                  sll          t2, s6, s8
                  bne          a1, sp, 471f
                  or           a6, t6, s7
                  auipc        s0, 935476
471:              sltiu        t2, s8, -1484
                  or           t4, t1, t1
473:              lui          s3, 824087
                  or           t5, a0, zero
                  blt          s7, s0, 488f
                  xor          a4, s10, t3
                  or           a6, a3, a1
                  and          a4, t5, s5
                  bge          t4, t4, 499f
                  sltu         t1, a0, s2
                  add          s5, a4, a0
                  auipc        t2, 781470
                  slli         t5, s7, 23
                  bltu         s2, tp, 489f
                  beq          s9, sp, 488f
                  srai         a6, s8, 0
                  auipc        s5, 73632
488:              sra          s10, s11, a3
489:              xor          a2, t6, a3
                  bne          s11, s2, 510f
                  sll          t2, t1, a7
                  srai         s4, s9, 2
                  slt          gp, ra, t1
                  and          gp, sp, a5
                  sub          zero, s4, s2
                  xor          s11, t4, s10
                  xori         s1, a4, -1991
                  sub          ra, s5, a0
499:              slli         t5, s7, 21
                  bgeu         s1, a2, 507f
                  srli         s10, gp, 7
                  slti         a4, ra, -1507
                  sltu         s2, s2, t2
                  addi         a0, a4, 1559
                  add          zero, a1, tp
                  bltu         t0, zero, 518f
507:              sub          sp, t0, t5
                  and          s5, s8, t4
                  sltu         zero, a0, a1
510:              srli         ra, t3, 3
                  bge          t5, a5, 531f
                  or           t2, s3, gp
                  xori         ra, tp, -1059
                  srl          gp, tp, zero
                  srl          s11, t4, a2
                  sra          t2, t2, tp
                  bltu         s8, sp, 532f
518:              and          t0, a3, tp
                  srli         s0, t0, 30
                  nop
                  blt          t3, s3, 530f
                  nop
                  lui          a5, 27233
                  or           a4, a2, t2
                  slli         s5, a0, 5
                  xori         a5, a7, 23
                  or           a4, a4, s0
                  beq          t3, a1, 533f
                  or           a3, a6, s3
530:              andi         t4, tp, -1214
531:              blt          a1, t1, 542f
532:              lui          a1, 303739
533:              sltiu        a6, s6, -1403
                  and          ra, zero, t6
                  slti         s0, a7, -1213
                  sll          a2, t2, s2
                  slt          a3, a2, tp
                  sltiu        t2, s7, -1668
                  slli         a5, s5, 3
                  srl          s11, ra, t6
                  bge          zero, a5, 544f
542:              sltu         s3, a6, s10
                  sltu         a2, s10, s8
544:              auipc        a3, 947508
                  beq          s7, t6, 559f
                  auipc        a2, 59559
                  bge          s9, t0, 559f
                  blt          s6, a7, 554f
                  beq          s7, ra, 556f
                  sltu         t3, a0, a4
                  sltu         s6, s8, a6
                  add          tp, a6, a2
                  bge          a1, a4, 568f
554:              lui          t4, 45504
                  andi         t2, s5, -60
556:              lui          gp, 180857
                  xori         t3, a3, 1538
                  add          s4, t6, sp
559:              and          s6, t5, s4
                  bge          t2, s1, 574f
                  ori          a3, sp, -1708
                  srai         t6, ra, 17
                  slti         a6, s5, -1019
                  srai         t4, s1, 30
                  srli         gp, s0, 16
                  blt          t5, s0, 571f
                  bge          s0, tp, 577f
568:              bge          ra, s10, 575f
                  slti         gp, a7, 934
                  bne          a6, s3, 590f
571:              bltu         s6, t6, 573f
                  slti         s1, t1, -604
573:              add          a4, zero, gp
574:              sll          s1, a1, s11
575:              blt          s6, a0, 589f
                  slti         a1, a2, 1182
577:              bne          s11, a3, 592f
                  auipc        t1, 38729
                  blt          s5, t4, 594f
                  bne          zero, s3, 585f
                  srl          t3, s9, s0
                  lui          s4, 717789
                  slli         t3, zero, 6
                  bgeu         t3, a5, 594f
585:              bgeu         s11, a7, 588f
                  bge          t0, t4, 588f
                  ori          zero, a7, 412
588:              lui          a1, 67648
589:              lui          ra, 1021534
590:              srl          a6, s8, a6
                  slli         ra, s6, 31
592:              beq          a3, t0, 602f
                  bne          t6, s9, 596f
594:              sub          s1, a1, s0
                  auipc        s1, 613627
596:              lui          t5, 284455
                  beq          a7, s1, 610f
                  addi         gp, t6, -1386
                  sra          t0, s3, sp
                  sltu         t4, t5, gp
                  andi         t0, a5, 709
602:              and          tp, t5, s11
                  slli         s6, sp, 18
                  srli         a4, a5, 10
                  nop
                  beq          a3, t3, 611f
                  ori          a3, a1, 1904
                  addi         sp, sp, -888
                  addi         a0, s4, 1735
610:              bne          s9, t2, 616f
611:              add          a6, ra, t1
                  bge          a5, s11, 629f
                  slt          s11, a2, s1
                  or           t3, s11, sp
                  xori         t3, s7, 1296
616:              addi         gp, a1, 621
                  sltu         a5, s9, sp
                  bne          ra, zero, 623f
                  bne          sp, t5, 625f
                  sub          sp, t1, t0
                  bgeu         a0, t4, 635f
                  ori          s3, s8, -90
623:              sltiu        a0, ra, -2008
                  bge          t4, t5, 644f
625:              slt          gp, a4, a7
                  sll          s3, a6, s9
                  slli         t3, a5, 12
                  ori          t0, s4, -762
629:              srl          t0, gp, t1
                  bne          gp, a1, 640f
                  sub          s10, sp, s2
                  ori          sp, t2, -1280
                  srl          s1, sp, zero
                  auipc        t3, 781041
635:              xor          s1, s6, tp
                  add          t3, s8, t3
                  bgeu         t3, s0, 642f
                  xor          t3, a3, t6
                  srli         t4, s10, 17
640:              and          t3, t2, gp
                  blt          s7, t3, 654f
642:              sltiu        t0, a5, -490
                  ori          a3, a6, -1327
644:              and          s1, a3, s7
                  lui          zero, 385807
                  bgeu         a7, a6, 661f
                  ori          s0, a3, -696
                  srli         gp, s9, 15
                  bne          ra, t3, 652f
                  slli         s9, s5, 30
                  bne          t1, s1, 668f
652:              or           a3, a3, s0
                  bltu         tp, s11, 662f
654:              sub          sp, tp, s0
                  bne          a1, t0, 669f
                  andi         s9, t5, -59
                  andi         t2, s6, -1764
                  sltu         t6, t6, s11
                  slti         a2, t4, 929
                  xor          s11, s11, a0
661:              xori         a5, a2, -1804
662:              srl          a2, t1, t4
                  srli         a5, a1, 2
                  sltiu        t6, a0, -1499
                  xor          t4, s7, a2
                  or           s6, t6, a2
                  slt          t2, s3, s8
668:              blt          a4, t5, 683f
669:              beq          s8, t1, 679f
                  srai         s1, a4, 28
                  sub          s4, a6, a3
                  srai         tp, s6, 0
                  add          ra, s0, zero
                  xor          t5, t2, a3
                  slti         a3, t3, 880
                  auipc        t0, 370646
                  bgeu         s4, a3, 692f
                  andi         s11, s0, -1064
679:              nop
                  sra          a2, t4, t4
                  slt          t0, s4, s8
                  bge          a3, t5, 697f
683:              bge          t2, a5, 703f
                  slli         sp, s6, 18
                  srli         t6, t1, 14
                  nop
                  ori          s1, a5, 604
                  xor          sp, t6, s8
                  sltiu        a0, tp, 1631
                  sub          s1, a5, a7
                  srli         t1, s9, 23
692:              bge          s8, s6, 694f
                  andi         a2, ra, -1631
694:              sll          sp, zero, s4
                  slti         s10, a4, -1579
                  slt          s5, t4, s0
697:              xor          a6, a4, t2
                  sltu         zero, s10, s6
                  andi         zero, t6, 732
                  add          s3, t5, s8
                  blt          t2, s0, 708f
                  auipc        tp, 889614
703:              beq          t3, a1, 708f
                  slli         a4, t4, 2
                  xori         t2, s9, -583
                  slti         a5, a1, -186
                  andi         a5, t3, 702
708:              sub          ra, a5, a2
                  beq          t5, s6, 716f
                  andi         a1, s11, -1159
                  srl          t0, ra, t1
                  slli         gp, s10, 9
                  slt          a5, sp, tp
                  srli         gp, a2, 22
                  xor          a6, s2, s10
716:              slli         t4, a4, 11
                  andi         s9, t1, -386
                  andi         t2, zero, 1250
                  sra          s11, a6, s1
                  bltu         gp, a1, 732f
                  lui          a6, 684388
                  ori          s9, t1, -711
                  slli         s0, a6, 22
                  sra          a1, a5, t0
                  sub          sp, t1, sp
                  bltu         a6, a0, 740f
                  srai         a0, s5, 2
                  and          a5, t3, s9
                  auipc        s11, 295695
                  or           tp, s5, t4
                  or           s4, s6, a3
732:              bltu         s4, s10, 735f
                  beq          s7, ra, 744f
                  sll          tp, s7, a5
735:              andi         sp, s10, 1175
                  or           t3, gp, s11
                  srai         ra, s7, 22
                  slt          s9, s9, s5
                  slt          t4, t6, s0
740:              xori         s11, a5, 228
                  slt          t0, s3, t0
                  sll          s0, a7, s7
                  bgeu         s3, ra, 753f
744:              blt          a0, ra, 750f
                  addi         sp, s10, -410
                  blt          s8, s7, 751f
                  slt          s11, t6, s4
                  srai         s4, s4, 30
                  sra          s9, s5, s0
750:              ori          s2, s6, -1996
751:              srai         s2, s3, 3
                  lui          a1, 285428
753:              srli         t6, s8, 25
                  sltu         zero, s0, t5
                  slli         a1, t5, 11
                  sub          t4, s8, s5
                  beq          s7, s0, 760f
                  sltu         t2, gp, a2
                  sll          t1, sp, s10
760:              blt          t0, a4, 762f
                  add          s6, s10, s4
762:              srl          s11, gp, s11
                  xor          s6, a7, a6
                  bge          s9, s11, 766f
                  and          t0, s8, a4
766:              slli         s0, a1, 17
                  xor          a0, s1, a2
                  sub          a2, a5, t1
                  slti         a1, a5, 1457
                  add          a1, s7, t0
                  auipc        s9, 763708
                  slli         s6, s5, 17
                  addi         s9, a6, 998
                  xor          a1, s9, t6
                  or           t5, a6, a5
                  and          t4, s10, s7
                  andi         s4, t2, -638
                  blt          a2, s8, 795f
                  bne          sp, a5, 789f
                  nop
                  slli         s0, gp, 19
                  lui          s4, 198315
                  srli         s4, s11, 18
                  auipc        t1, 775709
                  blt          gp, a5, 790f
                  add          a3, a2, s5
                  srai         t6, sp, 13
                  sub          t0, a1, t1
789:              bne          s1, t6, 809f
790:              bgeu         ra, tp, 795f
                  and          a5, s7, t1
                  add          a0, a5, s0
                  and          a5, t5, t5
                  add          s5, zero, a3
795:              bgeu         a2, tp, 798f
                  and          a4, s6, s7
                  bne          s4, s6, 807f
798:              srai         s11, t5, 21
                  bge          t6, t2, 814f
                  add          ra, s7, s10
                  srl          s3, gp, a6
                  bltu         s3, ra, 817f
                  bltu         s7, t3, 809f
                  slli         a2, s11, 20
                  beq          t4, s9, 820f
                  lui          a0, 884394
807:              auipc        s10, 659357
                  beq          s5, ra, 817f
809:              sltu         t4, a3, s3
                  srli         sp, s3, 17
                  add          a1, t1, t3
                  srli         s1, t2, 15
                  slti         t6, s6, 1603
814:              srli         s9, s10, 5
                  beq          t0, s9, 827f
                  slli         t1, t2, 28
817:              sub          t3, a6, s8
                  sll          s5, s2, t3
                  sltiu        sp, s4, -955
820:              sll          t3, s2, a0
                  bltu         s10, t3, 827f
                  lui          t6, 470682
                  slti         gp, s11, -1620
                  sra          t3, s5, t3
                  addi         s10, t3, -608
                  nop
827:              bgeu         t2, s0, 834f
                  ori          t5, s6, -167
                  or           gp, s1, s0
                  xor          s9, s10, a4
                  bne          t6, s11, 844f
                  xori         s5, s3, 500
                  add          ra, t4, gp
834:              slli         t2, t5, 17
                  slt          a6, t2, gp
                  or           t6, s9, s4
                  xor          s6, s11, a5
                  xori         t4, a6, -131
                  auipc        s3, 476189
                  srai         a6, s4, 29
                  sub          t0, s0, s7
                  bltu         s0, t4, 845f
                  xori         t2, tp, 1196
844:              lui          a0, 899119
845:              beq          s6, s8, 865f
                  add          s3, t6, s4
                  bge          a0, a7, 852f
                  sub          zero, t6, t6
                  xori         s5, a7, 1845
                  sltu         tp, s6, s8
                  and          a5, a5, t3
852:              bne          a2, a4, 866f
                  blt          a0, s11, 867f
                  nop
                  blt          sp, a6, 857f
                  blt          s6, a6, 863f
857:              bge          zero, s11, 872f
                  bge          s10, s11, 868f
                  slt          s11, gp, t4
                  add          a1, a3, t6
                  add          a2, a7, a0
                  srai         gp, a0, 1
863:              bne          s6, s11, 877f
                  srli         gp, s4, 3
865:              bge          t5, s7, 876f
866:              sll          t4, a6, s5
867:              blt          s3, a2, 870f
868:              sll          t5, t0, s10
                  srl          s2, a3, t5
870:              add          t2, s11, t2
                  sltu         s6, gp, t6
872:              nop
                  xori         zero, t6, 386
                  la           t4, region_1+792 #start riscv_load_store_rand_instr_stream_6
                  sb           a6, -189(t4)
                  sb           sp, 3(t4)
                  sh           s3, 134(t4)
                  sh           a5, -162(t4)
                  lh           a6, -80(t4)
                  sra          a4, a5, s2
                  lb           t1, 93(t4)
                  lbu          s6, -9(t4)
                  sw           tp, -108(t4)
                  lhu          s6, -108(t4)
                  sw           a6, -232(t4)
                  lbu          s2, 184(t4)
                  sw           s0, 232(t4)
                  xor          t5, zero, a4
                  lb           a3, -60(t4)
                  lb           s10, -61(t4)
                  srli         s3, s7, 15
                  lh           a1, -218(t4)
                  lhu          a4, 196(t4)
                  sb           sp, -93(t4)
                  lbu          s10, 215(t4)
                  auipc        zero, 460255
                  xor          s1, a5, s5
                  sltu         s11, t6, s2
                  sb           a7, -151(t4)
                  sb           s2, 22(t4)
                  sb           zero, -233(t4)
                  auipc        s1, 467408
                  lb           s10, -205(t4)
                  xori         s4, t3, 685
                  lbu          a6, 25(t4)
                  sltu         s6, s10, s2
                  lbu          t0, -247(t4)
                  lbu          a4, 26(t4)
                  lbu          zero, -125(t4)
                  slt          t6, a4, a0
                  sb           a4, 89(t4)
                  sh           s8, -92(t4) #end riscv_load_store_rand_instr_stream_6
                  sra          t5, s10, t4
                  bltu         s6, gp, 880f
876:              srai         s1, a3, 10
877:              slt          s10, t0, a1
                  xor          a6, tp, t4
                  srl          a5, s0, t1
880:              sub          s4, tp, a3
                  slti         s0, s3, -1861
                  sra          s3, a0, t0
                  sll          ra, s8, s8
                  srai         t5, s9, 0
                  bge          a0, zero, 887f
                  bgeu         zero, a2, 906f
887:              andi         a5, a3, 760
                  auipc        t2, 460704
                  xori         s10, a4, -153
                  add          s9, a6, a6
                  sltu         sp, s10, t5
                  add          s10, a3, sp
                  bgeu         s1, s5, 896f
                  slti         gp, sp, -24
                  blt          t5, ra, 907f
896:              sltu         t1, s9, t3
                  slt          s5, a7, s4
                  sra          ra, zero, a4
                  bltu         s4, zero, 919f
                  slti         s5, s5, 643
                  lui          gp, 14421
                  sub          s6, tp, s4
                  xori         sp, a3, 1071
                  sra          gp, s3, t0
                  bne          t3, sp, 919f
906:              or           gp, s9, tp
907:              srai         s3, t0, 4
                  lui          t2, 1010987
                  sll          a2, s9, a1
                  xor          a5, a2, a6
                  slti         t5, ra, 1832
                  bge          s6, sp, 925f
                  srai         t5, s1, 8
                  addi         t3, sp, 356
                  sll          a1, s9, s3
                  ori          s2, tp, -1861
                  xor          a3, a0, gp
                  and          s2, s2, t3
919:              andi         s3, t6, 155
                  srai         t0, zero, 31
                  srai         gp, a4, 17
                  sltiu        s10, t4, 1590
                  bge          t0, ra, 928f
                  sltu         t4, s4, s6
925:              slt          s11, s1, a1
                  sub          t0, s5, s9
                  nop
928:              or           s10, s0, s0
                  bgeu         tp, t2, 934f
                  srl          a2, t0, ra
                  ori          s5, t1, 76
                  beq          s1, tp, 941f
                  and          t5, s10, a2
934:              and          t6, s10, t5
                  srai         a6, a4, 11
                  and          t4, a6, s6
                  sub          s2, a7, s1
                  bltu         a2, a6, 941f
                  sltiu        t4, a4, 397
                  srai         ra, t6, 19
941:              bltu         a5, s0, 951f
                  xor          zero, t6, s8
                  add          t1, t5, zero
                  sll          s3, t6, zero
                  add          t6, a4, tp
                  slti         s9, s8, -1534
                  beq          t4, s3, 957f
                  add          a0, s8, a0
                  bgeu         a1, sp, 952f
                  slli         gp, a2, 12
951:              sll          s9, s9, a0
952:              xori         a0, s1, -1286
                  sltiu        a0, s9, -1762
                  ori          a2, ra, 1014
                  bge          s5, s8, 962f
                  bltu         a0, s6, 966f
957:              srli         t0, t3, 4
                  nop
                  bgeu         s4, a7, 969f
                  slti         s10, zero, -1948
                  nop
962:              bge          t0, a5, 969f
                  addi         s1, a4, -940
                  srli         a6, s6, 5
                  srli         t5, a0, 18
966:              blt          a4, a7, 969f
                  andi         zero, t3, -832
                  sll          s0, ra, t6
969:              ori          s10, t5, -416
                  lw           ra, 4(s8)
                  sltu         s0, ra, t2
                  ori          t2, s6, 355
                  and          t6, s2, t6
                  slt          t6, a1, s8
                  sltu         s1, s10, a0
                  lui          a5, 622684
                  slt          s6, t1, s8
                  ori          t6, t4, 1351
                  addi         s8, s8, 20
                  srai         s10, a1, 13
                  sub          a4, a0, s3
1802:             addi x20, x1, 0
1802:             jalr x20, x20, 0
sub_1:            slli         a6, s0, 7
                  srl          t0, ra, a5
                  srli         s5, s3, 25
                  addi         s8, s8, -56
                  andi         a5, s1, -695
                  sw           ra, 4(s8)
                  ori          sp, s11, -1228
                  slli         s4, s8, 0
                  srl          s2, t4, s11
                  and          s4, a2, s3
                  sltiu        a1, t2, -3
                  ori          a1, a0, -958
                  blt          t0, s3, 12f
                  slt          t4, t1, t6
                  beq          t2, t6, 11f
                  bne          ra, tp, 10f
                  bne          a6, s6, 12f
10:               sub          s4, t2, t5
11:               auipc        gp, 790512
12:               srl          s5, a1, sp
                  lw           ra, 4(s8)
                  sll          t5, t6, a0
                  addi         s8, s8, 56
                  sra          s4, s6, a2
                  srli         gp, s0, 6
                  andi         a3, t4, 1216
                  srai         s0, s0, 12
27:               addi x13, x1, 0
27:               jalr x13, x13, 0
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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x30, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x30, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x30, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x30, x2, ecall_handler
                  li x2, 0x1
                  beq x30, x2, instr_fault_handler
                  li x2, 0x5
                  beq x30, x2, load_fault_handler
                  li x2, 0x7
                  beq x30, x2, store_fault_handler
                  li x2, 0xc
                  beq x30, x2, pt_fault_handler
                  li x2, 0xd
                  beq x30, x2, pt_fault_handler
                  li x2, 0xf
                  beq x30, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

load_fault_handler:
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

store_fault_handler:
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
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
