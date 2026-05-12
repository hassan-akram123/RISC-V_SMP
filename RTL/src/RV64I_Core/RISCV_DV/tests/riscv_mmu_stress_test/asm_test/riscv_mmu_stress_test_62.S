.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf2051a58
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xa
                  li x5, 0xf8992ab6
                  li x6, 0x8
                  li x7, 0xfa85bc65
                  li x8, 0xf5cb3b69
                  li x9, 0x80000000
                  li x10, 0xf755d615
                  li x11, 0xf4b45ac8
                  li x12, 0xf837f5b9
                  li x13, 0xcbf9f70
                  li x15, 0x13bcbf08
                  li x16, 0xb4faf6c1
                  li x17, 0x26cee3f5
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0xff43bcb1
                  li x22, 0xfea6ae34
                  li x24, 0xff5edbcb
                  li x25, 0x80000000
                  li x26, 0xc
                  li x27, 0xfdab9b41
                  li x28, 0x0
                  li x29, 0x19a6ed71
                  li x30, 0x1bb315b4
                  li x31, 0xd
                  la x14, user_stack_end
main:             slli         s0, tp, 20
                  la           s2, sub_1
                  or           a6, a6, a0
                  addi         s2, s2, -776
                  srl          s3, s10, t2
                  beq          s1, s7, main_j2 #branch to jump instr
                  sub          a0, s0, s3
                  or           a1, s11, s4
                  auipc        a3, 379484
                  xor          t3, a2, a3
main_j2:          jalr         t6, s2, 777 #jump main -> sub_1
                  la           s8, region_1+1167 #start load_store_instr_stream_0
                  lbu          t2, -62(s8)
                  lb           s4, 1(s8)
                  la           s2, region_1+1659 #start load_store_instr_stream_1
                  sb           gp, 40(s2)
                  lh           a1, -29(s8)
                  lb           s11, -38(s2)
                  lhu          t0, 25(s8)
                  sh           a0, -45(s2)
                  sb           s9, 38(s8)
                  lw           t3, 13(s8)
                  lh           a6, -35(s8)
                  sb           t5, -54(s8)
                  sb           s2, -40(s2)
                  sb           a1, -36(s2)
                  sh           s10, -29(s2) #end load_store_instr_stream_1
                  lb           a3, -60(s8)
                  sb           s0, 3(s8) #end load_store_instr_stream_0
                  la           t6, region_0+557 #start riscv_load_store_hazard_instr_stream_0
                  sb           s0, -10(t6)
                  sb           t3, -10(t6)
                  lb           t1, -10(t6)
                  slli         zero, a5, 24
                  sb           s6, -10(t6)
                  andi         ra, sp, -1425
                  ori          s10, tp, -375
                  lbu          a6, -10(t6)
                  lb           t1, -10(t6)
                  lbu          tp, -10(t6)
                  lbu          sp, -10(t6)
                  slti         a3, a4, 1784
                  lb           a3, -10(t6)
                  lbu          t0, -10(t6)
                  sb           gp, -10(t6)
                  lb           s0, -10(t6)
                  lbu          s0, -10(t6)
                  nop
                  sltiu        s2, s1, -584
                  sb           a3, -10(t6)
                  lbu          s8, -10(t6)
                  slli         s10, a1, 24
                  lbu          gp, -10(t6)
                  lbu          a0, -10(t6) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+296 #start riscv_load_store_rand_instr_stream_0
                  sh           s0, 104(sp)
                  lb           t1, -219(sp)
                  slli         a7, s7, 27
                  sh           t6, 870(sp)
                  lhu          a7, 1598(sp)
                  add          s1, zero, t1
                  srl          t2, t3, a3
                  lhu          a7, -182(sp)
                  lbu          s4, 283(sp)
                  add          a2, tp, s0
                  lb           t1, 235(sp)
                  sb           tp, -130(sp)
                  lbu          t2, 874(sp)
                  auipc        a7, 983230
                  lbu          ra, 263(sp)
                  lbu          s11, 922(sp)
                  sb           s8, 1692(sp)
                  lbu          a2, 1029(sp)
                  lbu          t3, -162(sp)
                  lb           tp, 549(sp)
                  ori          a3, sp, 266
                  sltiu        s8, zero, -1405
                  sb           sp, -79(sp)
                  srli         t4, s10, 4
                  addi         s3, s10, 308
                  sub          a3, t6, t5
                  nop
                  lh           zero, 1388(sp)
                  slti         t3, t1, -1161
                  sb           s0, 645(sp)
                  slt          a0, a1, s6
                  andi         s4, s7, -578
                  or           t0, s6, a1
                  lb           s5, 364(sp)
                  srli         s8, gp, 3
                  sltu         tp, a4, s8
                  lw           tp, 696(sp)
                  lhu          a1, 1330(sp)
                  and          a7, t5, a4
                  lbu          t6, 1465(sp)
                  xor          t4, t5, gp
                  lui          t1, 199829
                  sltu         t5, a2, a6
                  slti         t3, a4, -869
                  lbu          s3, -150(sp)
                  sltiu        zero, s7, -703
                  lbu          a1, 1683(sp)
                  lb           a1, 1105(sp)
                  sb           a6, 1507(sp)
                  lb           s1, 97(sp)
                  sltiu        s5, tp, -786
                  lb           a3, 286(sp)
                  lbu          s8, 1450(sp)
                  and          a2, tp, t1
                  xori         s0, s0, 1360
                  lbu          t0, 280(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         s1, s9, 3f
                  srl          t1, s1, s2
                  bltu         a5, s6, 14f
3:                slti         s1, a7, -1073
                  xor          a7, s9, s11
                  addi         a6, s5, 180
                  bltu         t1, a2, 18f
                  or           a5, a2, a5
                  addi         t5, a3, -1885
                  blt          gp, s5, 12f
                  and          a0, s6, s5
                  addi         t2, a7, 1530
12:               bltu         a6, tp, 15f
                  and          a3, t5, sp
14:               lui          t5, 846133
15:               slli         a5, t6, 10
                  srl          s1, s11, t6
                  addi         a6, sp, 455
                  ori          s5, t2, -1481
                  xori         t6, s7, 1758
                  la           s4, sub_1
                  add          s0, t6, a5
                  nop
                  sra          s2, s9, t0
                  srli         tp, t5, 1
                  lui          s5, 371667
                  addi         s4, s4, 38
                  xori         gp, ra, -1568
                  bne          s10, ra, main_j1 #branch to jump instr
                  sll          s3, s9, t1
                  slt          t3, a7, sp
main_j1:          jalr         t6, s4, -37 #jump main -> sub_1
18:               nop
                  or           t2, a7, t3
                  sra          ra, zero, s11
                  auipc        zero, 287340
                  and          a0, s1, s1
                  and          s8, s9, a7
                  add          t4, t2, t2
                  xor          s2, gp, s3
                  sll          s10, s7, s3
                  or           s3, s6, t4
                  slti         t3, tp, 1388
                  bgeu         t6, t3, 49f
                  ori          gp, t3, -814
                  sra          t0, s0, a6
                  auipc        s6, 195992
                  blt          s7, a6, 34f
34:               xori         a0, s7, -1174
                  lui          gp, 292850
                  slt          t4, s0, t1
                  bltu         s3, s4, 51f
                  bge          t1, a5, 53f
                  xor          t4, t6, a0
                  nop
                  nop
                  and          s8, a2, t6
                  bne          s9, a6, 54f
                  and          sp, s3, a7
                  sll          a5, t0, s2
                  slti         ra, a4, -408
                  lui          tp, 443411
                  srai         tp, sp, 16
49:               sub          t1, s0, ra
                  srl          s10, s2, t2
51:               sltiu        t6, t4, 127
                  add          a6, zero, a5
53:               bge          a2, sp, 54f
54:               srli         a5, t6, 7
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a4, a4, -40
                  or           a1, a3, s10
                  lui          a5, 778511
                  sw           t6, 4(a4)
                  lui          a0, 666191
                  la           t0, region_0+1825 #start riscv_load_store_hazard_instr_stream_7
                  lb           a6, 12(t0)
                  lbu          s11, 12(t0)
                  lb           s0, 12(t0)
                  sb           gp, 8(t0)
                  sb           sp, 8(t0)
                  sb           s7, -1(t0)
                  sb           s3, -14(t0)
                  sb           t5, -14(t0)
                  lbu          a6, -14(t0)
                  and          a3, a3, t1
                  lbu          t1, -14(t0)
                  lb           t6, -14(t0)
                  lb           a1, -11(t0)
                  sh           tp, -11(t0)
                  slli         t3, a4, 7
                  lhu          s5, 7(t0)
                  sub          zero, t3, s5
                  sh           t2, 7(t0) #end riscv_load_store_hazard_instr_stream_7
                  la           ra, region_0+677 #start load_store_instr_stream_1
                  la           s2, region_0+1354 #start load_store_instr_stream_0
                  sb           t4, -57(s2)
                  lh           s10, 24(s2)
                  la           s4, region_0+655 #start load_store_instr_stream_2
                  sb           s8, -202(ra)
                  lhu          t0, 4(s2)
                  sh           t2, 863(s4)
                  lb           s11, 1112(s4)
                  lhu          sp, 143(ra)
                  lbu          s10, 877(ra)
                  lw           a3, 58(s2)
                  lbu          s11, 474(s4)
                  lhu          zero, -48(s2)
                  sb           s4, -332(s4)
                  sb           t1, -365(s4)
                  sb           sp, -620(s4)
                  lw           t0, 1275(ra)
                  lh           t3, 1327(s4) #end load_store_instr_stream_2
                  lbu          s1, -512(ra) #end load_store_instr_stream_1
                  sb           s2, 25(s2) #end load_store_instr_stream_0
                  la           s4, region_0+31 #start load_store_instr_stream_0
                  lbu          s2, -2(s4)
                  la           a5, region_0+942 #start load_store_instr_stream_2
                  la           s3, region_0+857 #start load_store_instr_stream_1
                  la           a0, region_0+239 #start load_store_instr_stream_3
                  lb           s11, 48(s3)
                  sh           a2, 32(a5)
                  lhu          t1, -28(a5)
                  sb           a0, 10(a0)
                  lhu          s6, 43(s3)
                  sb           s9, -3(s3)
                  sb           zero, 6(a0)
                  lbu          t2, -16(a5)
                  lbu          t6, -24(s4)
                  lb           t1, 11(a5)
                  lhu          a2, -13(a0)
                  lb           s2, 312(s3)
                  lb           zero, 60(s4)
                  sw           gp, 13(a0)
                  sb           a7, -45(a5)
                  lbu          gp, 11(a0)
                  lbu          t0, 16(a0)
                  sh           s2, -309(s3) #end load_store_instr_stream_1
                  sb           s10, -5(a0)
                  lbu          a7, -3(a5)
                  lbu          s11, -14(a5) #end load_store_instr_stream_2
                  sb           tp, -16(a0) #end load_store_instr_stream_3
                  lw           a2, 37(s4)
                  sw           s0, 53(s4) #end load_store_instr_stream_0
                  la           sp, region_1+1825 #start riscv_load_store_rand_instr_stream_7
                  lb           s4, -64(sp)
                  lbu          tp, -52(sp)
                  slt          s2, ra, ra
                  auipc        s4, 14629
                  lbu          t0, 61(sp)
                  lh           s5, -31(sp)
                  lbu          s1, -55(sp)
                  add          a3, s9, zero
                  and          t5, a2, t4
                  lbu          t3, -62(sp)
                  or           t1, t0, gp
                  lh           a5, 13(sp)
                  lb           t3, -45(sp)
                  add          s3, a1, s9
                  lh           s8, 3(sp)
                  sra          t0, ra, a5
                  lhu          a2, 17(sp)
                  lbu          t6, 37(sp)
                  sltiu        s0, t2, -1961
                  lw           s10, -29(sp)
                  and          t1, zero, s9
                  xor          s1, tp, s3
                  sra          s8, t5, s10
                  lhu          a1, 63(sp)
                  lbu          s4, 48(sp)
                  lbu          a0, 56(sp)
                  lh           t6, 5(sp)
                  lh           s1, 37(sp)
                  sb           s3, 36(sp)
                  xor          s0, a1, gp
                  lh           s10, -59(sp)
                  nop
                  sb           s8, 4(sp)
                  lb           s5, -40(sp)
                  slt          gp, s5, t6
                  and          t3, s6, a6
                  lbu          a1, -23(sp)
                  xori         s5, s8, 979
                  xor          t5, s2, s5
                  lb           s0, -2(sp)
                  lbu          t6, -7(sp)
                  lb           s5, 16(sp)
                  and          t4, ra, s5
                  lb           a1, 8(sp)
                  slli         s6, t1, 0
                  lb           t0, -44(sp) #end riscv_load_store_rand_instr_stream_7
                  la           gp, region_1+1331 #start load_store_instr_stream_2
                  la           s10, region_1+1077 #start load_store_instr_stream_0
                  lb           sp, -1074(gp)
                  la           s0, region_1+733 #start load_store_instr_stream_3
                  lhu          s1, -161(s10)
                  sh           s9, -65(s10)
                  la           t0, region_1+552 #start load_store_instr_stream_1
                  lb           a2, 23(t0)
                  lh           t6, -985(gp)
                  lbu          s6, -52(s10)
                  sb           t3, -108(s10)
                  sh           s10, 13(s0)
                  lb           a6, -6(s0)
                  lbu          s5, -12(s0)
                  lb           a1, -3(t0)
                  lb           s2, 174(s10)
                  lbu          a6, -220(s10)
                  lb           s2, -45(t0)
                  sb           a4, -7(s0)
                  sb           a4, -444(gp)
                  lb           t2, -5(t0)
                  lb           s1, -248(s10)
                  lbu          tp, 80(s10)
                  sb           s1, -11(t0)
                  lb           a7, -2(s0)
                  lb           a2, -131(gp)
                  lb           s8, -2(s0)
                  sb           t4, -53(t0)
                  sb           a6, -38(gp)
                  lb           t4, -1297(gp)
                  lbu          s5, -16(s0) #end load_store_instr_stream_3
                  lbu          t5, -53(t0)
                  lbu          ra, -1106(gp) #end load_store_instr_stream_2
                  lbu          s11, 62(t0) #end load_store_instr_stream_1
                  sh           t1, 169(s10) #end load_store_instr_stream_0
                  la           s8, region_0+480 #start load_store_instr_stream_2
                  la           a0, region_0+236 #start load_store_instr_stream_3
                  la           t2, region_0+627 #start load_store_instr_stream_1
                  lbu          t4, -448(t2)
                  la           s2, region_0+830 #start load_store_instr_stream_0
                  lb           gp, 620(s2)
                  lh           a6, 1213(t2)
                  lb           a5, 91(s2)
                  sh           s10, 0(a0)
                  lb           s3, 250(t2)
                  lbu          a3, -7(a0)
                  lw           a1, 1205(t2)
                  lhu          s1, 4(a0)
                  lh           sp, -722(s2)
                  lbu          sp, 83(s2)
                  lw           a5, -16(a0)
                  lb           a3, 352(t2)
                  sh           a7, -485(t2)
                  lhu          ra, 208(s2)
                  lbu          a6, 120(t2)
                  lhu          tp, 12(a0)
                  lb           gp, -10(s8)
                  lb           t1, -250(t2)
                  lbu          s11, -9(s8)
                  lbu          t4, 7(a0)
                  lbu          s5, 953(s2)
                  sb           a3, 0(s8)
                  lb           s10, 7(a0)
                  lbu          s10, 3(s8)
                  lw           s10, -4(s8) #end load_store_instr_stream_2
                  lhu          a3, 6(a0)
                  lbu          gp, 1326(t2) #end load_store_instr_stream_1
                  sh           s0, 0(a0) #end load_store_instr_stream_3
                  lw           t0, 690(s2) #end load_store_instr_stream_0
                  la           s0, region_1+1441 #start riscv_load_store_rand_instr_stream_0
                  slti         s8, s11, -768
                  sb           s11, -36(s0)
                  srli         s3, t5, 19
                  lbu          a6, -63(s0)
                  lb           tp, -45(s0)
                  lbu          a0, 37(s0)
                  sb           tp, -27(s0)
                  srai         tp, s2, 2
                  add          s5, s10, s3
                  sb           a1, 48(s0)
                  lbu          s2, 50(s0)
                  sltu         a6, s9, ra
                  sb           s4, -34(s0)
                  lbu          s8, 31(s0)
                  and          t1, t5, t0
                  sb           ra, -56(s0)
                  lhu          t5, -61(s0)
                  sb           s3, 15(s0)
                  lb           s4, -14(s0)
                  sb           a3, -13(s0)
                  sb           s0, -56(s0)
                  sb           s4, 12(s0)
                  sb           a1, 55(s0)
                  sb           t4, 36(s0)
                  addi         t3, ra, 552
                  lbu          a7, -15(s0)
                  sb           t5, -35(s0)
                  lbu          s4, 48(s0)
                  ori          t4, a5, -2023
                  lb           t1, 48(s0)
                  slt          t4, a0, t3
                  srai         zero, ra, 17
                  lb           s10, 18(s0)
                  lh           a5, 23(s0)
                  lh           t4, 1(s0) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+675 #start load_store_instr_stream_2
                  lb           gp, 6(t5)
                  la           t4, region_1+1500 #start load_store_instr_stream_1
                  sb           a4, -221(t4)
                  sh           t3, 7(t5)
                  lbu          t1, 109(t4)
                  la           s5, region_1+1105 #start load_store_instr_stream_0
                  sh           a3, -74(t4)
                  sw           t4, -21(s5)
                  lh           tp, 5(t5)
                  sb           s1, -180(s5)
                  lbu          t3, -8(t5)
                  lh           a7, -171(s5)
                  lbu          t3, 6(t5)
                  lbu          t1, 97(t4)
                  lb           t2, 2(t5)
                  lb           t3, 14(t5)
                  sb           a5, 148(s5)
                  sh           a4, -211(s5)
                  lbu          s11, 7(t5)
                  lh           t6, 149(s5)
                  lb           s8, 81(t4)
                  lhu          sp, 5(t5)
                  sb           a5, 192(t4)
                  sb           a0, -16(t5) #end load_store_instr_stream_2
                  lbu          t0, 210(s5)
                  sb           s3, 101(t4) #end load_store_instr_stream_1
                  sb           s5, -65(s5)
                  lb           a7, 127(s5)
                  lb           a7, 88(s5) #end load_store_instr_stream_0
                  la           t2, region_0+319 #start load_store_instr_stream_0
                  la           a5, region_0+1432 #start load_store_instr_stream_2
                  la           s4, region_0+1651 #start load_store_instr_stream_1
                  sb           a0, -20(t2)
                  lb           s3, -2(t2)
                  sh           s11, -2(a5)
                  lbu          a2, -105(s4)
                  lb           a7, -49(t2)
                  sw           s2, -16(a5)
                  sb           t4, -754(s4)
                  lbu          a6, 14(a5)
                  lb           a2, 52(t2)
                  lbu          gp, -16(s4)
                  lb           s2, 242(s4)
                  lb           s2, -1(a5)
                  lb           gp, -1196(s4)
                  lb           t0, 46(t2)
                  lbu          a7, -46(t2)
                  lbu          s1, 16(a5)
                  lbu          t4, -1528(s4) #end load_store_instr_stream_1
                  sw           ra, -16(a5) #end load_store_instr_stream_2
                  lbu          a7, -12(t2)
                  lw           ra, 49(t2)
                  lbu          tp, -6(t2) #end load_store_instr_stream_0
                  la           ra, region_0+1464 #start load_store_instr_stream_2
                  la           a7, region_0+1843 #start load_store_instr_stream_1
                  sb           s3, 6(a7)
                  lbu          s6, -359(ra)
                  lb           s0, -1363(ra)
                  la           s1, region_0+809 #start load_store_instr_stream_0
                  lbu          s4, 10(a7)
                  lbu          a3, -971(ra)
                  lb           gp, -785(ra)
                  lbu          zero, -208(s1)
                  lbu          tp, -168(ra)
                  lbu          a0, -36(s1)
                  lbu          gp, 225(s1)
                  sb           s4, 0(a7)
                  lb           t3, -186(ra)
                  sb           s1, 12(a7)
                  lh           s8, 392(ra)
                  lhu          s5, -173(s1)
                  sh           t1, 164(ra)
                  lhu          s8, -5(a7) #end load_store_instr_stream_1
                  lhu          zero, 266(ra) #end load_store_instr_stream_2
                  lbu          a5, 17(s1) #end load_store_instr_stream_0
                  la           s3, region_1+1417 #start load_store_instr_stream_3
                  la           s1, region_1+1082 #start load_store_instr_stream_1
                  sb           s3, 79(s1)
                  lb           s5, 7(s3)
                  lb           t5, -796(s1)
                  la           s11, region_1+191 #start load_store_instr_stream_0
                  lh           a3, -296(s1)
                  lb           zero, 88(s11)
                  lb           a7, 15(s3)
                  sb           a7, 15(s3)
                  lbu          t4, 73(s1)
                  la           ra, region_1+389 #start load_store_instr_stream_2
                  lbu          t2, -8(s3)
                  sb           s0, -156(s11)
                  lh           s0, 203(ra)
                  lb           t5, -4(s3)
                  lbu          s0, -166(ra)
                  lb           t2, -13(s3)
                  lh           a0, -193(ra)
                  lbu          s5, -280(s1)
                  sb           ra, 61(ra)
                  lb           t0, -82(s11)
                  sb           sp, -101(s11)
                  lb           t1, 786(s1)
                  lb           zero, -93(s11)
                  sh           t1, 15(ra)
                  sb           a7, -65(s11)
                  lbu          t5, -10(s3) #end load_store_instr_stream_3
                  sh           s4, -678(s1)
                  sh           s6, 67(s11)
                  lhu          t4, -103(ra)
                  lhu          s5, -237(ra)
                  sb           s0, 141(s1)
                  sb           t4, -229(ra)
                  lhu          a6, -123(s11)
                  lbu          a5, -226(ra)
                  sb           sp, -224(ra) #end load_store_instr_stream_2
                  lh           sp, 284(s1)
                  lbu          gp, 244(s1) #end load_store_instr_stream_1
                  sb           s8, 18(s11) #end load_store_instr_stream_0
                  la           a3, region_0+705 #start riscv_load_store_rand_instr_stream_2
                  srl          s3, s2, a0
                  sh           zero, -1(a3)
                  lbu          t2, -12(a3)
                  lbu          a5, 0(a3)
                  lbu          s4, -14(a3)
                  sh           a0, -3(a3)
                  lhu          t6, 13(a3)
                  sll          t4, t1, s5
                  auipc        s10, 646591
                  srai         s6, t6, 30
                  sll          t4, s0, s8
                  slti         s4, s6, -1408
                  andi         s5, s4, -1719
                  sltiu        a1, zero, -1825
                  slli         a0, s9, 14
                  lb           s1, 12(a3)
                  lbu          s8, -12(a3)
                  add          s8, a5, a5
                  sb           ra, 12(a3)
                  xori         s11, s10, -1924
                  sll          s10, s4, a6
                  lbu          t4, -12(a3)
                  srai         s5, s2, 29
                  andi         s2, ra, 1306
                  lb           t0, 16(a3)
                  lbu          s4, -15(a3)
                  sb           s6, 10(a3)
                  lbu          s6, 16(a3)
                  add          t0, gp, sp
                  sb           s0, -16(a3)
                  lb           t6, 6(a3)
                  and          a6, a1, s7
                  sh           a3, -15(a3)
                  sb           s2, 9(a3)
                  srl          sp, a0, t4
                  sb           t6, -16(a3)
                  sltu         s10, a5, sp
                  lui          s1, 761673
                  lb           s8, 13(a3)
                  sltiu        s10, t0, -722
                  lbu          a1, 13(a3)
                  sb           s8, -9(a3)
                  lui          s10, 865328
                  lhu          a1, -5(a3)
                  sb           t0, -12(a3)
                  slt          s3, s2, a2
                  addi         s11, a5, -457
                  sb           a2, 12(a3)
                  srai         s0, gp, 12
                  or           sp, a5, a3
                  sltiu        t3, t4, -1212
                  sb           s10, 8(a3) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_0+1615 #start riscv_load_store_hazard_instr_stream_6
                  lb           t5, -369(t2)
                  lhu          s1, -369(t2)
                  lui          a5, 339973
                  lb           s0, -369(t2)
                  lh           a5, -369(t2)
                  sb           s6, 374(t2)
                  lb           t3, 374(t2)
                  lb           t6, 52(t2)
                  lw           s3, -867(t2)
                  sb           s2, -867(t2)
                  sb           a2, -1483(t2)
                  lb           s0, -1144(t2)
                  lbu          sp, -360(t2)
                  sll          s2, a4, a0
                  sh           s9, -747(t2) #end riscv_load_store_hazard_instr_stream_6
                  la           sp, region_1+1267 #start riscv_load_store_rand_instr_stream_3
                  lhu          s1, 11(sp)
                  sb           t3, 14(sp)
                  sb           tp, -4(sp)
                  lbu          a5, -15(sp)
                  sra          a0, t1, a0
                  sb           s0, 2(sp)
                  lw           s8, 5(sp)
                  lh           a3, -3(sp)
                  lbu          a5, -6(sp)
                  sh           t0, 3(sp)
                  lhu          s6, -5(sp)
                  addi         a6, ra, 436
                  xor          s0, s9, s6
                  slti         a2, s4, -637
                  lb           zero, 10(sp)
                  lbu          s0, 2(sp)
                  sltiu        tp, s3, -1733
                  lbu          s2, -13(sp)
                  lbu          s0, 11(sp)
                  sb           a1, 14(sp)
                  lb           s11, 13(sp)
                  nop
                  srai         zero, s7, 9
                  sh           t5, 13(sp)
                  addi         gp, s5, -102
                  and          s5, tp, s7
                  sw           t0, -11(sp)
                  lb           a3, -10(sp)
                  add          ra, ra, s7
                  addi         s11, a2, -1248
                  lbu          t4, 16(sp)
                  lb           tp, 3(sp)
                  sll          a1, sp, sp
                  and          t0, s2, zero
                  lbu          tp, -15(sp)
                  xor          t1, t3, a3
                  slt          s6, t3, s3
                  ori          t2, a0, 425
                  lbu          zero, 0(sp)
                  lbu          t0, -12(sp)
                  sb           s0, -15(sp)
                  lb           a2, -12(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s10, region_1+1610 #start riscv_load_store_rand_instr_stream_8
                  slt          s8, a3, a7
                  srl          t5, s7, t1
                  lbu          t1, -5(s10)
                  lbu          a1, -1(s10)
                  addi         t4, a6, 50
                  lh           sp, 16(s10)
                  sb           a6, -11(s10)
                  lhu          gp, -10(s10)
                  lbu          t1, -11(s10)
                  andi         s5, s9, 186
                  lhu          t2, 10(s10)
                  xor          s3, s6, a5
                  lui          zero, 1012175
                  sb           s10, -7(s10)
                  srl          t6, s9, zero
                  sw           ra, 14(s10)
                  sll          a6, t6, a3
                  nop
                  sb           s5, 13(s10)
                  auipc        t3, 980124
                  sltu         t3, t3, s2
                  andi         a6, s1, -297
                  sw           t1, -14(s10)
                  lb           sp, -3(s10)
                  sb           s2, -9(s10) #end riscv_load_store_rand_instr_stream_8
                  la           t1, region_1+1150 #start riscv_load_store_hazard_instr_stream_5
                  nop
                  sb           t2, 43(t1)
                  sb           s11, 43(t1)
                  lui          s8, 264132
                  sra          t3, gp, t5
                  lb           t4, 43(t1)
                  and          s6, s8, zero
                  lb           s6, 43(t1)
                  sb           ra, 43(t1)
                  sb           a0, 43(t1)
                  sb           gp, 43(t1)
                  sltiu        a3, s4, 1588
                  srai         a5, s2, 17
                  lh           t6, 4(t1)
                  lh           t6, -50(t1)
                  lbu          s2, 63(t1) #end riscv_load_store_hazard_instr_stream_5
                  la           sp, region_0+141 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s11, 96(sp)
                  lui          ra, 934329
                  lb           s6, 96(sp)
                  or           s5, t6, a7
                  sb           a7, 96(sp)
                  lui          t0, 882152
                  lb           t6, -100(sp)
                  lbu          a5, -100(sp)
                  lbu          a5, -100(sp)
                  lb           s6, -100(sp)
                  sltiu        s5, a7, 2
                  lbu          t5, -134(sp)
                  sb           s8, -134(sp)
                  sltiu        a1, s4, 743
                  lbu          a1, -134(sp)
                  sb           a3, -134(sp)
                  lb           gp, 58(sp)
                  sb           s4, 58(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+1362 #start riscv_load_store_rand_instr_stream_5
                  lbu          s4, 11(sp)
                  sb           a2, 1(sp)
                  srli         t1, t5, 23
                  srli         zero, a1, 30
                  sb           a7, -8(sp)
                  sh           a4, -4(sp)
                  lui          a6, 512475
                  or           t5, t2, s8
                  and          a1, a6, a6
                  sll          a6, s8, s11
                  srli         tp, zero, 19
                  xori         t2, s1, 909
                  auipc        s8, 1014581
                  sub          t2, s0, ra
                  sub          t6, t1, sp
                  sll          s4, s5, a7
                  auipc        t2, 24365
                  sb           ra, -2(sp)
                  lbu          ra, -1(sp)
                  lui          ra, 1032394
                  sw           a2, -2(sp)
                  nop
                  sra          s10, s6, s3
                  xori         s6, zero, 657
                  or           a2, s11, s0
                  xori         s1, s7, -624
                  slli         t4, a0, 20
                  xor          t3, a3, a5
                  nop
                  lb           s10, 16(sp)
                  lhu          s5, 0(sp)
                  lbu          t4, -11(sp)
                  sltiu        a5, s5, -1518
                  lbu          s8, -1(sp)
                  sb           a2, -1(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s3, region_1+1957 #start load_store_instr_stream_2
                  la           a3, region_1+1036 #start load_store_instr_stream_1
                  la           s1, region_1+560 #start load_store_instr_stream_0
                  lb           t2, -6(s3)
                  sh           a1, 1(s3)
                  sb           a7, -8(a3)
                  lb           a0, 248(s1)
                  lbu          sp, 2(s3)
                  lb           s11, -73(s1)
                  sb           s8, -10(s3)
                  sb           s9, 0(s3)
                  lb           a7, 2(a3)
                  sb           t0, -1(s3)
                  sh           a7, 0(a3)
                  lbu          a6, 14(s3)
                  lb           a5, 10(s3)
                  sb           s11, 69(s1)
                  lbu          a1, 9(s3)
                  sb           t1, -2(a3)
                  lb           s0, -163(s1)
                  lbu          t0, -78(s1)
                  sb           s2, 242(s1)
                  lb           s0, -12(s3) #end load_store_instr_stream_2
                  lbu          a1, -47(s1)
                  lbu          tp, 7(a3)
                  lbu          a1, 125(s1)
                  lh           t6, -8(s1)
                  sh           s8, 14(a3) #end load_store_instr_stream_1
                  sh           a2, -138(s1) #end load_store_instr_stream_0
                  la           s4, region_1+547 #start riscv_load_store_hazard_instr_stream_4
                  sb           tp, 61(s4)
                  lw           gp, 61(s4)
                  lhu          s6, 61(s4)
                  sltiu        a2, s11, -480
                  sb           gp, -8(s4)
                  sb           a1, 1(s4)
                  lb           sp, 1(s4)
                  lb           s3, -56(s4)
                  sb           t1, -56(s4)
                  lb           s6, -53(s4)
                  nop
                  sh           s0, -53(s4)
                  sh           tp, -53(s4)
                  sh           s5, 33(s4)
                  slt          a0, s8, tp
                  lh           t0, 33(s4)
                  lbu          t3, 33(s4) #end riscv_load_store_hazard_instr_stream_4
                  la           s8, region_1+1413 #start riscv_load_store_rand_instr_stream_1
                  add          s5, s3, zero
                  sb           s2, -50(s8)
                  xori         a5, a5, 1755
                  lb           ra, 55(s8)
                  lbu          t1, 56(s8)
                  lbu          a5, -49(s8)
                  lb           a1, -42(s8)
                  xor          s4, s8, s10
                  sb           t6, -7(s8)
                  sh           t0, 3(s8)
                  slli         sp, s9, 4
                  andi         s4, s5, -460
                  sb           a6, 64(s8)
                  or           a1, gp, t2
                  sll          a2, tp, a4
                  add          tp, a6, t2
                  slti         ra, a7, -12
                  sub          s5, t6, t6
                  srai         t0, t0, 26
                  sltiu        s3, t5, -810
                  sltu         s6, t0, t1
                  srli         s1, s5, 13
                  sb           t4, -23(s8)
                  lb           t4, -52(s8)
                  auipc        s3, 1002869
                  sltiu        s0, a7, -2032
                  add          s11, t4, s6
                  sb           a2, -56(s8)
                  add          t2, s0, t2
                  sra          t1, t3, a5
                  sb           a2, -37(s8)
                  lw           s5, -9(s8)
                  lb           s3, 52(s8)
                  sb           tp, -46(s8)
                  lbu          t6, 64(s8)
                  lbu          a2, -15(s8)
                  lbu          a2, -52(s8)
                  sub          a2, a5, s1
                  andi         s3, ra, 356
                  sltu         t5, a2, t4
                  lh           ra, -19(s8)
                  sll          a6, t0, s0
                  lbu          s1, -5(s8) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+939 #start riscv_load_store_hazard_instr_stream_0
                  lb           s5, 74(sp)
                  lbu          zero, 74(sp)
                  lbu          tp, 650(sp)
                  sb           s6, 650(sp)
                  lbu          a0, -256(sp)
                  sb           zero, -557(sp)
                  lh           t1, -483(sp)
                  or           tp, a3, a3
                  addi         s0, t3, 1226
                  lh           t1, -483(sp)
                  sw           zero, -483(sp)
                  lb           zero, -483(sp)
                  sb           t6, -483(sp)
                  lh           t6, -77(sp)
                  lbu          s5, -77(sp)
                  sltu         t1, a4, t4
                  lh           a2, -77(sp)
                  lb           s4, -77(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s10, region_0+659 #start riscv_load_store_rand_instr_stream_6
                  sb           t6, -30(s10)
                  sb           t0, -30(s10)
                  lb           t0, -26(s10)
                  slt          gp, t3, s4
                  lb           a1, 3(s10)
                  lbu          gp, 8(s10)
                  add          s11, t1, s2
                  sb           a6, -36(s10)
                  lhu          sp, 25(s10)
                  lbu          a2, 22(s10)
                  lbu          s8, 17(s10)
                  sb           s2, -28(s10)
                  lb           a6, -42(s10)
                  xori         a1, a0, -1024
                  lbu          a3, -8(s10)
                  lui          t4, 27951
                  lh           s6, -31(s10)
                  lb           a7, 52(s10)
                  slt          tp, a3, s11
                  lh           s4, 39(s10)
                  sb           tp, -38(s10)
                  sb           t3, 48(s10)
                  xor          t4, tp, a5
                  srli         a0, t0, 7
                  lb           t6, -40(s10)
                  andi         t2, a1, 276
                  sb           a6, -56(s10)
                  auipc        s0, 404117
                  sra          s1, zero, s4
                  lui          t2, 431693
                  lbu          a5, -12(s10)
                  xor          s1, a3, gp
                  sb           s9, 38(s10)
                  sb           t6, 10(s10)
                  lbu          tp, 40(s10)
                  lb           s1, -46(s10)
                  sb           t4, -2(s10)
                  lbu          s5, -27(s10)
                  and          a2, zero, s1
                  add          a0, s11, a5
                  sh           a3, 3(s10)
                  lui          a6, 108911
                  lh           t6, -51(s10)
                  sb           t1, -34(s10)
                  xori         a5, s0, 1929
                  sb           a6, -25(s10) #end riscv_load_store_rand_instr_stream_6
                  la           s6, region_0+262 #start riscv_load_store_rand_instr_stream_4
                  and          a2, s0, s7
                  lbu          s8, 1(s6)
                  srai         t5, a7, 25
                  sra          t3, t1, s0
                  lb           s10, -33(s6)
                  sra          s3, t3, a5
                  ori          t2, s1, 289
                  and          sp, s5, gp
                  lb           t1, -58(s6)
                  srai         a7, t3, 0
                  lb           tp, -9(s6)
                  and          t1, t6, t6
                  sb           ra, -56(s6)
                  lb           t4, -35(s6)
                  sll          a0, a6, s0
                  lb           a1, 39(s6)
                  lb           t2, 6(s6)
                  lh           t6, -42(s6)
                  addi         a6, a3, 2032
                  sltiu        s3, t1, 1385
                  nop
                  slti         s2, a4, -1140
                  sb           a2, -61(s6)
                  auipc        a3, 448744
                  sltu         s10, zero, tp
                  lb           s11, -11(s6)
                  slli         s8, s5, 12
                  sltu         s3, s6, t4
                  auipc        s0, 416500
                  sltu         t6, a7, s10
                  sltiu        sp, t6, -1384
                  sb           t6, -54(s6)
                  slli         t3, s11, 25
                  lb           s0, -21(s6)
                  sub          a6, s3, t2
                  lbu          a2, -59(s6)
                  add          gp, a6, sp
                  xor          a2, gp, s11
                  auipc        t6, 906865
                  lui          t2, 287552
                  nop
                  nop
                  sll          s4, ra, zero
                  sw           tp, -54(s6) #end riscv_load_store_rand_instr_stream_4
                  la           a7, region_0+1452 #start riscv_load_store_hazard_instr_stream_2
                  sb           s2, -1025(a7)
                  sw           s9, -1004(a7)
                  lbu          s3, -138(a7)
                  sra          t2, t0, zero
                  sb           s4, 114(a7)
                  lb           s10, -1373(a7)
                  sll          tp, a6, a6
                  lb           t6, -1336(a7)
                  sub          sp, s7, s6
                  lh           a0, -1336(a7)
                  lb           s11, -1336(a7)
                  sw           sp, -1336(a7)
                  ori          a1, s8, -100
                  lbu          t0, 501(a7)
                  lb           a2, -547(a7)
                  lb           zero, -547(a7)
                  nop
                  sb           s10, 260(a7) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+708 #start riscv_load_store_hazard_instr_stream_3
                  lbu          a5, 43(sp)
                  lb           gp, 43(sp)
                  lbu          t3, 51(sp)
                  lb           t0, 51(sp)
                  lbu          s1, 51(sp)
                  lb           t1, 51(sp)
                  lh           a0, 2(sp)
                  lb           s6, -2(sp)
                  auipc        t2, 319224
                  lb           a6, 49(sp)
                  sb           a7, 49(sp)
                  sb           a0, 49(sp)
                  lb           s6, 49(sp)
                  lbu          s0, 49(sp) #end riscv_load_store_hazard_instr_stream_3
                  addi         s11, s0, 531
                  and          s4, s6, gp
                  lui          t1, 377902
                  sltu         a1, s6, t3
                  auipc        gp, 631785
                  srli         a0, s10, 31
                  sltu         s6, a3, ra
                  blt          s7, s6, 12f
                  add          a3, a5, t4
                  nop
                  beq          s9, a3, 16f
                  sub          t2, a2, s4
12:               add          a7, t1, s4
                  srai         a0, a3, 31
                  andi         a1, s11, -384
                  nop
16:               slti         ra, a3, 273
                  andi         s8, t6, -1632
                  sltu         t4, s11, t0
                  ori          s10, s11, 1634
                  srai         s4, a3, 28
                  srai         t1, s7, 23
                  beq          s5, a3, 25f
                  xori         tp, gp, -1269
                  and          a6, t4, ra
25:               sll          t2, s3, a5
                  sra          t0, ra, s3
                  add          t4, s6, s5
                  xori         s5, t3, 1140
                  srai         t1, a3, 22
                  slt          t1, a1, t3
                  sll          s1, a6, t2
                  sub          sp, s8, s9
                  xor          a2, t0, s10
                  lui          gp, 116853
                  lui          s6, 193200
                  sra          s11, s6, s8
                  beq          a6, t1, 53f
                  addi         s6, s3, -816
                  addi         s5, s5, 308
                  beq          s2, s2, 50f
                  nop
                  sll          zero, s10, s0
                  lui          t4, 134695
                  lui          a5, 852328
                  slt          t3, s2, t6
                  and          gp, s0, s10
                  sra          s8, a1, ra
                  bltu         t2, s9, 55f
                  ori          s5, zero, -1346
50:               andi         s4, a4, -1187
                  slti         gp, s2, -790
                  slt          t2, s10, t2
53:               beq          tp, gp, 68f
                  bge          s2, t4, 61f
55:               bltu         s8, s3, 58f
                  sra          s5, zero, a7
                  add          s1, s7, s8
58:               addi         s8, t4, -475
                  bge          s8, a3, 72f
                  lui          t3, 194081
61:               slt          gp, gp, ra
                  sltiu        t2, a0, 1499
                  srli         sp, s8, 14
                  bne          a7, t2, 73f
                  bge          sp, a2, 75f
                  bgeu         t5, s2, 81f
                  bltu         s10, s0, 78f
68:               srl          s4, s9, sp
                  nop
                  srl          s6, tp, a7
                  sll          tp, s4, tp
72:               sltiu        a7, ra, 1121
73:               slti         t3, t3, 676
                  slt          t1, a0, s6
75:               xori         t2, a5, -1746
                  andi         t3, s1, -644
                  bne          a2, t3, 82f
78:               blt          t4, zero, 91f
                  and          s4, t4, zero
                  beq          t6, s10, 86f
81:               bge          s8, a1, 91f
82:               sltu         s5, t6, s4
                  andi         t1, s7, -1819
                  xor          s6, t0, t1
                  srl          s6, t4, t1
86:               slli         s11, zero, 22
                  blt          t6, s3, 97f
                  srl          a6, tp, t2
                  ori          t2, s6, -892
                  xori         s0, ra, -448
91:               or           a5, a5, a4
                  sltu         t1, s3, ra
                  auipc        a3, 776721
                  bne          s1, a2, 114f
                  srli         s5, ra, 18
                  ori          a3, s10, -408
97:               slt          s2, s6, s3
                  sltiu        sp, a3, -1556
                  slti         gp, s8, -648
                  slti         s4, sp, 1963
                  srai         a0, s6, 20
                  srai         a2, a4, 14
                  bge          a2, s8, 121f
                  blt          a0, t2, 112f
                  beq          t6, t6, 110f
                  blt          s7, s4, 110f
                  auipc        tp, 121680
                  bltu         a6, t5, 123f
                  bltu         t4, s7, 120f
110:              srl          s1, s0, a1
                  bge          t4, sp, 129f
112:              slt          tp, a4, a5
                  blt          a3, s8, 126f
114:              add          s11, t1, zero
                  slti         s6, t5, 1702
                  srai         s8, t2, 28
                  bgeu         a3, s0, 137f
                  sra          a7, sp, s6
                  bne          tp, a7, 132f
120:              sll          s4, a2, t5
121:              bne          s10, t2, 124f
                  xor          s6, zero, sp
123:              lui          zero, 829500
124:              addi         a2, t0, 490
                  auipc        t2, 449520
126:              sltiu        t5, a0, -136
                  bltu         a4, ra, 142f
                  sll          a1, a0, t0
129:              slli         gp, t6, 25
                  and          s5, tp, s1
                  and          t4, s4, s5
132:              or           a1, a7, a3
                  srli         a5, t0, 14
                  xor          gp, t3, s8
                  xor          s0, s7, s3
                  ori          gp, s0, -958
137:              srli         s1, t6, 12
                  bne          t3, a0, 146f
                  srl          s3, s0, s2
                  sll          s3, sp, tp
                  bne          s11, s0, 161f
142:              slli         gp, a7, 18
                  nop
                  beq          a3, sp, 149f
                  sltiu        s2, a6, -1756
146:              beq          a5, a5, 159f
                  lui          t1, 791603
                  bltu         s4, t5, 158f
149:              sltu         gp, t4, t2
                  lui          s4, 65888
                  bltu         t5, s7, 160f
                  sll          sp, t5, t3
                  add          t3, s8, a6
                  add          a3, s2, t0
                  beq          s4, t0, 166f
                  slti         t3, t4, 690
                  nop
158:              bge          a7, a2, 178f
159:              srli         t3, s7, 18
160:              bne          s6, s10, 166f
161:              slti         ra, a7, -1873
                  bgeu         a6, t1, 169f
                  ori          sp, t4, -98
                  slti         s3, zero, -1471
                  sub          zero, a0, sp
166:              srai         a5, gp, 0
                  sltiu        s11, t3, 203
                  ori          t2, t2, 1894
169:              slti         s8, s1, -558
                  nop
                  slli         tp, a1, 31
                  bge          s4, s0, 175f
                  bge          s0, zero, 188f
                  add          t5, a5, a2
175:              sra          tp, s11, t5
                  srl          a7, a5, s8
                  nop
178:              auipc        t5, 430532
                  xori         ra, s4, 54
                  sltiu        t0, a6, -351
                  slli         t4, s7, 17
                  bgeu         gp, tp, 200f
                  srl          s0, gp, t3
                  sltiu        gp, s9, 587
                  slli         t2, s7, 13
                  sll          sp, s5, t3
                  sra          s5, s1, sp
188:              sltiu        s8, zero, -309
                  bne          s8, a7, 202f
                  bltu         tp, t4, 203f
                  ori          s5, s1, 1292
                  xori         a1, s9, 590
                  and          s6, t6, a2
                  sub          sp, s2, a3
                  xori         s3, ra, -860
                  srli         t6, gp, 22
                  sll          s1, s10, s1
                  slli         s3, a3, 26
                  and          t1, tp, s3
200:              lui          s11, 1040398
                  srai         s0, s1, 14
202:              slt          s2, a6, a7
203:              sltu         s3, s10, s3
                  lui          a5, 495236
                  sra          a3, s0, t1
                  slt          t5, s3, t2
                  blt          zero, a3, 223f
                  bgeu         sp, t3, 218f
                  and          t5, a4, t5
                  srai         a3, s4, 18
                  nop
                  bltu         a1, ra, 225f
                  slli         a2, s3, 24
                  bltu         s2, ra, 219f
                  lui          s5, 983652
                  bne          a6, a0, 226f
                  sltiu        a0, s4, 1918
218:              beq          s9, s9, 223f
219:              blt          a2, s10, 223f
                  xor          t4, a4, tp
                  and          t3, s3, a4
                  or           t5, s10, t0
223:              sll          t5, s10, t3
                  xor          zero, s6, s5
225:              xori         gp, gp, 121
226:              beq          s7, t4, 233f
                  sll          a6, s10, t4
                  sub          s3, t4, s10
                  xori         a6, a5, -1098
                  nop
                  sub          t3, s7, a4
                  slli         t1, t3, 2
233:              srl          s2, s9, t1
                  bgeu         a4, gp, 245f
                  andi         zero, a4, -1900
                  addi         tp, sp, -1956
                  nop
                  auipc        s5, 459689
                  add          s3, a2, s1
                  bgeu         a2, t5, 255f
                  xor          t1, s2, zero
                  auipc        t6, 667211
                  and          sp, s11, t2
                  andi         gp, s0, 235
245:              sub          s6, t1, s2
                  sltu         s6, s8, a5
                  or           s1, t1, a0
                  and          s6, a7, s11
                  xor          t4, a1, s10
                  slti         ra, s10, 904
                  sra          sp, s7, gp
                  andi         t2, t0, -1823
                  sltiu        a0, s9, 1826
                  slli         ra, a2, 17
255:              sltu         tp, a1, s3
                  and          a7, s2, t1
                  lui          s2, 901627
                  ori          t0, t2, -785
                  slti         t6, s5, 1707
                  xori         s5, s4, 707
                  add          s3, t0, s0
                  bgeu         s4, s7, 268f
                  srli         s10, t6, 13
                  beq          a3, s5, 274f
                  sra          a0, zero, t3
                  add          a7, gp, a0
                  andi         a0, s1, -1110
268:              and          s4, a6, s0
                  slt          a2, sp, t1
                  bge          s10, s6, 288f
                  srli         a0, t4, 31
                  xor          gp, tp, a6
                  andi         zero, a4, 873
274:              sltiu        a3, s1, -1630
                  add          t5, s6, s2
                  srl          a2, a4, s2
                  blt          a5, t1, 283f
                  bne          a3, sp, 281f
                  and          sp, t0, ra
                  bge          t0, s6, 295f
281:              auipc        a3, 949412
                  nop
283:              bltu         s3, t6, 290f
                  bgeu         s6, s3, 293f
                  bgeu         s6, s0, 289f
                  sltiu        zero, s1, -1518
                  bgeu         a6, t5, 297f
288:              andi         t0, s2, 1893
289:              and          t1, s9, s3
290:              slli         zero, a5, 8
                  xor          zero, s2, t0
                  lui          t6, 990930
293:              lui          s2, 61991
                  or           a1, s3, s8
295:              slt          s4, a7, s0
                  or           t1, s5, a3
297:              beq          a4, s8, 302f
                  lui          a1, 965816
                  beq          s8, a5, 314f
                  or           a2, s11, tp
                  beq          t2, s4, 314f
302:              add          s4, a5, t1
                  auipc        sp, 651710
                  bgeu         s1, s3, 319f
                  sub          a2, s3, tp
                  bgeu         s9, t6, 324f
                  addi         t3, t4, -2001
                  or           s5, a4, s4
                  auipc        a6, 524825
                  auipc        t6, 579633
                  sltu         a0, s9, a7
                  ori          tp, sp, 310
                  sll          a1, s0, t1
314:              addi         t6, s4, -1048
                  bgeu         s5, a6, 321f
                  slti         a5, tp, -1732
                  blt          t6, gp, 325f
                  add          s0, a2, a0
319:              and          a1, ra, s4
                  ori          s4, s8, 370
321:              nop
                  auipc        t2, 765644
                  bltu         s11, t1, 333f
324:              lui          t3, 151437
325:              nop
                  bne          s2, s10, 329f
                  and          s0, a4, t2
                  sra          a2, zero, s5
329:              slli         t3, gp, 23
                  srl          zero, ra, s7
                  sltu         t3, s10, a4
                  lui          s2, 586909
333:              auipc        a7, 597434
                  lui          s0, 247397
                  or           sp, s8, s8
                  sll          a3, t4, t3
                  or           t6, s0, a1
                  nop
                  xori         a2, s2, -2
                  beq          a7, t3, 360f
                  xor          a3, a6, ra
                  sltu         a6, t2, ra
                  sra          t3, a6, t2
                  srai         a0, gp, 17
                  auipc        a0, 676446
                  sltiu        s1, s2, 1422
                  sll          t5, a5, t6
                  sra          tp, a6, s2
                  and          s2, sp, s1
                  bge          s8, a7, 366f
                  srai         s4, s3, 21
                  bge          gp, a5, 363f
                  bgeu         a5, s0, 364f
                  sra          t0, s9, t1
                  sra          ra, s3, t5
                  auipc        a6, 874341
                  sltu         t2, s3, t6
                  add          zero, ra, a3
                  blt          s7, sp, 369f
360:              srl          a2, ra, t2
                  bge          a2, tp, 368f
                  srai         t5, s5, 28
363:              or           a7, s9, s8
364:              bgeu         ra, zero, 377f
                  srli         s1, a1, 30
366:              andi         s1, t0, -1735
                  slt          s6, s2, s10
368:              slti         a2, a4, 22
369:              xori         s4, a6, -197
                  xori         a6, s1, -735
                  sll          zero, s3, s4
                  auipc        s3, 183042
                  slt          zero, a4, s0
                  bltu         a0, zero, 392f
                  beq          a1, s7, 388f
                  and          a5, a5, a4
377:              bgeu         s11, a6, 390f
                  or           t1, t1, t0
                  sub          a2, a4, t6
                  add          sp, s2, s9
                  sll          a2, t3, a3
                  bne          s10, s10, 392f
                  bltu         a4, t5, 388f
                  sltiu        a7, t5, 767
                  bne          a3, s6, 405f
                  or           s10, a3, s1
                  auipc        a3, 523073
388:              slti         a3, s4, 1874
                  beq          t4, ra, 394f
390:              and          s1, a2, s3
                  lui          a5, 805119
392:              sltu         t3, t3, s2
                  or           s8, s5, s7
394:              sub          a3, a1, t6
                  srai         tp, a7, 6
                  andi         s6, a1, 595
                  bge          a6, ra, 404f
                  nop
                  add          a3, a1, ra
                  slt          s4, t4, t3
                  sltiu        s10, t3, -746
                  and          s6, s8, gp
                  or           a7, s9, s1
404:              bgeu         s6, a2, 419f
405:              sltu         tp, s10, s5
                  bgeu         s10, a4, 411f
                  addi         s3, a5, -487
                  andi         s1, ra, -236
                  srli         gp, zero, 17
                  ori          s2, gp, 982
411:              sltu         t6, t0, a1
                  sub          t6, t1, s7
                  slli         s3, s4, 6
                  xori         zero, a1, 1517
                  bgeu         t1, s4, 418f
                  slt          gp, t2, s0
                  blt          s7, t3, 426f
418:              slli         a5, sp, 19
419:              sra          t2, s7, ra
                  blt          gp, s8, 430f
                  add          s4, t2, a2
                  slti         a0, s11, -338
                  xori         s2, t1, -698
                  blt          s10, s5, 435f
                  sra          a3, s5, s9
426:              slt          a3, ra, s10
                  beq          a7, t4, 435f
                  bne          t0, a5, 448f
                  slli         a1, s2, 31
430:              ori          s6, a6, -1876
                  slli         t5, s2, 19
                  bge          a6, t6, 445f
                  sll          a6, s11, a4
                  or           s0, t1, t4
435:              lui          s4, 81455
                  or           s5, t4, t4
                  add          s10, a4, t5
                  beq          t6, ra, 444f
                  add          s10, a7, t5
                  xori         t5, s8, 460
                  nop
                  blt          tp, sp, 447f
                  slti         s1, s9, 1935
444:              xor          s8, ra, a0
445:              srai         a3, s4, 22
                  lui          zero, 377381
447:              sltiu        s1, gp, -311
448:              add          a5, t3, s6
                  sra          t4, a2, s1
                  auipc        a2, 989515
                  sub          t4, s9, a5
                  bltu         sp, gp, 467f
                  srl          s6, a4, t3
                  sll          a0, s0, t5
                  bltu         s2, t4, 473f
                  bgeu         t2, t3, 469f
                  srl          s2, s7, t1
                  sub          zero, s8, a3
                  xori         a5, s8, -405
                  sll          t6, s11, s7
                  bne          t3, a5, 464f
                  nop
                  blt          a2, a7, 469f
464:              bltu         s4, s2, 471f
                  slt          s5, s4, s6
                  xor          t4, s8, t6
467:              or           s11, a2, s8
                  sub          sp, s1, a4
469:              nop
                  bgeu         s0, s1, 480f
471:              bltu         a4, s0, 489f
                  slt          a2, s6, s2
473:              slti         s11, s10, -425
                  xor          zero, sp, s7
                  bltu         a1, t6, 479f
                  sltu         t0, a1, gp
                  addi         gp, t1, 1046
                  sltiu        a1, s0, 533
479:              blt          s3, s11, 489f
480:              sub          a2, s10, a7
                  slti         s2, a3, -1510
                  sra          s10, s1, s3
                  lui          s4, 254140
                  addi         sp, t0, -882
                  sltu         t3, s2, t4
                  andi         t1, t2, -79
                  bge          a3, s2, 500f
                  sll          zero, sp, t2
489:              bge          s4, t6, 505f
                  bge          a1, a6, 505f
                  or           a6, a5, tp
                  sll          s8, t3, t6
                  andi         s5, t1, -277
                  or           s10, sp, a1
                  ori          s2, s5, 1192
                  xor          a1, a4, t3
                  srai         s0, a2, 3
                  slli         t4, s10, 9
                  auipc        a7, 1006068
500:              bne          t5, s0, 510f
                  add          t1, s1, t2
                  blt          t3, t3, 507f
                  or           s3, sp, a6
                  srl          s11, sp, a3
505:              beq          s11, t4, 516f
                  xori         t0, a7, -957
507:              srl          t5, a6, tp
                  bne          tp, gp, 521f
                  sltu         t4, sp, a0
510:              and          t3, t0, t2
                  lui          s0, 514361
                  addi         sp, t4, -333
                  lui          t6, 412704
                  add          s8, a5, s2
                  sll          s11, s11, s5
516:              xor          s2, t1, a6
                  and          tp, zero, a7
                  addi         s10, s11, -238
                  ori          sp, t0, -1627
                  bltu         s0, a6, 540f
521:              addi         ra, s7, 329
                  blt          tp, s2, 527f
                  sra          zero, s2, a7
                  slti         s1, s1, -897
                  bne          sp, s2, 545f
                  lui          a2, 784000
527:              xor          s11, s6, ra
                  sltu         s5, s8, t2
                  srai         t6, tp, 17
                  or           s2, t1, a5
                  bgeu         t4, a1, 540f
                  slli         s11, s10, 30
                  xori         a0, t6, -945
                  slli         t5, a6, 0
                  sra          s11, s0, s2
                  bltu         t5, s8, 541f
                  lui          a1, 927303
                  xor          s6, s0, ra
                  or           a1, a6, s6
540:              xor          s4, t5, a1
541:              nop
                  bge          s11, a0, 558f
                  slli         s10, a7, 25
                  blt          t5, s4, 555f
545:              ori          s2, a3, -896
                  sltiu        sp, t4, -1905
                  addi         a6, s5, -642
                  srl          s10, t2, t5
                  srli         t1, t3, 31
                  srl          t2, t4, s2
                  add          t0, t4, t6
                  ori          gp, a6, 703
                  andi         a5, a3, -1495
                  bltu         t1, zero, 572f
555:              add          tp, s3, a1
                  bge          t6, a3, 569f
                  lui          tp, 7185
558:              bgeu         s9, t1, 562f
                  auipc        zero, 124909
                  sltiu        a1, ra, 1424
                  addi         s3, a0, -470
562:              xori         s1, zero, -982
                  xori         a6, t0, 1349
                  slti         s8, s8, 227
                  srli         t6, t6, 0
                  or           sp, s5, tp
                  andi         s5, a7, 130
                  sltiu        t5, s2, 921
569:              auipc        gp, 421079
                  bge          s4, s6, 575f
                  sub          a1, t2, s6
572:              ori          a6, t5, -1283
                  auipc        t4, 621803
                  sub          a3, t6, a3
575:              sub          s4, s10, a4
                  xori         s10, a6, 1723
                  andi         a6, s11, -789
                  slli         t6, s11, 25
                  sra          s5, a4, t2
                  bltu         t2, zero, 595f
                  xor          a5, s1, ra
                  slt          t2, t3, a3
                  or           s10, t5, s7
                  bgeu         s2, zero, 592f
                  slli         s11, a1, 3
                  ori          gp, t5, 1153
                  srli         s2, s3, 20
                  blt          t6, s1, 594f
                  bne          t0, gp, 609f
                  sll          t4, gp, a4
                  srli         s4, s5, 9
592:              srli         ra, t0, 15
                  beq          a7, t6, 599f
594:              blt          s1, a6, 612f
595:              or           ra, t4, t6
                  lui          t1, 846679
                  and          a1, t1, a1
                  beq          s9, a3, 611f
599:              beq          tp, a1, 609f
                  srl          s1, zero, s5
                  srl          a6, a6, s2
                  sltu         ra, t6, a6
                  bge          ra, s1, 613f
                  sll          s1, a3, a5
                  or           s2, s9, a4
                  beq          s9, t1, 619f
                  bgeu         t5, a1, 622f
                  xor          gp, s11, sp
609:              addi         t0, s9, 1465
                  xor          s2, t4, a7
611:              bltu         s7, t4, 614f
612:              sltu         zero, s9, s7
613:              sltu         a5, t2, a7
614:              slti         gp, s11, 456
                  sra          a2, s1, s7
                  addi         t4, s10, -485
                  srli         a7, s11, 10
                  auipc        sp, 612506
619:              auipc        gp, 860270
                  addi         gp, a0, -1053
                  sub          t1, a2, a1
622:              ori          t4, t4, -1273
                  bgeu         t2, a2, 630f
                  addi         zero, a5, -389
                  ori          gp, s8, 64
                  sub          s4, t3, t4
                  sltiu        gp, t0, -1663
                  slli         ra, s10, 13
                  sub          sp, a5, s10
630:              auipc        t4, 257031
                  ori          t6, s7, 78
                  xori         t6, a1, 698
                  or           t5, t1, a2
                  or           s4, s11, zero
                  and          t3, a2, s8
                  bne          sp, s9, 639f
                  srli         s8, ra, 7
                  sub          tp, s8, a7
639:              xor          tp, s4, t0
                  sltu         s11, s8, s4
                  add          a6, s3, t0
                  addi         s6, s0, 1719
                  auipc        s8, 665371
                  andi         a3, s6, 638
                  ori          a0, a2, -859
                  sltiu        tp, t1, -363
                  xor          a7, t5, a5
                  srai         t2, a7, 11
                  blt          s5, tp, 662f
                  srl          a1, a6, t6
                  sll          ra, s2, t2
                  xor          a3, s4, a1
                  slti         tp, t3, -205
                  bgeu         a5, s3, 665f
                  sltiu        t5, zero, -1008
                  sub          a7, s0, t6
                  nop
                  bge          s10, t2, 665f
                  sll          s5, s7, s1
                  blt          s2, t6, 675f
                  auipc        ra, 689067
662:              beq          s8, ra, 672f
                  slti         s0, s4, 1418
                  nop
665:              slt          s3, t4, a2
                  auipc        a3, 692695
                  ori          s10, ra, -1399
                  srli         a2, s9, 25
                  srl          s5, a2, s7
                  srli         t0, a6, 24
                  nop
672:              ori          gp, t5, -1955
                  nop
                  sll          a0, sp, t2
675:              sltiu        t4, s6, 1230
                  sra          a6, a4, t6
                  sltu         t3, s2, a7
                  srl          ra, a5, t6
                  bge          s5, s0, 689f
                  add          sp, a1, a1
                  nop
                  ori          t6, zero, 756
                  or           a5, gp, s5
                  sltiu        a3, a6, -597
                  slli         t6, a6, 27
                  ori          t2, a1, 1860
                  sltiu        a7, t6, -847
                  srli         a3, s10, 1
689:              srai         t1, a5, 14
                  bgeu         s11, zero, 700f
                  bne          t3, t6, 697f
                  bltu         t2, s6, 702f
                  srl          sp, s3, a0
                  srli         t5, ra, 23
                  andi         t0, t6, 60
                  slli         ra, a1, 2
697:              srl          s10, tp, tp
                  lui          t5, 757279
                  xori         s11, t6, 887
700:              bgeu         t4, a5, 718f
                  xor          t4, a1, a4
702:              sra          t4, s10, s3
                  andi         t2, s11, -266
                  nop
                  sll          a2, a3, a1
                  add          tp, a1, t2
                  sll          s0, t1, a2
                  bltu         t5, zero, 721f
                  beq          s5, t6, 729f
                  bgeu         a3, tp, 720f
                  sltu         tp, s5, sp
                  blt          a0, s11, 723f
                  ori          s2, t3, -2019
                  slli         a1, t0, 10
                  or           tp, t4, s1
                  sltu         a2, s11, a0
                  or           t6, ra, a4
718:              ori          a5, s2, -369
                  add          s5, a5, t4
720:              or           zero, a6, s0
721:              bltu         t6, t1, 736f
                  bge          s7, t2, 725f
723:              addi         gp, t2, -1952
                  or           t6, s10, s10
725:              sltiu        a3, s1, -635
                  nop
                  sra          s0, ra, a7
                  srl          a7, s5, a4
729:              sltiu        t0, a1, -150
                  bne          s9, a6, 743f
                  bne          s3, s11, 741f
                  lui          t5, 92730
                  and          s3, tp, a4
                  andi         a6, s6, -1845
                  srai         tp, t1, 21
736:              bgeu         s6, a0, 740f
                  bgeu         s8, t4, 743f
                  and          s11, t0, t5
                  slti         s4, t4, -181
740:              blt          a2, s0, 753f
741:              ori          s0, s9, 650
                  srai         tp, zero, 21
743:              andi         a3, s9, -696
                  bge          s6, gp, 752f
                  blt          t5, s7, 752f
                  srli         s2, a2, 0
                  srli         zero, s5, 5
                  xori         sp, s1, -797
                  xori         s5, s1, -1571
                  blt          t6, a5, 753f
                  bgeu         s1, s8, 758f
752:              bltu         a4, gp, 767f
753:              srai         s8, a0, 17
                  xor          s8, s4, s9
                  srl          t4, s11, s5
                  slti         a3, s7, 679
                  addi         s5, tp, 664
758:              andi         s2, s7, 1036
                  and          a6, s7, zero
                  and          tp, a3, a4
                  andi         a5, a1, 436
                  or           a1, a4, s5
                  srai         s5, t1, 17
                  beq          t5, a2, 775f
                  sra          a7, a6, t0
                  srl          s11, s10, ra
767:              sltiu        t2, gp, 1991
                  sra          tp, s11, ra
                  sltu         s6, ra, s1
                  srl          t4, ra, s7
                  beq          tp, sp, 776f
                  sll          s3, zero, a0
                  add          a1, ra, t3
                  bne          a5, sp, 794f
775:              sll          s10, ra, s6
776:              slt          gp, s9, a3
                  sll          t4, t0, a5
                  srai         t5, t1, 26
                  sll          t0, a7, t5
                  blt          t1, t5, 789f
                  slt          a6, a1, s10
                  sltu         a3, a2, s9
                  xori         s0, a2, 589
                  bltu         zero, s6, 802f
                  and          ra, s5, zero
                  srl          tp, s8, s5
                  beq          t4, s8, 802f
                  bne          ra, a5, 801f
789:              sub          s3, s5, a7
                  sra          ra, s5, s2
                  xor          ra, s11, s10
                  xori         s3, a7, -354
                  srl          s2, s5, a4
794:              andi         a3, s11, 584
                  auipc        gp, 329427
                  bgeu         s4, sp, 801f
                  srai         t0, t4, 31
                  sltiu        s3, t2, 295
                  bne          t2, s11, 815f
                  beq          t4, t6, 805f
801:              ori          s6, s2, -550
802:              srl          sp, t2, s1
                  slli         a2, s4, 16
                  bltu         zero, a6, 813f
805:              xori         a1, s7, 494
                  bne          a4, sp, 822f
                  ori          s8, t4, 738
                  sltiu        t6, s9, 1243
                  sltu         t0, s7, a1
                  slt          a5, a1, s7
                  srai         sp, t6, 26
                  nop
813:              lui          s1, 85531
                  sltu         a3, a5, gp
815:              srli         ra, s0, 25
                  add          s5, s11, a3
                  slti         s10, a7, 387
                  la           s0, region_0+543 #start riscv_load_store_hazard_instr_stream_8
                  sh           gp, -143(s0)
                  lb           s8, -143(s0)
                  or           sp, tp, a3
                  lw           a5, -143(s0)
                  lb           s6, -143(s0)
                  slti         s10, s11, -934
                  lb           a5, -143(s0)
                  lbu          t5, -143(s0)
                  lh           s6, -143(s0)
                  lbu          sp, -143(s0)
                  sltiu        t6, a7, 1516
                  sub          s10, tp, s11
                  lbu          t1, -143(s0)
                  sh           t2, -143(s0) #end riscv_load_store_hazard_instr_stream_8
                  nop
                  srai         zero, ra, 28
                  slt          t2, zero, s9
                  slt          s2, tp, s6
822:              or           s11, ra, gp
                  xor          s10, s5, t5
                  bgeu         t1, s8, 844f
                  lui          s10, 33439
                  sra          s11, gp, t5
                  ori          zero, a1, 1239
                  sra          a2, s2, s9
                  addi         a5, a3, 524
                  and          a5, a5, s1
                  add          s10, s1, sp
                  bltu         a5, ra, 837f
                  add          s5, a6, t3
                  bne          zero, gp, 852f
                  slli         s5, s1, 29
                  sra          t0, s6, t2
837:              slli         a0, s3, 31
                  bne          zero, a0, 853f
                  ori          s2, s3, -2047
                  lui          sp, 578895
                  sub          a5, t1, s2
                  andi         s1, s7, -1136
                  sra          ra, t4, s11
844:              or           s0, s1, a7
                  xor          s0, gp, ra
                  auipc        sp, 510002
                  blt          zero, s9, 862f
                  xori         a0, t0, 704
                  sltiu        t4, sp, -1082
                  xor          t6, s10, s11
                  andi         t5, s3, 112
852:              andi         s8, s3, -2012
853:              or           a2, s5, a3
                  andi         s4, t3, -1482
                  sltu         t2, zero, s2
                  sra          s5, zero, a6
                  add          t2, a6, a5
                  sltiu        t2, zero, -1046
                  blt          s1, s11, 862f
                  blt          s3, a1, 863f
                  sub          zero, tp, t6
862:              sub          t0, a7, s0
863:              bne          s5, a2, 876f
                  bgeu         s10, t1, 872f
                  bgeu         s6, a4, 871f
                  xori         a2, t4, 450
                  sll          t5, s5, s2
                  ori          a6, zero, 2031
                  ori          t1, s5, -304
                  beq          gp, a5, 881f
871:              xor          t4, ra, gp
872:              ori          t6, s0, -1852
                  addi         ra, sp, -1252
                  nop
                  lui          t6, 586655
876:              sltiu        a3, a0, 416
                  srai         s8, s7, 8
                  or           a3, gp, t4
                  sra          s1, a6, t3
                  nop
881:              bne          s11, zero, 888f
                  ori          tp, sp, -1925
                  sltiu        s4, t1, 421
                  sub          a1, t2, t3
                  srai         t3, s9, 8
                  xori         s11, a4, -305
                  slti         t6, gp, 904
888:              slti         s2, s11, -1398
                  slt          s5, t0, a3
                  xor          t3, s1, t0
                  bge          s9, a0, 902f
                  nop
                  srli         a5, sp, 11
                  nop
                  andi         tp, t4, 426
                  bltu         t3, s8, 906f
                  sra          s4, a5, t5
                  xor          s1, a1, s5
                  sra          t4, a6, a2
                  sltiu        s11, s3, 1830
                  sltu         zero, s1, a4
902:              andi         zero, a4, 851
                  lui          t2, 523320
                  nop
                  andi         s5, t5, 1715
906:              add          s0, s0, gp
                  andi         a0, gp, -996
                  srli         s0, t2, 11
                  sltiu        t0, zero, 263
                  sltu         s8, t0, a7
                  bne          s10, ra, 928f
                  srai         s10, s5, 17
                  and          a7, s3, a7
                  blt          a2, a2, 927f
                  sra          s6, a3, ra
                  srli         a3, s9, 13
                  slt          a6, sp, a6
                  sltiu        a1, t5, -330
                  andi         s6, s4, -1107
                  sub          a1, s1, t5
                  sltu         a3, t4, s9
                  addi         t2, a7, 983
                  nop
                  bge          s9, ra, 928f
                  bge          s11, s8, 928f
                  srli         s10, s7, 30
927:              or           zero, t0, zero
928:              nop
                  andi         tp, a4, -2046
                  lw           t6, 4(a4)
                  addi         a4, a4, 40
                  add          zero, gp, a2
                  slli         s2, a0, 7
                  add          ra, a5, a6
1738:             addi x28, x31, 1
1738:             jalr x28, x28, 0
sub_1:            bgeu         zero, s4, sub_1_stack_p
                  sll          s0, a6, a1
                  srli         tp, a1, 12
sub_1_stack_p:    addi         a4, a4, -16
                  andi         gp, s10, 67
                  slti         s4, sp, -435
                  sw           t6, 4(a4)
                  addi         s10, t0, 1394
                  xor          a7, a0, s9
                  xor          s11, a6, t4
                  srai         s10, t0, 22
                  srl          a2, a1, s8
                  sll          t6, s5, a1
                  sra          s1, s10, sp
                  lui          a2, 286509
                  slti         s0, t0, -160
                  auipc        t2, 136070
                  srli         s3, s5, 12
                  ori          a0, a2, 593
sub_1_j3:         jal          t6, sub_2 #jump sub_1 -> sub_2
                  ori          s6, t1, -974
                  beq          s10, s0, 15f
                  blt          a4, a0, 4f
                  bltu         s10, t6, 13f
4:                ori          t1, tp, 78
                  sll          tp, t3, s3
                  srai         t6, a6, 21
                  nop
                  beq          s4, t3, 10f
                  slt          a1, s1, t5
10:               beq          t2, s1, 15f
                  sll          t2, t0, a4
                  nop
13:               srl          s11, s9, ra
                  bge          s0, t2, 15f
15:               and          t1, s5, t1
                  sltu         t4, s0, s0
                  lw           t6, 4(a4)
                  ori          t4, a4, -751
                  ori          t0, s11, 1142
                  addi         a4, a4, 16
                  srai         t1, zero, 28
                  xor          zero, t3, a3
43:               addi x6, x31, 1
43:               jalr x6, x6, 0
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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x23, x14, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x26, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x26, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x26, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x26, x16, ecall_handler
                  li x16, 0x1
                  beq x26, x16, instr_fault_handler
                  li x16, 0x5
                  beq x26, x16, load_fault_handler
                  li x16, 0x7
                  beq x26, x16, store_fault_handler
                  li x16, 0xc
                  beq x26, x16, pt_fault_handler
                  li x16, 0xd
                  beq x26, x16, pt_fault_handler
                  li x16, 0xf
                  beq x26, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x14, x23, zero
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
                  add x14, x23, zero
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
                  add x14, x23, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x14, x23, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x14, x23, zero
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
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x14, x23, zero
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
