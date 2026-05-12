.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x12, kernel_stack_end

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
                  li x0, 0x55deb24a
                  li x1, 0xb
                  li x2, 0x0
                  li x3, 0xa5ea7b6a
                  li x5, 0x0
                  li x6, 0xff071157
                  li x7, 0x80000000
                  li x8, 0xf
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0xf9860019
                  li x16, 0x0
                  li x17, 0x9
                  li x18, 0x2
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x4
                  li x22, 0x74c13710
                  li x23, 0x80000000
                  li x24, 0xc9d6ca6
                  li x25, 0xf613cb27
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x6bec25b9
                  li x31, 0x7
                  la x4, user_stack_end
main:             la           s1, sub_2
                  xori         t0, t3, 1872
                  and          a4, a2, t1
                  sltiu        gp, s1, -1994
                  slt          a5, a6, s1
                  sra          s10, zero, sp
                  addi         s1, s1, -535
                  srai         a7, s9, 19
main_j2:          jalr         ra, s1, 536 #jump main -> sub_2
                  xor          s11, a1, a5
                  sltiu        s3, s7, -1923
                  la           t5, sub_2
                  and          s2, s3, sp
                  addi         t5, t5, 686
                  sltiu        s2, s1, 226
                  sub          s1, sp, a3
                  add          a1, tp, t2
                  sltiu        sp, a6, -623
                  srl          t2, t5, s10
                  sra          s8, s11, t2
                  srli         s10, s3, 19
main_j3:          jalr         ra, t5, -686 #jump main -> sub_2
                  la           sp, region_1+1682 #start riscv_load_store_hazard_instr_stream_0
                  addi         a1, s8, 52
                  lb           t0, -3(sp)
                  lb           t2, -3(sp)
                  sltu         t6, s9, a2
                  lb           t4, -3(sp)
                  lb           t2, -3(sp)
                  andi         t1, t5, -63
                  sb           t2, -3(sp)
                  sb           a5, -3(sp)
                  lbu          t5, -3(sp)
                  lb           s2, -3(sp)
                  lbu          a1, -3(sp)
                  sb           t2, -3(sp)
                  lbu          gp, -3(sp)
                  sb           s2, -3(sp)
                  lbu          s8, -3(sp)
                  sltiu        a0, t4, -1918
                  lb           t5, -3(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s9, region_1+430 #start load_store_instr_stream_0
                  la           s1, region_1+868 #start load_store_instr_stream_4
                  la           gp, region_1+1821 #start load_store_instr_stream_1
                  sw           ra, -54(s9)
                  la           s5, region_1+987 #start load_store_instr_stream_3
                  sw           s9, 162(s9)
                  lhu          t3, -9(s5)
                  lbu          t6, -2(s5)
                  la           a6, region_1+1377 #start load_store_instr_stream_2
                  lb           sp, 6(s5)
                  lbu          t1, 52(a6)
                  sw           s5, 206(s9)
                  lb           a4, -12(s5)
                  lbu          s2, -982(gp)
                  sb           s9, -222(s1)
                  lh           zero, -102(s9)
                  lbu          t6, -67(s9)
                  lb           s7, 90(s1)
                  lb           t5, -75(s1)
                  lh           t0, -5(s5)
                  lw           s10, -1377(a6)
                  lbu          s6, -1(s5)
                  sb           a2, -350(a6)
                  sb           ra, -4(s5)
                  lw           t5, -1457(gp)
                  lw           a7, -1465(gp)
                  sb           t0, 6(s5)
                  sb           t1, 326(a6)
                  sh           a7, 136(s1)
                  lb           sp, 6(s5)
                  lb           a5, 78(a6)
                  sb           s10, 175(s1)
                  lbu          a1, 108(s9)
                  lbu          a1, -152(s9)
                  lb           a5, 80(a6)
                  lhu          s7, -104(s1)
                  sb           a1, -5(s5) #end load_store_instr_stream_3
                  lbu          s7, -955(gp)
                  lbu          s0, -1144(a6) #end load_store_instr_stream_2
                  sb           zero, 223(s1) #end load_store_instr_stream_4
                  sh           a4, -217(gp) #end load_store_instr_stream_1
                  sb           a1, -148(s9) #end load_store_instr_stream_0
                  la           t5, region_1+664 #start riscv_load_store_rand_instr_stream_0
                  sb           s1, 8(t5)
                  srl          s10, ra, t3
                  sb           s1, 1(t5)
                  sltiu        s2, t5, 1606
                  sub          ra, t5, t3
                  sra          s3, t2, a6
                  lh           a6, 0(t5)
                  slti         s0, s6, 1088
                  srl          a3, gp, s6
                  lbu          gp, 7(t5)
                  sltiu        a6, t5, -125
                  auipc        a6, 997989
                  slli         s10, s10, 31
                  sb           s9, -1(t5)
                  lb           t3, -14(t5)
                  ori          sp, s6, 1896
                  sb           t2, -16(t5)
                  sll          s11, s1, s11
                  add          s7, t3, a2
                  lbu          t0, -1(t5)
                  sltu         a6, s9, a2
                  lbu          s7, -5(t5)
                  lui          a4, 229486
                  nop
                  lbu          s6, -1(t5)
                  lui          gp, 210533
                  addi         t3, sp, -93
                  auipc        s10, 684518
                  lb           t2, -16(t5)
                  sub          t6, t2, t6
                  lb           t1, 0(t5)
                  sb           s3, -3(t5)
                  lbu          s8, 7(t5)
                  sra          s7, s9, tp
                  nop
                  xor          s7, a3, a0
                  lb           ra, -10(t5) #end riscv_load_store_rand_instr_stream_0
                  sltu         s11, t1, s10
                  ori          t4, s2, -1171
                  sltu         s10, a6, t5
                  sub          s3, t3, s1
                  slti         t4, t2, 2005
                  and          gp, s1, t1
                  addi         t1, a4, -1685
                  la           t4, sub_1
                  xori         s2, a0, 31
                  and          t2, s2, s3
                  slti         a1, t6, -1229
                  addi         t4, t4, 73
                  slti         s0, s7, -1874
                  ori          a3, a0, 653
                  sra          a6, s11, tp
                  bgeu         s10, tp, main_j1 #branch to jump instr
                  andi         a7, gp, -420
                  srai         s0, a7, 1
main_j1:          jalr         ra, t4, -72 #jump main -> sub_1
                  slli         s8, t2, 12
                  srai         sp, a0, 19
                  srl          s0, a4, t2
                  sra          t5, t3, a3
                  slt          t0, t4, a7
                  srli         t6, s7, 13
                  xori         a3, a7, 340
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            andi         s0, t3, -1620
                  slli         s3, s5, 31
                  bge          s1, t3, sub_1_stack_p
                  or           a4, s9, s11
sub_1_stack_p:    addi         tp, tp, -44
                  ori          s6, a5, 1442
                  sw           ra, 4(tp)
                  slt          s5, tp, s7
                  slti         a7, s5, 1240
                  lui          t0, 646354
                  slti         t5, sp, -1896
                  srl          a6, s8, sp
                  srai         s3, s5, 3
                  la           s2, region_0+1299 #start riscv_load_store_rand_instr_stream_0
                  sb           a1, -846(s2)
                  nop
                  or           a4, ra, t6
                  ori          t0, s9, 1003
                  andi         sp, s4, -1835
                  auipc        t4, 666786
                  xori         s11, a3, 1164
                  srl          s11, t2, s1
                  lbu          s7, 667(s2)
                  lbu          s8, -44(s2)
                  lbu          a4, -781(s2)
                  sh           t4, 269(s2)
                  xori         ra, s8, -1479
                  lbu          t1, 48(s2)
                  lbu          t5, 389(s2)
                  srl          s8, t1, ra
                  lh           ra, -489(s2)
                  lb           t0, -641(s2)
                  sh           a4, 483(s2)
                  lbu          ra, -190(s2)
                  srl          t0, s9, a0
                  srai         a5, a6, 23
                  slli         s7, sp, 16
                  lui          a4, 92419
                  addi         a0, a1, 753
                  xori         s5, s5, 522
                  lb           t3, -136(s2)
                  lui          s1, 73985
                  sltu         a0, s2, s7
                  sb           t1, 169(s2)
                  sh           t6, 69(s2)
                  add          t2, s10, s10
                  and          t6, tp, t3
                  slti         t2, s4, 847
                  lbu          s7, -814(s2)
                  ori          a1, a0, 1297
                  sh           s8, 439(s2)
                  lhu          t2, 151(s2)
                  or           a6, t6, a4
                  lbu          s10, -533(s2)
                  lw           s1, -383(s2)
                  lb           a4, 310(s2)
                  sh           s9, -949(s2)
                  lb           a3, 101(s2)
                  and          t4, gp, s3
                  lb           a5, 278(s2)
                  auipc        t2, 441427
                  lh           ra, -1123(s2)
                  lb           s3, 464(s2)
                  sll          t3, s11, a4
                  lui          s11, 820399
                  auipc        a3, 217849
                  lb           s9, 181(s2)
                  lbu          t1, -554(s2)
                  srli         s8, a6, 7
                  sb           t3, 110(s2) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+836 #start load_store_instr_stream_3
                  la           t5, region_1+551 #start load_store_instr_stream_2
                  la           t2, region_1+1717 #start load_store_instr_stream_0
                  lb           s0, -4(t5)
                  la           t3, region_1+1839 #start load_store_instr_stream_4
                  lb           s5, -456(t2)
                  lhu          a6, -655(t2)
                  lh           s11, 38(sp)
                  sb           a6, -183(sp)
                  lb           s0, 52(t5)
                  la           s1, region_1+1861 #start load_store_instr_stream_1
                  lbu          t6, -23(s1)
                  lbu          s0, 8(s1)
                  lb           gp, -113(sp)
                  lh           s5, -11(t5)
                  sb           a3, -902(t2)
                  lhu          t6, -64(sp)
                  lbu          t6, -58(sp)
                  sw           s8, -51(t5)
                  sb           s6, -6(t5)
                  lhu          s3, -1821(t3)
                  sb           t6, 193(sp)
                  sb           t6, 34(s1)
                  lbu          a4, -18(s1)
                  sh           s3, -639(t2)
                  sb           t4, -22(t5)
                  lh           t6, -211(t3)
                  lbu          a1, -3(t5)
                  sb           t3, -402(t3)
                  lh           t1, -7(s1)
                  lhu          t4, -1351(t2)
                  lb           a4, 201(sp)
                  lb           s9, 52(t5)
                  lw           s9, 236(sp)
                  lhu          zero, -63(s1)
                  lbu          t1, -41(s1)
                  sh           t0, -801(t3)
                  lhu          a7, -485(t3)
                  sb           a3, 56(t5) #end load_store_instr_stream_2
                  sb           a4, -894(t2)
                  lhu          ra, 63(t3)
                  sb           s6, 26(s1)
                  lbu          a6, -128(sp) #end load_store_instr_stream_3
                  sh           s9, -591(t3)
                  sb           t3, -1133(t2)
                  lbu          s8, -1782(t3)
                  sb           s2, 11(s1)
                  lb           s2, 6(s1) #end load_store_instr_stream_1
                  sb           s1, -375(t3)
                  lb           gp, -1663(t2)
                  lb           a4, -892(t3) #end load_store_instr_stream_4
                  lbu          gp, -520(t2) #end load_store_instr_stream_0
                  beq          zero, t0, 2f
                  or           s5, a1, a1
2:                srai         s2, s2, 24
                  and          s1, a5, s11
                  blt          s10, a0, 23f
                  nop
                  nop
                  lui          t0, 1006604
                  sll          sp, s7, s6
                  and          s5, ra, t0
                  srl          gp, t5, s3
                  sra          s5, s1, s10
                  bgeu         a4, a1, 26f
                  sub          t1, a6, s0
                  and          s1, t4, s9
                  blt          t5, s6, 21f
                  sub          s2, a6, s4
                  slt          t2, tp, s7
                  add          s2, a0, a3
                  sll          sp, s1, a2
                  bltu         s8, s1, 22f
21:               slli         sp, t6, 25
22:               slti         s8, a0, 466
23:               sll          s2, sp, t3
                  slt          a5, s10, t2
                  nop
26:               slt          a5, t2, a7
                  bgeu         a1, a5, 40f
                  slli         zero, gp, 29
                  and          a1, s5, s2
                  lui          t0, 14145
                  and          s11, s4, s10
                  sll          s6, zero, s8
                  xori         s1, s2, -2005
                  srai         s8, gp, 20
                  add          sp, a4, zero
                  andi         t3, s4, 200
                  bne          s5, a0, 46f
                  and          a4, s3, a5
                  bne          s4, t2, 42f
40:               sll          t4, s8, a4
                  auipc        a1, 147467
42:               ori          a5, s7, -44
                  sltiu        gp, gp, -930
                  add          zero, t2, zero
                  slli         t3, s8, 31
46:               srli         a5, a2, 12
                  slt          t5, s11, a7
                  sub          t3, a7, t2
                  xori         zero, t1, 1107
                  bge          a3, s2, 60f
                  bltu         a4, s4, 70f
                  srai         t3, a6, 8
                  slt          s3, t0, zero
                  srai         t4, s6, 3
                  bge          s7, s11, 70f
                  bltu         s0, a0, 58f
                  lui          a3, 433085
58:               sub          t1, t0, a0
                  or           a0, a5, t2
60:               addi         t3, t4, 660
                  add          a4, t3, s5
                  slt          a7, s1, s1
                  slli         s7, s11, 22
                  sltu         a3, s4, s10
                  sll          s3, a1, a5
                  and          a4, s2, a0
                  sub          s10, a6, s10
                  srl          t1, a5, t5
                  bltu         a2, s7, 87f
70:               add          s11, a4, s7
                  sltiu        a1, t2, -678
                  srai         s9, s0, 30
                  sra          a1, s4, s0
                  srli         a5, s4, 4
                  andi         s9, t0, -981
                  bne          a7, s7, 85f
                  srai         a6, gp, 11
                  xori         t5, zero, 65
                  blt          s11, t6, 85f
                  srl          t1, t1, s0
                  ori          ra, s2, 616
                  ori          s9, t3, -340
                  andi         s11, s4, -47
                  and          s6, s9, a0
85:               sll          t1, s2, t3
                  andi         t6, tp, -105
87:               bltu         ra, a6, 102f
                  lui          s0, 869422
                  blt          a2, s5, 100f
                  andi         a1, s10, -1509
                  add          gp, s6, s5
                  bge          t0, s10, 98f
                  lui          gp, 150145
                  xori         t4, s0, 1434
                  sltiu        t0, a1, 452
                  sltu         t5, t2, t2
                  sra          s0, s0, s6
                  la           sp, region_0+484 #start riscv_load_store_hazard_instr_stream_0
                  sb           s1, 915(sp)
                  lb           a0, 915(sp)
                  lb           a6, 915(sp)
                  sltiu        s7, a3, 1132
                  addi         s7, s11, 632
                  lw           t6, 92(sp)
                  sb           s11, 92(sp)
                  sb           a0, 92(sp)
                  srli         t2, a3, 18
                  lb           s5, 1221(sp)
                  slti         t1, s2, -2048
                  sltiu        t2, tp, -1580
                  lb           t2, 1221(sp)
                  sb           t0, 1221(sp)
                  lb           ra, 1302(sp)
                  lb           t2, 373(sp)
                  lh           t2, 984(sp)
                  lb           s10, 1353(sp) #end riscv_load_store_hazard_instr_stream_0
98:               bge          sp, tp, 108f
                  sub          t2, tp, s0
100:              ori          t2, a6, -1049
                  auipc        s7, 853198
102:              srai         a6, a3, 23
                  nop
                  sub          t5, t0, t4
                  ori          t4, a5, 1189
                  nop
                  sll          s8, s10, a7
108:              bltu         a4, s9, 112f
                  and          s11, s1, s5
                  srl          t2, s1, a0
                  slti         t6, s9, 1987
112:              xor          gp, s8, t1
                  lw           ra, 4(tp)
                  sltiu        s0, gp, 1333
                  addi         tp, tp, 44
                  addi         s9, s6, -27
                  xori         a7, zero, 1345
                  xori         a6, s9, 32
260:              addi x9, x1, 0
260:              jalr x9, x9, 0
sub_2:            addi         tp, tp, -56
                  sw           ra, 4(tp)
                  nop
                  addi         s9, a1, -344
                  sra          s5, a6, a7
                  srl          gp, s8, s7
                  la           a3, region_1+320 #start riscv_load_store_hazard_instr_stream_3
                  sb           s8, 635(a3)
                  lbu          a5, 1451(a3)
                  sb           s4, 1503(a3)
                  sb           s6, 482(a3)
                  lb           s5, 197(a3)
                  sb           t0, 197(a3)
                  lb           s1, -158(a3)
                  lhu          a1, -158(a3)
                  slt          t5, s10, t4
                  sb           t0, -158(a3)
                  srli         a1, a0, 21
                  lh           s2, -158(a3)
                  lui          a1, 423488
                  add          ra, s6, a2
                  slli         s8, a1, 20
                  sb           s2, 356(a3)
                  andi         t3, tp, -1641
                  lb           s6, 356(a3)
                  sb           ra, 356(a3) #end riscv_load_store_hazard_instr_stream_3
                  la           a6, region_0+998 #start load_store_instr_stream_1
                  lhu          gp, 352(a6)
                  la           a3, region_0+184 #start load_store_instr_stream_0
                  lb           t0, 859(a3)
                  lb           a7, 677(a6)
                  sb           s1, -121(a6)
                  lbu          sp, 539(a3)
                  sh           s5, -236(a6)
                  lb           t3, 1289(a3)
                  lb           s10, -315(a6)
                  lb           a7, -949(a6) #end load_store_instr_stream_1
                  lbu          a0, 427(a3)
                  lw           gp, 532(a3) #end load_store_instr_stream_0
                  la           s7, region_0+1956 #start load_store_instr_stream_1
                  lw           s10, -248(s7)
                  la           a0, region_0+308 #start load_store_instr_stream_0
                  sb           a7, -117(s7)
                  sb           s1, 933(a0)
                  lb           s9, 14(s7)
                  lbu          s11, -153(s7)
                  lw           t1, -216(a0)
                  sb           a0, 177(a0)
                  sb           gp, -69(s7)
                  sb           zero, -33(s7)
                  lbu          s3, -87(s7)
                  lbu          s3, 15(s7)
                  lh           s8, -62(a0)
                  lw           t6, 8(s7)
                  lb           gp, -229(s7) #end load_store_instr_stream_1
                  lhu          a5, 1686(a0) #end load_store_instr_stream_0
                  la           s2, region_1+439 #start riscv_load_store_rand_instr_stream_1
                  slti         a6, a4, -1942
                  sb           tp, 134(s2)
                  lb           s3, -232(s2)
                  lb           t3, -96(s2)
                  sh           t1, 81(s2)
                  sw           s3, 13(s2)
                  lb           s8, -213(s2)
                  sb           a6, -226(s2)
                  lbu          a0, -53(s2)
                  lh           zero, 55(s2)
                  sh           t6, -123(s2)
                  lh           s11, 181(s2)
                  sb           s7, 172(s2)
                  sb           s10, 152(s2)
                  srai         a1, s8, 21
                  sra          a4, t2, s1
                  lb           t2, 20(s2)
                  sltiu        s3, s3, -1566
                  sb           t6, -12(s2)
                  sra          s8, s11, t0
                  sb           s6, 229(s2)
                  lw           s8, 89(s2)
                  sb           a0, 22(s2)
                  xori         t6, s4, -444
                  sb           t2, -203(s2)
                  lb           s6, -194(s2)
                  lbu          a1, 254(s2)
                  lb           zero, 203(s2)
                  lbu          t2, -180(s2)
                  lb           t0, 200(s2)
                  lbu          s1, -254(s2)
                  lbu          s1, -160(s2)
                  lb           s8, 117(s2)
                  lbu          gp, 211(s2)
                  sll          s8, s8, t3
                  add          t5, a6, a1
                  xori         t0, a4, 918
                  sb           s0, 19(s2)
                  add          t5, s6, a7
                  sb           s7, 146(s2) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_0+1631 #start riscv_load_store_hazard_instr_stream_7
                  sub          s10, a0, ra
                  lh           t1, 15(a3)
                  lhu          t5, 15(a3)
                  sb           s7, 15(a3)
                  sw           a0, 9(a3)
                  sh           a3, 9(a3)
                  lbu          s7, 33(a3)
                  sw           s2, 33(a3)
                  slli         a1, t5, 8
                  lb           s7, 33(a3)
                  lbu          gp, 52(a3)
                  sb           sp, 52(a3)
                  lb           t5, 52(a3)
                  sh           a4, -35(a3)
                  lb           t0, -42(a3)
                  xor          t6, tp, t4
                  srl          s10, t6, t0
                  lb           s9, 2(a3)
                  lui          s8, 943799
                  sb           s10, 2(a3)
                  sra          s10, s8, s6
                  ori          t2, sp, -1451
                  lb           s0, 2(a3)
                  lb           t4, -4(a3)
                  sb           s3, -4(a3)
                  sb           t0, -4(a3) #end riscv_load_store_hazard_instr_stream_7
                  la           s9, region_1+1565 #start load_store_instr_stream_4
                  la           gp, region_1+1026 #start load_store_instr_stream_3
                  lb           a4, 3(gp)
                  la           a7, region_1+1634 #start load_store_instr_stream_2
                  la           s8, region_1+28 #start load_store_instr_stream_1
                  lh           zero, 64(s8)
                  lbu          t6, -31(gp)
                  la           a0, region_1+741 #start load_store_instr_stream_0
                  lb           t2, 7(s8)
                  lb           t5, -8(s9)
                  lb           ra, 62(a0)
                  sb           tp, -841(a7)
                  sb           gp, 63(gp)
                  lhu          t1, 246(s8)
                  sw           t0, -906(a7)
                  lb           s7, -134(gp)
                  lh           a6, -55(a0)
                  sh           a2, -558(a7)
                  lbu          t3, -26(a0)
                  sb           s1, -1211(a7)
                  lb           s5, 35(s8)
                  sb           s2, -101(a7)
                  lhu          s6, 142(s8)
                  lbu          zero, 168(s8)
                  lh           s1, 200(gp)
                  lbu          s5, 65(a7)
                  lw           t5, 43(a0)
                  lbu          s2, 173(s8)
                  lbu          a4, 8(s9)
                  lw           s7, -418(a7)
                  lbu          ra, -1327(a7)
                  lw           ra, 15(s9)
                  lb           a1, 15(s9)
                  lbu          s6, -33(a0)
                  lh           a6, 9(s9) #end load_store_instr_stream_4
                  lb           t4, 94(s8)
                  lb           s11, -31(gp) #end load_store_instr_stream_3
                  lh           t0, -784(a7) #end load_store_instr_stream_2
                  sh           s3, 40(s8) #end load_store_instr_stream_1
                  sb           t2, 35(a0) #end load_store_instr_stream_0
                  la           sp, region_1+1157 #start riscv_load_store_rand_instr_stream_2
                  add          zero, s7, a7
                  lbu          a5, 18(sp)
                  sll          t6, s5, t4
                  lb           t5, 26(sp)
                  ori          zero, t5, 851
                  slli         t1, a1, 10
                  srli         t2, a4, 7
                  ori          t0, t0, -2008
                  sb           sp, -63(sp)
                  sb           a7, 9(sp)
                  nop
                  sra          s1, t0, s2
                  lh           s5, 29(sp)
                  srl          s7, a2, s4
                  andi         t3, s10, -975
                  sll          a0, s11, s3
                  srl          s10, s10, t2
                  sll          t4, s2, s7
                  ori          s8, s9, -1846
                  lb           a3, -53(sp)
                  lb           t5, -4(sp)
                  andi         a7, s2, 60
                  sltu         s8, a6, sp
                  slt          s11, t1, t6
                  lh           gp, -5(sp)
                  lbu          a6, -4(sp)
                  slli         a1, s7, 8
                  lbu          zero, -47(sp)
                  sb           a0, 16(sp)
                  slli         s6, t3, 9
                  and          t6, s3, ra
                  lb           s0, 61(sp)
                  add          a7, a0, s1
                  or           t6, a6, s9
                  lb           zero, -12(sp)
                  lh           s8, 43(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+267 #start riscv_load_store_rand_instr_stream_5
                  srli         s2, s1, 0
                  sltiu        sp, t3, -1327
                  lbu          s2, 468(a3)
                  lh           a6, 583(a3)
                  add          a0, t5, s10
                  sw           ra, 65(a3)
                  srl          s7, t5, a7
                  nop
                  lw           a0, 297(a3)
                  slli         a6, a2, 11
                  lbu          s11, 1239(a3)
                  or           t3, s3, t2
                  sw           a4, 1073(a3)
                  sub          t5, a2, s11
                  lb           s2, 1148(a3)
                  slt          s10, a3, a4
                  sub          t6, t1, s7
                  sb           a0, 1050(a3)
                  auipc        a7, 204797
                  xor          s1, gp, s5
                  sra          a4, t5, s2
                  sub          s10, a4, t2
                  or           s11, t6, a6
                  lb           s0, 1206(a3)
                  xori         s9, t6, -266
                  srli         t3, t2, 30
                  lb           s0, 945(a3)
                  lb           s6, 1586(a3)
                  lui          zero, 360467
                  slti         s9, s2, 295
                  add          a6, t6, s5
                  sb           s6, 635(a3)
                  lbu          s6, 830(a3) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1864 #start riscv_load_store_hazard_instr_stream_1
                  lh           t1, -238(sp)
                  sll          s7, s3, s4
                  or           s0, t3, s2
                  lhu          a1, -238(sp)
                  ori          s7, s1, 1177
                  lh           t5, -62(sp)
                  nop
                  sb           a6, -223(sp)
                  sb           t6, -223(sp)
                  sb           t3, -223(sp)
                  sb           a3, -223(sp)
                  sb           t5, -55(sp)
                  lb           t4, -55(sp)
                  xori         a6, s9, 1268
                  lb           s0, 78(sp)
                  sw           a6, 60(sp)
                  lbu          a3, 60(sp)
                  ori          t1, s9, 477
                  sub          s10, s5, a3
                  lb           s11, 60(sp)
                  lb           a1, -87(sp)
                  lb           a0, -171(sp)
                  lhu          a3, -188(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t2, region_1+1041 #start load_store_instr_stream_1
                  sb           t0, 12(t2)
                  la           a0, region_1+1179 #start load_store_instr_stream_2
                  la           gp, region_1+1548 #start load_store_instr_stream_0
                  lbu          s3, -110(a0)
                  sh           s10, -39(t2)
                  sb           s0, 6(t2)
                  sb           s8, -39(gp)
                  sh           t2, 61(t2)
                  lbu          a6, 66(a0)
                  lbu          a6, 636(a0)
                  lh           s11, -17(t2)
                  lbu          s10, 3(gp)
                  lbu          s3, 41(gp)
                  sb           tp, 19(t2)
                  lbu          s6, 28(t2)
                  lb           t6, 185(a0)
                  lhu          s9, -6(gp)
                  sb           t0, -550(a0)
                  lbu          a1, 48(t2)
                  lbu          t0, 238(a0) #end load_store_instr_stream_2
                  lhu          s3, 21(t2) #end load_store_instr_stream_1
                  lw           a7, -64(gp) #end load_store_instr_stream_0
                  la           a5, region_0+1791 #start riscv_load_store_rand_instr_stream_0
                  sll          s6, sp, a6
                  auipc        t3, 917423
                  lb           t0, 2(a5)
                  lbu          s6, 14(a5)
                  ori          s2, s6, 1625
                  sub          gp, a0, a6
                  srl          s8, a1, t1
                  lh           t6, -15(a5)
                  srli         s0, s6, 6
                  srli         t6, s9, 18
                  xori         s11, a0, -693
                  sb           a4, 12(a5)
                  ori          t0, a3, -722
                  nop
                  xori         t6, a3, -1009
                  srli         a3, s6, 30
                  sub          t4, s2, sp
                  addi         a3, t4, 1483
                  xori         ra, s3, -1640
                  addi         sp, s5, 585
                  auipc        s10, 458649
                  sll          s9, t6, a1
                  add          s1, zero, s6
                  srl          t0, s5, a0
                  or           t1, a6, s10
                  xor          a7, a1, a0
                  sb           s10, 3(a5)
                  sll          zero, s11, a7
                  lb           s10, -2(a5)
                  xori         t2, s3, -1138
                  xori         a1, gp, 373
                  srl          t5, a3, a2
                  lb           s2, -14(a5)
                  and          a6, t3, t6
                  lbu          a7, -9(a5)
                  ori          t4, sp, 190
                  lhu          t2, 15(a5)
                  add          s2, s5, s4
                  auipc        s1, 605535
                  lbu          a0, 15(a5) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+1235 #start load_store_instr_stream_0
                  la           s1, region_0+949 #start load_store_instr_stream_1
                  sw           a6, 875(s1)
                  sw           s8, -115(s11)
                  sb           t0, -791(s1)
                  lbu          a4, -42(s11)
                  lw           t5, 73(s11)
                  sh           tp, -933(s1)
                  sb           t0, 64(s11)
                  sb           s1, 48(s11)
                  sb           s6, 234(s11)
                  lhu          s3, 5(s1)
                  lbu          t1, -108(s1)
                  sb           s10, 223(s11)
                  sh           a2, 171(s1) #end load_store_instr_stream_1
                  sb           s9, -190(s11)
                  lb           t5, -60(s11) #end load_store_instr_stream_0
                  la           t6, region_0+1994 #start load_store_instr_stream_0
                  lb           s9, -15(t6)
                  la           s2, region_0+1494 #start load_store_instr_stream_1
                  la           s3, region_0+452 #start load_store_instr_stream_3
                  lw           t3, 0(s3)
                  lbu          sp, -5(s2)
                  lbu          a1, -10(s3)
                  la           a3, region_0+511 #start load_store_instr_stream_2
                  lb           s10, -1(s3)
                  lb           zero, 15(s3)
                  lh           t5, 14(s3)
                  lh           a4, -12(t6)
                  lb           gp, 0(s3)
                  lb           s7, 8(a3)
                  sb           a7, -4(t6)
                  lbu          a6, -5(s2)
                  lh           a6, 4(s2)
                  lbu          s8, -14(a3)
                  lb           t2, 0(t6)
                  lb           t0, -6(a3)
                  lbu          a6, -13(s2)
                  lbu          s5, -15(s3)
                  lbu          a5, -13(t6)
                  lb           s5, 1(s3)
                  lbu          sp, -5(a3)
                  lbu          s8, 11(s2)
                  lb           t3, 3(s2)
                  lbu          t2, -8(t6)
                  lh           s0, 16(s3)
                  sb           zero, -11(s2) #end load_store_instr_stream_1
                  lb           s8, -14(a3)
                  sb           t1, 9(a3)
                  sh           t6, 3(a3) #end load_store_instr_stream_2
                  sb           s8, 15(s3) #end load_store_instr_stream_3
                  sb           sp, -6(t6) #end load_store_instr_stream_0
                  la           s9, region_0+753 #start riscv_load_store_rand_instr_stream_7
                  lbu          zero, -12(s9)
                  sb           zero, -12(s9)
                  sb           a2, -11(s9)
                  lb           a6, 4(s9)
                  lb           a3, -6(s9)
                  addi         s2, a3, -1801
                  lb           t3, -13(s9)
                  lb           a4, -3(s9)
                  xori         t1, t0, 817
                  sb           s10, -13(s9)
                  lw           zero, -5(s9)
                  lb           sp, 16(s9)
                  sltiu        s8, s3, 1360
                  sb           t1, 4(s9)
                  lb           a4, 16(s9)
                  lh           s5, -13(s9)
                  sb           a5, 15(s9)
                  lui          a0, 479592
                  lbu          ra, -5(s9)
                  sw           t1, -1(s9)
                  lh           s10, 15(s9)
                  lh           s11, 11(s9)
                  xor          s0, s9, a6
                  sb           a6, 14(s9)
                  lui          a6, 135563
                  slli         gp, t2, 8
                  and          t3, gp, a4
                  slli         t2, ra, 14
                  sw           zero, -1(s9)
                  sub          s8, t0, a6
                  lhu          a7, 7(s9)
                  lb           s0, -12(s9)
                  lh           s5, -7(s9) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1978 #start riscv_load_store_hazard_instr_stream_2
                  sb           s6, 10(sp)
                  sb           s11, 10(sp)
                  sh           t6, 10(sp)
                  lbu          s7, -165(sp)
                  lbu          s9, -165(sp)
                  lbu          t3, -165(sp)
                  lbu          s10, -165(sp)
                  lb           a7, -165(sp)
                  lb           a6, -165(sp)
                  lb           a1, -165(sp)
                  lb           a4, -165(sp)
                  sb           a5, -207(sp)
                  sb           t1, -207(sp)
                  nop
                  lbu          t6, -207(sp)
                  lb           t2, -207(sp)
                  lbu          t4, -207(sp)
                  lbu          a6, -207(sp)
                  sb           t6, -207(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a0, region_1+80 #start riscv_load_store_hazard_instr_stream_5
                  sw           s5, 244(a0)
                  slti         s10, t2, 955
                  sh           ra, 78(a0)
                  sltu         s2, a2, t5
                  sltu         t6, t2, s8
                  sh           gp, 146(a0)
                  sw           sp, -24(a0)
                  lh           sp, -24(a0)
                  lbu          s8, 55(a0)
                  xor          s5, s1, s1
                  and          a7, a6, t5
                  srli         t3, gp, 23
                  lb           s7, -24(a0)
                  add          a4, a3, s10
                  lbu          s0, -19(a0)
                  lb           a5, 102(a0)
                  lbu          s11, -5(a0) #end riscv_load_store_hazard_instr_stream_5
                  la           t4, region_1+1049 #start riscv_load_store_hazard_instr_stream_0
                  sb           s1, -866(t4)
                  sb           a7, -866(t4)
                  slt          a5, s4, s6
                  sb           t5, 90(t4)
                  lb           t5, 134(t4)
                  lh           a1, 623(t4)
                  lh           a6, 623(t4)
                  lb           s3, 623(t4)
                  sltiu        t2, s3, 667
                  sw           a1, 623(t4)
                  sh           t3, 573(t4)
                  lbu          s7, 573(t4)
                  lbu          t1, -838(t4)
                  lbu          a0, 656(t4)
                  sb           s2, 218(t4)
                  lbu          a6, -1018(t4) #end riscv_load_store_hazard_instr_stream_0
                  la           a4, region_1+1495 #start riscv_load_store_rand_instr_stream_4
                  sb           t0, 9(a4)
                  xor          t4, a1, gp
                  lbu          sp, -6(a4)
                  andi         s11, sp, 356
                  lbu          a6, -10(a4)
                  lb           s11, -4(a4)
                  or           t6, tp, t1
                  srli         a5, sp, 23
                  lb           s10, 13(a4)
                  lh           a6, -3(a4)
                  srai         a3, s7, 26
                  srai         s3, a3, 30
                  slt          a1, a6, s0
                  sw           ra, -15(a4)
                  slt          s3, a3, a1
                  sltiu        t0, zero, 1609
                  sra          s10, a1, s7
                  sra          s10, s6, t2
                  sltiu        s5, s5, -442
                  ori          zero, ra, 36
                  lb           s8, 8(a4)
                  ori          t5, s2, 404
                  sltu         s11, t3, a1
                  andi         a5, t2, 346
                  slli         ra, t4, 7
                  sra          a0, a0, s0
                  sw           s4, 13(a4)
                  lui          s6, 275565
                  ori          s8, s8, -1071
                  lb           a5, 12(a4)
                  ori          s6, s4, -1112
                  sra          s9, a5, tp
                  andi         s7, ra, -1861
                  xor          a3, s0, s0
                  auipc        t3, 1042308
                  sb           s10, 7(a4)
                  sb           s7, 7(a4)
                  sb           s6, -12(a4) #end riscv_load_store_rand_instr_stream_4
                  la           s1, region_0+1284 #start riscv_load_store_rand_instr_stream_6
                  nop
                  ori          a7, a2, -1351
                  sb           s1, -17(s1)
                  lbu          t1, 49(s1)
                  lbu          t4, 17(s1)
                  auipc        t2, 903326
                  srai         a4, a7, 26
                  andi         ra, s8, -354
                  lb           s3, 34(s1)
                  nop
                  auipc        zero, 999486
                  sb           t4, -3(s1)
                  lhu          s3, 64(s1)
                  srai         t1, sp, 28
                  addi         sp, s11, -26
                  lb           a1, 43(s1)
                  auipc        a5, 838040
                  srli         s10, s10, 12
                  sub          zero, s11, s3
                  lb           zero, 45(s1)
                  slti         a0, s9, 186
                  srai         a6, s9, 13
                  lbu          s3, -8(s1)
                  sltu         a7, tp, a7
                  lhu          a0, -58(s1)
                  nop
                  and          t3, s3, a2
                  sltu         t4, a5, a7
                  sb           s7, 33(s1)
                  lbu          t5, 31(s1)
                  or           a7, a6, a1
                  lb           s3, 37(s1)
                  sra          s10, t0, s2
                  andi         s8, a4, 1434
                  lui          a7, 250111
                  srl          s0, t3, a0
                  lhu          t2, 20(s1)
                  sb           t0, -16(s1)
                  sltiu        a1, s10, 889
                  sb           s2, 44(s1)
                  lb           a6, -39(s1)
                  lw           t1, 60(s1)
                  addi         s0, a6, -1834
                  sb           t0, 20(s1)
                  sb           t1, 25(s1)
                  sw           sp, -56(s1)
                  slti         a4, t4, -1064
                  sb           a1, -11(s1)
                  auipc        a7, 255202
                  lbu          a5, 51(s1)
                  lbu          t3, 32(s1) #end riscv_load_store_rand_instr_stream_6
                  slt          t1, s2, s8
                  blt          a6, t6, 7f
                  sll          a7, t6, s8
                  la           t4, region_0+1150 #start load_store_instr_stream_1
                  la           t0, region_0+113 #start load_store_instr_stream_0
                  lhu          a5, 4(t4)
                  lbu          a4, 515(t0)
                  lb           gp, -2(t4)
                  lb           t6, 12(t4)
                  lb           t1, 213(t0)
                  lbu          gp, 194(t0)
                  lbu          a7, 6(t4)
                  lbu          a1, 392(t0)
                  lhu          a6, 6(t4)
                  sb           s2, 1461(t0)
                  sb           t0, 10(t4)
                  sh           zero, -79(t0)
                  sb           t2, 2(t4)
                  sb           t6, 8(t4) #end load_store_instr_stream_1
                  lb           s10, 782(t0) #end load_store_instr_stream_0
                  sub          zero, tp, s1
                  andi         gp, zero, 219
                  sll          a7, ra, s9
                  ori          s9, t3, 824
7:                or           a7, s1, sp
                  andi         t1, s7, 1813
                  nop
                  sll          s2, tp, t6
                  bne          a1, t2, 16f
                  beq          s0, a0, 29f
                  blt          t1, s9, 23f
                  srli         t2, s4, 27
                  bne          t6, s0, 28f
16:               and          t6, t6, a6
                  slt          ra, t5, a7
                  nop
                  bltu         s0, s3, 26f
                  slti         s1, s0, 1141
                  sra          s2, t2, s10
                  sra          s10, a2, s8
23:               beq          s7, s11, 38f
                  srli         zero, s0, 22
                  blt          a1, t0, 31f
26:               auipc        s10, 399430
                  and          ra, tp, t3
28:               srai         a6, a5, 18
29:               sra          gp, a2, a6
                  andi         a0, sp, -899
31:               nop
                  sub          a0, gp, a5
                  blt          t4, a4, 35f
                  addi         a0, zero, 1751
35:               sub          zero, a6, t3
                  andi         zero, s2, -134
                  or           s9, zero, ra
38:               andi         s2, a5, 177
                  beq          s2, t4, 50f
                  and          s1, a2, s4
                  srai         s10, s1, 21
                  xori         s1, zero, -1093
                  auipc        s9, 447705
                  add          a6, t5, s1
                  beq          s11, t4, 49f
                  slli         a4, a2, 29
                  beq          t0, gp, 62f
                  andi         t4, sp, 1145
49:               or           t5, s5, t4
50:               xori         a4, a3, -1384
                  or           t4, t5, s9
                  slti         s10, s1, 744
                  auipc        s5, 522918
                  bgeu         t4, s6, 71f
                  slt          s5, ra, s4
                  andi         s5, a7, -1374
                  slli         a6, t1, 10
                  lui          a5, 830470
                  sll          t3, ra, a5
                  sra          s8, a4, a3
                  andi         a7, s6, 1586
62:               and          s11, t5, t5
                  bltu         t6, t4, 81f
                  and          s9, a3, a0
                  or           s10, s2, t2
                  bgeu         s5, t5, 83f
                  srl          ra, s0, s3
                  slti         s11, ra, 1523
                  xori         t6, s11, -770
                  slli         s11, ra, 7
71:               sra          t2, a5, tp
                  sub          zero, t0, a5
                  sltu         s1, a2, s0
                  xori         zero, t6, -984
                  sub          a0, s2, s4
                  slti         a3, s7, 272
                  srai         t5, s6, 22
                  bne          t4, a7, 90f
                  andi         a4, a5, 1565
                  and          s0, gp, s11
81:               xor          s9, a0, t0
                  lui          s6, 208553
83:               nop
                  slti         ra, s4, -564
                  andi         zero, s2, -479
                  or           s0, a5, s6
                  bge          a4, t2, 107f
                  slt          ra, s10, tp
                  blt          t1, a3, 102f
90:               bltu         s7, s4, 103f
                  add          ra, zero, s7
                  sra          gp, s3, t1
                  blt          a2, a5, 105f
                  xor          t4, s8, a4
                  bge          s1, a7, 107f
                  srli         s1, t1, 19
                  slli         s8, s3, 19
                  xor          sp, t4, t2
                  slti         a1, a1, -953
                  add          t2, gp, t3
                  ori          s3, s7, 678
102:              and          zero, s5, sp
103:              xor          gp, s2, t5
                  bltu         zero, gp, 109f
105:              slt          ra, s0, s11
                  slt          a3, t2, a0
                  la           s1, region_0+245 #start riscv_load_store_rand_instr_stream_3
                  slli         ra, t6, 14
                  nop
                  lw           t2, 11(s1)
                  lb           sp, 5(s1)
                  and          t3, ra, a6
                  sltu         t2, ra, a3
                  sb           a0, 0(s1)
                  lbu          t3, 11(s1)
                  slli         a0, zero, 10
                  addi         t5, tp, -1940
                  auipc        s8, 30605
                  lhu          a1, -13(s1)
                  sb           t4, 7(s1)
                  lb           s6, -11(s1)
                  slti         zero, a2, 1840
                  slti         t5, a4, 572
                  srai         s9, t4, 9
                  slli         t6, s1, 10
                  lb           t5, 14(s1)
                  slli         t6, t5, 1
                  srl          s5, t6, s3
                  lbu          s2, 13(s1)
                  srai         t6, t5, 3
                  srl          s0, a0, t4
                  add          t5, a7, s5
                  slli         s9, s9, 3
                  sb           a4, 6(s1)
                  lbu          s3, 10(s1)
                  addi         s6, t2, 20
                  lb           a0, -12(s1) #end riscv_load_store_rand_instr_stream_3
107:              xor          t2, s3, t5
                  srli         s9, s8, 23
109:              lui          ra, 657055
                  andi         s10, a4, -1958
                  andi         s10, s10, 727
                  add          s3, s10, a4
                  srl          s0, s7, s11
                  add          t3, a3, s0
                  xor          t1, a6, gp
                  bltu         a2, sp, 135f
                  or           t5, t0, a1
                  slli         s11, t3, 30
                  lui          t5, 1006980
                  slli         t3, s10, 0
                  andi         t3, t2, 1484
                  nop
                  srli         s6, gp, 2
                  lui          a4, 311334
                  srli         s8, ra, 1
                  blt          t1, tp, 144f
                  ori          a6, ra, 1166
                  beq          s0, s1, 133f
                  auipc        t6, 483628
                  or           s3, a0, s3
                  add          a5, t3, a7
                  lui          t4, 34825
133:              bne          t0, a5, 138f
                  ori          s2, a5, 1367
135:              slt          a3, t1, s1
                  bge          s7, t4, 148f
                  beq          s8, ra, 150f
138:              sltu         t2, s3, tp
                  andi         ra, a6, 1784
                  and          a7, s11, tp
                  xori         a1, gp, -104
                  bge          s0, t4, 154f
                  xor          gp, gp, t5
144:              sub          s9, s6, s0
                  xori         s9, a1, -280
                  slli         t1, ra, 13
                  slli         s6, t3, 5
148:              or           t5, a4, ra
                  andi         s2, t3, 901
150:              xor          t4, a7, a6
                  sra          zero, a5, a3
                  ori          s8, a4, -2026
                  slti         s7, t2, -1484
154:              srl          t5, t6, a3
                  slli         zero, t0, 22
                  bge          a5, t0, 168f
                  srli         s10, ra, 9
                  sub          t3, t0, t4
                  add          t0, a5, a7
                  slli         t6, s6, 21
                  srai         s5, s10, 3
                  sra          t0, s4, t5
                  sra          s9, t2, s6
                  add          sp, t1, s10
                  srai         s0, a2, 18
                  sub          s10, s11, s10
                  and          s10, a4, s6
168:              or           gp, a1, s4
                  nop
                  xor          s10, a0, s5
                  add          t3, a1, a1
                  srl          s0, s7, tp
                  srl          gp, a3, s9
                  bne          tp, t4, 192f
                  ori          t4, s3, 1591
                  sltu         a6, t2, s10
                  srli         s0, gp, 26
                  lui          s11, 307303
                  sll          a4, tp, t1
                  sltu         s1, t0, a1
                  and          t3, t1, s1
                  srli         sp, t1, 20
                  and          s1, sp, zero
                  addi         t2, t6, 198
                  srli         t1, t3, 2
                  slti         s0, t2, 61
                  srl          t2, s9, t5
                  nop
                  bltu         s9, s4, 194f
                  ori          t6, ra, 784
                  sltiu        t5, a2, -1261
192:              andi         s0, s6, 381
                  sll          t5, s7, s9
194:              srl          t6, a3, s3
                  slt          s9, a0, a2
                  sltu         t1, tp, a0
                  and          s7, a2, s8
                  slti         t2, s6, 383
                  sll          s6, ra, ra
                  bge          sp, a5, 211f
                  sra          s10, t5, a0
                  srli         s1, s2, 14
                  bltu         s0, s8, 208f
                  sll          a7, t2, s5
                  blt          s1, a7, 218f
                  slti         s3, t3, -430
                  andi         sp, t2, -995
208:              xori         t1, t5, 1228
                  sub          t4, s2, s6
                  beq          s3, s0, 215f
211:              bgeu         s0, s4, 228f
                  sltu         a4, a2, a1
                  sltiu        a6, a5, -1826
                  lui          ra, 990208
215:              ori          t5, s2, 321
                  sra          gp, s3, s0
                  srl          a4, a2, s6
218:              sll          t4, a4, a1
                  sll          s1, sp, s6
                  ori          t3, t1, 576
                  beq          t1, a7, 233f
                  blt          a5, s1, 237f
                  bne          s8, s4, 233f
                  slt          s3, s5, t6
                  slti         ra, s1, -256
                  slt          t0, t0, t3
                  blt          a7, s7, 232f
228:              lui          t0, 694373
                  bne          ra, sp, 241f
                  auipc        s9, 34056
                  xor          a7, s7, t2
232:              srl          ra, a3, s2
233:              and          t4, s5, s1
                  nop
                  andi         t1, s4, 1359
                  slt          s7, zero, t3
237:              addi         a7, zero, -500
                  sll          s9, s3, s11
                  bgeu         t6, a0, 256f
                  xori         sp, t4, 683
241:              slti         s11, zero, 1037
                  addi         a1, s1, -1071
                  xori         a1, a6, 6
                  sltu         a3, s9, s3
                  sltu         a5, s7, s0
                  sll          t6, tp, s10
                  bgeu         a1, a2, 249f
                  sltu         zero, t3, t6
249:              srl          a6, t0, t3
                  andi         s1, s10, -1473
                  ori          s9, s10, -847
                  srl          t4, sp, gp
                  srl          sp, s8, a2
                  lui          s11, 290540
                  srl          ra, s2, a6
256:              slli         t4, s11, 26
                  slti         s3, s3, 839
                  auipc        a1, 734276
                  srai         t6, a6, 21
                  srli         s6, s5, 20
                  andi         s5, a5, -376
                  sltu         t4, t2, s2
                  sub          sp, s3, s3
                  slt          s5, t4, t3
                  andi         a0, s2, -119
                  slt          a6, a0, s7
                  bge          gp, t0, 287f
                  bgeu         s3, s1, 274f
                  bgeu         s6, tp, 281f
                  srl          s0, t6, s5
                  xor          t2, t3, gp
                  auipc        a6, 856433
                  sll          t4, s2, s4
274:              xori         s2, tp, 968
                  slt          s7, a4, a4
                  srl          s10, s9, a4
                  bge          a6, a3, 296f
                  and          s10, s1, t1
                  bltu         a5, a5, 283f
                  sltiu        s3, t2, 775
281:              andi         t2, a0, -1648
                  slti         t5, s8, 1316
283:              sra          gp, s5, a2
                  slt          s3, sp, t3
                  srl          sp, a7, a4
                  bge          s11, t4, 293f
287:              bgeu         t4, t4, 300f
                  srl          s10, gp, s9
                  addi         ra, ra, -299
                  bltu         t3, sp, 302f
                  slli         s10, sp, 27
                  lui          s3, 97525
293:              slt          s8, s6, s5
                  bgeu         s11, s10, 307f
                  slt          zero, a3, s11
296:              or           s10, t5, a4
                  srai         s5, t1, 20
                  sltu         t5, s1, tp
                  auipc        s9, 794474
300:              bne          sp, t3, 312f
                  auipc        t0, 501914
302:              and          gp, a6, a2
                  sltiu        zero, s5, -155
                  srl          s9, t3, t2
                  slli         a5, a3, 11
                  bge          t5, tp, 312f
307:              beq          t1, s8, 325f
                  xor          s5, tp, t4
                  sra          t6, tp, s5
                  sra          t0, t6, s4
                  blt          a0, s11, 324f
312:              ori          s3, ra, 941
                  add          s0, zero, s7
                  bge          tp, a1, 331f
                  sll          s1, a3, s11
                  bne          sp, s4, 331f
                  bne          ra, sp, 329f
                  slli         s5, s0, 0
                  sltiu        a6, s11, -1924
                  xor          a4, a5, s9
                  bgeu         s3, s5, 336f
                  sub          t1, s10, s3
                  sub          s8, a3, t6
324:              sltu         a6, s10, s3
325:              auipc        a4, 635359
                  bne          a7, tp, 332f
                  la           sp, region_0+81 #start riscv_load_store_hazard_instr_stream_4
                  lw           a6, 1527(sp)
                  lh           s10, 481(sp)
                  lb           ra, 481(sp)
                  sb           a4, 481(sp)
                  lb           s10, 1712(sp)
                  lb           a7, 1712(sp)
                  lbu          s3, 1712(sp)
                  lbu          a0, 1712(sp)
                  lb           a5, 1712(sp)
                  ori          t2, t0, -113
                  slt          s6, t6, t4
                  auipc        s10, 800711
                  lb           t3, 1712(sp)
                  lbu          s0, 1712(sp)
                  lb           a7, 1712(sp)
                  add          t3, s0, gp
                  sb           sp, 1712(sp)
                  slli         a5, t4, 7
                  lbu          s5, 1712(sp)
                  lbu          a7, 1712(sp)
                  lui          t3, 895325
                  sltu         ra, s9, s11
                  sb           a7, 1712(sp)
                  lb           a5, 1125(sp)
                  lbu          a4, 1125(sp) #end riscv_load_store_hazard_instr_stream_4
                  and          a4, t5, a1
                  beq          a5, a5, 341f
329:              bne          t1, s4, 348f
                  slti         t1, s3, -1659
331:              lui          s3, 649369
332:              addi         ra, t0, -2005
                  auipc        s2, 32742
                  bgeu         s3, t4, 351f
                  and          sp, a6, a6
336:              sub          s2, t4, s5
                  ori          s10, t4, 476
                  addi         t5, s9, -1627
                  srli         t1, a6, 31
                  auipc        a3, 407377
341:              sll          s6, t4, a7
                  ori          t4, a7, 158
                  bltu         s1, a2, 350f
                  xori         t4, s2, 1267
                  slti         t1, zero, 1800
                  xor          a0, a3, s8
                  sll          a3, s10, t0
348:              nop
                  sra          s11, a2, t0
350:              sll          s3, s6, s11
351:              ori          t5, ra, -897
                  lui          a1, 937919
                  auipc        t0, 329069
                  slti         sp, t2, -317
                  lui          t2, 23467
                  sra          s5, t5, s6
                  bgeu         s7, s11, 370f
                  sub          t3, s5, ra
                  srai         t6, s10, 1
                  ori          a6, a7, 395
                  or           a4, a0, s9
                  sltiu        zero, s10, 1870
                  slti         t4, t3, 930
                  xori         sp, a0, 175
                  bgeu         s1, a3, 383f
                  sll          a0, a0, s4
                  nop
                  andi         t1, a6, 260
                  bltu         a7, s10, 387f
370:              xori         t1, s0, -1200
                  sra          sp, s0, t3
                  srl          s6, a1, t3
                  bne          s2, s6, 393f
                  sltu         a0, t1, s11
                  nop
                  srli         a6, zero, 24
                  lui          s10, 93001
                  lui          s0, 406242
                  or           s6, tp, s2
                  xori         gp, ra, -942
                  nop
                  beq          gp, s4, 394f
383:              addi         t1, a2, 1468
                  nop
                  sll          t0, t0, s2
                  bgeu         a5, s4, 398f
387:              srl          t6, t3, s9
                  nop
                  slti         a5, a7, 659
                  srai         a5, a5, 13
                  ori          ra, t4, -839
                  slli         s7, s8, 19
393:              sra          a6, s6, s2
                  la           s9, region_1+537 #start load_store_instr_stream_2
                  la           a3, region_1+1504 #start load_store_instr_stream_1
                  la           a4, region_1+268 #start load_store_instr_stream_3
                  sb           a5, -921(a3)
                  la           s5, region_1+1744 #start load_store_instr_stream_0
                  lhu          s10, -3(s9)
                  lw           sp, 480(a3)
                  sb           s10, -15(s9)
                  lhu          a5, -1096(a3)
                  sb           s3, 13(s9)
                  sb           a0, -1211(s5)
                  sw           s8, -416(a3)
                  lb           t2, 467(a4)
                  lh           zero, 52(a4)
                  lh           a0, 9(s9)
                  lbu          t0, -14(s9)
                  sb           t4, 1384(a4)
                  lbu          t6, 457(a4)
                  lbu          a7, -519(a3)
                  lb           a6, -130(a4)
                  lbu          s10, -185(s5)
                  sb           s1, -7(s9)
                  lbu          t1, -1215(a3)
                  lbu          t0, 467(a4)
                  sb           t2, 5(s9)
                  lb           zero, -14(s9)
                  lbu          a6, -147(a3)
                  sb           zero, -7(s9)
                  sb           s1, 667(a4)
                  lbu          t4, -1111(a3)
                  sh           a6, -38(a4)
                  lbu          ra, -15(s9) #end load_store_instr_stream_2
                  lbu          t5, -380(s5)
                  lh           s10, 780(a4) #end load_store_instr_stream_3
                  lb           ra, -1560(s5)
                  lb           gp, -226(a3) #end load_store_instr_stream_1
                  lbu          s11, -1255(s5) #end load_store_instr_stream_0
394:              srai         s6, ra, 14
                  xor          sp, s6, t4
                  xori         a1, t4, -547
                  xor          s6, s8, zero
398:              bge          s0, t4, 403f
                  addi         a0, s1, 1947
                  or           a7, a0, s1
                  srai         s1, t5, 17
                  and          ra, s4, s7
403:              bgeu         s3, t5, 415f
                  or           t2, sp, a1
                  bge          s11, t1, 417f
                  xori         t0, s3, -1711
                  auipc        ra, 648903
                  sltu         s9, a1, a0
                  beq          ra, zero, 415f
                  sltu         s10, a7, a4
                  xor          a3, tp, s8
                  bltu         s7, t5, 416f
                  sltu         s9, a4, s7
                  bltu         s5, tp, 431f
415:              srli         a3, t2, 25
416:              addi         sp, s8, 727
417:              and          s0, s2, s10
                  sll          s5, t2, s9
                  slli         zero, s0, 25
                  bne          t0, s7, 425f
                  slli         a7, gp, 4
                  bltu         a0, ra, 434f
                  sll          t0, t0, tp
                  bge          tp, s5, 426f
425:              srl          zero, a1, s9
426:              bltu         a1, zero, 443f
                  xori         a1, s1, -633
                  ori          s5, s9, 41
                  slli         sp, s3, 15
                  srai         sp, sp, 30
431:              slti         s8, t2, 549
                  blt          s4, s10, 437f
                  srl          s3, sp, t2
434:              xori         s8, a6, -1764
                  or           s8, s1, t0
                  addi         a6, t3, 305
437:              or           t6, s2, t3
                  nop
                  slt          s3, a4, s6
                  sll          s10, t4, s10
                  blt          tp, s3, 454f
                  sltu         s6, sp, ra
443:              addi         t6, s10, -1642
                  srli         t6, a3, 9
                  auipc        a6, 254363
                  slli         s1, s3, 6
                  sub          s6, s9, a0
                  bge          zero, ra, 463f
                  srai         a7, t2, 25
                  srli         a6, s8, 29
                  add          t3, t6, a7
                  srl          s5, t6, t5
                  sub          s1, a3, a2
454:              sltiu        t1, a3, 77
                  sll          t1, s4, s1
                  bgeu         ra, a2, 468f
                  sltiu        a1, a1, -1358
                  beq          a3, s7, 469f
                  xori         t6, t0, -311
                  and          sp, s2, a7
                  xor          s11, tp, t0
                  sltiu        s5, t2, 330
463:              or           s11, s1, s11
                  sub          sp, a4, s4
                  andi         s6, a2, -505
                  sra          t6, a4, t5
                  bgeu         t6, t4, 472f
468:              slt          s11, t2, s9
469:              xor          t2, sp, s4
                  lui          t2, 621176
                  sub          s8, gp, a0
472:              beq          a6, a1, 482f
                  srai         s9, s1, 5
                  or           s5, s3, a2
                  srli         a1, s5, 22
                  addi         t5, s0, -1591
                  srai         t6, gp, 5
                  sra          a1, t6, s5
                  lui          s1, 547843
                  beq          s5, t2, 493f
                  sra          t0, t1, t2
482:              slt          s9, s6, s1
                  xori         zero, tp, 1049
                  beq          t3, a5, 502f
                  nop
                  auipc        t0, 10689
                  nop
                  auipc        gp, 913141
                  bgeu         s10, t0, 501f
                  bltu         a7, t2, 507f
                  addi         a0, sp, 576
                  bne          a0, s11, 507f
493:              bne          s9, t1, 506f
                  xor          ra, a4, t6
                  srli         sp, t6, 5
                  sltiu        zero, s0, -2044
                  slli         t2, a0, 26
                  bgeu         a7, t2, 515f
                  slli         a4, a2, 14
                  blt          s10, a0, 512f
501:              auipc        s8, 683822
502:              sltu         sp, s10, a2
                  sra          zero, s6, s1
                  srai         a0, sp, 7
                  bne          t2, a5, 509f
506:              add          s5, sp, t5
507:              bltu         a0, t3, 524f
                  srai         t3, a7, 24
509:              srl          t4, tp, s0
                  sub          s9, a3, a3
                  andi         s10, a2, -75
512:              auipc        a5, 787373
                  xor          sp, a5, t3
                  sll          a5, t3, t2
515:              xori         s10, s1, -119
                  beq          s10, s8, 528f
                  andi         a4, a0, -871
                  srai         zero, s6, 6
                  sub          t1, tp, gp
                  sltiu        sp, s5, 732
                  srai         a6, a0, 29
                  sltu         a6, sp, ra
                  srai         t2, s11, 24
524:              ori          s10, a3, -621
                  sll          s9, t3, t4
                  srl          gp, a5, s11
                  lui          s11, 56922
528:              srai         t0, s7, 28
                  sltiu        s8, s9, -1376
                  auipc        sp, 253168
                  slti         a7, s7, 76
                  and          a5, s10, sp
                  addi         s5, t0, -137
                  xori         s8, a6, 1268
                  bltu         t6, s3, 547f
                  la           s3, region_1+1224 #start riscv_load_store_hazard_instr_stream_6
                  lbu          s7, 55(s3)
                  lw           gp, -232(s3)
                  lbu          s10, -26(s3)
                  lh           a7, -26(s3)
                  lbu          s8, -26(s3)
                  lbu          t0, -26(s3)
                  sra          ra, s10, ra
                  lhu          t3, -84(s3)
                  lbu          s5, -84(s3)
                  lhu          sp, -120(s3)
                  lh           a7, 126(s3)
                  lb           ra, -50(s3)
                  andi         t3, s2, -363
                  lhu          s9, -50(s3)
                  addi         s1, a3, 273
                  sh           t3, -176(s3)
                  or           t1, t5, a5
                  srai         s2, a4, 18
                  sb           s0, 170(s3)
                  lbu          s6, -199(s3) #end riscv_load_store_hazard_instr_stream_6
                  slli         gp, s1, 2
                  sra          s1, a2, s9
                  nop
                  bge          s6, t0, 551f
                  xor          s7, s0, s2
                  sltu         s0, a0, tp
                  xor          sp, a1, a7
                  or           s6, s5, t2
                  srli         a0, t5, 4
                  sltu         a4, s3, s8
                  andi         s9, s5, 722
547:              ori          gp, a2, 1388
                  slt          t5, a5, s9
                  add          s10, t1, s6
                  lui          ra, 390745
551:              sll          gp, t5, s10
                  sub          s2, s10, a0
                  sltiu        sp, t1, -1871
                  bgeu         t4, a7, 560f
                  add          a0, s0, t0
                  bge          t2, sp, 567f
                  bge          t4, a2, 559f
                  xori         sp, s8, -896
559:              sll          a1, gp, a3
560:              beq          a7, a1, 566f
                  auipc        s8, 263406
                  slt          a1, s4, s0
                  sra          a5, t0, a0
                  ori          s9, a1, -344
                  ori          s1, zero, 1522
566:              addi         a4, a3, 1468
567:              slli         a6, s0, 20
                  sub          s0, s0, a0
                  xori         gp, t6, 604
                  beq          sp, s2, 575f
                  slt          t2, a1, s3
                  sub          s3, t5, s0
                  addi         s1, t5, -94
                  nop
575:              xori         zero, s4, 2037
                  srli         a3, t6, 23
                  add          a1, s0, t6
                  addi         a6, s6, -1078
                  slt          s6, s7, s4
                  sltu         s1, zero, a0
                  ori          ra, a0, -665
                  bgeu         a0, a4, 587f
                  addi         t1, s3, 445
                  lui          s5, 23552
                  xor          s9, a1, s11
                  or           a1, t2, sp
587:              bgeu         a0, t6, 602f
                  xori         s11, a4, 75
                  slti         a1, t4, 598
                  xori         s9, s1, -1964
                  blt          sp, s1, 604f
                  bne          t2, t0, 611f
                  or           sp, zero, t2
                  nop
                  ori          a6, a4, 1426
                  addi         a5, t0, -1573
                  auipc        t2, 58955
                  srai         a4, t3, 18
                  or           s10, a7, a7
                  sltiu        a6, s5, -1714
                  slt          s10, s9, a4
602:              beq          a0, s3, 607f
                  srl          t2, s10, ra
604:              bltu         t5, s11, 617f
                  srli         s3, t2, 9
                  bge          s9, a3, 626f
607:              slt          a0, a4, s4
                  addi         s6, sp, -78
                  sltiu        t1, s7, 829
                  slt          a3, s8, a3
611:              bge          s0, s9, 624f
                  lui          gp, 510065
                  addi         a0, s9, 650
                  sltu         t1, s0, a4
                  nop
                  sra          t3, zero, t4
617:              and          s0, a1, t3
                  slti         s8, t2, 130
                  nop
                  sltiu        a6, s11, -430
                  or           t6, t5, a6
                  ori          s3, zero, -722
                  or           ra, s3, s2
624:              slli         a6, s3, 13
                  or           a3, s3, s0
626:              srli         a3, a2, 10
                  bgeu         s1, s10, 639f
                  sltiu        s7, a4, -1697
                  andi         t3, s11, -842
                  srai         ra, t6, 19
                  srl          s7, sp, a7
                  xori         s6, t2, -1787
                  slti         s7, tp, 386
                  srl          s9, a2, s2
                  sltu         s1, t2, a4
                  sll          s7, a4, t4
                  auipc        t4, 582399
                  bgeu         s7, s9, 648f
639:              bgeu         t0, a5, 646f
                  xor          s5, tp, a5
                  bltu         t0, s11, 646f
                  xor          a5, a6, sp
                  bge          s6, t0, 661f
                  auipc        gp, 969166
                  bge          s0, t2, 650f
646:              bgeu         t0, s3, 663f
                  or           t5, a7, s11
648:              xori         s1, a7, -917
                  auipc        s8, 675236
650:              srl          s9, t1, t3
                  slli         s5, t3, 17
                  sra          t4, t0, ra
                  andi         s2, a7, -188
                  sltiu        a4, a3, -1479
                  srli         s2, s4, 3
                  bne          t5, s0, 667f
                  nop
                  sltu         t1, s2, s10
                  sltu         s0, s5, s8
                  slt          a0, t3, t6
661:              sltu         s6, s9, zero
                  sltu         t1, t6, a7
663:              sltiu        t5, s9, -1830
                  slt          t5, a6, t5
                  andi         s11, a7, 661
                  bltu         a6, t3, 681f
667:              bge          s6, s10, 679f
                  sub          s6, a5, a1
                  xori         ra, s8, 1791
                  slli         a7, s4, 23
                  lui          a3, 403202
                  auipc        a1, 3596
                  or           a3, s6, t2
                  sltiu        t1, s10, -632
                  sub          a3, gp, s5
                  ori          t6, s2, 634
                  xori         s11, t6, 1104
                  srl          t0, s0, s6
679:              beq          s8, a1, 691f
                  add          s3, t4, s4
681:              and          s0, a7, a5
                  beq          s3, s4, 695f
                  addi         s2, s10, -837
                  bltu         zero, a3, 696f
                  and          s1, a2, s11
                  bge          s7, s1, 691f
                  srl          s6, a5, s3
                  slt          ra, s8, s0
                  lui          t1, 939205
                  srl          a4, s9, s2
691:              blt          s4, tp, 696f
                  srai         ra, a1, 26
                  slt          gp, t1, t0
                  nop
695:              sub          s10, s1, t4
696:              lui          zero, 1037610
                  addi         s7, s6, 200
                  andi         a4, a6, 1971
                  slt          s5, s9, a5
                  ori          t1, t0, 1734
                  bne          gp, s3, 706f
                  bne          a5, s10, 722f
                  srli         a6, zero, 27
                  bne          gp, sp, 717f
                  auipc        s10, 193292
706:              slt          a0, t6, s2
                  lui          s1, 828965
                  srli         s2, s11, 8
                  slli         zero, s3, 5
                  add          s10, s6, a4
                  bge          a7, a7, 713f
                  beq          s7, a5, 719f
713:              sll          a1, s2, ra
                  bltu         s9, a5, 731f
                  xori         a1, s9, -18
                  bltu         sp, a0, 733f
717:              beq          a1, t5, 729f
                  beq          tp, s0, 730f
719:              srai         s0, tp, 10
                  sra          s11, s9, t1
                  srl          s5, ra, s1
722:              sltu         t0, t6, s3
                  ori          t4, a5, 551
                  slt          s1, sp, s1
                  sltiu        zero, a3, -303
                  srli         a6, a0, 10
                  lui          a5, 948823
                  sra          t6, a0, a7
729:              xori         s6, s6, 150
730:              sltiu        a0, a1, -395
731:              add          a1, t1, t5
                  bltu         t3, s1, 736f
733:              blt          s5, gp, 748f
                  sub          s0, t1, s9
                  sra          t5, s9, s5
736:              slti         a0, t6, -932
                  srai         s1, s6, 16
                  bge          s2, a1, 744f
                  bne          tp, s3, 758f
                  nop
                  sub          t2, t3, s7
                  add          a6, s11, a7
                  srai         s1, t1, 22
744:              and          s0, a3, zero
                  ori          s1, zero, 387
                  blt          s7, t2, 764f
                  xori         a5, tp, 730
748:              lui          s7, 570839
                  beq          t6, t6, 755f
                  addi         s11, a4, -1475
                  bltu         s9, s4, 769f
                  srl          s5, t5, gp
                  xor          s6, t6, s3
                  sub          a7, t4, a1
755:              sra          s10, s10, a7
                  slti         t4, s1, 773
                  bne          s2, t6, 770f
758:              slti         a4, s5, -710
                  sll          a0, s4, s5
                  sra          ra, s8, a4
                  ori          s5, gp, 141
                  add          a0, t2, zero
                  sltu         s5, s2, a1
764:              slti         t4, t4, 1175
                  xor          sp, s4, t3
                  add          s2, gp, sp
                  xor          s10, s1, s2
                  addi         gp, zero, 976
769:              andi         a0, s10, -754
770:              sub          a4, a6, s6
                  xor          zero, s1, a1
                  srli         a1, s8, 20
                  slti         s7, t1, 886
                  sub          t2, a3, a6
                  bltu         tp, t4, 788f
                  and          s5, t4, a3
                  sltu         s5, t4, zero
                  xori         s5, zero, 1998
                  bltu         a2, a5, 791f
                  addi         a6, t3, 734
                  slt          a4, a5, a7
                  andi         s0, sp, -942
                  or           t5, t6, a6
                  slt          t0, t1, a7
                  ori          gp, s9, -493
                  srli         s5, s3, 19
                  slli         s3, gp, 27
788:              srli         t5, gp, 29
                  xori         s2, s1, -514
                  slti         s10, t1, -1167
791:              beq          s10, t2, 801f
                  srl          a7, s4, s9
                  slti         s0, s5, 1394
                  slli         t5, s3, 3
                  sra          s9, s5, t3
                  auipc        s8, 908659
                  bltu         s11, s11, 803f
                  addi         t5, s9, 569
                  or           sp, s9, t4
                  nop
801:              addi         ra, s9, 574
                  or           s6, t2, a4
803:              or           a1, t2, a4
                  sltiu        s0, s10, 1828
                  bge          a5, a3, 807f
                  bge          t1, ra, 821f
807:              addi         sp, s0, 720
                  slli         t1, t4, 13
                  auipc        s5, 304994
                  srl          a1, s8, sp
                  sltiu        a4, t5, 1054
                  slt          a7, s11, t0
                  xori         s8, a7, 1179
                  beq          t0, s8, 826f
                  auipc        s8, 1046709
                  sub          ra, a1, a3
                  ori          s2, s6, 1862
                  andi         a1, s3, -1539
                  sltiu        s9, s8, -658
                  blt          a0, s9, 838f
821:              sll          t2, gp, s0
                  lui          s9, 517977
                  srai         sp, s2, 16
                  lui          a7, 589069
                  and          s10, t2, a4
826:              and          s7, t6, zero
                  srl          sp, s9, a0
                  beq          zero, t5, 835f
                  beq          s6, t6, 834f
                  bltu         zero, s10, 845f
                  bne          sp, s2, 848f
                  beq          a1, tp, 844f
                  nop
834:              and          s11, ra, s6
835:              bge          a3, ra, 847f
                  add          t1, sp, gp
                  slli         s1, a5, 22
838:              sltiu        t0, s6, -1256
                  sltiu        s5, s7, 1394
                  slt          a1, ra, s10
                  sra          zero, tp, t0
                  ori          sp, tp, 984
                  beq          t5, s2, 856f
844:              srl          a6, s10, t0
845:              sra          s2, s6, t5
                  srl          ra, t4, s11
847:              addi         a0, s8, -1541
848:              sltiu        s1, s9, -263
                  xori         a3, s9, -638
                  andi         s8, s10, -1088
                  auipc        sp, 283331
                  add          zero, t0, a1
                  sra          s0, ra, t2
                  srai         a3, a2, 23
                  xori         s10, sp, 1118
856:              nop
                  sltu         t3, s10, gp
                  xor          t5, s2, s8
                  srl          ra, a0, s6
                  slt          s1, sp, a1
                  bge          s8, tp, 866f
                  sltiu        a1, s7, -1846
                  sltu         gp, s8, gp
                  srai         t5, a7, 22
                  bge          a5, s2, 872f
866:              sub          a0, a5, a5
                  lui          s6, 276689
                  sll          s7, a7, s0
                  and          s3, t5, t3
                  blt          tp, s5, 872f
                  bne          s3, t1, 872f
872:              andi         gp, s8, 578
                  lw           ra, 4(tp)
                  addi         tp, tp, 56
                  sltiu        zero, gp, -936
                  andi         s7, a3, 1184
                  slt          t3, s1, t5
1565:             addi x27, x1, 0
1565:             jalr x27, x27, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x12, x4, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x13, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x13, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x13, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x13, x17, ecall_handler
                  li x17, 0x1
                  beq x13, x17, instr_fault_handler
                  li x17, 0x5
                  beq x13, x17, load_fault_handler
                  li x17, 0x7
                  beq x13, x17, store_fault_handler
                  li x17, 0xc
                  beq x13, x17, pt_fault_handler
                  li x17, 0xd
                  beq x13, x17, pt_fault_handler
                  li x17, 0xf
                  beq x13, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

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
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
