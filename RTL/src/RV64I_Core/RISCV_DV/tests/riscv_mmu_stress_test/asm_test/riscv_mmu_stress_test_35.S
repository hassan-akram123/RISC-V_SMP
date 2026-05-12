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
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0xf6d987c8
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x4
                  li x5, 0x0
                  li x6, 0xfe0313c2
                  li x7, 0x7752da91
                  li x8, 0x0
                  li x9, 0x21d86489
                  li x11, 0xff9ee956
                  li x12, 0x6fa6d52e
                  li x13, 0x80000000
                  li x14, 0xbf85963d
                  li x15, 0x8f1cce77
                  li x16, 0x8b118451
                  li x17, 0xdf33df46
                  li x18, 0xf5d26c9f
                  li x19, 0x621a388a
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0xe3aae2a7
                  li x23, 0x9
                  li x24, 0x8
                  li x25, 0x6c152651
                  li x26, 0x8
                  li x28, 0x1
                  li x29, 0xb
                  li x30, 0x8
                  li x31, 0x80000000
                  la x10, user_stack_end
main:             la           t1, region_1+53 #start riscv_load_store_rand_instr_stream_3
                  lbu          t4, 16(t1)
                  nop
                  lb           a2, -6(t1)
                  xor          s6, tp, s1
                  sb           t2, -10(t1)
                  sub          s7, s2, t1
                  sh           s7, -1(t1)
                  lbu          s5, -6(t1)
                  lhu          s8, -5(t1)
                  slti         s3, a6, -1627
                  sb           s8, -10(t1)
                  lh           t2, -9(t1)
                  lui          a2, 972051
                  lb           a2, 0(t1)
                  addi         s3, s10, 1749
                  lbu          ra, -2(t1)
                  xor          gp, s2, a4
                  sub          s10, tp, s2
                  slli         zero, t1, 5
                  lh           ra, 5(t1)
                  lb           s9, 2(t1)
                  sh           s3, -11(t1)
                  lbu          s2, -16(t1)
                  nop
                  ori          a3, t6, 1202
                  sltiu        s5, t1, -445
                  and          s7, t0, a2
                  slli         t5, a6, 29
                  lb           gp, 12(t1)
                  sb           s8, 10(t1)
                  lw           s3, 11(t1)
                  srli         s9, a0, 17
                  srli         s2, s3, 17
                  andi         a6, s10, -1750
                  srl          t6, gp, s4
                  sh           a2, -1(t1) #end riscv_load_store_rand_instr_stream_3
                  la           s1, region_0+136 #start riscv_load_store_hazard_instr_stream_1
                  lb           s0, 331(s1)
                  sub          s2, t1, a1
                  sltu         s2, s7, t6
                  sb           a2, 331(s1)
                  lb           s7, 331(s1)
                  sra          s0, s6, s8
                  sb           t4, 331(s1)
                  sb           a6, 331(s1)
                  sb           t0, 331(s1)
                  lb           gp, 331(s1)
                  sltu         s2, s7, s4
                  lbu          gp, 1729(s1)
                  lb           s10, 1044(s1)
                  lui          s2, 974437
                  lhu          s3, 1044(s1)
                  sb           s6, 119(s1)
                  sb           a1, 119(s1)
                  lbu          a2, 119(s1)
                  sb           a6, 1243(s1) #end riscv_load_store_hazard_instr_stream_1
                  la           a5, region_0+1286 #start load_store_instr_stream_2
                  lb           a7, -87(a5)
                  la           t3, region_0+310 #start load_store_instr_stream_4
                  lb           sp, 71(a5)
                  lbu          s0, -64(t3)
                  lbu          t1, -151(a5)
                  la           a1, region_0+1693 #start load_store_instr_stream_1
                  la           s2, region_0+1627 #start load_store_instr_stream_0
                  lw           s1, 3(a1)
                  la           t5, region_0+1964 #start load_store_instr_stream_3
                  lh           t2, -1678(t5)
                  lbu          tp, 73(a5)
                  sb           t3, -192(s2)
                  lb           a2, -55(t3)
                  sh           t4, -1658(t5)
                  lhu          t2, -11(a1)
                  sb           tp, -230(a5)
                  lbu          a7, 229(s2)
                  sb           s6, 9(a1)
                  lbu          s1, -1713(t5)
                  sh           s10, 22(t3)
                  lbu          s3, -163(a5)
                  sb           a3, -2(a1)
                  lb           a2, -33(a5)
                  sh           s1, -141(s2)
                  lbu          gp, -1647(t5)
                  sb           s5, 237(a5)
                  lbu          t6, 9(t3)
                  sh           t0, -1190(t5)
                  lbu          s8, -205(s2)
                  lbu          s1, 36(t3)
                  lb           s6, -1341(t5)
                  lb           t2, -991(t5)
                  lb           s7, -11(a1)
                  sh           t3, 9(a1)
                  lbu          s4, -1440(t5)
                  sh           s10, -682(t5) #end load_store_instr_stream_3
                  lb           t4, 8(t3)
                  lbu          a6, 255(a5)
                  lh           t6, -11(a1) #end load_store_instr_stream_1
                  lb           ra, 33(t3) #end load_store_instr_stream_4
                  lb           ra, 65(a5) #end load_store_instr_stream_2
                  sb           s5, 87(s2) #end load_store_instr_stream_0
                  la           sp, region_1+653 #start riscv_load_store_hazard_instr_stream_2
                  nop
                  sh           t1, 905(sp)
                  andi         t5, zero, 1039
                  lh           s9, 905(sp)
                  xori         s10, t0, 632
                  nop
                  slt          gp, s6, s11
                  lb           t5, 905(sp)
                  lh           s5, -375(sp)
                  lh           s10, -375(sp)
                  lb           s10, -375(sp)
                  sh           s6, -375(sp)
                  sb           s5, -375(sp)
                  lb           t6, -375(sp)
                  lhu          s3, -375(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           s2, region_1+1628 #start load_store_instr_stream_1
                  lb           t1, -1(s2)
                  la           gp, region_1+1205 #start load_store_instr_stream_0
                  sb           a2, -1188(gp)
                  lb           s4, 4(s2)
                  lbu          s8, -116(gp)
                  lb           a3, -4(s2)
                  lhu          t0, 33(gp)
                  sb           s7, -11(s2)
                  la           t5, region_1+903 #start load_store_instr_stream_2
                  lbu          s9, -875(gp)
                  lbu          s10, -7(s2)
                  sh           sp, 231(t5)
                  lhu          tp, 14(s2)
                  lhu          sp, -217(t5)
                  lbu          tp, -66(gp)
                  sb           s7, -12(s2) #end load_store_instr_stream_1
                  lbu          a3, 166(t5)
                  lbu          s7, 164(t5)
                  lhu          t0, 563(gp)
                  lb           sp, -1064(gp)
                  lb           s4, -170(t5) #end load_store_instr_stream_2
                  sh           t1, 781(gp) #end load_store_instr_stream_0
                  la           a1, region_0+67 #start load_store_instr_stream_2
                  la           a6, region_0+550 #start load_store_instr_stream_4
                  lbu          a5, 64(a1)
                  la           t3, region_0+1176 #start load_store_instr_stream_1
                  la           t6, region_0+1569 #start load_store_instr_stream_3
                  sh           s1, -86(t3)
                  lb           sp, 230(t6)
                  la           s9, region_0+91 #start load_store_instr_stream_0
                  sb           s1, -12(a1)
                  lhu          t2, -190(t3)
                  lbu          t1, 81(t6)
                  lb           s1, 49(a1)
                  lb           t0, 201(t3)
                  lb           a3, 210(t6)
                  lb           a5, 16(s9)
                  lh           t0, 208(t3)
                  lhu          s6, 123(t6)
                  lbu          s6, 236(t6)
                  lb           s5, 187(a6)
                  sb           t2, 6(a1)
                  lb           s7, -51(t3)
                  lb           a5, -249(t3)
                  lb           ra, -78(a6)
                  lbu          gp, -51(a1)
                  sh           ra, 180(a6)
                  lbu          t0, 96(t6)
                  sh           a5, -29(t6) #end load_store_instr_stream_3
                  lb           a5, 206(t3)
                  lbu          s8, 180(a6)
                  sb           a4, 30(a1)
                  lb           t4, -32(a1)
                  sb           a3, -10(s9)
                  lb           ra, -61(t3)
                  lb           s10, -8(s9)
                  lhu          zero, 166(t3)
                  lb           s7, -195(a6)
                  lbu          s4, 4(a1) #end load_store_instr_stream_2
                  lh           a2, 94(t3) #end load_store_instr_stream_1
                  sh           t3, 172(a6) #end load_store_instr_stream_4
                  sb           s6, 4(s9)
                  lbu          gp, 6(s9) #end load_store_instr_stream_0
                  la           s3, region_1+815 #start riscv_load_store_rand_instr_stream_5
                  sb           t2, -103(s3)
                  nop
                  slti         t2, s0, 1044
                  srl          s8, s6, a6
                  slti         s7, a5, -807
                  sub          s6, t0, s5
                  or           s5, a6, a5
                  nop
                  xori         s1, s9, 1354
                  xor          a6, a1, sp
                  auipc        s2, 1018468
                  addi         a3, s11, -1180
                  ori          t4, a1, -1349
                  lbu          s9, -146(s3)
                  srai         a3, s1, 17
                  add          s4, s5, s7
                  srai         t4, ra, 13
                  sll          tp, a3, a5
                  lh           s0, 123(s3)
                  lbu          t5, 124(s3)
                  sltu         a2, t1, a7
                  sb           a6, -198(s3)
                  lb           a2, -149(s3)
                  lh           a1, 141(s3)
                  lui          s1, 955323
                  sra          a6, s4, a7
                  srl          s4, s5, gp
                  sltu         a5, a5, s8
                  sra          a2, s6, sp
                  lbu          s2, 202(s3)
                  lw           sp, 53(s3)
                  sltu         a7, s9, s1
                  xor          a5, t0, s6
                  sb           t0, 39(s3)
                  and          a2, gp, s8
                  lh           a3, -223(s3) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_1+1427 #start riscv_load_store_hazard_instr_stream_0
                  lw           a2, -235(s1)
                  sb           s10, 216(s1)
                  or           t2, s4, sp
                  lb           a7, 216(s1)
                  slli         s5, a6, 8
                  lbu          ra, 216(s1)
                  lbu          a6, 216(s1)
                  lb           a2, -155(s1)
                  srl          t4, t6, s0
                  lw           t3, -155(s1)
                  sub          a1, s5, s8
                  lhu          t1, -155(s1)
                  sh           s0, -119(s1)
                  or           a2, sp, s3
                  lhu          t1, 165(s1)
                  sltu         s7, s3, s7
                  sh           t2, 165(s1) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1977 #start riscv_load_store_rand_instr_stream_0
                  addi         s10, ra, 1458
                  sh           sp, -817(sp)
                  lb           s1, -555(sp)
                  slti         gp, a2, -1073
                  srai         t5, a3, 2
                  or           t4, a3, a4
                  and          t0, gp, s8
                  add          s1, t4, t5
                  sltu         s7, a2, s9
                  sb           t4, -1926(sp)
                  slli         s2, t5, 5
                  srli         zero, ra, 20
                  sll          gp, a1, s10
                  ori          a2, t6, -1382
                  sll          a7, t2, a4
                  addi         a3, a2, -1302
                  sb           t0, -102(sp)
                  sb           gp, -1925(sp)
                  sb           s9, -1169(sp)
                  sb           tp, -57(sp)
                  slti         s3, t5, 1166
                  lui          t3, 691698
                  sh           s0, -1079(sp)
                  lui          a5, 307595
                  sub          t6, s1, s2
                  lhu          s1, -403(sp)
                  sb           a5, -1520(sp)
                  lb           s4, -14(sp)
                  slli         t6, a2, 24
                  sra          s1, a2, s3
                  slli         t3, a2, 7
                  slt          s9, ra, t3
                  lbu          a1, -240(sp)
                  sltiu        a3, s2, 1520
                  sra          s2, t6, tp
                  lbu          t3, -891(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_0+1680 #start riscv_load_store_hazard_instr_stream_3
                  sb           t5, -127(s3)
                  lbu          s8, -705(s3)
                  lw           ra, -272(s3)
                  slti         t6, t6, -1050
                  srai         s10, a6, 21
                  xori         t1, s1, 238
                  sb           s3, -272(s3)
                  lhu          t0, -1002(s3)
                  lhu          s10, -1222(s3)
                  lh           t0, -1222(s3)
                  lh           t2, -548(s3)
                  lui          t6, 725937
                  sh           s8, -1084(s3)
                  sb           s8, -650(s3)
                  sh           s2, -650(s3)
                  lbu          t4, -1619(s3) #end riscv_load_store_hazard_instr_stream_3
                  la           s2, region_1+738 #start riscv_load_store_hazard_instr_stream_5
                  sh           t1, -210(s2)
                  lw           sp, -210(s2)
                  srl          tp, gp, s10
                  sb           s2, -210(s2)
                  lb           s6, -210(s2)
                  sra          s3, s3, s7
                  lw           tp, -154(s2)
                  lbu          s3, -154(s2)
                  sub          s9, tp, s9
                  sb           a0, 100(s2)
                  sb           a5, 100(s2)
                  sb           s3, 100(s2)
                  sh           a2, -44(s2)
                  lbu          t4, -44(s2)
                  lhu          t2, -44(s2)
                  sh           a5, -44(s2)
                  and          t3, ra, s3
                  add          gp, a2, t0
                  lb           a7, 47(s2)
                  addi         s9, a3, 1608
                  sb           s6, -155(s2) #end riscv_load_store_hazard_instr_stream_5
                  la           s1, region_1+1343 #start riscv_load_store_rand_instr_stream_2
                  and          zero, s8, ra
                  lb           t3, -692(s1)
                  sltiu        tp, tp, 1330
                  lbu          ra, -1253(s1)
                  slt          a3, t5, zero
                  addi         t3, t2, -1913
                  lb           a3, -92(s1)
                  ori          t1, s1, -1254
                  nop
                  slti         a7, a7, -1170
                  lbu          s4, -1150(s1)
                  lbu          a5, -534(s1)
                  sb           ra, -791(s1)
                  sb           a6, -1019(s1)
                  lb           a1, 236(s1)
                  lbu          a7, -398(s1)
                  sb           s11, -105(s1)
                  sw           a6, -711(s1)
                  lb           s6, 66(s1)
                  lw           a3, 609(s1)
                  add          t1, t6, s10
                  sb           a0, -1300(s1)
                  sltu         t4, t4, a4
                  sb           t1, -1004(s1)
                  sb           sp, 96(s1)
                  ori          sp, zero, 944
                  auipc        a5, 211318
                  sb           s6, 160(s1)
                  lbu          s0, -894(s1)
                  lb           zero, -279(s1)
                  slli         gp, s1, 9
                  auipc        t5, 350082
                  lhu          t0, 455(s1)
                  slt          ra, s1, s4
                  lbu          a2, -1147(s1)
                  lhu          a6, -133(s1)
                  sltu         t1, t6, a3
                  lw           t4, 305(s1)
                  lh           t6, 575(s1)
                  lh           a6, 605(s1)
                  addi         sp, s3, 530
                  and          s4, s7, sp
                  sh           s7, -1193(s1)
                  sb           s7, 72(s1) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_1+1381 #start load_store_instr_stream_1
                  lbu          a6, 32(s4)
                  la           s1, region_1+1195 #start load_store_instr_stream_3
                  la           a5, region_1+1429 #start load_store_instr_stream_0
                  la           ra, region_1+1551 #start load_store_instr_stream_2
                  sb           s8, 342(s4)
                  sb           tp, 247(s1)
                  lb           gp, -16(ra)
                  sb           s7, 0(a5)
                  lbu          t2, 246(s1)
                  sw           a3, 195(s4)
                  lb           t5, 8(a5)
                  lb           s8, -12(a5)
                  lb           t2, -9(ra)
                  lh           zero, 239(s1)
                  lb           s8, -1315(s4)
                  sb           s4, 39(ra)
                  lb           s10, 4(a5)
                  sb           t4, -179(s1)
                  sb           zero, 50(ra)
                  lhu          t3, 505(s4)
                  lbu          a1, 16(ra)
                  lb           t2, -2(s1)
                  lhu          s5, -21(ra)
                  lbu          a3, -43(ra)
                  sb           s4, 583(s4)
                  sb           sp, 47(s1)
                  sb           zero, 11(a5)
                  lbu          t5, 208(s1)
                  sw           a2, -561(s4) #end load_store_instr_stream_1
                  lhu          t4, -3(a5)
                  lb           t6, -134(s1) #end load_store_instr_stream_3
                  lb           tp, -40(ra)
                  lbu          a1, -58(ra) #end load_store_instr_stream_2
                  lbu          s10, -13(a5) #end load_store_instr_stream_0
                  la           sp, region_0+1510 #start riscv_load_store_rand_instr_stream_4
                  sb           a7, 0(sp)
                  lbu          a5, -9(sp)
                  lhu          a1, 0(sp)
                  sra          t6, t5, tp
                  lbu          gp, -13(sp)
                  sra          s8, t5, zero
                  or           ra, a2, s1
                  sb           t2, -7(sp)
                  xori         t2, s9, 2001
                  lhu          gp, 16(sp)
                  nop
                  sb           zero, -15(sp)
                  sh           ra, 6(sp)
                  lbu          t3, 15(sp)
                  andi         s2, a5, -489
                  lb           zero, -8(sp)
                  lui          t1, 310327
                  sub          s6, t1, a6
                  or           t1, a1, a6
                  lb           gp, -9(sp)
                  sltu         t1, s5, s8
                  lbu          s9, 3(sp)
                  sb           a2, 5(sp)
                  sh           sp, -8(sp)
                  lbu          s10, -13(sp)
                  sb           t5, 4(sp)
                  add          s0, s3, t0
                  srli         t5, s10, 10
                  lb           a3, -6(sp)
                  lhu          s0, 14(sp)
                  lb           tp, 13(sp)
                  sub          s6, t5, s9
                  slli         ra, s4, 28
                  lb           t6, -15(sp)
                  lb           t3, -3(sp)
                  lbu          t2, 12(sp)
                  lb           a1, 14(sp)
                  lb           s2, 14(sp)
                  lbu          t1, -1(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_0+1684 #start riscv_load_store_hazard_instr_stream_4
                  lw           a3, 4(a1)
                  lhu          t0, 4(a1)
                  nop
                  lb           s1, 3(a1)
                  sb           t6, 16(a1)
                  sb           s5, 16(a1)
                  lhu          s0, 16(a1)
                  addi         t0, a0, -228
                  sh           s7, 16(a1)
                  lbu          t3, -31(a1)
                  sltu         t0, s5, a2
                  lbu          s6, 17(a1)
                  lbu          gp, 17(a1)
                  add          t4, t6, s6
                  add          a6, s2, sp
                  sb           a0, 17(a1) #end riscv_load_store_hazard_instr_stream_4
                  la           a1, region_1+751 #start load_store_instr_stream_1
                  la           a6, region_1+378 #start load_store_instr_stream_0
                  sb           a0, 802(a1)
                  sw           s6, 1201(a1)
                  lbu          s7, -19(a6)
                  sb           s1, -77(a1)
                  sb           ra, -127(a6)
                  lbu          s9, -273(a6)
                  lhu          t1, 569(a1)
                  lbu          s8, -415(a1)
                  lh           gp, 562(a6)
                  lbu          t3, -131(a1) #end load_store_instr_stream_1
                  lh           t6, -48(a6) #end load_store_instr_stream_0
                  la           t3, region_1+821 #start riscv_load_store_rand_instr_stream_1
                  lbu          s8, 8(t3)
                  addi         s5, s1, -1874
                  srli         s3, t6, 14
                  srl          s6, s3, ra
                  sb           s0, -102(t3)
                  sh           s7, 45(t3)
                  lb           a5, -194(t3)
                  srli         a6, a2, 23
                  slli         t4, t4, 15
                  sb           t6, -33(t3)
                  srai         t5, sp, 31
                  sh           t4, -31(t3)
                  lbu          s6, -202(t3)
                  sltiu        sp, s9, 1717
                  addi         a1, s10, -694
                  andi         t6, s0, 662
                  auipc        s6, 692179
                  sltu         zero, a3, a4
                  addi         s2, a7, 1499
                  lbu          sp, 146(t3)
                  slti         tp, t6, 1565
                  sll          t6, t2, s2
                  sll          a7, s2, t1
                  srli         a6, t3, 7
                  sra          a5, s10, a7
                  addi         s8, s6, 1650
                  srl          t1, a5, t4
                  sra          s3, a6, a2
                  lui          s1, 898959
                  srai         s8, s10, 26
                  lw           s10, -213(t3)
                  or           s5, a7, t0
                  lui          s7, 78807
                  slti         s10, sp, -1460
                  srai         ra, t2, 25
                  lb           a5, 47(t3) #end riscv_load_store_rand_instr_stream_1
                  la           s7, region_1+50 #start load_store_instr_stream_1
                  lbu          s4, 7(s7)
                  la           s10, region_1+1760 #start load_store_instr_stream_0
                  lbu          sp, -6(s7)
                  lb           s9, -131(s10)
                  lb           a5, -9(s7)
                  sb           a5, -1013(s10)
                  lhu          zero, -996(s10)
                  sh           a7, 4(s7)
                  sb           a4, 12(s7)
                  lbu          a2, 86(s10)
                  sb           s2, -1097(s10)
                  lbu          s8, 11(s7) #end load_store_instr_stream_1
                  lbu          s1, -728(s10)
                  lb           s5, 28(s10) #end load_store_instr_stream_0
                  ori          t5, s1, -125
                  srl          t0, s11, gp
                  auipc        t1, 309901
                  bgeu         s2, a4, 9f
                  nop
                  srl          a7, t5, s0
                  srai         a6, s3, 19
                  srli         s10, a3, 16
                  srai         t5, s7, 18
9:                slt          s8, s11, zero
                  nop
                  ori          t3, sp, -915
                  beq          s0, s10, 14f
                  sltiu        s4, s8, -1371
14:               ori          tp, a4, -886
                  slt          s8, s7, sp
                  lui          gp, 509051
                  andi         ra, a3, 1241
                  sra          t5, a7, s3
                  sub          s3, s4, s1
                  andi         ra, s11, 1482
                  srl          a7, s3, s8
                  bltu         s11, ra, 42f
                  xori         gp, s0, -184
                  auipc        a2, 352075
                  nop
                  srai         s1, a2, 6
                  sra          s5, a1, t6
                  lui          s3, 1000085
                  slti         s8, a0, -1557
                  sltu         gp, t2, s9
                  addi         s0, s2, 747
                  sll          s1, s2, t2
                  sltu         a2, s8, s6
                  bge          gp, s8, 35f
35:               srai         s3, s4, 17
                  or           s0, a4, a5
                  xori         s8, a1, 537
                  sltiu        s4, s3, -1972
                  bltu         t3, tp, 45f
                  srl          t5, sp, s7
                  add          t3, s11, s7
42:               lui          s7, 403841
                  addi         t5, a3, 750
                  sll          s7, t0, a7
45:               sra          t4, s4, s11
                  sra          t2, a5, t0
                  slli         ra, tp, 31
                  sub          t1, a7, s2
                  xori         zero, s0, 107
                  sltu         s1, s3, t4
                  blt          a4, s3, 58f
                  xori         ra, s10, 1976
                  ori          s0, a5, -1661
                  beq          zero, a3, 71f
                  andi         s0, a3, -1798
                  sltu         s7, s5, s7
                  add          t0, a4, a0
58:               xori         a1, a3, 2007
                  nop
                  srai         t2, a4, 30
                  sll          a5, tp, a3
                  srli         t6, a6, 13
                  xori         t4, a6, -250
                  slli         s7, s1, 8
                  blt          t4, tp, 73f
                  andi         a5, a4, 117
                  sra          s2, a7, t3
                  blt          s2, a6, 85f
                  addi         ra, s11, 784
                  beq          s0, a0, 73f
71:               nop
                  auipc        gp, 568464
73:               or           s9, s5, s4
                  srai         s8, s6, 15
                  slt          a2, s9, s5
                  xori         a5, gp, 543
                  blt          t5, t4, 83f
                  srai         sp, ra, 6
                  sltiu        a2, s8, -1221
                  andi         s8, a1, 1752
                  or           t2, s11, zero
                  sltiu        ra, s7, -2042
83:               sll          gp, a7, a0
                  addi         a7, s0, -5
85:               xori         s10, a3, -1806
                  sra          s5, a4, sp
                  sub          t4, sp, a3
                  sltiu        s6, a3, 636
                  sub          s6, s8, t1
                  addi         a7, s3, -140
                  bltu         a1, ra, 106f
                  or           t4, ra, s6
                  slli         s3, t6, 14
                  slli         s2, t0, 7
                  beq          a4, a2, 97f
                  beq          s2, ra, 112f
97:               beq          sp, sp, 101f
                  bne          a6, tp, 115f
                  ori          s8, s6, 1768
                  slti         a3, s3, 1201
101:              xori         tp, s1, 1273
                  srli         s8, ra, 25
                  bgeu         a6, s8, 123f
                  ori          a6, a1, -50
                  addi         t3, a7, 988
106:              ori          s0, zero, 1187
                  slti         gp, t3, 1199
                  srli         a3, s3, 10
                  sra          s4, a4, t3
                  xori         t5, a1, 1834
                  srl          t3, s7, s1
112:              srl          s1, s5, a7
                  lui          s6, 67598
                  bge          s11, s0, 124f
115:              add          t2, s7, a0
                  slli         t1, a4, 10
                  sltu         ra, s9, s5
                  xori         a3, t6, 1336
                  and          a3, s7, zero
                  srai         a7, tp, 8
                  bgeu         s5, t3, 122f
122:              sll          a2, a2, s11
123:              nop
124:              sltiu        s3, t3, -1614
                  lui          zero, 202003
                  sll          tp, ra, a0
                  bge          s0, a3, 137f
                  andi         s9, s4, 804
                  add          sp, gp, t1
                  nop
                  srli         s1, a1, 7
                  addi         a6, a7, 106
                  addi         t1, s6, 678
                  srli         s7, s8, 7
                  auipc        s5, 921344
                  lui          s8, 720366
137:              xori         a2, s4, 1464
                  andi         s5, s5, 1198
                  srl          s8, s10, s2
                  lui          s10, 764623
                  blt          s11, t1, 148f
                  srli         a1, s5, 10
                  srli         s9, s7, 29
                  xori         s6, s10, 1860
                  slt          t2, t4, s1
                  bne          a6, s6, 165f
                  or           t1, a1, s4
148:              nop
                  slt          gp, s0, t0
                  slli         ra, sp, 26
                  beq          s10, s3, 168f
                  bne          s7, t3, 163f
                  bltu         a6, s6, 164f
                  srai         gp, t3, 18
                  andi         a5, s6, -1175
                  sll          a1, gp, t2
                  addi         s0, a5, 1176
                  or           s10, t3, s10
                  slti         s2, t0, 385
                  sll          s7, a7, sp
                  xori         a5, gp, -1718
                  sltiu        s2, s0, -947
163:              ori          t3, s3, 69
164:              nop
165:              srl          t3, t3, a0
                  nop
                  srl          s9, t4, s8
168:              sltu         s2, t4, s4
                  xori         tp, a0, 1641
                  beq          t3, a7, 182f
                  bltu         t5, s5, 174f
                  slt          s0, a0, a0
                  sra          s10, t1, a2
174:              slti         a6, t4, -710
                  xor          a5, s8, s9
                  and          ra, t3, gp
                  sll          s8, a2, t1
                  sltiu        t6, gp, -1989
                  sub          s10, s1, sp
                  and          t6, gp, s7
                  slli         a7, t0, 0
182:              lui          t6, 495579
                  bltu         a4, a4, 200f
                  bgeu         s4, t4, 200f
                  sra          s3, s10, s5
                  bge          a4, a0, 191f
                  sltu         a1, t0, s5
                  auipc        s6, 947336
                  or           a5, s11, s3
                  bltu         ra, a5, 201f
191:              addi         a6, a3, 2009
                  slti         s4, ra, -1364
                  and          s9, t5, a3
                  bgeu         a0, gp, 201f
                  or           a3, sp, a1
                  blt          a0, a3, 212f
                  xori         s6, sp, 109
                  bge          t5, t5, 215f
                  blt          a4, a7, 209f
200:              and          s1, t0, a0
201:              xor          s1, t5, s4
                  ori          s2, t0, -1944
                  bgeu         a5, a3, 220f
                  xori         a1, a5, -1857
                  addi         s9, s9, -1415
                  slti         sp, s7, -1233
                  xori         gp, t6, 458
                  xor          a5, ra, a0
209:              sll          a7, t0, s3
                  lui          zero, 28974
                  ori          a6, a1, 1572
212:              slt          ra, t3, s5
                  bge          t2, ra, 232f
                  blt          s11, s10, 231f
215:              sub          zero, a3, s7
                  xori         t4, a6, 443
                  nop
                  bge          s9, t1, 230f
                  slt          t6, t1, zero
220:              and          s1, t0, s8
                  blt          a0, a7, 237f
                  sra          s7, t3, t3
                  andi         s1, s11, 270
                  addi         t4, a5, -1447
                  ori          s8, s10, -1592
                  xori         a3, s1, 1570
                  bltu         t2, a0, 228f
228:              add          zero, sp, s10
                  add          s4, t5, zero
230:              add          s4, a7, s4
231:              sra          sp, t5, t1
232:              sub          a7, zero, t3
                  bgeu         s8, t5, 253f
                  andi         s6, s4, -904
                  auipc        s9, 394874
                  sub          t4, a2, a0
237:              slt          t2, s4, a3
                  andi         a5, a3, 282
                  and          tp, t3, a6
                  slt          s6, s8, gp
                  slti         s9, a6, 1049
                  srl          a3, s0, a1
                  slt          sp, tp, a6
                  srli         t0, s11, 12
                  blt          t4, t1, 246f
246:              sra          a3, gp, a2
                  addi         s1, s0, -1854
                  slli         s4, ra, 1
                  andi         s4, a6, -1658
                  srai         sp, tp, 1
                  sltu         gp, s5, s7
                  srl          s3, a3, a4
253:              bge          zero, s9, 273f
                  lui          a7, 515743
                  bge          t1, s4, 257f
                  lui          s6, 746282
257:              bgeu         a0, gp, 263f
                  auipc        s6, 563649
                  nop
                  add          s2, a4, s0
                  sltu         t1, t3, s5
                  sltiu        t1, a6, 174
263:              srai         zero, t3, 18
                  addi         t0, sp, -1144
                  andi         t4, t3, -566
                  andi         s8, s3, 1009
                  xor          t3, t1, t3
                  sra          s0, tp, s2
                  xor          ra, t3, t0
                  xor          zero, a0, a3
                  slti         s2, a2, 1862
                  slti         s5, s0, -1573
273:              sltu         a3, a3, s1
                  slli         s9, t6, 7
                  ori          s6, t4, -1834
                  slt          t4, s8, s8
                  bltu         t1, zero, 292f
                  andi         s6, t6, -215
                  sll          t1, a7, a0
                  auipc        t6, 631568
                  add          t0, s0, a0
                  andi         s8, a3, 1999
                  auipc        s4, 118202
                  andi         t5, zero, -2028
                  or           gp, zero, t6
                  bge          s1, t2, 291f
                  xori         s10, s6, -1864
                  or           t5, a5, a2
                  slli         t3, a7, 5
                  srai         s4, a5, 29
291:              auipc        sp, 268366
292:              srli         gp, gp, 11
                  andi         s3, a6, -1232
                  slli         a3, a0, 26
                  auipc        s4, 329888
                  slti         s7, t2, 1753
                  sra          s10, s4, s6
                  srl          s6, a1, tp
                  xor          sp, a7, tp
                  sltiu        s3, zero, -1068
                  srli         t6, s3, 19
                  add          t5, zero, a4
                  xori         s0, t6, 37
                  beq          tp, s7, 321f
                  or           s9, s11, s11
                  andi         s10, a5, 166
                  srl          s3, a1, s1
                  bltu         t1, s10, 310f
                  ori          t5, a2, 1616
310:              slt          a2, s4, a7
                  addi         t5, t1, 1413
                  bge          s0, s0, 315f
                  sll          s4, s3, s7
                  lui          t3, 549823
315:              srl          s9, s6, zero
                  ori          s3, s6, -1362
                  srai         s7, s1, 11
                  lui          t0, 1028116
                  add          s2, s8, s10
                  slli         s10, t2, 20
321:              xor          s6, t0, t4
                  srl          t2, t6, t3
                  andi         zero, gp, -172
                  slt          sp, s11, t6
                  beq          a1, t6, 333f
                  bgeu         gp, s3, 332f
                  sll          s6, s7, s3
                  sll          s7, s10, a7
                  slli         s1, t4, 27
                  srl          t5, t0, s6
                  srl          s1, t1, s2
332:              add          gp, a2, t2
333:              xori         zero, t3, -2026
                  sll          s6, s8, t3
                  sltiu        t6, s4, -466
                  lui          ra, 862725
                  lui          t6, 206502
                  sub          s7, a6, s7
                  sltu         a1, a5, t4
                  srli         a1, tp, 2
                  sll          a1, t2, ra
                  addi         s6, s0, 308
                  sll          t6, s6, t0
                  ori          gp, a1, 179
                  sra          ra, a3, tp
                  or           t2, t0, s3
                  sub          a3, a5, a1
                  nop
                  slli         t5, s11, 19
                  sub          a6, a4, gp
                  slli         t5, t6, 1
                  add          ra, a5, a1
                  sra          a1, a4, s8
                  srl          a1, s0, a0
                  bne          a6, t3, 361f
                  bne          a2, s11, 367f
                  andi         t1, tp, -17
                  xori         t6, a0, 1755
                  or           s1, tp, gp
                  sub          s9, s8, s1
361:              bgeu         s11, s10, 368f
                  xor          t3, sp, s8
                  blt          a0, t2, 380f
                  beq          gp, tp, 368f
                  lui          s5, 214989
                  addi         t1, t1, -500
367:              srli         a1, sp, 0
368:              add          gp, a2, a1
                  sll          s4, s2, a1
                  sll          a1, s1, s4
                  sll          gp, t1, a7
                  slti         t2, gp, -934
                  ori          s10, a0, -1940
                  srl          t1, a5, t0
                  andi         t4, s4, 103
                  sra          t0, s6, t3
                  bne          s8, s1, 380f
                  blt          s9, a6, 388f
                  xori         ra, t2, 1925
380:              add          s1, t0, s3
                  lui          s5, 448371
                  and          s1, a5, t5
                  auipc        sp, 469738
                  beq          t2, s2, 401f
                  add          s9, a2, ra
                  auipc        t5, 826661
                  xor          t2, t6, t3
388:              xori         t6, t1, 1673
                  lui          s6, 156031
                  lui          t3, 998075
                  srai         s10, a6, 17
                  slli         s2, s0, 22
                  xor          a5, a1, s3
                  srl          zero, sp, t4
                  sltiu        a2, s4, -747
                  auipc        s3, 908215
                  nop
                  lui          t4, 582493
                  sra          s7, s3, t0
                  slli         t6, s8, 14
401:              bgeu         s10, s6, 416f
                  slli         t6, s7, 12
                  bne          a1, a6, 405f
                  ori          s3, t1, -1628
405:              xori         a1, s9, -438
                  lui          s7, 807278
                  bne          s1, gp, 412f
                  ori          t3, s2, 1282
                  bne          s2, s7, 411f
                  sra          s4, sp, s4
411:              bgeu         t6, s3, 412f
412:              nop
                  sltu         t6, s8, s7
                  blt          tp, s2, 431f
                  bltu         a2, t1, 431f
416:              blt          a6, a1, 426f
                  sltu         s0, s5, t4
                  ori          s7, a3, 564
                  and          s5, gp, s8
                  bne          sp, t2, 428f
                  sll          a6, s6, t0
                  srli         s10, ra, 30
                  nop
                  andi         zero, s11, -215
                  auipc        sp, 665359
426:              slli         t5, s9, 14
                  srai         s4, a5, 22
428:              nop
                  slli         s0, sp, 25
                  ori          t2, t3, 1611
431:              bgeu         a1, a6, 441f
                  bgeu         s7, s4, 439f
                  xor          t2, t4, tp
                  andi         a6, s8, -823
                  slti         sp, t4, 732
                  nop
                  sll          s3, t1, s9
                  sub          t5, t0, a3
439:              srai         s6, t6, 15
                  slti         t2, s1, 1641
441:              xori         a7, s5, 573
                  slti         s9, t3, 1580
                  srli         ra, a0, 26
                  add          t3, a7, a4
                  add          ra, t0, a7
                  andi         s4, s11, -1509
                  addi         gp, a5, -563
                  sltu         sp, s10, t6
                  srai         s1, s7, 16
                  srai         s9, s0, 16
                  ori          t0, a3, 1807
                  srli         s1, s7, 16
                  la           ra, sub_1
                  sltu         s0, a1, s2
                  slti         s4, a4, 1605
                  addi         s3, a6, -216
                  ori          t6, s4, -1304
                  addi         ra, ra, 98
                  lui          s10, 831133
main_j2:          jalr         sp, ra, -97 #jump main -> sub_1
                  xori         s7, s8, -1167
                  slti         s2, t3, 1623
                  add          a6, s8, t6
                  sltu         a6, s1, t3
                  bge          a7, gp, 470f
                  sub          s5, t0, t4
                  bne          s5, a6, 459f
                  bltu         ra, a0, 462f
                  srli         tp, gp, 31
                  nop
459:              add          s9, a0, t1
                  sltu         a6, t6, a4
                  blt          s3, s2, 464f
462:              sra          a1, s11, t0
                  add          gp, t0, s5
464:              slli         t6, t0, 29
                  slli         t0, t1, 12
                  sll          sp, a6, a4
                  bne          t2, t0, 468f
468:              or           t4, a4, s9
                  bltu         s0, a7, 489f
470:              sub          s2, tp, a6
                  srl          tp, t4, s4
                  lui          s0, 302283
                  andi         a7, gp, 1826
                  srl          t6, tp, s6
                  xori         s0, a7, 817
                  and          s6, a3, t3
                  sll          sp, s2, s7
                  srl          t4, s3, s8
                  srli         zero, t4, 4
                  bge          s6, a4, 491f
                  slli         t1, s1, 4
                  sra          s6, s0, t0
                  slt          ra, s0, t6
                  auipc        s6, 524740
                  sltiu        zero, a0, 283
                  srai         t2, s7, 19
                  sltu         s4, ra, a7
                  addi         s3, t2, 1837
489:              sll          s1, a5, s2
                  add          tp, gp, a5
491:              auipc        ra, 242752
                  add          a1, ra, s0
                  and          s4, tp, s1
                  addi         s8, ra, 289
                  srl          t1, a0, s4
                  sra          s0, zero, sp
                  bltu         s9, s3, 514f
                  sltu         s9, a3, s7
                  auipc        a1, 952165
                  bge          s9, s5, 512f
                  or           s6, s5, s2
                  lui          zero, 270581
                  ori          gp, s1, 1794
                  la           gp, sub_1
                  addi         gp, gp, 937
                  add          t3, s10, a7
                  xori         t0, a3, -258
                  auipc        a7, 414899
                  and          s6, t1, s2
                  addi         sp, s4, -1909
                  bge          ra, s2, main_j1 #branch to jump instr
                  sltiu        s10, a2, 433
main_j1:          jalr         sp, gp, -937 #jump main -> sub_1
                  slli         t3, ra, 27
                  xor          t0, t0, a7
                  srai         s6, t3, 13
                  bge          s2, a0, 526f
                  xor          tp, s10, t3
                  lui          a7, 388699
                  slt          a5, s7, a3
                  lui          a1, 818743
512:              xor          a6, a6, t4
                  lui          s6, 52655
514:              nop
                  auipc        tp, 555259
                  sll          a3, t2, a1
                  lui          s7, 173410
                  and          gp, a1, a6
                  slt          t6, a0, s6
                  sra          sp, s5, a3
                  bge          ra, s7, 527f
                  add          t5, t1, t1
                  slt          t5, gp, a4
                  srli         s9, s7, 31
                  srli         t4, t5, 22
526:              beq          t4, s7, 543f
527:              bltu         t5, t5, 538f
                  xori         a3, zero, -1268
                  lui          s1, 300193
                  beq          t6, s7, 533f
                  or           s6, s7, t3
                  sra          a1, s7, a0
533:              beq          s3, s2, 553f
                  sll          sp, a5, tp
                  addi         t0, s0, -419
                  slt          s6, t0, s1
                  slt          s2, t0, zero
538:              auipc        s10, 669251
                  or           s6, s1, s0
                  bge          s10, a7, 556f
                  sltu         t0, ra, a2
                  sltu         s0, t6, s11
543:              xori         s7, a0, -975
                  slti         tp, a2, 1222
                  xor          t5, a2, s2
                  bge          a5, a4, 553f
                  add          a1, s10, gp
                  sra          a1, a3, a4
                  slt          t0, sp, s5
                  beq          t3, t4, 556f
                  and          zero, a6, zero
                  bge          s4, s4, 559f
553:              sll          s6, t2, a3
                  bltu         zero, a7, 573f
                  xor          s5, a3, a0
556:              slti         a1, s6, -24
                  bltu         ra, a2, 577f
                  srai         s2, t0, 4
559:              ori          s10, t0, 1672
                  beq          ra, s1, 580f
                  bge          s0, t1, 578f
                  lui          s10, 944384
                  or           a3, t5, s1
                  beq          ra, a4, 570f
                  lui          t1, 355202
                  srli         s7, a7, 5
                  sltu         s2, s11, zero
                  addi         t5, t2, -1400
                  auipc        t0, 398146
570:              add          s6, sp, a2
                  addi         s6, zero, -700
                  srai         tp, t4, 26
573:              srli         s6, t4, 5
                  sub          s8, s5, sp
                  nop
                  bne          s0, s5, 578f
577:              xori         s7, t4, 1077
578:              sltu         s3, a7, s7
                  bge          t6, s7, 583f
580:              xor          t3, zero, zero
                  or           a5, s6, s5
                  sll          a1, s6, s5
583:              slt          t3, t5, a2
                  sll          tp, a3, s7
                  nop
                  slti         t5, a3, 392
                  bne          s4, zero, 590f
                  srli         a5, gp, 17
                  nop
590:              bltu         t4, s6, 598f
                  bgeu         t1, s1, 592f
592:              auipc        t0, 613453
                  nop
                  andi         t5, a3, -1680
                  sltu         s8, t3, s8
                  and          t5, a7, s3
                  xor          a2, s10, t5
598:              andi         zero, t1, 905
                  srai         zero, s8, 20
                  slt          t4, s10, a2
                  slt          tp, a7, s7
                  nop
                  nop
                  bgeu         a7, a6, 607f
                  slt          s10, s7, a3
                  bne          s5, s7, 611f
607:              sub          s2, s7, s9
                  bge          a6, t6, 625f
                  xori         t5, s5, -2026
                  nop
611:              or           tp, t2, a3
                  addi         s5, a5, 1575
                  and          s0, t4, a4
                  beq          s8, a0, 616f
                  auipc        s8, 796247
616:              slti         a3, t5, 94
                  sltiu        tp, s7, 222
                  srl          a5, a3, a6
                  srl          zero, t6, tp
                  sra          s2, s4, s1
                  andi         s0, s3, -1178
                  slli         ra, s8, 31
                  xori         tp, a2, -2037
                  or           a5, s3, s7
625:              andi         ra, s2, -1176
                  sltu         sp, a7, zero
                  andi         t4, s3, 1747
                  sub          s7, s8, s8
                  bltu         t4, s11, 635f
                  addi         s7, t1, 1559
                  srai         a2, t4, 23
                  bge          gp, a5, 635f
                  auipc        s8, 941070
                  xor          a3, s3, a5
635:              sub          s8, a7, s6
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            ori          t0, a0, 1201
                  auipc        t5, 790264
                  addi         a0, a0, -24
                  sw           sp, 4(a0)
                  slt          a3, a4, gp
                  or           a6, s0, s4
                  srli         gp, s3, 0
                  la           s7, region_1+677 #start riscv_load_store_rand_instr_stream_0
                  lb           t4, -2(s7)
                  sb           s5, -14(s7)
                  lbu          t0, -8(s7)
                  lui          t5, 110884
                  lbu          t0, -7(s7)
                  sll          t5, s11, a6
                  slti         a7, t2, 1266
                  lb           ra, 12(s7)
                  sh           a6, 1(s7)
                  lb           t1, 14(s7)
                  or           t4, tp, t5
                  sra          gp, s1, a5
                  sb           zero, -12(s7)
                  or           a1, s2, s7
                  lb           s8, 0(s7)
                  and          zero, s2, s9
                  addi         s5, t4, 1406
                  sb           t1, -14(s7)
                  lb           a6, -1(s7)
                  lbu          a5, -7(s7)
                  ori          s10, s4, -1830
                  sltu         t2, s0, t6
                  lb           sp, -8(s7)
                  lbu          s4, -10(s7) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+1822 #start riscv_load_store_hazard_instr_stream_1
                  addi         a7, gp, 310
                  sb           gp, 14(t3)
                  lb           s5, 14(t3)
                  sh           ra, 14(t3)
                  lbu          s0, 14(t3)
                  lb           s0, 14(t3)
                  auipc        t6, 248603
                  sltiu        sp, s11, -860
                  lw           t5, 14(t3)
                  sw           a2, 14(t3)
                  sb           s2, 14(t3)
                  lw           s0, 14(t3)
                  sw           s11, 14(t3)
                  sb           a6, 14(t3)
                  sra          s0, s1, a0
                  sw           s5, 14(t3)
                  slli         s8, s6, 8
                  lb           s6, 14(t3)
                  or           s9, s0, tp
                  sw           a0, -6(t3)
                  xor          a6, a0, s0
                  lbu          s0, -6(t3) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_1+466 #start riscv_load_store_rand_instr_stream_1
                  slli         t3, t4, 27
                  srl          s4, sp, s3
                  sltu         t0, s9, t0
                  sb           t6, 51(gp)
                  slli         t6, zero, 6
                  xor          t1, s4, s7
                  slli         s3, t6, 12
                  sb           t2, -1(gp)
                  nop
                  auipc        s4, 271367
                  sh           s3, 36(gp)
                  lb           ra, -43(gp)
                  sra          t3, ra, s11
                  lb           t1, -47(gp)
                  sh           s2, -24(gp)
                  sh           ra, 14(gp)
                  lbu          a7, -48(gp)
                  ori          s9, t3, -1042
                  lh           t6, 44(gp)
                  lhu          t1, -58(gp)
                  sb           s8, 47(gp)
                  sb           sp, -37(gp)
                  lbu          t4, -39(gp)
                  lhu          tp, -50(gp)
                  xor          s9, s1, t1
                  srli         a7, s1, 31
                  sll          s2, t3, a4
                  auipc        t4, 467329
                  sub          t6, a1, s10
                  srai         s4, s7, 2
                  lbu          a3, -24(gp)
                  nop
                  sltu         a3, a4, t0
                  sll          s8, zero, s3
                  lhu          s9, 12(gp)
                  sb           t5, -43(gp) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_1+943 #start load_store_instr_stream_2
                  lbu          s9, 109(s8)
                  lb           t6, 186(s8)
                  la           a6, region_1+196 #start load_store_instr_stream_1
                  la           a3, region_1+198 #start load_store_instr_stream_0
                  lbu          s0, 124(s8)
                  lb           t4, -2(a6)
                  lw           a2, 706(a3)
                  lb           s3, 47(s8)
                  sb           t4, 241(a6)
                  lhu          gp, 238(a6)
                  lb           t6, 798(a3)
                  lbu          s10, 247(s8)
                  lbu          t6, 593(a3)
                  lbu          s10, 99(s8)
                  lh           s5, 400(a3)
                  sh           s7, 152(a3)
                  lhu          s6, 145(s8)
                  sb           a1, 167(a3)
                  lb           t6, 206(s8)
                  lw           a5, 450(a3)
                  lw           gp, -96(a6)
                  sb           s7, 332(a3)
                  sb           tp, -172(s8) #end load_store_instr_stream_2
                  lhu          sp, -134(a6) #end load_store_instr_stream_1
                  lb           a1, 176(a3) #end load_store_instr_stream_0
                  la           sp, region_0+1716 #start riscv_load_store_hazard_instr_stream_0
                  sb           s5, 55(sp)
                  lb           s1, 53(sp)
                  srli         s10, t4, 10
                  slt          s3, s11, tp
                  ori          s7, t2, -2043
                  lb           s3, -11(sp)
                  sltiu        s6, s9, 1940
                  sw           a3, 36(sp)
                  lbu          s1, 24(sp)
                  lbu          s3, -51(sp)
                  lb           t3, -51(sp)
                  sb           t5, -51(sp)
                  lbu          t3, -51(sp)
                  lbu          s0, -51(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s4, region_0+1835 #start load_store_instr_stream_2
                  la           s7, region_0+1877 #start load_store_instr_stream_4
                  la           s8, region_0+143 #start load_store_instr_stream_1
                  sb           t3, 66(s7)
                  lb           s0, 159(s8)
                  la           a7, region_0+729 #start load_store_instr_stream_3
                  lhu          t1, -1749(s4)
                  sh           a4, 57(s7)
                  la           a2, region_0+1639 #start load_store_instr_stream_0
                  lb           s5, 164(s8)
                  sh           zero, 151(s4)
                  lbu          t3, 282(a2)
                  sh           s11, -801(s4)
                  lw           t5, -139(s8)
                  sb           a4, 117(s8)
                  lbu          t1, -12(a7)
                  sb           s7, -10(s4)
                  lbu          tp, -784(a2)
                  sb           t1, -368(s4)
                  lb           t2, -161(s7)
                  lb           s10, -14(s8)
                  sb           t2, 1(a7)
                  lbu          t6, -1650(s4)
                  lb           t5, 10(a7)
                  sb           s8, -432(a2)
                  lbu          tp, -4(a7)
                  lbu          t6, -196(s7)
                  sb           t0, 34(s4)
                  lb           gp, -6(a7)
                  sb           a1, 166(s8)
                  sb           a6, -74(s8)
                  lb           a5, 198(a2)
                  lb           t2, -6(a7)
                  lb           s3, 110(s4) #end load_store_instr_stream_2
                  sh           s4, 1(a7)
                  lbu          t2, -47(s8)
                  lb           s10, 158(s8) #end load_store_instr_stream_1
                  sb           s11, -16(a7)
                  lb           zero, 30(s7)
                  lbu          a6, -9(a7) #end load_store_instr_stream_3
                  sb           s1, -50(s7)
                  lbu          gp, 46(s7) #end load_store_instr_stream_4
                  lw           sp, -647(a2) #end load_store_instr_stream_0
                  bgeu         t1, t2, 19f
                  slt          t0, s8, s3
                  and          s3, s10, t0
                  srl          a2, a3, s0
                  addi         s0, t1, 1549
                  add          a7, a5, s0
                  bne          t3, a4, 18f
                  or           a3, sp, t6
                  sltu         t3, a5, t6
                  nop
                  srl          t2, t0, s11
                  blt          t1, s7, 29f
                  add          s9, t0, a0
                  xori         gp, a2, -1914
                  add          s10, a3, tp
                  add          a3, s11, t1
                  bltu         s6, tp, 30f
                  sltiu        sp, a3, 1229
18:               sub          s3, s5, t5
19:               slli         s7, s10, 4
                  srl          a2, ra, zero
                  sra          zero, s10, s8
                  bltu         a3, s6, 40f
                  andi         t6, t6, 894
                  andi         s0, t3, 933
                  ori          a1, a7, 273
                  or           t2, a1, t1
                  slt          s6, s11, a2
                  auipc        s5, 90436
29:               slt          sp, a4, s7
30:               nop
                  srli         s1, a7, 11
                  bgeu         t5, s9, 52f
                  srli         zero, a2, 0
                  srli         gp, a5, 21
                  add          a5, s9, a7
                  sra          a3, t4, s3
                  ori          t2, s10, -220
                  slli         s1, t5, 15
                  slli         s9, zero, 30
40:               sltu         s0, t3, t2
                  blt          a5, s8, 55f
                  slti         s7, s11, 1817
                  auipc        t2, 459374
                  add          s2, zero, t5
                  auipc        a6, 225615
                  beq          s11, t1, 58f
                  sub          gp, t1, t5
                  lui          t3, 795185
                  beq          s3, t0, 51f
                  nop
51:               blt          a7, s8, 61f
52:               bltu         t0, a5, 60f
                  add          s7, a6, s6
                  sub          t4, s3, zero
55:               bne          s1, s6, 63f
                  bge          s9, gp, 70f
                  xor          s0, tp, sp
58:               xor          s0, a0, a2
                  bge          gp, tp, 76f
60:               slt          gp, t4, t1
61:               beq          s10, t4, 74f
                  bge          t4, s0, 67f
63:               bgeu         a6, zero, 68f
                  bge          tp, t2, 71f
                  sub          tp, s6, s1
                  blt          t5, a0, 72f
67:               bne          a1, s2, 80f
68:               sra          s9, t4, a1
                  nop
70:               beq          a3, a0, 82f
71:               sltu         a5, a6, a2
72:               blt          s11, t5, 89f
                  srl          a5, ra, a1
74:               add          s6, a2, t0
                  nop
76:               slti         t4, a6, 1760
                  or           gp, ra, s5
                  slti         s4, s2, -1847
                  addi         s10, s2, -1369
80:               sltu         s7, ra, s2
                  bgeu         t2, gp, 98f
82:               ori          s1, sp, 735
                  sltu         a1, t1, ra
                  addi         zero, s6, -1425
                  addi         a6, s10, 200
                  ori          a6, a6, 1012
                  slti         t3, s2, 1672
                  addi         s8, a2, 336
89:               sltu         a2, tp, a2
                  or           s7, a4, a0
                  bne          t3, s9, 97f
                  add          s4, s4, s8
                  slt          s10, t2, t2
                  blt          a0, t4, 112f
                  sra          a3, t6, s11
                  add          a2, tp, t4
97:               bltu         a5, a6, 110f
98:               xori         s3, s1, 419
                  srl          a2, s3, s5
                  sltiu        s9, a0, 644
                  xori         s1, t6, -1299
                  blt          s8, s10, 103f
103:              sltiu        s10, s11, 667
                  sltiu        t0, zero, 2012
                  srai         a2, s2, 23
                  srl          s6, a6, s4
                  nop
                  nop
                  slt          t2, t6, a7
110:              srai         s8, a0, 14
                  nop
112:              xor          t2, a3, s4
                  sll          t6, s2, s5
                  bge          t6, t3, 126f
                  lui          s4, 163648
                  blt          ra, ra, 133f
                  auipc        sp, 383951
                  slt          a6, t2, t5
                  sltiu        a6, s3, -187
                  srai         s8, s6, 0
                  xori         gp, t1, 1392
                  srai         a6, t6, 28
                  xor          a5, gp, a5
                  sltu         s10, s5, s8
                  bltu         s8, t4, 141f
126:              sub          t3, s10, t0
                  srai         s10, a4, 29
                  sltu         s3, a5, a4
                  bne          a3, t0, 147f
                  xor          gp, s2, sp
                  sub          s7, s2, a1
                  addi         t4, t3, -1588
133:              bltu         a2, t2, 150f
                  andi         t2, t4, -1420
                  or           t1, s3, s9
                  beq          s1, s4, 150f
                  nop
                  srli         ra, a3, 4
                  nop
                  ori          s1, s1, -352
141:              sll          t6, ra, s4
                  xori         s2, sp, -1096
                  ori          a1, t2, -1117
                  addi         ra, a2, -17
                  blt          t5, s3, 153f
                  nop
147:              bge          t3, s0, 159f
                  sub          sp, a7, t6
                  sltiu        t3, t2, 1451
150:              bltu         s5, gp, 162f
                  slti         a2, a0, 458
                  srli         a3, s6, 17
153:              bne          ra, a6, 163f
                  slti         s3, t4, -1393
                  sltiu        s2, sp, 348
                  add          ra, a1, s5
                  lui          a1, 484761
                  nop
159:              sra          s1, s11, t2
                  srli         zero, tp, 3
                  xor          a5, t0, s5
162:              sll          a7, zero, s3
163:              nop
                  srl          t5, s0, a5
                  xori         a6, a0, 1676
                  sltiu        s5, zero, -2033
                  andi         a5, zero, 660
                  auipc        s10, 361433
                  srli         s1, a3, 25
                  srai         t0, s2, 9
                  beq          s7, s3, 185f
                  and          s5, s5, a3
                  addi         s6, t1, 1546
                  srli         s6, s11, 3
                  bltu         t4, tp, 192f
                  blt          s6, s11, 184f
                  nop
                  sra          t4, tp, s1
                  bgeu         t2, t0, 192f
                  blt          t5, s6, 194f
                  auipc        s8, 865280
                  slt          gp, s3, a1
                  sll          a5, a7, s0
184:              nop
185:              sub          s2, t6, s5
                  blt          t0, a3, 192f
                  bne          s4, ra, 205f
                  sub          s0, t5, a1
                  srai         s1, s11, 21
                  and          s10, t3, s1
                  and          t4, gp, a2
192:              sltiu        tp, s1, 318
                  auipc        a6, 56331
194:              srai         ra, a3, 27
                  slli         s0, t2, 19
                  sll          sp, sp, t1
                  and          a2, s11, a6
                  and          t5, a2, a5
                  xori         a2, a1, 736
                  blt          t5, s7, 206f
                  blt          sp, t6, 206f
                  srl          ra, gp, a3
                  bge          t3, zero, 204f
204:              lui          s9, 811337
205:              auipc        zero, 795836
206:              xori         t2, a0, 1664
                  addi         s2, t0, -1228
                  bltu         s4, a1, 228f
                  andi         s3, s1, 1138
                  srai         a6, a5, 0
                  xori         s6, a6, -1485
                  beq          t0, s5, 225f
                  sltu         a3, t0, s0
                  or           zero, t3, zero
                  sll          a6, t5, s1
                  auipc        t0, 947229
                  bge          s6, s2, 233f
                  sll          a3, a2, t0
                  slti         a1, s6, 472
                  slt          s5, t6, t1
                  bgeu         s5, s2, 233f
                  sltu         gp, t3, a5
                  slti         a1, s2, 671
                  andi         s9, s3, -1282
225:              bne          a6, a0, 237f
                  lui          t5, 679548
                  andi         s7, s5, 23
228:              srai         s10, t1, 22
                  and          t1, a0, a2
                  xor          s7, s6, t6
                  auipc        t6, 1047736
                  slt          s7, s9, a2
233:              auipc        a3, 434113
                  slli         zero, a1, 4
                  addi         t3, t3, 292
                  beq          t6, s3, 243f
237:              sub          zero, t3, s11
                  slti         s1, t3, 1747
                  sll          a5, t0, a0
                  and          s2, s4, gp
                  xor          a3, s4, s6
                  bltu         t6, s8, 243f
243:              addi         s1, s6, 1418
                  lw           sp, 4(a0)
                  xori         s6, a6, -1989
                  lui          a6, 717819
                  andi         a5, a0, 1090
                  addi         a0, a0, 24
                  xori         t6, zero, -501
426:              addi x2, x2, 1
426:              jalr x2, x2, 0
sub_1:            bne          a1, a3, sub_1_stack_p
                  addi         s3, a5, -334
                  lui          s9, 743522
                  srai         t2, a2, 30
                  sra          a1, s3, gp
sub_1_stack_p:    addi         a0, a0, -56
                  xor          t1, t1, t6
                  or           t3, a1, a1
                  sll          s0, s6, t3
                  sw           sp, 4(a0)
                  and          a1, t3, s11
                  la           s3, sub_2
                  lui          t0, 901423
                  sltiu        s2, t4, 324
                  slt          ra, s6, s10
                  lui          a5, 131290
                  ori          t6, t1, 61
                  srai         s7, s2, 31
                  addi         s3, s3, -682
                  slti         ra, s3, 1758
                  sltiu        s5, s2, 990
                  nop
                  ori          ra, tp, -317
sub_1_j3:         jalr         sp, s3, 683 #jump sub_1 -> sub_2
                  la           a7, sub_2
                  lui          ra, 505423
                  sra          s3, t1, gp
                  addi         a7, a7, 753
                  sra          s7, a4, s0
                  auipc        s1, 900523
                  sub          ra, ra, gp
                  sll          t0, tp, a1
sub_1_j4:         jalr         sp, a7, -753 #jump sub_1 -> sub_2
                  la           s2, region_0+1456 #start load_store_instr_stream_0
                  la           s3, region_0+1185 #start load_store_instr_stream_1
                  lb           s8, 0(s3)
                  la           t0, region_0+1333 #start load_store_instr_stream_2
                  lhu          s1, 9(t0)
                  lh           s7, -9(s3)
                  lbu          a7, -7(s2)
                  lw           a5, -9(t0)
                  lb           ra, -6(t0)
                  lh           t1, 9(t0)
                  lbu          s0, 6(s3)
                  sh           s10, -16(s2)
                  sb           a6, 14(t0)
                  lb           s9, -3(s3)
                  lb           tp, -14(s3)
                  lb           gp, 5(t0)
                  lb           a6, 1(s2)
                  lh           a5, -15(t0)
                  lb           s8, -12(t0)
                  sb           tp, -12(s3)
                  lhu          t6, 8(s2)
                  lbu          s8, 14(t0) #end load_store_instr_stream_2
                  sb           s1, 16(s3) #end load_store_instr_stream_1
                  lw           t5, -16(s2) #end load_store_instr_stream_0
                  la           s8, region_0+1139 #start riscv_load_store_rand_instr_stream_0
                  slt          s6, s5, t0
                  lbu          s7, -75(s8)
                  lhu          s3, 85(s8)
                  sh           s7, -55(s8)
                  slli         ra, a3, 0
                  lhu          s1, -243(s8)
                  lb           t1, -242(s8)
                  sb           a2, 110(s8)
                  lb           s4, -205(s8)
                  srli         tp, s5, 14
                  slt          s1, a5, a1
                  add          zero, tp, a2
                  lb           gp, -36(s8)
                  sb           a0, -170(s8)
                  sltu         s5, a4, s11
                  auipc        s9, 409256
                  lui          s7, 723978
                  sb           t3, -210(s8)
                  lh           t1, -179(s8)
                  lbu          gp, -131(s8)
                  xor          t6, s5, s7
                  lbu          t0, 8(s8)
                  slt          a6, s5, s0
                  lbu          s3, 90(s8)
                  nop
                  lbu          sp, 236(s8)
                  slti         sp, s0, 1247
                  sll          a7, a7, a0
                  lbu          a7, -237(s8) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+441 #start riscv_load_store_hazard_instr_stream_0
                  sb           a1, -120(sp)
                  sb           s10, 123(sp)
                  lb           s8, 249(sp)
                  sb           t1, 157(sp)
                  lhu          t6, 29(sp)
                  sb           s0, -202(sp)
                  lb           s5, -202(sp)
                  lbu          s10, -24(sp)
                  sw           s10, 139(sp)
                  slli         t3, s4, 31
                  sb           t5, 104(sp)
                  lbu          zero, 214(sp)
                  lb           ra, 168(sp)
                  andi         t3, s8, -948
                  lb           t2, 168(sp)
                  lh           a7, 161(sp)
                  lw           s4, -45(sp)
                  lh           zero, -245(sp)
                  lbu          a5, -204(sp) #end riscv_load_store_hazard_instr_stream_0
                  auipc        a7, 451679
                  srli         a7, s10, 14
                  nop
                  nop
                  srli         s10, s7, 12
                  ori          s4, t0, 489
                  bltu         t2, t6, 8f
                  bge          s11, a1, 27f
8:                sub          t2, s4, s10
                  bge          s3, sp, 14f
                  sll          a1, s1, a0
                  bgeu         a4, tp, 28f
                  xori         t0, t3, -807
                  sra          sp, s3, tp
14:               slti         a6, zero, -1887
                  bgeu         t2, a2, 28f
                  srai         s0, a5, 6
                  addi         a1, a3, -418
                  sltu         t1, t6, sp
                  lui          t0, 275050
                  beq          a2, s7, 38f
                  or           t6, a0, s1
                  or           s7, t1, s2
                  sltiu        gp, t5, 1862
                  srli         s3, tp, 10
                  sra          a7, s2, t0
                  add          s7, a5, gp
27:               bltu         s2, t4, 31f
28:               add          sp, s8, a4
                  slt          s10, s10, s5
                  lui          t5, 819900
31:               slti         s1, s0, 1330
                  nop
                  bge          s8, t6, 53f
                  bltu         s8, t6, 50f
                  auipc        t6, 508405
                  beq          s7, a2, 56f
                  addi         s0, t6, 330
38:               srli         t1, s7, 15
                  or           t6, s3, s0
                  or           a1, a1, t3
                  sra          a6, s0, a1
                  srl          tp, t2, a7
                  sub          a3, s11, s0
                  srai         s3, a5, 3
                  bgeu         s6, s4, 56f
                  bgeu         a2, tp, 59f
                  sltu         s4, s8, t2
                  andi         s1, s7, 1308
                  addi         s3, s3, -772
50:               srai         s4, tp, 14
                  and          t0, s1, t1
                  or           ra, a2, a0
53:               slt          s7, t3, sp
                  slt          s1, s2, ra
                  srai         s0, t1, 8
56:               bltu         a6, a6, 73f
                  bge          zero, a4, 58f
58:               sub          s1, a5, gp
59:               slt          ra, t0, t4
                  slli         t4, s2, 15
                  addi         t5, gp, 925
                  sll          t4, ra, s9
                  bne          a6, s0, 76f
                  sll          t6, s0, a6
                  slt          t3, tp, gp
                  srli         a7, a4, 10
                  sll          s7, s6, s10
                  slli         s4, s4, 11
                  sub          t5, tp, s9
                  bne          t0, s1, 87f
                  bltu         s1, t1, 76f
                  addi         zero, t3, -875
73:               sll          sp, s11, a0
                  sltu         sp, t0, a1
                  beq          s1, gp, 78f
76:               bne          s1, s11, 77f
77:               beq          a5, a0, 87f
78:               slli         t5, s3, 23
                  and          s10, sp, s2
                  andi         s9, s7, -1674
                  lui          s8, 235644
                  bne          tp, a4, 95f
                  auipc        s5, 624423
                  srai         s1, gp, 0
                  ori          tp, s0, 744
                  sltiu        t1, zero, -1460
87:               blt          t2, ra, 106f
                  xor          s6, a5, ra
                  nop
                  srl          a1, s0, a2
                  sltiu        a5, t1, 927
                  bgeu         gp, gp, 104f
                  sll          s3, s11, s5
                  ori          s2, a1, -75
95:               xori         gp, s0, -1146
                  bne          zero, t5, 104f
                  or           s0, s8, s9
                  sltiu        t4, s10, -2047
                  xor          zero, s2, tp
                  and          s10, tp, s5
                  srli         ra, a2, 21
                  bge          a1, t6, 111f
                  xor          gp, t5, s11
104:              slli         zero, a5, 16
                  add          s8, zero, s2
106:              lui          t1, 920866
                  blt          gp, s9, 119f
                  xori         t3, a3, -982
                  nop
                  bge          a0, tp, 112f
111:              and          s5, a1, t5
112:              or           a2, a1, t4
                  bltu         a7, gp, 117f
                  sll          tp, s0, a7
                  or           gp, s0, gp
                  bgeu         a6, a2, 119f
117:              ori          t3, t3, 954
                  bne          zero, s4, 119f
119:              sll          s10, gp, gp
                  lw           sp, 4(a0)
                  slt          a5, s7, a4
                  slt          a6, a2, s8
                  addi         s9, a2, -1442
                  sltu         a7, s10, s1
                  addi         a0, a0, 56
                  add          ra, s1, t2
234:              addi x17, x2, 0
234:              jalr x17, x17, 0
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
.word 0x4f940081, 0xe502cf0a, 0xad53a003, 0x311bc660, 0x2d473d66, 0x0b2acffb, 0x9fab95fe, 0x1322bfa2
.word 0x5bf3ae21, 0xd6446d5e, 0x18e4bb19, 0xd456171e, 0xef9bf607, 0x0cc820dd, 0x99dd2c47, 0x74a65607
.word 0x7e0553ea, 0x69b36f91, 0xbedb4deb, 0xd08ede66, 0xe64f4a72, 0x615d820e, 0xd6522ff3, 0xac4ae951
.word 0x92eb6b93, 0xf6fee0c7, 0x63de953b, 0xf825eefc, 0xdcce7d8b, 0x416e17bc, 0x4b022fce, 0x9ebff56b
.word 0x4a2ec4dc, 0x86278a88, 0xb4170d8f, 0xa3b8e533, 0x17c1b505, 0xbaff6eee, 0x8621862e, 0x824f7310
.word 0xb666d079, 0xa6f38e79, 0xceb8097c, 0x2071eee5, 0x99ea8e9a, 0xe8331c19, 0x747f51b7, 0x9d0512ed
.word 0x8b29720c, 0x8fe2d494, 0xd9b9922b, 0x80816542, 0x01a0811c, 0xfc14a52d, 0x6aecdd5a, 0xbb669cef
.word 0x5ecc9dc6, 0xb7c50f60, 0x862173ee, 0x90143d2b, 0x1e0b8b11, 0xf05a6a38, 0x8ae30fa3, 0x436b3308
.word 0x3c0b2ef6, 0xc54ee1c6, 0x9bcbeee4, 0xc06bf3dd, 0xbab87d9e, 0xdafb2302, 0x090d9ad7, 0xe6c89584
.word 0xc2d1a66c, 0xc59e0e06, 0x43b8c48a, 0x952621db, 0x327edcad, 0x8e7dc6a6, 0x69852f5f, 0xf269d6ba
.word 0xf13b1d12, 0x197fe2e5, 0x8957e4c8, 0x09211706, 0xb61bb292, 0x5e847d01, 0xf03fe41e, 0x9648f92e
.word 0x860c977d, 0xd9092b7f, 0x6efd5849, 0x1b1b706c, 0x946850a5, 0x9d97743d, 0x158a3a61, 0x4b5b2050
.word 0x9a6e60c6, 0xbd6e0543, 0x616fe272, 0xb8ec0204, 0x194eb28a, 0xfe5f9087, 0x950bec4f, 0x40f4a2f5
.word 0x60e0c0a6, 0x6db9055d, 0xa07e2fc5, 0x791ea505, 0x0dcf494c, 0xd77f5f04, 0x7d2f4ccc, 0xf5d78592
.word 0xd858c5ed, 0x26ffef20, 0xc272fad2, 0x83d6d882, 0xb1567d6e, 0x90cfdd22, 0x57c3c443, 0xf23aacbb
.word 0xd625ae4d, 0xa1198a25, 0xacdcadb8, 0x7fbde0a5, 0xa54771e5, 0x69a61714, 0x0ab16f9b, 0x0190034b
.word 0x286f0b83, 0xe2b00808, 0xf7b7c6fc, 0xbdb44ed6, 0xd85a3494, 0x8cdbd477, 0xafb85737, 0x2102e88c
.word 0xe169b6c5, 0x8a03e3a1, 0x1ed92616, 0x886edaa7, 0x810a2bd3, 0xcc9929b5, 0x90b37a4b, 0xf2404af0
.word 0x691f3f5d, 0x82fed988, 0xdd6244c0, 0xdfaaed8e, 0x66506541, 0xecee1734, 0xfb9cd474, 0xacd6b6b2
.word 0x49276f81, 0x8431f847, 0x2688ee3f, 0xf02f8f55, 0x74efe6b8, 0xe27a7b4f, 0x0921e41f, 0x8cb74c0b
.word 0x1440fe9e, 0x5171a263, 0xac2702a2, 0xb8edf22f, 0x375a03ea, 0x70145fb0, 0xd1405b17, 0xe15d06cd
.word 0x52994c07, 0xf9c2fbf5, 0x30ee37f8, 0x95ebcbfa, 0xa00686d3, 0xa50472c7, 0xaa6554c2, 0x4d9a07d0
.word 0x1781cb74, 0x021dc7de, 0xe8fdc3f8, 0x902e06da, 0x2e64549d, 0x2e2c7fd8, 0x6f68e155, 0x59689e2a
.word 0xa6307005, 0x895bbb2d, 0x6b425e07, 0x70df5e76, 0x85641539, 0x08b69874, 0xd9c53f9b, 0xedb712f5
.word 0x02f2146d, 0x5bfc39e3, 0xe7747abc, 0x1db0d52a, 0x54ab60e7, 0x5ec98598, 0xdc4e6a9d, 0xd9019c28
.word 0x25f348e8, 0x73413ef5, 0xa54e3a52, 0xe7a3e902, 0xf2ba6d80, 0xf14530a0, 0xd60068ee, 0xdd07e7db
.word 0x54b612a2, 0xe05ac91b, 0x1e9cfd3b, 0xe16fbac1, 0x6eafa696, 0x27f3992b, 0x88765637, 0xd40df25d
.word 0xfc4d47f3, 0xfc2f854b, 0x2fcba143, 0x62e297e9, 0x8e792414, 0x85f149da, 0x7562e5b9, 0xfdbbe2ca
.word 0xf76ae478, 0xd5da5088, 0x7c79891d, 0xc8f42066, 0x5b456bc5, 0xc2910068, 0x6dd28590, 0x9eb74de9
.word 0xe8157c3e, 0xea2adad7, 0x0fdaa712, 0x6aabb18f, 0x3884f75d, 0x591bc860, 0xd6f374e1, 0xcfc5cd00
.word 0x190ef693, 0x9bcef680, 0x523a215a, 0xfa46db2a, 0xf07338bf, 0xed1c140d, 0x8e01418d, 0x96c8a6f1
.word 0x91ae7c41, 0x997c58f6, 0x1e63bf60, 0x83d93ca9, 0xcaffa89a, 0x2a163fd5, 0x0d66a895, 0x67f0d7c5
.word 0xdd189538, 0x7dc09732, 0x7d1e2979, 0xb9f8c296, 0x0484a271, 0xa07ad820, 0x6d79ad01, 0xa5aef7c5
.word 0x36750406, 0xb2b28ed9, 0xc7843d3f, 0x0dc9b508, 0x0ac91f14, 0x13f9179c, 0x1debb65a, 0x15f811b9
.word 0x634c919b, 0x0dcd7111, 0xfcae1824, 0xe7dbe020, 0xe73ab846, 0x647b41f6, 0x618578d1, 0x7db24d05
.word 0xf8315998, 0x40267030, 0x75eaf219, 0xb8dd4468, 0xeda4da20, 0x4c38a09d, 0xb3a99c3f, 0x7eb0475c
.word 0x689739fc, 0x3f09fc27, 0xcc48b377, 0xff700b98, 0x2a284f1c, 0x63022af1, 0x90ef5394, 0xd6169176
.word 0xfc45fa49, 0xb5473b1b, 0x636a7f14, 0x0be09ffc, 0x5d24f247, 0x98b58f34, 0xebbce4f4, 0x9d5d756b
.word 0x14848bcf, 0x1b0370be, 0xb8d089ae, 0xc3f26694, 0xc33a3d6a, 0xecea5127, 0xcfc6e6ee, 0x30e5a5ee
.word 0xd6276805, 0x07f0d06f, 0xf79a0070, 0x48a8bf51, 0xc7406258, 0x3aacfb22, 0x2d0d6ddc, 0xa06bf72a
.word 0x3bf40f68, 0x6dafba56, 0xb24b6cbb, 0x6ecf008e, 0x1cbf27b9, 0xc035ec4d, 0xcd567b57, 0xee94f18d
.word 0xbba0678d, 0x3bfb6596, 0xa43f5a88, 0xce0906b4, 0x0b3886ea, 0x27c8cde9, 0x0fe0f508, 0x04ddb963
.word 0xa47970d7, 0xf1ac32a8, 0x0ea4dc0d, 0x52b32398, 0x8c04b51d, 0x752764e9, 0xd2717177, 0x21eda69c
.word 0x0a5a684e, 0x10d7a1d4, 0x2321988e, 0xa4828743, 0xea62c4fe, 0x7361a690, 0xde8daea6, 0x5bda1b8b
.word 0x085f9be8, 0x3f0be732, 0x78ab56bc, 0xae287fb8, 0x0c32a82e, 0x0022aad7, 0xf308a5e1, 0x982dd893
.word 0xb7b7d875, 0xe9f3f267, 0x36e6d4d1, 0x95bd506a, 0xddcd4da0, 0x37fc7b6f, 0x344a568e, 0x947508b0
.word 0x39238b6c, 0x2533cbad, 0x192022a9, 0xd7b9348e, 0xbce6ddb0, 0xc6a8e217, 0xea0511a6, 0x4c636fd0
.word 0x10df1845, 0x8df5bf62, 0x4e133799, 0xfaf2c535, 0x81544007, 0xd2ec996f, 0x26df93bb, 0xedf65ef2
.word 0xea081362, 0xfc876a0c, 0xd2f7bd6c, 0xffab487d, 0xab4dc7a8, 0x01bc87fc, 0x6f724263, 0xa309256d
.word 0x9a62722d, 0xd8f24197, 0xf4a27987, 0x707e6e40, 0xbbc983c4, 0xe388c6ca, 0xd5407003, 0x1eb19619
.word 0x82fca2b8, 0x8442448b, 0x44f57bc1, 0x796921b8, 0xab647c9d, 0xe09e2d5b, 0x7d6e3d25, 0x72eb6923
.word 0x11d6fd14, 0x830a788e, 0xa1a16fe7, 0x1bc2f04f, 0xcccf2e09, 0xea3bf1cd, 0x1a92e5da, 0x37d554dd
.word 0xe4045b61, 0xe032cbf8, 0x8d0830b4, 0x76ffa584, 0xd8d9d5f3, 0x85df44e9, 0x3b7d0f49, 0x37d19fb8
.word 0x53aeafa9, 0x963742b0, 0x6b1836b9, 0xaf56ae4b, 0x4ec2d16e, 0x1ac6a7b6, 0xf6bd11bb, 0x3b550532
.word 0xa5a282ff, 0xff5d1b2f, 0x070a8adc, 0xfa713361, 0x4ef48044, 0x007233ef, 0x472125d5, 0x80e9ff58
.word 0x2bdd6aac, 0xac93eed4, 0x860aad42, 0x4a08dfc9, 0xc299e1d5, 0x103f0a9e, 0x16a1dbdd, 0x7363b0bc
.word 0x67219ac1, 0xcfd10afd, 0x42b04c14, 0x84335948, 0x86b6dae6, 0x8c40b71a, 0xcbe343f3, 0x195d9aaa
.word 0x0b37c2be, 0x03a1c290, 0x4e75e33e, 0x472a76dd, 0x9620bc20, 0xc8fb0efb, 0xb97cc2dc, 0x1ec1d5ba
.word 0x1b6d97c7, 0xa19f8419, 0x64d96220, 0xf5b636a5, 0x3176cc40, 0x472151a3, 0xaeffb13a, 0x8c4e4785
.word 0x61735af0, 0x6ab40dec, 0x5a7f4837, 0x7aeb030c, 0x36b85d61, 0xde4c96b1, 0xe60bb2f0, 0xf36a5691
.word 0x26b685b0, 0x516816de, 0x54330375, 0xea868548, 0x016a0f2b, 0x5ad0c726, 0xac3b6f88, 0x34bfb7b9
.word 0xf4872337, 0x594fb144, 0x7851958d, 0xee3501f0, 0xd6997963, 0xd0011049, 0x021a7086, 0x712ab3c6
.word 0x3ab713d8, 0x63651708, 0x83ecafdb, 0xcb05dd72
.section .region_1,"aw",@progbits;
region_1:
.word 0x378be996, 0xa916e948, 0x16b6fffe, 0x4f9cd861, 0xcd52d1d4, 0x605e8b13, 0x6d2ff9bb, 0xd593f7cc
.word 0xca5a1b42, 0x1207320f, 0x8b9b2478, 0x8a9740d1, 0xac5661e7, 0xaf1738e1, 0x221933b3, 0x84bea384
.word 0x463f3a12, 0xb59cbb36, 0x45dd4f30, 0x7aacb3ee, 0x2c1f2ba9, 0xb75bd555, 0x2a643bcf, 0x446d521a
.word 0xafd53d94, 0x5bc22cf5, 0x3814a37f, 0x137e7451, 0xf3738c0b, 0xc9bee106, 0xa8273f92, 0x47cabc1f
.word 0x6b65d4da, 0x769866f3, 0xc3bec21a, 0xbd168b2c, 0x79b98942, 0xfb04c5a5, 0x542f6554, 0x6bf06357
.word 0x7d330612, 0xd6d07c75, 0x7d1b63e4, 0x1ace4a1b, 0x2df38f7a, 0x385eaf90, 0x30167817, 0x5163fa03
.word 0x127ef103, 0x32842d7b, 0xc72592a2, 0xa03cd053, 0x6c6f7b03, 0xf94da09f, 0x1aae16f3, 0xe808674b
.word 0xc270efa4, 0xcdeee115, 0x13581ff4, 0x7f63874e, 0x93fa5035, 0x146a9eb6, 0xf554da11, 0xa5c31901
.word 0x318eb99e, 0x68ed44ee, 0x320d51f2, 0xd50c189c, 0xa3d1fad4, 0xca2de893, 0xfe69f5c9, 0x18d9e6a2
.word 0x848054f2, 0xd0ef295f, 0xf69c7eee, 0x6eb75862, 0xbf9b3e1f, 0x86066d55, 0x2dccbb04, 0x38f562f0
.word 0xe01b4e37, 0x4b849f12, 0x11c79f63, 0x89590978, 0xfa73bc1b, 0xe10e8635, 0x4641691b, 0xe9c4ebf0
.word 0x2b9a1d6e, 0x6b09aaee, 0x31ee52c2, 0x643650ab, 0x3bd79a36, 0xd975a0f4, 0x55f87d54, 0xc0b80428
.word 0x0d456f7a, 0xf0dcee12, 0x79ec84fc, 0xb2ded25a, 0xeaaf2c5e, 0x3add8bbc, 0xc855d81f, 0x6381cd6e
.word 0x4ba1533c, 0x1a66d628, 0x42371d33, 0xe0a121ff, 0x5d9bbff6, 0x2138f7bc, 0x59b459ee, 0xca38ee40
.word 0x3e8d8961, 0x4e9f3869, 0x71a9a11c, 0xab15d0c1, 0xc9482c66, 0xf4b643f9, 0x542c4b32, 0x46f096db
.word 0x040b81e5, 0xd829d2b2, 0xb3352979, 0x483ce1a0, 0x05549cb2, 0x8d3c4e1e, 0xd542c09a, 0x7b1e451c
.word 0x7865c9c3, 0x66614ace, 0x6a0b482b, 0x03337cea, 0xb0d06bad, 0xe58b22a2, 0x104c460d, 0xe2635f21
.word 0x886dbab4, 0xb5c76276, 0x076eef98, 0x24fdf3e9, 0x41c5d9c3, 0x17d94791, 0xc90187b8, 0xf6d238da
.word 0xb8132c0a, 0xa4adb929, 0x96e20653, 0x1c5dafbb, 0x9af85888, 0xe3d0841f, 0xb4dd1154, 0x6cd9941b
.word 0x370ea255, 0x269923dd, 0x15fc38e0, 0x472adc7b, 0x9bc3a6e3, 0x10434e2c, 0x74ac07cf, 0xb4ef46f9
.word 0x499bd532, 0x85c9918e, 0x25a23146, 0x4fef8f07, 0x049a3c10, 0x5d01768a, 0x49aaa344, 0x5906379f
.word 0xf9e2f147, 0x46222c19, 0x9dd00a04, 0x82a872f3, 0xa599c388, 0x8afd8313, 0x63c1e009, 0xb5a044c6
.word 0x2eed5673, 0x44944add, 0x1ec50b31, 0x304b0d5b, 0x7f1431ce, 0x16656185, 0x83f01864, 0x54ad9a04
.word 0x0f303c6f, 0xc28a1d64, 0xf3dfddb0, 0x2f3181da, 0x4346f9f2, 0x32fd3f63, 0xb7f5fc9b, 0xf784e47c
.word 0xfbcdf2b3, 0x9a023e87, 0x045019a8, 0x3c60bc2b, 0x8b97fae6, 0xb3768d70, 0x94d350e4, 0xf691493d
.word 0x89c9bbac, 0xa12628d1, 0x91f6fbf8, 0x26013088, 0xa492a97c, 0xd18b66b5, 0x5eab21a4, 0x54b1645d
.word 0x94ae65fc, 0x84c1a831, 0xd6d2b5f0, 0x0b5645b3, 0x8d57fa91, 0xd4555ed4, 0x13de2d29, 0xf7b37b87
.word 0x8630fce2, 0x05b186a1, 0x07fc97a5, 0x2739899b, 0x9ca1736c, 0x6b62f3e1, 0x64ed169e, 0x249dbae4
.word 0xddc3adb8, 0xeb24854e, 0x134ce17f, 0x8711dd07, 0xb8c6683c, 0xc86aa32c, 0xba6f52aa, 0xd377c2a4
.word 0x23aab07c, 0x67a22847, 0xb28ce3b7, 0x9567f317, 0xf495140c, 0x9d0c60e0, 0xfd8a4f41, 0xb6a6b589
.word 0x404e2640, 0xb01c1edc, 0x0d9899a6, 0x5ac744db, 0xa95634dc, 0xb2d66393, 0xfa07fae6, 0x01470d8d
.word 0xc9c0656b, 0xb49f0a55, 0xcef0060c, 0x29a922c4, 0xd49ed73a, 0x32736f72, 0x23ab407a, 0xfabdbf21
.word 0x1f63ebd0, 0xa7963f6c, 0xd4bcf551, 0x97cb36c4, 0xd46be841, 0x63dd64da, 0x47268f93, 0xb31ae44b
.word 0xe0b4093e, 0x296c2f7b, 0x5423fb72, 0x3df080ea, 0xa2fd31c8, 0xaf10b7fa, 0x1f3379d5, 0x4ba026be
.word 0x70231525, 0x6dae7d8e, 0x69333081, 0x168177a5, 0x24d69e6b, 0x0dd4eee6, 0xc06714bc, 0x47f33204
.word 0x5e623d1d, 0x286bfde5, 0x7437f13d, 0x35f387b1, 0x4983d258, 0xd988a2d6, 0x0eb032a6, 0xfebbd8b6
.word 0x9d1ef643, 0x7b082536, 0xd939c53c, 0x58cabaa7, 0x98daca6d, 0x9033869e, 0x8c9aabce, 0x5f146285
.word 0x9e118348, 0x2f00e616, 0x1d520ecd, 0x3dcc788a, 0xe2dd55b2, 0x5715de96, 0x1d428eb9, 0x972e709d
.word 0xf0abd833, 0x44307c5f, 0x285ed6ce, 0xd8d6392a, 0x7a390ec9, 0xc28d18b4, 0xf8648828, 0x125a1863
.word 0xafc116b7, 0x6c728402, 0xc66360bf, 0x5607f522, 0x5b718d3b, 0x099781c0, 0x45682e89, 0x4a41bd86
.word 0xff324d84, 0x20ada286, 0x43f163bb, 0xc04504e8, 0x2ecb1144, 0xecca73f5, 0xa58acb1d, 0xa75cb9fc
.word 0x1466482c, 0x992a4f28, 0x9e926e0b, 0x72c4b77d, 0x199bbc73, 0x68044b9a, 0x30b4871f, 0x17a9b471
.word 0xde9d3aff, 0x71a3832c, 0x3db76557, 0xf7e004e5, 0x7a079c89, 0x0a0211df, 0xb350796c, 0x942d69aa
.word 0x62d35368, 0xc95062c7, 0x23f6ca96, 0x9e9b19ce, 0x6757b99a, 0x79f67d6c, 0x353b2cf6, 0xfb796e71
.word 0xdd8845fa, 0xec97094b, 0x86afef33, 0xb85a0699, 0xe08038c9, 0x93cf87a9, 0x53b2d58a, 0x19de9041
.word 0x67e32ca7, 0x6bba8568, 0xe2dc9ee1, 0x9163e06c, 0xd7403cec, 0xb562b628, 0x588f8935, 0x45f2f630
.word 0x48f45929, 0x2eba8ac4, 0xed06a730, 0x73bc0ea1, 0x564eb139, 0x59f7c313, 0x83663c58, 0xd9b1376d
.word 0x4d4d8613, 0x03962c25, 0xb8a89137, 0x9ddf2506, 0x9d5b2655, 0x088ddf56, 0x827c5c57, 0xa936e147
.word 0x573e6565, 0x17306595, 0xf3853594, 0xc2930cde, 0x76e2097c, 0xefd4dcc0, 0x458cf688, 0x0128a589
.word 0xd28d1663, 0x94a4fab4, 0x803a91f6, 0x30f4164c, 0xf803e635, 0x7d5fb284, 0xc1b2fdce, 0x85291319
.word 0x6e80164c, 0x5fc5c10f, 0xabb4dd2a, 0x13d35121, 0x48def8f4, 0xba0f6bd9, 0x0846782e, 0xe4648fb4
.word 0x28e8426a, 0x09f155a3, 0x2b0dd807, 0x0e7cc4f2, 0xe85262fb, 0x6b8c518f, 0xa2475ba0, 0x65b0dd3a
.word 0x06812bd8, 0x7704aebb, 0x736b8d79, 0xf17c4403, 0xc63c7fb1, 0xbbde18c6, 0x51bfe04e, 0x96733786
.word 0x5a8af6f0, 0xbd78a5a1, 0xff8784ce, 0xb99cc3f5, 0xd3a217fa, 0xba4fa8a2, 0x69115ca5, 0xf3ab5503
.word 0xe3bc756e, 0xa5e80e44, 0x67e5f76d, 0xca3ebb1e, 0x4bd3c15c, 0x2ad307ff, 0x3f812357, 0x2eb5430f
.word 0x0c0ec0d8, 0x4a06d584, 0x35ffd622, 0xea13d726, 0x1e9cecba, 0x01de6340, 0x1879866f, 0x9c861252
.word 0x41bfab90, 0xc7a4bcf7, 0x498eb2ef, 0x40d70923, 0x8b2e5e1e, 0x20a31156, 0x47f7a2fb, 0x2f0ee147
.word 0x3c630f85, 0x9df2766a, 0xbadf0367, 0xb0c9996c, 0xd71748fd, 0xf2f22837, 0x0caf5f9b, 0x3324bbbd
.word 0x52bace28, 0x5e9b51f1, 0xb9a92d88, 0x09e921cb, 0x2542676f, 0x62043751, 0x02152097, 0x8d735bab
.word 0x9f2793d7, 0x981ceb7e, 0x4beaeba0, 0xf36e5af2, 0x2d239e93, 0xf95a5892, 0x6d77708f, 0x697a289f
.word 0xa4e84b41, 0x7360d840, 0x37fc58fa, 0x1909a5e2, 0xf525bfdb, 0x1b3a5e6b, 0xa150c957, 0x92693114
.word 0xa96046fd, 0x2c35921c, 0x06d67a0f, 0x1ed9d4f3, 0x4df2f684, 0x9bd8d8db, 0xf4401097, 0xb3719e52
.word 0x9588ff0a, 0x16344f55, 0xb82c611b, 0xf616b980
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
                  add x27, x10, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x24, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x24, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x24, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x24, x30, ecall_handler
                  li x30, 0x1
                  beq x24, x30, instr_fault_handler
                  li x30, 0x5
                  beq x24, x30, load_fault_handler
                  li x30, 0x7
                  beq x24, x30, store_fault_handler
                  li x30, 0xc
                  beq x24, x30, pt_fault_handler
                  li x30, 0xd
                  beq x24, x30, pt_fault_handler
                  li x30, 0xf
                  beq x24, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x10, x27, zero
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
                  add x10, x27, zero
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
                  add x10, x27, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x10, x27, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x10, x27, zero
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
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x10, x27, zero
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
