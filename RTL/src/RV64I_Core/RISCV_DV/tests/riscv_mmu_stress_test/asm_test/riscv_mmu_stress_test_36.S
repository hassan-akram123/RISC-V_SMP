.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x14, kernel_stack_end

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
                  li x1, 0xf2ed98c3
                  li x2, 0xf4c6cc42
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x3
                  li x7, 0xd
                  li x8, 0xf43a754c
                  li x9, 0xf19be3e0
                  li x10, 0xe
                  li x11, 0x4
                  li x12, 0x3
                  li x13, 0xf3f291dd
                  li x15, 0xfce923c8
                  li x16, 0xc
                  li x17, 0x80000000
                  li x18, 0xf8ed0709
                  li x19, 0x9
                  li x20, 0x80000000
                  li x21, 0x8
                  li x23, 0x80000000
                  li x24, 0x4b6f20b4
                  li x25, 0x37d3e951
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0xa00746e4
                  li x29, 0x8aba760b
                  li x30, 0x3
                  li x31, 0xa
                  la x22, user_stack_end
main:             la           s1, sub_1
                  sll          gp, t4, s2
                  xor          s8, t0, a6
                  srai         s10, t6, 18
                  lui          s9, 776807
                  slli         a5, zero, 24
                  slli         s7, a3, 9
                  addi         s1, s1, 704
                  sra          a0, a5, a3
                  bge          s10, zero, main_j2 #branch to jump instr
                  srai         ra, a1, 3
main_j2:          jalr         t4, s1, -704 #jump main -> sub_1
                  la           a6, region_0+1198 #start riscv_load_store_hazard_instr_stream_0
                  sb           s9, -15(a6)
                  sb           sp, -15(a6)
                  lbu          zero, -15(a6)
                  lbu          t3, -15(a6)
                  lb           a5, -15(a6)
                  sb           t6, -15(a6)
                  or           s8, a0, t6
                  sub          s8, t3, t5
                  lhu          a1, -8(a6)
                  lh           s5, -8(a6)
                  srli         s10, s3, 21
                  sb           s0, -8(a6)
                  lbu          a0, 9(a6)
                  sb           gp, 9(a6)
                  sb           sp, 9(a6)
                  lbu          s3, 9(a6)
                  lh           t1, 4(a6)
                  lh           s4, 4(a6)
                  sb           ra, -7(a6)
                  sb           sp, -7(a6)
                  sb           t1, -7(a6)
                  lb           s9, 3(a6)
                  lb           s0, 3(a6) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_0+908 #start riscv_load_store_rand_instr_stream_0
                  lui          a7, 659250
                  lbu          a7, 270(s3)
                  sb           s4, 712(s3)
                  lbu          a7, 22(s3)
                  andi         t0, a2, -502
                  lb           ra, -885(s3)
                  lb           zero, -637(s3)
                  lbu          t4, 710(s3)
                  auipc        s5, 892233
                  lb           sp, 711(s3)
                  or           sp, t2, s1
                  sb           t6, -853(s3)
                  addi         s10, a5, -911
                  lbu          s8, 190(s3)
                  lb           s9, -815(s3)
                  lui          t5, 253833
                  sltiu        s10, a6, -1206
                  lb           ra, 567(s3)
                  andi         a2, s5, 1940
                  sw           t3, -316(s3)
                  sll          t2, t5, s6
                  lbu          t5, -237(s3)
                  or           t5, ra, gp
                  xori         a5, t5, -1639
                  xor          s2, a2, a1
                  lbu          a5, -127(s3)
                  nop
                  ori          t6, tp, -599
                  srli         a3, a6, 11
                  sub          a2, s8, zero
                  nop
                  srai         s10, s4, 24
                  lh           a3, 544(s3)
                  sh           a2, 158(s3)
                  and          t6, t6, s4
                  xori         a0, s3, 1119
                  lhu          a2, -44(s3)
                  lw           tp, 736(s3)
                  sh           s10, 244(s3)
                  lui          t0, 167327
                  slt          s1, s11, a7
                  slli         ra, s1, 18
                  sltu         a2, a2, s0
                  addi         s0, sp, -1202
                  and          s2, a2, a0
                  sltu         s5, tp, t3
                  lbu          a3, 851(s3)
                  sh           a1, -14(s3)
                  lbu          s10, -395(s3)
                  sb           tp, -294(s3) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_0+1577 #start load_store_instr_stream_0
                  la           tp, region_0+1773 #start load_store_instr_stream_1
                  la           s8, region_0+287 #start load_store_instr_stream_2
                  lw           s10, -449(tp)
                  lb           a7, 145(tp)
                  lh           gp, -179(ra)
                  sw           a1, 79(ra)
                  sb           a7, 250(ra)
                  lbu          t4, 2(s8)
                  sb           t6, 90(ra)
                  lw           t1, 61(s8)
                  lbu          a1, -646(tp)
                  lbu          t4, 106(ra)
                  sb           s0, -136(ra)
                  sb           zero, -1056(tp)
                  lbu          t6, 251(ra)
                  sb           a0, -1282(tp)
                  lbu          s0, 187(tp)
                  lhu          a7, 39(s8)
                  sb           tp, 104(ra)
                  lbu          a7, 52(s8)
                  lh           t1, 33(s8)
                  sb           t0, -362(tp)
                  lbu          a3, -26(s8) #end load_store_instr_stream_2
                  sb           s6, -862(tp) #end load_store_instr_stream_1
                  lb           a0, -113(ra) #end load_store_instr_stream_0
                  nop
                  add          s5, s8, a1
                  srai         a2, t2, 14
                  srli         zero, s8, 11
                  blt          a7, t4, 13f
                  sll          s2, a3, a6
                  and          s5, s5, gp
                  nop
                  auipc        s2, 31886
                  sll          t3, s3, s9
                  lui          t6, 813835
                  la           a2, sub_1
                  addi         a2, a2, -904
                  auipc        s7, 561169
                  srai         zero, a2, 18
                  beq          tp, s2, main_j1 #branch to jump instr
                  slti         s0, a3, 487
                  xori         a6, s11, 1225
                  nop
                  sll          a5, s2, s7
main_j1:          jalr         t4, a2, 904 #jump main -> sub_1
                  andi         s7, a3, 970
                  srli         s2, s1, 2
13:               srli         t5, t4, 25
                  bltu         s1, s2, 22f
                  nop
                  and          zero, gp, s7
                  bgeu         t2, t0, 27f
                  xori         tp, a7, -1567
                  srli         a2, t2, 18
                  srai         t4, s1, 7
                  srai         a3, sp, 25
22:               nop
                  lui          s8, 909933
                  sra          s4, tp, a4
                  bge          a3, zero, 27f
                  add          s3, t6, s6
27:               slli         s10, s5, 24
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sltiu        t3, a1, 957
                  ori          sp, t4, -101
                  beq          a2, a2, sub_1_stack_p
                  sra          a3, s7, t5
sub_1_stack_p:    addi         s6, s6, -40
                  nop
                  and          t1, a0, s8
                  sw           t4, 4(s6)
                  slti         sp, t6, 1009
                  slt          a2, t4, t6
                  la           a7, region_0+413 #start riscv_load_store_hazard_instr_stream_0
                  lhu          ra, 197(a7)
                  sb           s8, 197(a7)
                  lh           s8, 233(a7)
                  xor          a3, ra, s3
                  lw           s3, -9(a7)
                  sb           a6, -170(a7)
                  sb           t5, -232(a7)
                  sh           a7, -243(a7)
                  sltiu        a6, s4, -1862
                  nop
                  lbu          a2, 134(a7)
                  sb           s5, -196(a7)
                  lh           t0, -7(a7)
                  sb           s7, -175(a7)
                  lh           a2, -127(a7)
                  lbu          t1, 78(a7)
                  xori         t2, a0, -1714
                  sb           a5, 78(a7)
                  sb           sp, 78(a7)
                  lbu          s2, -200(a7)
                  sltiu        s5, a1, 1976
                  lb           a0, 83(a7)
                  lh           s1, -63(a7)
                  sh           t3, 31(a7)
                  slt          tp, s2, s2
                  lhu          s9, 55(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+915 #start riscv_load_store_hazard_instr_stream_2
                  lhu          s7, 3(sp)
                  xor          gp, t6, a2
                  sh           ra, 3(sp)
                  lhu          a0, 3(sp)
                  lh           t2, 3(sp)
                  sltiu        s8, sp, -407
                  sh           t3, 3(sp)
                  lw           a0, -7(sp)
                  lbu          s4, -4(sp)
                  sb           s4, 7(sp)
                  lb           gp, 7(sp)
                  lh           s8, 7(sp)
                  lh           a7, 7(sp)
                  xori         s2, a5, -556
                  sb           s9, -4(sp)
                  sll          s5, s7, a5
                  lb           t4, -4(sp)
                  sb           s0, -4(sp)
                  nop
                  lb           t2, -4(sp)
                  lb           s4, 13(sp)
                  lhu          gp, 13(sp)
                  sra          t3, s6, s4
                  lh           t2, 13(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a7, region_1+405 #start riscv_load_store_rand_instr_stream_2
                  nop
                  slti         s3, a2, 1742
                  sll          a5, t4, s3
                  lb           t2, -84(a7)
                  ori          zero, s6, 401
                  lb           s10, 64(a7)
                  lb           s2, 1492(a7)
                  lb           sp, 1344(a7)
                  lb           s8, 287(a7)
                  or           a3, s0, a0
                  slti         a0, a0, 1300
                  sb           t1, 692(a7)
                  slti         s0, t4, -22
                  lh           s4, 1581(a7)
                  slli         s4, zero, 12
                  lb           a1, 911(a7)
                  sb           t0, -58(a7)
                  sra          s5, t3, s9
                  sw           t5, -181(a7)
                  xori         s0, s6, -1722
                  sb           a4, 396(a7)
                  lhu          t5, -27(a7)
                  add          sp, t2, s2
                  lb           a2, 1000(a7)
                  sb           a5, 863(a7)
                  srl          t4, t6, s2
                  lhu          t3, 33(a7)
                  add          t5, s8, a7
                  sll          a0, s0, s5
                  or           t3, s8, t4
                  lh           s5, 1497(a7)
                  addi         a2, a2, 169
                  sub          zero, s9, t6
                  srl          s10, a5, a6
                  sll          t3, a5, a3
                  lb           s2, -81(a7)
                  sll          t2, s2, a0
                  lhu          a6, -391(a7)
                  lbu          s0, -88(a7)
                  nop
                  lbu          t0, 254(a7)
                  add          t1, t0, a2
                  lb           s5, 648(a7)
                  xori         s9, s5, 1571
                  sh           a4, 145(a7)
                  lbu          t1, 1558(a7)
                  slti         s5, t3, 1802
                  andi         t0, a6, -1686
                  and          s3, s7, s5
                  sb           s3, 856(a7)
                  srl          t3, tp, a2
                  sub          s3, t2, s4
                  ori          zero, ra, 1290
                  lh           s0, 239(a7)
                  sb           t4, 1170(a7)
                  lh           s5, 1569(a7) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1165 #start riscv_load_store_rand_instr_stream_6
                  srl          a0, t4, s0
                  sb           s6, -1032(sp)
                  srl          s0, a2, a0
                  lb           s2, 408(sp)
                  slt          s8, a1, a4
                  sra          t5, s0, s0
                  nop
                  lb           s1, 530(sp)
                  sll          s5, a7, ra
                  lh           t4, -101(sp)
                  sra          t5, s10, ra
                  srl          s9, s1, gp
                  sll          gp, s9, s1
                  sltiu        t6, sp, 1401
                  sra          ra, a0, a0
                  add          t3, s0, a6
                  slt          tp, t4, zero
                  slti         a0, s3, -880
                  lw           t1, 667(sp)
                  addi         zero, a6, -816
                  lui          s7, 691582
                  sltiu        s5, t3, 1130
                  sb           a5, -937(sp)
                  sh           sp, -971(sp)
                  slti         gp, a7, -411
                  sb           a2, -86(sp)
                  lui          a6, 655256
                  lb           a3, -1134(sp)
                  or           s8, s5, t2
                  sb           s5, 352(sp)
                  sltiu        s10, s7, -1298
                  srli         a7, t1, 20
                  slti         a6, a6, 1327
                  sb           s6, 59(sp)
                  lui          a2, 863309
                  ori          s9, a1, 1294
                  lb           a5, -286(sp)
                  srl          s10, s3, t5
                  addi         s3, t6, 850
                  andi         t3, tp, 560
                  lb           gp, -1156(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s10, region_1+880 #start riscv_load_store_hazard_instr_stream_1
                  addi         s9, s1, 1955
                  lhu          s7, -626(s10)
                  lb           a5, -685(s10)
                  sub          s7, a5, s7
                  srai         a3, s6, 12
                  sh           t4, -120(s10)
                  sh           t5, -348(s10)
                  lb           s7, 541(s10)
                  slti         a1, zero, -1156
                  lhu          a3, 818(s10)
                  lh           s0, 818(s10)
                  lb           zero, 818(s10)
                  xor          zero, a6, a2
                  ori          s5, t4, 1180
                  sb           s7, 818(s10)
                  lbu          s4, 818(s10)
                  lhu          a2, 818(s10)
                  sw           s0, -212(s10)
                  lw           t1, -212(s10) #end riscv_load_store_hazard_instr_stream_1
                  la           s7, region_0+1749 #start riscv_load_store_hazard_instr_stream_4
                  lbu          sp, -14(s7)
                  lb           a0, 62(s7)
                  lbu          a3, -56(s7)
                  lbu          t3, -1(s7)
                  lb           gp, -21(s7)
                  lbu          s0, -12(s7)
                  sb           a2, 7(s7)
                  lbu          a5, -28(s7)
                  srai         sp, s3, 3
                  ori          t1, a5, 1753
                  lb           t1, -28(s7)
                  srai         t0, s4, 13
                  lb           a2, -28(s7) #end riscv_load_store_hazard_instr_stream_4
                  la           sp, region_1+1383 #start riscv_load_store_rand_instr_stream_1
                  slti         a5, s10, -2023
                  ori          t5, t5, -1469
                  srai         s5, t6, 20
                  sb           t5, -932(sp)
                  lb           s3, 87(sp)
                  sltu         a7, s1, t1
                  lh           zero, -581(sp)
                  sra          s9, a2, s1
                  lb           t1, -822(sp)
                  andi         t1, s6, 123
                  lb           tp, 352(sp)
                  srai         t0, a2, 12
                  lb           a1, 259(sp)
                  addi         a6, a1, -1997
                  sb           a4, -1240(sp)
                  nop
                  slti         a7, t5, -259
                  sltiu        t3, s4, 1795
                  slli         a6, a3, 28
                  sb           ra, -900(sp)
                  lb           s9, -836(sp)
                  lbu          t2, -60(sp)
                  slti         s4, a0, -901
                  lbu          t5, -753(sp)
                  sh           a6, -365(sp)
                  nop
                  slli         a5, ra, 31
                  xor          s0, a7, s3
                  slli         s5, a1, 28
                  sw           s7, 433(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+940 #start riscv_load_store_hazard_instr_stream_6
                  sb           a3, 23(sp)
                  sb           a6, 23(sp)
                  sb           a4, 6(sp)
                  lbu          ra, 53(sp)
                  sb           t2, 53(sp)
                  lb           s4, 53(sp)
                  ori          t3, s4, 868
                  nop
                  lb           s10, -26(sp)
                  lb           s7, 23(sp)
                  lb           a7, 23(sp)
                  lh           a3, 36(sp)
                  sb           tp, 21(sp)
                  sw           a5, 36(sp)
                  sb           t6, 36(sp)
                  lb           a1, -45(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           a3, region_0+1320 #start riscv_load_store_rand_instr_stream_0
                  sll          a5, a2, ra
                  lh           a2, -2(a3)
                  nop
                  lb           s5, -13(a3)
                  lb           sp, 11(a3)
                  lhu          s2, -10(a3)
                  lhu          a0, -6(a3)
                  slt          s0, s4, t4
                  add          t6, a4, s4
                  lh           a7, 8(a3)
                  sub          a1, s1, a2
                  lbu          s2, -11(a3)
                  lbu          t3, -13(a3)
                  lbu          t1, -5(a3)
                  sb           tp, -3(a3)
                  lbu          s3, -7(a3)
                  lb           a1, -16(a3)
                  lbu          s9, -6(a3)
                  and          a0, a5, a1
                  slti         sp, t5, -717
                  lb           s0, -3(a3)
                  xor          t1, tp, t2
                  andi         s8, s10, 968
                  lbu          t5, -1(a3)
                  sw           s5, 0(a3)
                  sll          ra, s0, t0
                  sltiu        s1, t6, 1674
                  lb           t5, 7(a3)
                  xor          s4, gp, s7
                  sb           s7, 8(a3)
                  lb           zero, 1(a3)
                  lb           s10, -7(a3) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_1+1860 #start load_store_instr_stream_3
                  la           s2, region_1+34 #start load_store_instr_stream_0
                  lbu          sp, 118(t0)
                  lhu          a5, -2(s2)
                  la           t6, region_1+534 #start load_store_instr_stream_2
                  sb           tp, 61(t6)
                  la           t4, region_1+500 #start load_store_instr_stream_4
                  la           a2, region_1+1396 #start load_store_instr_stream_1
                  sb           t6, -101(t0)
                  lb           a1, -834(a2)
                  sw           gp, 956(t4)
                  lbu          s10, 191(a2)
                  sb           a4, -69(t0)
                  lhu          s10, -188(t0)
                  lbu          t2, 744(t4)
                  sh           tp, 0(t6)
                  lbu          tp, 164(t4)
                  lb           t1, -59(t6)
                  lh           a5, 904(t4)
                  lb           a7, -190(t0)
                  lhu          a5, -202(a2)
                  lb           s4, -24(t6)
                  lbu          t3, -7(s2)
                  lw           s0, -6(s2)
                  sw           s0, -156(t0)
                  lbu          s5, 11(s2)
                  lb           a1, -129(t0)
                  lhu          s5, -10(s2)
                  sb           s7, 19(t0)
                  lhu          s9, 266(a2)
                  sb           zero, 1(s2)
                  sb           t6, -232(t0) #end load_store_instr_stream_3
                  lh           s1, 1034(t4)
                  sb           t0, 3(t6) #end load_store_instr_stream_2
                  lb           a7, 168(a2)
                  sb           zero, -469(a2) #end load_store_instr_stream_1
                  lhu          a3, -334(t4) #end load_store_instr_stream_4
                  sb           t3, 14(s2) #end load_store_instr_stream_0
                  la           a7, region_1+571 #start load_store_instr_stream_2
                  la           a5, region_1+1370 #start load_store_instr_stream_0
                  lw           tp, -30(a5)
                  la           s0, region_1+1971 #start load_store_instr_stream_4
                  sb           s10, -38(a7)
                  la           ra, region_1+1722 #start load_store_instr_stream_3
                  lbu          a2, 9(s0)
                  lbu          s9, -28(a7)
                  sb           a3, -64(a5)
                  sb           a1, -62(a7)
                  sb           s6, 91(ra)
                  lbu          s8, -43(a5)
                  lbu          s10, -45(a7)
                  lh           t2, -27(a7)
                  la           t1, region_1+1075 #start load_store_instr_stream_1
                  lw           sp, -231(s0)
                  lb           s1, 18(a5)
                  sb           t3, 141(ra)
                  lbu          s3, -105(t1)
                  lb           tp, 7(a5)
                  lbu          s2, -110(t1)
                  lhu          s8, -24(a5)
                  sh           a5, -180(ra)
                  sb           s4, 55(a5)
                  lb           s1, -100(s0)
                  lhu          s1, -12(a5)
                  lbu          s7, 38(ra)
                  lh           s8, 39(a7)
                  sb           t3, 150(t1)
                  lb           a1, -69(ra)
                  lbu          t6, -249(s0)
                  lb           t6, -49(a5)
                  lbu          a2, 231(ra)
                  lbu          s1, 245(t1)
                  lb           a6, -191(ra)
                  sb           tp, -81(s0)
                  sh           s3, 11(a7)
                  lbu          s5, -6(t1)
                  lbu          sp, 4(s0)
                  lb           a2, 176(t1) #end load_store_instr_stream_1
                  sb           t5, 28(a7)
                  sh           s8, -217(s0) #end load_store_instr_stream_4
                  sb           t0, -248(ra) #end load_store_instr_stream_3
                  lb           s1, -29(a7)
                  lbu          s4, -60(a7) #end load_store_instr_stream_2
                  lbu          a1, 1(a5) #end load_store_instr_stream_0
                  la           s8, region_0+1364 #start load_store_instr_stream_1
                  la           s2, region_0+1800 #start load_store_instr_stream_0
                  lbu          zero, -569(s8)
                  sb           s1, -1261(s2)
                  lh           a2, -226(s8)
                  lbu          a1, -315(s8)
                  la           t5, region_0+1232 #start load_store_instr_stream_2
                  lbu          t2, 280(s8)
                  sb           a1, -197(t5)
                  lw           a1, -604(s2)
                  sw           s9, 196(t5)
                  sb           t1, 139(t5)
                  lbu          a7, 561(s8)
                  lhu          gp, -1262(s2)
                  lb           s1, -969(s8)
                  sb           a4, 295(s8)
                  sb           gp, 239(t5)
                  lbu          s0, -24(t5)
                  lbu          s7, -414(s2)
                  lbu          a1, -228(t5)
                  sh           a3, -178(t5)
                  lhu          s1, 114(s8)
                  lb           t0, 7(t5)
                  lh           t2, 206(t5)
                  lbu          t1, -55(s8) #end load_store_instr_stream_1
                  lbu          gp, -197(t5) #end load_store_instr_stream_2
                  lh           s3, -934(s2) #end load_store_instr_stream_0
                  la           s2, region_1+148 #start riscv_load_store_rand_instr_stream_5
                  lb           t0, -92(s2)
                  and          a5, t1, s11
                  lhu          a1, 222(s2)
                  sll          t0, a3, s5
                  sra          s1, tp, s9
                  sw           a3, -76(s2)
                  srli         s7, t1, 19
                  lhu          s9, 56(s2)
                  sh           s8, 240(s2)
                  addi         ra, s3, -1779
                  lhu          a3, 242(s2)
                  lb           s10, -47(s2)
                  and          zero, a1, s0
                  lbu          a7, -125(s2)
                  sb           s2, -57(s2)
                  sltu         s1, sp, s1
                  slli         s10, s11, 14
                  xori         t6, zero, 36
                  lb           a7, 225(s2)
                  sb           a5, 62(s2)
                  sb           s7, 41(s2)
                  sh           a0, 58(s2)
                  lbu          t1, 171(s2)
                  sltiu        tp, a0, 1237
                  sb           zero, 229(s2)
                  srl          s10, s7, zero
                  sb           s4, 184(s2)
                  lhu          a7, -30(s2)
                  lb           s3, 33(s2)
                  sltiu        zero, s5, -1733
                  addi         t2, t3, 1357
                  srai         s0, a3, 11
                  sra          a5, t1, a4
                  nop
                  lb           s8, 27(s2)
                  sb           zero, 119(s2)
                  srai         t4, a6, 15
                  lh           a5, -56(s2)
                  sb           s6, -102(s2)
                  nop
                  and          a5, s7, s11
                  nop
                  sltiu        s10, t2, 347
                  xori         t4, t1, 1531
                  andi         s7, a3, -1222
                  sb           a1, 61(s2)
                  lb           a3, 205(s2)
                  lb           s9, -147(s2)
                  lb           t0, 45(s2) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_0+127 #start riscv_load_store_rand_instr_stream_3
                  lb           a0, 9(s1)
                  sb           t1, 0(s1)
                  lb           t4, -1(s1)
                  andi         a5, s7, 970
                  sh           s10, -3(s1)
                  sb           s6, -8(s1)
                  sh           s2, -3(s1)
                  sll          a0, a7, s9
                  sb           s8, 9(s1)
                  sh           t3, 11(s1)
                  srl          s5, t5, s8
                  srli         s7, zero, 30
                  lb           t6, -10(s1)
                  lhu          t3, -9(s1)
                  sh           s7, 3(s1)
                  lbu          s0, -7(s1)
                  srl          a0, s9, s1
                  auipc        t4, 653262
                  slt          ra, t3, s7
                  sb           s10, -15(s1)
                  lh           sp, 7(s1)
                  lb           ra, -6(s1)
                  lui          s2, 1001663
                  sra          a1, s11, s7
                  lw           s10, 9(s1)
                  sb           t6, -14(s1)
                  sll          t4, t5, ra
                  lb           t5, 1(s1)
                  lh           s10, -9(s1)
                  sb           tp, 16(s1)
                  sh           t3, -7(s1)
                  srl          t4, s11, s3
                  xori         sp, s10, -679
                  or           s9, ra, t6
                  lw           tp, 5(s1)
                  xori         a5, t1, -24
                  lhu          a1, -3(s1)
                  lbu          s10, -12(s1)
                  nop
                  sb           t2, -9(s1)
                  sra          a6, ra, a5
                  slti         a6, s5, 1633
                  slli         a2, tp, 5
                  sb           a5, 5(s1) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_1+1985 #start load_store_instr_stream_1
                  lb           a7, -63(a6)
                  la           s2, region_1+751 #start load_store_instr_stream_0
                  sb           s7, -136(s2)
                  lh           a7, 381(s2)
                  lb           s1, 1189(s2)
                  lhu          t2, -53(a6)
                  lhu          t6, 97(s2)
                  lb           s4, -2(a6)
                  lhu          a5, -381(s2)
                  lbu          s10, -4(a6)
                  sb           s2, 507(s2)
                  sb           a2, -51(a6)
                  sb           a3, -34(a6)
                  lhu          s10, 1187(s2)
                  lb           a7, -726(s2)
                  lb           t3, 13(a6) #end load_store_instr_stream_1
                  lh           s5, -743(s2) #end load_store_instr_stream_0
                  la           t0, region_0+491 #start riscv_load_store_rand_instr_stream_4
                  slt          s10, s9, t4
                  add          a6, a4, s8
                  lh           zero, -213(t0)
                  sh           s2, 43(t0)
                  sltu         a6, tp, t1
                  sb           t1, 86(t0)
                  sh           s2, -231(t0)
                  srai         t5, a4, 9
                  xori         a2, a7, 19
                  lhu          t1, -249(t0)
                  lui          t4, 866820
                  lbu          t6, 86(t0)
                  lbu          a5, 39(t0)
                  sb           a1, -137(t0)
                  sll          a5, t3, zero
                  lb           s4, 62(t0)
                  lb           t6, -8(t0)
                  lbu          a2, 62(t0)
                  sb           a3, 39(t0)
                  sb           t6, 224(t0)
                  sb           a3, -206(t0)
                  lb           s4, -122(t0)
                  xor          s10, tp, s6
                  srl          t5, zero, gp
                  lbu          s4, 99(t0)
                  sb           a4, 246(t0)
                  or           a6, s11, s10
                  lb           s1, 60(t0)
                  ori          s7, gp, 1324
                  lbu          a5, 178(t0)
                  lhu          s9, -35(t0)
                  lhu          s8, 95(t0)
                  lui          gp, 486245
                  lbu          a5, 162(t0)
                  add          t1, a4, s1
                  lb           s8, -34(t0)
                  sb           sp, -6(t0)
                  sub          t2, s2, a1
                  or           ra, t3, s8
                  lbu          t2, -100(t0) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_1+478 #start load_store_instr_stream_1
                  la           s0, region_1+846 #start load_store_instr_stream_0
                  lbu          t5, 59(s0)
                  lbu          s5, -107(a0)
                  lhu          s3, 2(s0)
                  lh           s8, -12(a0)
                  lb           s9, -37(s0)
                  sb           s3, -109(a0)
                  lb           a3, -135(a0)
                  lb           a7, -56(s0)
                  lbu          t2, -3(s0)
                  lh           a3, 90(a0) #end load_store_instr_stream_1
                  lb           t3, 9(s0) #end load_store_instr_stream_0
                  la           t2, region_1+303 #start load_store_instr_stream_0
                  la           t5, region_1+1736 #start load_store_instr_stream_2
                  la           a5, region_1+1792 #start load_store_instr_stream_1
                  la           a3, region_1+52 #start load_store_instr_stream_3
                  lb           t6, 32(t5)
                  lb           s1, 26(t5)
                  lb           s7, 5(a5)
                  lb           a1, -11(t2)
                  sb           t2, 9(t2)
                  sb           a5, 13(a5)
                  sb           s2, 43(t5)
                  la           tp, region_1+1784 #start load_store_instr_stream_4
                  sb           s2, -4(t2)
                  sb           t1, -2(tp)
                  lbu          s4, -25(t5)
                  sb           a3, 171(a3)
                  sb           a0, 14(t2)
                  sh           t4, 10(a5)
                  sb           t4, 3(t2)
                  lbu          s5, -13(tp)
                  lbu          zero, -25(t5)
                  lbu          s2, 10(t2)
                  lbu          a2, -3(a5)
                  lbu          s0, 23(t5) #end load_store_instr_stream_2
                  lb           t4, 37(tp)
                  sh           a5, 50(a3)
                  lb           t1, 12(t2)
                  sb           s6, 181(a3)
                  lh           s9, 64(tp)
                  lb           s5, -14(t2)
                  lb           s9, 91(a3)
                  sh           a0, -6(a5) #end load_store_instr_stream_1
                  sb           zero, 230(a3) #end load_store_instr_stream_3
                  sb           t3, 15(tp) #end load_store_instr_stream_4
                  lbu          s8, 0(t2) #end load_store_instr_stream_0
                  la           s1, region_0+1562 #start riscv_load_store_hazard_instr_stream_3
                  sb           s0, 63(s1)
                  sb           s8, 62(s1)
                  slli         sp, t4, 8
                  lb           s8, 27(s1)
                  lb           s2, 43(s1)
                  sb           t3, 43(s1)
                  sll          a3, zero, t4
                  lbu          t4, -46(s1)
                  srli         a0, t6, 20
                  and          a1, t3, s0
                  sb           a3, 22(s1)
                  lw           t4, 22(s1)
                  nop
                  lhu          t2, -16(s1)
                  sb           t3, -16(s1)
                  sb           t0, -35(s1)
                  sb           s6, 31(s1)
                  sw           t2, -54(s1) #end riscv_load_store_hazard_instr_stream_3
                  srli         s7, s7, 25
                  nop
                  add          s10, s6, t5
                  sltu         a2, a4, t1
                  srl          t1, t3, gp
                  srai         t0, a0, 14
                  slti         a6, s0, -340
                  nop
                  beq          s6, s10, 25f
                  blt          t1, t2, 11f
                  andi         s0, t5, -1310
11:               bne          s7, ra, 13f
                  srai         gp, s9, 4
13:               lui          a2, 401763
                  srai         t0, gp, 5
                  nop
                  srl          t6, tp, a6
                  xor          a3, ra, a7
                  auipc        zero, 314135
                  bgeu         s7, s7, 35f
                  bltu         s7, t1, 21f
21:               blt          s10, s9, 38f
                  blt          t0, tp, 37f
                  sub          t2, t5, t3
                  beq          s10, s4, 28f
25:               andi         t0, a7, 2026
                  slli         sp, t1, 7
                  xor          s3, s9, a7
28:               slt          a0, t5, a7
                  sll          a6, sp, a6
                  add          s7, s5, t0
                  la           a7, region_1+967 #start riscv_load_store_hazard_instr_stream_5
                  sb           a4, 62(a7)
                  sh           s3, 77(a7)
                  auipc        t0, 805089
                  sb           s8, 77(a7)
                  sb           s4, -102(a7)
                  sh           a6, 123(a7)
                  sb           t1, 123(a7)
                  sb           zero, -60(a7)
                  lbu          a2, -192(a7)
                  sll          t5, gp, s10
                  lbu          a3, -192(a7)
                  lbu          t2, -192(a7)
                  sb           a7, -192(a7)
                  lh           tp, -29(a7)
                  addi         s4, t5, -1767
                  sll          t4, gp, a0
                  auipc        a0, 893799
                  lhu          zero, -29(a7)
                  sh           s11, -29(a7)
                  sh           a1, -29(a7)
                  srai         t0, s2, 25
                  lhu          s1, -29(a7)
                  lbu          s8, -29(a7)
                  lbu          s10, -29(a7)
                  lw           a1, 153(a7) #end riscv_load_store_hazard_instr_stream_5
                  sub          s0, a7, a2
                  sll          ra, t0, s11
                  sll          s2, s3, t1
                  add          a3, t3, t6
35:               sub          a1, gp, s9
                  or           a1, t2, s6
37:               sltu         gp, s8, gp
38:               sra          a3, t6, t3
                  bne          t6, t1, 42f
                  addi         a3, s9, 244
                  lui          s5, 184356
42:               sltu         tp, a5, a1
                  bge          s10, s9, 44f
44:               blt          a4, s9, 47f
                  addi         s2, s3, -863
                  sll          s5, a0, a2
47:               bltu         a7, s10, 50f
                  auipc        t6, 86066
                  addi         t2, ra, 1484
50:               lui          a2, 621397
                  srai         a6, s3, 31
                  add          a5, s1, s2
                  srli         a6, t3, 6
                  xor          s3, gp, a1
                  and          s7, tp, ra
                  bltu         t4, t4, 63f
                  beq          s9, s0, 65f
                  sll          s0, t2, t2
                  sltu         a1, a0, a6
                  nop
                  sra          a3, ra, sp
                  xor          s10, s10, s11
63:               slli         zero, gp, 0
                  andi         s0, a7, 2018
65:               nop
                  sll          a3, a0, ra
                  nop
                  xori         zero, s8, 1506
                  sll          s8, t4, sp
                  addi         s4, t0, -368
                  bltu         gp, a5, 84f
                  srl          s4, t6, t4
                  slti         s0, a5, 1374
                  slli         s1, s5, 28
                  auipc        a6, 860360
                  nop
                  bge          s8, t3, 96f
                  beq          s6, a3, 93f
                  ori          s0, s8, -214
                  auipc        a0, 1001966
                  add          a2, s7, a5
                  blt          s2, s6, 88f
                  bltu         s0, s1, 88f
84:               sltiu        t3, ra, 1236
                  ori          s8, s6, -1337
                  blt          t5, t3, 88f
                  xor          zero, s6, t4
88:               and          t6, t4, t3
                  sub          sp, a5, s11
                  bne          gp, a5, 99f
                  srli         t1, s6, 4
                  nop
93:               blt          zero, zero, 103f
                  nop
                  bne          a2, a6, 97f
96:               addi         a1, zero, 1511
97:               or           s7, t1, s11
                  slt          a5, t3, t4
99:               bltu         a6, t4, 116f
                  srli         s9, t3, 12
                  and          s0, s10, t5
                  lui          s3, 806
103:              ori          zero, s10, 2007
                  xor          s2, s1, s3
                  bne          t4, a6, 118f
                  sra          t0, s6, s3
                  xori         gp, s5, 155
                  bltu         a7, a3, 122f
                  sltu         a6, s7, s8
                  sub          t0, a6, a3
                  blt          t1, a4, 113f
                  bltu         t0, a1, 118f
113:              sll          s9, a2, a3
                  nop
                  addi         s10, sp, 680
116:              sll          s7, a5, s3
                  auipc        a6, 976975
118:              add          s9, s11, zero
                  xor          t5, a0, t3
                  xori         s9, t5, -1553
                  nop
122:              ori          t1, t2, -681
                  sub          a3, a6, s2
                  slti         t3, s0, 1896
                  or           t5, a6, ra
                  xor          t3, s9, tp
                  sub          a3, tp, s0
                  srai         s8, a6, 31
                  bltu         a1, t5, 143f
                  bge          sp, s1, 137f
                  lui          a6, 156586
                  srli         s10, s8, 11
                  andi         t2, a0, -1675
                  slli         t5, t2, 1
                  bne          a2, sp, 145f
                  sltiu        t1, a1, -812
137:              xori         s4, s10, -1487
                  slt          a7, t1, t6
                  xori         t6, s4, -1531
                  xor          s8, s11, a1
                  bne          t5, a5, 144f
                  beq          zero, s9, 159f
143:              ori          a2, a0, 1302
144:              sltu         t2, t3, s5
145:              bgeu         tp, t3, 147f
                  ori          s8, t0, -1754
147:              srli         s3, t4, 28
                  or           t3, s10, tp
                  auipc        a1, 668155
                  beq          s9, a0, 157f
                  slt          s0, t0, s10
                  lui          t1, 623870
                  ori          a5, a3, 402
                  lui          a1, 886361
                  srai         s10, t2, 14
                  slti         s5, a4, 25
157:              auipc        a3, 194739
                  beq          s0, a0, 175f
159:              bne          s4, s3, 160f
160:              slt          s9, s10, tp
                  bne          a3, s0, 165f
                  srl          gp, a1, t3
                  bgeu         a4, t1, 168f
                  sll          s4, a3, t4
165:              ori          zero, a4, 696
                  srai         s2, gp, 10
                  beq          a6, a0, 169f
168:              lui          tp, 460106
169:              srai         a7, s3, 15
                  addi         t5, t1, -1132
                  auipc        s4, 72176
                  xori         a5, t6, 1306
                  addi         s1, t2, -1537
                  sltu         s9, s7, s1
175:              addi         a5, sp, 473
                  sub          t0, zero, s2
                  bgeu         s11, t0, 184f
                  sll          sp, s1, s2
                  la           s0, region_1+1925 #start load_store_instr_stream_1
                  la           a0, region_1+1557 #start load_store_instr_stream_2
                  la           a5, region_1+1728 #start load_store_instr_stream_4
                  lb           t4, -5(a5)
                  la           ra, region_1+934 #start load_store_instr_stream_0
                  la           s8, region_1+80 #start load_store_instr_stream_3
                  lbu          s2, -71(s0)
                  lb           gp, 10(a0)
                  lbu          a6, -123(s0)
                  lbu          s9, -66(s0)
                  lb           gp, 4(a0)
                  lb           t0, 777(s8)
                  sb           s6, 5(ra)
                  lb           t5, 47(a5)
                  sb           t4, -32(s0)
                  lb           a2, -16(a0)
                  lh           zero, 1746(s8)
                  sb           t0, 9(ra)
                  lbu          t0, -3(ra)
                  lb           s9, -108(s0)
                  lbu          t3, -3(ra)
                  sh           s6, -62(a5)
                  sb           s10, -7(a0)
                  lbu          gp, 23(s8)
                  lh           a6, -21(s0) #end load_store_instr_stream_1
                  lbu          sp, -62(a5)
                  sb           a6, 16(ra)
                  sh           tp, 1082(s8)
                  lbu          t2, 449(s8) #end load_store_instr_stream_3
                  lhu          s3, -1(a0) #end load_store_instr_stream_2
                  lhu          tp, 56(a5)
                  sb           s5, 41(a5)
                  sb           t0, -3(ra)
                  lb           s4, -31(a5)
                  lbu          s10, 39(a5) #end load_store_instr_stream_4
                  lbu          s1, 16(ra) #end load_store_instr_stream_0
                  ori          zero, s5, 2034
                  xor          t5, s2, a3
                  srl          s7, s4, t1
                  bgeu         zero, t2, 184f
                  srai         a7, t3, 14
184:              srl          t0, a6, t3
                  sltu         t3, s8, s8
                  beq          a6, t3, 189f
                  beq          gp, t4, 195f
                  bgeu         gp, s9, 194f
189:              xor          a7, sp, s7
                  and          a0, a5, s0
                  srl          zero, s6, gp
                  blt          ra, s0, 211f
                  addi         s9, ra, -1728
194:              addi         t3, t0, -901
195:              blt          t4, zero, 201f
                  sub          t0, tp, s6
                  andi         t6, s4, -1657
                  or           a7, sp, tp
                  sra          s8, s8, s11
                  srai         a6, s9, 12
201:              beq          t6, s1, 215f
                  xori         t0, a5, 46
                  srl          t3, a3, a2
                  bgeu         a6, a0, 206f
                  srl          sp, gp, t5
206:              blt          t1, s6, 215f
                  sltiu        gp, s10, 197
                  xori         s5, t6, -746
                  beq          a7, t5, 210f
210:              nop
211:              slt          sp, s5, gp
                  addi         tp, s3, -1122
                  slli         s1, s9, 26
                  lui          s10, 1040502
215:              sltiu        a5, a0, -1845
                  bne          tp, s11, 233f
                  slli         s7, s10, 29
                  ori          a6, s2, 1556
                  sltu         zero, s1, t3
                  add          a2, a1, s4
                  lui          a6, 839791
                  lui          gp, 84693
                  sra          a0, ra, t0
                  bgeu         t4, sp, 239f
                  bltu         a7, s8, 238f
                  sltiu        t3, t0, -1448
                  xori         a6, s3, 210
                  xori         t6, a5, 651
                  xor          a2, t2, a2
                  slt          a2, s0, t4
                  and          s3, a7, a7
                  xori         s8, s0, 87
233:              srai         s3, t4, 31
                  auipc        a6, 276969
                  sltiu        t0, s11, 456
                  sub          a0, s11, t4
                  srli         s2, t5, 4
238:              srli         t6, t1, 15
239:              slti         s4, s10, -151
                  xor          a2, s9, s0
                  sltiu        t3, s2, -259
                  add          a5, a2, s0
                  sltiu        t1, t6, -1626
                  srl          s4, s0, s6
                  slti         s9, a6, -247
                  srl          s4, s6, t1
                  xori         s7, t4, -1864
                  add          s3, t3, t1
                  slt          t1, tp, s1
                  nop
                  sll          sp, t3, t5
                  and          a6, sp, a2
                  bne          s5, t2, 268f
                  addi         a1, t4, 565
                  bne          gp, s6, 257f
                  sltu         s9, s10, s6
257:              sll          a5, s11, tp
                  sra          t4, sp, s11
                  slli         a2, s11, 4
                  srli         s4, s11, 4
                  lui          t3, 443562
                  sub          t0, s3, t1
                  lui          a1, 904274
                  slli         s3, gp, 6
                  add          s8, s2, s1
                  slti         sp, a0, 712
                  bne          a4, t0, 270f
268:              andi         s8, a3, 1095
                  add          s4, t1, ra
270:              slt          t3, s8, a6
                  andi         gp, s6, 429
                  srai         ra, s8, 19
                  or           s8, tp, s10
                  slt          a5, s1, sp
                  sltiu        a2, tp, 78
                  sltu         t5, a3, s2
                  or           a6, a5, s3
                  srai         a7, a3, 23
                  andi         a6, t3, 1905
                  ori          s1, a6, 686
                  slti         t4, t6, -1004
                  andi         zero, t1, -1602
                  bgeu         s5, gp, 296f
                  sll          t0, t3, zero
                  blt          a7, a0, 299f
                  xori         s5, zero, -1905
                  xor          a2, zero, tp
                  and          gp, a4, a4
                  srl          t3, ra, t3
                  and          s1, tp, a5
                  sra          s7, s5, a3
                  bge          a2, tp, 308f
                  and          a0, t3, a6
                  bge          s11, s6, 308f
                  slti         t2, t2, 1152
296:              xori         a3, sp, -720
                  sltiu        sp, t0, -1459
                  sub          s9, zero, s0
                  sll          ra, t1, gp
                  andi         t6, s6, -1643
                  la           s0, sub_2
                  sll          t3, a3, s3
                  sltu         s3, a2, zero
                  lui          t2, 467620
                  addi         s0, s0, 418
                  add          zero, t4, a7
                  sltiu        s10, t4, -889
sub_1_j3:         jalr         t4, s0, -418 #jump sub_1 -> sub_2
                  lui          tp, 362587
299:              slli         t4, s3, 31
                  sll          s4, s7, s7
                  xori         a1, t0, 747
                  sll          s9, a5, a6
                  slt          a7, t2, tp
                  addi         t4, s1, 1183
                  auipc        a7, 70202
                  xor          gp, s4, s1
                  beq          s9, a7, 324f
308:              srl          a1, ra, zero
                  bge          s11, gp, 325f
                  sub          s4, s6, a7
                  slli         t3, s2, 6
                  sltiu        s1, a0, 321
                  sltu         gp, a1, t6
                  ori          zero, s7, 201
                  auipc        s7, 953205
                  auipc        ra, 458094
                  srl          sp, a0, t5
                  bne          s11, t0, 324f
                  sll          t0, s5, t3
                  blt          t0, t6, 323f
                  srai         s8, zero, 5
                  bgeu         a2, s4, 331f
323:              slti         a7, t5, 545
324:              lui          a3, 87895
325:              slt          a0, t6, s1
                  slti         s7, a5, 1699
                  auipc        s4, 506046
                  srai         zero, t6, 10
                  slti         a5, s2, 1945
                  srli         s2, s7, 30
331:              ori          s5, t6, 1635
                  lui          a7, 509244
                  slt          sp, s7, s6
                  bgeu         s9, t0, 338f
                  add          s10, s7, a7
                  or           t6, a4, s9
                  add          s9, s5, t2
338:              blt          t2, sp, 341f
                  srli         a1, t3, 22
                  auipc        t5, 1001099
341:              srai         a0, t0, 0
                  xor          s8, s3, a5
                  nop
                  srai         ra, s0, 26
                  xor          s9, s0, s1
                  lui          t1, 814601
                  and          gp, t4, s2
                  srli         zero, a6, 23
                  add          s1, s10, a0
                  bge          ra, a4, 367f
                  addi         t6, t1, 963
                  bne          sp, t5, 354f
                  blt          t3, s9, 360f
354:              sltiu        t4, s7, 707
                  slli         a5, s4, 3
                  srli         a7, s7, 9
                  bltu         s8, s8, 374f
                  sltu         t5, zero, t2
                  nop
360:              bge          s3, s5, 361f
361:              sub          t5, sp, s8
                  bgeu         a1, s4, 381f
                  blt          s5, s4, 368f
                  sll          s4, s4, a3
                  slti         s7, a1, 350
                  andi         a6, s9, -1788
367:              sll          t0, s4, s6
368:              bne          s8, a5, 369f
369:              sll          zero, a7, gp
                  blt          t1, a6, 378f
                  bne          a0, s11, 377f
                  sltu         t2, t6, gp
                  srl          t0, t3, s4
374:              slt          s5, s0, t1
                  bltu         a4, s6, 390f
                  slt          s4, s10, a1
377:              nop
378:              slli         a5, a1, 4
                  sll          s4, s7, t3
                  and          s8, tp, s3
381:              bne          a3, s9, 391f
                  xor          zero, s6, tp
                  sltiu        s1, s0, 90
                  xori         s5, s9, 1354
                  beq          a1, a0, 388f
                  add          t6, t6, t1
                  sltu         t5, zero, a5
388:              srl          a5, gp, s1
                  bltu         t3, s7, 403f
390:              addi         sp, s5, -1973
391:              xori         s9, sp, 1947
                  srl          t0, s2, ra
                  or           a5, a5, a5
                  beq          ra, t1, 396f
                  bge          s6, s7, 397f
396:              add          s9, t3, s3
397:              or           t1, t5, s8
                  beq          a4, s0, 413f
                  sltiu        s7, s3, -599
                  bne          a0, t1, 413f
                  or           a6, s0, s9
                  nop
403:              sll          ra, t2, t5
                  sltu         zero, s7, t4
                  beq          a5, a6, 412f
                  sub          t3, a4, a0
                  sra          a1, s8, t0
                  slt          gp, s3, sp
                  bge          s5, t5, 411f
                  srl          s1, s11, s9
411:              bne          sp, s8, 424f
412:              ori          zero, s7, -510
413:              addi         s2, t5, -114
                  sltu         s3, a5, a5
                  auipc        s10, 454250
                  ori          s7, s3, 697
                  bne          s11, a5, 419f
                  srai         s2, a5, 23
419:              bltu         a0, sp, 434f
                  slti         s4, a5, -1382
                  srli         sp, gp, 4
                  andi         t4, ra, 2046
                  bge          t6, a2, 431f
424:              bne          zero, s11, 431f
                  xor          t2, a5, a7
                  bgeu         s11, t2, 443f
                  slti         s10, t3, -1567
                  add          t3, a7, s5
                  addi         t0, s4, -1855
                  sltiu        t6, a5, 435
431:              bgeu         sp, a7, 436f
                  nop
                  slt          s4, a0, s8
434:              sltiu        s5, s3, -418
                  add          s1, s1, s8
436:              sra          s2, s4, a6
                  addi         s8, t6, 805
                  bltu         a5, s7, 441f
                  bltu         zero, zero, 443f
                  or           t3, s0, s10
441:              beq          a1, tp, 454f
                  bne          a0, t0, 458f
443:              sub          t6, gp, sp
                  xori         s1, s5, -824
                  or           a5, a2, s11
                  and          gp, t3, a1
                  srl          s1, t2, s5
                  nop
                  beq          s9, s9, 462f
                  add          t1, a1, sp
                  slt          tp, s6, t2
                  nop
                  auipc        a5, 270032
454:              ori          s5, s10, 1083
                  and          a2, s11, a2
                  sll          t4, s10, t3
                  srli         t0, zero, 3
458:              sra          a0, a3, ra
                  sll          s3, t2, s2
                  xor          a1, a7, s8
                  srli         t0, s7, 30
462:              lui          a0, 794272
                  xori         t3, a7, 1667
                  xori         a3, tp, 1133
                  sltu         a7, t3, a4
                  slli         gp, ra, 30
                  slt          t0, zero, ra
                  sll          a6, s6, a2
                  srl          a1, tp, s11
                  or           a5, t0, a6
                  and          t0, s0, s10
                  slli         a2, s11, 17
                  or           a7, t5, sp
                  nop
                  sub          t6, a5, gp
                  sra          t6, t0, a6
                  blt          t2, s10, 479f
                  and          t5, a5, s6
479:              bltu         s0, a4, 496f
                  xor          zero, s11, t1
                  srl          a2, s10, s8
                  addi         s10, a0, 1382
                  beq          t1, s0, 489f
                  addi         a5, s2, -836
                  srl          sp, s9, s4
                  bne          t5, a6, 488f
                  nop
488:              bltu         a7, t6, 505f
489:              slt          ra, s10, t0
                  sltu         ra, s5, gp
                  andi         t5, s7, -269
                  bgeu         t1, a7, 511f
                  or           a6, s5, s3
                  sltu         a0, s0, s8
                  sltiu        t1, t4, 1988
496:              bne          t3, s6, 510f
                  add          a1, t3, s6
                  bne          s11, t1, 500f
                  bgeu         s4, t2, 501f
500:              bgeu         s5, a0, 515f
501:              slti         a3, a0, -1657
                  or           s1, s3, s5
                  bne          s10, a1, 512f
                  slti         s10, tp, -54
505:              ori          s8, a3, -109
                  slti         t0, a3, 1609
                  xori         s4, zero, 1404
                  srli         a7, a1, 8
                  beq          tp, s2, 512f
510:              slt          t3, a7, t0
511:              srai         sp, a5, 11
512:              xori         s9, t5, 1242
                  bge          s0, s1, 523f
                  slti         s8, s2, -1465
515:              srl          s1, s4, s5
                  srl          a7, a3, t3
                  srl          s3, s1, sp
                  sltu         s10, a4, s7
                  srli         a5, s5, 28
                  xor          ra, tp, t3
                  sll          t0, a1, s4
                  slli         ra, s4, 12
523:              xori         s4, ra, -1832
                  xori         a7, s1, 1580
                  bgeu         s5, ra, 532f
                  bne          t1, s10, 527f
527:              sltiu        t2, t1, 1772
                  bge          s4, t0, 531f
                  bgeu         tp, a3, 535f
                  slli         gp, a1, 12
531:              and          s7, s5, a3
532:              srai         s9, a2, 27
                  lui          s5, 1027209
                  slt          s10, s10, s3
535:              bltu         t6, s0, 549f
                  ori          t6, a6, -1618
                  bge          s10, a5, 538f
538:              addi         a5, s7, -1741
                  slti         t3, ra, -473
                  add          t6, s11, a7
                  add          t3, a7, s2
                  sra          t5, s4, s11
                  beq          s8, s9, 545f
                  andi         t2, t2, 1624
545:              xori         t1, gp, -1536
                  slti         t4, s4, 678
                  sub          a2, ra, a0
                  slli         gp, s8, 24
549:              nop
                  bne          s8, a6, 556f
                  sra          s7, t5, a0
                  andi         s4, s6, -720
                  srai         t2, t2, 23
                  bge          s6, a6, 573f
                  sll          s0, t1, s2
556:              sra          t5, a5, s3
                  lui          s8, 1027192
                  srai         t0, ra, 29
                  bltu         t6, s11, 565f
                  srl          ra, tp, t4
                  andi         t1, a7, -158
                  srl          a0, tp, a7
                  and          t6, a2, gp
                  bne          zero, s6, 566f
565:              auipc        s10, 943072
566:              lui          t4, 308768
                  xori         s8, s8, -399
                  sub          t2, s3, s4
                  addi         t2, a5, 66
                  srli         ra, a1, 18
                  ori          s4, a2, 2039
                  srli         s7, ra, 16
573:              sltiu        t1, t4, 995
                  bge          t5, a6, 577f
                  xor          s10, a4, s11
                  andi         s10, t0, 1367
577:              xori         ra, s0, -1267
                  and          a1, s2, a1
                  sll          s1, t3, s9
                  sra          s8, s11, s9
                  beq          s9, s0, 597f
                  ori          s0, t6, 388
                  sra          tp, t3, a1
                  xori         a1, t2, -1507
                  or           s7, s10, s2
                  ori          ra, a1, 765
                  addi         a5, t2, 144
                  slti         s2, zero, 1855
                  srli         s1, t5, 10
                  sra          a0, s1, s2
                  slt          zero, t1, a5
                  lui          s7, 365479
                  slli         gp, s7, 14
                  lui          a1, 969548
                  ori          ra, a2, 183
                  sltiu        a5, a0, -843
597:              add          s0, a5, s10
                  lui          s2, 393760
                  sll          a3, s0, s5
                  bne          a2, t5, 614f
                  srai         t0, tp, 0
                  xori         s4, tp, 1662
                  srli         tp, s0, 26
                  sra          zero, s3, s1
                  bgeu         s2, ra, 619f
                  sll          a7, a5, s1
                  slt          t1, a2, t4
                  addi         t6, a6, -1078
                  srli         ra, zero, 0
                  auipc        t3, 162768
                  nop
                  sltiu        a7, t2, -627
                  srl          a2, t6, a7
614:              beq          s6, a3, 617f
                  beq          s5, t6, 632f
                  andi         t5, s10, 1321
617:              add          zero, t0, gp
                  xori         s5, a1, -1323
619:              blt          s2, t0, 621f
                  bge          a1, s9, 633f
621:              addi         a3, s0, -1309
                  bgeu         sp, t5, 624f
                  srl          s2, s2, s4
624:              andi         t1, s11, -1196
                  slt          a7, s9, s10
                  slti         s10, s0, 1884
                  xor          s10, a6, t2
                  blt          s11, a5, 641f
                  sra          a7, t5, s3
                  auipc        tp, 148814
                  blt          s6, a4, 641f
632:              auipc        gp, 339811
633:              blt          s4, s9, 640f
                  sltu         t6, tp, t1
                  or           t5, t6, a2
                  sll          a0, a5, s2
                  andi         t5, s4, 972
                  sltu         a2, s11, sp
                  sltu         t2, a3, ra
640:              sub          sp, s4, t2
641:              blt          a4, s6, 642f
642:              nop
                  xori         a7, s5, 201
                  slti         a6, s10, -1910
                  auipc        t2, 24259
                  slt          t0, s6, t2
                  srl          t5, a2, s3
                  xori         t4, s8, -1584
                  auipc        tp, 661384
                  nop
                  bltu         a7, s0, 668f
                  addi         s3, ra, 1160
                  sll          a7, ra, s6
                  and          a1, s1, t4
                  auipc        s10, 55570
                  bge          t0, s6, 665f
                  andi         gp, t3, 1136
                  xori         a2, zero, 1930
                  sll          a0, t0, s2
                  sll          t1, t1, t0
                  and          ra, s3, a2
                  beq          a0, a2, 677f
                  xor          s5, s11, a6
                  beq          t3, t6, 671f
665:              beq          s1, t2, 668f
                  srai         s0, t1, 10
                  lui          s5, 153736
668:              bltu         a7, t5, 676f
                  add          a6, a6, t0
                  or           tp, a3, sp
671:              bltu         s2, a4, 673f
                  beq          zero, t2, 673f
673:              slli         gp, s0, 21
                  srl          s3, s9, gp
                  nop
676:              slti         s7, t5, -1638
677:              auipc        a6, 355709
                  lui          s7, 323235
                  bgeu         s8, a0, 696f
                  slli         s2, s11, 1
                  blt          t2, s0, 683f
                  bge          a3, tp, 686f
683:              xori         t5, a4, 1724
                  sltu         s4, a5, t0
                  srai         t2, t2, 3
686:              lui          t6, 998081
                  addi         a3, t6, 590
                  addi         a3, t6, 113
                  add          s9, t4, s10
                  bge          ra, s9, 705f
                  ori          t4, a3, 1063
                  xori         s10, zero, -792
                  ori          s8, ra, -1876
                  blt          s0, s10, 699f
                  sltu         s4, s4, t6
696:              slti         a3, ra, 960
                  bge          tp, s8, 716f
                  srl          t0, a0, s10
699:              slti         t4, a4, 1809
                  auipc        s10, 880006
                  bge          s11, t3, 702f
702:              srai         a6, a0, 1
                  or           s8, a1, a6
                  bne          t4, a7, 707f
705:              beq          t5, t2, 718f
                  bgeu         a0, s9, 721f
707:              sltu         s7, t0, a6
                  beq          t6, s4, 715f
                  lui          ra, 174010
                  sub          sp, s9, t2
                  auipc        t1, 914500
                  srli         s0, zero, 6
                  or           s7, t0, s1
                  slli         s8, s10, 13
715:              bne          t0, t5, 729f
716:              sra          t1, s6, ra
                  and          a6, a3, a6
718:              bge          t0, a2, 729f
                  bltu         a2, t4, 729f
                  bgeu         s10, s3, 727f
721:              andi         s0, t0, 112
                  slti         s1, a2, 1719
                  xor          t2, s0, zero
                  lui          t1, 299255
                  nop
                  sltiu        t4, s8, 735
727:              bltu         s2, s6, 729f
                  xor          s2, t5, s5
729:              lui          s7, 454001
                  or           t1, ra, s6
                  slti         t1, s1, 168
                  lui          tp, 266023
                  lw           t4, 4(s6)
                  and          s10, s5, s8
                  srli         gp, s6, 23
                  slli         s1, a5, 3
                  addi         s6, s6, 40
                  lui          a3, 1023580
1420:             addi x16, x29, 0
1420:             jalr x16, x16, 0
sub_2:            addi         s6, s6, -56
                  add          zero, t2, s6
                  auipc        s4, 25579
                  xori         s4, a4, 564
                  sub          s4, t0, s6
                  sw           t4, 4(s6)
                  addi         t2, s8, 980
                  xori         t3, s1, -1386
                  xor          s1, t2, a0
                  sltiu        s8, s4, -1422
                  auipc        t5, 784083
                  or           s2, t1, s8
                  la           sp, region_0+1356 #start riscv_load_store_rand_instr_stream_0
                  lbu          s9, -14(sp)
                  lw           s8, -16(sp)
                  andi         t5, a7, 377
                  andi         s3, a5, 1716
                  lb           a3, -12(sp)
                  lb           s2, -15(sp)
                  slt          s7, a6, t4
                  lbu          t6, 11(sp)
                  lb           s8, 11(sp)
                  srli         gp, s3, 10
                  sll          a3, s2, s1
                  lh           t0, 10(sp)
                  add          t2, s4, s9
                  andi         a3, s1, 1138
                  lbu          a1, 15(sp)
                  sb           s1, 8(sp)
                  sb           ra, -10(sp)
                  slli         a5, a6, 9
                  nop
                  lb           a0, 10(sp)
                  slti         a2, s2, -968
                  or           s7, s1, t3
                  ori          s5, s9, 495
                  srai         gp, t4, 11
                  lb           a7, 2(sp)
                  lb           s9, -13(sp)
                  sb           s7, 11(sp)
                  sh           s3, 0(sp)
                  sltiu        a7, s8, 292
                  sh           s5, 4(sp)
                  sb           a2, 15(sp)
                  sb           t2, 10(sp)
                  sra          t2, s1, t3
                  addi         t6, t3, 830
                  slti         a0, a6, -1824
                  andi         tp, a6, 495
                  sb           a4, -1(sp)
                  or           s4, s1, zero
                  lb           s8, -13(sp)
                  lbu          s2, 2(sp)
                  sh           a6, -2(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+480 #start riscv_load_store_rand_instr_stream_1
                  srli         s10, t4, 16
                  lbu          a5, -11(t3)
                  lbu          a0, 9(t3)
                  slt          t6, t4, a4
                  add          t2, s11, t5
                  slti         a2, s1, 1544
                  sh           ra, -16(t3)
                  slt          a1, a3, tp
                  lbu          a1, -7(t3)
                  sltu         a0, tp, t0
                  lb           t4, -6(t3)
                  lh           s0, -2(t3)
                  or           tp, s5, a1
                  lbu          s5, 10(t3)
                  lb           s0, -1(t3)
                  andi         a0, s1, -233
                  srl          s2, s0, a7
                  andi         s2, s8, -971
                  lb           a1, -5(t3)
                  add          t4, a6, s3
                  sll          t2, gp, a7
                  addi         t2, s9, -9
                  ori          a0, t4, -1365
                  slli         a2, s3, 28
                  lhu          s0, 10(t3)
                  slti         ra, s4, -1776
                  lb           t4, 14(t3)
                  andi         t2, s10, -366
                  slt          s4, t0, a6
                  sltu         s1, t5, zero
                  sh           a3, 2(t3) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_0+0 #start riscv_load_store_hazard_instr_stream_0
                  sh           zero, 222(a3)
                  lbu          t0, 222(a3)
                  lhu          a2, 222(a3)
                  sh           t5, 222(a3)
                  slti         s9, t3, 1135
                  lbu          s9, 222(a3)
                  sb           s7, 78(a3)
                  xori         t3, a0, -1229
                  srai         s7, s11, 31
                  lh           t1, 78(a3)
                  lb           s1, 53(a3)
                  lbu          s8, 53(a3)
                  sb           a0, 53(a3)
                  sh           a5, 228(a3)
                  lw           s4, 228(a3)
                  sb           s9, 193(a3)
                  sb           t4, 193(a3)
                  lbu          s9, 193(a3)
                  lb           t3, 193(a3)
                  sb           t2, 193(a3)
                  sll          s2, s7, s2
                  lb           tp, 193(a3)
                  lb           ra, 125(a3)
                  lb           a6, 125(a3) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+383 #start load_store_instr_stream_0
                  la           a1, region_1+1162 #start load_store_instr_stream_1
                  sb           s5, -7(s8)
                  lb           a6, -10(s8)
                  lw           a7, 598(a1)
                  lb           s4, 629(a1)
                  lb           s3, -11(s8)
                  sw           s1, 646(a1)
                  lbu          s2, -6(s8)
                  lhu          a7, -544(a1)
                  lb           a2, 1(s8)
                  sb           a2, -1061(a1)
                  lhu          tp, 5(s8)
                  lhu          zero, -724(a1)
                  lb           s2, 7(s8)
                  lb           ra, 16(s8)
                  lhu          s3, 608(a1) #end load_store_instr_stream_1
                  lhu          s4, -7(s8) #end load_store_instr_stream_0
                  la           gp, region_1+520 #start riscv_load_store_hazard_instr_stream_1
                  sb           a2, 11(gp)
                  sb           t5, -10(gp)
                  lhu          ra, -10(gp)
                  lbu          a0, -10(gp)
                  lbu          s10, -10(gp)
                  lb           t6, 3(gp)
                  sh           a7, -6(gp)
                  sb           s9, -6(gp)
                  sh           s9, -6(gp)
                  lb           a3, -6(gp)
                  lhu          t4, -6(gp)
                  lbu          s0, 9(gp)
                  or           a5, a5, a2
                  lbu          a7, 9(gp)
                  lb           t4, 9(gp) #end riscv_load_store_hazard_instr_stream_1
                  la           s8, region_1+1838 #start load_store_instr_stream_1
                  lb           s10, -45(s8)
                  la           s1, region_1+1166 #start load_store_instr_stream_0
                  lhu          s9, -34(s1)
                  sb           a7, 11(s1)
                  lb           a3, 26(s8)
                  lh           a5, 60(s1)
                  sb           t6, -31(s8)
                  sh           s6, 22(s8)
                  sb           gp, -42(s1)
                  lb           a6, 25(s8)
                  lhu          a5, -36(s1)
                  sb           t5, -21(s8)
                  lb           tp, 49(s1)
                  sh           a7, 64(s8)
                  sb           s7, -32(s8)
                  lbu          a1, -36(s8) #end load_store_instr_stream_1
                  sb           a6, 9(s1) #end load_store_instr_stream_0
                  slli         t3, sp, 10
                  bltu         ra, gp, 3f
                  blt          s1, a7, 22f
3:                srli         t3, t0, 23
                  addi         s4, a1, 1862
                  ori          s2, zero, 178
                  xori         t5, a2, 1900
                  andi         t4, s8, 674
                  blt          s2, t6, 17f
                  sll          sp, s6, ra
                  srai         a3, a2, 13
                  slti         t6, ra, 1492
                  slli         s5, s4, 16
                  sll          a2, t2, t0
                  bltu         a0, tp, 17f
                  sll          s0, a2, t5
                  slti         a6, s7, 475
17:               srl          t2, s2, tp
                  and          t5, a6, zero
                  nop
                  lui          t5, 238400
                  or           s3, a2, s5
22:               sub          t0, zero, t6
                  srl          t5, gp, tp
                  blt          s11, s11, 27f
                  bge          t6, t4, 32f
                  blt          s7, t6, 29f
27:               beq          s11, a4, 28f
28:               xor          s4, t3, s10
29:               slti         gp, a5, 1854
                  srai         sp, s0, 2
                  sltiu        gp, s6, -1801
32:               bge          a3, s6, 49f
                  slt          a2, t0, s8
                  sub          sp, t5, a2
                  or           s9, s6, a2
                  slti         s4, sp, -1206
                  sll          s5, s11, zero
                  sltu         a7, t5, s5
                  sltiu        t5, a0, 1618
                  addi         zero, zero, 1009
                  srai         s3, t0, 30
                  slt          a3, s2, t4
                  bgeu         s11, t4, 53f
                  xori         a0, a4, 1189
                  and          a7, s10, t5
                  auipc        t5, 613763
                  and          t2, a2, s11
                  ori          s5, t4, -1446
49:               ori          s0, s5, -1365
                  add          a3, s4, s0
                  slli         s0, s10, 15
                  andi         a3, t6, -1384
53:               lui          s9, 60746
                  lui          t1, 1033034
                  bne          s3, s10, 67f
                  bltu         a0, sp, 57f
57:               bltu         s0, t4, 62f
                  bgeu         s5, t5, 61f
                  sll          gp, s9, a5
                  bgeu         s1, t2, 64f
61:               sra          a3, s0, t2
62:               sub          t3, a0, a1
                  lui          a2, 431121
64:               nop
                  srli         s10, a0, 25
                  beq          a0, s8, 78f
67:               nop
                  sra          t2, s3, s11
                  sub          sp, a2, zero
                  slt          a5, t5, s2
                  addi         s1, gp, 1104
                  blt          s4, a1, 81f
                  slli         a7, s0, 7
                  add          a1, tp, s10
                  xor          s10, s9, s10
                  sub          tp, gp, t6
                  xor          t0, t5, zero
78:               sltu         gp, s6, a5
                  bge          a7, gp, 85f
                  srl          sp, s11, a1
81:               sltu         a0, s7, t5
                  slli         a7, a6, 31
                  andi         a1, zero, 610
                  sub          s5, a2, a7
85:               andi         t6, s9, 343
                  and          t4, s11, t1
                  bne          gp, sp, 88f
88:               slt          t5, s4, t3
                  addi         s0, s6, 983
                  sltiu        a3, t5, 669
                  bge          tp, s7, 104f
                  ori          s10, s0, -340
                  or           a5, s11, a2
                  sltiu        s4, t3, 323
                  bge          a1, t5, 109f
                  bltu         a7, a3, 107f
                  slli         sp, t3, 4
                  blt          s1, s0, 117f
                  bltu         s11, a0, 115f
                  nop
                  bltu         t1, t4, 111f
                  sub          t3, s6, t2
                  bge          s7, a6, 108f
104:              slti         s7, s0, -282
                  addi         a6, s7, -1552
                  beq          s0, a5, 117f
107:              slti         gp, a4, 624
108:              beq          s6, t2, 121f
109:              sll          t6, a7, a1
                  xor          tp, a7, a5
111:              andi         t0, a1, -1002
                  sra          s2, a4, t6
                  srai         s9, t1, 29
                  auipc        a7, 572227
115:              sltu         t0, t0, gp
                  auipc        gp, 710204
117:              ori          s8, t6, -929
                  blt          s7, s9, 136f
                  sub          gp, a4, t1
                  srl          a7, s6, tp
121:              ori          t6, t2, 1850
                  bne          a4, t3, 125f
                  add          s1, gp, s0
                  blt          t4, a3, 128f
125:              sll          s0, s1, s8
                  add          t2, t4, a7
                  lui          t6, 401370
128:              ori          s10, s5, -182
                  blt          zero, t2, 141f
                  sltu         t1, s10, s2
                  add          a6, s4, a5
                  add          s7, s4, t1
                  auipc        gp, 612005
                  bgeu         a6, a1, 143f
                  srli         ra, t4, 29
136:              sub          a1, s6, s5
                  xor          tp, s6, s4
                  bne          s2, a5, 143f
                  auipc        a7, 456681
                  sra          t4, s8, a2
141:              or           a3, a4, s11
                  add          t1, s0, t2
143:              ori          t2, s10, 900
                  slti         a6, s0, 828
                  bne          a1, s8, 148f
                  sra          s4, tp, s7
                  ori          s4, zero, -466
148:              add          sp, a1, gp
                  srl          t5, a4, s10
                  srli         t4, s7, 15
                  sltu         t2, t3, a6
                  lui          s0, 257378
                  add          a6, s3, t4
                  srli         a5, sp, 16
                  sub          a5, a7, s0
                  addi         t2, t4, 1894
                  addi         s0, s0, 675
                  and          sp, s5, ra
                  ori          t1, t0, -439
                  bne          t3, zero, 178f
                  ori          t3, s8, 46
                  and          s5, s5, gp
                  andi         s3, zero, -1250
                  bgeu         s9, s10, 176f
                  add          s2, t0, t1
                  and          s4, a6, t4
                  xor          a0, s1, a3
                  sltiu        a2, t3, 506
                  bgeu         s0, s6, 175f
                  xori         a3, a0, 445
                  lui          a6, 167651
                  bgeu         s5, s1, 186f
                  srli         t6, a6, 23
                  srl          gp, ra, s5
175:              xori         sp, s4, 1568
176:              sll          s5, sp, sp
                  auipc        s2, 64807
178:              srai         gp, a6, 9
                  srai         s7, s10, 5
                  bne          s4, a0, 193f
                  add          t6, s8, s9
                  auipc        t0, 381610
                  lui          a3, 198753
                  sra          tp, s2, t1
                  sub          a2, s0, sp
186:              addi         s10, a7, -1572
                  bltu         s7, s6, 190f
                  sltiu        s4, a1, 142
                  sub          tp, a4, gp
190:              srli         s7, s9, 15
                  sub          s5, s6, a6
                  and          ra, s10, t5
193:              beq          a0, t6, 209f
                  bne          zero, a5, 203f
                  ori          a6, s8, 221
                  slti         s2, s7, 1465
                  bge          t5, gp, 208f
                  srai         sp, a0, 27
                  addi         t2, a0, -1018
                  add          s1, tp, t1
                  bgeu         a0, sp, 218f
                  slti         a0, t1, 348
203:              add          t1, s0, a0
                  sll          zero, a2, s2
                  auipc        s0, 464800
                  andi         a1, s7, 318
                  sra          t1, a3, a3
208:              ori          a6, tp, -1408
209:              srai         tp, t5, 24
                  andi         s1, a6, -1732
                  srai         s7, a3, 25
                  slt          a2, a2, a5
                  sltiu        a3, s6, 115
                  slti         gp, s5, 1293
                  lui          a2, 619410
                  auipc        a7, 669951
                  auipc        s1, 563692
218:              bne          a3, s8, 228f
                  andi         a7, ra, 1402
                  andi         a3, tp, -1030
                  slt          s0, t6, a3
                  or           a5, gp, t1
                  lui          s8, 795163
                  andi         t2, a2, 748
                  xor          zero, sp, s1
                  srl          a5, zero, t5
                  sltu         s1, a7, s10
228:              xori         t6, t5, -2003
                  ori          a3, a6, -997
                  nop
                  slt          t6, s11, a2
                  xori         a2, s5, 451
                  xor          s2, s10, t3
                  srai         t2, gp, 18
                  srli         s8, a5, 10
                  bge          t5, t5, 240f
                  slli         t3, t0, 5
                  xori         t4, t3, 1556
                  slt          gp, sp, s2
240:              slti         t5, a2, 204
                  slli         s2, t0, 7
                  xor          a6, s3, ra
                  sub          t6, s0, s10
                  srli         a3, a2, 10
                  and          gp, s5, t4
                  lw           t4, 4(s6)
                  ori          a7, t2, 1047
                  addi         s6, s6, 56
                  slli         t0, a5, 12
                  xor          tp, t1, sp
                  addi         t0, s8, 291
415:              addi x11, x29, 1
415:              jalr x11, x11, 0
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
.align           2
mtvec_handler:    
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x14, x22, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x13, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x13, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x13, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x13, x31, ecall_handler
                  li x31, 0x1
                  beq x13, x31, instr_fault_handler
                  li x31, 0x5
                  beq x13, x31, load_fault_handler
                  li x31, 0x7
                  beq x13, x31, store_fault_handler
                  li x31, 0xc
                  beq x13, x31, pt_fault_handler
                  li x31, 0xd
                  beq x13, x31, pt_fault_handler
                  li x31, 0xf
                  beq x13, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

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
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x22, x14, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x14, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x14, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x22, x14, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x22, x14, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x22, x14, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
