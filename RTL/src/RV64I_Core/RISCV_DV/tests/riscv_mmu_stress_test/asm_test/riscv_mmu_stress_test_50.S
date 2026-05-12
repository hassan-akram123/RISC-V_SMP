.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 1
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xfba756cc
                  li x5, 0x80000000
                  li x6, 0x8aef6f6b
                  li x7, 0xf9fa5e01
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x7ef893ff
                  li x11, 0x80000000
                  li x12, 0xb52d7d1a
                  li x13, 0x7
                  li x14, 0xf65d03b8
                  li x15, 0xc6dfbce9
                  li x16, 0x0
                  li x17, 0x7
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x64fd4428
                  li x21, 0x80000000
                  li x22, 0xf62e47f9
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xf9dcf7ef
                  li x26, 0xb771e6c4
                  li x28, 0x3
                  li x29, 0xad7dfcf2
                  li x30, 0xfb8e52f2
                  la x31, user_stack_end
main:             add          tp, a3, s9
                  la           t4, sub_2
                  srli         ra, s1, 29
                  sub          s10, s10, t5
                  lui          s4, 758116
                  xor          t0, t3, s7
                  slti         a5, a4, 552
                  lui          tp, 150372
                  lui          t1, 71235
                  addi         t4, t4, -35
                  slt          s7, a5, t3
                  xori         t5, s3, -305
main_j2:          jalr         a2, t4, 35 #jump main -> sub_2
                  or           s1, s8, a0
                  slti         a3, a4, -2037
                  addi         s0, s10, -1408
                  la           gp, sub_1
                  sltiu        a3, a6, 386
                  addi         gp, gp, 338
                  addi         t1, s11, -142
                  bge          s0, t6, main_j3 #branch to jump instr
                  sltu         a2, s1, s9
                  slti         zero, s11, -1647
                  slti         s10, s0, -303
                  slti         s10, s8, 457
                  sra          a3, a7, a6
main_j3:          jalr         a2, gp, -338 #jump main -> sub_1
                  la           ra, region_0+424 #start riscv_load_store_hazard_instr_stream_0
                  and          a1, t2, t0
                  sb           t5, -351(ra)
                  sb           a2, -351(ra)
                  sb           s11, -351(ra)
                  sra          s3, t3, a0
                  lbu          a6, -351(ra)
                  andi         a7, tp, -283
                  xori         a0, s8, 555
                  sb           ra, -351(ra)
                  lb           sp, -351(ra)
                  sh           s10, -398(ra)
                  sh           t1, -398(ra)
                  nop
                  sltiu        a0, a5, -550
                  lhu          s8, -398(ra)
                  lb           a2, 731(ra)
                  lb           s9, -135(ra)
                  sb           s1, -135(ra)
                  lhu          a1, 1144(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_1+1540 #start load_store_instr_stream_1
                  la           s0, region_1+829 #start load_store_instr_stream_0
                  lhu          sp, -5(s0)
                  sh           t0, -164(s3)
                  sb           s7, -1411(s3)
                  sb           a6, -13(s0)
                  lb           t5, -636(s3)
                  lbu          zero, -181(s3)
                  lb           a0, 4(s0)
                  lb           t2, 448(s3) #end load_store_instr_stream_1
                  sb           a3, -14(s0)
                  sh           a1, 7(s0)
                  lbu          s4, 2(s0) #end load_store_instr_stream_0
                  la           tp, region_1+1958 #start riscv_load_store_rand_instr_stream_0
                  nop
                  slti         s9, a3, -529
                  lb           t5, 37(tp)
                  sll          a3, s11, s1
                  xor          ra, t1, t3
                  sh           s2, -20(tp)
                  xor          t1, t5, zero
                  lw           s1, -170(tp)
                  sb           tp, -185(tp)
                  lbu          t0, -193(tp)
                  nop
                  xor          ra, sp, s3
                  addi         t2, s4, -1290
                  lb           a4, -243(tp)
                  lbu          a0, -159(tp)
                  andi         a6, s10, 370
                  or           s2, a5, s7
                  lbu          s6, -1(tp)
                  lb           t0, 17(tp)
                  lbu          t2, -90(tp)
                  sb           t2, -39(tp)
                  lbu          a2, -185(tp)
                  and          s0, t2, t3
                  lb           zero, 3(tp)
                  sb           a7, -4(tp)
                  slli         sp, a4, 21
                  lb           s8, -165(tp)
                  slli         a1, a3, 5
                  sll          s9, t2, s4
                  lh           a5, -202(tp)
                  lw           s0, -2(tp)
                  or           t0, t4, s8
                  srli         a7, a7, 9
                  lbu          zero, -209(tp)
                  sb           s2, -143(tp)
                  srl          t2, s10, s10
                  lh           s8, -124(tp)
                  lui          s2, 877768
                  slli         s9, t0, 0
                  srai         s6, tp, 27
                  nop
                  andi         s6, s0, -1164
                  xor          s7, s0, s7
                  srai         s7, s7, 26
                  lb           a0, -55(tp)
                  srli         t3, t2, 16
                  lui          t1, 426161
                  lbu          gp, 35(tp)
                  lbu          a5, -217(tp)
                  andi         s4, ra, 19
                  sltiu        t4, t4, -45
                  lbu          s8, -50(tp) #end riscv_load_store_rand_instr_stream_0
                  xori         s6, zero, -1653
                  bge          t2, a2, 19f
                  addi         s9, gp, -1047
                  sltu         a6, a1, zero
                  sltu         s4, s5, s10
                  bgeu         t3, a6, 18f
                  srli         a4, s11, 1
                  addi         a1, s2, 1870
                  xor          gp, a7, s7
                  add          t5, t5, sp
                  slli         s7, s9, 20
                  blt          a3, s1, 19f
                  sub          s10, t2, s0
                  or           a2, t0, a6
                  sll          a3, a2, a5
                  bne          a1, a6, 35f
                  xor          s1, ra, s10
                  srl          t5, a7, s6
18:               nop
19:               ori          s6, t6, 1235
                  slti         zero, s10, -111
                  sll          s6, s5, a6
                  la           a5, sub_2
                  and          s1, t4, t5
                  addi         a5, a5, 396
                  xor          s6, t0, s10
                  and          a6, a1, s4
                  srli         tp, s1, 18
                  add          s0, tp, s3
                  sll          a6, t4, a6
                  nop
                  srli         a7, t5, 8
                  sll          s3, ra, s5
main_j1:          jalr         a2, a5, -396 #jump main -> sub_2
                  srl          gp, s0, s4
                  or           a4, s3, tp
                  addi         sp, gp, -1115
                  sub          s0, a2, s1
                  sltiu        s6, t2, -139
                  sltiu        t3, tp, 1287
                  addi         s9, s0, 1496
                  sltiu        a4, s5, 1609
                  sltiu        a7, s5, -1917
                  sltu         a7, a1, s5
                  blt          zero, s6, 40f
                  ori          s10, zero, -1440
                  srai         t1, s11, 10
                  bltu         tp, s1, 51f
35:               bltu         t6, t1, 44f
                  sltiu        a3, sp, -2035
                  sub          a7, t3, s8
                  andi         s9, t2, 359
                  bltu         a3, a6, 55f
40:               srl          gp, s9, s11
                  slti         s1, a4, 529
                  sub          a7, s9, t1
                  andi         a2, ra, 1005
44:               bne          t5, s3, 54f
                  auipc        a1, 633818
                  xori         a5, gp, 1752
                  xor          t1, t0, t0
                  slli         s2, s9, 10
                  slti         t3, s3, 891
                  slti         s6, a2, -69
51:               ori          tp, a5, 1208
                  sltiu        s6, t3, -1124
                  bne          sp, ra, 55f
54:               sub          zero, a6, ra
55:               sltu         sp, zero, s2
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t6, t6, -36
                  srai         t3, a0, 14
                  srl          s6, t3, t4
                  sw           a2, 4(t6)
                  sll          a6, s0, a7
                  la           sp, region_0+1748 #start riscv_load_store_hazard_instr_stream_2
                  sh           a6, -1486(sp)
                  ori          s7, ra, 1883
                  lh           s8, 244(sp)
                  lhu          s6, 244(sp)
                  lb           a7, -197(sp)
                  lbu          s0, -197(sp)
                  or           gp, a3, a5
                  sw           t0, -1248(sp)
                  lb           s4, -1139(sp)
                  sw           s2, -692(sp)
                  sll          s0, s10, a6
                  sh           a0, -692(sp)
                  xori         s7, s3, 120
                  lb           gp, -692(sp)
                  lh           a3, -1690(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1393 #start riscv_load_store_rand_instr_stream_3
                  or           s1, a0, t6
                  sb           t1, -131(sp)
                  add          zero, a5, s1
                  xori         t5, a7, -410
                  andi         gp, a0, -1546
                  sra          s7, s2, a4
                  srli         s1, s2, 30
                  lw           t2, 239(sp)
                  or           t4, s9, s3
                  or           a0, gp, s9
                  lui          a5, 405527
                  lh           t0, -99(sp)
                  srai         a4, a2, 19
                  srl          t4, a2, s4
                  sltu         a5, s3, s4
                  or           a5, a3, t4
                  sb           t5, -11(sp)
                  lh           s0, 111(sp)
                  slli         gp, t6, 23
                  sra          a2, a7, s8
                  lh           s7, 37(sp)
                  and          s4, s5, a0
                  sb           t2, -34(sp)
                  auipc        a2, 994809
                  slt          s4, s2, zero
                  sw           s9, -149(sp)
                  slti         s7, s2, 689
                  sub          a7, a4, s3
                  nop
                  sra          s8, s9, a4
                  slti         t2, s9, 1208
                  lh           s10, 9(sp)
                  lui          s6, 780713
                  and          t2, tp, a3
                  and          ra, a4, t5
                  or           a6, t3, s2
                  lh           s9, 127(sp)
                  sltu         s10, a5, s4
                  sb           s7, 5(sp)
                  sb           s2, 216(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+502 #start riscv_load_store_rand_instr_stream_2
                  sb           t4, 16(sp)
                  nop
                  sra          s1, a1, a6
                  nop
                  xor          s4, s1, t3
                  slt          zero, sp, ra
                  lhu          a3, 48(sp)
                  lui          t5, 290893
                  addi         t0, t1, 609
                  and          t5, s9, a1
                  sh           a2, -138(sp)
                  slti         t1, s3, -1096
                  add          gp, t1, a0
                  lb           t0, 164(sp)
                  sll          s3, s2, t0
                  nop
                  xor          t0, a6, gp
                  sb           s9, 243(sp)
                  xori         a1, s6, 69
                  sb           t0, -126(sp)
                  srli         s0, s10, 26
                  nop
                  lb           t5, 94(sp)
                  lbu          a3, 55(sp)
                  srai         a5, a4, 24
                  lui          a5, 1030389
                  lb           ra, -113(sp)
                  lbu          a4, -124(sp)
                  slti         t0, s8, -758
                  sb           gp, -89(sp)
                  sh           s8, 26(sp)
                  lbu          a3, 113(sp)
                  auipc        a6, 209911
                  lb           ra, -77(sp)
                  lw           a2, -210(sp)
                  addi         a7, t2, -907
                  sb           t2, -147(sp)
                  lhu          t3, 98(sp)
                  lb           t5, 105(sp)
                  lw           a6, 158(sp)
                  ori          tp, a6, -335
                  lbu          s10, 67(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s2, region_1+473 #start load_store_instr_stream_1
                  la           s10, region_1+833 #start load_store_instr_stream_0
                  la           s1, region_1+1202 #start load_store_instr_stream_2
                  lb           zero, 898(s2)
                  lb           t2, 687(s2)
                  lh           s3, -7(s10)
                  sb           t3, 201(s1)
                  lb           a0, 1064(s2)
                  lbu          a6, 4(s10)
                  lb           s7, -6(s10)
                  sb           s5, 99(s1)
                  sb           t6, -107(s1)
                  sb           a7, 0(s10)
                  lbu          sp, 478(s2)
                  lhu          a0, -107(s2)
                  lhu          s6, 949(s2)
                  lbu          a7, -32(s1)
                  sb           s11, 1(s10)
                  lbu          a5, -193(s1)
                  lh           s3, 93(s2)
                  sh           t2, -7(s10)
                  sh           t2, -232(s1)
                  lb           a2, 965(s2)
                  sb           a6, -164(s1)
                  sb           s2, -200(s1) #end load_store_instr_stream_2
                  sb           a1, -12(s10)
                  sw           t3, -345(s2)
                  lhu          a4, 7(s10)
                  sw           sp, -149(s2) #end load_store_instr_stream_1
                  lhu          a3, 11(s10) #end load_store_instr_stream_0
                  la           s2, region_0+1245 #start load_store_instr_stream_3
                  la           s0, region_0+1120 #start load_store_instr_stream_0
                  la           a7, region_0+1708 #start load_store_instr_stream_1
                  la           a0, region_0+678 #start load_store_instr_stream_2
                  sb           s10, -137(s0)
                  sb           s6, 9(a7)
                  lbu          s9, 171(s2)
                  lbu          sp, -223(s0)
                  lw           gp, 0(a7)
                  lbu          s10, -28(s2)
                  sh           s10, 4(a7)
                  sb           s9, 198(s2)
                  lh           t4, 766(a0)
                  lhu          a4, 90(s0)
                  lbu          t4, 668(a0)
                  sb           s7, -4(a7)
                  sb           s6, 581(a0)
                  lbu          a4, -50(s0)
                  sb           t2, 141(s2)
                  lb           ra, -4(a7)
                  lh           ra, 14(a7)
                  sb           s6, 15(a7)
                  sb           a4, -449(a0)
                  lb           a1, -271(a0)
                  lbu          a3, 70(s2)
                  lb           s6, 158(s0)
                  lb           ra, 13(a7)
                  lbu          a6, 242(s0)
                  lbu          zero, 78(s2) #end load_store_instr_stream_3
                  lb           s3, -16(a7) #end load_store_instr_stream_1
                  sb           sp, -407(a0) #end load_store_instr_stream_2
                  lhu          a5, 66(s0) #end load_store_instr_stream_0
                  la           ra, region_0+243 #start riscv_load_store_hazard_instr_stream_4
                  sub          s3, a4, a2
                  sb           s8, 1409(ra)
                  sh           a4, 1409(ra)
                  add          s8, s0, s6
                  lh           zero, 1439(ra)
                  srl          a4, s4, gp
                  sb           gp, 1439(ra)
                  sh           a6, 1727(ra)
                  lhu          t5, 1727(ra)
                  lbu          s3, 1290(ra)
                  srl          t1, a4, s8
                  sb           s7, 1290(ra)
                  andi         s2, a2, 244
                  slt          s9, s7, t5
                  sb           s9, 1290(ra)
                  lb           gp, 506(ra)
                  lbu          s0, 1443(ra)
                  sltu         s2, s8, sp
                  sh           t2, 1443(ra) #end riscv_load_store_hazard_instr_stream_4
                  la           s7, region_1+256 #start riscv_load_store_rand_instr_stream_5
                  sll          tp, t1, s0
                  lb           gp, 3(s7)
                  sltiu        a5, ra, -490
                  lw           zero, -12(s7)
                  addi         s6, a6, -880
                  lbu          a1, 5(s7)
                  sh           a6, 12(s7)
                  lbu          s10, -5(s7)
                  ori          ra, t3, 1567
                  lh           s3, 2(s7)
                  auipc        s10, 996834
                  sub          ra, s2, s4
                  lbu          a3, 0(s7)
                  ori          s0, s4, -545
                  lb           a3, -1(s7)
                  slli         a5, a0, 2
                  lbu          a4, 13(s7)
                  sltu         t5, a6, t4
                  andi         s10, t0, 1561
                  srl          a6, gp, a0
                  lbu          sp, -3(s7)
                  sra          a2, s8, a7
                  sb           tp, 1(s7)
                  sb           t6, -7(s7)
                  andi         a7, gp, 1529
                  sb           sp, 13(s7)
                  sh           t4, 14(s7)
                  lh           t0, -4(s7)
                  xor          s10, s1, a5
                  slli         s9, a0, 4
                  slti         s6, s7, -172
                  lbu          t5, 15(s7)
                  lhu          s8, -12(s7)
                  lb           tp, -5(s7)
                  sh           gp, 10(s7)
                  nop
                  sh           s0, -4(s7)
                  srl          a4, sp, t6
                  sltiu        s3, a6, -1944
                  sh           t2, -10(s7)
                  lbu          zero, 13(s7)
                  addi         a0, ra, 735
                  or           tp, s5, t4
                  xor          s1, a2, s4
                  sh           t6, -6(s7)
                  lb           a3, -7(s7)
                  lb           a2, -7(s7)
                  lb           a2, 15(s7) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1198 #start riscv_load_store_rand_instr_stream_1
                  sb           a0, 239(sp)
                  addi         gp, ra, 1515
                  sb           a3, 72(sp)
                  lbu          a5, 91(sp)
                  andi         s4, a7, -1927
                  nop
                  lbu          s1, -221(sp)
                  auipc        t2, 896602
                  sra          t4, s11, t4
                  andi         s2, s4, 1997
                  andi         t2, a4, 153
                  sb           s2, -204(sp)
                  lbu          a1, 37(sp)
                  sb           s5, 213(sp)
                  lbu          a1, -211(sp)
                  sltiu        t0, t6, -1030
                  sltu         t0, t3, zero
                  lui          t1, 514841
                  lb           t1, -69(sp)
                  srli         t3, s10, 19
                  sll          t1, s1, s7
                  and          s8, a4, s10
                  lh           gp, 84(sp)
                  add          tp, a1, s8
                  auipc        a7, 111815
                  nop
                  xori         a3, s0, -335
                  add          s8, s7, t3
                  lbu          s2, 180(sp)
                  xor          t2, s2, tp
                  sw           s4, 22(sp)
                  lbu          s8, 253(sp)
                  addi         s7, a3, -665
                  or           s9, s11, tp
                  lb           a4, -112(sp)
                  sb           ra, 108(sp)
                  and          s4, zero, s6
                  sra          a1, t5, zero
                  lb           gp, 112(sp)
                  sll          s6, gp, s2
                  sb           tp, -71(sp)
                  xor          tp, t2, a2
                  andi         t3, a6, -2019
                  xor          s4, gp, a2
                  auipc        t2, 157622
                  slli         ra, t5, 18
                  lb           a0, -174(sp)
                  srli         a7, a3, 18
                  lbu          a6, -88(sp) #end riscv_load_store_rand_instr_stream_1
                  la           ra, region_0+155 #start riscv_load_store_hazard_instr_stream_6
                  sltiu        a4, t5, 1871
                  sra          t5, s9, t5
                  sb           t0, -6(ra)
                  andi         t0, a3, 1592
                  lbu          s6, -6(ra)
                  sb           t4, -6(ra)
                  lb           tp, -9(ra)
                  lb           s1, -9(ra)
                  lb           t2, 4(ra)
                  lb           t3, -3(ra)
                  sltiu        a2, a3, -587
                  lh           s9, -5(ra)
                  lbu          t4, 6(ra)
                  or           s2, a4, t5
                  srai         t1, s11, 20
                  sh           s7, -5(ra)
                  lh           s4, 13(ra)
                  add          s10, s5, a4
                  lhu          s7, 1(ra) #end riscv_load_store_hazard_instr_stream_6
                  la           a7, region_0+568 #start riscv_load_store_rand_instr_stream_0
                  sra          t5, s11, a5
                  srli         s4, s3, 7
                  lbu          t3, -108(a7)
                  nop
                  and          a5, a5, sp
                  lb           a0, 133(a7)
                  ori          s6, a4, -615
                  and          sp, a3, ra
                  lb           ra, 237(a7)
                  sb           s5, 245(a7)
                  addi         zero, s3, 522
                  lw           sp, 164(a7)
                  sll          s9, a7, s8
                  sb           s4, 91(a7)
                  lw           s10, 88(a7)
                  and          a3, s7, a5
                  lui          t2, 799504
                  slt          s4, t4, s10
                  sb           a6, -13(a7)
                  and          s0, a6, tp
                  sb           t0, -95(a7)
                  srai         a1, s6, 15
                  slt          a0, s5, ra
                  addi         s4, a5, 421
                  srl          s7, a5, s0
                  lhu          a4, 24(a7)
                  lh           a6, 34(a7)
                  lbu          a4, -151(a7) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+1109 #start riscv_load_store_hazard_instr_stream_1
                  lb           t5, 128(t4)
                  and          t3, s6, t6
                  ori          s2, s4, -997
                  lbu          s6, 128(t4)
                  sb           s9, 450(t4)
                  sw           t4, -981(t4)
                  sb           t6, -785(t4)
                  lb           a5, -785(t4)
                  lh           t3, -785(t4)
                  lbu          s1, 210(t4)
                  lb           s10, 210(t4)
                  lui          a2, 674021
                  sltiu        t3, a0, -784
                  lbu          a0, 210(t4)
                  lbu          a6, 210(t4)
                  lb           t0, 210(t4)
                  andi         s9, a1, 1897
                  lb           t3, 210(t4)
                  lb           s7, 210(t4) #end riscv_load_store_hazard_instr_stream_1
                  la           a2, region_0+504 #start load_store_instr_stream_1
                  la           ra, region_0+668 #start load_store_instr_stream_2
                  sb           tp, 1081(a2)
                  lw           a1, -32(a2)
                  la           t0, region_0+1408 #start load_store_instr_stream_0
                  lbu          a7, -186(a2)
                  lh           s10, -46(ra)
                  lbu          a7, -76(t0)
                  sb           s9, -30(ra)
                  lhu          a0, 186(t0)
                  sb           s0, 14(ra)
                  sb           sp, 172(t0)
                  lw           a5, -12(ra)
                  sb           s3, 504(a2)
                  sb           a5, 833(a2)
                  lbu          a0, 7(ra)
                  lh           s4, 1188(a2)
                  lb           a6, 39(ra)
                  lb           a6, 59(t0)
                  lhu          s8, 12(ra)
                  lbu          a0, -33(ra)
                  lh           s2, 190(t0)
                  lhu          a7, -64(ra)
                  lbu          t5, 1081(a2)
                  lh           s0, 818(a2)
                  lbu          t2, -23(ra) #end load_store_instr_stream_2
                  lbu          s0, 1422(a2)
                  lbu          s6, 433(a2) #end load_store_instr_stream_1
                  lhu          s4, 186(t0) #end load_store_instr_stream_0
                  la           sp, region_1+726 #start riscv_load_store_rand_instr_stream_4
                  ori          s10, s5, -2044
                  sltu         t4, t4, s11
                  xor          s3, ra, s2
                  lhu          t4, 118(sp)
                  and          a1, s0, t2
                  lb           s0, 226(sp)
                  lb           zero, 29(sp)
                  sub          s8, sp, zero
                  sll          tp, a5, s2
                  sub          s3, tp, ra
                  srli         a6, s7, 3
                  sub          t0, a6, s1
                  slt          a6, s7, s11
                  lbu          ra, -71(sp)
                  sb           s11, 249(sp)
                  lbu          s9, 16(sp)
                  sltiu        ra, a6, 934
                  or           t3, t1, s3
                  lbu          a3, 121(sp)
                  sub          gp, t3, a7
                  ori          s8, tp, -113
                  lhu          a6, 134(sp)
                  ori          s10, t3, -338
                  lbu          s7, -1(sp)
                  lb           s3, -137(sp)
                  lb           s10, 137(sp)
                  sb           a6, -215(sp)
                  lb           t3, 210(sp)
                  sltu         a5, a0, s3
                  sb           t4, -172(sp)
                  and          t0, s9, s8
                  lh           t2, 124(sp)
                  nop
                  lb           s2, 99(sp)
                  sltu         a1, a1, s7
                  lbu          a7, 59(sp)
                  lbu          s6, 209(sp)
                  xori         s1, t1, 1084
                  slt          t3, s10, a0
                  andi         s3, a3, 710
                  lb           t4, 167(sp)
                  slli         a1, a2, 1
                  or           t2, s5, t4
                  ori          s10, a7, 542
                  sb           gp, -206(sp) #end riscv_load_store_rand_instr_stream_4
                  la           gp, region_0+1835 #start load_store_instr_stream_2
                  la           t5, region_0+1852 #start load_store_instr_stream_3
                  la           s9, region_0+502 #start load_store_instr_stream_1
                  lh           s6, -54(t5)
                  sb           t2, 187(s9)
                  la           s1, region_0+1140 #start load_store_instr_stream_0
                  sb           t3, -249(s9)
                  sb           a1, -243(s9)
                  lbu          s10, -7(s1)
                  sh           s2, 48(s9)
                  lbu          tp, -24(gp)
                  lbu          s0, -56(gp)
                  lb           a2, -53(t5)
                  lbu          t0, 160(s9)
                  lbu          t4, 64(t5)
                  lb           s0, 3(s1)
                  sb           s4, 1(gp)
                  lbu          t3, 16(gp)
                  lh           s4, 114(s9)
                  lh           zero, 16(s1)
                  lh           t2, 10(s1)
                  lb           a3, -5(t5)
                  lb           s4, -53(t5)
                  lb           t3, -5(gp)
                  lb           s4, 61(t5)
                  lb           a0, -85(s9)
                  sh           gp, 47(gp)
                  sb           t1, -17(t5)
                  lb           t1, -1(s1)
                  sb           gp, -46(s9)
                  lb           t0, -6(s1)
                  lb           s4, 12(gp) #end load_store_instr_stream_2
                  sb           a0, 255(s9)
                  lbu          a6, 32(t5)
                  lb           s4, -243(s9) #end load_store_instr_stream_1
                  lb           s2, 26(t5) #end load_store_instr_stream_3
                  sb           t3, -14(s1) #end load_store_instr_stream_0
                  la           s7, region_0+1359 #start riscv_load_store_hazard_instr_stream_5
                  lbu          t5, -108(s7)
                  lbu          a6, 218(s7)
                  srl          s0, gp, a2
                  andi         ra, t2, -1413
                  lw           s6, 77(s7)
                  addi         t1, t0, -787
                  lb           sp, 181(s7)
                  sltiu        t5, s10, 340
                  lhu          a3, 181(s7)
                  sb           s0, 236(s7)
                  sb           ra, 236(s7)
                  sb           a2, 236(s7)
                  lb           tp, 236(s7)
                  sb           s2, 236(s7)
                  lb           a7, -208(s7)
                  lb           s0, -208(s7)
                  sb           a5, -208(s7)
                  lbu          t3, 198(s7)
                  lbu          t5, 198(s7)
                  sb           zero, 198(s7)
                  sb           gp, 198(s7)
                  lbu          s6, 95(s7) #end riscv_load_store_hazard_instr_stream_5
                  la           s6, region_0+1914 #start riscv_load_store_rand_instr_stream_6
                  lb           t5, 8(s6)
                  sb           s8, 15(s6)
                  xor          t2, t2, t5
                  sh           s11, -4(s6)
                  addi         a2, s5, -656
                  lb           t3, -59(s6)
                  or           s3, ra, a3
                  sltu         t4, t6, s4
                  sh           ra, -32(s6)
                  lhu          a7, -58(s6)
                  lw           s2, -30(s6)
                  sh           s0, -18(s6)
                  slti         s3, t4, -1197
                  lw           t1, -58(s6)
                  srli         s0, s7, 0
                  sw           s9, -22(s6)
                  sub          s3, s5, ra
                  srli         a4, t2, 29
                  srai         a3, s4, 12
                  sb           a4, 61(s6)
                  nop
                  sh           s0, 48(s6)
                  ori          s1, ra, -1657
                  lui          tp, 8627
                  auipc        a4, 89498
                  sra          s0, a6, zero
                  sb           a2, 44(s6)
                  and          s2, s0, s8
                  sb           s6, 35(s6)
                  xori         t0, t5, -1289
                  lbu          ra, 16(s6)
                  lh           s3, 14(s6)
                  sb           s8, 51(s6)
                  sh           s5, 62(s6)
                  sll          s8, s8, a4
                  sub          zero, a2, gp
                  sra          t4, a0, a5
                  lb           t2, -52(s6)
                  xor          t0, ra, t1
                  lhu          zero, -40(s6)
                  sh           a1, 28(s6)
                  lb           s10, 0(s6)
                  lbu          a1, 37(s6)
                  lw           a7, 6(s6)
                  slti         t5, t2, 100
                  sltiu        s4, s0, -1817
                  lbu          t2, -43(s6)
                  sh           s3, -32(s6) #end riscv_load_store_rand_instr_stream_6
                  la           a1, region_0+940 #start load_store_instr_stream_3
                  sb           t5, -4(a1)
                  la           t1, region_0+1234 #start load_store_instr_stream_1
                  la           s0, region_0+1649 #start load_store_instr_stream_0
                  lh           zero, 4(a1)
                  lhu          s4, 4(t1)
                  lh           s10, -87(s0)
                  la           s9, region_0+1456 #start load_store_instr_stream_2
                  lh           s10, 176(s9)
                  lbu          t0, -45(t1)
                  lb           s7, -513(s9)
                  lhu          ra, 65(s0)
                  lb           a7, 55(t1)
                  sb           tp, 15(t1)
                  lb           t3, 11(a1)
                  lbu          t5, -1252(s9)
                  lbu          s10, -213(s0)
                  lbu          t3, 37(s0)
                  lhu          a4, 169(s0)
                  sb           tp, 8(t1)
                  lhu          t4, -14(s9)
                  lb           a4, -202(s0)
                  sb           sp, -15(a1)
                  lb           ra, -3(a1)
                  lb           a3, -3(t1)
                  lb           s1, -45(t1)
                  lbu          s6, -867(s9)
                  sh           s0, 2(a1)
                  lw           a7, -1400(s9)
                  lbu          s2, 33(t1)
                  lhu          tp, 189(s0)
                  lb           a0, -5(a1)
                  lh           a3, -14(t1)
                  lb           t2, -1399(s9) #end load_store_instr_stream_2
                  lb           t4, 2(a1)
                  lb           s10, -2(a1)
                  lh           tp, -44(t1) #end load_store_instr_stream_1
                  sb           a1, 14(a1) #end load_store_instr_stream_3
                  lbu          sp, 43(s0)
                  lbu          s3, -101(s0) #end load_store_instr_stream_0
                  la           a7, region_0+1542 #start load_store_instr_stream_2
                  la           s2, region_0+1704 #start load_store_instr_stream_3
                  lw           s4, 6(a7)
                  la           a1, region_0+1368 #start load_store_instr_stream_1
                  la           tp, region_0+649 #start load_store_instr_stream_0
                  sb           ra, -56(s2)
                  sh           s9, 1253(tp)
                  lb           a4, -195(a7)
                  lbu          s10, -156(a1)
                  lhu          s7, -40(s2)
                  lh           t1, 449(tp)
                  lb           a2, -128(a1)
                  sb           s1, 1026(tp)
                  lh           t5, 174(a1)
                  sh           t0, 34(s2)
                  sb           a0, 123(a7)
                  sb           ra, -245(a1)
                  lbu          a2, -160(a1)
                  lhu          s3, 1315(tp)
                  lb           s6, 53(s2)
                  sb           t1, 215(a7)
                  lhu          t2, 42(s2)
                  sb           t3, -35(s2)
                  lw           s1, 132(a1)
                  lb           a3, 16(tp)
                  sb           tp, -19(s2)
                  sb           a0, 126(a1)
                  lb           t4, 1(s2)
                  lb           s10, 303(tp)
                  lbu          s4, 23(s2) #end load_store_instr_stream_3
                  lhu          a6, 102(a1)
                  sb           t5, 256(tp)
                  sh           s11, -130(a7) #end load_store_instr_stream_2
                  lb           a0, -121(a1) #end load_store_instr_stream_1
                  sw           s5, -65(tp) #end load_store_instr_stream_0
                  xori         s6, a2, 642
                  or           gp, s1, a7
                  bltu         tp, s1, 18f
                  srli         s9, sp, 7
                  sltu         zero, t4, a4
                  nop
                  sltiu        a7, s11, -852
                  srl          a7, t1, a3
                  auipc        a5, 719317
                  srl          a3, t5, a3
                  and          s4, a5, a7
                  blt          s11, zero, 30f
                  add          a7, a3, s10
                  bne          tp, t1, 32f
                  srai         t2, a1, 1
                  xor          t4, s11, s5
                  and          ra, s2, t0
                  sll          a3, ra, s4
18:               bne          s9, s3, 32f
                  slli         a1, s10, 1
                  slti         t0, t0, 376
                  blt          a6, s2, 26f
                  bltu         zero, s0, 33f
                  and          a4, ra, s4
                  addi         s8, a3, 759
                  auipc        a6, 1027029
26:               andi         tp, zero, 1332
                  bge          s11, t3, 46f
                  beq          s0, gp, 39f
                  andi         s8, t5, 1309
30:               or           a3, t0, gp
                  bne          a7, a7, 36f
32:               bgeu         s0, gp, 50f
33:               add          a7, a3, t5
                  srli         a4, tp, 31
                  bne          a2, a7, 36f
36:               sub          zero, t1, s1
                  slti         a6, t5, -353
                  nop
39:               blt          s4, a0, 48f
                  xori         ra, a5, -1664
                  addi         a6, ra, -275
                  srl          zero, a1, a2
                  nop
                  add          t2, a3, s4
                  srl          sp, a2, s3
46:               xori         tp, s9, 1897
                  sub          t2, s1, a2
48:               bgeu         a3, ra, 57f
                  bltu         t4, t1, 56f
50:               sltiu        t3, t4, 820
                  bltu         s1, t5, 70f
                  and          a7, t0, t5
                  beq          s9, s0, 57f
                  bge          t0, tp, 59f
                  bge          a3, s1, 56f
56:               add          a6, a6, t6
57:               add          t2, s4, a4
                  srl          s4, s0, a3
59:               sra          ra, t4, a3
                  ori          gp, s10, 1485
                  beq          tp, s9, 74f
                  xori         s8, sp, -443
                  slt          t3, s6, t6
                  sub          s6, s7, zero
                  sll          a6, s6, s2
                  xori         t0, t0, -897
                  and          tp, s6, s2
                  lui          a6, 989290
                  bltu         s9, s6, 73f
70:               lui          a0, 592067
                  srl          zero, a1, s9
                  srli         s3, ra, 9
73:               auipc        t5, 469576
74:               sltiu        t2, s2, -1691
                  sub          a2, s3, sp
                  addi         a1, s11, 1293
                  bge          a7, sp, 91f
                  bne          t4, a7, 89f
                  xor          t4, ra, a4
                  and          gp, t0, s10
                  srai         s10, t0, 7
                  sltu         a4, t6, tp
                  slt          s7, sp, s4
                  bne          s4, t0, 85f
85:               slt          t3, a0, t6
                  srl          a7, s10, zero
                  lui          s10, 856050
                  ori          t3, t3, 239
89:               add          t0, zero, t6
                  xor          ra, a0, t2
91:               andi         t5, ra, 57
                  bgeu         a4, t1, 93f
93:               srl          t4, s4, t1
                  sub          a3, s2, gp
                  bgeu         a0, s2, 96f
                  la           t4, region_0+1892 #start load_store_instr_stream_2
                  sb           a4, -997(t4)
                  la           s0, region_0+1487 #start load_store_instr_stream_3
                  la           a7, region_0+958 #start load_store_instr_stream_1
                  lh           s4, -1876(t4)
                  lb           a3, -24(s0)
                  lb           zero, -232(s0)
                  sb           s9, -49(a7)
                  lb           t0, -813(t4)
                  lbu          zero, -387(t4)
                  la           ra, region_0+363 #start load_store_instr_stream_0
                  lb           a6, -127(t4)
                  lw           s4, 210(a7)
                  sb           t0, -20(ra)
                  lh           s9, 14(a7)
                  sb           zero, -59(ra)
                  lbu          a4, -59(ra)
                  sh           s11, -470(t4)
                  lb           s7, -715(t4)
                  lbu          s6, 58(a7)
                  lb           s10, 206(a7)
                  lbu          t3, -34(s0)
                  lbu          s2, -44(s0)
                  lbu          a2, -17(ra)
                  sb           a6, 54(ra)
                  lbu          a0, 204(a7)
                  lbu          s4, -40(a7)
                  lbu          s9, -1(s0)
                  lb           s7, 51(a7)
                  sb           tp, 254(a7)
                  lhu          gp, 239(s0) #end load_store_instr_stream_3
                  sb           s7, 24(ra)
                  lh           s9, 252(a7) #end load_store_instr_stream_1
                  lhu          s8, -738(t4) #end load_store_instr_stream_2
                  lbu          t3, -64(ra)
                  lh           t2, 35(ra) #end load_store_instr_stream_0
96:               srl          s0, s1, s1
                  xor          a2, tp, a6
                  slti         s9, a7, -1505
                  srli         s0, a3, 10
                  slt          zero, tp, a3
                  or           t0, s0, zero
                  andi         tp, a7, 1272
                  blt          sp, a6, 114f
                  srl          a6, s2, s0
                  slli         t2, s5, 11
                  bgeu         s9, a3, 122f
                  sra          zero, ra, s7
                  add          a2, sp, a6
                  bge          s4, a4, 120f
                  and          a7, s8, s10
                  ori          t1, a6, -1295
                  auipc        s6, 448512
                  and          sp, s4, s1
114:              lui          t4, 671926
                  add          ra, a5, s10
                  lui          a2, 773594
                  srl          a7, tp, t4
                  bltu         s1, s1, 121f
                  srl          a7, s2, s7
120:              beq          a7, s9, 135f
121:              sltiu        s8, t6, -1199
122:              sltiu        sp, a0, -635
                  slt          s6, s1, s0
                  addi         zero, s3, -1457
                  addi         s7, t2, 713
                  or           sp, a0, a5
                  srl          s3, s8, a7
                  bltu         a1, ra, 129f
129:              srl          s3, t5, a5
                  or           s6, s3, a6
                  ori          s9, s8, 2006
                  sra          s3, t3, a6
                  srli         a6, tp, 10
                  srai         ra, s8, 20
135:              bgeu         s10, s3, 146f
                  or           gp, s4, t6
                  sll          t3, gp, a1
                  add          t5, a4, zero
                  bge          t3, a6, 150f
                  and          zero, t5, a4
                  sll          a6, a1, s1
                  sltu         a5, a0, a2
                  sltu         a0, s0, ra
                  slli         sp, t3, 18
                  sub          a5, t1, tp
146:              sra          a2, t0, a7
                  lui          t5, 711700
                  sll          a3, s10, zero
                  or           s8, a0, t0
150:              srl          a0, t0, s4
                  sltiu        a3, t1, 1242
                  beq          t5, t1, 153f
153:              bge          t0, a0, 154f
154:              bge          s2, s6, 168f
                  sll          ra, t0, s7
                  xor          a4, a5, a6
                  lui          t2, 337703
                  ori          a6, s8, 95
                  andi         t3, a3, -1794
                  slti         t1, t6, -1924
                  srai         ra, s9, 17
                  slli         ra, tp, 15
                  ori          a3, tp, 1211
                  slli         t3, s10, 21
                  and          ra, t2, t0
                  slti         a1, t2, -1793
                  srai         a1, s9, 29
168:              sll          t0, s7, a3
                  xori         t3, t6, 1767
                  sll          s8, s2, s7
                  andi         s4, s3, 166
                  slt          s4, a0, t4
                  lui          a4, 989297
                  and          a1, t4, s5
                  and          s4, a7, zero
                  add          s0, a1, a2
                  sll          t4, gp, t5
                  sra          s9, s6, a6
                  srai         a2, s1, 11
                  sltiu        a0, s0, 1356
                  sll          t2, s8, a4
                  blt          t0, t1, 201f
                  sll          t0, s8, s1
                  sra          s0, tp, t6
                  sltu         t0, a1, t6
                  and          s9, a2, a1
                  sub          a0, s2, sp
                  beq          t4, t1, 207f
                  srli         a2, t5, 2
                  sltiu        gp, t3, 348
                  sub          a1, t0, t5
                  la           a1, region_1+1913 #start riscv_load_store_hazard_instr_stream_3
                  sh           a0, -15(a1)
                  lbu          s9, -15(a1)
                  lhu          t2, -29(a1)
                  lw           ra, -29(a1)
                  sltiu        t3, t0, -1392
                  lb           tp, -29(a1)
                  lw           ra, -29(a1)
                  sh           s6, -5(a1)
                  auipc        s3, 378259
                  lbu          ra, -28(a1)
                  sltu         a5, s8, t1
                  slt          a6, zero, gp
                  ori          s8, s3, -1678
                  xor          t2, a0, sp
                  lb           s0, 63(a1)
                  sb           zero, 54(a1) #end riscv_load_store_hazard_instr_stream_3
                  nop
                  add          t4, a5, s0
                  sltu         t1, sp, s7
                  slti         zero, a7, -294
                  sll          a3, tp, zero
                  nop
                  blt          s5, tp, 209f
                  bgeu         a3, s0, 202f
                  slli         a6, a7, 30
201:              bne          s9, t6, 206f
202:              blt          sp, s8, 217f
                  xor          t2, s2, t1
                  bne          s7, s1, 215f
                  sll          t1, s4, s6
206:              xori         zero, a7, 60
207:              srl          a1, a1, a5
                  bltu         s1, a4, 221f
209:              xor          s4, a7, s5
                  and          a4, s9, s9
                  slli         a0, t2, 10
                  lui          s8, 788592
                  sltu         s1, a2, a5
                  and          ra, a6, s0
215:              sltu         tp, s2, s9
                  andi         gp, t2, 1887
217:              bgeu         a3, t2, 228f
                  sll          a3, s5, t3
                  blt          s10, s9, 220f
220:              xor          t0, s4, a4
221:              addi         a5, a7, 1922
                  xor          a0, s6, s8
                  sll          s9, s8, t5
                  bge          s0, a2, 240f
                  and          a7, a2, s8
                  sltu         a3, s6, t4
                  nop
228:              bge          s0, s9, 237f
                  addi         s2, gp, 804
                  or           t4, t4, t0
                  sub          a1, a2, a3
                  bgeu         t3, a4, 251f
                  xor          a5, s11, a7
                  sub          t5, s1, t6
                  ori          t4, s2, 867
                  add          s9, a0, a4
237:              slt          s1, t6, a2
                  ori          t1, t3, 1810
                  xori         tp, s5, 1110
240:              add          t4, ra, a6
                  xor          tp, s4, a6
                  and          a0, a2, s11
                  slli         a5, t6, 1
                  sll          a4, s4, ra
                  ori          s4, a6, 1477
                  auipc        s8, 105341
                  bne          a0, s3, 263f
                  nop
                  add          s10, zero, s8
                  srai         a5, s7, 22
251:              xor          t2, s2, t2
                  srli         a4, a3, 11
                  lui          s2, 133965
                  nop
                  bltu         a5, s7, 260f
                  auipc        s10, 106610
                  la           sp, region_0+248 #start riscv_load_store_hazard_instr_stream_0
                  lh           a1, -30(sp)
                  srli         s0, a0, 26
                  lhu          ra, -30(sp)
                  sh           gp, -30(sp)
                  srli         a4, t3, 29
                  auipc        a6, 451321
                  xor          a1, s10, s9
                  and          t5, tp, t1
                  sh           zero, -30(sp)
                  lh           a0, -30(sp)
                  lh           ra, -30(sp)
                  lh           a6, -30(sp)
                  lbu          t1, -30(sp)
                  sb           a0, -30(sp)
                  sb           a4, -23(sp)
                  lbu          t1, -43(sp) #end riscv_load_store_hazard_instr_stream_0
                  andi         a6, s10, -16
                  slti         a1, s6, 448
                  addi         gp, s3, 871
260:              xori         s4, s2, 1
                  slt          s1, t2, a6
                  srli         t3, t6, 31
263:              xori         a6, s5, 1698
                  auipc        s2, 288771
                  and          a4, t3, sp
                  beq          t3, s2, 270f
                  andi         ra, gp, -1491
                  or           s10, s8, t2
                  beq          s5, a0, 273f
270:              sltu         a7, s0, a1
                  sltiu        s0, sp, -1653
                  sltu         s3, a0, t2
273:              and          t3, ra, t3
                  xori         t2, sp, -1311
                  xori         ra, t5, 40
                  sltu         ra, sp, a4
                  add          t5, a1, t6
                  bltu         a1, sp, 283f
                  sll          s4, a1, s4
                  sra          t4, t3, a0
                  beq          s4, t1, 295f
                  slt          s7, t2, s3
283:              addi         a5, t2, -705
                  slli         s0, a2, 6
                  lui          s6, 891092
                  addi         zero, gp, -127
                  sltu         t1, a0, s9
                  nop
                  bge          ra, s11, 307f
                  or           s1, a5, s4
                  sub          s6, s5, a0
                  andi         a4, a1, 1425
                  or           gp, s7, zero
                  slti         s8, a5, 990
295:              andi         t2, ra, -805
                  xori         s4, zero, -1141
                  srl          a1, a5, t1
                  addi         a4, a0, 46
                  slli         s6, a2, 31
                  sll          s6, s0, s10
                  srl          t2, t3, a7
                  ori          gp, s4, -1764
                  add          a5, s7, a6
                  sltu         a4, a2, ra
                  add          sp, t6, a7
                  slt          s6, s9, a1
307:              bne          s2, t1, 326f
                  sub          t4, a4, t5
                  auipc        s3, 176910
                  lui          t3, 589929
                  sub          t1, t1, a1
                  bge          t3, a3, 313f
313:              slt          gp, s0, a5
                  sra          t2, s11, t0
                  sll          t0, s8, s8
                  add          s10, s3, a4
                  ori          t1, t3, -1124
                  auipc        t1, 89832
                  auipc        a3, 876717
                  bltu         t5, s3, 327f
                  bgeu         s9, t3, 330f
                  bne          a1, a1, 331f
                  srl          gp, s10, t3
                  sltiu        a0, t3, -1855
                  xor          s6, gp, t5
326:              sltu         t0, s3, t1
327:              and          t0, s4, t4
                  or           s10, s10, s3
                  nop
330:              sltu         a4, s5, a6
331:              sub          a5, tp, a0
                  beq          t0, s8, 337f
                  sltu         s0, tp, t2
                  or           a1, t2, a3
                  srl          a2, s6, s7
                  slti         s4, t6, 1900
337:              bge          s0, s0, 342f
                  srl          tp, a5, s10
                  srai         a3, a3, 3
                  bgeu         s3, a4, 351f
                  sltiu        gp, a1, 745
342:              bltu         t3, s3, 357f
                  sltu         t1, a1, s7
                  blt          a2, ra, 348f
                  beq          a4, s7, 364f
                  bgeu         a0, a0, 365f
                  lui          t3, 683657
348:              andi         tp, s6, -1683
                  sltu         s7, s8, s6
                  bltu         s8, s3, 353f
351:              slt          s6, s5, t1
                  bne          s7, s5, 353f
353:              andi         gp, s8, -1155
                  slti         a0, s0, 1157
                  sll          t3, ra, s7
                  slt          t3, gp, sp
357:              sll          s8, s8, s8
                  blt          gp, s1, 369f
                  blt          s5, s7, 373f
                  xor          t0, t2, s2
                  slli         a6, a7, 11
                  lui          s2, 73369
                  slli         s4, s6, 17
364:              bltu         s1, s10, 375f
365:              sra          s0, t1, s4
                  bltu         t1, a0, 375f
                  slt          a5, sp, s6
                  bne          s1, t5, 369f
369:              sltu         t5, t0, s10
                  slti         a3, t1, 1525
                  sub          ra, gp, a0
                  sltiu        s10, a2, -729
373:              andi         a3, s11, 899
                  and          s4, s2, a3
375:              sra          s7, s7, a3
                  slli         s4, s10, 5
                  lui          a4, 103771
                  addi         a6, a6, 272
                  addi         t2, s2, 2025
                  bge          s11, s5, 399f
                  sub          t3, s9, s0
                  sra          a2, s2, a2
                  xor          zero, t4, a6
                  srai         t4, tp, 16
                  sltiu        t3, t1, -1143
                  sll          s9, t1, t4
                  bge          sp, t5, 403f
                  bge          s9, s7, 392f
                  lui          s0, 55641
                  sltiu        a3, t4, 1523
                  bne          t6, a4, 405f
392:              sra          s9, s7, t5
                  bgeu         s1, s10, 394f
394:              sra          a1, s2, a1
                  srli         a0, s4, 15
                  or           a1, s11, a6
                  sub          zero, a2, a1
                  ori          a5, s8, -1230
399:              lui          s8, 307631
                  sll          s3, s1, s7
                  slt          tp, s9, s11
                  bne          t1, s10, 413f
403:              bne          s6, a5, 408f
                  add          a0, s5, s8
405:              sra          t4, a7, sp
                  bgeu         s0, a3, 413f
                  ori          sp, t0, -1630
408:              xor          t5, t2, s4
                  slt          ra, s0, t5
                  slti         a5, ra, 768
                  xor          t2, tp, a5
                  sll          tp, t6, zero
413:              blt          gp, t6, 414f
414:              srli         s1, s6, 3
                  xori         s7, a2, 1458
                  sltiu        s0, ra, -248
                  lui          a1, 960513
                  sll          a5, ra, s2
                  sub          ra, s7, s4
                  sll          t4, t2, ra
                  slli         a1, a7, 9
                  xori         s7, a5, -662
                  andi         t3, s6, 1187
                  srl          a5, a4, t4
                  ori          s9, s9, -598
                  and          s3, zero, a7
                  xori         s0, gp, -6
                  sll          a4, t5, s5
                  beq          s1, a2, 447f
                  and          a4, s4, s8
                  sltiu        s1, a3, 866
                  bltu         s1, t0, 451f
                  beq          tp, s8, 446f
                  andi         a4, a6, -92
                  ori          t3, ra, 935
                  sll          s9, t2, t4
                  bltu         a4, s11, 453f
                  xor          t1, s9, s5
                  addi         a5, t2, 443
                  bne          s0, t5, 451f
                  srl          ra, s9, t1
                  bge          t2, t4, 443f
443:              or           ra, a2, t6
                  slt          a5, s0, gp
                  ori          a2, t0, 1663
446:              sltiu        s9, zero, -1754
447:              bgeu         t5, s6, 448f
448:              bgeu         t5, s1, 449f
449:              and          a0, gp, s6
                  sra          s10, s10, s4
451:              srai         a0, s1, 29
                  sltiu        a5, s2, 121
453:              srl          a0, ra, s7
                  slli         a7, s2, 20
                  srai         tp, a3, 1
                  ori          zero, t2, 541
                  beq          s11, a4, 476f
                  bltu         a0, s1, 469f
                  bgeu         s5, a4, 466f
                  nop
                  sltu         a1, s9, a3
                  sra          ra, a5, gp
                  srli         t5, a0, 8
                  and          t5, s0, s3
                  beq          s8, s8, 474f
466:              add          a7, s7, a1
                  sra          t3, a2, a6
                  or           t4, s10, gp
469:              slti         s8, s10, 686
                  sltu         t5, s2, s1
                  bne          t2, ra, 476f
                  add          s6, a2, t6
                  slti         t3, a7, 368
474:              lui          s9, 544879
                  srai         t1, a0, 14
476:              srl          s9, t6, t2
                  nop
                  sltu         zero, s1, a6
                  slt          a2, a2, s11
                  auipc        s1, 586042
                  sll          s1, t3, s6
                  blt          a0, s6, 498f
                  blt          s0, t2, 484f
484:              bge          a2, s11, 487f
                  srai         sp, t0, 13
                  srli         a0, t6, 18
487:              bgeu         t3, t1, 488f
488:              add          t4, s8, s8
                  beq          s7, a4, 508f
                  or           t0, a5, sp
                  nop
                  srl          s8, zero, a6
                  sra          a5, a4, s10
                  add          t2, t3, s11
                  bne          s11, t5, 513f
                  sltu         ra, s9, zero
                  sltiu        a1, a7, 51
498:              sll          t1, s3, s7
                  bltu         s6, t1, 510f
                  bne          t3, s2, 511f
                  beq          gp, a3, 515f
                  slti         a2, s4, -569
                  bltu         s0, t6, 514f
                  srl          a1, s0, s7
                  xor          s6, gp, s9
                  auipc        gp, 211655
                  srli         s0, a4, 13
508:              addi         tp, gp, 826
                  bne          s11, t3, 518f
510:              sltu         a6, zero, t5
511:              bgeu         zero, t6, 526f
                  srli         s9, a5, 19
513:              sra          a4, zero, s6
514:              add          ra, gp, a0
515:              bne          a4, t0, 516f
516:              beq          a5, a0, 535f
                  sra          sp, s11, tp
518:              sltu         a7, s3, a2
                  or           sp, s10, s4
                  slt          a0, ra, s6
                  lui          s3, 476201
                  blt          s7, s7, 527f
                  bltu         tp, a1, 527f
                  andi         t4, s11, 811
                  bgeu         a4, s9, 536f
526:              bgeu         s9, zero, 531f
527:              sra          t2, s1, s2
                  blt          s11, t3, 541f
                  lui          tp, 481826
                  srli         a5, a2, 16
531:              sll          s3, t3, sp
                  ori          zero, t0, 1775
                  sll          s9, t5, a5
                  sll          s7, s3, t1
535:              nop
536:              add          s9, t4, a4
                  bgeu         a4, sp, 541f
                  or           t1, t3, t3
                  srai         t3, a4, 24
                  bgeu         s7, s9, 556f
541:              srl          a3, s7, gp
                  sltu         a1, gp, s10
                  and          t3, s8, s7
                  srli         a5, s9, 11
                  slli         s1, a3, 22
                  andi         s7, a5, -802
                  ori          a5, t2, 817
                  andi         s0, s4, 906
                  sltiu        zero, s8, -1063
                  sltu         a3, t6, s7
                  bltu         s2, s8, 570f
                  slti         s2, t3, 1058
                  srl          s6, t6, s4
                  slti         a1, s5, 1164
                  srai         t4, t2, 29
556:              slt          s3, s5, a6
                  bgeu         a6, s6, 571f
                  sltiu        a0, t2, 956
                  bgeu         s6, zero, 570f
                  slti         zero, s9, 500
                  slti         t4, a1, 1303
                  slt          t1, t4, s11
                  lui          s4, 700979
                  srli         s3, s2, 19
                  xor          t3, a1, a3
                  beq          a2, s5, 584f
                  bge          t6, t3, 578f
                  nop
                  xor          t2, s1, gp
570:              srai         a7, s9, 30
571:              auipc        gp, 616901
                  slti         a5, s11, 556
                  slt          s1, t0, s6
                  slt          tp, a3, s5
                  slt          s9, s1, sp
                  slti         t0, t0, 1763
                  and          s3, s8, s5
578:              bltu         s3, s3, 583f
                  sltu         tp, a6, s10
                  or           s0, zero, a6
                  srai         s9, tp, 14
                  xori         s10, gp, 400
583:              auipc        ra, 389808
584:              bgeu         s6, s8, 595f
                  bgeu         s7, tp, 601f
                  blt          a6, ra, 595f
                  sltiu        a3, a6, 1509
                  sltu         s4, gp, s6
                  and          a2, s8, a3
                  beq          s6, a0, 606f
                  xor          a2, a1, a4
                  sll          a3, s11, ra
                  bgeu         a5, s10, 600f
                  andi         t1, s5, 1241
595:              slti         t4, t4, 1049
                  srli         s9, s6, 15
                  lui          a7, 275237
                  slli         s1, s9, 31
                  sll          a7, a4, s6
600:              slt          sp, sp, a5
601:              auipc        a6, 1011496
                  xori         a0, t4, 1376
                  bgeu         s1, s8, 604f
604:              srli         s1, a1, 10
                  bgeu         s0, t6, 624f
606:              slt          t4, a6, s7
                  srai         ra, s11, 29
                  blt          t1, a0, 622f
                  sltiu        t0, s1, 737
                  sltu         s7, s5, t0
                  bne          a6, s4, 615f
                  xor          ra, s4, a0
                  bgeu         t1, s4, 624f
                  addi         t1, s1, 414
615:              or           s1, t0, s5
                  andi         s6, t3, 1101
                  srl          t3, sp, s9
                  lui          a3, 635440
                  sltiu        s1, sp, 610
                  slli         a3, s6, 4
                  nop
622:              srl          a0, s2, s5
                  bltu         s10, a1, 624f
624:              sub          sp, a3, a4
                  slli         a6, t3, 5
                  or           s6, s9, a7
                  sub          t1, tp, s3
                  addi         a5, ra, -1965
                  srai         s0, s6, 2
                  srli         ra, t3, 19
                  sltiu        tp, s5, 695
                  bge          t0, a3, 637f
                  addi         s0, sp, -82
                  nop
                  add          s2, t1, a7
                  and          ra, t5, gp
637:              bgeu         s4, t4, 656f
                  slli         a1, s1, 6
                  auipc        zero, 413660
                  bgeu         s11, a6, 655f
                  bgeu         s0, a4, 642f
642:              bge          s9, a0, 661f
                  sltiu        a0, s9, -109
                  xori         a1, t0, -331
                  nop
                  auipc        s3, 124620
                  auipc        s2, 550844
                  bne          s2, t3, 657f
                  slt          tp, a1, a7
                  beq          t0, t2, 653f
                  bltu         t0, t3, 655f
                  bne          a2, sp, 653f
653:              andi         s10, t0, -1036
                  srl          sp, a6, ra
655:              sltu         t1, a4, s0
656:              xor          s4, a3, s10
657:              srl          ra, t4, t1
                  slti         tp, a3, -306
                  bgeu         t3, t1, 672f
                  add          s8, t4, s4
661:              xor          zero, s2, s9
                  lui          s6, 36880
                  slli         a6, s4, 27
                  bge          a1, s9, 675f
                  sub          zero, t1, t4
                  xor          s8, s7, s8
                  bgeu         t3, sp, 668f
668:              addi         s0, s0, 558
                  xori         sp, a5, -49
                  sltu         s6, a0, t2
                  and          t1, s3, s11
672:              slt          a1, tp, s6
                  srl          s3, t6, s1
                  lui          gp, 167086
675:              and          gp, s0, s2
                  beq          t1, s1, 681f
                  sltiu        s10, s4, -544
                  bge          t6, sp, 692f
                  sltiu        s7, s10, 825
                  srli         a3, s0, 17
681:              add          t4, s7, a0
                  sltu         sp, t2, s4
                  slt          s4, a2, zero
                  nop
                  sll          a7, a7, s4
                  sll          s10, t0, s6
                  sltiu        t2, t6, -132
                  srli         ra, s8, 5
                  nop
                  or           t3, t4, gp
                  sltiu        ra, s4, -560
692:              bgeu         a7, s1, 711f
                  xori         s8, t4, -1733
                  slti         s8, s9, 474
                  sltiu        s7, s1, 760
                  sltu         s6, t1, s11
                  beq          t2, t1, 698f
698:              xori         t2, t4, -486
                  xor          a3, t6, a5
                  xori         sp, a1, 1260
                  andi         a3, s10, -1099
                  auipc        gp, 149872
                  slli         s2, a2, 14
                  addi         s1, s11, -142
                  slti         s7, sp, 593
                  bge          t2, t6, 725f
                  srli         s10, a2, 16
                  bltu         s3, a6, 711f
                  auipc        ra, 566634
                  andi         a3, a5, -179
711:              sltu         t5, s3, s2
                  auipc        a1, 825834
                  beq          s8, t5, 717f
                  sltu         s0, s6, t2
                  slt          t4, s7, a2
                  srl          s8, s9, t6
717:              beq          t4, s3, 733f
                  slli         t4, a6, 12
                  beq          s3, gp, 733f
                  beq          a4, a0, 721f
721:              xori         a2, t4, 368
                  and          a2, s6, t5
                  sra          a5, t4, s4
                  slti         a3, t0, 606
725:              add          a2, a7, s4
                  xor          ra, s6, a6
                  sll          a6, t2, s0
                  blt          a5, t4, 733f
                  add          t0, s0, tp
                  xor          s10, gp, s0
                  auipc        a7, 384598
                  srli         tp, s2, 16
733:              nop
                  slti         tp, a3, 29
                  and          ra, a5, tp
                  blt          t6, t2, 750f
                  sltiu        s1, s0, -401
                  srli         zero, s9, 6
                  srl          t4, s3, s6
                  slli         t1, s1, 8
                  sll          tp, t1, s11
                  bgeu         t4, t6, 750f
                  or           s2, t2, s10
                  sll          t5, s10, t4
                  bltu         s5, a2, 746f
746:              sll          tp, s8, s10
                  sltu         s0, zero, a7
                  bne          a6, s6, 750f
                  srai         t5, a2, 2
750:              xor          s0, s1, a3
                  auipc        a6, 824467
                  ori          s8, ra, -381
                  lui          t0, 98561
                  xor          gp, s11, t3
                  srai         t0, s6, 4
                  and          ra, s6, a7
                  slli         a0, t1, 18
                  slli         s2, s0, 7
                  ori          sp, gp, 1442
                  lw           a2, 4(t6)
                  addi         t6, t6, 36
                  xori         s6, s4, 136
1447:             addi x26, x12, 1
1447:             jalr x26, x26, 0
sub_1:            blt          s8, t6, sub_1_stack_p
                  addi         t2, a0, 880
                  lui          s8, 511918
                  srli         t0, s1, 3
                  srai         t5, t3, 2
sub_1_stack_p:    addi         t6, t6, -40
                  sw           a2, 4(t6)
                  addi         s0, tp, 301
                  srl          s9, t2, a6
                  auipc        s4, 526954
                  sltiu        a5, s5, 593
                  la           s6, region_1+1940 #start load_store_instr_stream_3
                  la           s10, region_1+1906 #start load_store_instr_stream_1
                  la           t3, region_1+178 #start load_store_instr_stream_2
                  la           tp, region_1+308 #start load_store_instr_stream_0
                  lb           t5, 11(t3)
                  lb           a3, 1075(tp)
                  sb           s8, 974(tp)
                  lh           t0, 1064(tp)
                  lbu          s4, 18(s6)
                  sb           s1, -3(t3)
                  sb           sp, -27(s6)
                  lhu          s7, -4(t3)
                  lh           a7, -46(s6)
                  lbu          sp, -57(s10)
                  sb           t2, -60(s6)
                  lbu          t5, -5(t3)
                  sb           s7, -119(s10)
                  lbu          a1, 0(t3)
                  lhu          t1, 1616(tp)
                  lb           s2, 3(t3)
                  lbu          s3, -42(s10)
                  lb           sp, 1483(tp)
                  sb           zero, -63(s10)
                  lh           t1, -10(t3)
                  sb           t4, -20(s10)
                  sw           t3, -6(t3)
                  lbu          t4, 24(s10)
                  lbu          s0, -124(s10)
                  sh           sp, 24(s6)
                  lbu          s2, -14(t3)
                  lh           s2, 40(s6)
                  lb           a0, 1483(tp)
                  lw           a4, 40(s6)
                  sh           a4, 6(t3) #end load_store_instr_stream_2
                  lb           t4, 47(s6) #end load_store_instr_stream_3
                  lhu          a6, 638(tp)
                  lbu          s3, -36(s10)
                  sb           t6, -10(s10)
                  sb           t4, 137(tp)
                  lb           t0, 5(s10) #end load_store_instr_stream_1
                  sb           zero, 131(tp)
                  lb           gp, 742(tp) #end load_store_instr_stream_0
                  la           sp, region_0+60 #start riscv_load_store_hazard_instr_stream_0
                  slli         s7, a5, 31
                  lh           t3, 6(sp)
                  lh           s4, 6(sp)
                  lh           ra, 6(sp)
                  sb           s4, 6(sp)
                  nop
                  lbu          a0, 6(sp)
                  lhu          gp, 6(sp)
                  lbu          s1, 6(sp)
                  lbu          ra, 57(sp)
                  lhu          gp, 24(sp)
                  lui          a2, 909698
                  lh           t2, 24(sp)
                  lhu          a1, 24(sp)
                  sh           s10, 24(sp)
                  sb           s1, 24(sp)
                  xor          tp, t4, t5
                  lhu          zero, 24(sp)
                  addi         tp, a4, -1371
                  sh           s4, 24(sp)
                  lh           a6, 24(sp)
                  lbu          a1, 24(sp)
                  lbu          a3, 24(sp) #end riscv_load_store_hazard_instr_stream_0
                  slti         t2, a0, -878
                  andi         a5, a3, -1024
                  la           t1, region_1+1517 #start riscv_load_store_rand_instr_stream_0
                  sh           t5, -13(t1)
                  slti         a7, s5, -1799
                  addi         a3, s2, 1275
                  lb           a7, 6(t1)
                  xor          a6, s6, t4
                  slli         a4, s10, 23
                  lh           a1, 15(t1)
                  lb           ra, 4(t1)
                  sltiu        s9, t4, 1046
                  srli         t3, s8, 23
                  lb           ra, -4(t1)
                  nop
                  slt          s9, s7, ra
                  lbu          gp, 15(t1)
                  and          s8, s11, zero
                  lb           s6, 14(t1)
                  ori          s8, s8, -1325
                  xor          s1, a7, s0
                  lhu          s10, -11(t1)
                  srl          a1, s0, s7
                  sub          a4, a7, s11
                  sltu         sp, t6, a4
                  sb           tp, -8(t1)
                  sub          s10, tp, sp
                  lbu          a4, 0(t1)
                  slli         gp, s0, 31
                  sb           s0, -8(t1)
                  srli         sp, a1, 13
                  sh           t5, -9(t1)
                  lh           a5, -5(t1)
                  sra          t4, zero, s3
                  lb           s7, 8(t1)
                  srl          a6, sp, s6
                  lbu          zero, 9(t1)
                  lb           t4, -4(t1)
                  xor          t5, a2, gp
                  lb           s9, 12(t1)
                  andi         a0, s4, -1449
                  lbu          s2, -10(t1)
                  sw           a7, 7(t1)
                  lh           s2, -11(t1) #end riscv_load_store_rand_instr_stream_0
                  and          t2, t0, t4
                  sra          s2, t2, a2
                  sltiu        t1, s8, 69
                  srai         t1, sp, 10
                  sub          a6, s1, s8
                  lui          s4, 279802
                  bgeu         a5, sp, 23f
                  xor          t4, a6, t3
                  bge          s7, s3, 30f
                  slt          s4, a3, t0
                  beq          s6, s6, 22f
                  sltiu        a7, s9, 1110
                  slti         ra, s7, 89
                  xori         s1, s3, 451
                  sltu         a6, a0, a0
                  sltu         a5, s6, s4
                  ori          gp, s6, 2019
                  srl          t1, ra, a0
                  and          a3, t4, s2
                  bgeu         t4, gp, 35f
22:               slti         tp, gp, -972
23:               slt          t5, s2, a6
                  sub          s2, t3, t0
                  addi         a2, t1, 1319
                  sra          s10, s1, s5
                  add          a7, tp, t4
                  sra          t1, a6, s9
                  slt          t5, s10, a3
30:               xori         t1, s1, -34
                  slt          s7, t1, a5
                  or           a2, s9, t2
                  sltu         s1, a7, t0
                  sltu         s4, s6, t4
35:               ori          s4, s4, 678
                  and          t2, t6, a4
                  slti         s7, a1, 1740
                  auipc        t3, 756600
                  slti         a1, s0, -1376
                  slt          tp, s1, t3
                  srli         t1, gp, 6
                  nop
                  sub          a4, s5, s1
                  slti         s0, s8, -862
                  sltiu        s9, zero, -714
                  bne          a2, t3, 62f
                  slli         t3, a6, 3
                  bge          s6, t3, 50f
                  bltu         s11, s9, 63f
50:               lui          a6, 570604
                  xori         a1, t2, 11
                  srai         s1, s11, 21
                  auipc        t0, 574647
                  srl          s0, t0, tp
                  srai         t4, a4, 25
                  sub          a1, s9, s10
                  beq          a2, tp, 66f
                  andi         zero, a0, -206
                  beq          s6, t5, 68f
                  slt          s10, t1, s4
                  nop
62:               add          s6, sp, s11
63:               srl          a5, s5, s6
                  bgeu         s9, t6, 67f
                  and          t5, t4, a5
66:               sltiu        a5, gp, 615
67:               sub          t3, s2, a7
68:               sra          s2, s6, a0
                  bgeu         s1, s4, 70f
70:               srl          a2, s0, t4
                  beq          s6, s2, 84f
                  addi         t4, t6, 1783
                  or           ra, t4, t4
                  bne          t2, s9, 90f
                  and          gp, sp, s10
                  bltu         t5, t6, 89f
                  beq          t2, s2, 86f
                  slti         s0, zero, 157
                  bgeu         s8, ra, 84f
                  ori          s3, a4, -1059
                  or           t0, tp, t2
                  auipc        t4, 421002
                  slt          a7, s9, a7
84:               or           t4, t6, a5
                  blt          s9, s7, 87f
86:               ori          a5, s3, -1644
87:               beq          t6, s11, 93f
                  add          a0, a5, s4
89:               sra          s1, zero, t1
90:               slt          s10, s4, s6
                  slti         t4, gp, -962
                  slti         a5, a7, 155
93:               xori         s3, sp, 1454
                  slt          t0, zero, s0
                  sltu         s8, s6, s3
                  slt          t2, t2, s4
                  bgeu         t6, s3, 111f
                  and          s2, gp, s4
                  addi         t5, t4, 500
                  sltiu        s0, t2, 845
                  lui          zero, 187282
                  and          a7, s10, a2
                  slti         s7, s10, -1233
                  sltiu        t3, t4, -1321
                  bgeu         a7, s9, 117f
                  and          s3, t6, a5
                  beq          a3, a6, 118f
                  ori          s4, t4, -1400
                  srli         a1, a2, 11
                  addi         a6, s1, -300
111:              addi         s7, t2, 2021
                  bge          s1, s1, 117f
                  auipc        s0, 743537
                  sltiu        zero, t4, -320
                  nop
                  andi         gp, t6, -1898
117:              or           s6, a4, t1
118:              beq          t3, s3, 137f
                  xor          t4, s9, t2
                  ori          a2, zero, -1175
                  nop
                  slti         sp, s1, 849
                  addi         a1, s11, 673
                  beq          t5, a2, 126f
                  and          t1, t6, s5
126:              sub          s2, a5, s11
                  add          s2, s7, s11
                  or           s7, ra, sp
                  and          a3, t4, s4
                  sltiu        s9, s3, 1138
                  addi         s9, s1, -1997
                  srai         a2, s7, 25
                  xor          s7, a5, a1
                  slti         s8, a5, -471
                  or           a1, t2, a4
                  slt          ra, a7, t5
137:              ori          s1, s7, 1745
                  and          a1, s4, s6
                  bne          s2, t6, 152f
                  bgeu         sp, t1, 144f
                  nop
                  bne          tp, s10, 150f
                  or           s3, tp, s10
144:              sub          t0, s9, s6
                  xori         s1, tp, 578
                  slti         a6, a4, 798
                  beq          s0, s9, 167f
                  sra          t4, zero, a6
                  srai         s10, a3, 3
150:              srai         tp, a3, 9
                  sra          s7, a0, t4
152:              bne          t2, t5, 171f
                  bge          a0, t5, 166f
                  sub          s2, s3, s7
                  slti         s3, s3, 59
                  blt          t0, t4, 160f
                  sltu         gp, s6, t3
                  slli         a6, a2, 5
                  bge          s5, s4, 173f
160:              nop
                  bltu         t4, t4, 174f
                  xori         t1, a5, 1226
                  srl          a2, s5, a4
                  bne          gp, t6, 177f
                  ori          t1, s10, 785
166:              sub          gp, s10, a2
167:              bgeu         t0, t2, 187f
                  xor          zero, s2, a5
                  srli         a3, a1, 7
                  blt          a1, s9, 179f
171:              lui          a4, 326898
                  lui          s7, 512391
173:              bltu         gp, tp, 176f
174:              add          tp, a2, a5
                  and          t4, t5, t6
176:              slti         s9, s10, 726
177:              lui          a3, 699469
                  or           s9, gp, a3
179:              bltu         s5, a0, 187f
                  xor          a1, a6, a4
                  srai         t0, t6, 21
                  or           a3, sp, t5
                  slti         t1, s2, -1206
                  and          zero, gp, s6
                  xori         ra, s0, -1727
                  nop
187:              sltiu        s4, s4, -1569
                  sub          t3, s11, a6
                  andi         s0, ra, -841
                  and          a0, gp, sp
                  lui          zero, 917047
                  andi         a4, s11, 1825
                  auipc        a0, 418252
                  lw           a2, 4(t6)
                  nop
                  and          a0, t4, s8
                  addi         t6, t6, 40
                  addi         a7, s5, 1440
                  auipc        t4, 631320
                  and          sp, s9, s1
320:              addi x12, x12, 0
320:              jalr x12, x12, 0
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
.word 0x4c12d20a, 0xa3bfbedf, 0x6161fdd0, 0x83265a99, 0x38ade2d6, 0x69f7ec43, 0xd6a3acb0, 0x1a458eb2
.word 0x07f53e26, 0x6121190c, 0x12b43a6f, 0x2f4a7feb, 0x79c737d5, 0xe78ea58a, 0xd0fd7982, 0x548179e1
.word 0xb3631533, 0x2e7ad241, 0xf73ede42, 0xf2af9bb8, 0x97a42965, 0xa0e2842c, 0x6f53179b, 0x56e060c7
.word 0x859a1347, 0x5a30fcb9, 0x9045908b, 0x93520b68, 0x1a2c48fc, 0x883e50f0, 0x66b08851, 0xfc46dfcb
.word 0x162dd722, 0x8eca34fe, 0x801e9018, 0xc308af05, 0x04ac717f, 0xda82418b, 0x34638ca5, 0x7601e01e
.word 0x5fec30b4, 0xdecf599f, 0x0259b002, 0x80ec8e65, 0x83e9ab15, 0x2a0203d4, 0xa3c0fda7, 0x8bba5085
.word 0xe25a9744, 0xa08e5849, 0x0159a106, 0x1a44da1e, 0xa35c6108, 0xe1209ddd, 0xa163e9ad, 0xaab152aa
.word 0x96c0a22f, 0x0c26c9f5, 0x348d1547, 0xc841a8dc, 0xec6204c8, 0x90af2754, 0xf57e1d8a, 0xb242ff95
.word 0xfced2fd0, 0xc912a65d, 0x84e442b2, 0xa5041bfe, 0x39659fa3, 0x2632c86b, 0x59bb1495, 0x587e65f7
.word 0xf69552cb, 0x23994fd0, 0x31f2d19d, 0x770abbf5, 0x5e84b485, 0x5faee501, 0x148c1f60, 0xc39e71be
.word 0x5cd7dd6f, 0x6d52a842, 0x705b6885, 0x803872be, 0xc79e68b3, 0x60c8b54b, 0x7743a286, 0xf33c2a3a
.word 0x6154d1b3, 0x96e8f822, 0x95215713, 0x7298f1a2, 0x34fb3a0e, 0xc5bce6be, 0xdee88995, 0x412391ee
.word 0x43c259af, 0x8e21474b, 0x95643aba, 0x53cbcb74, 0x139c3390, 0x9b2bad60, 0x70b20a9d, 0x2e8b414a
.word 0x2f23ae79, 0xf5595b87, 0xd3a7bf64, 0x4808997f, 0x49453409, 0x3d31a0a3, 0x9c7aed3c, 0xb64b9477
.word 0x50be06d9, 0x5bbe8232, 0x1663c86f, 0x49bda350, 0x8fb5a2d5, 0xe4ac742b, 0xc53dbab2, 0x5deba72e
.word 0xd450149a, 0x2af899ee, 0x0fa3c3d6, 0x3ba33e6e, 0x7ed759ba, 0x1d83ffc6, 0x8c989243, 0x47ec3fc4
.word 0x9873a7ca, 0xc407b682, 0xa7dcfa22, 0x1a4a6095, 0xc523569e, 0x2ed306c3, 0x0dc0cbf0, 0x4e9f86ce
.word 0x56f0b160, 0x783ddb40, 0x63b1b48b, 0x4f38e4e5, 0x939e3a0f, 0xc18ecb9c, 0x523bbeb7, 0xa385b8e9
.word 0xe532d938, 0x763fe034, 0x5bf176fe, 0x97f02c53, 0xca8cb875, 0xe184074d, 0xb048f14d, 0x8b4709f4
.word 0x19d6f578, 0x9814a645, 0x40f47666, 0x5b5a1f73, 0x6d0d5b1b, 0xfd7daa7f, 0x992c08d9, 0xfab3e671
.word 0xc483ace3, 0x621197e2, 0x0fc49480, 0x53016b9e, 0x872fd183, 0xf280ea44, 0xb75a827e, 0xa411a292
.word 0xe44714a0, 0x7fbfd33d, 0x65cb8172, 0x59c9c544, 0x5cb02ad6, 0x5a787016, 0x18340069, 0x41ed419f
.word 0x6dc650df, 0xa4cd557d, 0x3017094d, 0xb3390aaa, 0xcde000f2, 0x7ac13170, 0x7c5482ef, 0x53d1972d
.word 0x55a0061b, 0x0de49cd7, 0xbaf6320e, 0x483e1a9d, 0xb4171c13, 0x6d677f8f, 0x98a0fd42, 0xc26a38f2
.word 0x0ce1c47f, 0xe2f24ec9, 0xff3ff0f7, 0xbe232ed0, 0x93da3308, 0xbcd2fd95, 0x2ae502ce, 0x053fcab1
.word 0x2fa11288, 0x6c8603f0, 0x1de6ef9d, 0x7f45bab7, 0xd7756c62, 0x06322085, 0x4f595f8d, 0x7d7aecad
.word 0x03e351c5, 0x917fcf16, 0x495b0334, 0x762d6dc7, 0xe56f5d78, 0xfa383fbf, 0x97fa102f, 0xd38c6522
.word 0x510fa2b1, 0x66a7f820, 0xbe8c85b4, 0x97666cf8, 0x05ac0f99, 0x272846e5, 0xb3ba8c8c, 0x392b940b
.word 0xfcd0cf16, 0x0f7e74c6, 0x6bf4b887, 0x55a03a14, 0xe64738b9, 0x2cd72dc1, 0x242ae761, 0x544eda31
.word 0x9f0c8b73, 0x2d3fef6a, 0x1c29859c, 0xe79b3b67, 0xffa7b64b, 0xaafe4db4, 0xb0a652de, 0x52e7a3a8
.word 0xb771c33a, 0x0f990331, 0x0c9339a9, 0x83a9d8c6, 0x5f422389, 0xe29826f1, 0x0c5de525, 0x093412c0
.word 0x1063210b, 0x6469fae8, 0x43ea55a4, 0x787c4b56, 0x14a303c1, 0x375f0c8a, 0xd0f993a6, 0xb277862d
.word 0x3661c06e, 0x1dbf59c5, 0x89825f92, 0x7d7b4e83, 0xd9c62140, 0x743d4b13, 0xb98a41e0, 0x7999cf44
.word 0xfe43961f, 0x4e9a3cf7, 0x44414af8, 0x92dc2c2e, 0xa9600f81, 0x416da068, 0x7540a359, 0x2280887c
.word 0xc7a4867e, 0x71c3aa3d, 0xf566ea48, 0x4e299de2, 0x55cd1020, 0x985064c1, 0x0cfa8e6c, 0xa87ef0a7
.word 0x5930819d, 0xbf395ee5, 0x7fe101f0, 0x7413a241, 0x1cfaf2db, 0x9dda21f9, 0xcb2278e0, 0x971112f5
.word 0xb538d205, 0x7b3bddbe, 0x9006d1ac, 0x35d91fa2, 0x4e94f6ad, 0xae203d7a, 0x9671c590, 0xbc63693b
.word 0xd81ee07f, 0x1d76ce9b, 0xb73025b2, 0xcf2eead5, 0xff4e44b1, 0x2fb6d391, 0xf87dd7ec, 0x923d5e5c
.word 0x78136b71, 0x6fc94ba8, 0x2953aa69, 0x30740989, 0x970f67ec, 0xbb0dd000, 0xebcb148d, 0x519fef1e
.word 0xc4f5c5ba, 0xefc74e21, 0xba958a27, 0x54741875, 0x2295caa7, 0x075ccfa9, 0xf22debd4, 0x83e41c49
.word 0x809684d3, 0xc4a2220c, 0x3c378b19, 0x5b46103c, 0xea763fa5, 0x7048459d, 0xa4154282, 0xa3b200dc
.word 0xdf26f03f, 0xb3158628, 0x9c1d196e, 0x054e0d65, 0xc5574afc, 0x6664a8bc, 0x1aa0baba, 0x2df50799
.word 0xd33cbb90, 0x5c38a860, 0xa1e27dbd, 0x1d97fb96, 0x389d4b46, 0xe405ac54, 0xeeee9ce0, 0x9eb63d4c
.word 0xbc09b988, 0x61f5b48c, 0x089a22b0, 0xe75f2829, 0x7f6ea215, 0x1c7d0a1d, 0x571f32ab, 0x0581535f
.word 0x348c3b4b, 0x4e76f8bd, 0x0ef01d17, 0x7c219dbc, 0x4893481f, 0xa882a955, 0xe6a257c9, 0x5ef4bdbd
.word 0x75fb073f, 0x21cec1c0, 0xe0d012be, 0x597c2558, 0x7b4ca6b0, 0x799406be, 0x8a8b46b6, 0xf31078ee
.word 0x4ee6f4cf, 0xeeb0f180, 0xa3aee3dc, 0x6978658f, 0xa8f4239b, 0xd0bb2230, 0xe8cba5f3, 0x24961728
.word 0x7f5e2904, 0x206b42b7, 0x66d308af, 0xbe935b5c, 0x70e29a69, 0x3b0b4657, 0x7d36dfbc, 0x0942596b
.word 0xbd305ce1, 0xcb771d96, 0x669c6608, 0x569d6f19, 0x4ecda5f8, 0x5866e077, 0x9f00db9f, 0x93f8902e
.word 0x5b10f48b, 0xf3b1887a, 0x6c29b6cb, 0x3e9d6a71, 0x4e520e20, 0xd8bdb663, 0x6256ef54, 0x49cb7bde
.word 0x78744ce5, 0x2d4cde29, 0xad9c572c, 0x3e3da951, 0xe59dbf87, 0x1034bceb, 0x9c8f36ac, 0x0bda2490
.word 0x6a5ff28c, 0xf0815ee9, 0xaf6b9f09, 0x7d78b67f, 0xc01dcb2e, 0xcf0cdaa6, 0xefc3a3b9, 0x5584ca67
.word 0x26b8e8ff, 0xab2a0aed, 0x2c952806, 0x308418a2, 0xe7daf860, 0x0f6d83bc, 0x3755a5f7, 0x2b1f294d
.word 0xc0bea09b, 0x72321fd0, 0x712b63dc, 0x511f62e9, 0x2a46333d, 0x3cca1448, 0x0fc628f2, 0xfe10fd59
.word 0x1f304815, 0x55670c3f, 0xcd739b99, 0x78ad3e0e, 0x2e48809d, 0xd4114dc3, 0x77031051, 0x00d699a2
.word 0xbfd833b9, 0xee909074, 0x0523aa0c, 0xe7f82f17, 0x24b270fc, 0x493f781c, 0xae2e273d, 0x64498f04
.word 0xfe138ff1, 0xbb168cda, 0x95da1ca5, 0xb4fb08dd, 0x464531ce, 0x69f869bb, 0x4b3f538b, 0xcc4976a8
.word 0x97c638c2, 0xf0ef0b1a, 0x73659be4, 0x7b75b9ed, 0x1058ae7d, 0x909bfa9d, 0x2d2fb87e, 0xfc4bc011
.word 0x5b12bd94, 0x3d91759d, 0x6af1676d, 0xfefa9bc5, 0x1b28d39f, 0x6169c71a, 0x7592dac3, 0xf1ecd267
.word 0x5b0dbb0a, 0x49e245c4, 0x3b91e180, 0xcff93b6d, 0x682c61de, 0xc4ce3f32, 0xdcd66aec, 0xbd96ef2d
.word 0x2bf5964d, 0xa2d4d115, 0x1fce70b8, 0x3be9309d, 0x17326a44, 0x8452d1fc, 0x07f96c45, 0x7a6cbb64
.word 0xeec5ad83, 0xa64cbfba, 0xaef9e48a, 0xac983d82, 0xc35caa74, 0x6a3ae750, 0x5468f76a, 0x1bac89b2
.word 0xaf698cb6, 0x977ff226, 0x39863c50, 0x2bddb0d1
.section .region_1,"aw",@progbits;
region_1:
.word 0x863ca2e8, 0xc0cd33cc, 0x4a169b9a, 0x1212079a, 0x91fa116e, 0x7d75e1cf, 0x86d2e530, 0x742523e7
.word 0x921a44b2, 0x85b2e4ec, 0x3ddfb3d3, 0x43a82f80, 0x769fedc9, 0xdc525ac7, 0x2ce7b712, 0xfff31c7a
.word 0xb24912b6, 0xd72723c3, 0x0ee0c639, 0x26f4a79e, 0xf298ca8b, 0xdb064999, 0xd88b1015, 0xe87700a1
.word 0x8fda6820, 0x4956c25d, 0x03f7bf73, 0xcac0979f, 0x20f562bb, 0x4a32b3ba, 0x0f154c1f, 0x1a9a9e1c
.word 0x59185629, 0x342ae87f, 0xd1f74a69, 0xcf2ce2ee, 0x141c54cd, 0x3efa5452, 0x746e3320, 0x4d90c876
.word 0x8aa11705, 0xbbd3373a, 0xd0eb33cb, 0xc6144cbe, 0x0464f026, 0x5a14ffce, 0xda308605, 0xcf166f21
.word 0x83f141cd, 0xf95856da, 0xf2620efb, 0xf3d1db82, 0x0b20de93, 0xc6b81d34, 0xcd7c660b, 0x0c370eb1
.word 0xa6047ef2, 0xeec46827, 0xa979e562, 0xa6081cc7, 0xce473740, 0x1b22e31e, 0xdada1419, 0xba070cfb
.word 0x2a21c90f, 0x0adf3b52, 0x4161638d, 0xa032fd93, 0xc2e8fe2e, 0x7df1d521, 0x5025027d, 0x79dbe625
.word 0x856a3b6b, 0xe811b043, 0xeffe968f, 0xe7dda940, 0x02b85247, 0x2fb00999, 0x5ae8afd1, 0xe7b0edd8
.word 0x0d3d0bf4, 0x8019524c, 0x25a67bb6, 0x5b7fa6e8, 0xf66eced7, 0x267d13d0, 0x57fa6183, 0x69568b3d
.word 0xf5e01998, 0x2fe0da5c, 0xb96ab66b, 0x51fbdf6c, 0x4ef29d83, 0x729433fb, 0xad214b21, 0x8a08e336
.word 0x958423cc, 0x099511a6, 0x20d5375d, 0x11a2e1bc, 0xfdb7adb4, 0x0e0309d9, 0xd982a403, 0x42f678f4
.word 0x0fafeab6, 0xb14c1ea6, 0x3a54129b, 0xe58f9285, 0x6441b96d, 0xe24eb7d1, 0xa090d1ba, 0xf2949b4d
.word 0x44e44e56, 0xd8152171, 0xc81145d3, 0xdb664ed6, 0xded3598f, 0x5f97de02, 0xe8d81a24, 0x572fa0e4
.word 0xc2137db3, 0x615c7217, 0xa3330ef4, 0xe0534249, 0xfc9a1c3f, 0xa32de843, 0xe9fcffcf, 0x9a2e6be6
.word 0x8f51bc0c, 0xaec81f45, 0x46db913d, 0x6d71b819, 0xcddb63a4, 0x116d443f, 0x7ea8c4ce, 0x2e9831c0
.word 0x9c36e3d5, 0x4c7ab120, 0xbba4aa52, 0x1e2e4964, 0xbb712b02, 0x2402f683, 0x05673e88, 0x428b89de
.word 0xb9fd5328, 0xced7e4cc, 0x9bbb4a5d, 0xddebbf83, 0x22f29d18, 0x53905879, 0x89bb07d9, 0x3ccac1ff
.word 0x3f0618be, 0xe0748e4d, 0xcc5c0b6a, 0x1f2e1f38, 0x17f78c0d, 0xbad8571d, 0xb372ca9f, 0x7d91de07
.word 0xd2cba755, 0x0d46e8d3, 0xfc8ec95c, 0x404d7e14, 0xaeeff6ed, 0x1e8e3bf0, 0x94a6c5a5, 0x6d2be498
.word 0x5964ed78, 0x31c062ba, 0x533944b8, 0x38703df2, 0x941fe22b, 0xbcde3c91, 0x3478e941, 0x82232847
.word 0x1a730834, 0xabd33903, 0xbab8707d, 0xceb6d95a, 0x6974b5e7, 0xab48425c, 0x89c6db78, 0x754ff310
.word 0x3a65809f, 0xabd099df, 0x4321d141, 0x3777497f, 0x9a700828, 0x6e99328b, 0x0e658654, 0x43bcafcd
.word 0xa1f35ce1, 0x8409d2db, 0x50ea531a, 0xaee76122, 0xa1ee6803, 0xaaec0902, 0x05fbc859, 0xc43bd8e0
.word 0xa508d1cd, 0x4cba71ca, 0x828c0f93, 0x54f2519f, 0xef654703, 0xc0041899, 0x0d5590ab, 0x311c4612
.word 0xbcfc6ba2, 0x427a6e08, 0xe153fef5, 0x53c0c15b, 0xf935f033, 0xd9c4e204, 0x8c576e6d, 0x68ecbb74
.word 0xa6575c39, 0xc615335e, 0xe624d750, 0xda05e1d1, 0xb2e49fd1, 0x90fd1dbd, 0x99c3eb84, 0x16b05135
.word 0x6af0aa20, 0x9c8793a1, 0x843bce6e, 0x07c16c4b, 0x14c1172a, 0x4fba855a, 0x67953e00, 0xa216d35d
.word 0xa7cf9248, 0xd68f4e7b, 0x03c893fd, 0x559c69c6, 0x08a0d2d4, 0x92008b32, 0x23c0403e, 0x9901549c
.word 0x8cd25699, 0x7c6ede3f, 0x767e5795, 0xffe74a07, 0x4b8892bf, 0xb464c141, 0x93e78954, 0x74467221
.word 0x470094c7, 0x86971d52, 0x50c9904c, 0xf6ceb28a, 0x5c7adc7d, 0x95e77464, 0x9f28b35c, 0xde8935ac
.word 0xb72e4ddd, 0x962eb94c, 0x45adf733, 0x49953320, 0xe8d11212, 0xb40c0bf8, 0xf0655b55, 0x22fe0975
.word 0x33b55e0e, 0x65856969, 0x52c7a590, 0x5f2b1f6a, 0xbdae3b5e, 0xcb84aefe, 0x09743cfe, 0x2c779ff1
.word 0xc567f021, 0x636e7c02, 0xdf2e363e, 0xcef878c1, 0xa1293641, 0x9a5391f2, 0x3c78a477, 0x95319fa0
.word 0x38e93008, 0xecbfef80, 0x26e1eba7, 0xfb19fd69, 0xf7e3aa0b, 0x975ed443, 0x3dc33742, 0x2662c892
.word 0xbca75030, 0xfbf229fd, 0x0a6fcd3a, 0xe8e9d350, 0xe208536c, 0xaa58fc47, 0x197d82f0, 0x67176359
.word 0x66b26ad0, 0x97e4e406, 0xeda05a89, 0x081189be, 0xc352824d, 0x317045d7, 0xf2568821, 0xd0dffc22
.word 0x1a792995, 0x8f762ae8, 0x7010f67d, 0xfff552a8, 0x45e691d5, 0xa6d8940a, 0x83bf9d42, 0x3ff55efa
.word 0xa26dd186, 0xec13f8d3, 0x0e21c557, 0x5f0f522d, 0x760b68b0, 0xf719fd4a, 0x94cb4836, 0xc8cdea90
.word 0x6f5e1268, 0xc6f09ae9, 0x3f61ac9c, 0x76b424ad, 0xdf451c9f, 0x8ede3d59, 0x96f50c46, 0x7b877620
.word 0xace404e1, 0xf1f66717, 0x7d1dddc0, 0x244c948b, 0xab0877a3, 0x0bf43d34, 0x523f37fe, 0x5d83bc40
.word 0xe99d3ed9, 0x1fc632cf, 0x85e3baa4, 0x4db6cc5e, 0xf2eba313, 0xae7a4f93, 0x42f7632f, 0xdd237088
.word 0x632557e0, 0xe292e1ab, 0x7e0fe2a0, 0xca27052b, 0x043cfa33, 0x44c7bb1c, 0x8aeaaf5f, 0x28df0a25
.word 0xe07a2d28, 0xfcd211c8, 0xae738cd7, 0x35b7af5a, 0xe72b9f6a, 0x077b75da, 0x4d834822, 0xfb6c1950
.word 0xd5339cb8, 0x23b7c6b9, 0x760607f6, 0x97d02a01, 0x763c4580, 0x4c836797, 0x7e32ffb1, 0xa43c144e
.word 0xf03c3671, 0xbb971935, 0xd1c10dbe, 0x1190b304, 0xcec3e50f, 0x624d5344, 0x3b90b609, 0xaf45129b
.word 0x0e94f366, 0x2b48b9d6, 0xa3bd0391, 0x98794027, 0x25388071, 0x52609165, 0x96133032, 0xda25bcfe
.word 0xda13de52, 0x5d82ea58, 0x46e231ba, 0x0b366a8f, 0xdbdda138, 0x6d99cea2, 0x4917b65b, 0xe41d1e3e
.word 0x2eaf3567, 0x857b9f03, 0x99e3e3b0, 0xda9d06f6, 0xbc9ddd93, 0xa54d6f56, 0xc2b72531, 0x5f83e91d
.word 0x735355f2, 0xfdea6c3b, 0xa9683d66, 0x70b840f9, 0x3ed31beb, 0x99b8bb76, 0xb65a1c59, 0x34a0a506
.word 0x77264e05, 0x3262ae83, 0x97829067, 0xb4e6fedb, 0x02c5b0d2, 0xf5ca2ec3, 0x8218a96d, 0x5864108d
.word 0x6078cebb, 0xc20fa9b3, 0x00cf4397, 0x84a9c84f, 0xb9d1078f, 0xd9fc1a61, 0xdbf48b45, 0xd532b39f
.word 0xedee95bd, 0x5234f3a5, 0x2e106ead, 0x2f7bade8, 0x283f02b0, 0xd56c174c, 0xbeda1e0f, 0x97a18064
.word 0x795bb041, 0xd5d7aa41, 0x327a48d8, 0x075bd444, 0x690eab36, 0x09bca7a1, 0x88ed7447, 0x6913cfa3
.word 0x95561826, 0xb0b0f1d8, 0x8fb760fc, 0x6652d36c, 0x258e5098, 0x572ac852, 0x346c2249, 0x65251728
.word 0xbb2b68cc, 0x2f7d85de, 0x8d6296e1, 0x8ea585a1, 0x1d681a62, 0xbfb28855, 0x01867391, 0xf8402a93
.word 0x5065a8da, 0x1098a58a, 0x25526a8d, 0x683458b3, 0x6e534dff, 0x7ab840a0, 0x2d40cf99, 0xa139f74b
.word 0x5a41e290, 0xb26cb4ba, 0x3ae37c5d, 0x9cdce70f, 0x6cc3a79c, 0x2ba4023c, 0xf2f5ee5b, 0x227d8b1d
.word 0xd7c1637f, 0x1cacfcc4, 0x9d3bb9b8, 0xdb25103c, 0xa3974a9e, 0x6b6260fa, 0xa3fa2ecf, 0xef8a3959
.word 0xa8f6387c, 0x0ed6f681, 0x35879ee2, 0x411e0c7f, 0x466df247, 0xda85db28, 0xaac81dcb, 0x1a09af2f
.word 0xb92fb131, 0x67fa3bb0, 0x3ff25cce, 0xcd8cf0ad, 0x46c87776, 0x3979cb40, 0x07ef7a39, 0xd4c65057
.word 0x903780ca, 0x9f6acee8, 0xd727e3f5, 0xb65deabf
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x11, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x11, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x11, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x11, x14, ecall_handler
                  li x14, 0x1
                  beq x11, x14, instr_fault_handler
                  li x14, 0x5
                  beq x11, x14, load_fault_handler
                  li x14, 0x7
                  beq x11, x14, store_fault_handler
                  li x14, 0xc
                  beq x11, x14, pt_fault_handler
                  li x14, 0xd
                  beq x11, x14, pt_fault_handler
                  li x14, 0xf
                  beq x11, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
