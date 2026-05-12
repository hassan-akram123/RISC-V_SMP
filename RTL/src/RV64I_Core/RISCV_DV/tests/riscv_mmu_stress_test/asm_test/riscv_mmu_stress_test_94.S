.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 0
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0x9c4808ad
                  li x1, 0x80000000
                  li x2, 0x5
                  li x3, 0x565457c
                  li x4, 0xf
                  li x5, 0xf4c67afa
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0xfbd8edc5
                  li x9, 0x80000000
                  li x10, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x16, 0x8
                  li x17, 0xfacab296
                  li x18, 0xfb3c7ee0
                  li x19, 0xf90747e6
                  li x20, 0x0
                  li x21, 0x3
                  li x22, 0x80000000
                  li x23, 0x2
                  li x24, 0x1
                  li x25, 0x0
                  li x26, 0x5
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x5
                  li x31, 0xd
                  la x15, user_stack_end
main:             srli         gp, zero, 17
                  addi         s4, s10, -441
                  la           s6, sub_1
                  lui          a6, 34121
                  addi         s6, s6, 1003
                  sub          gp, a3, t3
                  bne          sp, s4, main_j2 #branch to jump instr
                  lui          tp, 431915
main_j2:          jalr         ra, s6, -1002 #jump main -> sub_1
                  la           s2, region_0+1571 #start riscv_load_store_hazard_instr_stream_0
                  lhu          a7, 229(s2)
                  srl          t5, a4, gp
                  sw           s1, 229(s2)
                  lbu          t5, 229(s2)
                  lb           s5, 130(s2)
                  lb           s10, 130(s2)
                  sb           s0, 130(s2)
                  sb           s7, -9(s2)
                  srli         s5, a6, 17
                  lb           ra, -9(s2)
                  addi         s9, gp, 918
                  lh           s4, -9(s2)
                  lh           s6, -9(s2)
                  lhu          s4, -9(s2)
                  sb           t2, -9(s2) #end riscv_load_store_hazard_instr_stream_0
                  la           a3, region_1+562 #start load_store_instr_stream_3
                  la           s3, region_1+1943 #start load_store_instr_stream_2
                  la           s6, region_1+1703 #start load_store_instr_stream_1
                  lhu          s11, -1(s6)
                  la           s9, region_1+1895 #start load_store_instr_stream_0
                  sb           t1, -16(s6)
                  la           s7, region_1+264 #start load_store_instr_stream_4
                  sb           tp, -409(s3)
                  lbu          t0, -11(s9)
                  sb           a5, -978(s3)
                  lbu          gp, 1(s6)
                  lbu          ra, -1472(s3)
                  lb           s11, -1138(s3)
                  lbu          a7, 14(s6)
                  sb           s9, 5(s9)
                  lbu          s11, -1754(s3)
                  sb           a4, 273(s7)
                  sb           s5, 954(s7)
                  lb           a6, -1248(s3)
                  lb           a7, -11(a3)
                  lh           a0, -4(a3)
                  sb           t1, -14(s6)
                  lbu          ra, -749(s3)
                  lb           t2, -14(a3)
                  lbu          s0, 0(s9)
                  sb           a3, 3(a3)
                  lb           t4, 1149(s7)
                  lb           s0, 903(s7)
                  lbu          t1, 715(s7)
                  sb           t6, -1592(s3)
                  sb           t5, -13(a3)
                  sb           a1, 2(s6)
                  lbu          t3, -4(s9)
                  lb           s4, 7(a3)
                  lhu          s1, -10(a3)
                  lhu          a4, -1301(s3) #end load_store_instr_stream_2
                  lhu          s10, 1040(s7) #end load_store_instr_stream_4
                  lb           t6, -4(a3) #end load_store_instr_stream_3
                  lh           s10, -3(s6) #end load_store_instr_stream_1
                  sb           t0, 16(s9) #end load_store_instr_stream_0
                  la           gp, region_1+292 #start riscv_load_store_rand_instr_stream_0
                  lui          s11, 633002
                  lbu          t3, 229(gp)
                  add          s2, a6, a6
                  sb           t6, 931(gp)
                  sb           a7, 865(gp)
                  lb           s5, 683(gp)
                  nop
                  srli         s9, s0, 22
                  sltiu        a0, ra, -1071
                  lbu          tp, 1593(gp)
                  slt          t3, t2, s11
                  sb           t5, 456(gp)
                  sb           a6, 1140(gp)
                  slt          s9, a5, a5
                  srai         s11, zero, 21
                  xor          t0, s5, t1
                  lb           t5, 469(gp)
                  xori         t0, tp, 1983
                  lb           s9, -248(gp)
                  lb           a3, 782(gp)
                  slli         a6, a6, 10
                  andi         ra, s8, -396
                  lui          t2, 92746
                  or           ra, a0, a2
                  slli         s6, a5, 20
                  srl          s2, t5, s9
                  lh           s10, -56(gp)
                  lb           a3, -49(gp)
                  sb           s10, -49(gp)
                  sra          a0, s7, gp
                  lb           a3, 1535(gp)
                  sltiu        s11, s3, 1405
                  xori         s1, a2, 202
                  xor          tp, s9, s11
                  slli         ra, s5, 3
                  lbu          a7, 1145(gp)
                  lbu          a4, 585(gp)
                  sb           t1, 888(gp)
                  add          s1, a5, s10
                  andi         s10, s2, -323
                  lb           tp, 942(gp)
                  add          a3, s6, tp
                  lh           s1, 446(gp)
                  sub          t1, a0, s5
                  sb           t5, 1154(gp)
                  sh           a4, 1174(gp)
                  add          t4, s6, sp
                  lbu          ra, 364(gp)
                  lbu          a2, 1593(gp) #end riscv_load_store_rand_instr_stream_0
                  andi         t2, a0, -1242
                  srai         s8, s0, 1
                  sltiu        ra, s7, -1994
                  andi         a2, s5, 661
                  bgeu         s2, s7, 19f
                  add          s11, gp, sp
                  bge          s5, s1, 17f
                  auipc        s1, 849403
                  xor          s2, a2, s4
                  lui          s7, 740247
                  nop
                  bne          t3, t1, 27f
                  nop
                  ori          t2, s10, 381
                  nop
                  or           t2, zero, a2
                  sltiu        s7, zero, 1348
17:               sub          a0, t5, t4
                  slt          a7, a7, s6
                  la           s6, sub_2
                  slli         a7, s1, 10
                  auipc        s7, 457027
                  addi         s6, s6, -687
                  addi         tp, s9, -342
                  bltu         t1, t5, main_j1 #branch to jump instr
                  lui          a7, 949004
                  add          s5, s9, a0
                  nop
main_j1:          jalr         ra, s6, 688 #jump main -> sub_2
                  blt          zero, s11, 24f
19:               add          ra, s8, t2
                  slli         t6, t4, 4
                  or           a3, s9, a4
                  srli         s1, s6, 29
                  sltiu        s6, t0, -1996
24:               srl          t6, t4, t0
                  addi         s10, t5, -787
                  slti         t1, a4, -439
27:               xori         s3, gp, -1476
                  xori         ra, a5, 1439
                  bge          a0, t6, 38f
                  nop
                  add          t4, s1, gp
                  bltu         s1, t4, 44f
                  slt          s4, a3, a5
                  sll          t5, tp, s8
                  sltiu        t4, s4, 954
                  lui          gp, 856108
                  srli         s6, s2, 19
38:               ori          t6, s5, -1358
                  sll          a6, a3, s11
                  slli         s6, t1, 29
                  sltu         t1, a2, s6
                  beq          s11, gp, 49f
                  xor          s9, t5, ra
44:               bltu         s4, t0, 46f
                  slli         a4, s10, 21
46:               andi         a0, s3, 584
                  sltiu        s11, ra, 1412
                  xor          s9, s8, s5
49:               srai         zero, a4, 22
                  and          t2, s7, a1
                  xor          s6, ra, t2
                  bltu         s7, s9, 61f
                  andi         s3, a6, -827
                  beq          t5, s8, 61f
                  srl          zero, t0, a7
                  addi         gp, ra, -672
                  beq          s3, s4, 61f
                  or           t5, s9, s9
                  bltu         zero, s7, 60f
60:               sra          s8, a2, t2
61:               slt          tp, a2, t1
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            and          t5, s5, t1
                  bgeu         a6, s2, sub_1_stack_p
sub_1_stack_p:    addi         a5, a5, -28
                  or           s10, s3, s6
                  sw           ra, 4(a5)
                  addi         a3, a3, -1711
                  or           a3, t1, s1
                  la           ra, region_0+1372 #start load_store_instr_stream_1
                  la           s4, region_0+241 #start load_store_instr_stream_2
                  sh           s4, -57(s4)
                  la           gp, region_0+1398 #start load_store_instr_stream_3
                  la           s5, region_0+1877 #start load_store_instr_stream_0
                  sh           t1, -24(gp)
                  sw           a6, -868(ra)
                  lbu          t0, -14(gp)
                  lh           s6, -282(ra)
                  sb           a3, -1068(s5)
                  sh           s10, -57(s4)
                  lh           s6, 10(ra)
                  lb           t2, -872(s5)
                  lb           zero, -571(ra)
                  lbu          s3, 60(gp)
                  sh           zero, -64(gp)
                  lh           t2, -649(s5)
                  lbu          s9, -40(gp)
                  lw           a4, 51(s4)
                  sb           s1, -803(ra)
                  lw           s10, 7(s4)
                  lb           s9, 13(gp)
                  sb           s6, -172(s5)
                  lh           s0, 514(ra)
                  sh           s8, -59(s4)
                  lbu          t2, -64(gp) #end load_store_instr_stream_3
                  lbu          s6, -17(s4)
                  sh           s2, -435(s5)
                  lhu          s10, -1036(ra) #end load_store_instr_stream_1
                  lb           a0, 50(s4) #end load_store_instr_stream_2
                  sb           sp, -1044(s5) #end load_store_instr_stream_0
                  la           t5, region_0+727 #start riscv_load_store_rand_instr_stream_1
                  lbu          s3, 1(t5)
                  lhu          t2, 9(t5)
                  sb           t4, -13(t5)
                  lb           a2, -12(t5)
                  srl          s2, sp, a0
                  sltiu        t6, a2, -263
                  ori          gp, s11, -152
                  slli         s0, a7, 18
                  sra          gp, t6, a1
                  andi         a0, s9, -366
                  lh           a6, -11(t5)
                  lbu          s1, -16(t5)
                  slti         t1, tp, -1013
                  lh           a3, 13(t5)
                  srai         gp, s2, 26
                  sh           ra, 11(t5)
                  lb           a2, -11(t5)
                  sb           s8, -7(t5)
                  lb           t3, 14(t5)
                  and          a0, a6, s10
                  lb           a6, 4(t5)
                  sra          s10, s5, t1
                  lb           s9, -2(t5)
                  lbu          zero, -10(t5)
                  addi         s7, s4, -1706
                  lh           t1, -15(t5)
                  lhu          gp, 15(t5)
                  sb           s1, 0(t5)
                  or           s8, ra, t0
                  sltu         s0, s1, s7
                  lbu          s7, -12(t5)
                  lb           t1, -2(t5)
                  sb           t2, 2(t5) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_0+859 #start load_store_instr_stream_0
                  lhu          a3, 17(s3)
                  la           ra, region_0+426 #start load_store_instr_stream_3
                  lb           s11, -195(ra)
                  la           s7, region_0+1774 #start load_store_instr_stream_4
                  sb           tp, 65(ra)
                  lh           s4, -248(s7)
                  la           t6, region_0+207 #start load_store_instr_stream_1
                  la           a6, region_0+752 #start load_store_instr_stream_2
                  lbu          s10, -12(t6)
                  lb           s0, 78(s7)
                  sw           a3, 16(a6)
                  lbu          t2, -136(ra)
                  lb           t2, 47(s3)
                  lbu          t5, 24(s3)
                  sb           sp, 5(a6)
                  sb           ra, 179(ra)
                  lhu          s8, 15(t6)
                  lbu          a3, 19(a6)
                  lbu          a4, 231(ra)
                  lh           s4, 11(t6)
                  sb           s2, 69(ra)
                  lbu          t3, -177(s7)
                  lbu          a2, 71(s7)
                  lh           s0, -13(t6)
                  lb           t3, -39(a6)
                  lh           a3, 24(a6)
                  lhu          s4, -120(s7)
                  lh           a4, 15(t6)
                  lh           a4, 33(s3)
                  lb           t3, 93(ra) #end load_store_instr_stream_3
                  lbu          s11, 3(t6)
                  sb           s5, -57(a6) #end load_store_instr_stream_2
                  lw           s1, -19(s3)
                  lbu          a3, -201(s7) #end load_store_instr_stream_4
                  lhu          s0, 1(t6) #end load_store_instr_stream_1
                  sb           s6, -41(s3) #end load_store_instr_stream_0
                  la           ra, region_0+534 #start riscv_load_store_hazard_instr_stream_2
                  lb           s8, -5(ra)
                  ori          t1, t2, -162
                  sll          tp, t0, a3
                  lb           a7, -5(ra)
                  lb           s6, -5(ra)
                  sh           t2, -50(ra)
                  lh           t1, -50(ra)
                  lbu          s9, 27(ra)
                  nop
                  sb           a2, 27(ra)
                  sra          t2, sp, a5
                  lbu          zero, 27(ra)
                  sb           a6, 27(ra)
                  nop
                  slti         gp, sp, -1228
                  lbu          s10, 23(ra)
                  sb           ra, 23(ra)
                  lb           s7, 23(ra)
                  lb           a0, -47(ra)
                  andi         zero, s4, 860
                  sb           s7, -47(ra) #end riscv_load_store_hazard_instr_stream_2
                  la           a6, region_0+652 #start riscv_load_store_hazard_instr_stream_3
                  lbu          a3, -80(a6)
                  lb           s2, -80(a6)
                  lbu          t2, -167(a6)
                  lb           a4, -167(a6)
                  lbu          gp, -167(a6)
                  addi         s10, t2, 1313
                  lui          tp, 160631
                  lb           s7, -167(a6)
                  slti         a7, s11, 1026
                  lb           a0, -167(a6)
                  sltu         tp, a5, t4
                  sb           t0, -167(a6)
                  and          a0, s0, ra
                  lbu          s6, -167(a6)
                  sb           tp, -167(a6)
                  lb           a0, -167(a6)
                  sb           s1, 81(a6)
                  lbu          t1, -71(a6)
                  lb           gp, -71(a6) #end riscv_load_store_hazard_instr_stream_3
                  la           s8, region_0+1237 #start riscv_load_store_hazard_instr_stream_4
                  lb           t1, 206(s8)
                  sb           sp, 172(s8)
                  sb           s7, 172(s8)
                  lhu          t6, -207(s8)
                  lw           s2, -57(s8)
                  lb           t1, 136(s8)
                  sb           s7, -183(s8)
                  sh           s2, -31(s8)
                  lb           t0, -77(s8)
                  lb           t3, 142(s8)
                  lw           s7, -161(s8)
                  auipc        t0, 700526
                  lbu          t6, 171(s8)
                  sh           a2, 171(s8)
                  sb           s9, 171(s8) #end riscv_load_store_hazard_instr_stream_4
                  la           t4, region_0+1767 #start riscv_load_store_rand_instr_stream_2
                  sh           t0, -97(t4)
                  srli         s4, a3, 22
                  or           gp, a7, s3
                  lhu          s5, 31(t4)
                  andi         s0, ra, -998
                  nop
                  xori         a7, sp, -1445
                  sub          s11, s3, a3
                  lhu          t2, -25(t4)
                  slt          a0, a5, s5
                  sub          s7, s7, zero
                  sb           t6, 6(t4)
                  sll          ra, gp, tp
                  add          s6, s4, gp
                  ori          s2, a5, 812
                  sb           t0, -104(t4)
                  lbu          s1, -195(t4)
                  or           s7, a2, a0
                  lh           s6, 39(t4)
                  andi         s11, a7, -1089
                  xori         a2, ra, -197
                  lb           s7, -220(t4)
                  slli         t3, a5, 5
                  srl          s10, t6, zero
                  or           t0, t5, s7
                  lh           t3, 15(t4)
                  or           t2, ra, s5
                  sh           t6, -19(t4) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_0+696 #start riscv_load_store_hazard_instr_stream_0
                  sb           sp, 534(s1)
                  nop
                  lbu          t6, 651(s1)
                  lbu          s4, 651(s1)
                  lbu          a6, 651(s1)
                  sb           t2, -225(s1)
                  slt          s2, a1, a2
                  sub          a4, s3, a4
                  lb           s4, -225(s1)
                  sb           sp, -225(s1)
                  add          a0, s0, t2
                  lh           s8, 296(s1)
                  lbu          s8, -551(s1)
                  lb           s9, -551(s1)
                  lb           s0, -551(s1)
                  sb           gp, 930(s1)
                  lb           s9, 253(s1)
                  lbu          s7, -136(s1) #end riscv_load_store_hazard_instr_stream_0
                  la           a3, region_1+645 #start riscv_load_store_rand_instr_stream_4
                  sll          s8, a0, a2
                  andi         tp, s2, 1216
                  slli         t0, s11, 2
                  lbu          t4, 12(a3)
                  slti         a2, s5, -1937
                  sltiu        a0, s1, 1116
                  sub          tp, s11, t3
                  sb           a3, 1214(a3)
                  sb           s2, 661(a3)
                  lbu          s0, 692(a3)
                  lb           t5, -116(a3)
                  sb           s6, -14(a3)
                  lb           t3, 1292(a3)
                  sb           t1, -324(a3)
                  lb           a0, 40(a3)
                  xor          s3, s11, a6
                  srli         a2, a1, 17
                  sltiu        s9, a6, 390
                  nop
                  xori         s5, s0, 1540
                  sb           sp, 700(a3)
                  xor          s1, s2, a3
                  lhu          s6, 281(a3)
                  lb           s4, -134(a3)
                  andi         t6, a5, 1465
                  srl          s3, t2, s4
                  sb           s8, 550(a3)
                  xor          t1, t5, s9
                  slti         s2, a4, -1383
                  sltiu        t3, a2, 397
                  xor          t1, s4, a2
                  add          s5, s9, s3
                  sra          a0, t6, t1
                  slti         t3, ra, -1109
                  slli         s6, s6, 20
                  lb           t6, 744(a3)
                  ori          t2, a2, 1260
                  sra          s1, a1, s6
                  sw           a7, -253(a3) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_1+1820 #start riscv_load_store_hazard_instr_stream_1
                  lhu          s8, -56(a6)
                  lbu          zero, -56(a6)
                  lhu          s8, -56(a6)
                  sb           s2, -56(a6)
                  lbu          s0, -56(a6)
                  xori         s2, a6, -86
                  sh           s9, -56(a6)
                  sh           a4, -56(a6)
                  sb           s11, -56(a6)
                  lh           s6, -56(a6)
                  lbu          tp, -56(a6)
                  lui          t5, 91250
                  lh           s11, -56(a6)
                  slli         s1, t4, 22
                  sw           t6, -56(a6)
                  sb           s11, -56(a6)
                  lhu          a7, 62(a6)
                  lh           s7, 62(a6)
                  sb           zero, 62(a6)
                  lb           t2, 62(a6)
                  lhu          s9, 62(a6)
                  lh           t3, 62(a6) #end riscv_load_store_hazard_instr_stream_1
                  la           s2, region_0+1426 #start load_store_instr_stream_1
                  sw           a0, -2(s2)
                  sb           s8, 49(s2)
                  la           s5, region_0+1550 #start load_store_instr_stream_0
                  sb           t1, -39(s2)
                  sb           s3, 59(s5)
                  lb           s9, 237(s5)
                  lbu          t6, -204(s5)
                  lbu          ra, 246(s5)
                  sb           s1, 39(s5)
                  lbu          a4, -2(s2)
                  lb           ra, -33(s2)
                  lbu          a4, 15(s2)
                  sb           t3, 116(s5)
                  sb           t1, -7(s2)
                  lbu          s6, -31(s2) #end load_store_instr_stream_1
                  sb           s6, 73(s5)
                  lb           s10, 155(s5) #end load_store_instr_stream_0
                  la           s9, region_1+62 #start riscv_load_store_rand_instr_stream_0
                  lb           zero, 43(s9)
                  srli         t0, a6, 17
                  lbu          a6, 5(s9)
                  add          s4, t1, s11
                  sll          s10, s6, s10
                  auipc        s6, 465210
                  slti         s4, zero, 1396
                  xor          s1, zero, s3
                  lb           t4, 64(s9)
                  lb           s10, -4(s9)
                  nop
                  ori          t5, s1, 312
                  sll          t6, a5, s0
                  sll          a7, a6, s0
                  xori         t5, s4, -389
                  sb           s11, 45(s9)
                  sra          a0, s1, t3
                  ori          s3, ra, -1569
                  sb           s7, 8(s9)
                  lbu          ra, -22(s9)
                  srai         ra, a0, 2
                  slti         s3, t5, 1790
                  andi         t6, s10, 974
                  sltiu        t1, a2, -1467
                  lw           s7, 26(s9)
                  lhu          s2, -42(s9)
                  slti         s2, s4, -1851
                  lb           s8, 49(s9)
                  lb           s11, 51(s9)
                  lhu          s1, 6(s9) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_0+648 #start load_store_instr_stream_0
                  sb           zero, 141(ra)
                  la           s1, region_0+1318 #start load_store_instr_stream_1
                  sb           s7, 624(s1)
                  lb           s2, -251(ra)
                  lb           t5, -1214(s1)
                  lb           t1, -195(ra)
                  sb           s2, -473(s1)
                  sh           zero, -686(s1)
                  sb           s6, -210(ra)
                  lb           t5, -1263(s1) #end load_store_instr_stream_1
                  lb           s4, -147(ra) #end load_store_instr_stream_0
                  la           s4, region_1+314 #start riscv_load_store_rand_instr_stream_3
                  sw           s11, 74(s4)
                  lhu          s1, 230(s4)
                  lbu          s10, 70(s4)
                  lw           t3, 34(s4)
                  ori          s6, a7, 1143
                  lb           a3, -195(s4)
                  lhu          t0, 164(s4)
                  lhu          s1, -58(s4)
                  sb           s4, -127(s4)
                  lb           a2, -213(s4)
                  sll          s9, t2, t5
                  sll          a4, s11, t2
                  xori         s2, t1, -451
                  lw           t3, -134(s4)
                  sb           s11, 117(s4)
                  sb           a2, -254(s4)
                  auipc        a2, 624738
                  sra          t5, s8, t6
                  lbu          s0, -156(s4)
                  lbu          s7, 119(s4)
                  sb           s3, 197(s4)
                  lhu          s8, 86(s4)
                  lh           s5, 108(s4)
                  lb           a2, -3(s4)
                  lhu          s0, 176(s4)
                  sltu         ra, a6, t0
                  lh           s5, 22(s4)
                  lw           s11, 174(s4)
                  slt          s9, t3, s8
                  sb           s8, 137(s4)
                  or           t3, s3, zero
                  slt          t0, gp, s6
                  srai         t2, t1, 26
                  andi         s9, s2, 496
                  sh           a0, -44(s4)
                  and          s11, a6, s11
                  sh           s4, 120(s4)
                  or           s10, s1, a5
                  lhu          a4, 156(s4)
                  srl          s0, t6, t2
                  sh           t3, -46(s4)
                  lbu          s8, 51(s4)
                  lbu          s7, -239(s4)
                  srai         s7, t3, 11
                  srli         t3, t6, 10
                  lb           s3, 55(s4) #end riscv_load_store_rand_instr_stream_3
                  sltiu        s4, t0, -1185
                  or           a4, s10, s5
                  srai         t3, t2, 3
                  bne          s4, a7, 12f
                  srli         s3, s9, 7
                  sub          t2, a5, s11
                  slt          t5, t5, s1
                  andi         s8, s3, 1989
                  sub          zero, s0, s5
                  sltiu        s5, gp, 1045
                  ori          a4, s2, 599
                  beq          t0, s8, 24f
12:               slt          t4, s7, s10
                  nop
                  srl          s7, s10, a0
                  bge          s10, a4, 19f
                  bge          a4, a5, 23f
                  andi         t3, t0, -1670
                  sltu         a7, s5, s4
19:               bltu         t4, s3, 37f
                  bne          s4, s1, 33f
                  blt          t1, s2, 28f
                  bne          t4, s1, 35f
23:               ori          s4, t3, 192
24:               bge          s6, s10, 36f
                  beq          a5, ra, 28f
                  bltu         t5, a1, 44f
                  blt          a6, t2, 41f
28:               sra          gp, a5, a1
                  srli         a4, t3, 17
                  blt          gp, a3, 35f
                  bltu         s7, t6, 39f
                  andi         t4, t1, -1511
33:               add          s4, t5, a1
                  lui          t5, 224057
                  la           t3, region_0+524 #start load_store_instr_stream_1
                  la           a2, region_0+1146 #start load_store_instr_stream_0
                  la           s5, region_0+1473 #start load_store_instr_stream_4
                  la           s0, region_0+904 #start load_store_instr_stream_3
                  la           a7, region_0+1816 #start load_store_instr_stream_2
                  lbu          a6, 226(s5)
                  lbu          s7, -27(s0)
                  sb           zero, -43(a7)
                  lh           a0, 16(s0)
                  lbu          s1, 10(s0)
                  lhu          a6, 710(t3)
                  lb           s3, 42(t3)
                  lbu          s7, -15(a7)
                  lb           s11, -12(s5)
                  sb           s2, -59(a2)
                  sb           gp, -616(s5)
                  lb           ra, -2(a7)
                  lw           t0, -44(t3)
                  lbu          s10, 525(t3)
                  lb           s3, -1293(s5)
                  lbu          s8, -7(s0)
                  lb           a3, -102(s5)
                  sb           tp, 58(a2)
                  sh           s0, 28(a2)
                  lbu          a4, 44(a2)
                  sb           t1, 1121(t3) #end load_store_instr_stream_1
                  sh           s2, 233(s5)
                  lb           t1, 63(s0)
                  lhu          s10, -639(s5)
                  lhu          t1, 50(a7)
                  lb           s8, -968(s5)
                  sb           gp, -910(s5)
                  lb           s4, 49(a2)
                  lhu          t0, 461(s5) #end load_store_instr_stream_4
                  sh           s11, 24(s0) #end load_store_instr_stream_3
                  sh           s5, 54(a7) #end load_store_instr_stream_2
                  lw           t5, -38(a2) #end load_store_instr_stream_0
35:               sltiu        a3, t2, 1641
36:               srl          s8, t6, s10
37:               or           zero, s8, s5
                  addi         s2, sp, 1965
39:               bge          a2, s4, 55f
                  addi         s1, sp, -291
41:               srai         s8, s6, 5
                  beq          s4, gp, 46f
                  slli         s3, a7, 10
44:               srli         s3, a2, 2
                  bne          a3, a3, 58f
46:               blt          s11, ra, 59f
                  lui          a7, 419830
                  slli         a4, t3, 22
                  sltiu        a6, a3, 1397
                  slli         a2, s3, 7
                  slti         t1, s10, 1665
                  xori         a7, s7, -1696
                  slti         t5, t0, -146
                  sltiu        t6, s5, 969
55:               blt          a5, s3, 65f
                  auipc        s9, 586955
                  srl          t0, t0, s5
58:               bltu         tp, a6, 67f
59:               andi         a3, s7, 269
                  srl          ra, s8, t0
                  xor          gp, t3, t0
                  slti         s6, t2, 495
                  nop
                  slt          s10, s9, s4
65:               beq          a7, s10, 73f
                  sltiu        t6, s2, 856
67:               slti         s11, t0, 1340
                  lui          t2, 373878
                  nop
                  add          t3, t1, s10
                  sll          t4, s9, a4
                  or           tp, gp, t3
73:               bne          s3, a1, 90f
                  and          t5, s8, gp
                  auipc        t6, 613707
                  bge          s2, t3, 95f
                  addi         s8, s1, -815
                  and          s2, a0, gp
                  auipc        t3, 124811
                  slti         s6, s4, 1309
                  slti         t5, a1, 604
                  srai         s6, gp, 18
                  xori         t5, s6, -647
                  add          s3, s7, tp
                  addi         t0, zero, 264
                  srai         s7, s0, 4
                  slti         a3, sp, 263
                  andi         tp, a7, 1569
                  andi         s9, a7, 1316
90:               auipc        s2, 313210
                  bne          zero, s7, 105f
                  bgeu         s8, t5, 95f
                  slti         t4, s8, -1136
                  add          s0, t4, ra
95:               or           t0, zero, t3
                  bge          s7, t5, 115f
                  sra          t5, s2, a5
                  xori         t2, t0, 472
                  slt          s8, s11, tp
                  blt          s1, s2, 118f
                  sub          t0, s7, t6
                  sll          a3, a3, a7
                  and          t2, a4, a3
                  xori         tp, s6, -68
105:              or           s8, a2, t0
                  bne          a0, t1, 116f
                  sub          s2, a1, s6
                  srl          t6, t6, a6
                  sll          t4, a3, s5
                  xor          tp, t4, a1
                  xor          s8, s6, tp
                  srl          a2, tp, t1
                  sll          s3, gp, s8
                  bge          s7, zero, 118f
115:              or           t3, a6, a7
116:              xor          s4, t6, s9
                  bge          s10, a3, 137f
118:              lui          ra, 713067
                  ori          ra, zero, 248
                  lui          s2, 1048232
                  andi         t2, s7, -1378
                  and          a7, s4, a2
                  ori          s8, t6, -207
                  sub          s3, a3, a4
                  xori         t1, s2, -54
                  srli         a6, gp, 17
                  nop
                  xor          a7, a0, s2
                  andi         gp, s7, 358
                  sltu         t5, s9, a6
                  sltu         a4, zero, a0
                  bge          t3, a6, 140f
                  bne          sp, s0, 146f
                  sltu         t5, s10, s9
                  slti         t0, s11, 1144
                  slti         a4, a6, 1846
137:              bge          a7, a0, 156f
                  auipc        s0, 819404
                  srai         s7, a5, 17
140:              sltu         a7, t2, a4
                  sltiu        s3, t6, -1057
                  srli         s2, sp, 18
                  slt          t4, t2, s10
                  slt          s1, t6, s3
                  bge          a1, s4, 158f
146:              ori          t0, t4, -415
                  slli         t5, tp, 30
                  bge          s8, s5, 158f
                  add          a4, s5, s9
                  sra          t1, s1, a1
                  and          a7, t2, s3
                  bne          a4, s9, 156f
                  srl          a0, a3, s2
                  beq          t6, s3, 167f
                  sub          s0, a4, sp
156:              addi         s5, s10, -1898
                  srli         s4, t2, 21
158:              sll          s6, s9, s1
                  bge          s9, tp, 172f
                  srli         s5, s3, 4
                  bne          sp, tp, 175f
                  bgeu         a3, a1, 179f
                  sltu         a7, a0, a3
                  ori          t3, a4, 879
                  srl          ra, s5, sp
                  blt          s2, s0, 173f
167:              srai         s3, a5, 31
                  bge          s8, s2, 186f
                  sltiu        tp, a0, 97
                  nop
                  sltu         a0, s1, zero
172:              bge          ra, s3, 175f
173:              bne          s1, s3, 176f
                  xor          s5, zero, a5
175:              srli         s7, t6, 7
176:              srl          t0, a2, a4
                  xor          zero, s5, tp
                  lui          s7, 64450
179:              andi         a4, t1, 48
                  bgeu         a0, s4, 184f
                  beq          a0, a6, 188f
                  srli         s5, zero, 17
                  bne          a4, a6, 203f
184:              xor          tp, s8, t1
                  bne          t5, s3, 203f
186:              blt          s0, s5, 195f
                  slti         s9, a2, 1287
188:              sltu         s9, t3, a0
                  srai         s7, t2, 27
                  add          t6, sp, tp
                  xori         a6, s8, 1794
                  bgeu         t1, tp, 197f
                  ori          s10, a3, 367
                  beq          s0, s6, 207f
195:              xor          a6, a6, t6
                  slti         ra, a2, -476
197:              slti         t3, s3, 1167
                  srl          t4, s10, s11
                  srli         a6, s2, 18
                  sltu         s3, zero, sp
                  slt          s2, sp, t6
                  slli         s7, tp, 4
203:              srai         a2, s11, 3
                  nop
                  add          t3, s5, sp
                  bne          a2, t2, 218f
207:              lui          t6, 896332
                  sltiu        a2, t6, -734
                  bgeu         a6, a5, 225f
                  xori         s6, a7, 1395
                  beq          s1, sp, 230f
                  srli         a2, a1, 19
                  bne          t0, zero, 222f
                  sltiu        s5, s1, 955
                  addi         t4, t2, 1062
                  sltiu        a7, s1, 673
                  sra          s4, t3, a6
218:              auipc        s7, 508791
                  nop
                  sll          t4, a3, t5
                  andi         s6, gp, -550
222:              sltiu        a4, zero, -1458
                  sub          s3, s4, a4
                  xor          t3, gp, tp
225:              sll          s8, t1, s7
                  andi         a2, a7, -1813
                  sra          s7, t2, s9
                  srai         a4, s7, 17
                  bgeu         t0, s0, 239f
230:              and          s9, tp, s4
                  beq          a0, t5, 235f
                  bltu         t5, s3, 250f
                  sll          s6, s8, s11
                  bltu         t3, a4, 242f
235:              srai         s7, s2, 16
                  bltu         t5, t2, 250f
                  srl          tp, t6, a4
                  bgeu         t1, a1, 251f
239:              or           s0, s2, s7
                  nop
                  sra          s10, a4, s1
242:              bne          s11, a4, 245f
                  add          s0, s3, s5
                  bltu         s7, t0, 262f
245:              sltu         a0, s2, t5
                  sll          s2, a4, s0
                  lui          s0, 721687
                  slli         a2, a4, 9
                  bge          a1, t4, 263f
250:              nop
251:              ori          a3, s4, -127
                  sltiu        a7, zero, -2016
                  sra          ra, s9, tp
                  sub          s7, s4, tp
                  sltiu        s5, t6, -1301
                  addi         s6, a7, 1954
                  bgeu         a1, t6, 270f
                  or           t0, t5, a4
                  auipc        t5, 556534
                  auipc        a0, 336538
                  nop
262:              ori          tp, s10, 1181
263:              srl          s7, sp, s10
                  bge          s11, s5, 269f
                  bne          a6, a4, 272f
                  bne          gp, a0, 285f
                  blt          a3, s10, 274f
                  auipc        a6, 836101
269:              nop
270:              xor          t4, s9, s9
                  bgeu         gp, a0, 283f
272:              or           t1, s2, sp
                  beq          ra, t3, 282f
274:              ori          s0, a3, 1281
                  srli         t3, s0, 6
                  nop
                  slt          t0, ra, s7
                  sltiu        s8, a1, -23
                  bne          ra, s10, 299f
                  or           t5, t4, s3
                  bgeu         t5, t2, 295f
282:              add          s7, t3, s8
283:              xori         zero, ra, 166
                  sltu         s6, tp, s0
285:              auipc        t0, 161659
                  or           t6, sp, t5
                  bgeu         s6, t1, 300f
                  bne          s2, a5, 298f
                  sub          s5, s10, a5
                  or           gp, s6, s9
                  xor          a6, zero, t6
                  sra          s11, a3, t3
                  or           s9, s1, s8
                  sltu         s1, a6, s6
295:              bge          s4, s11, 298f
                  srli         a4, t2, 18
                  lui          t3, 337413
298:              or           a3, s11, a1
299:              slli         t6, a1, 3
300:              beq          s2, s10, 304f
                  ori          s7, t4, 1751
                  or           a3, t6, a3
                  and          a3, a5, s1
304:              slti         s7, t4, 1756
                  slti         t4, s8, 260
                  sltu         s8, t2, t5
                  xori         s1, t6, -962
                  slli         s0, zero, 14
                  nop
                  srai         zero, t0, 0
                  sltu         a6, a2, sp
                  sll          s9, ra, s3
                  srli         s7, s7, 28
                  bltu         a7, s7, 332f
                  sll          a7, s2, t5
                  xori         t3, tp, -1799
                  slti         a4, a2, 7
                  blt          t0, t1, 322f
                  srli         s5, s9, 5
                  andi         zero, s5, -192
                  sll          s3, s8, a4
322:              srli         gp, s2, 1
                  beq          sp, t1, 342f
                  blt          a1, a7, 333f
                  auipc        t0, 348687
                  sra          s10, a0, s3
                  add          t1, s3, t0
                  beq          a1, sp, 336f
                  xor          t3, t0, t6
                  and          s8, a2, a7
                  slt          ra, s6, zero
332:              and          s7, s7, t5
333:              xor          s2, a0, s6
                  sll          a7, a7, s10
                  slli         s4, t6, 29
336:              bgeu         t2, a6, 346f
                  xori         s0, s2, 803
                  xor          s3, s11, zero
                  auipc        s3, 177334
                  xor          gp, s6, s0
                  add          a2, s9, s8
342:              add          t3, s11, t3
                  sra          gp, tp, a4
                  bne          zero, s3, 357f
                  blt          a6, t2, 353f
346:              add          gp, s4, s1
                  sltu         t0, s5, sp
                  beq          t3, a7, 365f
                  andi         s0, t0, -1436
                  bltu         a1, zero, 368f
                  nop
                  srli         s4, a1, 7
353:              srl          s2, t6, a0
                  slt          s3, ra, s3
                  beq          a5, s4, 359f
                  bge          sp, ra, 372f
357:              or           s1, gp, t2
                  lui          t4, 992912
359:              lui          a0, 739088
                  blt          s9, t5, 373f
                  lui          zero, 584053
                  addi         s5, sp, -573
                  srl          t1, s4, s10
                  srli         s4, a0, 15
365:              bltu         a2, zero, 384f
                  bgeu         zero, s1, 371f
                  slt          t5, sp, a6
368:              lui          t6, 823335
                  auipc        t0, 687139
                  slt          gp, s3, s5
371:              add          s0, gp, t1
372:              auipc        s2, 162540
373:              add          a6, s11, s0
                  blt          t5, s4, 394f
                  xori         s2, a7, -1983
                  addi         t6, t0, 1796
                  and          a0, tp, a5
                  xori         a6, s10, 291
                  srl          gp, a6, s9
                  ori          tp, s10, -1818
                  xori         s0, a1, -1543
                  sltu         t0, t3, s0
                  sltu         s3, s8, s6
384:              nop
                  add          s5, t4, s1
                  auipc        t0, 1030842
                  lui          t4, 193839
                  sll          t5, t4, s9
                  sll          s6, s6, s0
                  and          t4, s8, s8
                  auipc        t3, 753452
                  beq          a1, t1, 396f
                  srli         a3, s10, 26
394:              sltu         a2, s8, s0
                  bne          t2, a0, 413f
396:              sltiu        a0, s5, -418
                  add          s5, tp, a6
                  and          a6, sp, zero
                  addi         s4, s3, -1386
                  sub          a2, a3, s10
                  addi         s10, t6, 1903
                  xor          t2, ra, s10
                  add          a3, a6, s0
                  addi         s6, s3, -855
                  nop
                  bge          t2, ra, 422f
                  sll          gp, a0, a3
                  nop
                  bge          t1, t1, 419f
                  slti         s7, s3, 481
                  nop
                  srai         s4, ra, 0
413:              bne          a0, s7, 426f
                  add          s9, sp, t3
                  srai         t4, a7, 27
                  lui          gp, 449419
                  sll          t0, s3, s10
                  srli         s4, s6, 29
419:              blt          t0, s4, 422f
                  sltu         s9, tp, a5
                  nop
422:              nop
                  slti         s10, t1, 1162
                  andi         t0, zero, -1673
                  sltiu        t5, s4, -485
426:              bltu         t0, a4, 434f
                  bgeu         a1, s5, 444f
                  slli         s1, gp, 11
                  sra          s0, a3, t3
                  andi         a4, a4, -207
                  slt          a2, a7, s6
                  xor          a7, zero, t6
                  nop
434:              bgeu         a0, t5, 438f
                  sltiu        a0, zero, 575
                  srli         s5, a0, 18
                  nop
438:              or           tp, s9, t6
                  or           s1, a2, tp
                  bgeu         s8, t1, 452f
                  sub          s10, s0, s2
                  lui          s7, 83915
                  blt          a0, a3, 457f
444:              srli         s7, s9, 30
                  and          s2, gp, s9
                  srai         s9, t2, 17
                  bge          s9, s1, 455f
                  nop
                  sll          s11, t6, s4
                  add          s9, s0, s5
                  slti         t1, s8, -1050
452:              bltu         t6, gp, 465f
                  srl          s0, zero, s10
                  sltiu        a4, s1, -1004
455:              add          s2, t3, tp
                  slli         s10, t0, 25
457:              bgeu         a2, s4, 460f
                  andi         s0, s7, 940
                  sub          s2, a4, a0
460:              bgeu         t1, t2, 479f
                  bge          t3, s6, 474f
                  xor          s10, s9, s2
                  lui          s6, 804901
                  or           s5, t2, t0
465:              auipc        t4, 1153
                  and          t6, s1, s10
                  bne          t6, s4, 471f
                  xori         s2, s5, 490
                  slti         s5, s8, 726
                  xori         a4, s6, 779
471:              bgeu         s0, s4, 484f
                  auipc        s6, 966376
                  add          a2, s4, tp
474:              bltu         t5, gp, 481f
                  bgeu         s3, t0, 484f
                  ori          t0, s0, -1792
                  add          a6, s10, s0
                  lui          ra, 347494
479:              or           s5, tp, a0
                  beq          a5, a4, 487f
481:              slt          t5, s1, s4
                  blt          a7, t0, 496f
                  nop
484:              nop
                  srl          t3, s6, s0
                  bltu         s3, t4, 496f
487:              addi         s9, s1, -967
                  nop
                  beq          a6, s5, 507f
                  add          t2, zero, s3
                  ori          ra, s10, -22
                  slt          s4, s5, s7
                  addi         t4, t0, 338
                  nop
                  auipc        s11, 375592
496:              bne          t3, s6, 509f
                  nop
                  and          a2, a3, t1
                  srai         t3, s0, 17
                  and          t4, tp, ra
                  slti         t3, t3, -1581
                  addi         a7, t4, -865
                  sll          t2, s7, a3
                  slli         s1, a7, 21
                  xori         t3, t2, -989
                  slli         s2, s2, 14
507:              srli         s6, zero, 7
                  sltiu        s6, gp, -240
509:              sra          s8, s6, s4
                  addi         tp, s3, -1351
                  addi         s10, ra, 249
                  srl          s5, s8, t1
                  or           s10, t2, s6
                  sra          gp, s1, sp
                  andi         a6, s3, -1704
                  srai         t5, s0, 15
                  slli         t0, t1, 4
                  sub          gp, a5, zero
                  xori         a6, s5, 55
                  bne          t4, s7, 538f
                  sub          a7, s0, t1
                  blt          s11, zero, 531f
                  bltu         s9, a5, 527f
                  sltiu        t6, a6, 1560
                  xor          s9, s1, t1
                  xor          s11, t4, s11
527:              andi         tp, a3, 1618
                  ori          t6, a0, 95
                  auipc        t3, 725424
                  slti         s3, a5, -1073
531:              xori         a4, t6, -537
                  bne          a6, s0, 539f
                  sll          ra, a6, a7
                  ori          s4, a5, -1527
                  srai         t5, s5, 28
                  auipc        t3, 296970
                  sub          t2, a3, s2
538:              sltu         s8, t3, a2
539:              nop
                  bne          sp, t3, 548f
                  xor          s1, s3, a0
                  xori         s1, t6, 1214
                  andi         s2, a6, 639
                  or           t4, t6, s1
                  srai         a6, t2, 21
                  and          s9, a1, ra
                  or           a6, s11, a7
548:              ori          t0, a3, 1364
                  addi         t0, sp, 1924
                  lui          s7, 295599
                  add          t2, t6, s2
                  slti         s9, a7, -2035
                  slti         zero, s1, -1117
                  bltu         t1, a6, 570f
                  slti         t5, s5, 546
                  slli         s6, t6, 28
                  sra          t6, a3, t4
                  nop
                  blt          a3, tp, 567f
                  andi         t6, t1, 2019
                  slti         t0, s4, 1367
                  add          s6, a7, s4
                  and          zero, a6, t5
                  sra          t5, t0, s1
                  sub          s11, a7, t1
                  auipc        t5, 579178
567:              srli         s0, t0, 12
                  andi         s0, s4, 507
                  sll          s8, s4, s2
570:              sra          s2, t4, s1
                  lw           ra, 4(a5)
                  andi         t0, a2, 1374
                  nop
                  addi         a5, a5, 28
                  srli         a3, sp, 31
                  xori         t0, zero, -143
1000:             addi x29, x1, 0
1000:             jalr x29, x29, 0
sub_2:            addi         t5, t1, 1335
                  srli         s0, s1, 23
                  srl          s1, a6, s5
                  andi         s6, a7, 418
                  slt          tp, gp, s2
                  sll          t6, a1, s2
                  addi         a5, a5, -20
                  srai         a7, a4, 5
                  sll          t0, t3, t3
                  sll          s7, sp, t2
                  sw           ra, 4(a5)
                  auipc        a4, 349059
                  la           s8, region_1+1293 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s0, 230(s8)
                  lbu          t5, 178(s8)
                  sb           s7, 178(s8)
                  add          t6, a5, a0
                  lhu          t1, -23(s8)
                  sb           t4, 158(s8)
                  addi         a7, s3, -1462
                  lbu          s0, 158(s8)
                  lh           ra, -147(s8)
                  lbu          a2, -84(s8)
                  lb           a6, -82(s8)
                  sb           a5, -82(s8)
                  lbu          tp, -82(s8)
                  sh           s11, -179(s8)
                  ori          s4, s0, -1727
                  sb           t0, -179(s8)
                  lb           tp, -179(s8)
                  sra          s6, s3, t4
                  lb           a6, -58(s8)
                  lb           t1, -58(s8)
                  sb           s4, -58(s8)
                  sb           a4, 36(s8) #end riscv_load_store_hazard_instr_stream_1
                  la           t6, region_1+1411 #start load_store_instr_stream_2
                  sb           a6, 13(t6)
                  la           a0, region_1+1779 #start load_store_instr_stream_1
                  la           ra, region_1+727 #start load_store_instr_stream_3
                  lb           a4, 3(t6)
                  sb           t3, 13(t6)
                  lbu          s4, 60(ra)
                  sw           t2, -95(a0)
                  lb           tp, -72(ra)
                  lbu          t5, -1150(a0)
                  lbu          gp, -4(t6)
                  la           s9, region_1+1234 #start load_store_instr_stream_0
                  lb           s3, -188(ra)
                  lb           t2, 14(t6)
                  lb           a7, 228(ra)
                  lw           s0, -587(a0)
                  lbu          tp, 234(ra)
                  sb           s7, -244(s9)
                  lh           t0, 186(s9)
                  lb           s7, -1414(a0)
                  lb           s6, -1622(a0)
                  lb           s0, -244(ra)
                  lbu          t4, -4(t6)
                  sb           a3, -72(s9)
                  lb           t0, -4(t6)
                  lbu          t1, -244(ra)
                  lbu          tp, -69(s9)
                  sb           t4, 249(ra)
                  lw           gp, 9(t6)
                  lhu          t4, 109(ra)
                  lb           s4, -518(a0) #end load_store_instr_stream_1
                  sb           s9, -13(t6) #end load_store_instr_stream_2
                  lbu          tp, 120(ra) #end load_store_instr_stream_3
                  sb           a3, 187(s9) #end load_store_instr_stream_0
                  la           a7, region_0+413 #start riscv_load_store_hazard_instr_stream_0
                  sb           a1, 178(a7)
                  sb           a5, -221(a7)
                  sb           s6, 224(a7)
                  sltu         t5, ra, a0
                  sb           a6, 224(a7)
                  lb           s7, 58(a7)
                  sb           t3, 58(a7)
                  xor          a6, t6, s9
                  lw           s2, -153(a7)
                  sltu         a3, s2, a1
                  slli         s11, gp, 26
                  sltiu        s2, s10, -871
                  lbu          s8, -51(a7)
                  lb           a4, 178(a7)
                  sb           a4, 178(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           ra, region_1+1319 #start riscv_load_store_rand_instr_stream_0
                  slti         s1, a5, -981
                  sh           ra, -15(ra)
                  sub          s8, s2, a4
                  slti         s4, t3, -1122
                  and          a3, s1, s1
                  slt          t3, a3, t2
                  lh           a2, 57(ra)
                  and          t1, a0, ra
                  sltu         a0, s11, a3
                  lui          s2, 421518
                  or           t6, s2, s1
                  lb           s5, 18(ra)
                  lhu          t2, 39(ra)
                  sw           s10, -15(ra)
                  and          s4, a1, t1
                  or           t1, s0, a0
                  lbu          s5, 30(ra)
                  and          s4, t3, t3
                  sb           zero, 2(ra)
                  sll          s11, s0, s10
                  lbu          s10, -58(ra)
                  lb           t2, 12(ra)
                  ori          zero, a1, 1843
                  lh           zero, 43(ra)
                  auipc        s3, 70071
                  lb           s9, 42(ra)
                  lbu          t1, -12(ra)
                  srli         s4, s0, 27
                  lh           a2, -7(ra)
                  nop
                  sb           s2, -29(ra)
                  lb           t5, 16(ra)
                  lh           t2, 9(ra)
                  lb           s7, 32(ra)
                  lhu          gp, 21(ra)
                  lui          s6, 1032233
                  sh           a2, -47(ra)
                  auipc        s10, 396776
                  or           a7, t0, t5
                  lb           t3, -8(ra)
                  lb           t3, -35(ra)
                  sub          s3, t6, s2
                  sw           s4, -3(ra)
                  lui          t4, 1037274
                  sw           a5, 25(ra)
                  lb           t4, -36(ra)
                  lhu          s4, -21(ra)
                  sub          s11, a6, s6
                  slt          t0, s7, tp
                  sw           t6, -55(ra) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_1+1519 #start riscv_load_store_hazard_instr_stream_2
                  lb           zero, -6(s9)
                  lb           a3, -6(s9)
                  lb           s6, -6(s9)
                  lbu          a3, -6(s9)
                  sb           s9, -6(s9)
                  ori          s8, s9, 1383
                  andi         s8, gp, 235
                  lb           t1, -6(s9)
                  lbu          s11, -6(s9)
                  sra          ra, s3, a0
                  slli         a6, s8, 23
                  sh           t3, 13(s9)
                  lbu          a7, 13(s9)
                  srl          ra, s3, a6
                  sw           zero, -11(s9)
                  lbu          tp, -11(s9)
                  lh           tp, -11(s9)
                  sw           a1, -11(s9) #end riscv_load_store_hazard_instr_stream_2
                  la           gp, region_1+1067 #start riscv_load_store_rand_instr_stream_2
                  ori          s4, s0, 1964
                  sll          t2, t6, s0
                  sra          a3, s8, t2
                  sb           s2, 74(gp)
                  lhu          s8, -107(gp)
                  lb           s4, -211(gp)
                  or           ra, s6, t4
                  lb           s9, -1(gp)
                  lb           t6, 66(gp)
                  lhu          a2, -173(gp)
                  sh           tp, 103(gp)
                  slti         s2, a5, -135
                  lbu          s2, 142(gp)
                  lb           s2, 147(gp)
                  slti         s10, s11, 509
                  srai         s2, s6, 23
                  lb           t5, 28(gp)
                  nop
                  lh           a4, -23(gp)
                  sb           gp, 154(gp)
                  sb           s8, -188(gp)
                  srli         t3, s1, 6
                  andi         s4, ra, -1968
                  addi         s5, a5, -1389
                  lbu          t3, -24(gp)
                  lbu          t3, 174(gp)
                  slti         t5, t2, -1876
                  lh           a2, 223(gp)
                  sb           t3, 229(gp)
                  sb           a0, 108(gp)
                  lb           t1, 7(gp)
                  lhu          s4, 245(gp)
                  lb           tp, 137(gp)
                  lb           s1, -35(gp)
                  lbu          ra, 238(gp)
                  sb           s4, -57(gp) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_0+405 #start load_store_instr_stream_2
                  la           a0, region_0+904 #start load_store_instr_stream_1
                  sb           s6, 0(t2)
                  lb           s9, 1(a0)
                  la           s1, region_0+1663 #start load_store_instr_stream_0
                  lhu          t4, -9(t2)
                  lb           s2, 3(t2)
                  lb           s0, 10(t2)
                  sh           a4, 14(a0)
                  lh           s4, 37(s1)
                  lbu          s6, -4(t2)
                  sb           s4, 10(t2)
                  sb           tp, 64(s1)
                  lhu          a7, 10(a0)
                  lbu          s10, -46(s1)
                  lbu          s8, -10(t2)
                  lb           tp, -10(t2)
                  lbu          tp, -26(s1)
                  sw           t0, -5(t2)
                  sh           s3, -2(a0)
                  lh           s8, 13(s1)
                  sh           s8, -14(a0)
                  lb           zero, 3(a0) #end load_store_instr_stream_1
                  lh           a7, -47(s1)
                  sb           s6, -13(t2) #end load_store_instr_stream_2
                  lbu          t0, -54(s1) #end load_store_instr_stream_0
                  la           gp, region_1+1021 #start load_store_instr_stream_1
                  la           a7, region_1+443 #start load_store_instr_stream_0
                  lb           s2, 35(gp)
                  sb           tp, -23(gp)
                  lb           t5, -1(a7)
                  lh           a4, 153(gp)
                  lbu          a3, 37(a7)
                  sb           t2, -91(gp)
                  la           t2, region_1+1092 #start load_store_instr_stream_2
                  sb           s11, 27(t2)
                  lbu          zero, 28(gp)
                  lbu          s1, 64(gp)
                  lbu          t3, 30(t2)
                  sw           a6, -23(a7)
                  lb           ra, -18(a7)
                  lhu          ra, 17(gp)
                  sb           t3, -26(t2)
                  lbu          s11, 172(gp)
                  lbu          s11, 44(a7)
                  sb           t5, -11(a7)
                  lbu          zero, -30(a7)
                  sw           s1, -64(t2)
                  lh           s5, -25(a7)
                  lbu          t5, -126(gp) #end load_store_instr_stream_1
                  lb           s11, 31(t2) #end load_store_instr_stream_2
                  sb           a4, -40(a7) #end load_store_instr_stream_0
                  la           t3, region_1+29 #start riscv_load_store_rand_instr_stream_1
                  sltiu        t1, t5, 126
                  lhu          a7, 13(t3)
                  sltiu        t4, s4, 25
                  sb           a5, 8(t3)
                  sub          gp, s0, t0
                  lui          s6, 607352
                  sltu         s11, a0, s1
                  sh           t0, 11(t3)
                  sb           t6, -7(t3)
                  lb           s7, -10(t3)
                  lh           s1, -13(t3)
                  xor          t1, s5, a4
                  ori          a7, zero, -501
                  sub          t2, a6, s1
                  lb           a2, 10(t3)
                  andi         s11, s10, 1652
                  lb           t6, -12(t3)
                  sltu         s6, s10, a5
                  sra          t2, a4, s1
                  slti         a0, a5, 1744
                  srai         t0, t4, 21
                  sh           s1, -11(t3)
                  xori         s6, a2, -927
                  srl          t4, t3, gp
                  lbu          s8, -1(t3)
                  sb           gp, -7(t3)
                  srai         s4, s1, 4
                  lbu          s11, 13(t3)
                  slt          zero, sp, t1
                  or           t5, sp, t6
                  srai         s9, tp, 5
                  nop
                  lhu          s9, -7(t3)
                  xor          s2, s9, t5
                  lb           s6, -6(t3)
                  sb           s2, 12(t3)
                  lui          s1, 669816
                  sltiu        gp, s1, 1723
                  sb           zero, -4(t3)
                  sub          s6, s5, a6
                  sh           s6, 11(t3)
                  slti         s10, t4, -537
                  slt          t6, s5, ra
                  srli         tp, a2, 11
                  sltiu        s11, gp, -793
                  nop
                  lb           a0, -13(t3) #end riscv_load_store_rand_instr_stream_1
                  sltiu        s11, tp, -2036
                  slt          s6, s10, a3
                  ori          t6, ra, 1212
                  srai         a2, sp, 14
                  auipc        s9, 700719
                  bgeu         t6, t1, 18f
                  bgeu         s0, t3, 24f
                  sub          tp, s7, a3
                  lui          s1, 168446
                  xori         ra, t6, -1503
                  sltiu        ra, s7, 678
                  xor          s6, a5, s6
                  bne          s5, s0, 29f
                  slt          s9, a2, ra
                  slt          s7, t4, s6
                  or           zero, s8, s3
                  srl          t3, gp, a1
                  bne          s2, t6, 34f
18:               srl          s8, s4, a0
                  or           s1, a0, s4
                  ori          s4, a1, 1539
                  bne          t5, s2, 37f
                  xori         s11, a5, -454
                  sub          s0, s7, s2
24:               addi         ra, t5, 1373
                  nop
                  or           s11, s10, s11
                  nop
                  sltu         t3, t0, a5
29:               or           a6, s10, s0
                  auipc        tp, 981120
                  bge          t4, t4, 40f
                  sltu         t3, a1, s1
                  add          s4, t1, ra
34:               bne          s1, t1, 53f
                  bge          a1, ra, 46f
                  slt          zero, tp, t1
37:               xori         s6, s8, -1937
                  bgeu         gp, sp, 47f
                  xori         s7, s6, 280
40:               sll          zero, t6, a7
                  srai         s5, s2, 20
                  sll          t3, a4, a5
                  slti         s1, s10, 729
                  or           t2, s7, t4
                  ori          ra, a3, -281
46:               bltu         a5, t2, 49f
47:               add          t3, a1, a2
                  auipc        s5, 207558
49:               add          tp, s1, s4
                  xori         a0, t4, 1943
                  and          t3, t5, a5
                  ori          a7, s7, 1153
53:               lui          zero, 887351
                  lui          s10, 407175
                  sra          t3, s9, s5
                  bge          s5, t2, 69f
                  xori         s0, a1, 1779
                  nop
                  slt          a3, t3, sp
                  sll          t1, s5, s0
                  beq          s9, s4, 65f
                  bgeu         s3, gp, 68f
                  ori          tp, s9, 718
                  sub          s7, zero, t1
65:               sltu         a6, t4, s3
                  slt          t2, gp, s4
                  andi         s3, s4, 1903
68:               bne          zero, t3, 83f
69:               lui          t5, 963870
                  auipc        t4, 647680
                  sub          t1, a6, s0
                  nop
                  bgeu         s10, s11, 78f
                  xori         t3, s6, -1212
                  xori         a0, s7, -1488
                  bgeu         a6, a3, 79f
                  and          s8, s1, s9
78:               blt          a0, s2, 96f
79:               sltu         a6, t0, t0
                  add          t3, a7, t2
                  bge          a1, s2, 99f
                  sra          t1, s10, ra
83:               beq          s4, t5, 97f
                  sltu         t5, s3, a6
                  srli         t0, t5, 11
                  xori         a2, s9, -588
                  bgeu         s9, a7, 92f
                  srli         s4, gp, 9
                  bne          a4, a4, 90f
90:               bge          gp, tp, 97f
                  xori         s4, s5, -983
92:               ori          a2, a4, -1597
                  sltu         t3, t4, tp
                  andi         t5, sp, 232
                  srai         gp, s7, 5
96:               sll          s7, t1, s2
97:               xori         a2, t5, -523
                  lui          a4, 734620
99:               bgeu         s8, s8, 100f
100:              slli         t4, s3, 9
                  add          s0, s1, a6
                  auipc        tp, 719692
                  nop
                  bltu         t1, s2, 124f
                  nop
                  xor          s9, t6, t5
                  lui          s5, 798441
                  srl          tp, t6, t3
                  sltu         t4, zero, tp
                  bne          s3, a7, 112f
                  sltiu        s11, s0, -263
112:              xori         a7, zero, -1633
                  slti         gp, t1, -746
                  bgeu         t2, s9, 122f
                  blt          zero, t6, 125f
                  slti         a4, a1, -1532
                  bge          t1, s5, 130f
                  sll          s10, sp, a1
                  srai         a4, a2, 1
                  sltu         t2, sp, s10
                  nop
122:              srli         s0, a5, 28
                  addi         t4, t0, -224
124:              auipc        t3, 313139
125:              auipc        zero, 662312
                  xor          t6, s7, t2
                  sltiu        s0, s8, -1404
                  xori         s11, s5, -847
                  slt          s1, s11, s10
130:              bltu         a1, a3, 138f
                  xor          s6, ra, a3
                  and          a0, s7, gp
                  bne          t5, zero, 151f
                  ori          s5, s8, -1299
                  ori          a3, t1, -580
                  slti         a0, t2, -1529
                  andi         t3, s7, -41
138:              srli         t0, tp, 4
                  sltiu        s10, a5, 1961
                  addi         t5, a3, -699
                  nop
                  slli         t4, s7, 21
                  add          t2, s9, t0
                  bltu         t1, a6, 149f
                  srai         a6, t2, 7
                  srai         s8, a1, 5
                  blt          s6, a6, 149f
                  xor          t5, s0, zero
149:              and          s2, s5, sp
                  add          gp, t6, gp
151:              bgeu         t5, t6, 158f
                  srai         s3, sp, 26
                  add          s6, s9, sp
                  sltu         s10, t0, a4
                  sltiu        gp, s11, -83
                  lui          s6, 159343
                  srl          t5, s10, a1
158:              bltu         t2, t6, 176f
                  ori          tp, t0, -1353
                  addi         t1, a2, -1063
                  sltu         a0, s1, t1
                  ori          s8, s0, -789
                  xori         a0, s8, 657
                  srli         t6, s0, 21
                  sll          s4, s8, a1
                  addi         a4, tp, 109
                  or           t4, s10, s9
                  slt          s4, t5, a5
                  beq          t0, s3, 178f
                  ori          s0, sp, 421
                  srl          a3, s9, s9
                  sltu         s5, t6, t3
                  bne          s7, t2, 186f
                  srai         a3, t0, 19
                  ori          a7, s8, 1947
176:              bltu         a5, a7, 196f
                  nop
178:              slti         s7, gp, 1929
                  bne          a1, a1, 189f
                  bne          a1, s6, 199f
                  srai         a4, t3, 18
                  nop
                  bgeu         s1, t4, 200f
                  blt          a5, s11, 185f
185:              lui          s1, 699387
186:              xori         t1, gp, -1728
                  sll          t0, a4, s4
                  nop
189:              blt          ra, s9, 204f
                  srli         a4, a5, 19
                  sll          s5, a3, sp
                  sltiu        s6, a0, -592
                  bltu         sp, s7, 194f
194:              slli         t5, t6, 17
                  lui          t3, 910712
196:              and          s0, s8, s11
                  bne          a6, a2, 206f
                  srli         s1, t4, 24
199:              sltiu        t2, t2, -1555
200:              and          s6, t5, a2
                  xor          s3, s8, s8
                  beq          zero, a7, 215f
                  beq          ra, s6, 221f
204:              xor          a3, a6, tp
                  bne          s7, s4, 223f
206:              sll          a6, t4, t0
                  add          s8, s4, gp
                  sll          s6, a0, a5
                  xor          t1, s7, t6
                  sub          t1, s4, s6
                  and          s7, s3, s6
                  ori          s11, ra, -549
                  xor          a3, a1, s5
                  xor          s7, a7, a3
215:              ori          t0, a1, -715
                  add          s10, t5, ra
                  slt          t2, gp, s6
                  srai         s11, s1, 18
                  blt          s2, a4, 235f
                  ori          s10, s7, -1515
221:              ori          s5, s8, 93
                  xor          t5, s10, s1
223:              slti         t5, s3, 1760
                  bgeu         s2, a2, 242f
                  srl          a3, a7, s3
                  slt          ra, t6, a7
                  slti         s2, s3, -594
                  srl          s2, t6, t4
                  blt          s0, ra, 235f
                  andi         s3, t2, 1041
                  addi         a4, gp, -2027
                  sltu         gp, a1, ra
                  xori         a4, a0, -1673
                  xori         a2, a6, -1866
235:              bltu         zero, s10, 243f
                  auipc        gp, 387635
                  slli         a2, a0, 31
                  srl          s11, sp, s1
                  sltu         s10, t2, a0
                  srl          ra, a0, s1
                  addi         s2, t4, -633
242:              bge          zero, a6, 250f
243:              andi         s8, s8, -1207
                  sub          s2, s2, t0
                  slli         t5, s3, 24
                  ori          tp, a4, -603
                  bne          t3, s8, 252f
                  auipc        a6, 225604
                  xori         zero, a6, -980
250:              bne          a3, t2, 267f
                  slli         s2, s9, 1
252:              bge          s4, tp, 265f
                  slti         s8, t2, 1254
                  nop
                  srai         s10, a6, 14
                  lui          s2, 547843
                  srai         s6, s5, 23
                  bgeu         t6, a0, 261f
                  xor          gp, t5, zero
                  slli         ra, a1, 24
261:              ori          gp, a0, -135
                  bgeu         s9, s0, 265f
                  beq          t2, tp, 274f
                  or           s10, zero, s11
265:              slt          s4, a4, t4
                  nop
267:              sra          a6, zero, t3
                  bge          s3, s1, 282f
                  andi         t1, s4, 1009
                  nop
                  xori         t0, sp, 1002
                  sra          a7, a2, t0
                  bne          a4, zero, 277f
274:              lui          gp, 21542
                  add          zero, sp, sp
                  beq          t0, a7, 296f
277:              and          s3, t1, s9
                  slt          t6, s8, sp
                  bne          s2, a6, 296f
                  auipc        s4, 67840
                  bge          s6, sp, 283f
282:              sra          a0, a1, a2
283:              xor          s10, a6, s0
                  xori         a0, t2, 415
                  sltu         s2, s3, gp
                  addi         tp, zero, -731
                  add          s7, ra, a5
                  or           zero, a2, s0
                  blt          s2, a3, 297f
                  and          gp, s11, s2
                  ori          s2, zero, 1999
                  sltiu        a6, ra, 116
                  srli         a6, s10, 19
                  blt          t5, a6, 295f
295:              slli         t4, s2, 27
296:              slt          s2, s0, s5
297:              add          s7, s11, s11
                  beq          a5, ra, 312f
                  slti         t3, t4, -1738
                  add          t6, a0, a2
                  and          ra, a2, t1
                  slti         s5, s2, 181
                  xor          t3, s3, s0
                  xori         s5, a0, 923
                  srai         s8, s10, 0
                  nop
                  slli         a7, sp, 15
                  xori         s3, a2, -1970
                  sra          s11, sp, t2
                  bge          s11, s8, 319f
                  xori         zero, a4, -882
312:              srai         t4, s2, 18
                  srli         s11, t6, 31
                  auipc        t0, 631935
                  blt          t0, s11, 333f
                  srli         t5, s6, 2
                  slt          s5, a4, a2
                  slli         a7, ra, 27
319:              or           s3, a1, a0
                  bge          tp, gp, 331f
                  slt          gp, t3, tp
                  sltiu        t4, tp, 1637
                  slt          t5, zero, zero
                  xori         s8, s0, 504
                  xori         ra, t3, 1776
                  nop
                  andi         t5, s3, -1758
                  xori         a3, s1, -376
                  xori         ra, s5, -1116
                  srai         a6, a4, 13
331:              sub          s7, t2, s2
                  srai         s0, a5, 15
333:              blt          s3, ra, 336f
                  sltiu        a6, t1, -1359
                  bne          s4, t6, 336f
336:              xor          t4, a5, t3
                  sra          gp, a5, s11
                  blt          a1, s5, 341f
                  xor          s11, s10, zero
                  sub          s3, tp, t4
341:              auipc        t2, 38895
                  auipc        a6, 1007546
                  sltu         t3, a6, s3
                  slli         a0, s4, 4
                  bne          a6, a3, 351f
                  ori          s10, t6, 366
                  sra          s0, t4, t0
                  slli         t5, s4, 9
                  srl          s5, t2, s9
                  addi         t5, a3, -1759
351:              srl          s1, a5, a3
                  bltu         t0, s3, 362f
                  blt          s11, s6, 366f
                  bne          s0, t5, 366f
                  sra          t5, t2, s11
                  bltu         t6, a7, 361f
                  nop
                  addi         a2, t0, -1914
                  addi         s11, a1, 403
                  lui          tp, 480584
361:              slti         t3, s9, 1685
362:              srl          s10, s10, a7
                  srai         a0, s1, 0
                  bgeu         a5, a5, 366f
                  xor          s9, sp, zero
366:              slti         s0, s4, 1641
                  slt          zero, ra, t5
                  ori          s10, a2, 1886
                  slt          s4, gp, t0
                  addi         gp, s6, 524
                  srl          s1, s5, sp
                  srai         t5, sp, 30
                  lw           ra, 4(a5)
                  addi         a5, a5, 20
                  sub          s5, a1, zero
                  ori          s8, s1, -1285
669:              addi x14, x1, 0
669:              jalr x14, x14, 0
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
.word 0xd42eeb0e, 0x5277505e, 0xe1085985, 0x76841a31, 0xa5722195, 0xf340073a, 0x3c5885a2, 0xa1886f0a
.word 0x5fae53c5, 0xa8ac86f8, 0xd4e21263, 0xacb8ae41, 0x46b00278, 0x1bc4dc5c, 0xf0bf420c, 0x6bf3db62
.word 0x6c364d40, 0x1eb04be0, 0xb17ebd47, 0x5f6f8434, 0xf12097f7, 0x4a220249, 0x951064d8, 0x76b9e2bd
.word 0x2bd84359, 0xea3f8e4e, 0x319955b4, 0xd1cd8520, 0x0139336b, 0x33eb162f, 0xe242b7a9, 0xd6054aa0
.word 0xf559df27, 0xc2c04eda, 0xc42d1116, 0xb0db144b, 0xe0efe85c, 0x1296440e, 0x6827fae0, 0xd5133a28
.word 0x084436d0, 0x7592f80c, 0x07df1e5d, 0x3fadd246, 0x2bddee45, 0x62a18b76, 0x0895224c, 0xfd82b085
.word 0x164b096d, 0x8adc19b1, 0x9b0704f4, 0x6bd02069, 0xa362f019, 0x29c7bb30, 0x6c866f9c, 0xcb28b3f4
.word 0xc66e31cb, 0xec21d31a, 0xff5ef54b, 0x836b723a, 0xe9685b64, 0x84521e0b, 0x7b2a799f, 0xaee98d78
.word 0x6b911ec2, 0x48dc53b7, 0x74acf6b3, 0x17736d98, 0xeb56977e, 0xaf6cfd52, 0x0386f6df, 0x540a9916
.word 0x8d8cd1a5, 0xfcd5be29, 0x1508c7b9, 0x6c2460ed, 0x6589e7ca, 0xa800395d, 0x9cbe463b, 0x3f0cf04c
.word 0xa9dba604, 0xcbcb68f9, 0x9891a483, 0x202d48dd, 0xd16f86af, 0x5b369b9f, 0x90f41326, 0x72eae92d
.word 0xfe81aad0, 0xeb14bc60, 0xcc2a2fbe, 0x01db7066, 0x136c577a, 0xe9d2a872, 0xc987a674, 0xda8a5222
.word 0x955558ef, 0x05bf95da, 0x8c2effc8, 0x63d80cb9, 0xd69fd3db, 0x138a556c, 0xe769cc70, 0x65047767
.word 0x7f1dbf19, 0x3923a07e, 0x31c6d476, 0x2615f2ca, 0x4934ce8d, 0x8b6a69e6, 0xb8f32190, 0xa16af73d
.word 0xfe14321f, 0x2d8091b9, 0xab0368ac, 0x56e6466c, 0x60b075b5, 0x64228270, 0xb95d2c4b, 0xe917076b
.word 0xb8d15774, 0xe420d144, 0xbb0b6238, 0xd564237f, 0x50d60efe, 0xa9187230, 0x0ed4c791, 0x3a3940ac
.word 0xad8a1d60, 0x9b34fb90, 0xba53af29, 0x76ef2c1d, 0xa39c3cbe, 0x4dd8d4d7, 0x3dae6ec1, 0x27c33f89
.word 0x061905d3, 0x73d3d3ca, 0x991c09c4, 0xc31da65e, 0x0ec6276a, 0xa3c230c4, 0x53636c8d, 0x03e1ae4c
.word 0x7efd4572, 0x0f3287fa, 0x0103ffae, 0x98a68fe1, 0xa52b8bf8, 0xb7cc8c64, 0xa76ad338, 0xfed8b00c
.word 0x4978a2e8, 0xd1dd87e8, 0xfad5a3f9, 0x79db86a9, 0xbf284279, 0x16e982ed, 0x0d4696a8, 0xc5756995
.word 0x6c7c21f3, 0x79cef4e8, 0xbd409e02, 0xc8048e53, 0x6c6e5470, 0x267300c3, 0x3aedd45d, 0xe983e875
.word 0x0376ecad, 0xd72ce345, 0xaf3998c1, 0x02b4d47d, 0x7d287097, 0xff3af113, 0x18a26436, 0x935d49ee
.word 0xf33e6730, 0x3b66a7e7, 0xfd2a24a8, 0xdef39b5b, 0x5a629a81, 0xc66be57d, 0x3f56d999, 0xb4b71c96
.word 0xc5de4243, 0xfbe32fb6, 0x0d80ec57, 0x509a1e36, 0x663d4715, 0x995e3363, 0x4635b819, 0x6100870a
.word 0x925ef63e, 0x8ceb993b, 0x98312b19, 0xcb8a980f, 0x7d05ac54, 0xf989a4c7, 0x91a9e0f8, 0x06330ce7
.word 0xd416d1dd, 0x132456cf, 0x0dd986e6, 0xef69e884, 0x0c5b58b4, 0x7889ea2c, 0xf6f63351, 0xbc9722f3
.word 0xc7e964f2, 0xa91b550e, 0xc7ceab12, 0x531a9d7f, 0xe0e67307, 0xc1524997, 0xc13f7135, 0xc0f449d5
.word 0x9b8c3f04, 0x1499a277, 0xe63298ff, 0xff73a5e0, 0x01b41af8, 0x8e5bcc5e, 0xc1843062, 0xbff27bef
.word 0x68d10953, 0x7b235fcd, 0x20f34857, 0x088c6312, 0x011b2ca5, 0x4d0f6315, 0x849acc2d, 0xa7c3fe89
.word 0x4b9699f7, 0x73ab3270, 0x94419611, 0x6ec3633f, 0xaeccc437, 0x16277b62, 0x0e83d197, 0xb7843463
.word 0xf87b01bd, 0x6ceb5ee2, 0x972ec76f, 0xc8254592, 0x07d4271a, 0x7780a23d, 0x4b510d55, 0x8785bf93
.word 0x4122b28d, 0xda9a331d, 0x786c0714, 0xa0397013, 0xef6faf37, 0x4ddb2631, 0xd142440a, 0x753704e7
.word 0xf43c79ce, 0x1e6c802f, 0x09027a82, 0x0c826dfc, 0x5362c079, 0xfcbe98c1, 0x1249ca22, 0xf6ec852b
.word 0x2f00dee8, 0x9a049802, 0xb9c1afc0, 0x5dbd4cd4, 0x85aff204, 0xc92079fd, 0xfb28baf8, 0x429a6a4f
.word 0x9b764358, 0x67009755, 0xea8b6e67, 0x3e507d55, 0xfd8208c0, 0xaa52a7e2, 0xde8870e7, 0xe885b042
.word 0x90046079, 0x63721b8c, 0x10661464, 0x25f184d0, 0x02f24d90, 0xa6de205a, 0x29838262, 0x95ac00c6
.word 0x0c4fb7e0, 0x02258fe0, 0xe44a57c5, 0xca846836, 0x00944a63, 0x5bf819dd, 0x2d6b6669, 0x695ce64f
.word 0x795c01cb, 0x19861ddf, 0x0b0b0ce1, 0xf5a9553b, 0xcdc7a4f4, 0x9167a141, 0x55f4bf2f, 0x03f4905a
.word 0x7cd20dfb, 0xece76a55, 0xcc270320, 0x1dbeb9a2, 0xaa26fa88, 0x1925e80e, 0x27c0f8ac, 0xbf2e400d
.word 0x4d240d1f, 0xc7d8d22d, 0xfbd9abf9, 0xad06be45, 0xf60e340a, 0x7a70dc5d, 0xfa5e66cb, 0x81901859
.word 0x89760678, 0x5cb3aebc, 0x4d943ee0, 0xcaff4919, 0x5fc80ad2, 0xbf8c2ca2, 0x2eb8c385, 0xeb20cc2e
.word 0x6e31107b, 0x40fdb15e, 0x70967c51, 0x84d6f152, 0x2dee3d51, 0x8def08ae, 0x7bf29b6d, 0x5d22551c
.word 0xdd62d156, 0xf163601f, 0xa6b5b200, 0x4c21ebdd, 0x0891fde6, 0x9ab500c8, 0xed66abb4, 0x29e92545
.word 0x848dc0a1, 0x3cc238df, 0x813ba822, 0x2101321e, 0x4371666d, 0x519f4363, 0x6cf9fa92, 0xb9ed4f88
.word 0xc08db158, 0x7d60f65f, 0xc2eea88f, 0x64264726, 0x5434e0ae, 0x82f44f10, 0xe0c15385, 0x3a14d6c3
.word 0xab5701a2, 0xe67f607a, 0xbc8c69f2, 0xa4495f46, 0x47d6d6f4, 0x05f925c5, 0x90848614, 0xe8769cf2
.word 0xbe4b2847, 0xebf93ce1, 0xbfa51072, 0xb23a6e97, 0x0e26f70f, 0x5814b045, 0x82cd01f6, 0xfc38a65c
.word 0xe8e95744, 0xba1f6c5d, 0xe9465fe2, 0xd92da2bb, 0xdfba3821, 0x1535d024, 0xeede5cbe, 0x6d673ed5
.word 0xb5c885f8, 0xea920620, 0x2801c957, 0x11aa782c, 0xf6836bbe, 0x90480ade, 0x1bd17291, 0xe4bcccf9
.word 0x5b846e91, 0x42109bfa, 0x87bbe298, 0x8e30af46, 0xa4cb2dda, 0x2a7f28e6, 0xfb7d5a6e, 0x20403d78
.word 0x5d643cd1, 0x21208c0e, 0x599a4c90, 0x41d0a055, 0x879c2d57, 0x7c2e3e21, 0xbb4a7d76, 0xaca0c3e3
.word 0xd2940a5e, 0x0c4b1c2e, 0xaa53b13f, 0xcf745e8a, 0xdb2358ef, 0x0dbff472, 0xa584cc9f, 0x0f3aba92
.word 0x9afd2bed, 0x4990c624, 0xd77a19c0, 0x7e51f548, 0x617ccdfb, 0x7db63cb4, 0xf8ea715d, 0x7c52a21c
.word 0x333a2f1a, 0x1184f914, 0xde660a59, 0x41d43835, 0xc145ca86, 0x70e97893, 0xc3d5eb12, 0xd30fe4c8
.word 0xaa1fd06c, 0x2b7dc797, 0xfb24a385, 0xf6f67e45, 0x1376ca8f, 0x66cd4463, 0x643b5c49, 0x81086365
.word 0x7ded0210, 0xdb45e5d4, 0x7eff54cc, 0x3ad32381, 0x3a3b785d, 0x1004193c, 0x81b44311, 0x761520c0
.word 0x452d3b57, 0x6b209a37, 0xa0200167, 0x4ee3c616, 0x949b3a6b, 0x849f5305, 0xab838033, 0xe6fab9cd
.word 0xad8c1c6a, 0x54549dc1, 0xb146ccb6, 0x3ec71065, 0x1e57ca81, 0x4c65f94f, 0xb49fed31, 0xdd341d62
.word 0xaeba7329, 0xf570da35, 0xaf86af24, 0x5f774f55, 0x74258494, 0x848f9516, 0x7aa80162, 0xe2edf237
.word 0x24621369, 0x881ff1b7, 0x24c321db, 0x0cc7ca97, 0xd51121f2, 0xb2212a3d, 0x3f84c0ba, 0xd45f2f7b
.word 0x89e18a20, 0x48f34e63, 0x7808bfd7, 0xbc7b82fc, 0xff4e654c, 0x1816534f, 0x53927cad, 0x30b3f4bc
.word 0x4d8605a0, 0x1bdca7fa, 0x7e617635, 0xb4419501, 0xc8869d9d, 0xae9f4aff, 0x78766670, 0xd83e42ba
.word 0x85913970, 0x0a13337c, 0xd22e393b, 0x84a4c5ff
.section .region_1,"aw",@progbits;
region_1:
.word 0xef4a2a08, 0x29441356, 0x7a6c5c60, 0x13246173, 0x97836115, 0xb0eef266, 0x42992588, 0xab2d874f
.word 0xa6c1bd99, 0x3a105b5b, 0x6da28bcd, 0xe42580d6, 0x64dacea0, 0x9445c757, 0x663a1e7a, 0x4a8738af
.word 0xc7be3ad0, 0x63f4f0a3, 0x1f5e8d27, 0x7fe7a274, 0x4c405fcf, 0xfcf4047f, 0xdbeda62b, 0xf43638e0
.word 0xf9c18176, 0xfc29f446, 0xb6ababae, 0x93ce489b, 0xc37672fd, 0xf0be8409, 0x82c41611, 0x89e949b5
.word 0xe537bf12, 0xcf52a182, 0x16672894, 0x93ff0f83, 0x75a2ce54, 0xb23b0f29, 0x9316d585, 0x21ea7094
.word 0x3f34f684, 0x04faf82b, 0xf888e9b5, 0x2797b635, 0xfdf4aca2, 0xc8b17eae, 0x684f8050, 0xb678d068
.word 0x8318f5a8, 0xbf889d77, 0x81c295c4, 0x7839ccef, 0x6fd636f8, 0xc831a96b, 0x85fa7c0f, 0x2bc33102
.word 0x392df3b6, 0x62e98f42, 0x630916c9, 0x93993219, 0x87c2c580, 0xcb92e076, 0xfe71eab1, 0x7c6dcfb8
.word 0xa5c3bbe2, 0xc45d05b7, 0x9601a947, 0x10431011, 0xd5bbbd7f, 0x3587525c, 0xa117b7dd, 0xe0431bbc
.word 0x05665d58, 0x6b717744, 0x2f7716a7, 0xb3a204be, 0x9b484b09, 0x10fefb76, 0xc64e015d, 0xad65f0d8
.word 0xa9e2e8fb, 0x59c3e212, 0x8495cd2e, 0xd73620f1, 0xbd440b49, 0xfb8410a2, 0xa090ff6b, 0xf65345f1
.word 0x30fa9732, 0x5668ad64, 0x99266d0d, 0x29de2011, 0x4522e6c4, 0x8e976b52, 0xdb133788, 0x1139c9af
.word 0x16d34116, 0x957c19e2, 0xac32330c, 0x23cb073e, 0x5969cd61, 0x757705a7, 0xd608e10b, 0x7ba92906
.word 0x907d2283, 0x35c304a6, 0x9d1ec12e, 0x901dd62f, 0x954271b5, 0xc6d5aa20, 0xba952b46, 0xe5169b0d
.word 0x80f3d386, 0x45f0cac7, 0x40163153, 0x0eb21bc9, 0xa305f308, 0xd9cd785f, 0x9a307e9d, 0xba5a22cd
.word 0xaa9730ec, 0x84179a4f, 0x0e48086b, 0xf61ede95, 0x7f66e968, 0x910bee87, 0x932d86ad, 0x2793a935
.word 0xc31ec19f, 0x11a24552, 0x46deb2d5, 0xc34784df, 0x0cde955e, 0x4e686072, 0xbc056b77, 0x83036a54
.word 0x42e15c30, 0xd44ffa3e, 0x7155d890, 0xeebd7149, 0x412ca4b0, 0xa328117c, 0xe25e0520, 0x616c687f
.word 0x5c4b042d, 0xfacc089a, 0xc7395714, 0x95666377, 0x1e629b29, 0x2804b0e1, 0x1e980fbb, 0x68720e35
.word 0x1c2b41d6, 0x34c6fade, 0xe4c5d192, 0x5d75986f, 0x8b6370e6, 0x5ded3637, 0x4056df2d, 0xe6ae850b
.word 0x83afadf7, 0x364fe44a, 0x35c2f530, 0x7fb1b30e, 0xdca028d4, 0x80d69a2f, 0x45496272, 0xd7a5375f
.word 0x56bcc526, 0xd4530b83, 0x13fcd409, 0xdd47650d, 0x7d3b389f, 0x62654bd7, 0xb74e8655, 0xe7ca98a9
.word 0x61aed834, 0x080a1835, 0x6afc2d78, 0x05322d10, 0x5f54d371, 0xdece157d, 0xd84b0d1e, 0xa9034e71
.word 0x515c0a18, 0x1cdaf6a5, 0x3250b6b1, 0x39df3a8b, 0xe61e6037, 0xb06fe06b, 0x77430f5c, 0xc519a053
.word 0xc870e443, 0xa5e5e50f, 0x11b34fe7, 0xb4230f97, 0x9c181241, 0xca1aa69a, 0x81856ccd, 0x1353721e
.word 0xee95aebb, 0x65ec0530, 0x54a2318e, 0x39c7e36c, 0x1e19fd59, 0xb404a8d6, 0x05faf78d, 0xcf7db5bb
.word 0x52006850, 0x01210023, 0x8977b866, 0x62bd86d6, 0x4d578c5c, 0x332cdd34, 0x0b9fddb4, 0x9b683d6c
.word 0xcf5bddab, 0x065aaea8, 0xd42c47e7, 0xd038dcba, 0x7ddf294f, 0x5b952f25, 0xc7aafdee, 0x881658f6
.word 0x88e6ed40, 0xf5b8ea03, 0x18861086, 0xa8d8eba7, 0x405c17a2, 0xc50f8cd6, 0x420b1964, 0x48e7bac5
.word 0xdaa137d4, 0x2becd094, 0xcea9b65f, 0x139cb8f5, 0xc1b0ecfa, 0x97137ce2, 0x982e573a, 0x93c47094
.word 0x739feda3, 0x15cd8b2f, 0xa9bc9eb5, 0x4b6236fd, 0xd6c28e20, 0x4ed79bc3, 0x51ee4ea3, 0xe806d486
.word 0x7f7bf7e0, 0xd3c24a0e, 0x21dd77ff, 0x6da76fb8, 0x6e51d369, 0x181312b0, 0x37aebbda, 0x06a96856
.word 0xf42b9f46, 0x15734550, 0x07e21d25, 0xf688b611, 0x9c7c44f3, 0x2ecf0909, 0xecabd299, 0xa18d6383
.word 0xef7ebd28, 0x6adce175, 0x61c01f23, 0xaaffdf22, 0xfc7ddd19, 0xdab7e1c3, 0xc7c1a8a7, 0x3c044375
.word 0x3a5b5b0a, 0x8411d537, 0x445f33ad, 0x89f43542, 0xef4165f1, 0x8d26918d, 0xda2600e1, 0x1bc9b0a9
.word 0xe216ee5f, 0x59060036, 0xecbd4106, 0xa09f0598, 0x6d2b1c32, 0x5a25807c, 0x3576de0e, 0xab70cb90
.word 0x711f6b23, 0x39bc80c4, 0x9f61e470, 0xf457b721, 0x486ce45e, 0x040b4f5f, 0x28081243, 0x8e26aab2
.word 0xbb6f6d3a, 0x908e4398, 0xf75f3d74, 0x26c814f1, 0x85da3d85, 0xb07ffcf1, 0x6032af9d, 0x62fa9322
.word 0xe1af93d6, 0x2b89efc0, 0x16ebbcf9, 0x759079b7, 0x32380f81, 0x5b0fbf57, 0x0c1a8d9d, 0x5b8d554d
.word 0xbca96dc5, 0xbed6dc88, 0x452a3816, 0x2e490520, 0x6b109a9a, 0xbf47a262, 0xa2ed4fe9, 0xc390c49a
.word 0x2386c183, 0x4c815acc, 0xf2d3148a, 0x8fb60d22, 0x9b0f2ada, 0xd9265afe, 0xf060e7fd, 0x39fc5f7f
.word 0x6e3f4968, 0x7646f0ec, 0x320e669d, 0x0a06b7b8, 0xa6398eda, 0xe16223e6, 0xae18b68a, 0x27d7ceb2
.word 0x396a8db4, 0x853f8eb7, 0xf4af88cc, 0xfef808d5, 0xa6e277e9, 0x8c48dbfd, 0x5d919b17, 0xcb542ccf
.word 0xd4dbed2e, 0x10164324, 0x3ee37ccd, 0x2a1ddc33, 0x73a13d6e, 0x20c61d6b, 0x2fc1b6bc, 0x97b434bc
.word 0x4243ddbe, 0x32ee1a6f, 0x2a0cd744, 0xf1b8466b, 0xa715593f, 0xfe2d09d2, 0x33d91c98, 0x63df4965
.word 0x22c9e696, 0x171034a5, 0x47605a8e, 0xc3fa9f7e, 0x4729f557, 0x4f7e785a, 0x177fef88, 0x9ab5b190
.word 0x111ae5dd, 0x4094daab, 0x2def7f38, 0x7f947950, 0x0aaf6fa6, 0x51a3bfe9, 0x6eb9cd02, 0xf329db80
.word 0x4e26c152, 0xde04314f, 0x649bac9d, 0xff51379a, 0xd1e51719, 0x4a143a23, 0x600e9687, 0xcc4bb884
.word 0xfd5c5d0c, 0x7fd4b5db, 0x1b08b525, 0x9f29b0b7, 0x8556004f, 0x507f4e58, 0x6fc0746f, 0x963e8c3e
.word 0x16c0f601, 0x88745ed0, 0x512da09f, 0x14f4c03d, 0x5c5887fd, 0x890827d0, 0x5c5643a7, 0x1d0173aa
.word 0xb03b2cff, 0xe23e795d, 0x7036bea3, 0x09d0817e, 0xe0dd406e, 0x3b0df49b, 0x42d55121, 0xff691dbd
.word 0x6ce879fc, 0x2d534ea3, 0xf92dc714, 0x5cea79e0, 0x3f7f6193, 0xe6f9164a, 0x13f6f6f8, 0xce495b02
.word 0x01d6ce50, 0x8f6f7864, 0xc55b8085, 0xe67a07c4, 0xdeddcaf7, 0xa292f7e0, 0xb4cdf1a1, 0x1af32512
.word 0xe2e4f3b3, 0x57e31e31, 0xc30188a5, 0x324b681f, 0xea02210f, 0xa0927419, 0x2991b2a4, 0xf55a4542
.word 0xe1dae257, 0x8b5347f1, 0x8aa11205, 0x32a1f99a, 0xc3b55233, 0x5840f94a, 0x312f9b1b, 0xa2250691
.word 0x77c39388, 0xe121032c, 0x3a0ac86a, 0xa9c9ce0f, 0xe97cc8a6, 0x3e11e248, 0xa848b761, 0xdcf91193
.word 0x7d8c17a9, 0xba0b7f04, 0x8c99d415, 0xe813390c, 0x9eb6097c, 0x66ddfbef, 0xfff1eb31, 0xfc9b9bc3
.word 0x9804559a, 0xd244f414, 0xd4be2fce, 0x4a6957bf, 0xea1fee47, 0xd934599c, 0xbcc00fc1, 0xc680bacb
.word 0xaa00b90d, 0x1c7fc48e, 0x1b1a2783, 0x7a428a76, 0x87586195, 0xa062e5b4, 0x53a03d70, 0x12899267
.word 0x32ad08f5, 0x1ffb48e9, 0x254405f6, 0xf51fb9f5, 0xabdc2002, 0xe28403ae, 0xfaac3094, 0x65cc26b3
.word 0x0c7a7fd3, 0x3496b99a, 0xaf0a5a38, 0x9168a384, 0x9d8af096, 0xa466d055, 0xa67dfc71, 0x7edbef8d
.word 0x906a9945, 0x77e36713, 0x384ac814, 0x2dd8cd8c, 0x4ef5a1f3, 0x0d829fb6, 0xa81cc978, 0x12e555ab
.word 0xe1ae63de, 0xadfce675, 0x3e225abf, 0x10f52208
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x11, x15, zero
                  csrr x18, 0x300 # MSTATUS
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 31
                  bne x18, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x18, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x18, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x18, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x18, x7, ecall_handler
                  li x7, 0x1
                  beq x18, x7, instr_fault_handler
                  li x7, 0x5
                  beq x18, x7, load_fault_handler
                  li x7, 0x7
                  beq x18, x7, store_fault_handler
                  li x7, 0xc
                  beq x18, x7, pt_fault_handler
                  li x7, 0xd
                  beq x18, x7, pt_fault_handler
                  li x7, 0xf
                  beq x18, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x15, x11, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
